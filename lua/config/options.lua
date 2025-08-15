-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
if vim.loop.os_uname().sysname == "Darwin" then
elseif vim.fn.has("linux") then
else
  -- Set a compatible clipboard manager
  vim.g.clipboard = {
    copy = {
      ["+"] = "win32yank.exe -i --crlf",
      ["*"] = "win32yank.exe -i --crlf",
    },
    paste = {
      ["+"] = "win32yank.exe -o --lf",
      ["*"] = "win32yank.exe -o --lf",
    },
  }
end
vim.api.nvim_set_keymap("i", "jj", "<ESC>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("i", "<C-H>", "<Left>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("i", "<C-J>", "<Down>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("i", "<C-K>", "<Up>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<C-L>", "<Right>", { noremap = true, silent = true })
vim.g.root_spec =
  { "lsp", { ".git", "lua", "_darcs", ".hg", ".bzr", ".svn", "Makefile", "package.json", "pom.xml" }, "cwd" }
