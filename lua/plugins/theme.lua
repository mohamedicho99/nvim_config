return {
  {
    "ishan9299/nvim-solarized-lua",
    lazy = false,
    priority = 1000,
    config = function()
      -- Set to dark variant (use "light" if you prefer)
      vim.opt.background = "dark"
      vim.cmd[[colorscheme solarized]]
    end,
  },
}
