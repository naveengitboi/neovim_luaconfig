local config = function()

	local palette = require("nightfox.palette").load("nightfox")
	local custom_nightfox = require("lualine.themes.nightfox")
	custom_nightfox.normal.c.bg = palette.bg0


	require("lualine").setup({
		options = {
			theme = custom_nightfox,
			globalstatus = true,
			component_separators = { left = "|", right = "|" },
			section_separators = { left = "", right = "" },
		},
		sections = {
			lualine_a = { "mode" },
			lualine_b = { "buffers" },
			lualine_x = { "encoding", "fileformat", "filetype", "progress" },
			lualine_y = { "" },
			lualine_z = { "location" },
		},
		tabline = {},
	})
end

return {
	"nvim-lualine/lualine.nvim",
	lazy = false,
	config = config,
}
