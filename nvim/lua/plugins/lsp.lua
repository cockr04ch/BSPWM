return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim"
  },
  config = function()
    require("lspconfig").clangd.setup{}
    require("lspconfig").lua_ls.setup({
      settings = {
        Lua = {
          telemetry = { enable = false},
          workspace = { checkThirdParty = false},
        }
      }
    })
  end
}
