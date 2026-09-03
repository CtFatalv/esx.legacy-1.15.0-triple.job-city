ESX = nil
QBCore = nil
vehicletable = 'owned_vehicles'
vehiclemod = 'vehicle'
owner = 'owner'
stored = 'stored'
garage_id = 'garage_id'
type_ = 'type'
Initialized()
local vehicles = {}
local shops = {}
Citizen.CreateThread(function()
    for k,v in pairs(VehicleShop) do
        local list, foundshop = GetVehiclesFromShop(k or 'pdm')
        if not shops[k] then shops[k] = {} end
        --TriggerClientEvent('table',-1,Owned_Vehicle)
        if v.shop then
            shops[k].list = v.shop
            shops[k].type = v.type
        else
            shops[k].list = list
            shops[k].type = v.type
        end
    end
    GlobalState.VehicleShops = shops
end)

function GetVehiclesFromShop(shop)
    local vehicles = {}
    local found = false
    for k,v in pairs(Config.Vehicles) do
        if v.shop == shop then
            vehicles[k] = v
            found = true
        end
    end
    return vehicles, found
end

local NumberCharset = {}
for i = 48,  57 do table.insert(NumberCharset, string.char(i)) end

function Deleteveh(plate,src)
    local plate = string.gsub(plate, '^%s*(.-)%s*$', '%1')
    if plate and type(plate) == 'string' then
        CustomsSQL(Config.Mysql,'execute','DELETE FROM '..vehicletable..' WHERE TRIM(UPPER(plate)) = @plate',{['@plate'] = plate})
    else
        --print('error not string - Delete Vehicle')
    end
end

RegisterServerEvent('renzu_vehicleshop:sellvehicle')
AddEventHandler('renzu_vehicleshop:sellvehicle', function()
    local source = source
    local xPlayer = GetPlayerFromId(source)
    local price = 1000
    local vehicle = GetVehiclePedIsIn(GetPlayerPed(source))
    local plate = GetVehicleNumberPlateText(vehicle)
    r = CustomsSQL(Config.Mysql,'fetchAll','SELECT * FROM '..vehicletable..' WHERE UPPER(TRIM(plate)) = @plate and '..owner..' = @'..owner..'',{['@plate'] = string.gsub(plate:upper(), '^%s*(.-)%s*$', '%1'), ['@'..owner..''] = xPlayer.identifier})
    if r and #r > 0 then
        local model = json.decode(r[1][vehiclemod]).model
        if model == GetEntityModel(vehicle) then
            result = Config.Vehicles
                if result then
                    for k,v in pairs(result) do
                        if model == GetHashKey(v.model) then
                            price = v.price * (Config.RefundPercent * 0.01)
                        end
                    end
                    Deleteveh(plate,xPlayer.source)
                    xPlayer.addMoney(price)
                    xPlayer.showNotification('Vehicle has been Sold for ^g '..price..'',1,0,110)
                    TriggerClientEvent('sellvehiclecallback',xPlayer.source)
                end
        else
            --print("EXPLOIT")
            xPlayer.showNotification('Are you really sure this is the vehicle?',1,0,110)
        end
    else
        xPlayer.showNotification('You dont owned this vehicle',1,0,110)
    end
end)

RegisterServerEvent('ox_carkeys:recupsrv')
AddEventHandler('ox_carkeys:recupsrv', function(localVehPlate, vehicleName)
	print('Concessionnaire: Véhicule acheté',json.encode(localVehPlate),json.encode(vehicleName))
end)

local Charset = {}
for i = 65,  90 do table.insert(Charset, string.char(i)) end
for i = 97, 122 do table.insert(Charset, string.char(i)) end
local temp = {}
CreateThread(function()
    Wait(1000)
    local vehicles = CustomsSQL(Config.Mysql,'fetchAll','SELECT * FROM '..vehicletable..'',{})
    for k,v in pairs(vehicles) do
        if v.plate ~= nil then
            temp[v.plate] = v
        end
    end
end)

RegisterServerCallBack_('renzu_vehicleshop:GenPlate', function (source, cb, prefix)
    cb(GenPlate(prefix))
end)

RegisterServerCallBack_('renzu_vehicleshop:buyvehicle', function (source, cb, model, props, payment, job, type, garage, notregister)
    local xPlayer = GetPlayerFromId(source)
    
    if not xPlayer then
        cb(false)
        return
    end

    if (not job and type == 'car' and not notregister) or job == 'cardealer' then
        cb(Buy({[1] = Config.Vehicles[model]}, xPlayer, model, props, payment, job, type, garage))
        return
    end

    if notregister then
        cb(Buy(true, xPlayer, model, props, payment or 'cash', job or 'civ', type or 'car', garage or 'A', notregister))
        return
    end

    for _, v in pairs(VehicleShop) do
        if v.shop then
            for _, veh in pairs(v.shop) do
                if veh.model:lower() == model:lower() then
                    local result = {[1] = {model = veh.model, price = veh.price, stock = 100}}
                    cb(Buy(result, xPlayer, model, props, payment, job, type, garage))
                    return
                end
            end
        end
    end

    cb(false)
end)


local temp = {}

