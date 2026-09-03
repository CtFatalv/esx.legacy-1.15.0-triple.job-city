-- CREDITS
-- Andyyy7666: https://github.com/overextended/ox_lib/pull/453
-- AvarianKnight: https://forum.cfx.re/t/allow-drawgizmo-to-be-used-outside-of-fxdk/5091845/8?u=demi-automatic

local dataview = require 'client.dataview'

local enableScale = false -- allow scaling mode. doesnt scale collisions and resets when physics are applied it seems

local gizmoEnabled = false
local currentMode = 'translate'
local currentEntity

local modeIndex = 1
local modes = { "Translate", "Rotate" }

if enableScale then
    modes = { "Translate", "Rotate", "Scale" }
end

local freeCamera = false

-- FUNCTIONS
local function normalize(x, y, z)
    local length = math.sqrt(x * x + y * y + z * z)
    if length == 0 then
        return 0, 0, 0
    end
    return x / length, y / length, z / length
end

local function makeEntityMatrix(entity)
    local f, r, u, a = GetEntityMatrix(entity)
    local view = dataview.ArrayBuffer(60)

    view:SetFloat32(0, r[1])
        :SetFloat32(4, r[2])
        :SetFloat32(8, r[3])
        :SetFloat32(12, 0)
        :SetFloat32(16, f[1])
        :SetFloat32(20, f[2])
        :SetFloat32(24, f[3])
        :SetFloat32(28, 0)
        :SetFloat32(32, u[1])
        :SetFloat32(36, u[2])
        :SetFloat32(40, u[3])
        :SetFloat32(44, 0)
        :SetFloat32(48, a[1])
        :SetFloat32(52, a[2])
        :SetFloat32(56, a[3])
        :SetFloat32(60, 1)

    return view
end

local function applyEntityMatrix(entity, view)
    local x1, y1, z1 = view:GetFloat32(16), view:GetFloat32(20), view:GetFloat32(24)
    local x2, y2, z2 = view:GetFloat32(0), view:GetFloat32(4), view:GetFloat32(8)
    local x3, y3, z3 = view:GetFloat32(32), view:GetFloat32(36), view:GetFloat32(40)
    local tx, ty, tz = view:GetFloat32(48), view:GetFloat32(52), view:GetFloat32(56)

    if not enableScale then
        x1, y1, z1 = normalize(x1, y1, z1)
        x2, y2, z2 = normalize(x2, y2, z2)
        x3, y3, z3 = normalize(x3, y3, z3)
    end

    SetEntityMatrix(entity,
        x1, y1, z1,
        x2, y2, z2,
        x3, y3, z3,
        tx, ty, tz
    )
end

-- LOOPS

local function gizmoLoop(entity)
    if not gizmoEnabled then
        return LeaveCursorMode()
    end

    EnterCursorMode()

    if IsEntityAPed(entity) then
        SetEntityAlpha(entity, 200)
    else
        SetEntityDrawOutline(entity, true)
    end

    while gizmoEnabled and DoesEntityExist(entity) do
        Wait(0)

        DisableControlAction(0, 24, true)
        DisableControlAction(0, 25, true)
        DisableControlAction(0, 140, true)
        DisablePlayerFiring(cache.playerId, true)

        local matrixBuffer = makeEntityMatrix(entity)
        local changed = Citizen.InvokeNative(0xEB2EDCA2, matrixBuffer:Buffer(), 'Editor1',
            Citizen.ReturnResultAnyway())

        if changed then
            applyEntityMatrix(entity, matrixBuffer)
        end
    end

    LeaveCursorMode()

    if DoesEntityExist(entity) then
        if IsEntityAPed(entity) then SetEntityAlpha(entity, 255) end
        SetEntityDrawOutline(entity, false)
    end

    gizmoEnabled = false
    currentEntity = nil
end

local function textUILoop()
    CreateThread(function()
        while gizmoEnabled do
            Wait(100)

            local scaleText = (enableScale and '[S]     - Scale Mode  \n') or ''

            lib.showTextUI(
                '[R]     - Souris/Placement  \n' ..
                '[E]     - Rotation  \n' ..
                '[ALT]  - Mettre au sol  \n' ..
                '[ESPACE] - Valider  \n'
            )
        end
        lib.hideTextUI()
    end)
end

-- EXPORTS

