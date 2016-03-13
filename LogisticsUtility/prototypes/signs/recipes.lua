sign_recipes = {}

sign_recipe =  {
    type = "recipe",
    name = "sign",
    enabled = true,
    ingredients =
    {
      {"raw-wood", 1},
      {"wood", 2},
      {"coal", 1},
    },
    result = "sign"
}
table.insert(sign_recipes, sign_recipe);

--[[
sign_notice_recipe =  {
    type = "recipe",
    name = "sign-notice",
    enabled = true,
    ingredients =
    {
      {"raw-wood", 1},
      {"wood", 1},
      {"coal", 1},
    },
    result = "sign-notice"
}
table.insert(sign_recipes, sign_notice_recipe);
--]]
   
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
      result = "sign-"..icon
   }
   table.insert(sign_recipes, sign);
end

data:extend(sign_recipes)
