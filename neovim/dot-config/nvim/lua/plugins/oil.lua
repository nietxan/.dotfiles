return {
  "stevearc/oil.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" }, -- Optional: for file icons
  lazy = false,
  cmd = "Oil",
  keys = {
    { "<leader>o", function() require("oil").open() end, desc = "Open Oil" },
  },
  opts = {
    keymaps = {
      ["<C-p>"] = "actions.preview",
      ["gx"] = "actions.open_external",
      ["_"] = { "actions.open_cwd", mode = "n" },
    },
    columns = {
      "permissions",
      "mtime",
    },
    view_options = {
      show_hidden = true,
    },
    confirmation = {
      border = "single",
    },
    skip_confirm_for_simple_edits = false,
  },
}
