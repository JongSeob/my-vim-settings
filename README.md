# my_gvim_settings

새 기기에서 기존 vim 세팅을 바로 불러올 수 있게 vim 환경 파일들을 모아놓은 저장소.

# Quitck Start

1. Create directory
   1. (Windows): 'C:\\Users\\{user_name}\\vimfiles'
   2. (Linux): '~/.vim'
2. Copy 'autoload' into this directory
3. Copy 'systemverilog_uvm/\*' into this directory
4. Exectue vim and run below vim command:

```vim
:PlugInstall
```

# plugin list

- [vim-plug](https://github.com/junegunn/vim-plug)
- [nerdtree](https://github.com/preservim/nerdtree)
- [tagbar](https://github.com/preservim/tagbar)
- [tabular](https://github.com/godlygeek/tabular)
- [indentLine](https://github.com/Yggdroot/indentLine)
- [vim-visincr](https://github.com/jikkujose/vim-visincr)
- [vim-airline](https://github.com/vim-airline/vim-airline)
- [vim-surround](https://github.com/tpope/vim-surround)

## **vim-plug**

플러그인 매니저 기능을 하는 플러그인. vimrc 파일에 listup 해놓은 vim plugin들을 자동으로 install해주고, 이를 load해주는 기능을 제공.

아래는 plugin들을 listup하기 위한 .vimrc 파일 내용 예시이다. 현재 저장소의 .vimrc 파일에서도 기술되어 있음.

```vim
call plug#begin()
Plug 'preservim/nerdtree'      " A tree explorer plugin to rule the Vim world. Bwahahaha!!
Plug 'preservim/tagbar'        " Provides an easy way to browse the tags of the current file and get an overview of its structure
Plug 'godlygeek/tabular'       " Configurable, flexible, intuitive text aligning
Plug 'Yggdroot/indentLine'     " Show vertical lines for indent with conceal feature
Plug 'jikkujose/vim-visincr'   " The Visual Incrementing Tool
Plug 'vim-airline/vim-airline' " Lean and mean status/tabline that's light as air
Plug 'tpope/vim-surround'      " Plugin for deleting, changing, and adding \"surroundings\"
call plug#end()
```

위와 같이 plug#begin() ~ plug#end() 사이에 listup된 plugin들은\
vim 실행 중에 아래와 같이 command를 실행하면 일괄적으로 설치된다.

```vim
:PlugInstall
```

그리고 위 명령어로 설치한 plugin들은 모두 .vim(Linux) 혹은 vimfiles(Windows) 경로 내부의

plugged/ 폴더에 자동으로 옮겨진다. 그리고 이 폴더 내의 plugin들은 vim-plug에 의해 자동으로 load된다.

vim-plug는 plugin 관리를 위해 필수적이므로 'autoload/plug.vim' 경로에 미리 넣어두었다.

![important] 호홓

# systemverilog_uvm

아래 2개 vim syntax 파일들을 합치고, 일부 내용을 customizing한 파일

- [verilog_systemverilog v1.2](https://www.vim.org/scripts/script.php?script_id=1586)
- [uvm_vim_extras](https://github.com/dcblack/uvm_vim_extras)

# ".ctags" & "ctags guide.txt"

## .ctags

ctags에서는 verilog & system verilog tagging을 지원하지 않기 때문에
위 두 언어를 tagging 할 수 있도록 만들기 위해 작성한 파일

## ctags guide.txt

위 .ctags 파일 내용을 활용하여 system verilog tag파일을 생성 하기 위한

명령어와 그에 대한 설명을 적어놓은 파일

# .vimrc

- plug.vim 을 이용해 설치하기 위한 Plugin 목록
- keyboard shortcut 설정
- Nerdtree, IndentLine 등과 같은 플러그인 설정
- 기타 등등..
