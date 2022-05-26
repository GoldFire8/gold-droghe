ESX = exports.es_extended:getSharedObject()

-- Count Police
    local CopsConnected = 0
    function CountCops()
        return CopsConnected
    end
    function fetchCops()
        local xPlayers = ESX.GetPlayers()
        CopsConnected = 0
        for i = 1, #xPlayers, 1 do
            local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
            if xPlayer.job.name == "police" then
                CopsConnected = CopsConnected + 1
                activeCops[#activeCops + 1] = xPlayer.source
            end
        end
        SetTimeout(120 * 1000, fetchCops)
    end
-- Fine Count Police

--Weed
    -- Raccolta -- -- Raccolta -- -- Raccolta -- -- Raccolta -- -- Raccolta -- -- Raccolta -- -- Raccolta -- -- Raccolta -- -- Raccolta -- -- Raccolta -- -- Raccolta -- -- Raccolta -- -- Raccolta -- -- Raccolta -- -- Raccolta -- 
    RegisterServerEvent('gold-weed_raccolta')
    AddEventHandler('gold-weed_raccolta', function()
        local xPlayer = ESX.GetPlayerFromId(source)
        local ped = GetPlayerPed(source)
        local c = GetEntityCoords(ped)
        local cc = vector3(2217.84, 5577.32, 53.84) -- Weed.Posizione
        local dist = #(c - cc)
        local reward = math.random(Weed.Reward[1], Weed.Reward[2])
        if dist > 75.0 then
            print("^8ID: ["..source.."] "..GetPlayerName(source).." Hanno provato a triggerare la Weed, è stato kickato")
            DropPlayer(source, 'Hai triggerato la Weed')
        else
            if CopsConnected > Weed.Police then
                xPlayer.addInventoryItem(Weed.Item, reward)
            else
                xPlayer.showNotification('Non c\'è abbastanza polizia!')
            end
        end
    end)
    -- Fine Raccolta -- -- Fine Raccolta -- -- Fine Raccolta -- -- Fine Raccolta -- -- Fine Raccolta -- -- Fine Raccolta -- -- Fine Raccolta -- -- Fine Raccolta -- -- Fine Raccolta -- -- Fine Raccolta -- -- Fine Raccolta -- 

    -- Processo -- -- Processo -- -- Processo -- -- Processo -- -- Processo -- -- Processo -- -- Processo -- -- Processo -- -- Processo -- -- Processo -- -- Processo -- -- Processo -- -- Processo -- -- Processo -- -- Processo -- 
    RegisterServerEvent('gold-weed_processo')
    AddEventHandler('gold-weed_processo', function()
        local xPlayer = ESX.GetPlayerFromId(source)
        local ped = GetPlayerPed(source)
        local c = GetEntityCoords(ped)
        local cc = vector3(2201.07, 5589.53, 53.93) -- WeedProcesso.Posizione
        local dist = #(c - cc)
        local reward = math.random(Weed.Reward[1], Weed.Reward[2])
        local item = xPlayer.getInventoryItem(Weed.Item).count
        if dist > 75.0 then
            print("^8ID: ["..source.."] "..GetPlayerName(source).." Hanno provato a triggerare la Weed, è stato kickato")
            DropPlayer(source, 'Hai triggerato la Weed')
        else
            if CopsConnected > WeedProcesso.Police then
                if item > 5 then
                    xPlayer.removeInventoryItem(Weed.Item, Weed.Reward[2])
                    xPlayer.addInventoryItem(WeedProcesso.Item, WeedProcesso.Reward)
                else
                    xPlayer.showNotification('non hai abbastanza ' ..Weed.ItemLabel.. ' per poter processare')
                end
            else
                xPlayer.showNotification('Non c\'è abbastanza polizia!')
            end
        end
    end)
    -- Fine Processo -- -- Fine Processo -- -- Fine Processo -- -- Fine Processo -- -- Fine Processo -- -- Fine Processo -- -- Fine Processo -- -- Fine Processo -- -- Fine Processo -- -- Fine Processo -- -- Fine Processo -- 
-- Fine Weed

-- Coke
    -- Raccolta -- -- Raccolta -- -- Raccolta -- -- Raccolta -- -- Raccolta -- -- Raccolta -- -- Raccolta -- -- Raccolta -- -- Raccolta -- -- Raccolta -- -- Raccolta -- -- Raccolta -- -- Raccolta -- -- Raccolta -- -- Raccolta -- 
    RegisterServerEvent('gold-coke_raccolta')
    AddEventHandler('gold-coke_raccolta', function()
        local xPlayer = ESX.GetPlayerFromId(source)
        local ped = GetPlayerPed(source)
        local c = GetEntityCoords(ped)
        local cc = vector3(2217.84, 5577.32, 53.84) -- Coke.Posizione
        local dist = #(c - cc)
        local reward = math.random(Coke.Reward[1], Coke.Reward[2])
        if dist > 75.0 then
            print("^8ID: ["..source.."] "..GetPlayerName(source).." Hanno provato a triggerare la Coke, è stato kickato")
            DropPlayer(source, 'Hai triggerato la Coke')
        else
            if CopsConnected > Coke.Police then
                xPlayer.addInventoryItem(Coke.Item, reward)
            else
                xPlayer.showNotification('Non c\'è abbastanza polizia!')
            end
        end
    end)
    -- Fine Raccolta -- -- Fine Raccolta -- -- Fine Raccolta -- -- Fine Raccolta -- -- Fine Raccolta -- -- Fine Raccolta -- -- Fine Raccolta -- -- Fine Raccolta -- -- Fine Raccolta -- -- Fine Raccolta -- -- Fine Raccolta -- 

    -- Processo -- -- Processo -- -- Processo -- -- Processo -- -- Processo -- -- Processo -- -- Processo -- -- Processo -- -- Processo -- -- Processo -- -- Processo -- -- Processo -- -- Processo -- -- Processo -- -- Processo -- 
    RegisterServerEvent('gold-coke_processo')
    AddEventHandler('gold-coke_processo', function()
        local xPlayer = ESX.GetPlayerFromId(source)
        local ped = GetPlayerPed(source)
        local c = GetEntityCoords(ped)
        local cc = vector3(2201.07, 5589.53, 53.93) -- CokeProcesso.Posizione
        local dist = #(c - cc)
        local item = xPlayer.getInventoryItem(Coke.Item).count
        if dist > 75.0 then
            print("^8ID: ["..source.."] "..GetPlayerName(source).." Hanno provato a triggerare la Coke, è stato kickato")
            DropPlayer(source, 'Hai triggerato la Coke')
        else
            if CopsConnected > CokeProcesso.Police then
                if item > 5 then
                    xPlayer.removeInventoryItem(Coke.Item, Coke.Reward[2])
                    xPlayer.addInventoryItem(CokeProcesso.Item, CokeProcesso.Reward)
                else
                    xPlayer.showNotification('non hai abbastanza ' ..Coke.ItemLabel.. ' per poter processare')
                end
            else
                xPlayer.showNotification('Non c\'è abbastanza polizia!')
            end
        end
    end)
    -- Fine Processo -- -- Fine Processo -- -- Fine Processo -- -- Fine Processo -- -- Fine Processo -- -- Fine Processo -- -- Fine Processo -- -- Fine Processo -- -- Fine Processo -- -- Fine Processo -- -- Fine Processo -- 
-- Fine Coke