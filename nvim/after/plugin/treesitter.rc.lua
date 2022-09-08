local status, ts = pcall(require, 'nvim-treesitter.configs')
if (not status) then return end

ts.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = true,
    diable = {},
  },
  ensure_installed = {
    'bash',
    'c',
    'cpp',
    'css',
    'lua',
    'java',
    'javascript',
    'jsdoc',
    'json',
    'python',
    'rust',
    'sql',
    'tsx',
    'typescript',
    'vim',
    'yaml'
  },
  autotag = { enable = true }
}

