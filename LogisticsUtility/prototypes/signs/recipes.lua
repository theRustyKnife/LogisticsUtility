sign_recipes = {}

sign_recipe =  {
    type = "recipe",
    name = "util-sign",
    enabled = true,
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
    enabled = true,
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
    enabled = true,
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
for _,icon in pairs(SIGN_TABLE) do
   sign = {
      type = "recipe",
      name = "sign-"..icon,
      enabled = true,
      ingredients =
	 {
	    {"raw-wood", 1},
	    {"wood", 1},
	    {"coal", 1},
	 },
      result = "util-sign-small"
   }
   table.insert(sign_recipes, sign);
end
--]]

data:extend(sign_recipes)
