-- Disable netrw before the plugin starts
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

---@type nvim_tree.config
local config = {
  git = {
    enable = true,
    ignore = false,
  },
  renderer = {
    icons = {
      show = {
        file = false,
        folder = false,
        folder_arrow = false,
        git = false,
      }
    }
  }
}

require('nvim-tree').setup(config)
