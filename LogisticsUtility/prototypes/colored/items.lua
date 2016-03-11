require("prototypes.config")

colored_belts = {}

--Basic transport belts colored
for color,rgb in pairs(COLOR_TABLE) do
	belt = util.table.deepcopy(data.raw["item"]["basic-transport-belt"])
	belt.name = "basic-transport-belt-"..color
	belt.icon = "__LogisticsUtility__/graphics/icons/basic-transport-belt-"..color..".png"
	belt.place_result = "basic-transport-belt-"..color
	belt.order = "a-b-c"
	table.insert(colored_belts,belt)
end

--Fast transport belts colored
for color,rgb in pairs(COLOR_TABLE) do
	belt = util.table.deepcopy(data.raw["item"]["fast-transport-belt"])
	belt.name = "fast-transport-belt-"..color
	belt.icon = "__LogisticsUtility__/graphics/icons/fast-transport-belt-"..color..".png"
	belt.place_result = "fast-transport-belt-"..color
	belt.order = "a-b-c"
	table.insert(colored_belts,belt)
end

--Express transport belts colored
for color,rgb in pairs(COLOR_TABLE) do
	belt = util.table.deepcopy(data.raw["item"]["express-transport-belt"])
	belt.name = "express-transport-belt-"..color
	belt.icon = "__LogisticsUtility__/graphics/icons/express-transport-belt-"..color..".png"
	belt.place_result = "express-transport-belt-"..color
	belt.order = "a-b-c"
	table.insert(colored_belts,belt)
end

data:extend(colored_belts)
