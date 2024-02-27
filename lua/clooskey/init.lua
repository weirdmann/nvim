require("clooskey.remap")
print("Hello from Clooskey config!")
vim.cmd.colorscheme "catppuccin"
vim.cmd.set "number" 
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    if vim.fn.argv(0) == "" then
      require("telescope.builtin").find_files()
    end
  end,
})
vim.cmd.set "tabstop=2"
vim.cmd.set "shiftwidth=2"
vim.cmd.set "expandtab"
