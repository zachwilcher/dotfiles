local lspconfig = require('lspconfig')

local function on_attach()
	require('completion').on_attach()
end

lspconfig.cmake.setup
{
on_attach=on_attach
}

lspconfig.clangd.setup
{
  cmd = {"clangd", "--header-insertion=never", "--background-index", "--clang-tidy"},
  on_attach=on_attach
}

lspconfig.rust_analyzer.setup
{
on_attach=on_attach
}

lspconfig.sumneko_lua.setup
{
	cmd = {"lua-language-server"},
	on_attach = on_attach,
	settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
        -- Setup your lua path
        path = vim.split(package.path, ';'),
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim'},
        disable = {'lowercase-global'},
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = {
          [vim.fn.expand('$VIMRUNTIME/lua')] = true,
          [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true,
        },
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
}
lspconfig.jsonls.setup {
    commands = {
      Format = {
        function()
          vim.lsp.buf.range_formatting({},{0,0},{vim.fn.line("$"),0})
        end
      }
    }
}
