local QBCore = exports['qb-core']:GetCoreObject()

Citizen.CreateThread(function()
    for k, v in pairs(config.Props) do
        QBCore.Functions.CreateUseableItem(k, function(source, item)
            TriggerClientEvent("zeo-usableprops:use", source, item.name)
        end) 
    end
end) 