sign_items = {}

sign_item =  {
    type = "item",
    name = "util-sign",
    icon = "__LogisticsSigns__/graphics/icons/sign-icon.png",
    flags = {"goes-to-quickbar"},
    subgroup = "util-signs",
    order = "a[energy]-a[sign]",
    place_result = "util-sign",
    stack_size = 50
}
table.insert(sign_items, sign_item)

sign_large_item =  {
    type = "item",
    name = "util-sign-large",
    icon = "__LogisticsSigns__/graphics/icons/sign-large-metal-icon.png",
    flags = {"goes-to-quickbar"},
    subgroup = "util-signs",
    order = "a[energy]-a[sign]",
    place_result = "util-sign-large",
    stack_size = 50
}
table.insert(sign_items, sign_large_item)

sign_small_item =  {
    type = "item",
    name = "util-sign-small",
    icon = "__LogisticsSigns__/graphics/icons/sign-small-icon.png",
    flags = {"goes-to-quickbar"},
    subgroup = "util-signs",
    order = "a[energy]-a[sign]",
    place_result = "util-sign-small",
    stack_size = 50
}
table.insert(sign_items, sign_small_item)

--[[
for i, icon in pairs(ICONS) do
  for _, object in pairs(data.raw[icon]) do
  sign_small_item =  {
      type = "item",
      name = "icon-notice-" .. object.name,
      icon = object.icon,
      flags = {"goes-to-quickbar"},
      subgroup = "util-signs",
      order = "a[energy]-a[sign]",
      place_result = "icon-notice-" .. object.name,
      stack_size = 50
  }
  table.insert(sign_items, sign_small_item)
  end
end]]--

data:extend(sign_items)
