local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('tc-vending-openShop', function()
    local shop = {
        {
            header = '🛒Vending Machine🛒',
            isMenuHeader = true,
        },
        {
            header = 'Close Menu',
            icon = 'fas fa-circle-xmark',
        }, 
    }       
    for k, v in pairs(Config.Shop) do
        local drink = {}
        drink.header = Config.InvPath .. QBCore.Shared.Items[v.drinkName].image .. " width=55px style='margin-right: 10px'> " .. v.drinkLabel
        drink.text = 'Price: $' .. v.drinkPrice 
        drink.params = {
            event = 'tc-vending-buyDrink',
            args = {
                type = k
            }
        }
        table.insert(shop, drink)
    end
    exports['qb-menu']:openMenu(shop)
end)


local PlayerData = QBCore.Functions.GetPlayerData()

RegisterNetEvent('tc-vending-buyDrink', function(args)
    local ped = PlayerPedId()
    local current = args.type
    local drink = Config.Shop[current].drinkName
    local cash = Config.Shop[current].drinkPrice
    local label = Config.Shop[current].drinkLabel
    local PlayerData = QBCore.Functions.GetPlayerData()
    TriggerServerEvent('tc-vending-chargeDrink', drink, cash, label)
end)



CreateThread(function()
    exports['qb-target']:AddTargetModel(Config.Machines, {
        options = {
            { 
                type = "client",
                event = "tc-vending-openShop",
                icon = "fas fa-martini-glass",
                label = "View Products",
            },
        },
        distance = 1.5 
    })
end)
