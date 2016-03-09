require("prototypes.config")
require("prototypes.transport-belt-pictures")

belt_entities = {}

for color,rgb in pairs(COLOR_TABLE) do
	belt = util.table.deepcopy(data.raw["transport-belt"]["basic-transport-belt"])
	belt.name = "basic-transport-belt-"..color
	belt.icon = "__LogisticsUtility__/graphics/icons/basic-transport-belt-"..color..".png"

	belt.belt_horizontal =
	{
	 layers =
	 {
	  {
	   filename = "__LogisticsUtility__/graphics/entity/basic-transport-belt.png",
	   priority = "extra-high",
	   width = 40,
	   height = 40,
	   frame_count = 16
	  },
	  {
	    filename = "__LogisticsUtility__/graphics/entity/colored-transport-belt-tint.png",
	    width = 40,
	    height = 40,
	    frame_count = 16,
	    tint = rgb,
	  }
	 }
	}
    belt.belt_vertical =
	{
	 layers =
	 {
	  {
       filename = "__LogisticsUtility__/graphics/entity/basic-transport-belt.png",
       priority = "extra-high",
       width = 40,
       height = 40,
       frame_count = 16,
       y = 40
      },
  	 {
	   filename = "__LogisticsUtility__/graphics/entity/colored-transport-belt-tint.png",
	   width = 40,
	   height = 40,
	   frame_count = 16,
	   y = 40,
	   tint = rgb,
	  }
     }
	}
  belt.ending_top = colored_belt_ending_top
  belt.ending_bottom = colored_belt_ending_bottom
  belt.ending_side =  colored_belt_ending_side
  belt.starting_top = colored_belt_starting_top
  belt.starting_bottom = colored_belt_starting_bottom
  belt.starting_side = colored_belt_starting_side
  belt.ending_patch = ending_patch_prototype

	table.insert(belt_entities,belt)
end

data:extend(belt_entities)
