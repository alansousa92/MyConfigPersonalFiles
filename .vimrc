"-- GERENCIADOR DE PLUGINS NO VIM - PLUG ----------------------------
" Especifique um diretório para os plug-ins
call plug#begin('~/.vim/plugged')
" vim-polyglot - Uma coleção de pacotes de linguagens para o Vim
Plug 'sheerun/vim-polyglot'

"Auto Pairs (Auto Pares)-Insira ou exclua colchetes, parenteses, aspas empar.
Plug 'jiangmiao/auto-pairs'

" O NERDTree é um explorador de sistema de arquivos para o editor Vim
Plug 'scrooloose/nerdtree'

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

" Fugitive.vim - Fugitive é o principal plugin Vim para Git. Ou talvez seja o principal plugin Git para o Vim? De qualquer forma, 
"é tão incrível, deveria ser ilegal. Por isso é chamado de Fugitivo.
Plug 'tpope/vim-fugitive'

" EMMET-VIM - emmet-vim é um plug-in vim que fornece suporte para expandir abreviações semelhantes ao emmet.
Plug 'mattn/emmet-vim'
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
let g:user_emmet_leader_key=','

" ayu-theme/ayu-vim - Tema moderno para VIMs modernos Recursos
Plug 'ayu-theme/ayu-vim'

"The NERD Commenter - Plugin Vim para poderes de comentários intensamente
"nerds. As funções de comentário são tão poderosas - nenhum comentário é
"necessário.
Plug 'preservim/nerdcommenter'

" Inicializar sistema de plugins
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

"-----------Syntastic Plugin setting up-----------------------------------------
"-----------Recommended settings----------------------------------------
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
"-----------Syntastic setting up-------------------------------------------

"-----------The NERD Commenter Plugin setting up------------------------------------
" Create default mappings
"let g:NERDCreateDefaultMappings = 1

" Add spaces after comment delimiters by default
"let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
"let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code
" indentation
"let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
"let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
"let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
"let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
"let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
"let g:NERDToggleCheckAllLines = 1
"-----------The NERD Commente setting up-------------------------------------------

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
\              ."\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n"
\              ."\t<title></title>\n"
\              ."\t<link rel=\"stylesheet\" href=\"\">\n"
\              ."\t<style type=\"text/css\"></style>\n"
\              ."</head>\n"
\              ."<body>\n\t${child}|\n</body>\n"
\              ."</html>",
\    },
\  },
\}

"----Emment-vim config Fim--------------------------------------------------

" Tema do vim-airline
let g:airline_theme='atomic'
" status tmux line
let g:tmuxline_powerline_separators = 0
let g:airline#extensions#tmuxline#enabled = 0


"-------- CONFIGURAÇÕES FIM PLUGINS -----------------------------

"+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

"--------- CONFIGURAÇÕES VIM DEFAULT USER - ALAN -----------------
" Habilita linhas
set number 
"Ativar o recuo automático do Vim
set autoindent
set smartindent
filetype indent on
"O vim tem autocompletar CSS embutido
"pressione ctrl + x ou ctrl + o.
"mantenha pressionado o ctrl e pressiono x e depois o
filetype plugin on
"set omnifunc=syntaxcomplete#complete 
set laststatus=2
"syntax highlight
syntax on 
"mostra caracteres
set showcmd
"Habilita todas as ações do mouse
set mouse=a
"set mouse=a
set noswapfile
set nocompatible
set showmode
set ruler
set encoding=UTF-8
set tabstop=4 
set shiftwidth=4
set expandtab
set hlsearch
set incsearch
set ignorecase
set smartcase
