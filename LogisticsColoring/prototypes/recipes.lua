require("config")

belt_recipes = {}

--Basic transport belts colored
for color,rgb in pairs(COLOR_TABLE) do
	belt = {}
	belt.type = "recipe"
	belt.name = "transport-belt-"..color
  belt.ingredients =
  {
    {"transport-belt", 2}
  }
  belt.result = "transport-belt-"..color
  belt.result_count = 2
	table.insert(belt_recipes, belt)
end

--Fast transport belts colored
for color,rgb in pairs(COLOR_TABLE) do
	belt = {}
	belt.type = "recipe"
	belt.name = "fast-transport-belt-"..color
  belt.ingredients =
  {
    {"fast-transport-belt", 2}
  }
  belt.result = "fast-transport-belt-"..color
  belt.result_count = 2
	belt.enabled = false;
	table.insert(belt_recipes, belt)
end

--Express transport belts colored
for color,rgb in pairs(COLOR_TABLE) do
	belt = {}
	belt.type = "recipe"
	belt.name = "express-transport-belt-"..color
  belt.ingredients =
  {
    {"express-transport-belt", 2}
  }
  belt.result = "express-transport-belt-"..color
  belt.result_count = 2
	belt.enabled = false;
	table.insert(belt_recipes, belt)
end

data:extend(belt_recipes)
