-- Подключение основных настроек
require('core.options')
require('core.keymaps')
require('core.autocmds')
require('core.colors')
-- Подключение настроек плагинов
require('plugins.init')
require('plugins.treesitter')
-- Подключение цветовой схемы
require('colorscheme').setup()

-- Подключение автодополнения и LSP
require('plugins.cmp')
require('plugins.lsp')
require('plugins.airline')
