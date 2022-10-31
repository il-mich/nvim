local install_path = vim.fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  packer_bootstrap = vim.fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

require('packer').startup(function(use)
	-- packer itself
	use 'wbthomason/packer.nvim'

	-- status line
	use {
		'nvim-lualine/lualine.nvim',
		requires = {'kyazdani42/nvim-web-devicons'}
	}

	-- buffer line
	use {
		'romgrk/barbar.nvim',
		requires = {'kyazdani42/nvim-web-devicons'}
	}

	-- wal colorscheme, aid and framework
	use {
		'oncomouse/lushwal.nvim',
		requires = {
			{'rktjmp/shipwright.nvim', opt = true},
			{'rktjmp/lush.nvim', opt = true}
		}
	}

	-- smarter line numbers
	use 'jeffkreeftmeijer/vim-numbertoggle'

	-- startup screen
	use 'goolord/alpha-nvim'

	-- save sessions
	use 'rmagatti/auto-session'

	-- file explorer
	use {
		'kyazdani42/nvim-tree.lua',
		requires = {'kyazdani42/nvim-web-devicons'}
	}

	-- zen mode
	use 'folke/zen-mode.nvim'

	-- better terminal
	use 'vimlab/split-term.vim'

	-- pick up indentation from file
	use 'nmac427/guess-indent.nvim'

	-- mini plugins
	use 'echasnovski/mini.nvim'

	-- discord rich presence
	use 'andweeb/presence.nvim'

	-- LSP
	use {'neovim/nvim-lspconfig'}

	-- autocompletion
	use {
		'ms-jpq/coq_nvim', branch='coq',
		run = ':COQdeps',
		requires = {
			{'ms-jpq/coq.artifacts', branch='artifacts'}
		}
	}

	-- markdown previewer
	use {
		'iamcco/markdown-preview.nvim', ft = { 'markdown' },
		run = function() vim.fn["mkdp#util#install"]() end, opt = true
	}

	-- automatically setup configuration after bootstrapping packer
	if packer_bootstrap then
		require('packer').sync()
	end
end)

