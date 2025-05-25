local M = {}

function M.setup()
  require('rose-pine').setup({
    -- Основные настройки
    variant = 'moon',       -- 'main' (тёмный), 'dawn' (светлый), 'moon' (контрастный)
    disable_background = true,  -- true для прозрачного фона
    disable_float_background = false,  -- прозрачность плавающих окон

    -- Стили текста (italic, bold, underline)
    styles = {
      bold = true,
      italic = false,
      transparency = true,
    },

    -- Кастомизация подсветки (опционально)
    highlight_groups = {
      -- Примеры:
      Comment = { fg = 'muted', italic = true },
      LineNr = { fg = 'subtle' },
      CursorLine = { bg = 'highlight_med' },
      Pmenu = { bg = 'surface' },
    },

    -- Интеграция с LSP, Treesitter и др. (если нужно)
    before_highlight = function(group, highlight, palette)
      -- Например, изменить подсветку ошибок LSP
      if group == 'DiagnosticError' then
        highlight.fg = palette.love  -- Rose Pine использует 'love' для красного
      end
    end,
  })

  -- Применяем схему
  vim.cmd('colorscheme rose-pine')
end

return M
