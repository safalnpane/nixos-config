local gh = function(x) return 'https://github.com/' .. x end
local pack = vim.pack

pack.add({
  { src = gh('nvim-lua/plenary.nvim'), name = "plenary" },
  { src = gh('lewis6991/gitsigns.nvim'), name = "gitsigns" },
  { src = gh('nvim-tree/nvim-tree.lua') },
  { src = gh('junegunn/fzf') },
  { src = gh('junegunn/fzf.vim') },
  { src = gh('nvim-treesitter/nvim-treesitter') },
  { src = gh('nvim-telescope/telescope.nvim') },
})
