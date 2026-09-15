require "nvchad.options"

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
--
-- Force miasma on startup
vim.cmd("colorscheme miasma")

-- Custom NvChad overrides for Tab/Shift-Tab buffer switching & Safe Close
local map = vim.keymap.set

-- Switch buffers with Tab and Shift-Tab
map("n", "<Tab>", "<cmd>bnext<CR>", { desc = "Next buffer" })
map("n", "<S-Tab>", "<cmd>bprevious<CR>", { desc = "Prev buffer" })

-- Close current buffer safely with Space + q without killing session
map("n", "<leader>q", function()
  local ok, minifrail = pcall(require, "mini.bufremove")
  if ok then
    minifrail.delete(0, false)
  else
    vim.cmd("bp | bd #")
  end
end, { desc = "Close buffer" })

-- Disable accidental session quits
map("n", "<leader>qq", "<nop>")
map("n", "ZZ", "<nop>")
map("n", "ZQ", "<nop>")

