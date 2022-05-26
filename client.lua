ESX = exports.es_extended:getSharedObject()

-- Weed
    -- Raccolta -- -- Raccolta -- -- Raccolta -- -- Raccolta -- -- Raccolta -- -- Raccolta -- -- Raccolta -- -- Raccolta -- -- Raccolta -- -- Raccolta -- -- Raccolta -- -- Raccolta -- -- Raccolta -- -- Raccolta -- 
    raccoltaWeed = true
    Citizen.CreateThread(function()
        for k, v in pairs(Weed.Posizione) do
            TriggerEvent('gridsystem:registerMarker', {
                name = 'weed-raccolta',
                pos = vector3(v.x, v.y, v.z),
                scale = vector3(1.5, 1.5, 1.5),
                size = vector3(2.5, 2.5, 2.5),
                msg = '~p~[E] ~w~Per Raccogliere',
                type = -1,
                show3D = true,
                color = {r = 0, g = 0 ,b = 0},
                control = 'E',
                action = function()
                    if raccoltaWeed then
                        FreezeEntityPosition(PlayerPedId(), true)
                        RequestAnimDict("mini@golfai")
                        while (not HasAnimDictLoaded("mini@golfai")) do Citizen.Wait(0) end
                        TaskPlayAnim(PlayerPedId(),"mini@golfai","wood_idle_a",8.0, 8.0, -1, 49, 0, 0, 0, 0)
                        exports['progressBars']:startUI(4000, "Raccogliendo...")
                        Citizen.Wait(4000)
                        ClearPedTasks(PlayerPedId())
                        FreezeEntityPosition(PlayerPedId(), false)
                    end
                    TriggerServerEvent('gold-weed_raccolta')
                end
            })
        end
    end)
    -- Fine Raccolta -- -- Fine Raccolta -- -- Fine Raccolta -- -- Fine Raccolta -- -- Fine Raccolta -- -- Fine Raccolta -- -- Fine Raccolta -- -- Fine Raccolta -- -- Fine Raccolta -- -- Fine Raccolta -- -- Fine Raccolta -- 



    -- Processo -- -- Processo -- -- Processo -- -- Processo -- -- Processo -- -- Processo -- -- Processo -- -- Processo -- -- Processo -- -- Processo -- -- Processo -- -- Processo -- -- Processo -- -- Processo -- -- Processo -- 
    processoWeed = true
    Citizen.CreateThread(function()
        for k, v in pairs(WeedProcesso.Posizione) do
            TriggerEvent('gridsystem:registerMarker', {
                name = 'weed-processo',
                pos = vector3(v.x, v.y, v.z),
                scale = vector3(1.5, 1.5, 1.5),
                size = vector3(2.5, 2.5, 2.5),
                msg = '~p~[E] ~w~Per Processare',
                type = -1,
                show3D = true,
                color = {r = 0, g = 0 ,b = 0},
                control = 'E',
                action = function()
                    if processoWeed then
                        FreezeEntityPosition(PlayerPedId(), true)
                        RequestAnimDict("mini@golfai")
                        while (not HasAnimDictLoaded("mini@golfai")) do Citizen.Wait(0) end
                        TaskPlayAnim(PlayerPedId(),"mini@golfai","wood_idle_a",8.0, 8.0, -1, 49, 0, 0, 0, 0)
                        exports['progressBars']:startUI(4000, "Processando...")
                        Citizen.Wait(4000)
                        ClearPedTasks(PlayerPedId())
                        FreezeEntityPosition(PlayerPedId(), false)
                    end
                    TriggerServerEvent('gold-weed_processo')
                end
            })
        end
    end)
    -- Fine Processo -- -- Fine Processo -- -- Fine Processo -- -- Fine Processo -- -- Fine Processo -- -- Fine Processo -- -- Fine Processo -- -- Fine Processo -- -- Fine Processo -- -- Fine Processo -- -- Fine Processo -- 
