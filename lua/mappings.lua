require "nvchad.mappings"

-- add yours here
local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

map("n", "gD", function() vim.lsp.buf.declaration() end, {desc = "LSP declaration"} )
map("n", "gd", function() vim.lsp.buf.definition() end, {desc = "LSP definition"} )
map("n", "K", function() vim.lsp.buf.hover() end, {desc = "LSP hover"} )
map("n", "gi", function() vim.lsp.buf.implementation() end, {desc = "LSP implementation"} )
map("n", "<leader>ls", function() vim.lsp.buf.signature_help() end, {desc = "LSP signature help"} )
map("n", "<leader>D", function() vim.lsp.buf.type_definition() end, {desc = "LSP definition type"} )
map("n", "<leader>ra", function() require("nvchad.renamer").open() end, {desc = "LSP rename"} )
map({"n", "v"}, "<leader>ca", function() vim.lsp.buf.code_action() end, {desc = "LSP code action"} )
map("n", "gr", function() vim.lsp.buf.references() end, {desc = "LSP references"} )
map("n", "<leader>lf", function() vim.diagnostic.open_float { border = "rounded"} end, {desc = "Floating diagnostic"} )
map("n", "[d", function() vim.diagnostic.goto_prev {float = { border = "rounded" } } end, {desc = "Goto prev"} )
map("n", "]d", function() vim.diagnostic.goto_next { float = { border = "rounded" } } end, {desc = "Goto next"} )
map("n", "<leader>q", function() vim.diagnostic.setloclist() end, {desc = "Diagnostic setloclist"} )
map("n", "<leader>wa", function() vim.lsp.buf.add_workspace_folder() end, {desc = "Add workspace folder"} )
map("n", "<leader>wr", function() vim.lsp.buf.remove_workspace_folder() end, {desc = "Remove workspace folder"} )
map("n", "<leader>wl", function() print(vim.inspect(vim.lsp.buf.list_workspace_folders())) end, {desc = "List workspace folders"} )

--     ["<leader>ls"] = {
--       function()
--         vim.lsp.buf.signature_help()
--       end,
--       "LSP signature help",
--     },
-- 
--     ["<leader>D"] = {
--       function()
--         vim.lsp.buf.type_definition()
--       end,
--       "LSP definition type",
--     },
-- 
--     ["<leader>ra"] = {
--       function()
--         require("nvchad.renamer").open()
--       end,
--       "LSP rename",
--     },
-- 
--     ["<leader>ca"] = {
--       function()
--         vim.lsp.buf.code_action()
--       end,
--       "LSP code action",
--     },
-- 
--     ["gr"] = {
--       function()
--         vim.lsp.buf.references()
--       end,
--       "LSP references",
--     },
-- 
--     ["<leader>lf"] = {
--       function()
--         vim.diagnostic.open_float { border = "rounded" }
--       end,
--       "Floating diagnostic",
--     },
-- 
--     ["[d"] = {
--       function()
--         vim.diagnostic.goto_prev { float = { border = "rounded" } }
--       end,
--       "Goto prev",
--     },
-- 
--     ["]d"] = {
--       function()
--         vim.diagnostic.goto_next { float = { border = "rounded" } }
--       end,
--       "Goto next",
--     },
-- 
--     ["<leader>q"] = {
--       function()
--         vim.diagnostic.setloclist()
--       end,
--       "Diagnostic setloclist",
--     },
-- 
--     ["<leader>wa"] = {
--       function()
--         vim.lsp.buf.add_workspace_folder()
--       end,
--       "Add workspace folder",
--     },
-- 
--     ["<leader>wr"] = {
--       function()
--         vim.lsp.buf.remove_workspace_folder()
--       end,
--       "Remove workspace folder",
--     },
-- 
--     ["<leader>wl"] = {
--       function()
--         print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
--       end,
--       "List workspace folders",
--     },
--   },
-- 
--   v = {
--     ["<leader>ca"] = {
--       function()
--         vim.lsp.buf.code_action()
--       end,
--       "LSP code action",
--     },
--   },
-- }
