-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- telescope is for finding files
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.0',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- rose-pine is a colour theme
  use({
	  'rose-pine/neovim',
	  as = 'rose-pine',
	  config = function()
		  vim.cmd('colorscheme rose-pine')
	  end
  })

  -- touble is: A pretty list for showing diagnostics,
  -- references, telescope results, quickfix and
  -- location lists to help you solve all the trouble
  -- your code is causing.
  use({
      "folke/trouble.nvim",
      config = function()
          require("trouble").setup {
              icons = false,
              -- your configuration comes here
              -- or leave it empty to use the default settings
              -- refer to the configuration section below
          }
      end
  })


  use({"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"})
  use("nvim-treesitter/playground")

  -- harpoon
  -- see https://github.com/ThePrimeagen/harpoon
  -- basically letting you quickly jump between files
  use("theprimeagen/harpoon")
  use("theprimeagen/refactoring.nvim")

  -- undotree
  use("mbbill/undotree")

  -- fugitive is a Git wrapper
  use("tpope/vim-fugitive")

  -- nvim-treesitter-context shows e.g.
  -- the current function name when it disappears
  -- off the top of the screen
  use("nvim-treesitter/nvim-treesitter-context");

  -- lsp-zero bundles stuff to get lsp working
--   use {
-- 	  'VonHeikemen/lsp-zero.nvim',
-- 	  branch = 'v1.x',
-- 	  requires = {
-- 		  -- LSP Support
-- 		  {'neovim/nvim-lspconfig'},
-- 		  {'williamboman/mason.nvim'},
-- 		  {'williamboman/mason-lspconfig.nvim'},
--
-- 		  -- Autocompletion
-- 		  -- {'hrsh7th/nvim-cmp'},
-- 		  -- {'hrsh7th/cmp-buffer'},
-- 		  -- {'hrsh7th/cmp-path'},
-- 		  {'hrsh7th/nvim-cmp'},
-- 		  {'hrsh7th/nvim-cmp'},
-- 		  {'hrsh7th/cmp-buffer'},
-- 		  {'hrsh7th/cmp-path'},
-- 		  {'hrsh7th/cmp-buffer'},
-- 		  {'hrsh7th/cmp-path'},
-- 		  {'saadparwaiz1/cmp_luasnip'},
-- 		  {'hrsh7th/cmp-nvim-lsp'},
-- 		  {'hrsh7th/cmp-nvim-lua'},
--
-- 		  -- Snippets
-- 		  {'L3MON4D3/LuaSnip'},
-- 		  {'rafamadriz/friendly-snippets'},
-- 	  }
--   }

  --  zen
  use("folke/zen-mode.nvim")
  use("github/copilot.vim")
  use("eandrju/cellular-automaton.nvim")
  use("laytan/cloak.nvim")


  use 'nvim-tree/nvim-web-devicons'
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional
    },
    config = function()
      require("nvim-tree").setup {}
    end
  }

  use({
    "L3MON4D3/LuaSnip",
    -- follow latest release.
    tag = "v<CurrentMajor>.*",
    -- install jsregexp (optional!:).
    run = "make install_jsregexp"
  })
  use "rafamadriz/friendly-snippets"

  use {
    "NvChad/nvterm",
    config = function ()
      require("nvterm").setup()
    end,
  }
<<<<<<< HEAD
=======
  -- Lua
  --[[
  use {
    "folke/which-key.nvim",
    config = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
      require("which-key").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  }
  --]]

>>>>>>> 6d3d57c (Removed lsp is autocomplete is annoying)
end)

