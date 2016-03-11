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

data:extend(sign_recipes)
