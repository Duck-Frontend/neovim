require'nvim-treesitter.configs'.setup {
  -- Установка парсеров для языков
  ensure_installed = { "lua", "python", "javascript", "typescript", "cpp", "rust", "go", "bash", "json", "yaml", "html", "css", "markdown" },

  -- Включение подсветки синтаксиса
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },

  -- Включение дополнительных модулей
  refactor = {
    highlight_definitions = { enable = true },
    highlight_current_scope = { enable = false },
  },

  -- Включение текстовых объектов
  textobjects = {
    select = {
      enable = true,
      lookahead = true,
      keymaps = {
        ["af"] = "@function.outer",
        ["if"] = "@function.inner",
        ["ac"] = "@class.outer",
        ["ic"] = "@class.inner",
      },
    },
  },

  -- Включение playground (опционально)
  playground = {
    enable = true,
    disable = {},
    updatetime = 25,
    persist_queries = false,
    keybindings = {
      toggle_query_editor = 'o',
      toggle_hl_groups = 'i',
      toggle_injected_languages = 't',
      toggle_anonymous_nodes = 'a',
      toggle_language_display = 'I',
      focus_language = 'f',
      unfocus_language = 'F',
      update = 'R',
      goto_node = '<cr>',
      show_help = '?',
    },
  },
}
