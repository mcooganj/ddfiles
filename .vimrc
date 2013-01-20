" MJ's .vimrc this is it folks ... yerp

set nocompatible		       " turn off vi compatability

" Kick the crutches -- disable arrow keys and esc
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" Bundles with vundle
" NOTE: comments on same line as Bundle commands cause errors

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" My Bundles will go here ...

" repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-unimpaired'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-commentary'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
Bundle 'mileszs/ack.vim.git'
Bundle 'rson/vim-conque'
Bundle 'jcfaria/Vim-R-plugin'
Bundle 'tpope/vim-surround'
Bundle 'Raimondi/delimitMate'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'chriskempson/vim-tomorrow-theme'
Bundle 'scrooloose/nerdtree'
Bundle 'int3/vim-taglist-plus'
Bundle 'gotcha/vimpdb'
Bundle 'vim-scripts/Gundo'
Bundle 'scrooloose/syntastic'
Bundle 'vim-scripts/vim-flake8'
Bundle 'vim-scripts/LaTeX-Box'
Bundle 'epeli/slimux'
Bundle 'ivanov/vim-ipython'
Bundle 'ervandrew/screen'

" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'

" non github repos
Bundle 'git://git.wincent.com/command-t.git'
" ...
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ

""" ===>>> The plugs

" ==>>> fugitive -- http://vimcasts.org/blog/2011/05/the-fugitive-series/
" turn off <C-g> and then use it for git commands
noremap <C-g> <Nop>
nnoremap <C-g>a :Gwrite<CR>
inoremap <C-g>a <C-o>:Gwrite<CR>

nnoremap <C-g>c :Gcommit<CR>
inoremap <C-g>c <C-o>:Gcommit<CR>

nnoremap <C-g>r :Gread<CR>
inoremap <C-g>r <C-o>:Gread<CR>

" ==>>> unimpaired: http://vimcasts.org/episodes/bubbling-text/

" Bubble single lines - select text in visual mode and shift it about
nnoremap <D-k> [e
nnoremap <D-j> ]e

" Bubble multiple lines - again, select text in visual mode and shift it
vnoremap <D-k> [egv
vnoremap <D-j> ]egv

" repeat: to add support to a plugin, add its name to the below command
silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)

" ==>>> commentary - just comment stuff in and out ... that's all
" `\\\` comments out a line (takes a count), `\\` comments motion (for example, `\\ap` comments out a paragraph).
" `\\` in visual mode comments out selection.

" ==>>> easymotion - map the easymotion leader is `;` so `;;w` executes word-search
" see `:h easymotion-default-mappings` for deets, but most vimKeys ==> emKeys
let g:EasyMotion_leader_key = ';'

" ==>>> sparkup - used for easier HTML coding: https://github.com/rstacruz/sparkup
" in html use ^E to expand skeleton, and ^N / ^P to glide through slots

" ==>>> vim-rails - used for ruby on rails web development

" ==>>> ack-vim - run ack inside vim, show results in a split window
" :Ack[!] [options] {pattern} [{directory}]

" ==>>> conque plugin
" open a bash term inside vim: below or to the right
nnoremap <D-F11> :ConqueTermSplit bash<CR>
inoremap <D-F11> <C-o>:ConqueTermSplit bash<CR>
nnoremap <D-F12> :ConqueTermVSplit bash<CR>
inoremap <D-F12> <C-o>:ConqueTermVSplit bash<CR>

" open an ipython term inside vim: below or to the right
nnoremap <D-I> :ConqueTermSplit ipython<CR>
inoremap <D-I> <C-o>:ConqueTermSplit ipython<CR>
nnoremap <D-i> :ConqueTermVSplit ipython<CR>
inoremap <D-i> <C-o>:ConqueTermVSplit ipython<CR>

" speeding things up - including killing color
let g:ConqueTerm_FastMode = 1
let g:ConqueTerm_Color = 0

" make escape ^l inside the Cterm
let g:ConqueTerm_EscKey = '<C-l>'

" send current line to terminal, <CR>, and return focus to vim
nnoremap <D-F9> V<F9><CR><C-l><C-w>p

" ==>>> Vim-R-plugin - it is undesirable to make this work with Conque
" this gets your underscore character back - i prefer <M-1>
let vimrplugin_screenplugin = 0
let vimrplugin_applescript = 0
let vimrplugin_underscore = 0

" map <M-1> to <- when editing .r files
autocmd FileType r inoremap <buffer> ¡ <space><-<space>

" show help docs in vertical split - if possible
let vimrplugin_vimpager = "vertical"

" each Vim instance call own R session (and why not, R doesn't thread)
let vimrplugin_by_vim_instance = 1

" `\ht` calls my custom function ht() on the object 'neath cursor
noremap <silent> <LocalLeader>hh :call RAction("head")<CR>
noremap <silent> <LocalLeader>tt :call RAction("tail")<CR>
noremap <silent> <LocalLeader>ht :call RAction("RApack::ht")<CR>
noremap <silent> <LocalLeader>pl :call RAction("plot")<CR>
noremap <silent> <LocalLeader>st :call RAction("str")<CR>
noremap <silent> <LocalLeader>sm :call RAction("summary")<CR>
noremap <silent> <LocalLeader>dm :call RAction("dim")<CR>

" ==>>> surround
" my fav is `ysiw <a href="www.rara.com">` which links word under cursor

" ==>>> delimitMate
" i use the defaults, and have no issues with conflicts

" ==>>> vim-indent-guides -- toggle with <D-Alt-G>
nnoremap <D-©> :IndentGuidesToggle<CR>
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
let g:indent_guides_color_change_percent = 30
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=dimgrey   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=darkgrey ctermbg=4


" ==>>> nerdtree
" open NT with F2
nnoremap <F2> :NERDTreeToggle<CR>

" ==>>> taglist: see http://mattpolito.info/post/1648956809/ctags-got-you-down
" brew install ctags
" sudo mv /usr/bin/ctags /usr/bin/ctags_orig
" go to a directory (say ~/Py/) and $ ctags -R .
" then :set tags+=/Users/mcooganj/Py/tags
" or index as you work ...
nnoremap <silent> <F3> :TlistToggle<CR>
let g:Tlist_GainFocus_On_ToggleOpen=1
nnoremap <D-F3> :TlistAddFiles %:p:h/*.%:e<CR>
nnoremap <D-F4> :TlistAddFiles %:p:h/*.*<CR>

" ==>>> vimpdb
" $ pip install vimpdb
" this isn't working ... have logged an error
"
" ==>>> Gundo -- http://sjl.bitbucket.org/gundo.vim/
" Vimcast -- http://vimcasts.org/episodes/undo-branching-and-gundo-vim/
" mapped to <D-¨> ->> D-alt-u
nnoremap <D-¨> :GundoToggle<CR>
let g:gundo_right = 1
"
" ==>>> syntastic
let g:syntastic_check_on_open=0
let g:syntastic_mode_map = { 'mode': 'active',
                               \ 'active_filetypes': ['python', 'tex'],
                               \ 'passive_filetypes': ['php'] }
"
" ==>>> vim-flake8
" $ pip install flake8
" set max line lenght before warning to 99char
let g:flake8_max_line_length=99
" re-map <D-8> so that it calls flake-8
autocmd FileType python noremap <buffer> <D-8> :call Flake8()<CR>
" run flake8 each time a .py file is saved
autocmd BufWritePost *.py call Flake8()
"
" ==>>> LaTeX-Box
" $ pip install psutil
" note: default mappings are in ~/.vim/ftplugin/tex.vim:
"
" ==>>> vim-slimux - more config later may help
noremap <C-c><C-c> :SlimuxREPLSendLine<CR>
noremap <C-c><C-c> :SlimuxREPLSendSelection<CR>

" ==>>> screen - more config later may help
let g:ScreenImpl = 'Tmux'


""" ===>>> Auto Commands {{{

" Automatically cd into the directory that the file is in
if strpart(expand("%:p:h"), 0, 16) == "/Users/mcooganj/"
   autocmd BufEnter * execute "chdir ".escape(expand("%:p:h"), ' ')
endif

" Remove trailing whitespace from the end of the file
autocmd BufRead,BufWrite * if ! &bin | silent! %s/\s\+$//ge | endif

" Autosave when a buffer loses focus
autocmd BufLeave,FocusLost * silent! wall

""" <<<=== }}}

" from tim pope's .vimrc    https://github.com/tpope/tpope/blob/master/.vimrc
if has("eval")
function! SL(function)
  if exists('*'.a:function)
    return call(a:function,[])
  else
    return ''
  endif
endfunction
endif

""" ===>>> General Settings
"set verbose=9                         " turn it on for testing
set timeoutlen=1500                    " 1 1/2 seconds to complete mapping...
set ttimeoutlen=50                     " faster <esc>
set noerrorbells                       " turn off error bells
set visualbell                         " turn on visual error-bell
set winaltkeys=no                      " take Alt- back from the GUI
set autowrite                          " save a buffer when you leave it
set autochdir                          " cd to dir containing file in buffer

" appearance -
set bg=dark                            " set background to dark
set switchbuf=usetab,newtab            " switch to the existing tab if already open, new if not.
set laststatus=2                       " always show last line
set cursorline                         " highlight current line

" the good stuff
set ofu=syntaxcomplete#Complete        " turn on Omni Completion
filetype plugin indent on	       " detect filetype and load plugin
set smartindent
syntax enable			       " highlight syntax: use 'enable' -- not 'on'

" signposts
set history=100                        " save a list of the prior 100 commands
set number			       " show line number
set ruler			       " show column number

" search
set hlsearch			       " highlight what we find
set incsearch			       " snap to partial matches as `/string` is typed
set showmatch                          " show matching paren
set matchtime=1                        " spend < 1/10th of a sec finding matching paren
set ignorecase                         " default is to look across cases
set smartcase                          " except when search string incl UPPERS
set statusline=[%n]\ %<%.99f\ %h%w%m%r%{SL('CapsLockStatusline')}%y%{SL('fugitive#statusline')}%#ErrorMsg#%{SL('SyntasticStatuslineFlag')}%*%=%-14.(%l,%c%V%)\ %P


set showcmd		               " show command as you type

" command line tab completion stuff
set wildmenu		               " cmd cpln - show matches on <Tab>
set wildmode=list:longest,full         " make cmdline tab completion similar to bash


" formatting tweaks
set backspace=2                        " turn on `normal` backspace
set expandtab		               " expand <Tab>s into <space>s
set softtabstop=4	               " a tab is worth 4<space>
set shiftwidth=4	               " an indent is worth 4<space>
set nowrap                             " don't wrap-for me

" keep my backups cleaned-up
set backup                             " Activate backup stuff
set backupdir=~/.vim/backup            " the backup dir (must create this)
set directory=~/.vim/tmp               " the temp dir (also must be made)

""" <<<===

""" ===>>> abbreviations

source ~/vimHelpers/alts/abrev.vim            " source abbreviations dictionary

" eat characters after abbreviation this is
function! Eatchar(pat)
      let c = nr2char(getchar(0))
      return (c =~ a:pat) ? '' : c
endfunction

""" <<<===


""" ===>>> Mappings

" better escape - just map caps to contorl and then use C-[

" set leader to `,` - note localleader remains `\` for ftplugins
let g:mapleader = ","

" Faster Completion
inoremap <tab> <C-N>
inoremap <C-space> <C-x><C-o>

" Saving: re-mapped to ^s[x]

" ^s saves in both normal and insert modes, leader-s in normal mode
nnoremap <leader>s :w<cr>
inoremap <C-s> <C-o>:w<CR>
nnoremap <C-s> :w!<cr>

" hate these errors - note, fixing Q == q is dangerous
:ca WQ wq
:ca Wq wq
:ca W w

" Fast edit of .vimrc
noremap <leader>e :e ~/dotfiles/.vimrc<cr>
noremap <leader>sv :source ~/dotfiles/.vimrc<cr>
noremap <leader>R :e ~/dotfiles/.Rprofile<cr>

" Fast exit of vim
noremap <leader>qw :q!<cr>

" Visually select the text that was last edited/pasted
nnoremap gV `[v`]

""" <<<===

""" ===>>> misc stuff
" http://stackoverflow.com/questions/1218390/what-is-your-most-productive-shortcut-with-vim

" ==>>> tomorrow-night - set this last!
colorscheme Tomorrow-Night-Bright                       " set color-scheme to TNB
