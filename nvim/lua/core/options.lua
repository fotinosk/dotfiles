vim.opt.relativenumber = true
vim.opt.cursorline = false

vim.opt.wrap = false -- using wrapping-paper to show it in virtual text.
vim.opt.clipboard = 'unnamedplus'
vim.opt.foldmethod="indent"
vim.opt.foldlevel=99

vim.keymap.set("n", "<esc>", "<cmd>nohlsearch<cr>", { desc = "clear search highlight on ESC" })

-- Better buffer splitting
vim.opt.splitright = true
vim.opt.splitbelow = true

vim.api.nvim_create_autocmd('TextYankPost', {
  group = vim.api.nvim_create_augroup('highlight_yank', {}),
  desc = 'Hightlight selection on yank',
  pattern = '*',
  callback = function()
    vim.highlight.on_yank { higroup = 'IncSearch', timeout = 500 }
  end,
})
  
-- diagnostics in floating window
vim.diagnostic.config({
	virtual_text = false,
	float = true
})
vim.cmd [[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false, source=true})]]
