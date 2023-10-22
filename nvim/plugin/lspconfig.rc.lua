local status, nvim_lsp = pcall(require, 'lspconfig')
if (not status) then return end

local protocol = require('vim.lsp.protocol')

local on_attach = function(client, _)
  -- formatting
  -- if client.server_capabilities.documentFormattingProvider then
  -- vim.api.nvim_command [[augroup Format]]
  -- vim.api.nvim_command [[autocmd! * <buffer>]]
  -- vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()]]
  -- vim.api.nvim_command [[augroup END]]
  -- end
end

nvim_lsp.rust_analyzer.setup {
  -- Server-specific settings. See `:help lspconfig-setup`
  settings = {
    ['rust-analyzer'] = {},
  },
}

--[[
nvim_lsp.tsserver.setup {
  on_attach = on_attach,
  filetypes = { "typescript", "typescriptreact", "typescript.tsx" },
  cmd = { "typescript-language-server", "--stdio" }
}

nvim_lsp.clangd.setup {
  on_attach = on_attach,
  filetypes = { "c", "cpp", "objc", "objcpp", "cuda", "h", "hpp" },
  root_dir = nvim_lsp.util.root_pattern(
    '.clangd',
    '.clang-tidy',
    '.clang-format',
    'compile_commands.json',
    'compile_flags.txt',
    'configure.ac',
    '.git'
  ),
  single_file_support = true,
  cmd = { "clangd-12" }
}
--]]

nvim_lsp.lua_ls.setup {
  on_attach = on_attach,
  settings = {
    Lua = {
      diagnostics = {
        -- Get the language server to recognise the 'vim' global
        globals = { 'vim' }
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
        checkThirdParty = false
      }
    }
  }
}

--[[
nvim_lsp.ocamllsp.setup {
  on_attach = on_attach,
  filetypes = {
    "ml",
    "ocaml",
    "ocaml.menhir",
    "ocaml.interface",
    "ocaml.ocamllex",
    "reason",
    "dune"
  },
  root_dir = nvim_lsp.util.root_pattern(
    "*.opam",
    "esy.json",
    "package.json",
    ".git",
    "dune-project",
    "dune-workspace"
  ),
  cmd = { "ocamllsp" },
}

nvim_lsp.java_language_server.setup {
  on_attach = on_attach,
  filetypes = { "java" },
  settings = {}
}

nvim_lsp.pylsp.setup {
  settings = {
    pylsp = {
      plugins = {
        pycodestyle = {
          ignore = {'W391'},
          maxLineLength = 120
        }
      }
    }
  }
}
--]]

