vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- nvimtree
vim.keymap.set("n", "<C-n>", "<cmd>NvimTreeToggle<CR>", { desc = "nvimtree toggle window" })
vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeFocus<CR>", { desc = "nvimtree focus window" })

vim.keymap.set("n", "<Esc>", "<cmd>noh<CR>", { desc = "general clear highlights" })

vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "switch window left" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "switch window right" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "switch window down" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "switch window up" })

-- Comment
vim.keymap.set("n", "<leader>/", "gcc", { desc = "comment toggle", remap = true })
vim.keymap.set("v", "<leader>/", "gc", { desc = "comment toggle", remap = true })

vim.keymap.set("n", "<C-s>", "<cmd>w<CR>", { desc = "file save" })

vim.keymap.set("n", "<leader>n", "<cmd>set nu!<CR>", { desc = "toggle line number" })
vim.keymap.set("n", "<leader>rn", "<cmd>set rnu!<CR>", { desc = "toggle relative number" })

vim.keymap.set("t", "<S-esc>", "<C-\\><C-n>")


-- Cycle tabs
vim.keymap.set("n", "<leader>t", "<cmd>BufferLineCycleNext<CR>")
vim.keymap.set("n", "<leader>T", "<cmd>BufferLineCyclePrev<CR>")
