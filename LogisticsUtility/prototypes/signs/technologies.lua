data:extend({
  {
      type = "technology",
      name = "signs",
      icon = "__LogisticsUtility__/graphics/signs/utilities-subgroup.png",
      effects =
      {
        {
            type = "unlock-recipe",
            recipe = "util-sign"
        },
        {
            type = "unlock-recipe",
            recipe = "util-sign-small"
        },
        {
            type = "unlock-recipe",
            recipe = "util-sign-large"
        }
      },
      unit =
      {
        count = 5,
        ingredients =
        {
          {"science-pack-1", 5},
        },
        time = 10
      }
  }
})
