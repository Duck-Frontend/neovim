# Neovim Configuration

Персональная конфигурация Neovim с современными плагинами и настройками.

## Особенности

- 🌙 Цветовая схема Rose Pine (Moon variant)
- 🚀 Автодополнение через nvim-cmp
- 📝 Поддержка LSP
- 🌳 Treesitter для улучшенного синтаксиса
- ✨ Airline для красивого статусбара
- 🖥️ ToggleTerm для удобной работы с терминалом

## Требования

- Neovim 0.8.0 или выше
- Git
- Node.js (для LSP)
- [Packer](https://github.com/wbthomason/packer.nvim) (менеджер плагинов)

## Установка

1. Клонируйте репозиторий:
```bash
git clone https://github.com/your-username/neovim-config.git ~/.config/nvim
```

2. Установите Packer:
```bash
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

3. Запустите Neovim и установите плагины:
```bash
nvim
:PackerSync
```

## Структура конфигурации

```
~/.config/nvim/
├── init.lua              # Основной файл конфигурации
├── lua/
│   ├── core/            # Основные настройки
│   │   ├── options.lua  # Настройки редактора
│   │   ├── keymaps.lua  # Клавиатурные сокращения
│   │   ├── colors.lua   # Цветовые настройки
│   │   └── autocmds.lua # Автоматические команды
│   ├── plugins/         # Конфигурация плагинов
│   │   ├── init.lua     # Инициализация плагинов
│   │   ├── cmp.lua      # Настройки автодополнения
│   │   ├── lsp.lua      # Настройки LSP
│   │   ├── treesitter.lua # Настройки Treesitter
│   │   └── airline.lua  # Настройки статусбара
│   └── colorscheme.lua  # Настройки цветовой схемы
```

## Основные плагины

- [packer.nvim](https://github.com/wbthomason/packer.nvim) - Менеджер плагинов
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) - Автодополнение
- [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) - Конфигурация LSP
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) - Улучшенный синтаксис
- [vim-airline](https://github.com/vim-airline/vim-airline) - Статусбар
- [rose-pine](https://github.com/rose-pine/neovim) - Цветовая схема

## Клавиатурные сокращения

Основные клавиатурные сокращения можно найти в файле `lua/core/keymaps.lua`.

## Обновление

Для обновления конфигурации:

```bash
cd ~/.config/nvim
git pull
nvim
:PackerSync
```

## Лицензия

MIT 