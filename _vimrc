set nocompatible
set shell=cmd
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

set nobackup
set noundofile

" set the runtime path to include Vundle and initialize
set rtp+=$VIM/vimfiles/bundle/Vundle.vim/
let path='$VIM/vimfiles/bundle'
call vundle#begin(path)
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'

" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on

" Display line and column number in bottom ruler.
set ruler

" Display the line numbers.
set number

" Activate syntax highlighting.
syntax enable

" Set a nice theme.
color desert

if has("gui_running")
  " Set a nicer font.
  set guifont=Consolas:h11:cDEFAULT
  set lines=40 columns=120
  winp 850 120
  " Hide the toolbar.
  set guioptions-=T
endif

