return {
  cmd = { 'emmylua_ls' },
  filetypes = { "lua" },
  settings = {
    emmylua = {
      runtime = {
        version = "LuaJIT",
      },
      diagnostics = {
        globals = { 'vim' },
      },
      workspace = {
        library = vim.api.nvim_get_runtime_file("", true),
        checkThirdParty = false,
      },
    }
  }
}
