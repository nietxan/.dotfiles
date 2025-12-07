return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  -- branch = "main",
  event = { "BufReadPost", "BufNewFile" },
  opts = {
    ensure_installed = { "python", "cpp", "c", "go", "lua", "typescript" },
    sync_install = false,
    auto_install = true,
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = false,
    },
  },
  config = function(_, opts)
    require("nvim-treesitter.configs").setup(opts)
  end,
}
