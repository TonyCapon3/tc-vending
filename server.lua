local QBCore = exports['qb-core']:GetCoreObject()



RegisterNetEvent('tc-vending-chargeDrink', function(drink, cash, label)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

        if Player.Functions.GetMoney('cash') >= cash then
           Player.Functions.AddItem(drink, 1)
           TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items[drink], "add")
           Player.Functions.RemoveMoney('cash', cash)
           TriggerClientEvent('QBCore:Notify', src, 'Bought ' ..label.. ' for $' ..cash, 'success')
        else
            TriggerClientEvent('QBCore:Notify', src, 'You Dont Have Enough Cash You Need $' ..cash, 'error')
        end

end)

-- RegisterNetEvent('tc-vending-chargeDrink', function(drink, cash)
--     local src = source
--     local Player = QBCore.Functions.GetPlayer(src)
--     local current = args.type
--     local drink = Config.Shop[current].drinkName
--     local cash = Config.Shop[current].drinkPrice
--     local label = Config.Shop[current].drinkLabel

--         if Player.Functions.GetMoney('cash') >= cash then
--            Player.Functions.AddItem(drink, 1)
--            TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items[drink], "add")
--            Player.Functions.RemoveMoney('cash', cash)
--            TriggerClientEvent('QBCore:Notify', src, 'Bought ' ..label.. ' for $' ..cash, 'success')
--            TriggerClientEvent('tc-vending-buyDrink')
--         else
--             TriggerClientEvent('QBCore:Notify', src, 'You Dont Have Enough Cash You Need $' ..cash, 'error')
--         end

-- end)


QBCore.Functions.CreateUseableItem("prime", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Drink", source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("mtdew", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Drink", source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("drpepper", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Drink", source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("sprite", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Drink", source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("icetea", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Drink", source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("fanta", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Drink", source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("barqs", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Drink", source, item.name)
    end
end)


