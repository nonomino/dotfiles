local g = vim.g
local opt = vim.opt
local api = vim.api

g.mapleader = " "
g.maplocalleader = " "

opt.breakindent    = true
opt.clipboard      = "unnamedplus"
opt.completeopt    = "menu,menuone,noselect"
opt.cursorline     = false
opt.expandtab      = false
opt.fileencoding   = "utf-8"
opt.ignorecase     = true
opt.inccommand     = "split"
opt.list           = true
opt.listchars      = { eol = "󰌑", tab = "» ", nbsp = "_" }
opt.mouse          = "a"
opt.number         = true
opt.relativenumber = true
opt.scrolloff      = 8
opt.shiftwidth     = 2
opt.showcmd        = false
opt.showmode       = false
opt.signcolumn     = "yes"
opt.smartcase      = true
opt.splitbelow     = true
opt.splitright     = true
opt.tabstop        = 2
opt.termguicolors  = true
opt.timeoutlen     = 300
opt.undofile       = true
opt.updatetime     = 250
opt.wrap           = false
opt.completeopt = {'menuone', 'noselect', 'noinsert'}
opt.shortmess = vim.opt.shortmess + { c = true}

api.nvim_set_option('updatetime', 300) 

-- vim.wo.foldmethod = 'expr'
-- vim.wo.foldexpr = 'nvim_treesitter#foldexpr()'