function Buy(result, xPlayer, model, props, payment, job, type, garage, notregister)
    --print("Buy")
    local bool = false
    local price, stock

    if result then
        if not notregister then
            model = result[1].model
            price = result[1].price
        else
            price = notregister.value
        end

        -- Vérifier l'argent
        local canPay = false
        if not job or job == false then
            -- Achat par joueur normal
            local playerMoney = xPlayer.getAccount('bank').money or 0
            if playerMoney >= tonumber(price) then
                canPay = true
            else
                canPay = false
            end
        else
            -- Achat par job → on gère après avec la société
            canPay = true
        end

        stock = 999
        if canPay then
            --print("money disponible")

            -- Paiement
            if not job or job == false then
                xPlayer.removeAccountMoney('bank', tonumber(price))
                --print("paiement joueur effectué")
                TriggerClientEvent("renzu_vehicleshop:buyok", xPlayer.source)
            else
                -- Paiement entreprise synchronisé
                local done = false
                local success = false
                TriggerEvent('esx_addonaccount:getSharedAccount', 'society_'..job, function(account)
                    if account.money >= tonumber(price) then
                        account.removeMoney(tonumber(price))
                		TriggerClientEvent("renzu_vehicleshop:buyok", xPlayer.source)
                        --print("retrait effectué société", job)
                        success = true
                    else
                        xPlayer.showNotification("La société n'a pas assez d'argent")
                        --print("retour entreprise pas assez d'argent")
                        success = false
                    end
                    done = true
                end)

                local timeout = 0
                while not done and timeout < 100 do
                    Wait(10)
                    timeout = timeout + 1
                end

                if not success then
                    return false
                end
            end

            -- Déterminer parking automatiquement selon le type
            local parkingName = "SandyShores"
            if type == "car" then
                parkingName = "SandyShores"
            elseif type == "air" then
                parkingName = "SandyShoresAir"
            elseif type == "boat" then
                parkingName = "SandyShoresBoat"
            end

            --print("type", type, "parking choisi", parkingName)

            stock = stock - 1

            -- Enregistrement en DB
            local data = json.encode(props)
            local query = 'INSERT INTO '..vehicletable..' ('..owner..', plate, '..vehiclemod..', job, `'..stored..'`, `parking`, `'..type_..'`) ' ..
                          'VALUES (@'..owner..', @plate, @props, @job, @'..stored..', @parking, @'..type_..')'

            local var = {
                ['@'..owner..'']   = xPlayer.identifier,
                ['@plate']         = props.plate:upper(),
                ['@props']         = data,
                ['@job']           = job or "civ",
                ['@'..stored..'']  = 0,
                ['@parking']       = parkingName,
                ['@'..type_..'']   = type or "car"
            }

            CustomsSQL(Config.Mysql, 'execute', query, var)

            bool = true
            temp[props.plate] = true
            -- TriggerClientEvent('mycarkeys:setowned', xPlayer.source, props.plate) -- si tu veux donner les clés

        else
            xPlayer.showNotification('Not Enough Money', 1, 0, 110)
            bool = false
        end
    else
        --print("Le véhicule n'existe pas")
        xPlayer.showNotification('Vehicle does not Exist', 1, 0, 110)
        bool = false
    end

    return bool
end



RegisterServerEvent('ox_carkeys:recupsrv')
AddEventHandler('ox_carkeys:recupsrv', function(localVehPlate, vehicleName)
	print('Concessionnaire: Véhicule acheté',json.encode(localVehPlate),json.encode(vehicleName))
end)

local Charset = {}
for i = 65,  90 do table.insert(Charset, string.char(i)) end
for i = 97, 122 do table.insert(Charset, string.char(i)) end
CreateThread(function()
    Wait(1000)
    local vehicles = CustomsSQL(Config.Mysql,'fetchAll','SELECT * FROM '..vehicletable..'',{})
    for k,v in pairs(vehicles) do
        if v.plate ~= nil then
            temp[v.plate] = v
        end
    end
end)

function GetRandomLetter(length)
	math.randomseed(GetGameTimer())
	if length > 0 then
		return GetRandomLetter(length - 1) .. Charset[math.random(1, #Charset)]
	else
		return ''
	end
end

function GenPlate(prefix)
    local plate = LetterRand()..' '..NumRand()
    if prefix then plate = prefix..' '..NumRand() end
    if temp[plate] == nil then
        return plate
    end
    Wait(1)
    return GenPlate(prefix)
end

function LetterRand()
    local emptyString = {}
    local randomLetter;
    while (#emptyString < 6) do
        randomLetter = GetRandomLetter(1)
        table.insert(emptyString,randomLetter)
        Wait(0)
    end
    local a = string.format("%s%s%s", table.unpack(emptyString)):upper()  -- "2 words"
    return a
end

function NumRand()
    local emptyString = {}
    local randomLetter;
    while (#emptyString < 6) do
        randomLetter = GetRandomNumber(1)
        table.insert(emptyString,randomLetter)
        Wait(0)
    end
    local a = string.format("%i%i%i", table.unpack(emptyString))  -- "2 words"
    return a
end

function GetRandomNumber(length)
	math.randomseed(os.time()+math.random(19999,999999))
	if length > 0 then
		return GetRandomNumber(length - 1) .. NumberCharset[math.random(1, #NumberCharset)]
	else
		return ''
	end
end

exports('GenPlate', function(plate)
    return GenPlate(plate)
end)

exports('VehiclesList', function()
    return Config.Vehicles
end)

exports('Deleteveh', function(plate)
    return Deleteveh(plate)
end)