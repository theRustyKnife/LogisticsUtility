require("prototypes.config")

color_technologies = {}

fastbelt = util.table.deepcopy(data.raw["technology"]["logistics-2"])
for color,rgb in pairs(COLOR_TABLE) do
    table.insert(fastbelt.effects, { type="unlock-recipe", recipe="fast-transport-belt-"..color })
end
table.insert(color_technologies, fastbelt)

expressbelt = util.table.deepcopy(data.raw["technology"]["logistics-3"])
for color,rgb in pairs(COLOR_TABLE) do
    table.insert(expressbelt.effects, { type="unlock-recipe", recipe="express-transport-belt-"..color })
end
table.insert(color_technologies, expressbelt)

data:extend(color_technologies)
