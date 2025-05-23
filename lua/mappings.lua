require "nvchad.mappings"
local dap = require("dap")

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

map("x", "<leader>p", [["_dP]])
map({"n", "v"}, "<leader>d", [["_d]])

map({"n", "v"}, "<leader>y", [["+y]])
map("n", "<leader>Y", [["+Y]])

--keep cursor on the middle when scroll half pag
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")

-- keep vim search on the middle of the screen
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- dap
map("n", "<Leader>dt", dap.toggle_breakpoint, {})
map("n", "<Leader>dc", dap.continue, {})

-- show error messages
map('n', '<C-m>', vim.diagnostic.goto_next, {})

map("n", "[c", function()
  require("treesitter-context").go_to_context(vim.v.count1)
end, { silent = true })
