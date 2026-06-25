-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.g.rustaceanvim = {
  server = {
    settings = {
      ["rust-analyzer"] = {
        cargo = {
          buildScripts = {
            enable = true,
          },
          targetDir = true,
        },
        procMacro = {
          enable = true,
        },
      },
    },
  },
}

-- Ruby dev
vim.g.lazyvim_ruby_lsp = "ruby_lsp"
