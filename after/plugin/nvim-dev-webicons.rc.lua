local status, icons = pcall(require, "nvim-dev-webicons")
if(not status) then return end

icons.setup {
	override = {

	},
	default = true
}
