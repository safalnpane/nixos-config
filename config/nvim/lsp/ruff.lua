return {
  cmd = { "ruff", "server" },
  filetypes = { "python" },
  root_markers = { 'pyproject.toml', 'ruff.toml', '.ruff.toml', '.git'},
  capabilities = {
    general = {
      positionEncodings = { 'utf-16' },
    },
  },
  on_attach = function(client, _)
    client.server_capabilities.hoverProvider = false  -- pyright does these
  end,
}
