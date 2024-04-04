-- Last Day on Earth: Survival Lua Script
-- Created by Anonymous1000

-- Cheat Menu
local cheat_menu = {
    "Critical Damage",
    "Fast Attack",
    "Fast Player",
    "High Ability Shoot",
    "No Cooldown",
    "Max Durability",
    "Finalize no parts",
    "Free Instant Craft",
    "Fast Workbench",
    "Remove All Tree & Rocks",
    "Complete Mission",
    "Stacks Amount",
    "Duplicate Single Items",
    "Map Teleport",
    "Unlock Premium",
    "Instant Level Up",
    "Unlock All Skin",
    "Freeze Enemy",
    "Fast Unlock Chest",
    "Unlimited Items",
    "No Requirement",
    "Shop Inbox (9999)"
}

-- Functions
function crit_damage()
    -- activate critical damage
end

function fast_attack()
    -- increase attack speed
end

-- ... continue with the other functions

-- Main function
function main()
    while true do
        for i, option in ipairs(cheat_menu) do
            print(i .. ". " .. option)
        end

        io.write("Enter your choice: ")
        local choice = tonumber(io.read())

        if choice == 1 then
            crit_damage()
        elseif choice == 2 then
            fast_attack()
        -- ... continue with the other choices
        else
            print("Invalid choice.")
        end
    end
end

-- Run the main function
main()