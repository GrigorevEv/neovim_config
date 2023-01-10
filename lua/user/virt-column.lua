local status_ok, virt_column = pcall(require, "virt-column")
if not status_ok then
  return
end

virt_column.setup()

vim.cmd('set colorcolumn=79')
vim.cmd('highlight VirtColumn guifg=#7a7876')
