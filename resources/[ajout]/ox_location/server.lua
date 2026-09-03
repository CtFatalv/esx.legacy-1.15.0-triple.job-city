ESX = exports["es_extended"]:getSharedObject()

RegisterNetEvent('lazic:processPayment', function(data)
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)
    
    if not xPlayer or not data then return end

    local vehId = data.vehId
    local npcId = data.npcId
    local price = Config.vehicules[vehId].price
    if xPlayer.getMoney() >= price then
        xPlayer.removeMoney(price)
		TriggerClientEvent('esx:showNotification', source, 'Vous avez payé '..price..'$ pour la location.', 'success', 3000)
        TriggerClientEvent('lazic:spawnRentedVehicle', src, vehId, npcId)
    else
		TriggerClientEvent('esx:showNotification', source, 'Vous n\'avez Pas assez d\'argent', 'error', 3000)
    end
end)