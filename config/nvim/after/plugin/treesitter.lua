-- ************************************************************************** --
--                                                                            --
--                                                        :::      ::::::::   --
--   treesitter.lua                                     :+:      :+:    :+:   --
--                                                    +:+ +:+         +:+     --
--   By: mmoussou <mmoussou@student.42angouleme.fr  +#+  +:+       +#+        --
--                                                +#+#+#+#+#+   +#+           --
--   Created: 2024/01/18 07:12:38 by mmoussou          #+#    #+#             --
--   Updated: 2024/12/08 06:22:16 by mmoussou         ###   ########.fr       --
--                                                                            --
-- ************************************************************************** --

require("nvim-treesitter.configs").setup({
	auto_install = true,
	ensure_installed = { "c", "cpp", "lua", "rust", "python", "markdown", "ruby" },
	sync_install = false,
	highlight = { enable = true },
	indent = { enable = true },
 })
