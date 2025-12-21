return {
  "yelog/i18n.nvim",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "hrsh7th/nvim-cmp",
  },
  keys = {
    {
      "<leader>i",
      "",
      desc = "i18n",
    },
    {
      "<leader>iK",
      function()
        if require("i18n").show_popup() then
          return
        end

        vim.lsp.buf.signature_help()
      end,
      desc = "Show i18n translations",
    },
  },
  config = function()
    require("i18n").setup({
      show_mode = "translation",
      usage = {
        popup_type = "snacks",
      },
      i18n_keys = {
        popup_type = "snacks",
      },
      -- Locales to parse; first is the default locale
      -- Use I18nNextLocale command to switch the default locale in real time
      locales = { "fr", "en" },
      -- sources can be string or table { pattern = "...", prefix = "..." }
      sources = {
        "src/locales/{locales}.json",
        -- { pattern = "src/locales/lang/{locales}/{module}.ts",            prefix = "{module}." },
        -- { pattern = "src/views/{bu}/locales/lang/{locales}/{module}.ts", prefix = "{bu}.{module}." },
      },
    })
  end,
}
