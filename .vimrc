"  VimPlug
"  curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'morhetz/gruvbox'
Plug 'airblade/vim-gitgutter', { 'on': 'GitGutterEnable' }
Plug 'bling/vim-airline'
Plug 'valloric/youcompleteme'

call plug#end()

"  YouCompleteMe
let g:ycm_global_ycm_extra_conf = '~/.vim/plugged/youcompleteme/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_add_preview_to_completeopt = 0
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
set listchars=tab:\|\-
set incsearch
set wildmenu
set showcmd

"  Open NERDTree
map <C-n> :NERDTreeToggle<CR>

"  Go to declaration
map <F12> :YcmCompleter GoTo<CR>
map <F9>  :YcmDiags<CR>

"  Move lines
nmap <A-Up> :m-2<CR>
nmap <A-Down> :m+<CR>
imap <A-Up> <Esc>:m-2<CR> i
imap <A-Down> <Esc>:m+<CR> i
vmap <A-Up> :m '<-2<CR> v '<,'>
vmap <A-Down> :m '>+<CR> v '<,'>

"  Add/remove tab
vmap <Tab> :s/^\([^\n]\)/\t\1/e<CR> v '<,'>
vmap <S-Tab> :s/^\t//e<CR> v '<,'>

"  Comment/uncomment block
vmap <C-w> :s/^\(\s*\)\(.\)/\1\/\/  \2/e<CR> v '<,'>
vmap <C-r> :s/^\(\s*\)\/\/  /\1/e<CR> v '<,'>

