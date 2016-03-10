require("prototypes.config")

color_technologies = {}

fastbelt = util.table.deepcopy(data.raw["technology"]["logistics-2"])
for color,rgb in pairs(COLOR_TABLE) do
    table.insert(fastbelt.effects, { type="unlock-recipe", recipe="fast-transport-belt-"..color })
end
table.insert(color_technologies, fastbelt)

data:extend(color_technologies)
