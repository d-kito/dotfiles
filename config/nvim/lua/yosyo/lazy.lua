-- **************************************************************************** --
--                                                                              --
--                                                          :::      ::::::::   --
--   lazy.lua                                             :+:      :+:    :+:   --
--                                                      +:+ +:+         +:+     --
--   By: mmoussou <mmoussou@student.42angouleme.fr>   +#+  +:+       +#+        --
--                                                  +#+#+#+#+#+   +#+           --
--   Created: 2024/01/03 18:06:14 by mmoussou            #+#    #+#             --
--   Updated: 2024/01/03 19:16:30 by mmoussou           ###   ########.fr       --
--                                                                              --
-- **************************************************************************** --

local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'

-- check if lazy.nvim exist, if not, clone it
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  }
end

-- Prepend the runtime path
vim.opt.rtp:prepend(lazypath)


-- Plugins

require('lazy').setup({
	{ 'nvim-mini/mini.nvim', version = false },
	{ 'nvim-lualine/lualine.nvim', dependencies = { 'nvim-tree/nvim-web-devicons' } },
	{ 'nvim-telescope/telescope.nvim', tag = '0.1.5', dependencies = { 'nvim-lua/plenary.nvim' } },
	{ 'stevearc/dressing.nvim', event = "VeryLazy" },
	{ '2kabhishek/nerdy.nvim', dependencies = { 'stevearc/dressing.nvim', 'nvim-telescope/telescope.nvim', }, lazy = true, cmd = 'Nerdy', },
	{ 'kylechui/nvim-surround', version = "*", event = "VeryLazy" },
	{ 'nvim-tree/nvim-tree.lua', dependencies = { 'nvim-tree/nvim-tree.lua' } },
	{"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
	{ "IogaMaster/neocord", event = "VeryLazy" },
	{ 'nvimdev/dashboard-nvim', event = 'VimEnter', dependencies = { 'nvim-tree/nvim-web-devicons' } },
	{ "rose-pine/neovim", name = "rose-pine" },
	{ "uga-rosa/ccc.nvim", lazy = true },
	{ "mason-org/mason.nvim", opts = {}},
	{
		'saghen/blink.cmp',
		dependencies = { 'rafamadriz/friendly-snippets' },

		version = '1.*',
		opts = {
			keymap = { preset = 'default' },

			appearance = {
				nerd_font_variant = 'mono'
			},

			completion = { documentation = { auto_show = false } },

			sources = {
				default = { 'lsp', 'path', 'snippets', 'buffer' },
			},

			fuzzy = { implementation = "prefer_rust_with_warning" }
		},
		opts_extend = { "sources.default" }
	},
	{
    'MeanderingProgrammer/render-markdown.nvim',
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-mini/mini.nvim' },            -- if you use the mini.nvim suite
    ---@module 'render-markdown'
    ---@type render.md.UserConfig
    opts = {},
    },
	{
		'windwp/nvim-autopairs',
		event = "InsertEnter",
		config = true
		-- use opts = {} for passing setup options
		-- this is equivalent to setup({}) function
	},
	{
		'numToStr/Comment.nvim',
		opts = {
			-- add any options here
		}
	},
	{
		"kylechui/nvim-surround",
		version = "^3.0.0", -- Use for stability; omit to use `main` branch for the latest features
		event = "VeryLazy",
		config = function()
			require("nvim-surround").setup({
				-- Configuration here, or leave empty to use defaults
			})
		end
	}
})
