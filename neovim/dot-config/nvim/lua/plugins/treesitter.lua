return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  event = { "BufReadPost", "BufNewFile" },
  opts = {
    ensure_installed = { "python", "cpp", "c", "go", "lua", "typescript", "markdown", "markdown_inline" },
    auto_install = true,
  },
  config = function(_, opts)
    local TS = require("nvim-treesitter")

    -- Setup options for modern nvim-treesitter
    if type(TS.setup) == "function" then
      TS.setup(opts)
    end

    -- Install configured parsers if TSInstall/install module is available
    local install_ok, install = pcall(require, "nvim-treesitter.install")
    if install_ok and type(install.update) == "function" then
      install.update(opts.ensure_installed)
    end
  end,
}
