-- Fonction de création du PNJ
function CreateNpc(model, coords)
    local modelHash = type(model) == "string" and GetHashKey(model) or model

    RequestModel(modelHash)
    while not HasModelLoaded(modelHash) do
        Wait(1)
    end

    -- coords.w contient la rotation (heading) extraite du vector4
    local npc = CreatePed(4, modelHash, coords.x, coords.y, coords.z - 1.0, coords.w or 0.0, false, true)
    
    SetEntityInvincible(npc, true)
    FreezeEntityPosition(npc, true)
    SetBlockingOfNonTemporaryEvents(npc, true)
    SetPedDefaultComponentVariation(npc)
    return npc
end

-- Fonction de création du Blip
function CreateBlip(coords, sprite, color, display, scale, label)
    local blip = AddBlipForCoord(coords.x, coords.y, coords.z)
    SetBlipSprite(blip, sprite)
    SetBlipColour(blip, color)
    SetBlipDisplay(blip, display)
    SetBlipScale(blip, scale)
    SetBlipAsShortRange(blip, true)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString(label)
    EndTextCommandSetBlipName(blip)
    return blip
end

-- Boucle principale
for k, v in pairs(Config.marchand) do
    -- CORRECTION ICI : On passe directement le vector4 (v.coord) à la fonction.
    -- Un vector4 possède nativement .x, .y, .z, et .w
    local npc = CreateNpc(v.npc, v.coord)
    local menuId = ("sell_%s"):format(k)

    if v.blip and v.blip.visible then
        -- On passe v.coord directement ici aussi
        local blip = CreateBlip(v.coord, v.blip.sprite, v.blip.color, v.blip.display, v.blip.scale, v.blip.name)
    end

    exports.ox_target:addLocalEntity(npc, {
        label = v.label,
        icon = 'fa-solid fa-tag',
        onSelect = function()
            ESX.TriggerServerCallback("ox_sellshop:GetItemslabel", function(itemsLabel)
                lib.registerContext({
                    id = menuId,
                    title = v.blip and v.blip.name or v.label,
                    options = ESX.Table.Map(v.sellItems, function(data)
                        return {
                            title = ("%s - %s%s"):format(itemsLabel[data.item] or data.item, data.price, "$"),
                            description = ("Vendre %s pour %s%s"):format(itemsLabel[data.item] or data.item, data.price, "$"),
                            icon = 'fa-solid fa-box',
                            onSelect = function()
                                TriggerServerEvent('ox_sellshop:sellItem', data.item, data.price, data.currency)
                                
                                -- On réaffiche le menu immédiatement après l'envoi de l'event
                                lib.showContext(menuId)
                            end
                        }
                    end)
                })
                lib.showContext(menuId)
            end, ESX.Table.Map(v.sellItems, function(data)
                return {item = data.item}
            end))
        end
    })
end