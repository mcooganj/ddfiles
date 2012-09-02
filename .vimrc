" MJ's .vimrc this is it folks ... yerp


" Kick the crutches -- disable arrow keys
    map <up> <nop>
    map <down> <nop>
    map <left> <nop>
    map <right> <nop>
    imap <up> <nop>
    imap <down> <nop>
    imap <left> <nop>
    imap <right> <nop>

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
Bundle 'mileszs/ack.vim.git'
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

nmap <D-Bslash> :Gread<CR>
imap <D-Bslash> <C-o>:Gread<CR>

" unimpaired: http://vimcasts.org/episodes/bubbling-text/

" Bubble single lines - select text in visual mode and shift it about
nmap <D-k> [e
nmap <D-j> ]e

" Bubble multiple lines - again, select text in visual mode and shift it
vmap <D-k> [egv
vmap <D-j> ]egv

" repeat: to add support to a plugin, add its name to the below command
" silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)
" silent! call repeat#set("\<commentary>MyWonderfulMap", v:count)

" commentary - just comment stuff in and out ... that's all
" `\\\` comments out a line (takes a count), `\\` comments motion (for example, `\\ap` comments out a paragraph).
" `\\` in visual mode comments out selection.

" easymotion - map the easymotion leader is `;` so `;;w` executes word-search
" see `:h easymotion-default-mappings` for deets, but most vimKeys ==> emKeys
let g:EasyMotion_leader_key = ';'

" sparkup - used for easier HTML coding: https://github.com/rstacruz/sparkup
" in html use ^E to expand skeleton, and ^N / ^P to glide through slots

" vim-rails - used for ruby on rails web development


" ack-vim - run ack inside vim, show results in a split window
" :Ack[!] [options] {pattern} [{directory}]

" conque plugin
" open a bash term inside vim: below or to the right
nmap <D-F11> :ConqueTermSplit bash<CR>
nmap <D-F12> :ConqueTermVSplit bash<CR>

" open an ipython term inside vim: below or to the right
nmap <D-I> :ConqueTermSplit ipython<CR>
nmap <D-i> :ConqueTermVSplit ipython<CR>

" kill color in vim-terminal (speeds things up)
let g:ConqueTerm_FastMode = 1
let g:ConqueTerm_Color = 0

" send current line to terminal, <CR>, and return focus to vim
nmap <D-F9> V<F9><CR><Esc><C-w>w


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

" Autosave when a buffer loses focus
autocmd BufLeave,FocusLost * silent! wall

""" <<<===


""" ===>>> General Settings
"set verbose=9                          " turn it on for testing
set timeout timeoutlen=500             " half a second to complete mapping...
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

" set leader to `,`
let g:mapleader = ","

" remap `;.` to <Esc>
imap '; <Esc>

" re-map Omni-Completion to <C-space>
inoremap <C-space> <C-x><C-o>

" Saving: re-mapped to ^s[x]

" ^s saves in both normal and insert modes, leader-s in normal mode
nmap <leader>s :w<cr>
map! <C-s> <C-o>:w<CR>

" for those stubborn occasions
nmap <C-sx> :w!<cr>

" Fast edit of .vimrc
map <leader>e :e! ~/.vimrc<cr>

" Fast exit of vim
map <leader>qw :q!<cr>

" Visually select the text that was last edited/pasted
nmap gV `[v`]

""" <<<===

