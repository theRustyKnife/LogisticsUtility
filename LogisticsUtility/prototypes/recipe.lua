require("prototypes.config")

belt_recipes = {}

--Basic transport belts colored
for color,rgb in pairs(COLOR_TABLE) do
	belt = {}
	belt.type = "recipe"
	belt.name = "basic-transport-belt-"..color
    belt.ingredients =
    {
      {"basic-transport-belt", 2}
    }
    belt.result = "basic-transport-belt-"..color
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
	table.insert(belt_recipes, belt)
end

data:extend(belt_recipes)
