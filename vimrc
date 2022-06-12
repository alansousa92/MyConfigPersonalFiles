"-- GERENCIADOR DE PLUGINS NO VIM - PLUG ----------------------------
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

" Fugitive.vim - Fugitive é o principal plugin Vim para Git. Ou talvez seja o principal plugin Git para o Vim? De qualquer forma, 
"é tão incrível, deveria ser ilegal. Por isso é chamado de Fugitivo.
Plug 'tpope/vim-fugitive'

" EMMET-VIM - emmet-vim é um plug-in vim que fornece suporte para expandir abreviações semelhantes ao emmet.
Plug 'mattn/emmet-vim'
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

" vim-floaterm - :star2: Gerenciador de terminal para (neo)vim
Plug 'voldikss/vim-floaterm'

" ayu-theme/ayu-vim - Tema moderno para VIMs modernos Recursos
Plug 'ayu-theme/ayu-vim'


" Inicializar sistema de plugins
call plug#end()


"-------- CONFIGURAÇÕES INICIO PLUGINS -----------------------
" Linha de guia mais inteligente(Exibe automaticamente todos os buffers quando
" há apenas uma guia aberta
let g:airline#extensions#tabline#enabled = 1

"Configure Onehalf colorscheme
"set t_Co=256
set cursorline
"colorscheme onehalfdark
"let g:airline_theme='onehalfdark'
"lightline
"let g:lightline = { 'colorscheme': 'onehalfdark' }

"Configure Papercolor
"set t_Co=256
"set background=dark
"colorscheme PaperColor
"let g:lightline = { 'colorscheme': 'PaperColor' }
"let g:airline_theme='papercolor'

"Configure Theme Dracula
"packadd! dracula
"syntax enable
"colorscheme dracula

"Configurea ayu theme
set termguicolors     " enable true colors support
"let ayucolor="light"  " for light version of theme
"let ayucolor="mirage" " for mirage version of theme
let ayucolor="dark"   " for dark version of theme
colorscheme ayu

"-----------NERDTree start-----------------------------------------
" Inicie o NERDTree e deixe o cursor nele.
"autocmd VimEnter * NERDTree
" Inicie o NERDTree e coloque o cursor de volta na outra janela.
autocmd VimEnter * NERDTree | wincmd p
"Saia do Vim se NERDTree for a única janela restante na única guia.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
"-----------NERDTree end-------------------------------------------

" Tema do vim-airline
let g:airline_theme='dark'
" status tmux line
let g:tmuxline_powerline_separators = 0
"let g:airline#extensions#tmuxline#enabled = 0
"-------- CONFIGURAÇÕES FIM PLUGINS -----------------------------

"--------- CONFIGURAÇÕES VIM DEFAULT USER - ALAN -----------------
" Habilita linhas
set number 
set laststatus=2
"syntax highlight
syntax on 
"mostra caracteres
set showcmd
"Habilita todas as ações do mouse
set mouse=r
set mouse=a
set noswapfile
set nocompatible
set showmode
set ruler
set encoding=UTF-8
set tabstop=4 "shiftwidth=4
set expandtab
set hlsearch
set incsearch
set ignorecase
set smartcase
