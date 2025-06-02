-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
--
-- DAP Keymaps
vim.keymap.set("n", "<leader>db", function()
  require("dap").toggle_breakpoint()
end, { desc = "Toggle DAP Breakpoint" })
vim.keymap.set("n", "<leader>dc", function()
  require("dap").continue()
end, { desc = "Continue DAP Debugger" })
vim.keymap.set("n", "<leader>dt", function()
  require("dap-go").debug_test()
end, { desc = "Debug Go Test" })
vim.keymap.set("n", "<leader>du", function()
  require("dapui").toggle()
end, { desc = "Toggle DAP UI" })

-- Golang Keymaps

-- Run current Go file (dev mode)
vim.keymap.set("n", "<leader>cgr", function()
  vim.cmd("w") -- Save the file first
  vim.cmd("!go run %")
end, { desc = "Go: Run current file" })

-- Build Go project (build mode)
vim.keymap.set("n", "<leader>cb", function()
  vim.cmd("w") -- Save the file first
  vim.cmd("!go build ./...")
end, { desc = "Go: Build project" })
