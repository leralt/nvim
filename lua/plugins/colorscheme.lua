return {
  -- add gruvbox
  -- { "ellisonleao/gruvbox.nvim" },
  {
    "leralt/longkai.nvim",
    config = function()
      -- require("lualine").setup({
      --   options = {
      --     theme = require("ofirkai.statuslines.lualine").theme,
      --   },
      -- })
      -- require("dressing").setup({
      --   input = {
      --     win_options = {
      --       winhighlight = require("ofirkai.plugins.dressing").winhighlight,
      --     },
      --   },
      -- })
      require("cmp").setup({
        window = require("ofirkai.plugins.nvim-cmp").window,
      })

      require("ofirkai").setup({
        custom_hlgroups = {
          -- NormalFloat = {
          --   bg = "#282923",
          -- },
          LspInfoTip = {
            fg = "#f92672",
            bg = "#282923",
          },
          -- FloatBorder = {
          --   fg = "#26cca0",
          -- },
          Label = {
            fg = "#f92672",
            bg = "#282923",
          },
          NoiceVirtualText = {
            fg = "#f92672",
            italic = true,
          },
          LspFloatWinNormal = {
            bg = "#282923",
          },
        },
      })
    end,
  },

  -- {"hrsh7th/nvim-cmp",
  --   config = function ()
  --   end
  -- }
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
