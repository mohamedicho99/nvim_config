return {
  "hrsh7th/cmp-nvim-lsp",
  config = function()
    vim.lsp.log.set_level("error")

    -- Custom hover with border
    vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
      vim.lsp.handlers.hover,
      { border = "single" }
    )

    local capabilities = require('cmp_nvim_lsp').default_capabilities()

    local lsp_keymaps = function(_, bufnr)
      local opts = { buffer = bufnr }
      vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
      vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
      vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, opts)
      vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
      vim.keymap.set("n", "<leader>df", vim.diagnostic.goto_next, opts)
      vim.keymap.set("n", "<leader>dp", vim.diagnostic.goto_prev, opts)
      vim.keymap.set("n", "<leader>dl", "<cmd>Telescope diagnostics<cr>", opts)
      vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, opts)
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
      vim.keymap.set("n", "<leader>fr", require("telescope.builtin").lsp_references, opts)
      vim.keymap.set("n", "<leader>e", function()
        vim.diagnostic.open_float(nil, {focusable = false, scope = "line", max_width = 80, border = "single"})
      end, opts)
    end

    -- Neovim 0.11+ native LSP config
    -- Safety check for edge cases (multiple instances, race conditions)
    if not vim.lsp.config then
      vim.notify("vim.lsp.config not available, skipping LSP setup", vim.log.levels.WARN)
      return
    end

    vim.lsp.config("clangd", {
      capabilities = capabilities,
      on_attach = lsp_keymaps,
      cmd = { 
        "clangd", 
        "--background-index",
        "--clang-tidy",
        "--fallback-style=WebKit" 
      },
      -- Removed hard requirement for 'build' folder to make it more flexible
      --cmd = { "clangd", "--compile-commands-dir=build" },
      root_markers = { "compile_commands.json", ".git", "Makefile", "main.c", "minilibx-linux" },
    })
    vim.lsp.enable("clangd")
--
--    vim.lsp.config("gopls", {
--      capabilities = capabilities,
--      on_attach = lsp_keymaps,
--    })
--
--    vim.lsp.config("pyright", {
--      capabilities = capabilities,
--      on_attach = lsp_keymaps,
--    })
--
--    vim.lsp.config("ts_ls", {
--      capabilities = capabilities,
--      on_attach = lsp_keymaps,
--      cmd = { "typescript-language-server", "--stdio" },
--    })
--
--    vim.lsp.config("jdtls", {
--      capabilities = capabilities,
--      on_attach = lsp_keymaps,
--    })
--
--    vim.lsp.enable({
--      "clangd",
--      "gopls",
--      "pyright",
--      "ts_ls",
--      "jdtls",
--    })
  end,
}
