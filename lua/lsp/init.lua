local mason = require("mason")

if not mason then
	return
end

mason.setup({ ui = { border = "rounded" } })

local m = require("mason-lspconfig")

if not m then
	return
end

local lspconfig = require("lspconfig")

if not lspconfig then
	return
end

m.setup({
	ensure_installed = {
		"sumneko_lua",
		"emmet_ls",
		"clangd",
		"html",
		"cssmodules_ls",
		"cssls",
		"tailwindcss",
		"bashls",
		"yamlls",
		"prismals",
		"jsonls",
		"tsserver",
		"eslint",
		"graphql",
	},
})

require("lsp.config")

local cmp_nvim_lsp = require("cmp_nvim_lsp")

if not cmp_nvim_lsp then
	return
end

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = cmp_nvim_lsp.update_capabilities(capabilities)

local on_attach = require("lsp.on-attach").on_attach
local typescript = require("typescript")

if not typescript then
	return
end

m.setup_handlers({
	function(server_name)
		require("lspconfig")[server_name].setup({})
	end,
	["tsserver"] = function()
		typescript.setup({ server = opts })
		lspconfig.tsserver.setup({
			on_attach = on_attach,
			filetypes = { "typescript", "typescriptreact", "typescript.tsx" },
			cmd = { "typescript-language-server", "--stdio" },
			capabilities = capabilities,
		})
	end,
	["tailwindcss"] = function()
		lspconfig.tailwindcss.setup({
			on_attach = on_attach,
			capabilities = capabilities,
		})
	end,
	["cssls"] = function()
		lspconfig.cssls.setup({
			on_attach = on_attach,
			capabilities = capabilities,
		})
	end,
	["clangd"] = function()
		lspconfig.clangd.setup({
			on_attach = on_attach,
			capabilities = capabilities,
		})
	end,
})
