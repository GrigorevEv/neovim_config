local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer close and reopen Neovim...")
	vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

return packer.startup(function(use)

    use({ "wbthomason/packer.nvim" })
    use({ "nvim-lua/plenary.nvim", commit = "253d34830709d690f013daf2853a9d21ad7accab" })
    use({ "windwp/nvim-autopairs", commit = "e755f366721bc9e189ddecd39554559045ac0a18" })
    use({ "terrortylor/nvim-comment", commit = "e9ac16ab056695cad6461173693069ec070d2b23"})
    use({ "moll/vim-bbye", commit = "25ef93ac5a87526111f43e5110675032dbcacf56" })
    use({ "nvim-lualine/lualine.nvim", commit = "e99d733e0213ceb8f548ae6551b04ae32e590c80" })
    -- use({ "akinsho/toggleterm.nvim", commit = "c8e982ad2739eeb0b13d0fecb14820c9bf5e3da0" })
    use({ "akinsho/toggleterm.nvim", commit = "066cccf48a43553a80a210eb3be89a15d789d6e6" })
    use({ "ahmedkhalf/project.nvim", commit = "1c2e9c93c7c85126c2197f5e770054f53b1926fb" })
    use({ "lewis6991/impatient.nvim" })
    use({ "lukas-reineke/indent-blankline.nvim", commit = "08c9b75193f8aac54eb51e8fa1f4b02cb7dd2424" })
    use({ "goolord/alpha-nvim", commit = "4e1c4dedf5983e84b3ed305228b2235c56c7023c" })
    use({ "folke/which-key.nvim", commit = "fb027738340502b556c3f43051f113bcaa7e8e63" })

    -- Not fresh all below
    use({ "kyazdani42/nvim-tree.lua", commit = "bdb6d4a25410da35bbf7ce0dbdaa8d60432bc243" })
    use({ "akinsho/bufferline.nvim" })

    -- Colorschemes
    use({ "navarasu/onedark.nvim" })

    -- cmp plugins
    use({ "hrsh7th/nvim-cmp", commit = "feed47fd1da7a1bad2c7dca456ea19c8a5a9823a" }) -- The completion plugin
    use({ "hrsh7th/cmp-buffer", commit = "62fc67a2b0205136bc3e312664624ba2ab4a9323" }) -- buffer completions
    use({ "hrsh7th/cmp-path", commit = "466b6b8270f7ba89abd59f402c73f63c7331ff6e" }) -- path completions
    use({ "hrsh7th/cmp-nvim-lsp", commit = "affe808a5c56b71630f17aa7c38e15c59fd648a8" })

    -- snippets
    use({ "L3MON4D3/LuaSnip", commit = "79b2019c68a2ff5ae4d732d50746c901dd45603a" }) --snippet engine

    -- LSP
    use({ "neovim/nvim-lspconfig" }) -- enable LSP
    use({ "jose-elias-alvarez/null-ls.nvim" }) -- for formatters and linters

    -- Telescope
    use({ "nvim-telescope/telescope.nvim" })
    use({ 'nvim-telescope/telescope-fzf-native.nvim', run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release' })
    use({ "fdschmidt93/telescope-egrepify.nvim" })

    -- Treesitter
    use({ "nvim-treesitter/nvim-treesitter", run = ':TSUpdate'})
    -- use({ "nvim-treesitter/nvim-treesitter" })

    -- Git
    use({ "tpope/vim-fugitive" })
    use({ "lewis6991/gitsigns.nvim" })
    use({ "sindrets/diffview.nvim" })
    use({ "kdheepak/lazygit.nvim" })

    -- Mirror
    use({ "zenbro/mirror.vim", commit = "fe732ee567fcd2b25191a80b7ac2a880a74ff5c6" })

    -- Smooth scrolling
    use({ "karb94/neoscroll.nvim", commit = "54c5c419f6ee2b35557b3a6a7d631724234ba97a" })

    -- Python indentation
    use({ "Vimjas/vim-python-pep8-indent", commit = "60ba5e11a61618c0344e2db190210145083c91f8" })

    -- Tagbar
    use({ "preservim/tagbar" })

    -- Colorizer
    use({ "norcalli/nvim-colorizer.lua" })

    --Devicons
    use({ "nvim-tree/nvim-web-devicons" })
    
    --Dressing
    use({ "stevearc/dressing.nvim" })

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)
