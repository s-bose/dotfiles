require("nvchad.configs.lspconfig").defaults()

local servers = {
  "html",
  "cssls",
  "ruff",
  "gopls",
  "clangd",
  "rust_analyzer",
  "prettierd",
  "pyright"
}

vim.lsp.config("pyright", {
  settings = {
    pyright = {
      -- Using Ruff's import organizer
      disableOrganizeImports = true,
    },
    python = {
      analysis = {
        -- Ignore all files for analysis to exclusively use Ruff for linting
        ignore = { '*' },
      },
    },
  },
})

vim.lsp.enable(servers)
vim.lsp.buf.format{ async = true }
-- read :h vim.lsp.config for changing options of lsp servers
