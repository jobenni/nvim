return {
  {
    "saghen/blink.cmp",
    opts = {
      default = { "i18n", "lsp", "path", "buffer" },
      appearance = {
        -- set to 'mono' for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
        -- adjusts spacing to ensure icons are aligned
        nerd_font_variant = "normal",
      },
      completion = {
        list = {
          selection = {
            preselect = false,
          },
        },
      },
      sources = {
        default = { "i18n", "snippets", "lsp", "path", "buffer" },
        providers = {
          i18n = {
            name = "i18n",
            module = "i18n.integration.blink_source",
            opts = {
              -- future options can be added here
            },
          },
        },
      },
    },
  },
}
