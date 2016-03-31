set nocompatible
set shell=cmd
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

set nobackup
set noundofile

execute pathogen#infect()
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

