local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  -- bootstrap lazy.nvim
  -- stylua: ignore
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath })
end
vim.opt.rtp:prepend(lazypath)

require("config.globals")
require("config.options")
require("config.keymaps")
require("config.autocmds")
require("config.helpers")

require("lazy").setup("plugins", {
	defaults = {
		lazy = true,
	},
	install = { colorscheme = { "nightfox" } },
	rtp = {
		disabled_plugins = {
			"gzip",
			"matchit",
			"matchparen",
			"netrw",
			"netrwPlugin",
			"tarPlugin",
			"tohtml",
			"tutor",
			"zipPlugin",
		},
	},

	change_detection = {
		notify = true,
	},
})

require("oil").setup({
	defualt_file_explorer = true,
	lazy = true,
})
require("ibl").setup()

require("mason").setup()


