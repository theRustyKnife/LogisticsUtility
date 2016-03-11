require("prototypes.config")

sign_entities = {}

sign_entity = {
    type = "tree",
    name = "sign",
    icon = "__LogisticsUtility__/graphics/icons/sign-icon.png",
    flags = {"placeable-neutral"},
    minable =
    {
        mining_time = 1,
        result = "sign",
        count = 1
    },
    max_health = 40,
    collision_mask={},
    collision_box = {{-0.9, -1.0}, {0.9, 0.5}},
    selection_box = {{-1.0, -1.0}, {1.0, 0.5}},
    vehicle_impact_sound =  { filename = "__base__/sound/car-wood-impact.ogg", volume = 1.0 },
    pictures =
    {
      filename = "__LogisticsUtility__/graphics/entity/sign.png",
      priority = "extra-high",
      width = 80,
      height = 60
    }
}

table.insert(sign_entities, sign_entity)

----- ASCII FONTS
for i = FIRSTASCII, LASTASCII do

	letter = {
		type = "decorative",
		name = "ascii" .. i,
		flags = {"placeable-off-grid", "not-on-map"},
		selectable_in_game = false,
		render_layer = "higher-object-above",
		pictures =
		{
			filename = "__LogisticsUtility__/graphics/entity/fonts.png",
			priority = "medium",
			x = (i - FIRSTASCII) * FONT_WIDTH % FONTSHEET_WIDTH,
			y = math.floor((i - FIRSTASCII) * FONT_WIDTH / FONTSHEET_WIDTH) * FONT_HEIGHT,
			scale = FONT_SCALE,
			width = FONT_WIDTH,
			height = FONT_HEIGHT
		}
	}

	table.insert(sign_entities, letter)
end

data:extend(sign_entities)
