-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
-- LSP Diagnostics Options Setup
local sign = function(opts)
  vim.fn.sign_define(opts.name, {
    texthl = opts.name,
    text = opts.text,
    numhl = "",
  })
end

sign({ name = "DiagnosticSignError", text = "" })
sign({ name = "DiagnosticSignWarn", text = "" })
sign({ name = "DiagnosticSignHint", text = "" })
sign({ name = "DiagnosticSignInfo", text = "" })

vim.diagnostic.config({
  virtual_text = false,
  signs = true,
  update_in_insert = true,
  underline = true,
  severity_sort = false,
  float = {
    border = "rounded",
    source = "always",
    header = "",
    prefix = "",
  },
})
-- 为诊断信息添加透明背景 && change backgroud color
DiagBack = function()
  local _, winnr = vim.diagnostic.open_float(nil, { focusable = false })
  if winnr then
    vim.api.nvim_win_set_option(winnr, "winblend", 20)
    vim.api.nvim_win_set_option(winnr, "winhl", "Normal:NormalFloatLSP,NormalFloat:NormalFloatLSP")
  end
end
-- vim.cmd([[
--   set signcolumn=yes
--   autocmd CursorHold * lua vim.diagnostic.open_float(nil, { focusable = false })
-- ]])
vim.cmd([[
  set signcolumn=yes
  autocmd CursorHold * lua DiagBack()
]])

-- LSP settings (for overriding per client)
local function customise_handler(handler)
  local overrides = { border = "rounded" }
  return vim.lsp.with(function(...)
    local _, winnr = handler(...)
    if winnr then
      -- vim.api.nvim_win_set_option(winnr, "winblend", 20)
      vim.api.nvim_win_set_option(winnr, "winhl", "Normal:NormalFloatLSP,NormalFloat:NormalFloatLSP")
    end
  end, overrides)
end

-- local handlers = {
--   ["textDocument/hover"] = vim.lsp.with(
--     vim.lsp.handlers.hover,
--     { border = border, bg = "#282923", Normal = "NormalFloatLSP", title = "zhushi" }
--   ),
--   ["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, { border = border }),
-- }
local handlers = {
  ["textDocument/hover"] = customise_handler(vim.lsp.handlers.hover),
  ["textDocument/signatureHelp"] = customise_handler(vim.lsp.handlers.signature_help),
}
-- vim.lsp.handlers["textDocument/hover"] = customise_handler(vim.lsp.handlers.hover)
-- vim.lsp.handlers["textDocument/signatureHelp"] = customise_handler(vim.lsp.handlers.signature_help)

-- -- Do not forget to use the on_attach function
-- -- require("lspconfig").util.on_setup({ handlers = handlers })
require("lspconfig").clangd.setup({ handlers = handlers })
require("lspconfig").lua_ls.setup({ handlers = handlers })
require("lspconfig").pyright.setup({ handlers = handlers })
-- require("lspconfig").rust_analyzer.setup({ handlers = handlers })
