ESX.RegisterServerCallback("ox_sellshop:GetItemslabel", function(source, cb, items)
    local itemsLabel = {}
    for k,v in pairs(items) do
        itemsLabel[v.item] = ESX.GetItemLabel(v.item)
    end
    cb(itemsLabel)
end)

RegisterNetEvent('ox_sellshop:sellItem', function(item, price, currency)
    local xPlayer = ESX.GetPlayerFromId(source)
    local itemCount = xPlayer.getInventoryItem(item).count

    if itemCount > 0 then
        
        if currency == "money" then
            xPlayer.addMoney(price * itemCount)
        elseif currency == "black_money" then
            xPlayer.addAccountMoney('black_money', price * itemCount)
        elseif currency == "bank" then
            xPlayer.addAccountMoney('bank', price * itemCount)
        end
        xPlayer.removeInventoryItem(item, itemCount)
        TriggerClientEvent('esx:showNotification', source, ('Vous avez vendu %d %s pour %s$'):format(itemCount, ESX.GetItemLabel(item), price * itemCount))
    else
        TriggerClientEvent('esx:showNotification', source, ('Vous n\'avez pas de %s à vendre.'):format(ESX.GetItemLabel(item)))
    end
end)