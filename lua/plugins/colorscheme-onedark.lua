return {
  "navarasu/onedark.nvim",
  priority = 1001,
  opts = {
    style = "cool",
  },
  init = function()
    -- Load the colorscheme here.
    vim.cmd.colorscheme("onedark")
  end,
}
