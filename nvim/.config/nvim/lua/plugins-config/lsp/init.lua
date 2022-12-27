---------------- Global Config -----------------

local lsp_defaults = {
  flags = {
    -- Cant. de milisegunods que neovim esperara para notificar cambios en el 
    -- documento al servidor
    debounce_text_changes = 150,

  },
  -- Funcionalidades que neovim puede manejar
  capabilities = require('cmp_nvim_lsp').default_capabilities({
    -- opciones que neovim soporta por defecto
    vim.lsp.protocol.make_client_capabilities()
  }),
  -- Funcion que se ejecutara cuando un servidor se vincule a un buffer.
  -- Por lo general aqui creamos comandos y atajos de teclado vinculados a
  -- funciones al servidor LSP
  on_attach = function(client, bufnr)
    -- Usamos nvim_exec_autocmds para enviar un evento
    vim.api.nvim_exec_autocmds('User', { pattern = 'LspAttached' })
  end
}


local lspconfig = require('lspconfig')

lspconfig.util.default_config = vim.tbl_deep_extend(
  'force',
  lspconfig.util.default_config,
  lsp_defaults
)

------------ Servidores de Lenguages -----------------
lspconfig.sumneko_lua.setup({
  single_file_support = true,
  settings = {
    Lua = {
      runtime = { version = 'LuaJIT', path = vim.split(package.path, ";") },
      diagnostics = { globals = {'vim'} },
      workspace ={ library = vim.api.nvim_get_runtime_file("", true),}, 
      telemetry = { enable = false },
    },
  },
  -- Esta funcion llama al on_attach creado en el lsp_defaults
  on_attach = function(client, bufnr)
    -- print('Lua LSP has started good!')
    lspconfig.util.default_config.on_attach(client,bufnr)
  end

})

lspconfig.pyright.setup({
  on_attach = function(client, bufnr)
    -- print('Python LSP has started good!')
    lspconfig.util.default_config.on_attach(client, bufnr)
  end
})

lspconfig.jedi_language_server.setup({
  on_attach = function(client, bufnr)
    -- print('Python LSP has started good!')
    lspconfig.util.default_config.on_attach(client, bufnr)
  end
})

lspconfig.html.setup({ 
  on_attach = function(client, bufnr)
    -- print('HTML LSP has started good!')
    lspconfig.util.default_config.on_attach(client, bufnr)
  end,
  filetypes = { "html", "htmldjango"}
})

lspconfig.emmet_ls.setup({
  on_attach = function(client, bufnr)
    lspconfig.util.default_config.on_attach(client, bufnr)
  end,
  filetypes = { 
    "html", "htmldjango" ,
    "typescriptreact", "javascriptreact",
    "css", "sass", "scss", "less" }
})


lspconfig.cssls.setup({
  on_attach = function(client, bufnr)
    -- print('CSS LSP has started good!')
    lspconfig.util.default_config.on_attach(client, bufnr)
  end,
})

lspconfig.tsserver.setup({
  on_attach = function(client, bufnr)
    -- print('TSServer LSP has started good!')
    lspconfig.util.default_config.on_attach(client, bufnr)
  end,
  root_dir = function(fname)
    return vim.loop.cwd()
  end,
})


lspconfig.jsonls.setup({
  on_attach = function(client, bufnr)
    -- print('Json LSP has started good!')
    lspconfig.util.default_config.on_attach(client, bufnr)
  end,
})

------------ Atajos de Teclado ---------------------
vim.api.nvim_create_autocmd('User', {
  pattern = 'LspAttached',
  desc = 'Acciones LSP',
  callback = function()
    local bufmap = function(mode, lhs, rhs)
      local opts = { buffer = true }
      vim.keymap.set(mode, lhs, rhs, opts)
    end

    -- Muestra informacion sobre simbolo debajo del cursor
    bufmap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>')

    -- Saltar a definicion
    bufmap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>')

    -- Saltar a declaracion
    bufmap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>')

    -- Mostrar implementaciones
    bufmap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>')

    -- Saltar a definición de tipo
    bufmap('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>')

    -- Listar referencias
    bufmap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>')

    -- Mostrar argumentos de función
    bufmap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<cr>')

    -- Renombrar símbolo
    bufmap('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<cr>')

    -- Listar "code actions" disponibles en la posición del cursor
    bufmap('n', '<F4>', '<cmd>lua vim.lsp.buf.code_action()<cr>')
    bufmap('x', '<F4>', '<cmd>lua vim.lsp.buf.range_code_action()<cr>')

    -- Mostrar diagnósticos de la línea actual
    bufmap('n', 'gl', '<cmd>lua vim.diagnostic.open_float()<cr>')

    -- Saltar al diagnóstico anterior
    bufmap('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<cr>')

    -- Saltar al siguiente diagnóstico
    bufmap('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<cr>')
  end
})
