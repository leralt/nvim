return {
  {
    "akinsho/toggleterm.nvim",
    config = function()
      require("toggleterm").setup({
        size = 15,
        direction = "horizontal",
        open_mapping = [[<c-\>]],
      })
    end,
    -- keys = {
    --   {
    --     "<Leader>t",
    --     function()
    --       require("toggleterm").toggle(vim.v.count1)
    --     end,
    --   },
    -- },
    lazy = false,
  },
}
