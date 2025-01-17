require("nvchad.mappings")

local map = vim.keymap.set
local unmap = vim.keymap.del
local nvtab = require("nvchad.tabufline")

map("n", "<leader>fe", "<cmd>NvimTreeToggle<cr>", { desc = "Open File Explorer" })
map("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { desc = "Telescope Live Grep" })
map("n", "<leader>ff", "<cmd>Telescope find_files hidden=true no_ignore=true<cr>", { desc = "Telescope Live Grep" })

map("n", "<leader><right>", nvtab.next, { desc = "Next Buffer" })
map("n", "<leader><left>", nvtab.prev, { desc = "Prev Buffer" })
map("n", "<leader>bd", nvtab.close_buffer, { desc = "Delete Buffer" })
map("n", "<leader>bo", function()
  local buf = vim.api.nvim_get_current_buf()
  for _, b in ipairs(vim.api.nvim_list_bufs()) do
    if b ~= buf then
      vim.api.nvim_buf_delete(b, { force = true })
    end
  end
end, { desc = "Close Other Buffer" })

map("n", "<leader>f=", function()
  require("conform").format { async = true }
end, { desc = "Format File" })
map("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename Symbol" })

map("n", "<leader>t", function()
  require("nvchad.term").toggle { pos = "float", id = "floatTerm" }
end, { desc = "Toggle Float Term" })

map("n", "]d", vim.diagnostic.goto_next, { desc = "Go To Next Diagnostic Message" })
map("n", "[d", vim.diagnostic.goto_next, { desc = "Go To Previous Diagnostic Message" })

unmap("n", "<leader>b")
unmap("n", "<c-n>")
unmap("n", "<leader>x")
unmap("n", "<leader>fw")
unmap("n", "<tab>")
unmap("n", "<s-tab>")
unmap("n", "<m-i>")
