set number relativenumber
filetype plugin indent on
syntax on
set expandtab
set smarttab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set foldcolumn=2
set noerrorbells
set novisualbell
set mouse= 
set encoding=utf8
autocmd FocusLost * silent! wa



call plug#begin()

Plug 'joshdick/onedark.vim'
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'skammer/vim-css-color'
Plug 'mattn/emmet-vim'
Plug 'pangloss/vim-javascript'
Plug 'flazz/vim-colorschemes'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()


nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
let g:cssColorVimDoNotMessMyUpdatetime = 1

colorscheme onedark



" Включаем поддержку LSP (Language Server Protocol)
set hidden
set updatetime=300
set shortmess+=c

" Включаем автодополнение
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Подтверждение выбора автодополнения
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Функция для проверки Backspace
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Включаем подсветку символов и документации
autocmd CursorHold * silent call CocActionAsync('highlight')

" Навигация по ошибкам
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Переход к определению
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Переименование символа
nmap <leader>rn <Plug>(coc-rename)

" Форматирование кода
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" Показ документации
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction




let g:airline#extensions#tabline#enabled = 0 " Включаем отображение вкладок
let g:airline#extensions#tabline#formatter = 'default' " Форматирование вкладок
let g:airline_powerline_fonts = 1

let g:airline_section_z = airline#section#create(['linenr', ':%3v'])

" Включаем поддержку Unicode-символов
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" Устанавливаем символы для отображения
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.dirty='⚡'

let g:airline_theme = 'onedark'
let g:airline#extensions#coc#enabled = 1
