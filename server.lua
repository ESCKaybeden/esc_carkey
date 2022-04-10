Framework = nil

if Customize.Framework == 'QBCore' then
    
    Framework = exports['qb-core']:GetCoreObject()

    RegisterServerEvent("esc_carkey:newcarkey", function(plate, model)
        local Player = Framework.Functions.GetPlayer(source)
        Player.Functions.AddItem("carkey", 1, false, { plate = plate, model = model })
        TriggerClientEvent('inventory:client:ItemBox', source, Framework.Shared.Items["carkey"], "add")
    end)

    RegisterCommand(Customize.AdminGiveCommand, function(source, args)
        if Customize.AdminGiveKey then
            if Customize.AdminList[GetPlayerIdentifier(source)] then
                local Player = Framework.Functions.GetPlayer(source)
                Player.Functions.AddItem("carkey", 2, false, { plate = args[1], model = args[2] })
                TriggerClientEvent('inventory:client:ItemBox', source, Framework.Shared.Items["carkey"], "add")
            end
        end
    end)

elseif Customize.Framework == 'ESX' then

    TriggerEvent('esx:getSharedObject', function(obj) Framework = obj end)

    RegisterCommand(Customize.AdminGiveCommand, function(source, args)
        if Customize.AdminGiveKey then
            if Customize.AdminList[GetPlayerIdentifier(source)] then
                local xPlayer = Framework.GetPlayerFromId(source)
                xPlayer.addInventoryItem("carkey", 2, true, { plate = args[1], model = args[2] })
            end
        end
    end)

    RegisterServerEvent("esc_carkey:newcarkey", function(plate, model)
        local xPlayer = Framework.GetPlayerFromId(source)
        xPlayer.addInventoryItem("carkey", 2, true, { plate = args[1], model = args[2] })
    end)

end