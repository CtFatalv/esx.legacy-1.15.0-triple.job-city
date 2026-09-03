local ESX = exports.es_extended:getSharedObject()

ESX.RegisterServerCallback('ricky-dmv:getData', function(source, cb)
    local licenses = Config.License
    local xPlayer = ESX.GetPlayerFromId(source)
    local result =  MySQL.Sync.fetchAll("SELECT * FROM user_licenses WHERE owner = @identifier", {
        ['@identifier'] = xPlayer.identifier,
    })
    for k,v in pairs(licenses) do 
        v.theory = false
        v.practice = false
        for i=1, #result, 1 do
            local coso = result[i]

            if coso.type == v.id then
                v.theory = true
                v.practice = true
            elseif coso.type == v.id.."dmv" then
                v.theory = true
                v.practice = false
            end
        end
    end
    cb(licenses, xPlayer.getAccount('money').money, xPlayer.getAccount('bank').money)
end)


RegisterServerEvent('ricky-dmv:givelicense')
AddEventHandler('ricky-dmv:givelicense', function(license)
    TriggerEvent('esx_license:addLicense', source, license)
    TriggerClientEvent('ricky-dmv:updateLicense', source)

    local _source = source
    local xPlayer  = ESX.GetPlayerFromId(_source)
    if xPlayer ~= nil then
        -- On ne crée la license qusi elle ne se termine pas par "dmv"
        if not (license:sub(-3) == "dmv") then
            exports['um-idcard']:CreateMetaLicense(_source, license)
        end
    end
end)


RegisterServerEvent('ricky-dmv:removeMoney')
AddEventHandler('ricky-dmv:removeMoney', function(account, money)
  local src = source
  local xPlayer = ESX.GetPlayerFromId(src)
  
  xPlayer.removeAccountMoney(account, money)
end)