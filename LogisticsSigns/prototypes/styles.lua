for i, icon in pairs(ICONS) do
  for _, fluid in pairs(data.raw[icon]) do
    data.raw["gui-style"].default["icon-notice-" .. fluid.name] =
    {
        type = "button_style",
        parent = "button_style",
        width = 32,
        height = 32,
        top_padding = 0,
        right_padding = 0,
        bottom_padding = 0,
        left_padding = 0,
        font = "default-button",
        default_font_color = {r=0.92, g=0.92, b=0.92},
        default_graphical_set =
        {
            type = "monolith",
            monolith_image =
            {
                filename = fluid.icon,
                priority = "extra-high-no-scale",
                width = 32,
                height = 32,
                x = 0
            }
        },
        hovered_graphical_set =
        {
            type = "monolith",
            monolith_image =
            {
                filename = fluid.icon,
                priority = "extra-high-no-scale",
                width = 32,
                height = 32,
                x = 0
            }
        },
        clicked_graphical_set =
        {
            type = "monolith",
            monolith_image =
            {
                filename = fluid.icon,
                width = 32,
                height = 32,
                x = 0
            }
        }
    }
  end
end
