return {
		
    {
        'ellisonleao/gruvbox.nvim',
        priority = 1000,
        config = function()
            vim.cmd('colorscheme gruvbox')
        end
    },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = {
            "nvim-tree/nvim-web-devicons"
        },
        config = function()
            require("lualine").setup({
                icons_enabled = true,
                theme = 'gruvbox',
            })
        end
    }
}


   -- { 'williamboman/mason.nvim' },

	-- { 'williamboman/mason-lspconfig.nvim' },

    -- { 
    --     'nvim-telescope/telescope.nvim',
    --     dependencies = { 'nvim-lua/plenary.nvim' } 
    -- },

	-- {
	-- 	'folke/trouble.nvim',
	-- 	config = function()
	-- 		require('trouble').setup {
	-- 			icons = true, --false,
    --     		-- your configuration comes here
    --     		-- or leave it empty to use the default settings
    --     		-- refer to the configuration section below
	-- 		}
	-- 	end
	-- },

	-- {
    --     'nvim-treesitter/nvim-treesitter',
    --     build = ':TSUpdate',
    -- },
	
	-- { 'nvim-treesitter/playground' },

	-- { 'theprimeagen/harpoon' },

	-- { 'theprimeagen/refactoring.nvim' },

	-- { 'mbbill/undotree' },

	-- { 'tpope/vim-fugitive' },
	
	-- { 'nvim-treesitter/nvim-treesitter-context' },

	-- {
	-- 	'VonHeikemen/lsp-zero.nvim',
	-- 	dependencies = {
	-- 		-- LSP Support
	-- 		{ 'neovim/nvim-lspconfig' },
	-- 		{ 'williamboman/mason.nvim' },
	-- 		{ 'williamboman/mason-lspconfig.nvim' },

	-- 		-- Autocompletion
	-- 		{ 'hrsh7th/nvim-cmp' },
	-- 		{ 'hrsh7th/cmp-buffer' },
	-- 		{ 'hrsh7th/cmp-path' },
	-- 		{ 'saadparwaiz1/cmp_luasnip' },
	-- 		{ 'hrsh7th/cmp-nvim-lsp' },
	-- 		{ 'hrsh7th/cmp-nvim-lua' },

	-- 		-- Snippets
	-- 		{ 'L3MON4D3/LuaSnip' },
	-- 		{ 'rafamadriz/friendly-snippets' },
	-- 	}
	-- },

	-- { 'folke/zen-mode.nvim' },
	-- { 'eandrju/cellular-automaton.nvim' },
	-- { 'laytan/cloak.nvim' },














    -- {
    --     "numToStr/Comment.nvim",
    --     config = function()
    --         require("Comment").setup()
    --     end
    -- },
    --
    -- "neovim/nvim-lspconfig",
    --
    -- 'folke/neodev.nvim', -- new
    --
    -- {
    --     'hrsh7th/nvim-cmp',
    --     dependencies = {
    --         'L3MON4D3/LuaSnip',
    --         'saadparwaiz1/cmp_luasnip',
    --         'rafamadriz/friendly-snippets',
    --         
    --         'hrsh7th/cmp-nvim-lsp',
    --         
    --     },
    -- },
    --
    -- {
    --     'nvim-telescope/telescope-fzf-native.nvim',
    --     build = 'make',
    -- },
    --
