-- ************************************************************************** --
--                                                                            --
--                                                        :::      ::::::::   --
--   dashboard.lua                                      :+:      :+:    :+:   --
--                                                    +:+ +:+         +:+     --
--   By: mmoussou <mmoussou@student.42angouleme.fr  +#+  +:+       +#+        --
--                                                +#+#+#+#+#+   +#+           --
--   Created: 2024/01/03 22:45:48 by mmoussou          #+#    #+#             --
--   Updated: 2024/01/05 23:54:45 by mmoussou         ###   ########.fr       --
--                                                                            --
-- ************************************************************************** --

-- vim.cmd([[hi Red ctermfg=1 ctermbg=NONE]])
-- vim.cmd([[hi Gray ctermfg=8 ctermbg=NONE cterm=bold]])
-- vim.cmd([[hi def link DashboardHeader Red]])
-- vim.cmd([[hi def link DashboardFooter Gray]])

require('dashboard').setup({
	theme = 'doom',
	config = {
		header = { [[]],[[]],[[]],[[]],[[]],[[]],[[]],[[]],[[]],[[]],[[]],
		[[██████╗  █████╗ ██╗  ██╗      ██╗   ██╗██╗███╗   ███╗]],
		[[██╔══██╗██╔══██╗██║ ██╔╝      ██║   ██║██║████╗ ████║]],
		[[██║  ██║███████║█████═╝ █████╗╚██╗ ██╔╝██║██╔████╔██║]],
		[[██║  ██║██╔══██║██╔═██╗ ╚════╝ ╚████╔╝ ██║██║╚██╔╝██║]],
		[[██████╔╝██║  ██║██║ ╚██╗        ╚██╔╝  ██║██║ ╚═╝ ██║]],
		[[╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝         ╚═╝   ╚═╝╚═╝     ╚═╝]],
		[[]],[[]],[[]],[[]], [[]], [[]]},
		center = {
			{
				icon = ' ',
				icon_hl = 'String',
				desc = 'Restore last session',
				key = 'r',
				key_hl = 'String',
				key_format = ' %s',
				action = 'source ~/.vim_session'
			},
			{
				icon = ' ',
				icon_hl = 'String',
				desc = 'Recents files',
				key = 'l',
				key_hl = 'String',
				key_format = ' %s',
				action = 'Telescope oldfiles'
			},
			{
				icon = '󰊢 ',
				icon_hl = 'String',
				desc = 'Search in git repo',
				key = 'f',
				key_hl = 'String',
				key_format = ' %s',
				action = ':Telescope git_files'
			},
			{
				icon = ' ',
				icon_hl = 'String',
				desc = 'New file',
				key = 'n',
				key_hl = 'String',
				key_format = ' %s',
				action = 'ene'
			},
			{
				icon = ' ',
				icon_hl = 'String',
				desc = 'Plugins menu',
				key = 'm',
				key_hl = 'String',
				key_format = ' %s',
				action = 'Lazy'
			},
			{
				icon = '󰗼 ',
				icon_hl = 'String',
				desc = 'Quit',
				key = 'q',
				key_hl = 'String',
				key_format = ' %s',
				action = 'qa'
			},
		},
		footer = { '', '', '', '', "If it works don't touch it", '', '', '', '', '', '', '', '', '', '', '', '', '', '', '' },
	}
})
