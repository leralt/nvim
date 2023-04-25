-- return {}
return {
  -- inlay_hints
  "simrat39/rust-tools.nvim",
  opts = function()
    return {
      tools = {
        inlay_hints = {
          -- automatically set inlay hints (type hints)
          -- default: true
          auto = true,
          -- Only show inlay hints for the current line
          only_current_line = false,
          -- whether to show parameter hints with the inlay hints or not
          -- default: true
          show_parameter_hints = true,
          -- prefix for parameter hints
          -- default: "<-"
          parameter_hints_prefix = "<- ",
          -- prefix for all the other hints (type, chaining)
          -- default: "=>"
          other_hints_prefix = "=> ",
          -- whether to align to the length of the longest line in the file
          max_len_align = false,
          -- padding from the left if max_len_align is true
          max_len_align_padding = 1,
          -- whether to align to the extreme right or not
          right_align = false,
          -- padding from the right if right_align is true
          right_align_padding = 7,
          -- The color of the hints
          highlight = "Comment",
        },
        hover_actions = {

          -- the border that is used for the hover window
          -- see vim.api.nvim_open_win()
          border = {
            { "╭", "FloatBorder" },
            { "─", "FloatBorder" },
            { "╮", "FloatBorder" },
            { "│", "FloatBorder" },
            { "╯", "FloatBorder" },
            { "─", "FloatBorder" },
            { "╰", "FloatBorder" },
            { "│", "FloatBorder" },
          },

          -- Maximal width of the hover window. Nil means no max.
          max_width = nil,

          -- Maximal height of the hover window. Nil means no max.
          max_height = nil,

          -- whether the hover action window gets automatically focused
          -- default: false
          auto_focus = false,
        },
      },
    }
  end,
}

-- return {
--     {
--       "simrat39/rust-tools.nvim",
--       dependencies = { "neovim/nvim-lspconfig", "nvim-lua/plenary.nvim", "mfussenegger/nvim-dap" },
--       opts = function()
--         local extension_path = vim.env.HOME .. "/.local/share/nvim/mason/packages/codelldb/extension/"
--         local codelldb_path = extension_path .. "adapter/codelldb"
--         local liblldb_path = extension_path .. "lldb/lib/liblldb.dylib"
--         return {
--           dap = { adapter = require("rust-tools.dap").get_codelldb_adapter(codelldb_path, liblldb_path) },
--         }
--       end,
--     },
--   }
