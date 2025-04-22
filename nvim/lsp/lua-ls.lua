return {
  cmd = { 'lua-language-server' },
  filetypes = { 'lua' },
  root_markers = {
    '.luarc.json',
    '.luarc.jsonc',
    '.luacheckrc',
    '.stylua.toml',
    'stylua.toml',
    'selene.toml',
    'selene.yml',
    '.git',
  },
  settings = {
    runtime = { version = 'LuaJIT', },
    diagnostics = { globals = { 'vim', 'client' },
    telemetry = { enable = false, },
  },
},
}
