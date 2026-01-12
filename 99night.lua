-- 99 Night in the Forest: Survival Script
local player = game.Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()

-- 1. True or False Settings (Booleans)
local AutoEat = true -- Naka-ON ang pagkain
local AutoCollect = true -- Naka-ON ang pagkuha ng gamit

-- 2. Food List (Table)
local foodItems = {"Carrot", "Cake", "Pumpkin", "Corn", "Meat", "Morsel", "Stew"}

-- 3. Distance Check (Magnitude)
local maxDistance = 15 -- Distansya para maabot ang pagkain

-- Function para hanapin at kainin ang pagkain
for _, foodName in pairs(foodItems) do
    local food = game.Workspace:FindFirstChild(foodName)
    if food and AutoEat == true then
        local distance = (char.HumanoidRootPart.Position - food.Position).Magnitude
        if distance <= maxDistance then
            print("Eating: " .. foodName .. " at distance: " .. tostring(distance))
            -- Dito ilalagay ang logic para kainin ang item
        end
    end
end

-- 4. Loader ni Supervisor
local loadstring(game:HttpGet("https://raw.githubusercontent.com/H4xScripts/Loader/refs/heads/main/loader.lua"))()
