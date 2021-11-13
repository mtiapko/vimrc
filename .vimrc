" VimPlug:
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'morhetz/gruvbox'
Plug 'airblade/vim-gitgutter', { 'on': 'GitGutterEnable' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'majutsushi/tagbar'
Plug 'valloric/youcompleteme'
Plug 'takac/vim-hardtime'
Plug 'pangloss/vim-javascript'
Plug 'myhere/vim-nodejs-complete'
Plug 'tikhomirov/vim-glsl'
Plug 'ctrlpvim/ctrlp.vim'

call plug#end()

" YouCompleteMe
let g:ycm_global_ycm_extra_conf = '~/.vim/plugged/youcompleteme/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_clangd_args=['--header-insertion=never']
set completeopt-=preview

colorscheme gruvbox
set bg=dark
syntax on

set number
set ruler
set list
set splitbelow
set splitright
set tabstop=4
set shiftwidth=4
set colorcolumn=121
set listchars=tab:\|·,trail:·
set incsearch
set hlsearch
set wildmenu
set showcmd
syn keyword cTodo contained NOTE

" Open NERDTree
map <C-n> :NERDTreeToggle<CR>

" airline
"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

"let g:airline_symbols = {}
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.readonly = ''
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
"let g:airline_right_sep = ''
"let g:airline_right_alt_sep = ''

" Tagbar
let g:tagbar_show_linenumbers = 1

" Hard time
let g:hardtime_default_on = 0

" Go to declaration
map <F12> :YcmCompleter GoTo<CR>
map <F9>  :YcmDiags<CR>

" Move lines
nmap <A-Up> :m-2<CR>
nmap <A-Down> :m+<CR>
imap <A-Up> <Esc>:m-2<CR> i
imap <A-Down> <Esc>:m+<CR> i
vmap <A-Up> :m '<-2<CR> v '<,'>
vmap <A-Down> :m '>+<CR> v '<,'>

" Add/remove tab
vmap <Tab> :s/^\([^\n]\)/\t\1/e<CR> :noh<CR> v '<,'>
vmap <S-Tab> :s/^\t//e<CR> :noh<CR> v '<,'>

" Comment/uncomment block
vmap <C-w> :s/^\(\s*\)\(.\)/\1\/\/  \2/e<CR> :noh<CR> v '<,'>
vmap <C-r> :s/^\(\s*\)\/\/  /\1/e<CR> v '<,'>

nmap <C-S-PageUp> :tabm -1<CR>
nmap <C-S-PageDown> :tabm +1<CR>
