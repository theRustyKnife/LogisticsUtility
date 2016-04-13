data:extend({
    {
        -- create new inventory tab and set icon
        type = "item-group",
        name = "color-mod",
        order = "z",
        inventory_order = "z",
        icon = "__LogisticsColoring__/graphics/sub-group-icon.png",
    },
    {
        -- row for colored belts
        type = "item-subgroup",
        name = "colored-belts",
        group = "color-mod",
        order = "l",
    }
})
