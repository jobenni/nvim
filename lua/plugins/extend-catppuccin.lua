return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      flavour = "mocha",
      transparent_background = false,
      no_italic = false,
      no_bold = false,
      no_underline = false,
      float = {
        transparent = true,
        solid = false,
      },
      dim_inactive = {
        enabled = true,
        shade = "light",
        percentage = 0.5,
      },
      integrations = {
        blink_cmp = true,
      },
    },
  },
}
