-- Прозрачный фон
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "none" })

-- Дополнительные элементы (опционально)
local transparent_groups = {
  "LineNr",
  "SignColumn",
  "StatusLine",
  "TabLine",
  "Pmenu",
  "CursorLine",
  "CursorLineNr",
}

for _, group in ipairs(transparent_groups) do
  vim.api.nvim_set_hl(0, group, { bg = "none" })
end
