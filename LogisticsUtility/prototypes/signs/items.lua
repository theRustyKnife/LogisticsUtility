sign_items = {}

sign_item =  {
    type = "item",
    name = "sign",
    icon = "__LogisticsUtility__/graphics/icons/sign-icon.png",
    flags = {"goes-to-quickbar"},
    subgroup = "energy-pipe-distribution",
    order = "a[energy]-a[sign]",
    place_result = "sign",
    stack_size = 50
}

table.insert(sign_items, sign_item)

data:extend(sign_items)
