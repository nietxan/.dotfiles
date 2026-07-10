return {
  "johmsalas/text-case.nvim",
  dependencies = { "nvim-telescope/telescope.nvim" },
  event = "VeryLazy",
  config = function()
    require("textcase").setup({ prefix = "ga" })
    require("telescope").load_extension("textcase")
    vim.keymap.set({ "n", "x" }, "gau", "<cmd>TextCaseOpenTelescope<CR>", { desc = "Change case" })
  end,
}
