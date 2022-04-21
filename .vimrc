" Especifique um diretório para os plug-ins
call plug#begin('~/.vim/plugged')

" O NERDTree é um explorador de sistema de arquivos para o editor Vim
Plug 'scrooloose/nerdtree'

" bela linha de status na parte inferior de cada janela do vim.
Plug 'vim-airline/vim-airline'

"Onehalf-Esquemas de cores limpos, vibrantes e agradáveis para Vim, Sublime Text, iTerm, gnome-terminal e muito mais.
Plug 'sonph/onehalf', { 'rtp': 'vim' }

" Este é o repositório oficial de temas para vim-airline
Plug 'vim-airline/vim-airline-themes'

" Gerador de linha de status tmux simples
Plug 'edkolev/tmuxline.vim'

":art: Esquemas de cores Light & Dark Vim inspirados no Material Design do Google
Plug 'nlknguyen/papercolor-theme'


" Inicializar sistema de plugins
call plug#end()

" --------------------------------------
" Linha de guia mais inteligente(Exibe automaticamente todos os buffers quando
" há apenas uma guia aberta
let g:airline#extensions#tabline#enabled = 1

"Configure Onehalf colorscheme
"set t_Co=256
"set cursorline
"colorscheme onehalflight
"let g:airline_theme='onehalfdark'
" lightline
" let g:lightline = { 'colorscheme': 'onehalfdark' }

"Configure Papercolor
"set background=dark
"colorscheme PaperColor

"Configure Theme Dracula
packadd! dracula
syntax enable
colorscheme dracula

"-----------NERDTree---------------------------------
" Inicie o NERDTree e deixe o cursor nele.
"autocmd VimEnter * NERDTree
" Inicie o NERDTree e coloque o cursor de volta na outra janela.
autocmd VimEnter * NERDTree | wincmd p
"Saia do Vim se NERDTree for a única janela restante na única guia.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
"-----------------------------------------------------------

" Tema do vim-airline
let g:airline_theme='base16'
" status tmux line
let g:tmuxline_powerline_separators = 0
"let g:airline#extensions#tmuxline#enabled = 0
" Habilita linhas
set nu

set laststatus=2

"syntax highlight
syntax on 
"mostra caracteres
set showcmd
"Habilita todas as ações do mouse
set mouse=r
set nocompatible

set showmode
set ruler
set encoding=utf-8

set tabstop=4 shiftwidth=4
set expandtab

set hlsearch
set incsearch
set ignorecase
set smartcase
