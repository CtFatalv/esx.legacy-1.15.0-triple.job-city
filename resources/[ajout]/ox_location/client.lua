ESX = exports["es_extended"]:getSharedObject()

CreateThread(function()
    for id, data in ipairs(Config.npc) do
        
        local blip = AddBlipForCoord(data.coord.x, data.coord.y, data.coord.z)
        SetBlipSprite(blip, Config.blip.sprite)
        SetBlipDisplay(blip, 4)
        SetBlipScale(blip, Config.blip.scale)
        SetBlipColour(blip, Config.blip.colour)
        SetBlipAsShortRange(blip, true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(Config.blip.label)
        EndTextCommandSetBlipName(blip)

        RequestModel(GetHashKey(data.skin))
        while not HasModelLoaded(GetHashKey(data.skin)) do Wait(1) end
        
        RequestAnimDict("mini@strip_club@idles@bouncer@base")
        while not HasAnimDictLoaded("mini@strip_club@idles@bouncer@base") do Wait(1) end

        local ped = CreatePed(4, GetHashKey(data.skin), data.coord.x, data.coord.y, data.coord.z, data.coord.w, false, true)
        FreezeEntityPosition(ped, true)
        SetEntityInvincible(ped, true)
        SetBlockingOfNonTemporaryEvents(ped, true)
        TaskPlayAnim(ped, "mini@strip_club@idles@bouncer@base", "base", 8.0, 0.0, -1, 1, 0, 0, 0, 0)

        exports['qtarget']:AddBoxZone("RentZone_"..id, vector3(data.coord.x, data.coord.y, data.coord.z), 1.0, 1.0, {
            name = "RentZone_"..id,
            heading = data.coord.w,
            debugPoly = false,
            minZ = data.coord.z,
            maxZ = data.coord.z+2,
            debugPoly = false
        }, {
            options = {
                {
                    event = "lazic:openRentMenu",
                    icon = "fas fa-clipboard-list",
                    label = "Location de véhicule",
                    npcId = id
                },
            },
            job = {"all"},
            distance = 2.0
        })
    end
end)
RegisterNetEvent("lazic:openRentMenu", function(data)
    local npcId = data.npcId
    local menuOptions = {}

    for vehId, vehData in ipairs(Config.vehicules) do
        table.insert(menuOptions, {
            title = vehData.label,
            description = vehData.price .. "$",
            icon = vehData.icon,
            image = vehData.img,
            serverEvent = "lazic:processPayment",
            args = { vehId = vehId, npcId = npcId }
        })
    end

    lib.registerContext({
        id = 'rent_vehicle_menu',
        title = 'Location de véhicule',
        options = menuOptions
    })
    lib.showContext('rent_vehicle_menu')
end)

RegisterNetEvent('lazic:spawnRentedVehicle', function(vehId, npcId)
    local spawnCoords = Config.npc[npcId].spawn_vehicule
    local model = Config.vehicules[vehId].model
    local plateText = Config.plaque

    ESX.Game.SpawnVehicle(model, vector3(spawnCoords.x, spawnCoords.y, spawnCoords.z), spawnCoords.w, function(vehicle)
        SetVehicleNumberPlateText(vehicle, plateText)
        local plate = string.gsub(GetVehicleNumberPlateText(vehicle), " ", "")
    end)
end)