-- **************************************************************************** --
--                                                                              --
--                                                          :::      ::::::::   --
--   init.lua                                             :+:      :+:    :+:   --
--                                                      +:+ +:+         +:+     --
--   By: mmoussou <mmoussou@student.42angouleme.fr>   +#+  +:+       +#+        --
--                                                  +#+#+#+#+#+   +#+           --
--   Created: 2024/01/03 18:06:10 by mmoussou            #+#    #+#             --
--   Updated: 2024/01/03 19:29:48 by mmoussou           ###   ########.fr       --
--                                                                              --
-- **************************************************************************** --

require('yosyo.lazy')

vim.o.background = "dark"
vim.cmd("colorscheme rose-pine")

-- disable netrw (for nvim-tree)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
-- vim.opt.termguicolors = true
vim.o.termguicolors = true

-- enable mouse support
vim.o.mouse = 'a'

-- line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

vim.o.cursorline = true
vim.o.cursorlineopt = "number"

vim.api.nvim_set_hl(0,"DashboardHeader", { fg = "#eb6f92"})

-- indentation
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.smartindent = true

-- Case-insensitive searching UNLESS \C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

vim.cmd([[highlight SignColumn ctermbg=None]])

vim.cmd([[autocmd VimLeave * mksession! ~/.vim_session]])
