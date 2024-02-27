local function uuid()
      local id, _ = vim.fn.system('uuidgen'):gsub('\n', '')
      return id
    end
      
require('rest-nvim').setup({
  custom_dynamic_variables = {["guid"] = uuid},
})
vim.keymap.set("", '<leader>hr', '<Plug>RestNvim');
vim.keymap.set("", '<leader>hp', '<Plug>RestNvimPreview');
vim.keymap.set("", '<leader>hl', '<Plug>RestNvimLast');

