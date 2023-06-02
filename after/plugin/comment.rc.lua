local status, comment = pcall(require, "Comment")
if(not status) then return end

comment.setup {
	pre_hook = function(ctx)
		if vim.bo.filetype == 'typescriptreact' then
			local util = require("Comment.utils")
			local type = ctx.ctype == util.ctype.linewise and '__default' or '__multiline'

			local location = nil
			if ctx.ctype == util.ctype.blockwise then
				location = require("ts_context_commentstring.utils").get_cursor_location()
			elseif ctx.cmotion == utilcmotion.v or ictx.cmotion == util.cmotion.V then
				location = require("ts_context_commentstring.utils").get_visual_start_location()
			end

			return require("ts_context_commentstring.internal").calculate_commentstring({
				key = type,
				location = location,
			})
		end
	end,
}
