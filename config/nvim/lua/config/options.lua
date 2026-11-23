-- Global Config
local opt = vim.opt

opt.mouse = "a"
opt.clipboard:append("unnamedplus")
opt.encoding = "UTF-8"
opt.backup = false
opt.writebackup = false
opt.swapfile = false
opt.autoread = true
opt.backspace = {"start", "indent", "eol"}
opt.confirm = true
opt.termguicolors = true
opt.background = "dark"
opt.number = true
opt.relativenumber = true
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.expandtab = true
opt.smartindent = true
opt.autoindent = true
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true
opt.incsearch = true
opt.signcolumn = "yes"
opt.showmatch = true
opt.cmdheight = 1
opt.completeopt = "menuone,noinsert,noselect"
opt.showmode = false
opt.splitbelow = true
opt.splitright = true
opt.winborder = 'rounded'

-- Diagnostics
vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  underline = true,
  float = {
    border = 'rounded',
    source = true,
  },
})
