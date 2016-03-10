require("prototypes.config")

color_items = {}

--Basic transport belts colored
for color,rgb in pairs(COLOR_TABLE) do
	belt = util.table.deepcopy(data.raw["item"]["basic-transport-belt"])
	belt.name = "basic-transport-belt-"..color
	belt.icon = "__LogisticsUtility__/graphics/icons/basic-transport-belt-"..color..".png"
	belt.place_result = "basic-transport-belt-"..color
	belt.order = "a-b-c"
	table.insert(color_items,belt)
end

--Fast transport belts colored
for color,rgb in pairs(COLOR_TABLE) do
	belt = util.table.deepcopy(data.raw["item"]["fast-transport-belt"])
	belt.name = "fast-transport-belt-"..color
	belt.icon = "__LogisticsUtility__/graphics/icons/fast-transport-belt-"..color..".png"
	belt.place_result = "fast-transport-belt-"..color
	belt.order = "a-b-c"
	table.insert(color_items,belt)
end

data:extend(color_items)
