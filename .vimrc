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

set ts=4      " tab size
set sw=4      " shift width
"set tw=0     " 개행문자 자동 삽입 방지
set expandtab " tab키 입력 시 \t대신 공백문자 ' ' 삽입

" 다른 window로 움직일 때마다 현재 경로를(pwd 명령 실행 시 출력되는 경로)
" 해당 window에 열어놓은 파일 위치로 자동으로 변경
set autochdir

" 자동 Indentation
"set ai " auto indent
"set ci " c language style indent
set si  " smart indent

set enc=utf-8

" (for Windows) VIM으로 파일 저장 시 임시파일들이 생기지 않도록 함
set nobackup
set noswapfile
set noundofile

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
" Customize CursorLine
"========================================================

hi clear CursorLine

hi CursorLine guibg=#5A5A5A
" hi Search guibg=peru guifg=cyan " customize highlight for searched hit

set cursorline
set hlsearch

"========================================================
" Customize IndentLine
"========================================================
nmap <A-i> :IndentLinesToggle<CR>

let g:indentLine_char        = '|'
let g:indentLine_char_list   = ['|', '¦', '┆', '┊']
" let g:indentLine_bgcolor_gui = '#FF5F00' " orange
let g:indentLine_color_gui   = '#A4E57E' " green

"========================================================
" Add ctag paths
"========================================================
set tags=./tags
set tags+=../tags

"========================================================
" Customize NERDTree
"========================================================
let g:NERDTreeHijackNetrw         = 0 " Default '1'.
let g:NERDTreeShowBookmarks       = 1
let g:NERDTreeShowHidden          = 1
let g:NERDTreeDirArrowExpandable  = '|'
let g:NERDTreeDirArrowCollapsible = '+'

nmap <C-n> <ESC>:NERDTreeToggle<CR>
imap <C-n> <ESC>:NERDTreeToggle<CR>
vmap <C-n> <ESC>:NERDTreeToggle<CR>

"========================================================
" Customize Tagbar
"========================================================

map <F12> :TagbarToggle<CR>

let g:tagbar_width=40

" sro: scope resolution operator
"      For example, in C++ and System Verilog it is "::" and
"      in Java it is "."
"
" kinds: A list of the "language kinds" that should be listed in Tagbar,
"        ordered by the order they should appear in the Tagbar window.
"        syntax:
"           {short}:{long}[:{fold}[:{stl}]]
"               {fold}: determines whether tags of this kind should be folded by default
"               {stl} : is used by the tagbar#currenttag() function
"
let g:tagbar_type_systemverilog = {
    \ 'ctagstype' : 'systemverilog',
    \ 'sro' : '::',
    \ 'kinds' : [
        \ 'l:covergroups',
        \ 'C:classes',
        \ 't:tasks',
        \ 'f:functions',
        \ 'm:modules',
        \ 'I:interfaces',
        \ 'e:typedefs',
        \ 'c:defines',
        \ 'J:packages',
    \]

\}

"========================================================
" Define Plugins for getting managed by "vim-plug"
"
" More information: https://github.com/junegunn/vim-plug
"========================================================

" 아래처럼 명시적으로 path를 지정할 수도 있다.
" path를 지정하지 않으면 자동으로 plugged/ 를 참조한다.
" call plug#begin('~/.vim/plugged')     " for Linux
" call plug#begin('~/vimfiles/plugged') " for Windows
call plug#begin()

Plug 'preservim/nerdtree'      " A tree explorer plugin to rule the Vim world. Bwahahaha!!

Plug 'preservim/tagbar'        " Provides an easy way to browse the tags of the current file and get an overview of its structure

Plug 'godlygeek/tabular'       " Configurable, flexible, intuitive text aligning

Plug 'Yggdroot/indentLine'     " Show vertical lines for indent with conceal feature

Plug 'jikkujose/vim-visincr'   " The Visual Incrementing Tool

Plug 'vim-airline/vim-airline' " Lean and mean status/tabline that's light as air

Plug 'tpope/vim-surround'      " Plugin for deleting, changing, and adding "surroundings"

call plug#end()