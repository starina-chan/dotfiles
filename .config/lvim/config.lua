-- Line number
vim.opt.number = true
vim.opt.relativenumber = true

-- Indentation
lvim.builtin.treesitter.indent.enable = false
-- vim.opt.expandtab = true
-- vim.opt.tabstop = 4
-- vim.opt.softtabstop = 4
-- vim.opt.shiftwidth = 4

-- Format on save
lvim.format_on_save.enabled = true

-- Disable reinstallation of default LSPs
lvim.lsp.installer.setup.automatic_installation = false
