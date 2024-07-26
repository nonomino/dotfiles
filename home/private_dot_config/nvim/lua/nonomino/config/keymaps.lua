function Map(mode, lhs, rhs, opts)
    local options = { noremap = true, silent = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.keymap.set(mode, lhs, rhs, options)
end

Map("n", "<leader>s", ":w<CR>")
Map("i", "<leader>s", "<ESC>:w<CR>a")
Map({ "i" }, "jk", "<Esc>")
Map({ "i" }, "kj", "<Esc>")
Map('n', '<left>', '<cmd>echo "Noob alert!! Use h to move left!!"<CR>')
Map('n', '<right>', '<cmd>echo "Noob alert!! Use l to move right!!"<CR>')
Map('n', '<up>', '<cmd>echo "Noob alert!! Use k to move up!!"<CR>')
Map('n', '<down>', '<cmd>echo "Noob alert!! Use j to move down!!"<CR>')

-- Map('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
-- Map('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
-- Map('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
-- Map('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

Map('n', '<Esc>', '<cmd>nohlsearch<CR>')
Map({ "n", "v" }, "<Space>", "<Nop>", { silent = true })
Map("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
Map("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Bufferline tabs
Map("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
Map("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
Map("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })
Map("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" })
Map("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })

-- [[ Autocommands ]]
-- Highlight on yank
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = "Highlight when yanking (copying) text",
  pattern = '*',
  group = vim.api.nvim_create_augroup('YankHighlight', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
