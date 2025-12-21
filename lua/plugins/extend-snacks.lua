return {
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        layout = "ivy_split",
        matcher = {
          cwd_bonus = true,
          frecency = true,
          history_bonus = true,
        },
        exclude = {
          "*.pyc",
        },
        formatters = {
          file = {
            filename_first = false,
            truncate = 120,
          },
        },
      },
    },
  },
}
