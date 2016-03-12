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
   
for _,icon in pairs(SIGN_TABLE) do
   sign = {
      type = "tree",
      name = "sign-"..icon,
      icon = "__LogisticsUtility__/graphics/icons/sign-"..icon.."-icon.png",
      flags = {"placeable-neutral"},
      minable = {
	 mining_time = 1,
	 result = "sign-"..icon,
	 count = 1
      },
      max_health = 40,
      collision_mask={},
      collision_box = {{-1.2, -1.0}, {0.2, 0.4}},
      selection_box = {{-1.3, -1.1}, {0.3, 0.4}},
      vehicle_impact_sound = { filename = "__base__/sound/car-wood-impact.ogg", volume = 1.0 },
      pictures = {
	 {
	    filename = "__LogisticsUtility__/graphics/entity/sign-"..icon..".png",
	    priority = "extra-high",
	    width = 40,
	    height = 60,
	    shift = {-0.5, 0.0}
	 }
      }
   }
   table.insert(sign_entities, sign)
end

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
