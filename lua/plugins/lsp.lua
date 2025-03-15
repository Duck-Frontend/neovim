local lspconfig = require('lspconfig')
local mason = require('mason')
local mason_lspconfig = require('mason-lspconfig')

-- Настройка Mason
mason.setup()
mason_lspconfig.setup({
  ensure_installed = { 'lua_ls', 'pyright', 'tsserver' }, -- Пример LSP серверов
})

-- Настройка LSP серверов
local on_attach = function(client, bufnr)
  -- Клавиши для LSP
  local opts = { noremap = true, silent = true, buffer = bufnr }
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
  vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
  vim.keymap.set('n', '<leader>D', vim.lsp.buf.type_definition, opts)
  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
  vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, opts)
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
  vim.keymap.set('n', '<leader>f', vim.lsp.buf.formatting, opts)
end

-- Настройка для каждого LSP сервера
mason_lspconfig.setup_handlers({
  function(server_name)
    lspconfig[server_name].setup({
      on_attach = on_attach,
      capabilities = require('cmp_nvim_lsp').default_capabilities(),
    })
  end,
})

-- Пример настройки для Lua
lspconfig.lua_ls.setup({
  settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim' },
      },
    },
  },
})
