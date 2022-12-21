"--------- CONFIGURAÇÕES VIM DEFAULT USER - ALAN -----------------
"set t_Co=256
set number "Habilita linhas
set autoindent "Ativar o recuo automático do Vim
set smartindent
filetype plugin indent on
"set omnifunc=syntaxcomplete#complete 
set laststatus=2
syntax on "Habilita a sintaxe destaqe
set showcmd "Exibe caracteres
set mouse=a "Habilita todas as ações do mouse
set noswapfile
set nobackup
set nocompatible
set showmode
set ruler
set encoding=UTF-8
set tabstop=4 softtabstop=4 
set shiftwidth=4
set expandtab
set hlsearch
set incsearch
set ignorecase
set smartcase
"set cursorline
"set wildmenu

"O vim tem autocompletar CSS embutido
"pressione ctrl + x ou ctrl + o.
"mantenha pressionado o ctrl e pressiono x e depois o

"-- GERENCIADOR DE PLUGINS NO VIM - PLUG ----------------------------
" Especifique um diretório para os plug-ins
call plug#begin('~/.vim/plugged')
" vim-polyglot - Uma coleção de pacotes de linguagens para o Vim
Plug 'sheerun/vim-polyglot'

"Auto Pairs (Auto Pares)-Insira ou exclua colchetes, parenteses, aspas empar.
Plug 'jiangmiao/auto-pairs'

" O NERDTree é um explorador de sistema de arquivos para o editor Vim
Plug 'scrooloose/nerdtree'

" NERDTree git plugin - mostra sinalizadores de status do git
Plug 'Xuyuanp/nerdtree-git-plugin'

" Syntastic - Hacks de verificação de sintaxe para vim, Syntastic é um plugin
" de verificação de sintaxe para Vim criado por Martin Grenfell. 
Plug 'scrooloose/syntastic'

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

"Retro groove color scheme for Vim
Plug 'morhetz/gruvbox'

" Fugitive.vim - Fugitive é o principal plugin Vim para Git. Ou talvez seja o principal plugin Git para o Vim? De qualquer forma, 
"é tão incrível, deveria ser ilegal. Por isso é chamado de Fugitivo.
Plug 'tpope/vim-fugitive'

" EMMET-VIM - emmet-vim é um plug-in vim que fornece suporte para expandir abreviações semelhantes ao emmet.
Plug 'mattn/emmet-vim'
"let g:user_emmet_install_global = 1
"autocmd FileType html,css,php EmmetInstall
let g:user_emmet_leader_key=','

" ayu-theme/ayu-vim - Tema moderno para VIMs modernos Recursos
Plug 'ayu-theme/ayu-vim'

"colorscheme wal
Plug 'dylanaraps/wal.vim'

"colorscheme vim-monokai-tasty
Plug 'patstockwell/vim-monokai-tasty'

call plug#end()

"+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
"-------- CONFIGURAÇÕES INICIO PLUGINS-------------------------------
" Linha de guia mais inteligente(Exibe automaticamente todos os buffers quando
" há apenas uma guia aberta
let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#formatter = 'default'

"Configure Onehalf colorscheme
"set t_Co=256
"set cursorline
"colorscheme onehalfdark
"let g:airline_theme='onehalfdark'
"lightline
"let g:lightline = { 'colorscheme': 'onehalfdark' }

"Configure gruvbox colorscheme
"autocmd vimenter * ++nested colorscheme gruvbox
"set background=dark    " Setting dark mode
"set background=light   " Setting light mode

"configure colorscheme wal
"colorscheme wal

"configure vim-monokai-tasty
colorscheme vim-monokai-tasty
let g:airline_theme='monokai_tasty'

"Configure Papercolor
"set t_Co=256
"set background=dark
"colorscheme PaperColor
"let g:lightline = { 'colorscheme': 'PaperColor' }

"Configure Theme Dracula
"packadd! dracula
"syntax enable
"colorscheme dracula

"Configurea ayu theme
"set termguicolors     " enable true colors support
"let ayucolor="light"  " for light version of theme
"let ayucolor="mirage" " for mirage version of theme
"let ayucolor="dark"   " for dark version of theme
"colorscheme ayu

"-----------NERDTree start-----------------------------------------
" Mapeando teclas para NERDTree
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-c> :NERDTreeClose<CR>
nnoremap <C-r> :NERDTreeRefreshRoot<CR>
" Inicie o NERDTree e deixe o cursor nele.
autocmd VimEnter * NERDTree
" Inicie o NERDTree e coloque o cursor de volta na outra janela.
"autocmd VimEnter * NERDTree | wincmd p
"Saia do Vim se NERDTree for a única janela restante na única guia.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

let g:NERDTreeGitStatusUseNerdFonts = 1

" Como indicar cada arquivo não rastreado em um diretorio não rastreado?
let g:NERDTreeGitStatusUntrackedFilesMode = 'all'
"-----------NERDTree end-------------------------------------------

"-----------Syntastic Plugin setting up-----------------------------------------
"-----------Recommended settings----------------------------------------
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
"-----------Syntastic setting up-------------------------------------------

"----Emment-vim config-Snippet para adicionar metatag para capacidadede resposta--
let g:user_emmet_settings = {
\  'variables': {'lang': 'pt-br'},
\  'html': {
\    'default_attributes': {
\      'option': {'value': v:null},
\      'textarea': {'id': v:null, 'name': v:null, 'cols': 10, 'rows': 10},
\    },
\    'snippets': {
\      'html:5': "<!DOCTYPE html>\n"
\              ."<html lang=\"${lang}\">\n"
\              ."<head>\n"
\              ."\t<meta charset=\"${charset}\">\n"
\              ."\t<title></title>\n"
\              ."\t<link rel=\"stylesheet\" href=\"\">\n"
\              ."</head>\n"
\              ."<body>\n\t${child}|\n</body>\n"
\              ."</html>",
\    },
\  },
\}

"----Emment-vim config Fim--------------------------------------------------

" Tema do vim-airline
let g:airline_theme='badwolf'
" status tmux line
let g:tmuxline_powerline_separators = 0
let g:airline#extensions#tmuxline#enabled = 0

"-------- CONFIGURAÇÕES FIM PLUGINS -----------------------------
