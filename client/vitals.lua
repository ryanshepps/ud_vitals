local hunger = 100 -- Change these values to a possible saved value from a database
local thirst = 100

-- SetPedArmour(PlayerPedId(), 100)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(500)
        SendNUIMessage({
            health = GetEntityHealth(PlayerPedId()),
            armor = GetPedArmour(PlayerPedId())
        })
    end
end)

Citizen.CreateThread(function()  
    while true do
        Citizen.Wait(60000) -- one minute
        hunger = hunger - Config.hunger
        thirst = thirst - Config.thirst
        SendNUIMessage({
            hunger = hunger,
            thirst = thirst
        })
    end
end)