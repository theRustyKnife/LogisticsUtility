sign_recipes = {}

sign_recipe =  {
    type = "recipe",
    name = "util-sign",
    enabled = false,
    ingredients =
    {
      {"raw-wood", 2},
      {"wood", 2},
      {"coal", 1},
    },
    result = "util-sign"
}
table.insert(sign_recipes, sign_recipe);

sign_large_recipe =  {
    type = "recipe",
    name = "util-sign-large",
    enabled = false,
    ingredients =
    {
      {"steel-plate", 2},
      {"iron-plate", 4},
      {"coal", 2},
    },
    result = "util-sign-large"
}
table.insert(sign_recipes, sign_large_recipe);

sign_small_recipe =  {
    type = "recipe",
    name = "util-sign-small",
    enabled = false,
    ingredients =
    {
      {"raw-wood", 2},
      {"wood", 1},
      {"coal", 1},
    },
    result = "util-sign-small"
}
table.insert(sign_recipes, sign_small_recipe);

--[[
for i, icon in pairs(ICONS) do
    for _, object in pairs(data.raw[icon]) do
      sign_small_recipe =  {
          type = "recipe",
          name = "icon-notice-" .. object.name,
          enabled = true,
          ingredients =
          {
            {"coal", 1},
          },
          result = "icon-notice-" .. object.name
      }
      table.insert(sign_recipes, sign_small_recipe);
  end
end--]]

data:extend(sign_recipes)
