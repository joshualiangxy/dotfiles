vim.cmd('autocmd!')

vim.scriptencoding = 'utf-8'
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'

vim.wo.number = true
vim.wo.relativenumber = true

-- Search
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Indentations
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.ai = true -- Auto indent
vim.opt.si = true -- Smart indent
vim.api.nvim_create_autocmd("FileType", {
  pattern = "lua,javascript,javascriptreact,typescript,typescriptreact,css,asm,json,html,yaml",
  command = "setlocal tabstop=2 shiftwidth=2 softtabstop=2"
})

vim.opt.title = true
vim.opt.autoindent = true
vim.opt.backup = false
vim.opt.showcmd = true
vim.opt.cmdheight = 1
vim.opt.laststatus = 2
vim.opt.expandtab = true
vim.opt.scrolloff = 10
vim.opt.shell = 'bash'
vim.opt.backupskip = '/tmp/*,/private/tmp/*'
vim.opt.inccommand = 'split'
vim.opt.wrap = true -- No wrap lines
vim.opt.backspace = 'start,eol,indent'
vim.opt.path:append { '**' } -- Finding files - Search down into subfolders
vim.opt.wildignore:append { '*/node_modules/*' }
vim.opt.mouse = 'a'
vim.opt.hidden = true
vim.opt.updatetime = 300

vim.opt.splitbelow = true
vim.opt.splitright = true

-- Undercurl
vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Ce = "\e[4:0m"]])

-- Turn off paste mode when leaving insert
vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = '*',
  command = "set nopaste"
})

-- Cursor settings
vim.opt.guicursor = vim.opt.guicursor + 'a:blinkon100'
vim.api.nvim_create_autocmd("VimLeave", {
  pattern = '*',
  command = "set guicursor=a:ver100-blinkon100"
})

-- Add asterisks in block comments
vim.opt.formatoptions:append { 'r' }

