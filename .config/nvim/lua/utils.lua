local M = {}

local mapping = {
	test = {
		rust = function() vim.cmd'!cargo test' end
	},
	run = {
		rust = function() vim.cmd'!cargo run' end
	},
	associated = {
		cpp = function() vim.cmd'ClangdSwitchSourceHeader' end,
		c = function() vim.cmd'ClangdSwitchSourceHeader' end
	}
}

local function resolve(method)
	local func = mapping[method][vim.bo.filetype]
	if func then
		func()
	else
		print('Method "' .. method .. '" is not defined for filetype "' .. vim.bo.filetype .. '"')
	end
end

function M.test()
	resolve'test'
end

function M.run()
	resolve'run'
end

function M.associated()
	resolve'associated'
end

return M