local function useGizmo(entity)
    gizmoEnabled = true
    currentEntity = entity
    textUILoop()
    gizmoLoop(entity)

    return {
        handle = entity,
        position = GetEntityCoords(entity),
        rotation = GetEntityRotation(entity)
    }
end

exports("useGizmo", useGizmo)

-- CONTROLS

lib.addKeybind({
    name = '_gizmoSelect',
    description = 'Selects the currently highlighted gizmo',
    defaultMapper = 'MOUSE_BUTTON',
    defaultKey = 'MOUSE_LEFT',
    onPressed = function(self)
        if not gizmoEnabled then return end
        ExecuteCommand('+gizmoSelect')
    end,
    onReleased = function(self)
        ExecuteCommand('-gizmoSelect')
    end
})

lib.addKeybind({
    name = '_gizmoTranslation',
    description = 'Sets mode of the gizmo to translation',
    defaultKey = 'W',
    onPressed = function(self)
        if not gizmoEnabled then return end

        if currentMode ~= 'Translate' then
            currentMode = 'Translate'
            ExecuteCommand('+gizmoTranslation')
        else
            currentMode = 'Rotate'
            ExecuteCommand('+gizmoRotation')
        end
    end,
    onReleased = function(self)
        ExecuteCommand('-gizmoTranslation')
    end
})

lib.addKeybind({
    name = '_gizmoModeCycle',
    description = 'Cycle gizmo modes',
    defaultKey = 'E',
    onPressed = function(self)
        if not gizmoEnabled then return end

        modeIndex = modeIndex + 1
        if modeIndex > #modes then
            modeIndex = 1
        end

        currentMode = modes[modeIndex]

        if currentMode == "Translate" then
            ExecuteCommand('+gizmoTranslation')
            ExecuteCommand('-gizmoRotation')
            if enableScale then ExecuteCommand('-gizmoScale') end
        elseif currentMode == "Rotate" then
            ExecuteCommand('+gizmoRotation')
            ExecuteCommand('-gizmoTranslation')
            if enableScale then ExecuteCommand('-gizmoScale') end
        elseif currentMode == "Scale" then
            ExecuteCommand('+gizmoScale')
            ExecuteCommand('-gizmoTranslation')
            ExecuteCommand('-gizmoRotation')
        end
    end
})

lib.addKeybind({
    name = 'gizmoclose',
    description = 'close gizmo',
    defaultKey = 'SPACE',
    onPressed = function(self)
        if not gizmoEnabled then return end
        gizmoEnabled = false
    end,
})

lib.addKeybind({
    name = 'gizmoSnapToGround',
    description = 'snap current gizmo object to floor/surface',
    defaultKey = 'LMENU',
    onPressed = function(self)
        if not gizmoEnabled then return end
        PlaceObjectOnGroundProperly_2(currentEntity)
    end,
})

if enableScale then
    lib.addKeybind({
        name = '_gizmoScale',
        description = 'Sets mode for the gizmo to scale',
        defaultKey = 'S',
        onPressed = function(self)
            if not gizmoEnabled then return end
            currentMode = 'Scale'
            ExecuteCommand('+gizmoScale')
        end,
        onReleased = function(self)
            ExecuteCommand('-gizmoScale')
        end
    })
end

lib.addKeybind({
    name = 'toggleFreeCamera',
    description = 'Switch between gizmo mouse and free camera',
    defaultKey = 'R',
    onPressed = function()
        if not gizmoEnabled then return end
        freeCamera = not freeCamera

        if freeCamera then
            LeaveCursorMode() -- relâche le curseur pour bouger la caméra
        else
            if not freeCamera then
                EnterCursorMode()
            else
                LeaveCursorMode() -- laisse la caméra tourner librement
            end
        end
    end
})

while gizmoEnabled and DoesEntityExist(entity) do
    Wait(0)

    if not freeCamera then
        DisableControlAction(0, 24, true)
        DisableControlAction(0, 25, true)
        DisableControlAction(0, 140, true)
        DisablePlayerFiring(cache.playerId, true)
    end

    local matrixBuffer = makeEntityMatrix(entity)
    local changed = Citizen.InvokeNative(0xEB2EDCA2, matrixBuffer:Buffer(), 'Editor1',
        Citizen.ReturnResultAnyway())

    if changed then
        applyEntityMatrix(entity, matrixBuffer)
    end
end
