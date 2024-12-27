require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })

-- nvim-spectre
map('n', '<leader>S', '<cmd>lua require("spectre").toggle()<CR>', {
    desc = "Toggle Spectre"
})
map('n', '<leader>sw', '<cmd>lua require("spectre").open_visual({select_word=true})<CR>', {
    desc = "Search current word"
})
map('v', '<leader>sw', '<esc><cmd>lua require("spectre").open_visual()<CR>', {
    desc = "Search current word"
})
map('n', '<leader>sp', '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>', {
    desc = "Search on current file"
})

-- go-nvim
map("n", "<leader>db", "<cmd>GoBreakToggle<CR>", {desc = "Break toggle"})
map("n", "<leader>du", "<cmd>GoDebug<CR>", {desc = "Up debug UI"})
map("n", "<leader>tf", "<cmd>GoTestFile<CR>", {desc = "Run tests for current file"})
map("n", "<leader>tp", "<cmd>GoTestPkg<CR>", {desc = "Run tests for current package"})

-- neoscroll
neoscroll = require("neoscroll")
local neoscroll_keymap = {
  -- Use the "sine" easing function
  ["<C-u>"] = function() neoscroll.ctrl_u({ duration = 250; easing = 'sine' }) end;
  ["<C-d>"] = function() neoscroll.ctrl_d({ duration = 250; easing = 'sine' }) end;
  -- Use the "circular" easing function
  ["<C-b>"] = function() neoscroll.ctrl_b({ duration = 450; easing = 'circular' }) end;
  ["<C-f>"] = function() neoscroll.ctrl_f({ duration = 450; easing = 'circular' }) end;
  -- When no value is passed the `easing` option supplied in `setup()` is used
  ["<C-y>"] = function() neoscroll.scroll(-0.1, { move_cursor=false; duration = 100 }) end;
  ["<C-e>"] = function() neoscroll.scroll(0.1, { move_cursor=false; duration = 100 }) end;
}
for key, func in pairs(neoscroll_keymap) do
   map({ 'n', 'v', 'x' }, key, func)
end
