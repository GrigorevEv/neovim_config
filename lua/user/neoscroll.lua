local status_ok, neoscroll = pcall(require, "neoscroll")
if not status_ok then
	return
end

neoscroll.setup()

local mappings = {}
-- Syntax: t[keys] = {function, {function arguments}}
mappings['<C-u>'] = {'scroll', {-12, 'true', '150'}}
mappings['<C-d>'] = {'scroll', {12, 'true', '150'}}

require('neoscroll.config').set_mappings(mappings)
