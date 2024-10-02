require "nvchad.mappings"

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

-- vim dap
--[[local M = {}]]

--[[M.dap = {]]
  --[[plugin = true,]]
  --[[n = {]]
    --[[["<leader>db"] = {]]
      --[["<cmd> DapToggleBreakpoint <CR>",]]
      --[["Add breakpoint at line"]]
    --[[},]]
    --[[["<leader>dus"] = {]]
      --[[function ()]]
        --[[local widgets = require('dap.ui.widgets');]]
        --[[local sidebar = widgets.sidebar(widgets.scopes);]]
        --[[sidebar.open();]]
      --[[end,]]
      --[["Open debugging sidebar"]]
    --[[}]]
  --[[}]]
--[[}]]

--[[M.dap_go = {]]
  --[[plugin = true,]]
  --[[n = {]]
    --[[["<leader>dgt"] = {]]
      --[[function()]]
        --[[require('dap-go').debug_test()]]
      --[[end,]]
      --[["Debug go test"]]
    --[[},]]
    --[[["<leader>dgl"] = {]]
      --[[function()]]
        --[[require('dap-go').debug_last()]]
      --[[end,]]
      --[["Debug last go test"]]
    --[[}]]
  --[[}]]
--[[}]]

--[[M.gopher = {]]
  --[[plugin = true,]]
  --[[n = {]]
    --[[["<leader>gsj"] = {]]
      --[["<cmd> GoTagAdd json <CR>",]]
      --[["Add json struct tags"]]
    --[[},]]
    --[[["<leader>gsy"] = {]]
      --[["<cmd> GoTagAdd yaml <CR>",]]
      --[["Add yaml struct tags"]]
    --[[}]]
  --[[}]]
--[[}]]

--[[return M]]
