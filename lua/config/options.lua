-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--

-- search
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.showmatch = true

-- terminal
vim.opt_global.shell = "/bin/zsh"

-- tabs
vim.opt.autoindent = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true
vim.opt.cindent = true
vim.opt.smartindent = true

vim.opt.list = true
vim.opt.listchars = {
  tab = "▸ ",
  trail = "+",
}

-- Disables automatic commenting on newline
vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "*" },
  command = "setlocal formatoptions-=c formatoptions-=r formatoptions-=o",
})

-- Highlight yanked text
local au = vim.api.nvim_create_autocmd
local ag = vim.api.nvim_create_augroup
---Highlight the texts when you yanked
au("TextYankPost", {
  group = ag("yank_highlight", {}),
  pattern = "*",
  callback = function()
    vim.highlight.on_yank({ higroup = "IncSearch", timeout = 300 })
  end,
})
