require('catppuccin').setup({
  flavour = 'mocha', -- latte, frappe, macchiato, mocha
  transparent_background = true, -- Прозрачность
  styles = {
    comments = { 'italic' }, -- Стиль комментариев
    functions = { 'bold' }, -- Стиль функций
    keywords = { 'italic' }, -- Стиль ключевых слов
  },
})
vim.cmd('colorscheme catppuccin')
