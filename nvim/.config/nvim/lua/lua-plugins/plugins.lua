return require"packer".startup(function()
  use "wbthomason/packer.nvim" -- Have packer manage itself
  use "kyazdani42/nvim-web-devicons"
  use "kyazdani42/nvim-tree.lua"

  -- Status line
  use "romgrk/barbar.nvim"

  -- Lualine Packages
  use "nvim-lualine/lualine.nvim"
  use 'arkav/lualine-lsp-progress'

-- use {'akinsho/bufferline.nvim', tag = "v2.*"}

  use "windwp/nvim-autopairs"

  -- Hop -> easymotion
  use {
    'phaazon/hop.nvim',
    branch = 'v2', -- optional but st:rongly recommended
    config = function()
    -- you can configure Hop the way you like here; see :h hop-config
    require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
    end
  }


  -- Pdf Preview
  use {
    'marioortizmanero/adoc-pdf-live.nvim',
    config = "require('adoc_pdf_live').setup()"
  }

  -- Plugins para identacion de lenguajes no soportados por Treesitter
  use "yioneko/nvim-yati"

  -- Plugins Colorizer Treesitter
  use {
   "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
  }
  use "p00f/nvim-ts-rainbow"
  use "nvim-treesitter/playground"

  -- Git
  use "lewis6991/gitsigns.nvim"


  use "terrortylor/nvim-comment"
  use "norcalli/nvim-colorizer.lua"
  use "lukas-reineke/indent-blankline.nvim"
  -- use "windwp/nvim-ts-autotag"
  use "glepnir/dashboard-nvim"
  use "alvan/vim-closetag"
  --
  -- -- Notify
  use "rcarriga/nvim-notify"
  --
  -- -- Completition
  use "hrsh7th/nvim-cmp" -- The completion plugin
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/cmp-path"
  use "hrsh7th/cmp-cmdline"
  use "hrsh7th/cmp-nvim-lua"
  use "hrsh7th/cmp-nvim-lsp" -- LSP source for nvim-cmp
  use "saadparwaiz1/cmp_luasnip" -- snippet completions
  use "David-Kunz/cmp-npm"
  --
  -- -- Telescope
  use {
   'nvim-telescope/telescope.nvim', tag = '0.1.0',
   requires = { {'nvim-lua/plenary.nvim'} }
  }

  --  
  -- Coc
  -- use {'neoclide/coc.nvim', branch = 'release'}
  -- -- LSP
  use "neovim/nvim-lspconfig"
  -- use "williamboman/nvim-lsp-installer"
  --
  -- -- Snippets
  use "L3MON4D3/LuaSnip" -- Snippets plugi
  use "rafamadriz/friendly-snippets"
  --
  -- -- Themes
  use "EdenEast/nightfox.nvim"
  use "folke/tokyonight.nvim"


  --Games
  use { "alec-gibson/nvim-tetris" }
end)
