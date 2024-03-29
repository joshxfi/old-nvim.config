local treesitter = require("nvim-treesitter.configs")

if not treesitter then
	return
end

local M = {}

M.setup = function()
	treesitter.setup({
		ensure_installed = {
			"bash",
			"cpp",
			"css",
			"graphql",
			"html",
			"javascript",
			"jsdoc",
			"json",
			"json5",
			"lua",
			"markdown",
			"prisma",
			"tsx",
			"typescript",
			"vim",
			"yaml",
		},
		sync_install = true,
		highlight = { enable = true, additional_vim_regex_highlighting = true },
		indent = { enable = true },
		context_commentstring = { enable = true },
		playground = {
			enable = true,
			disable = {},
			updatetime = 25,
			persist_queries = false,
			keybindings = {
				toggle_query_editor = "o",
				toggle_hl_groups = "i",
				toggle_injected_languages = "t",
				toggle_anonymous_nodes = "a",
				toggle_language_display = "I",
				focus_language = "f",
				unfocus_language = "F",
				update = "R",
				goto_node = "<cr>",
				show_help = "?",
			},
		},
	})
end

return M
