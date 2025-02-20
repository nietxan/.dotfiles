require("oil").setup({
	keymaps = {
		["<C-p>"] = "actions.preview",
		["gx"] = "actions.open_external",
		["_"] = { "actions.open_cwd", mode = "n" },
	},
	columns = {
		"icon",
		"permissions",
		"mtime"
	},
	view_options = {
		show_hidden = true,
	},
	confirmation = {
		border = "single",
	},
	skip_confirm_for_simple_edits = false,
})