-- Fine Weed


-- Coke 
    -- Raccolta -- -- Raccolta -- -- Raccolta -- -- Raccolta -- -- Raccolta -- -- Raccolta -- -- Raccolta -- -- Raccolta -- -- Raccolta -- -- Raccolta -- -- Raccolta -- -- Raccolta -- -- Raccolta -- -- Raccolta -- 
    raccoltaCoke = true
    Citizen.CreateThread(function()
        for k, v in pairs(Coke.Posizione) do
            TriggerEvent('gridsystem:registerMarker', {
                name = 'coke-raccolta',
                pos = vector3(v.x, v.y, v.z),
                scale = vector3(1.5, 1.5, 1.5),
                size = vector3(2.5, 2.5, 2.5),
                msg = '~p~[E] ~w~Per Raccogliere',
                type = -1,
                show3D = true,
                color = {r = 0, g = 0 ,b = 0},
                control = 'E',
                action = function()
                    if raccoltaCoke then
                        FreezeEntityPosition(PlayerPedId(), true)
                        RequestAnimDict("mini@golfai")
                        while (not HasAnimDictLoaded("mini@golfai")) do Citizen.Wait(0) end
                        TaskPlayAnim(PlayerPedId(),"mini@golfai","wood_idle_a",8.0, 8.0, -1, 49, 0, 0, 0, 0)
                        exports['progressBars']:startUI(4000, "Raccogliendo...")
                        Citizen.Wait(4000)
                        ClearPedTasks(PlayerPedId())
                        FreezeEntityPosition(PlayerPedId(), false)
                    end
                    TriggerServerEvent('gold-coke_raccolta')
                end
            })
        end
    end)
    -- Fine Raccolta -- -- Fine Raccolta -- -- Fine Raccolta -- -- Fine Raccolta -- -- Fine Raccolta -- -- Fine Raccolta -- -- Fine Raccolta -- -- Fine Raccolta -- -- Fine Raccolta -- -- Fine Raccolta -- -- Fine Raccolta -- 



    -- Processo -- -- Processo -- -- Processo -- -- Processo -- -- Processo -- -- Processo -- -- Processo -- -- Processo -- -- Processo -- -- Processo -- -- Processo -- -- Processo -- -- Processo -- -- Processo -- -- Processo -- 
    processoCoke = true
    Citizen.CreateThread(function()
        for k, v in pairs(CokeProcesso.Posizione) do
            TriggerEvent('gridsystem:registerMarker', {
                name = 'coke-processo',
                pos = vector3(v.x, v.y, v.z),
                scale = vector3(1.5, 1.5, 1.5),
                size = vector3(2.5, 2.5, 2.5),
                msg = '~p~[E] ~w~Per Processare',
                type = -1,
                show3D = true,
                color = {r = 0, g = 0 ,b = 0},
                control = 'E',
                action = function()
                    if processoCoke then
                        FreezeEntityPosition(PlayerPedId(), true)
                        RequestAnimDict("mini@golfai")
                        while (not HasAnimDictLoaded("mini@golfai")) do Citizen.Wait(0) end
                        TaskPlayAnim(PlayerPedId(),"mini@golfai","wood_idle_a",8.0, 8.0, -1, 49, 0, 0, 0, 0)
                        exports['progressBars']:startUI(4000, "Processando...")
                        Citizen.Wait(4000)
                        ClearPedTasks(PlayerPedId())
                        FreezeEntityPosition(PlayerPedId(), false)
                    end
                    TriggerServerEvent('gold-coke_processo')
                end
            })
        end
    end)
    -- Fine Processo -- -- Fine Processo -- -- Fine Processo -- -- Fine Processo -- -- Fine Processo -- -- Fine Processo -- -- Fine Processo -- -- Fine Processo -- -- Fine Processo -- -- Fine Processo -- -- Fine Processo -- 
-- Fine Coke