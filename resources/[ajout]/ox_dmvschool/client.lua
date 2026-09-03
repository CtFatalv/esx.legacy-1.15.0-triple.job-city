local ESX = exports.es_extended:getSharedObject()

Citizen.CreateThread(function()
	blip = AddBlipForCoord(Config.blip.blips)
	SetBlipSprite(blip, Config.blip.Sprite)
    SetBlipDisplay(blip, Config.blip.Display)
	SetBlipColour(blip, Config.blip.Colour)
	SetBlipScale(blip,Config.blip.Scale)
    SetBlipAsShortRange(blip, true)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString(Config.blip.Name)
    EndTextCommandSetBlipName(blip)
end)

postNUI = function(data)
    SendNUIMessage(data)
end

Citizen.CreateThread(function()
    exports.ox_target:addBoxZone({
        coords = vec3(228.82, 374.86, 106.42),
        size = vec3(0.10, 2.60, 2.0),
        rotation = 250.0,
        debug = false,
        minZ = 105.52,
        maxZ = 107.42,

        options = {
            {
                event = 'ricky-dmv:code',
                icon = 'fa-solid fa-road',
                label = 'Passer le permis',
                distance = 1.6,
            }
        }
    })
end)

RegisterNetEvent('ricky-dmv:code')
AddEventHandler('ricky-dmv:code', function()
    OpenDMV()
end)

OpenDMV = function()
    ESX.TriggerServerCallback('ricky-dmv:getData', function(licenses, money, bank) 
        postNUI({
            type = "SET_CONFIG",
            config = Config
        })
        postNUI({
            type = "SET_MONEY",
            contanti = bank,
            banca = bank
        })
        postNUI({
            type = "OPEN",
            licenses = licenses,
            license = Config.License
        })
        SetNuiFocus(true, true)
        TriggerScreenblurFadeIn(500)
    end)
end

RegisterNUICallback('close', function()
    SetNuiFocus(false, false)
    TriggerScreenblurFadeOut(500)
end)

RegisterNUICallback('removeMoney', function(data)
    local account = data.account
    local amount = tonumber(data.amount)
    TriggerServerEvent('ricky-dmv:removeMoney', account, amount)
end)

RegisterNetEvent('ricky-dmv:updateLicense')
AddEventHandler('ricky-dmv:updateLicense', function()
    ESX.TriggerServerCallback('ricky-dmv:getData', function(licenses) 
        postNUI({
            type = "UPDATE_LICENSE",
            licenses = licenses,
        })
    end)
end)

RegisterNUICallback('theoryOk', function(data)
    local license = data.license
    onCompleteTheory(license)
end)

RegisterNUICallback('practiceOk', function(data)
    local license = data.license
    onCompletePractice(license)
end)


local step = 0
local maxSpeed = nil
local sleep = 1000
local error = 0

