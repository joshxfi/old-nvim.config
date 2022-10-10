local telescope = require("telescope")

if not telescope then
	return
end

local M = {}

M.setup = function()
	telescope.setup({
		defaults = {
			prompt_prefix = "   ",
			sorting_stratey = "ascending",
			file_ignore_patterns = {
				"node_modules/",
				".git/",
				"dist/",
				"build/",
				"yarn.lock",
				"package-lock.json",
			},
		},
	})
end

return M
