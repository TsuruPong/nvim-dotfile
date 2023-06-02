local status, packer = pcall(require, "packer")
if(not status) then
	print("Packer is not installed")
	return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
	use 'wbthomason/packer.nvim'


	--Themes
	use 'nvim-lualine/lualine.nvim'
	use 'akinsho/bufferline.nvim'
	use 'EdenEast/nightfox.nvim'
	use 'kyazdani42/nvim-web-devicons'
	use {
    'svrana/neosolarized.nvim',
    requires = { 'tjdevries/colorbuddy.nvim' }
	}


	--Telescope
	use 'nvim-telescope/telescope.nvim'
	use 'nvim-telescope/telescope-file-browser.nvim'


	--Lsp
	use 'onsails/lspkind-nvim'
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'neovim/nvim-lspconfig'
	use 'jose-elias-alvarez/null-ls.nvim'
	use 'williamboman/mason.nvim'
	use 'williamboman/mason-lspconfig.nvim'
	use 'glepnir/lspsaga.nvim'


	--Lua
	use 'L3MON4D3/LuaSnip'


	--Code
	use 'windwp/nvim-autopairs'
  use {
    'nvim-treesitter/nvim-treesitter',
		run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }
	use 'windwp/nvim-ts-autotag'
	use { 'numToStr/Comment.nvim',
		requires = {
			'JoosepAlviste/nvim-ts-context-commentstring'
		}
	}


	--etc
	use 'nvim-lua/plenary.nvim' --Require to telecope-file-browser.nvim


end)
