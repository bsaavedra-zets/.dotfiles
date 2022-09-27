require'nvim-treesitter.configs'.setup {
  ensure_installed = "all",
  sync_install = false,
  auto_install = true,

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  -- autotag = {
  --   enable = true,
  --   filetypes = {
  --     "html", "xml", "htmldjango"
  --   }
  -- },
  autopairs = {
    enable = true,
  },
  indent = {
    enable = false,
  },
  rainbow = {
    enable = true,
    extended_mode = true,
  },
  playground = {
    enable = true,
  }

}

