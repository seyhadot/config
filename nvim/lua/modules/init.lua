-- Auto install packer
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

function get_config(name)
  return string.format("require(\"config/%s\")", name)
end

return require('packer').startup(function(use)
  
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {'neoclide/coc.nvim', branch = 'release'}

  -- Common dependencies
  use {'nvim-lua/plenary.nvim'}
  use 'christianchiarulli/nvcode-color-schemes.vim'
  use 'preservim/nerdtree'

  -- Web-devicons
  use {
    'kyazdani42/nvim-web-devicons',
    config = function()
      require'nvim-web-devicons'.setup{
        default = true;
      }
    end
  }

  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    config = require 'modules.config.treesitter',
    run = ':TSUpdate'
  }

  use "nvim-treesitter/nvim-treesitter-textobjects"


  -- Galaxyline
  use {
    'glepnir/galaxyline.nvim', branch = 'main',
    config = require 'modules.config.galaxyline',
    requires = {'kyazdani42/nvim-web-devicons'}
  }

  -- Git
  use {
    'lewis6991/gitsigns.nvim',
    config = require 'modules.config.gitsigns',
    requires = {
      {'nvim-lua/plenary.nvim'}
    }
  }

  use {
    'tpope/vim-fugitive',
    cmd = {
      'Git',
      'GV'
    }
  }
  use {
    'junegunn/gv.vim',
    after = {'vim-fugitive'}
  }

  -- Auto pairs
  use {'jiangmiao/auto-pairs'}

  -- FZF
 	use {'junegunn/fzf', dir = '~/.fzf', run = './install --all' }
	use {'junegunn/fzf.vim'}

  -- Undotree
  use {'mbbill/undotree'}

  -- Auto commenting
  use {'preservim/nerdcommenter'}

  -- HEX Colors
  use {
    'norcalli/nvim-colorizer.lua',
    config = function()
      require('colorizer').setup()
    end
  }

  -- Surround parenthesis and other symbols
  use {'tpope/vim-surround'}

  -- Dashboard
  use {
    'glepnir/dashboard-nvim',
    config = require 'modules.config.dashboard'
  }

  -- LSP
  use {
    'williamboman/nvim-lsp-installer',
    config = require 'modules.config.nvim-lsp-installer',
    requires = {'neovim/nvim-lspconfig'}
  }

  use {
    'tami5/lspsaga.nvim',
    branch = 'nvim51',
    config = require 'modules.config.lspDiagnosticsSigns'
  }

  -- Polyglot for various languages syntax
  use {'sheerun/vim-polyglot'}

  -- Quickfix trouble
  use {
    'folke/trouble.nvim',
    requires = {'kyazdani42/nvim-web-devicons'},
    config = function()
      require("trouble").setup{}
    end
  }

  -- Indentation lines
  use {
    'lukas-reineke/indent-blankline.nvim',
    config = require 'modules.config.indent-blankline'
  }

  -- Whichkey
  use {
    "folke/which-key.nvim",
    config = function()
      require("which-key").setup{
        icons = {
          separator = "->"
        }
      }
    end
  }

  -- Cursor highlight
  use {'xiyaowong/nvim-cursorword'}

  -- Testing
  use {
    'vim-test/vim-test',
    cmd = {
      'TestFile',
      'TestLast',
      'TestNearest',
      'TestSuite',
      'TestVisit'
    }
  }

  -- File tree
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
    config = require 'modules.config.nvim-tree'
  }

  -- Debugging
  use {
    'mfussenegger/nvim-dap',
    config = require 'modules.config.dap'
  }
  use {
    'rcarriga/nvim-dap-ui',
    config = function()
      require ("dapui").setup{}
    end,
    requires = 'mfussenegger/nvim-dap',
  }

  -- Terminal
  use {
    "akinsho/toggleterm.nvim",
    config = function()
      require("toggleterm").setup{}
    end
  }

  -- Python formater
  use {
    'psf/black',
    ft = 'python'
  }

  -- Flutter
  use {
    'dart-lang/dart-vim-plugin',
    ft = 'dart'
  }
  use {
    'akinsho/flutter-tools.nvim',
    config = require 'modules.config.flutter-tools',
    require = {
      {'dart-lang/dart-vim-plugin'},
      {'nvim-lua/plenary.nvim'}
    },
    ft = 'dart'
  }

  -- CMP and snippets
  use {
    "hrsh7th/nvim-cmp",
    config = require 'modules.config.cmp',
    requires = {
      "hrsh7th/vim-vsnip",
      'hrsh7th/vim-vsnip-integ',
      "hrsh7th/cmp-buffer",
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-vsnip',
      'hrsh7th/cmp-calc',
      {
        'hrsh7th/cmp-emoji',
        ft = 'markdown'
      },
      'SirVer/ultisnips',
      'quangnguyen30192/cmp-nvim-ultisnips',
      'onsails/lspkind-nvim'
    }
  }

  use {
    'Nash0x7E2/awesome-flutter-snippets',
    requires = {'hrsh7th/nvim-cmp'},
    ft = 'dart'
  }

  use {
    'mlaursen/vim-react-snippets',
    requires = {'hrsh7th/nvim-cmp'},
    ft = {'javascript', 'typescript'}
  }

  use {
    'honza/vim-snippets',
    requires = {'hrsh7th/nvim-cmp'}
  }

  -- use {
  --   "mhartington/formatter.nvim",
  --   event = "BufWritePre",
  --   config = get_config("formatter")
  -- }

  use {"windwp/nvim-autopairs", config = get_config("autopairs")}
  use {
    "rafamadriz/friendly-snippets",
    module = "vim-vsnip",
    requires = {{"hrsh7th/vim-vsnip"}}
  }
  use {
    "phaazon/hop.nvim",
    branch = "v1",
    event = "BufReadPre"
  }
  use "p00f/nvim-ts-rainbow"

  use {
    "kevinhwang91/nvim-bqf",
    requires = {{"junegunn/fzf", module = "nvim-bqf"}}
  } 


  -- Personal snippets
  --use {
    --'~/.local/share/nvim/site/pack/packer/custom-snippets',
    --requires = {'hrsh7th/nvim-cmp'}
  --}

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require('packer').sync()
  end
end)

