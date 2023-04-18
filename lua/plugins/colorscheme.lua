return {
  -- add gruvbox
  { "ellisonleao/gruvbox.nvim" },

  { "tanvirtin/monokai.nvim" },
  -- {
  --   "projekt0n/github-nvim-theme",
  --   tag = "v0.0.7",
  --   config = function()
  --     require("github-theme").setup({
  --       theme_style = "light",
  --       -- other config
  --     })
  --   end,
  -- },
  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "gruvbox",
      colorscheme = "monokai_soda",
    },
  },
}
