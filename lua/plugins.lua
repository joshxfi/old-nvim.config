vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")
	use("nvim-lua/plenary.nvim")
	use({
		"lewis6991/impatient.nvim",
		config = function()
			require("impatient").enable_profile()
		end,
	})
	use("EdenEast/nightfox.nvim")

	-- General
	use("tpope/vim-fugitive")
	use("tpope/vim-repeat")
	use("tpope/vim-rhubarb")
	use("tpope/vim-surround")
	use("github/copilot.vim")
	use("junegunn/gv.vim")
	use("justinmk/vim-sneak")
	use("AndrewRadev/tagalong.vim")
	use("MunifTanjim/nui.nvim")
	use("kyazdani42/nvim-web-devicons")
	use("princejoogie/tailwind-highlight.nvim")

	use({
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
		end,
	})
	use({
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup()
		end,
	})
	use({
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup()
		end,
	})
	use({
		"windwp/nvim-ts-autotag",
		config = function()
			require("nvim-ts-autotag").setup()
		end,
	})

	use({
		"nvim-lualine/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
		config = function()
			require("lualine").setup({
				options = {
					theme = "material",
				},
			})
		end,
	})
	use({
		"nvim-tree/nvim-tree.lua",
		config = function()
			require("configs.nvim-tree").setup()
		end,
	})
	use({
		"romgrk/barbar.nvim",
		requires = { "kyazdani42/nvim-web-devicons" },
	})

	use({
		"mhartington/formatter.nvim",
		config = function()
			require("configs.formatter").setup()
		end,
	})
	use({
		"nvim-treesitter/nvim-treesitter",
		config = function()
			require("configs.treesitter").setup()
		end,
		run = ":TSUpdate",
	})
	use({
		"nvim-telescope/telescope.nvim",
		config = function()
			require("configs.telescope").setup()
		end,
		requires = {
			"nvim-lua/plenary.nvim",
		},
	})

	-- LSP
	use("arkav/lualine-lsp-progress")
	use("hrsh7th/vim-vsnip")
	use("jose-elias-alvarez/null-ls.nvim")
	use("neovim/nvim-lspconfig")
	use("onsails/lspkind-nvim")
	use("jose-elias-alvarez/typescript.nvim")
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")

	use({ "hrsh7th/cmp-vsnip", requires = { "onsails/lspkind-nvim" } })
	use({
		"hrsh7th/nvim-cmp",
		config = function()
			require("configs.nvim-cmp").setup()
		end,
		requires = {
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-cmdline",
			"hrsh7th/cmp-emoji",
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-nvim-lua",
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-vsnip",
		},
	})
end)
