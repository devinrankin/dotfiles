local lsp = vim.lsp
local capabilities = require('blink.cmp').get_lsp_capabilities()

-- Default
lsp.config("*", {
  capabilities = capabilities
})

-- C/C++
lsp.config('clangd', {
    capabilities = capabilities,

    cmd = {
        "clangd",
        "--background-index",
        "--clang-tidy",
        "--completion-style=detailed",
    },

    filetypes = { 'c', 'cpp' }
})
lsp.enable('clangd')

-- Rust
lsp.config('rust_analyzer', {
  filetypes = { 'rust' }
})
lsp.enable('rust_analyzer')

-- Lua
lsp.config('emmylua_ls', {
  filetypes = { 'lua' },
  settings = {
    emmylua = {
      runtime = { version = 'LuaJIT' },
      diagnostics = { globals = { 'vim' } }
    }
  }
})
lsp.enable('emmylua_ls')
