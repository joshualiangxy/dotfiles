local status, telescope = pcall(require, 'telescope')
if (not status) then return end

local actions = require('telescope.actions')

function file_browser()
  return telescope
    .extensions
    .file_browser
    .file_browser({
      path = '%:p:h',
      cwd = vim.fn.expand('%:p:h'),
      respect_git_ignore = false,
      hidden = true,
      grouped = true,
      previewer = true,
      initial_mode = 'insert',
      -- layout_config = { height = 40 }
    })
end

local fb_actions = telescope.extensions.file_browser.actions

telescope.setup {
  defaults = {
    mappings = {
      n = {
        ['q'] = actions.close
      }
    }
  },
  extensions = {
    file_browser = {
      theme = 'dropdown',
      -- disables netrw and use telescope-file-browser in its place
      hijack_netrw = true,
      mappings = {
        -- your custom insert mode mappings
        ['i'] = {
          ['<C-w>'] = function() vim.cmd('normal vbd') end,
          ['^'] = fb_actions.goto_parent_dir,
        },
        ['n'] = {
          ['N'] = fb_actions.create,
          ['^'] = fb_actions.goto_parent_dir,
          ['/'] = function()
            vim.cmd('startinsert')
          end,
          ['M'] = fb_actions.rename,
          ['D'] = fb_actions.remove
        }
      }
    }
  }
}

telescope.load_extension('file_browser')

local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<Leader>af', '<cmd>lua require("telescope.builtin").find_files({ no_ignore = false, hidden = true })<cr>', opts)
vim.keymap.set('n', '<Leader>sf', '<cmd>lua require("telescope.builtin").live_grep()<cr>', opts)
vim.keymap.set('n', '<Leader>hf', '<cmd>lua require("telescope.builtin").help_tags()<cr>', opts)
vim.keymap.set('n', '<Leader>di', '<cmd>lua require("telescope.builtin").diagnostics()<cr>', opts)
vim.keymap.set('n', '<Leader>ff', '<cmd>lua file_browser()<cr>', opts)

-- Buffers
vim.keymap.set('n', '<Leader>bb', '<cmd>lua require("telescope.builtin").buffers()<cr>', opts)
vim.keymap.set('n', '<Leader>bd', '<cmd>bdelete<cr>', opts)

