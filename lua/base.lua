vim.g.mapleader = " "

local opts = {
	autoindent = true,
	autoread = true,
	background = "dark",
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
	winblend = 0,
	pumblend = 5,
}

for k, v in pairs(opts) do
	vim.opt[k] = v
end

vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

require("nightfox").setup({
	options = {
		transparent = true,
	},
})

vim.cmd([[
  filetype on
  filetype plugin on
  syntax on
  syntax enable

  colorscheme terafox

  let s:clip = '/mnt/c/Windows/System32/clip.exe'  " change this path according to your mount point
  if executable(s:clip)
     augroup WSLYank
          autocmd!
          autocmd TextYankPost * if v:event.operator ==# 'y' | call system(s:clip, @0) | endif
     augroup END
  endif
]])