SetUpMarker = function()
    step = step + 1
    local randomNumber = math.random(1, #Config.PracticeCoords)
    local coords = Config.PracticeCoords[randomNumber]
    coords = coords[step]
    
    if coords == nil then
        ESX.Game.DeleteVehicle(GetVehiclePedIsIn(PlayerPedId(), false))
        postNUI({
            type = "DISPLAY_RISULTATO",
            errori = error,
        })
        SetNuiFocus(true, true)
        TriggerScreenblurFadeIn(500)
        step = 0
        sleep = 1000
        return
    end

    maxSpeed = coords.speedLimit or nil
    local targetCoords = coords.coordinate

    -- Supprimer le blip précédent si existant
    if currentBlip ~= nil then
        RemoveBlip(currentBlip)
        currentBlip = nil
    end

    -- Créer un blip pour le point actuel
    currentBlip = AddBlipForCoord(targetCoords.x, targetCoords.y, targetCoords.z)
    SetBlipSprite(currentBlip, 1)
    SetBlipColour(currentBlip, 5)
    SetBlipScale(currentBlip, 0.7)
    SetBlipAsShortRange(currentBlip, false)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString("Point DMV")
    EndTextCommandSetBlipName(currentBlip)

    -- Si on est au premier point
    -- Si on est au premier point
    if step == 1 then
        local playerVeh = GetVehiclePedIsIn(PlayerPedId(), false)
        FreezeEntityPosition(playerVeh, true)
        ESX.ShowNotification("Attention ! Respectez la limite de vitesse de 50 km/h")
        PlaySoundFrontend(-1, "ERROR", "HUD_AMMO_SHOP_SOUNDSET", true)
        Citizen.Wait(2000)
        FreezeEntityPosition(playerVeh, false)
    end

    if step == 2 then
        local playerVeh = GetVehiclePedIsIn(PlayerPedId(), false)
        ESX.ShowNotification("Regardez à gauche et droite avant de tourner - Limite 80 km/h")
        PlaySoundFrontend(-1, "RACE_PLACED", "HUD_AWARDS", true)
        FreezeEntityPosition(playerVeh, true)
        Citizen.Wait(2000)
        FreezeEntityPosition(playerVeh, false)
        ESX.ShowNotification("Bien, tournez à gauche")
        PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
    end

    if step == 3 then
        local playerVeh = GetVehiclePedIsIn(PlayerPedId(), false)
        ESX.ShowNotification("Arrêtez-vous pour laisser passer le piéton")
        PlaySoundFrontend(-1, "RACE_PLACED", "HUD_AWARDS", true)
        FreezeEntityPosition(playerVeh, true)
        Citizen.Wait(4000)
        FreezeEntityPosition(playerVeh, false)
        ESX.ShowNotification("Bien, continuez")
        PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
    end

    if step == 4 then
        local playerVeh = GetVehiclePedIsIn(PlayerPedId(), false)
        ESX.ShowNotification("Allez au prochain point")
        PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
    end

    if step == 5 then
        local playerVeh = GetVehiclePedIsIn(PlayerPedId(), false)
        ESX.ShowNotification("Regardez bien avant de tourner")
        PlaySoundFrontend(-1, "RACE_PLACED", "HUD_AWARDS", true)
        FreezeEntityPosition(playerVeh, true)
        Citizen.Wait(2000)
        FreezeEntityPosition(playerVeh, false)
        ESX.ShowNotification("Bien, tournez à gauche")
        PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
    end

    if step == 6 then
        local playerVeh = GetVehiclePedIsIn(PlayerPedId(), false)
        ESX.ShowNotification("Attention aux stop, marquez l'arrêt")
        PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
        FreezeEntityPosition(playerVeh, true)
        Citizen.Wait(2000)
        FreezeEntityPosition(playerVeh, false)
        ESX.ShowNotification("Bien, tournez à droite")
        PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
    end

    if step == 7 then
        local playerVeh = GetVehiclePedIsIn(PlayerPedId(), false)
        ESX.ShowNotification("Autoroute - Limite 120 km/h")
        PlaySoundFrontend(-1, "RACE_PLACED", "HUD_AWARDS", true)
        PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
    end

    if step == 8 then
        local playerVeh = GetVehiclePedIsIn(PlayerPedId(), false)
        ESX.ShowNotification("Allez au prochain point")
        PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
    end

    if step == 9 then
        local playerVeh = GetVehiclePedIsIn(PlayerPedId(), false)
        ESX.ShowNotification("En ville - Limite 80 km/h")
        PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
    end

    if step == 10 then
        local playerVeh = GetVehiclePedIsIn(PlayerPedId(), false)
        ESX.ShowNotification("Allez au prochain point")
        PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
    end

    if step == 11 then
        local playerVeh = GetVehiclePedIsIn(PlayerPedId(), false)
        ESX.ShowNotification("Allez au prochain point")
        PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
    end

    if step == 12 then
        local playerVeh = GetVehiclePedIsIn(PlayerPedId(), false)
        ESX.ShowNotification("Allez au prochain point")
        PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
    end

    if step == 13 then
        local playerVeh = GetVehiclePedIsIn(PlayerPedId(), false)
        ESX.ShowNotification("Allez au prochain point")
        PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
    end

    if step == 14 then
        local playerVeh = GetVehiclePedIsIn(PlayerPedId(), false)
        ESX.ShowNotification("Allez au prochain point")
        PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
    end

    if step == 15 then
        local playerVeh = GetVehiclePedIsIn(PlayerPedId(), false)
        ESX.ShowNotification("Retournez à l'auto école")
        PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
    end

	SetNewWaypoint(targetCoords.x, targetCoords.y)
    sleep = 0

    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(sleep)
            --DrawMarker supprimé

            local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
            if vehicle ~= nil then
                local speed = GetEntitySpeed(vehicle) * Config.SpeedMultiplier
                if maxSpeed ~= nil and speed > maxSpeed then
                    sleep = 1000
                    error = error + 1
                    ESX.ShowNotification(Config.Lang[Config.Language]["speed_error"] .. " Nombre d'erreurs : " .. error .. "/" .. Config.MaxErrors, "error")
                else
                    sleep = 0
                end
            end

            local distance = GetDistanceBetweenCoords(targetCoords.x, targetCoords.y, targetCoords.z, GetEntityCoords(PlayerPedId()), true)
            if distance < 2.5 then
                -- supprimer le blip dès que le point est atteint
                if currentBlip ~= nil then
                    RemoveBlip(currentBlip)
                    currentBlip = nil
                end
                SetUpMarker()
                break 
            end
        end
    end)
end

RegisterNUICallback('startPractice', function(data)
    local license = data.license 
    for k,v in pairs(Config.License) do 
        if v.id == license then
            local vehicle = v.vehicle
            ESX.Game.SpawnVehicle(vehicle.model, vehicle.coords, vehicle.heading, function(veh) 
                SetVehicleNumberPlateText(veh, vehicle.plate)
                SetPedIntoVehicle(PlayerPedId(), veh, -1)
            end)
        end
    end
    SetUpMarker()
end)