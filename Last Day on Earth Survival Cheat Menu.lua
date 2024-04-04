local cheatMenu = {
    { "Infinite Health", "setHealth" },
    { "Infinite Stamina", "setStamina" },
    { "Infinite Food", "setFood" },
    { "Infinite Water", "setWater" },
    { "Infinite Items", "setItems" },
    { "Infinite Skill Points", "setSkillPoints" },
}

function createMenu()
    for i, category in ipairs(cheatMenu) do
        local categoryTitle = category[1]
        local categoryFunc = category[2]

        local categoryMenu = gg.ui.createMenu(categoryTitle)

        for j, cheat in ipairs(getCheats(categoryFunc)) do
            local cheatTitle = cheat[1]
            local cheatAddr = cheat[2]
            local cheatValue = cheat[3]

            local cheatItem = gg.ui.addButton(categoryMenu, cheatTitle, function()
                setValue(cheatAddr, cheatValue)
            end)
        end
    end
end

function getCheats(func)
    local cheats = {
        { "Health", gg.GET_POINTER_VALUE(0x3476F38), 100 },
        { "Stamina", gg.GET_POINTER_VALUE(0x3476F3C), 100 },
        { "Food", gg.GET_POINTER_VALUE(0x3476F40), 100 },
        { "Water", gg.GET_POINTER_VALUE(0x3476F44), 100 },
        { "Items", gg.GET_POINTER_VALUE(0x3476F48), 100 },
        { "Skill Points", gg.GET_POINTER_VALUE(0x3476F4C), 100 },
    }

    local funcCheats = {}

    for i, cheat in ipairs(cheats) do
        if cheat[2] == func then
            table.insert(funcCheats, cheat)
        end
    end

    return funcCheats
end

createMenu()