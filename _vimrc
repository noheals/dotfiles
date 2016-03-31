set nocompatible
set shell=cmd
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

set nobackup
<<<<<<< HEAD
set noundofile
=======
>>>>>>> 484d454a06f11d29e5137c605dbab6196455fc13

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
<<<<<<< HEAD
  set lines=40 columns=120
  winp 850 120
=======
>>>>>>> 484d454a06f11d29e5137c605dbab6196455fc13
  " Hide the toolbar.
  set guioptions-=T
endif

set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      if empty(&shellxquote)
        let l:shxq_sav = ''
        set shellxquote&
      endif
      let cmd = '"' . $VIMRUNTIME . '\diff"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3
  if exists('l:shxq_sav')
    let &shellxquote=l:shxq_sav
  endif
endfunction

