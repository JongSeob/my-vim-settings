"========================================================
" Disable lower version compatible
"========================================================
set nocompatible

"========================================================
" Basic Settings
"========================================================
colorscheme koehler

set nu        " 좌측에 Line Number 표시

set incsearch " / 로 문자 searching 시 글자를 입력할 때마다 그 위치로 이동

set showcmd   " command를 아래 표시줄에 표시

""" enter 입력 시 Indentation 자동추가
"set ai " auto indent
"set ci " c language style indent
set si " smart indent

set expandtab " tab키 입력 시 \t대신 공백문자 ' ' 삽입
set ts=4      " tab size
set sw=4      " shift width

set enc=utf-8

" (for Windows) VIM으로 파일 저장 시 임시파일들이 생기지 않도록 함
set nobackup
set noswapfile
set noundofile

" 다른 window로 움직일 때마다 현재 경로를(pwd 명령 실행 시 출력되는 경로)
" 해당 window에 열어놓은 파일 위치로 자동으로 변경
set autochdir

" syntax 관련 설정 활성화
syntax on

"========================================================
" shortcut mapping
"========================================================

" move cursor to other pane
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

" move to previous/next file
map <C-PAGEUP>   :prev<CR>
map <C-PAGEDOWN> :n<CR>

" Control split pane size
" 1. horizontal size up/down
nmap <A-,> <ESC>3<
imap <A-,> <ESC>3<
vmap <A-,> <ESC>3<
nmap <A-.> <ESC>3>
imap <A-.> <ESC>3>
vmap <A-.> <ESC>3>
" 2. vertical size UP/DOWN
nmap <A-k> <ESC>2+
imap <A-k> <ESC>2+
vmap <A-k> <ESC>2+
nmap <A-j> <ESC>2-
imap <A-j> <ESC>2-
vmap <A-j> <ESC>2-

" Change Font Size
nmap <C-\> <ESC>:set guifont=Monospace\ 
imap <C-\> <ESC>:set guifont=Monospace\ 
vmap <C-\> <ESC>:set guifont=Monospace\ 

"========================================================
" Customize "CursorLine"
"========================================================

hi clear CursorLine

hi CursorLine guibg=#5A5A5A
" hi Search guibg=peru guifg=cyan " customize highlight for searched hit

set cursorline
set hlsearch

"========================================================
" Customize "IndentLine"
"========================================================
nmap <A-i> :IndentLinesToggle<CR>

let g:indentLine_char        = '|'
let g:indentLine_char_list   = ['|', '¦', '┆', '┊']
" let g:indentLine_bgcolor_gui = '#FF5F00' " orange
let g:indentLine_color_gui   = '#A4E57E' " green

"========================================================
" Ctag File Paths
"========================================================
set tags=./tags
set tags+=../tags

"========================================================
" Customize "NERDTree"
"========================================================
let g:NERDTreeHijackNetrw         = 0
let g:NERDTreeShowBookmarks       = 1
let g:NERDTreeShowHidden          = 1
let g:NERDTreeDirArrowExpandable  = '|'
let g:NERDTreeDirArrowCollapsible = '+'

nmap <C-n> <ESC>:NERDTreeToggle<CR>
imap <C-n> <ESC>:NERDTreeToggle<CR>
vmap <C-n> <ESC>:NERDTreeToggle<CR>

"========================================================
" Define Plugins for getting managed by "vim-plug"
"
" More information: https://github.com/junegunn/vim-plug
"========================================================

call plug#begin()

Plug 'preservim/nerdtree'      " A tree explorer plugin to rule the Vim world. Bwahahaha!!

Plug 'godlygeek/tabular'       " Configurable, flexible, intuitive text aligning

Plug 'Yggdroot/indentLine'     " Show vertical lines for indent with conceal feature

Plug 'jikkujose/vim-visincr'   " The Visual Incrementing Tool

Plug 'vim-airline/vim-airline' " Lean and mean status/tabline that's light as air

Plug 'tpope/vim-surround'      " Plugin for deleting, changing, and adding "surroundings"

call plug#end()