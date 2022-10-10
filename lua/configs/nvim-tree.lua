local nvim_tree = require("nvim-tree")

if not nvim_tree then
	return
end

local M = {}

M.setup = function()
	nvim_tree.setup({
		view = {
			width = 30,
			hide_root_folder = true,
		},
		update_focused_file = {
			enable = true,
			update_cwd = false,
			ignore_list = {},
		},
		renderer = {
			highlight_opened_files = "current",
		},
	})
end

return M
