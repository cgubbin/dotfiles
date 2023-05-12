return {

    {
      'nvim-telescope/telescope-fzf-native.nvim',
      build = 'make',
      cond = vim.fn.executable 'make' == 1
    },


    -- {'nvim-treesitter/nvim-treesitter', build = ':TSUpdate'},
    'nvim-treesitter/playground',
    'theprimeagen/harpoon',
    'mbbill/undotree',

    -- Git related
    'tpope/vim-fugitive',
    'tpope/vim-rhubarb',
    'lewis6991/gitsigns.nvim',

    {
        'VonHeikemen/lsp-zero.nvim',
        dependencies = {
            -- LSP Support
		    {'neovim/nvim-lspconfig'},
		    {'williamboman/mason.nvim'},
		    {'williamboman/mason-lspconfig.nvim'},

		    -- Autocompletion
		    {'hrsh7th/nvim-cmp'},
		    {'hrsh7th/cmp-buffer'},
		    {'hrsh7th/cmp-path'},
		    {'saadparwaiz1/cmp_luasnip'},
		    {'hrsh7th/cmp-nvim-lsp'},
		    {'hrsh7th/cmp-nvim-lua'},

		    -- Snippets
		    {'L3MON4D3/LuaSnip'},
		    {'rafamadriz/friendly-snippets'},

		    --   Status
		    {'j-hui/fidget.nvim'},
        }
    },

    -- Enhancements
    'ypcrts/securemodelines',
    'justinmk/vim-sneak',
    'godlygeek/tabular',

    'folke/zen-mode.nvim',
    'stevearc/dressing.nvim',
    -- ('andymass/vim-matchup'),

    -- Visual
    'lukas-reineke/indent-blankline.nvim',
    'numToStr/Comment.nvim',
    'tpope/vim-sleuth',

    {
        'folke/tokyonight.nvim',
        name = 'tokyonight',
        config = function(LazyPlugin)
            vim.cmd('colorscheme tokyonight')
        end
    },

    -- wrapping
    "andrewferrier/wrapping.nvim",

    "lervag/vimtex",
    "tpope/vim-dispatch",

    'theprimeagen/vim-be-good',
}
