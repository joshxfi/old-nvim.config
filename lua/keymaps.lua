local keymap = vim.keymap

-- General
keymap.set("i", "jj", "<Esc>")
keymap.set("n", "<C-n>", ":noh<CR>")
keymap.set("n", "<C-b>", ":NvimTreeToggle<CR>")

-- Format
keymap.set("n", "<leader>p", ":Format<CR>")

-- Barbar
keymap.set("n", "<leader>0", ":BufferLast<CR>")
keymap.set("n", "<leader>1", ":BufferGoto 1<CR>")
keymap.set("n", "<leader>2", ":BufferGoto 2<CR>")

keymap.set("n", "<leader>3", ":BufferGoto 3<CR>")
keymap.set("n", "<leader>4", ":BufferGoto 4<CR>")
keymap.set("n", "<leader>5", ":BufferGoto 5<CR>")
keymap.set("n", "<leader>6", ":BufferGoto 6<CR>")
keymap.set("n", "<leader>7", ":BufferGoto 7<CR>")
keymap.set("n", "<leader>8", ":BufferGoto 8<CR>")
keymap.set("n", "<leader>9", ":BufferGoto 9<CR>")
keymap.set("n", "<leader><S-TAB>", ":BufferPrevious<CR>")
keymap.set("n", "<leader><TAB>", ":BufferNext<CR>")
keymap.set("n", "<leader>bc", ":BufferClose<CR>")

-- Telescope
local builtin = require("telescope.builtin")
keymap.set("n", "ff", builtin.find_files, {})
keymap.set("n", "fg", builtin.live_grep, {})
keymap.set("n", "fb", builtin.buffers, {})
keymap.set("n", "fh", builtin.help_tags, {})
