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
   
for _,icon in pairs(SIGN_TABLE) do
   sign = {
      type = "item",
      name = "sign-"..icon,
      icon = "__LogisticsUtility__/graphics/icons/sign-"..icon.."-icon.png",
      flags = {"goes-to-quickbar"},
      subgroup = "energy-pipe-distribution",
      order = "a[energy]-a[sign]",
      place_result = "sign-"..icon,
      stack_size = 50
   }
   table.insert(sign_items, sign)
end

data:extend(sign_items)
