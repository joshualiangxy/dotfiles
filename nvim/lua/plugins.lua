local status, packer = pcall(require, 'packer')
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(
  function(use)
    use 'wbthomason/packer.nvim' -- Plugin manager
    use {
      'svrana/neosolarized.nvim',
      requires = { 'tjdevries/colorbuddy.nvim' }
    } -- Theme
    use 'hoob3rt/lualine.nvim' -- Statusline
    use 'kyazdani42/nvim-web-devicons' -- File icons
    use 'akinsho/nvim-bufferline.lua'

    use 'onsails/lspkind-nvim' -- vscode-like pictograms
    use 'L3MON4D3/LuaSnip' -- Snippet
    use 'hrsh7th/cmp-buffer' -- nvim-cmp source for buffer words
    use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in LSP
    use 'hrsh7th/nvim-cmp' -- Completion
    use 'neovim/nvim-lspconfig' -- LSP
    use {
      'nvim-treesitter/nvim-treesitter',
      run = ':TSUpdate'
    }
    use 'glepnir/lspsaga.nvim' -- LSP UIs

    use 'windwp/nvim-autopairs'
    use 'windwp/nvim-ts-autotag'

    use 'nvim-lua/plenary.nvim' -- Common utilities
    use 'nvim-telescope/telescope.nvim'
    use 'nvim-telescope/telescope-file-browser.nvim'

    use 'norcalli/nvim-colorizer.lua'

    use 'kylechui/nvim-surround'

    use 'lewis6991/gitsigns.nvim' -- For git symbols on the side
    use 'dinhhuy258/git.nvim' -- For git blame & browse
  end
)

