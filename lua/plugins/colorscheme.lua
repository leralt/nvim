return {
  -- add gruvbox
  -- { "ellisonleao/gruvbox.nvim" },
  {
    "leralt/longkai.nvim",
    config = function()
      require("cmp").setup({
        window = require("ofirkai.plugins.nvim-cmp").window,
      })

      require("ofirkai").setup({
        custom_hlgroups = {
          -- NormalFloat = {
          --   bg = "#282923",
          -- },
          -- FloatBorder = {
          --   fg = "#26cca0",
          -- },
        },
      })
    end,
  },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "gruvbox",
      -- colorscheme = "monokai_soda",
      -- colorscheme = "ofirkai",
    },
  },
}
