require('tokyonight').setup({
    disable_background = false
})
vim.cmd[[colorscheme tokyonight]]
function ColorMyPencils(color) 
	color = color or "tokyonight"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

end

ColorMyPencils()
