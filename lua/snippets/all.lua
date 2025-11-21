local ls = require("luasnip")
local s = ls.snippet
local f = ls.function_node

local function comment_prefix()
	local ft = vim.bo.filetype
	local comment_map = {
		python = "# TODO: ",
		cpp = "// TODO: ",
		c = "// TODO: ",
		java = "// TODO: ",
		lua = "-- TODO: ",
		sh = "# TODO: ",
		javascript = "// TODO: ",
		rust = "// TODO: ",
		go = "// TODO: ",
		cs = "// TODO: ",
	}
	return { comment_map[ft] or "-- TODO: " }
end

return {
	s("todo", {
		f(comment_prefix, {}),
	}),
}
