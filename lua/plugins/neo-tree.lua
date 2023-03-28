return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      window = {
        position = "left",
        width = 30,
      },
      filesystem = {
        follow_current_file = true,
        -- hijack_netrw_behavior = "open_current",
      },
    },
  },
}
