-- Neovim extensions
-- General
require("configuration.settings")
require("configuration.keymap")
require("lua-plugins.plugins")

if vim.g.vscode then
  -- VSCode extensions
  require("vscode")
else

  -- Plugins
  require("plugins-config.nvim-tree")
  require("plugins-config.lualine")
  -- require("plugins-config.bufferline")
  require("plugins-config.barbar")
  require('plugins-config.autopairs')
  require('plugins-config.autotag')
  require("plugins-config.treesitter")
  -- require("plugins-config.nvim-yati")
  require("plugins-config.pdf-preview")
  require("plugins-config.comment")
  require("plugins-config.colorizer")
  require("plugins-config.dashboard")
  require("plugins-config.blankline")
  require("plugins-config.telescope")
  require("plugins-config.gitsigns")
  require("plugins-config.cmp")
  require("plugins-config.lsp")
  require("plugins-config.hop")
  -- Themes
  require("themes.nightfox")
end










