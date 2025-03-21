local status, toggleterm = pcall(require, 'toggleterm')
if not status then
  return
end

-- Настройка плагина
toggleterm.setup({
  open_mapping = [[<c-\>]], -- Сочетание клавиш для открытия терминала
  direction = 'float', -- Режим отображения терминала (float, horizontal, vertical)
})

-- Функция для запуска live-server
function _G.run_live_server()
  local Terminal = require('toggleterm.terminal').Terminal
  local live_server = Terminal:new({
    cmd = "live-server", -- Команда для запуска live-server
    hidden = true,
    direction = 'float',
    on_open = function(term)
      vim.cmd('startinsert') -- Перейти в режим ввода
    end,
  })
  live_server:toggle()
end

-- Назначьте сочетание клавиш для запуска live-server
vim.api.nvim_set_keymap('n', '<leader>ls', '<cmd>lua run_live_server()<CR>', { noremap = true, silent = true })
