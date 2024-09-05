return {
  {
    "ThePrimeagen/harpoon",
    -- lazy = true,
    config = function ()
      -- local harpoon = require("harpoon")
      local harpoonmark = require("harpoon.mark")
      local harpoonui = require("harpoon.ui")
      vim.keymap.set("n", "<leader>a", function() harpoonmark.add_file()end)
      vim.keymap.set("n", "<C-e>", function() harpoonui.toggle_quick_menu()end)

      vim.keymap.set("n", "<C-h>", function() harpoonui.nav_file(1)end)
      vim.keymap.set("n", "<C-j>", function() harpoonui.nav_file(2)end)
      vim.keymap.set("n", "<C-k>", function() harpoonui.nav_file(3)end)
      vim.keymap.set("n", "<C-l>", function() harpoonui.nav_file(4)end)
      -- vim.keymap.set("n", "<leader><C-h>", function() harpoon:list():replace_at(1) end)
      -- vim.keymap.set("n", "<leader><C-t>", function() harpoon:list():replace_at(2) end)
      -- vim.keymap.set("n", "<leader><C-n>", function() harpoon:list():replace_at(3) end)
      -- vim.keymap.set("n", "<leader><C-s>", function() harpoon:list():replace_at(4) end)
    end
  },
}
