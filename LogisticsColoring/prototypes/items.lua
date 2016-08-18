require("config")

colored_belts = {}

--Basic transport belts colored
for color,rgb in pairs(COLOR_TABLE) do
	belt = util.table.deepcopy(data.raw["item"]["transport-belt"])
	belt.name = "transport-belt-"..color
	belt.icon = "__LogisticsColoring__/graphics/icons/basic-transport-belt-"..color..".png"
	belt.place_result = "transport-belt-"..color
  belt.subgroup = "colored-belts";
	belt.order = "a-b-c"
	table.insert(colored_belts,belt)
end

--Fast transport belts colored
for color,rgb in pairs(COLOR_TABLE) do
	belt = util.table.deepcopy(data.raw["item"]["fast-transport-belt"])
	belt.name = "fast-transport-belt-"..color
	belt.icon = "__LogisticsColoring__/graphics/icons/fast-transport-belt-"..color..".png"
	belt.place_result = "fast-transport-belt-"..color
	belt.subgroup = "colored-belts";
	belt.order = "a-b-c"
	table.insert(colored_belts,belt)
end

--Express transport belts colored
for color,rgb in pairs(COLOR_TABLE) do
	belt = util.table.deepcopy(data.raw["item"]["express-transport-belt"])
	belt.name = "express-transport-belt-"..color
	belt.icon = "__LogisticsColoring__/graphics/icons/express-transport-belt-"..color..".png"
	belt.place_result = "express-transport-belt-"..color
	belt.subgroup = "colored-belts";
	belt.order = "a-b-c"
	table.insert(colored_belts,belt)
end

data:extend(colored_belts)
