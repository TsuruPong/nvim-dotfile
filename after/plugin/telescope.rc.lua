local status, telescope = pcall(require, "telescope")
if (not status) then return end

--Keymaps
vim.keymap.set('n', '<space>fb', ':Telescope file_browser', { noremap = true })
vim.keymap.set('n', '<space>lg', ':Telescope live_grep', { noremap = true })

local fb_actions = require "telescope".extensions.file_browser.actions
local actions = require("telescope.actions")
local builtin = require("telescope.builtin")

telescope.setup {
	defaults = {
		initial_mode = "normal",
		mappings = {
			n = {
				["q"] = actions.close
			},
		},
	},
	extensions = {
		file_browser = {
			theme = "ivy",
			hijack_netrw = true,
			mappings = {
				i = {
					["<C-w>"] = function() vim.cmd('normal vbd') end,
				},
				n = {
					["<C-n>"] = fb_actions.create,
					["<C-d>"] = fb_actions.remove,
					["<C-r>"] = fb_actions.rename,
					["<C-y>"] = fb_actions.copy
				},
			},
		},
	},
}

telescope.load_extension("file_browser")
