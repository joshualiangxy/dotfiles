local status, saga = pcall(require, 'lspsaga')
if (not status) then return end

saga.setup {
  server_filetype_map = {},
  rename = {
    auto_save = true
  },
}

local opts = { noremap = true, silent = true }

vim.keymap.set('n', '\\en', '<Cmd>Lspsaga diagnostic_jump_next<CR>', opts)
vim.keymap.set('n', '\\ht', '<Cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
vim.keymap.set('n', 'K', '<Cmd>Lspsaga hover_doc<CR>', opts)
vim.keymap.set('n', 'gd', '<Cmd>Lspsaga goto_definition<CR>', opts)
vim.keymap.set('n', 'gi', '<Cmd>Lspsaga goto_type_definition<CR>', opts)
vim.keymap.set('n', '<F2>', '<Cmd>Lspsaga rename<CR>', opts)
vim.keymap.set({'n', 'v'}, '<Leader>ca', '<Cmd>Lspsaga code_action<CR>', opts)

