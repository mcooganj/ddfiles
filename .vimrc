" MJ's .vimrc this is it folks ... yerp

" Bundles with vundle
" NOTE: comments after Bundle command are not allowed..


set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" My Bundles will go here ...
"

" repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-unimpaired'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-commentary'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
Bundle 'ervandew/screen'
Bundle 'rson/vim-conque'
Bundle 'vim-scripts/Vim-R-plugin'
Bundle 'tpope/vim-surround'
Bundle 'Raimondi/delimitMate'
Bundle 'wincent/Command-T'
Bundle 'mutewinter/vim-indent-guides'
Bundle 'nanotech/jellybeans.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'vim-scripts/taglist.vim'
Bundle 'gotcha/vimpdb'
Bundle 'vim-scripts/Gundo'
Bundle 'kevinw/pyflakes-vim'
Bundle 'vim-scripts/pep8'
Bundle 'vim-scripts/LaTeX-Box'
Bundle 'docunext/closetag.vim'

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

""" ===>>> Working with the plugs

" fugitive -- http://vimcasts.org/blog/2011/05/the-fugitive-series/
nmap <C-a> :Gwrite<CR>
imap <C-a> <C-o>:Gwrite<CR>

nmap <C-c> :Gcommit<CR>
imap <C-c> <C-o>:Gcommit<CR>

nmap <D-0> :Gread<CR>
imap <D-0> <C-o>:Gread<CR>

" unimpaired: http://vimcasts.org/episodes/bubbling-text/

" Bubble single lines
nmap <D-Up> [e
nmap <D-Down> ]e

" Bubble multiple lines
vmap <D-Up> [egv
vmap <D-Down> ]egv

" repeat: to add support to a plugin, add its name to the below command
" silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)
silent! call repeat#set("\<commentary>MyWonderfulMap", v:count)

" commentary
" \\\ comments out a line (takes a count), \\ comments motion (for example, \\ap comments out a paragraph).
" \\ in visual mode comments out selection.
" this is it

" easymotion


" sparkup


" vim-rails


" screen


" conque

" Vim-R-plugin
let vimrplugin_applescript = 0
let vimrplugin_screenplugin = 0
let vimrplugin_underscore = 0

" map <D-1> to <- when editing .r files
autocmd FileType r inoremap <buffer> <D-1> <space><-<space>

" surround


" delimitMate


" Command-T (causing me headaches)


" vim-indent-guides


" Jellybeans - if you call jellybeans prior to Bundle, it won't be found
color jellybeans                       " set color-scheme to jellybeans

" nerdtree



" nerdcommenter


" taglist
"
"
" vimpdb
"
"
" Gundo
"
"
" pyflakes
"
"
" pep8
"
"
" LaTeX-Box
"
"
" closetag

" example Python inoremap i made for testing <buffer> maps
autocmd FileType python inoremap <buffer> <D-1> <space>==<space>
" MJ's .vimrc this is it folks ... yerp

""" ===>>> Auto Commands

" Automatically cd into the directory that the file is in
"autocmd BufEnter * execute "chdir ".escape(expand("%:p:h"), ' ')

" Remove trailing whitespace from the end of the file
autocmd BufRead,BufWrite * if ! &bin | silent! %s/\s\+$//ge | endif

" Open each buffer in its own tab

""" <<<===


""" ===>>> General Settings
"set verbose=9                          " turn it on for testing
set nocompatible		       " turn off vi compatability
set noerrorbells                       " turn off error bells
set visualbell                         " turn on visual error-bell
set winaltkeys=no                      " take Alt- back from the GUI
set autowrite                          " save a buffer when you leave it

" appearance -
set bg=dark                            " set background to dark
set switchbuf=usetab,newtab           " switch to the existing tab if already open, new if not.


" the good stuff
set ofu=syntaxcomplete#Complete        " turn on Omni Completion
filetype plugin indent on	       " detect filetype and load plugin
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

set showcmd		               " show command as you type

" command line tab completion stuff
set wildmenu		               " cmd cpln - show matches on <Tab>
set wildmode=list:longest,full         " make cmdline tab completion similar to bash


" formatting tweaks
set backspace=2                        " turn on `normal` backspace
set expandtab		               " expand <Tab>s into <space>s
set softtabstop=3	               " a tab is worth 3<space>
set shiftwidth=4	               " an indent is worth 4<space>
set showmatch                          " show matching paren
set matchtime=1                        " 1/10th sec to find matching paren
set nowrap                             " don't wrap-for me

" keep my backups cleaned-up
set backup                             " Activate backup stuff
set backupdir=~/.vim/backup            " the backup dir (must create this)
set directory=~/.vim/tmp               " the temp dir (also must be made)

""" <<<===

""" ===>>> abbreviations

source ~/vim/alts/abrev.txt            " source abbreviations dictionary

" eat characters after abbreviation
function! Eatchar(pat)
        let c = nr2char(getchar(0))
        return (c =~ a:pat) ? '' : c
endfunction

""" <<<===


""" ===>>> Mappings

" re-map Omni-Completion to <C-space>
inoremap <C-space> <C-x><C-o>

" Saving: re-mapped to ^s[x]

" ^s saves in normal mode
nmap <leader>w :w<cr>
imap <C-w> <C-o>:w<CR>

" for those stubborn occasions
nmap <C-sx> :w!<cr>

" Fast edit of .vimrc
map <leader>e :e! ~/.vimrc<cr>

" Fast exit of vim
map <leader>qw :q!<cr>

" Visually select the text that was last edited/pasted
nmap gV `[v`]

""" <<<===

