return {
  { 
    "mason-org/mason.nvim", opts = {} 
  },
  { 
    "mason-org/mason-lspconfig.nvim", 
    opts = { 
      ensure_installed = { "lua_ls", "pylsp", "ts_ls", "rust_analyzer" },
      automatic_installation = true,
    }, 

    dependencies = { 
      "mason-org/mason.nvim",
      "neovim/nvim-lspconfig", 
    }, 

  }
}
