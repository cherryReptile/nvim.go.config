require "nvchad.options"

-- add yours here!

-- vim.opt = 
vim.api.nvim_create_autocmd({ "InsertLeave", "TextChanged" }, {
  pattern = { "*" },
  command = "silent! wall",
  nested = true,
})

vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    require("nvim-tree.api").tree.open()
  end,
})

vim.opt.relativenumber = true
-- o.cursorlineopt ='both' -- to enable cursorline!
