local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local status, lazy = pcall(require, 'lazy')
if (not status) then
  print("lazy.nvim is not installed")
  return
end

lazy.setup {
  'folke/lazy.nvim', -- Plugin manager
  'nvim-lua/plenary.nvim', -- Common utilities
  -- Theme
  {
    'svrana/neosolarized.nvim',
    dependencies = { 'tjdevries/colorbuddy.nvim' },
    lazy = true,
  },
  -- Statusline
  {
    'hoob3rt/lualine.nvim',
    event = 'VeryLazy',
  },
  {
    'akinsho/nvim-bufferline.lua',
    event = { 'BufEnter' },
  },
  -- File icons
  {
    'kyazdani42/nvim-web-devicons',
    event = 'VeryLazy',
  },
  -- Auto-completion engine
  {
    'hrsh7th/nvim-cmp',
    event = 'VeryLazy',
    dependencies = {
      'onsails/lspkind-nvim', -- vscode-like pictograms
      'hrsh7th/cmp-buffer',   -- nvim-cmp source for buffer words
      'hrsh7th/cmp-nvim-lsp', -- nvim-cmp source for neovim's built-in LSP
      'L3MON4D3/LuaSnip', -- Snippet
    },
  },
  -- LSP
  {
    'neovim/nvim-lspconfig',
    event = { 'BufRead', 'BufNewFile' },
  },
  {
    'nvim-treesitter/nvim-treesitter',
    event = 'VeryLazy',
    build = ':TSUpdate'
  },
  -- LSP UIs
  {
    'glepnir/lspsaga.nvim',
    event = { 'BufRead', 'BufNewFile' },
  },
  {
    'nvim-telescope/telescope.nvim',
    cmd = 'Telescope',
  },
  'windwp/nvim-autopairs',
  'windwp/nvim-ts-autotag',
  'nvim-telescope/telescope-file-browser.nvim',
  'norcalli/nvim-colorizer.lua',
  'kylechui/nvim-surround',
  'lewis6991/gitsigns.nvim', -- For git symbols on the side
  'dinhhuy258/git.nvim', -- For git blame & browse
}

