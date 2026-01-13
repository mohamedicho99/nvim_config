return {
  {
    "williamboman/mason.nvim",
    opts = {}, -- This automatically runs require("mason").setup()
  },
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      -- This will automatically download the servers you were missing
      ensure_installed = { "clangd", "ts_ls", "pyright" },
    },
  },
}
