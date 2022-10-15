local formatter = require("formatter")

if not formatter then
	return
end

local util = require("formatter.util")
local M = {}

local prettier = {
	function()
		return {
			exe = "prettier",
			args = { "--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)) },
			stdin = true,
		}
	end,
}

local prismafmt = {
	function()
		return {
			exe = "~/builds/prisma-engines/target/release/prisma-fmt",
			args = { "format", "-i", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)) },
			stdin = true,
		}
	end,
}

local stylua = {
	function()
		return {
			exe = "stylua",
			args = {
				"--search-parent-directories",
				"--stdin-filepath",
				util.escape_path(util.get_current_buffer_file_path()),
				"--",
				"-",
			},
			stdin = true,
		}
	end,
}

local clang_format = {
	function()
		return {
			exe = "clang-format",
			args = { "--assume-filename", vim.api.nvim_buf_get_name(0) },
			stdin = true,
			cwd = vim.fn.expand("%:p:h"),
		}
	end,
}

M.setup = function()
	formatter.setup({
		filetype = {
			javascript = prettier,
			javascriptreact = prettier,
			typescript = prettier,
			typescriptreact = prettier,
			markdown = prettier,
			graphql = prettier,
			html = prettier,
			css = prettier,
			json = prettier,
			yaml = prettier,
			cpp = clang_format,
			lua = stylua,
			prisma = prismafmt,
		},
	})
end

return M
