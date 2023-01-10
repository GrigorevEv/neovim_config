vim.cmd [[
try
  " colorscheme gruvbox-baby
  " colorscheme horizon
  " colorscheme darkplus
  colorscheme onedarker
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]
