local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)
  -- Плагины
  use 'wbthomason/packer.nvim'  -- Менеджер плагинов
  use 'nvim-telescope/telescope.nvim'  -- Поиск файлов
  use 'nvim-lua/plenary.nvim'  -- Зависимость для Telescope
  use 'navarasu/onedark.nvim'  -- Цветовая схема
  use 'wbthomason/packer.nvim'
  use 'nvim-treesitter/nvim-treesitter'
  use 'nvim-treesitter/nvim-treesitter-textobjects'
  use 'nvim-treesitter/playground'
  use { "catppuccin/nvim", as = "catppuccin" }
  use 'shaunsingh/nord.nvim'
  -- Плагины для автодополнения
  use 'hrsh7th/nvim-cmp' -- Менеджер автодополнения
  use 'hrsh7th/cmp-buffer' -- Источник для автодополнения из текущего буфера
  use 'hrsh7th/cmp-path' -- Источник для автодополнения путей
  use 'hrsh7th/cmp-nvim-lsp' -- Источник для автодополнения из LSP
  use 'hrsh7th/cmp-nvim-lua' -- Источник для автодополнения Lua API
  use 'saadparwaiz1/cmp_luasnip' -- Интеграция с snippets
  use 'L3MON4D3/LuaSnip' -- Движок для snippets

  -- LSP (Language Server Protocol)
  use 'neovim/nvim-lspconfig' -- Конфигурация LSP
  use 'williamboman/mason.nvim' -- Установщик LSP серверов
  use 'williamboman/mason-lspconfig.nvim' -- Интеграция Mason с LSP

  use 'vim-airline/vim-airline'          -- Плагин airline
  use 'vim-airline/vim-airline-themes'   -- Темы для airline

   -- Плагин для терминала
  use {
    'akinsho/toggleterm.nvim',
    tag = '*',
    config = function()
      require('plugins.toggleterm')
    end
  }

  use {
    "preservim/nerdtree",
    config = function()
        vim.g.NERDTreeShowHidden = 1  -- Показывать скрытые файлы
        vim.g.NERDTreeQuitOnOpen = 1  -- Закрывать NERDTree после открытия файла
    end
}

use {
    'shaunsingh/nord.nvim',
    config = function()
      vim.g.nord_contrast = true       -- улучшенный контраст
      vim.g.nord_borders = true        -- границы для разделителей
      vim.g.nord_disable_background = true -- отключаем фон для прозрачности
      vim.g.nord_italic = false
      vim.cmd('colorscheme nord')       -- применяем тему
    end
  }
use({
  "rose-pine/neovim",
  as = "rose-pine",
  config = function()
    vim.cmd("colorscheme rose-pine")
  end
})

  if packer_bootstrap then
    require('packer').sync()
  end
end)
