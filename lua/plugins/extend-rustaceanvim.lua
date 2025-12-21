return {
  {
    "mrcjkb/rustaceanvim",
    opts = {
      server = {
        default_settings = {
          ["rust-analyzer"] = {
            -- checkOnSave = {
            --   command = "clippy",
            -- },
            procMacro = {
              ignored = {
                ["async-trait"] = vim.NIL,
              },
            },
            diagnostics = {
              --enable = true,
              experimental = {
                enable = true,
              },
            },
          },
        },
      },
    },
  },
}
