vim.g.mapleader = " "

local opts = {
	autoindent = true,
	autoread = true,
	background = "dark",
	clipboard = "unnamedplus",
	encoding = "UTF-8",
	cursorline = true,
	expandtab = true,
	foldlevel = 2,
	foldmethod = "manual",
	foldnestmax = 10,
	laststatus = 3,
	hidden = true,
	hlsearch = true,
	ignorecase = true,
	incsearch = true,
	mouse = "a",
	backup = false,
	foldenable = false,
	showmode = false,
	swapfile = false,
	writebackup = false,
	nu = true,
	rnu = true,
	shiftwidth = 2,
	smartcase = true,
	smarttab = true,
	softtabstop = 0,
  scrolloff = 10,
	tabstop = 2,
	termguicolors = true,
}

for k, v in pairs(opts) do
	vim.opt[k] = v
end

vim.cmd([[
  filetype on
  filetype plugin on
  syntax on
  syntax enable

  colorscheme ayu
  hi Normal guibg=NONE ctermbg=NONE
]])
