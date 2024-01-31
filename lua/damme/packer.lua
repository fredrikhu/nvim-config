-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.5',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	--  use({
		--	  'rose-pine/neovim',
		--	  as = 'rose-pine',
		--	  config = function()
			--		  vim.cmd('colorscheme rose-pine')
			--	  end 
			--  })

	use 'folke/tokyonight.nvim'

	use { 
		'nvim-treesitter/nvim-treesitter',
		{ run = ':TSUpdate' }
	}

	use('mbbill/undotree')
	use('tpope/vim-fugitive')

	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v3.x',
		requires = {
			--- Uncomment the two plugins below if you want to manage the language servers from neovim
			-- {'williamboman/mason.nvim'},
			-- {'williamboman/mason-lspconfig.nvim'},

			-- LSP Support
			{'neovim/nvim-lspconfig'},
			-- Autocompletion
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-nvim-lsp'},
--			{'saadparwaiz1/cmp_luasnip'},
--			{'williamboman/mason.nvim'},
--			{'williamboman/mason-lspconfig.nvim'},
--			{'hrsh7th/cmp-buffer'},
--			{'hrsh7th/cmp-path'},
--			{'hrsh7th/cmp-nvim-lua'},
--			{'saadparwaiz1/cmp_luasnip'},
--			{'rafamadriz/friendly-snippets'},
			{'L3MON4D3/LuaSnip'},
			{'razzmatazz/csharp-language-server'}
		}
	}

	use({
		"utilyre/barbecue.nvim",
		tag = "*",
		requires = {
			"SmiteshP/nvim-navic",
			"nvim-tree/nvim-web-devicons", -- optional dependency
		},
		after = "nvim-web-devicons", -- keep this if you're using NvChad
		config = function()
			require("barbecue").setup({
				theme = 'tokyonight'
			})
		end,
	})

	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	}

	use {
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		requires = { 
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
			-- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
		},
		config = function()
			-- If you want icons for diagnostic errors, you'll need to define them somewhere:
			vim.fn.sign_define("DiagnosticSignError",
			{text = " ", texthl = "DiagnosticSignError"})
			vim.fn.sign_define("DiagnosticSignWarn",
			{text = " ", texthl = "DiagnosticSignWarn"})
			vim.fn.sign_define("DiagnosticSignInfo",
			{text = " ", texthl = "DiagnosticSignInfo"})
			vim.fn.sign_define("DiagnosticSignHint",
			{text = "󰌵", texthl = "DiagnosticSignHint"})

			require('neo-tree').setup({
				close_if_last_window = true,
				default_component_configs =  {
					name = {
						use_git_status_colors = true
					},
					git_status = {
						symbols = {
							-- Change type
							added     = "", -- or "✚", but this is redundant info if you use git_status_colors on the name
							modified  = "", -- or "", but this is redundant info if you use git_status_colors on the name
							deleted   = "✖",-- this can only be used in the git_status source
							renamed   = "󰁕",-- this can only be used in the git_status source
							-- Status type
							untracked = "",
							ignored   = "",
							unstaged  = "󰄱",
							staged    = "",
							conflict  = "",
						}
					}
				}
			})
		end
	}

	use {
		's1n7ax/nvim-window-picker',
		tag = 'v2.*',
		config = function()
			require'window-picker'.setup()
		end,
	}

	use 'razzmatazz/csharp-language-server'
	use 'sveltejs/language-tools'
end)
