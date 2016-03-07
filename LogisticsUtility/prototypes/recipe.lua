require("prototypes.config")

belt_recipes = {}

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
	table.insert(belt_recipes,belt)
end

data:extend(belt_recipes)