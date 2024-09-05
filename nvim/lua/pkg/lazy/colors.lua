function ColorMyPencils(color)
  color = color or "rose-pine"
  vim.cmd.colorscheme(color)

  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
  {
    "rose-pine/neovim",
    name = "rose-pine",
    config = function()
      require('rose-pine').setup({
        variant = "main", -- auto, main, moon, or dawn
        disable_background = true,
        styles = {
          italic = false,
          -- transparency = true,
        },
        highlight_groups = {
          -- for treesitter highlights, they start with an @, so you'll have to do something like:
          ["@keyword.import"] = { fg = "love" },
          ["Keyword"] = { fg = "iris" },
          ["@keyword.return"] = { fg = "love" },
        },
      })
      vim.cmd("colorscheme rose-pine")
    end
  },
}
