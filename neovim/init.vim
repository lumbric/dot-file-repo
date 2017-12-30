"
"  ██▓     █    ██  ███▄ ▄███▓ ▄▄▄▄    ██▀███   ██▓ ▄████▄    ██████
" ▓██▒     ██  ▓██▒▓██▒▀█▀ ██▒▓█████▄ ▓██ ▒ ██▒▓██▒▒██▀ ▀█  ▒██    ▒
" ▒██░    ▓██  ▒██░▓██    ▓██░▒██▒ ▄██▓██ ░▄█ ▒▒██▒▒▓█    ▄ ░ ▓██▄
" ▒██░    ▓▓█  ░██░▒██    ▒██ ▒██░█▀  ▒██▀▀█▄  ░██░▒▓▓▄ ▄██▒  ▒   ██▒
" ░██████▒▒▒█████▓ ▒██▒   ░██▒░▓█  ▀█▓░██▓ ▒██▒░██░▒ ▓███▀ ░▒██████▒▒
" ░ ▒░▓  ░░▒▓▒ ▒ ▒ ░ ▒░   ░  ░░▒▓███▀▒░ ▒▓ ░▒▓░░▓  ░ ░▒ ▒  ░▒ ▒▓▒ ▒ ░
" ░ ░ ▒  ░░░▒░ ░ ░ ░  ░      ░▒░▒   ░   ░▒ ░ ▒░ ▒ ░  ░  ▒   ░ ░▒  ░ ░
"   ░ ░    ░░░ ░ ░ ░      ░    ░    ░   ░░   ░  ▒ ░░        ░  ░  ░
"     ░  ░   ░            ░    ░         ░      ░  ░ ░            ░
"                                   ░              ░
"  ███▄    █ ▓█████  ▒█████   ██▒   █▓ ██▓ ███▄ ▄███▓
"  ██ ▀█   █ ▓█   ▀ ▒██▒  ██▒▓██░   █▒▓██▒▓██▒▀█▀ ██▒
" ▓██  ▀█ ██▒▒███   ▒██░  ██▒ ▓██  █▒░▒██▒▓██    ▓██░
" ▓██▒  ▐▌██▒▒▓█  ▄ ▒██   ██░  ▒██ █░░░██░▒██    ▒██
" ▒██░   ▓██░░▒████▒░ ████▓▒░   ▒▀█░  ░██░▒██▒   ░██▒
" ░ ▒░   ▒ ▒ ░░ ▒░ ░░ ▒░▒░▒░    ░ ▐░  ░▓  ░ ▒░   ░  ░
" ░ ░░   ░ ▒░ ░ ░  ░  ░ ▒ ▒░    ░ ░░   ▒ ░░  ░      ░
"    ░   ░ ░    ░   ░ ░ ░ ▒       ░░   ▒ ░░      ░
"          ░    ░  ░    ░ ░        ░   ░         ░
"                                 ░
"  ▄████▄   ▒█████   ███▄    █   █████▒██▓  ▄████
" ▒██▀ ▀█  ▒██▒  ██▒ ██ ▀█   █ ▓██   ▒▓██▒ ██▒ ▀█▒
" ▒▓█    ▄ ▒██░  ██▒▓██  ▀█ ██▒▒████ ░▒██▒▒██░▄▄▄░
" ▒▓▓▄ ▄██▒▒██   ██░▓██▒  ▐▌██▒░▓█▒  ░░██░░▓█  ██▓
" ▒ ▓███▀ ░░ ████▓▒░▒██░   ▓██░░▒█░   ░██░░▒▓███▀▒
" ░ ░▒ ▒  ░░ ▒░▒░▒░ ░ ▒░   ▒ ▒  ▒ ░   ░▓   ░▒   ▒
"   ░  ▒     ░ ▒ ▒░ ░ ░░   ░ ▒░ ░      ▒ ░  ░   ░
" ░        ░ ░ ░ ▒     ░   ░ ░  ░ ░    ▒ ░░ ░   ░
" ░ ░          ░ ░           ░         ░        ░
" ░
"
"
"
" Sources of inspiration for this file:
"   - https://github.com/tpope/vim-sensible/blob/master/plugin/sensible.vim
"   - https://github.com/vim/vim/blob/master/runtime/defaults.vim
"   - https://github.com/spf13/spf13-vim


" Stupid color theme workaround for VIM...
" see https://stackoverflow.com/a/10778126/859591
set t_Co=256  " Note: Neovim ignores t_Co and other terminal codes.


" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible


"*****************************************************************************
"" Plug install packages
"*****************************************************************************
call plug#begin('~/.local/share/nvim/plugged')

" General
Plug 'tpope/vim-sensible'              " almost everything already here, might be removed in future
                                       " See here https://github.com/tpope/vim-sensible/blob/master/plugin/sensible.vim


" Themes
Plug 'freeo/vim-kalisi'                " Theme
Plug 'jnurmine/Zenburn'                " theme used in old days (before 2016)
"Plug 'altercation/vim-colors-solarized'
Plug 'vim-airline/vim-airline'


" Open and find files
Plug 'scrooloose/nerdtree'
Plug 'mhinz/vim-grepper'                " Search with ag, rg, grep etc for files
Plug 'ctrlpvim/ctrlp.vim'
"Plug 'git://git.wincent.com/command-t.git'   " similar to CTRL+P
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }    " seems to be faster than CTRL+P!


" General programming helpers
Plug 'tpope/vim-surround'               " surround text with parentheses
Plug 'tpope/vim-fugitive'               " GIT integration
Plug 'a.vim'                            " C/Cpp change between .c and .h files
Plug 'scrooloose/nerdcommenter'         " comment out/in
Plug 'tmhedberg/matchit'                " better match with %
Plug 'bronson/vim-trailing-whitespace'  " Display (and fix) trailing white spaces


" Programming languages
Plug 'python-mode/python-mode', {'branch': 'develop'}
Plug 'sirtaj/vim-openscad'              " Syntax highlighting for open scad


" Misc


" TODO maybe interesting?
"Plug 'Valloric/YouCompleteMe'          " autocompletion
"Plug 'vim-scripts/indentpython.vim'    " helps to indent correctly
"Plug 'scrooloose/syntastic'            "
"Plug 'nvie/vim-flake8'                 " pep8 checker

"Plug 'jistr/vim-nerdtree-tabs'
"Plug 'vim-airline/vim-airline-themes'
"Plug 'airblade/vim-gitgutter'
"Plug 'vim-scripts/grep.vim'
"Plug 'vim-scripts/CSApprox'
"Plug 'bronson/vim-trailing-whitespace'
"Plug 'Raimondi/delimitMate'
"Plug 'majutsushi/tagbar'
"Plug 'Yggdroot/indentLine'
"Plug 'avelino/vim-bootstrap-updater'
"Plug 'sheerun/vim-polyglot'
"Plug 'Shougo/vimproc.vim'
"Plug 'xolox/vim-misc'
"Plug 'xolox/vim-session'
"Plug 'Shougo/vimshell.vim'
"Plug 'SirVer/ultisnips'
"Plug 'FelikZ/ctrlp-py-matcher'
"Plug 'honza/vim-snippets'
"Plug 'davidhalter/jedi-vim'

call plug#end()


"*****************************************************************************
"" Basic Setup
"*****************************************************************************
set encoding=utf-8
setlocal spell spelllang=en_us,de
set spell

set autoindent
set backspace=indent,eol,start
set complete-=i
set smarttab

set nrformats-=octal             " what is this?


"set mousemodel=popup            " TODO what is this?
"
" better copy & paste with mouse
if has('mouse')
    set mouse=a
endif

set hlsearch                     " Highlight when searching
"set backspace=indent,eol,start   " Fix backspace indent  <-- TODO what is this?

set ignorecase                   " search case insensitive

set nofoldenable                 " Open files unfolded...
"set foldlevel=99

set wildmenu                     " display completion matches in a status line

set tw=79 ts=4 sw=4 sta et sts=4 ai   " set width...

" http://vim.wikia.com/wiki/Restoring_indent_after_typing_hash
" don't unindent line completely when typing hash --> important for openscad
set cinkeys-=0#

" nvim bug https://github.com/neovim/neovim/issues/5990
let $NVIM_TUI_ENABLE_CURSOR_SHAPE = 0

"*****************************************************************************
"" Misc
"*****************************************************************************
" from spf13 VIM config
if has('clipboard')
    if has('unnamedplus')  " When possible use + register for copy-paste
        set clipboard=unnamed,unnamedplus
    else         " On mac and Windows, use * register for copy-paste
        set clipboard=unnamed
    endif
endif

" Allow multiple paste without yank https://stackoverflow.com/a/7164121/859591
xnoremap p pgvy

"set autowrite                       " Automatically write a file when leaving a modified buffer

" more undo - copied from spf13
set undofile                " So is persistent undo ...
set undolevels=1000         " Maximum number of changes that can be undone
set undoreload=10000        " Maximum number lines to save for undo on a buffer reload

" Show a few lines of context around the cursor.  Note that this makes the
" text scroll if you mouse-click near the start or end of the window.
set scrolloff=5

" When editing a file, always jump to the last known cursor position.
" Don't do it when the position is invalid or when inside an event handler
" (happens when dropping a file on gvim).
autocmd BufReadPost *
  \ if line("'\"") >= 1 && line("'\"") <= line("$") |
  \   exe "normal! g`\"" |
  \ endif


" Do incremental searching when it's possible to timeout.
" PR 2017-12-10 no idea if this is good, but sounds good...
if has('reltime')
  set incsearch
endif


"*****************************************************************************
"" Directories
"*****************************************************************************
" from https://coderwall.com/p/sdhfug/vim-swap-backup-and-undo-files
" potential security hole if sensitive files are copied to home folder?
" FIXME this does not work as intended somehow, why no file hierarchy?
set backup

let dir_list = {
            \ 'backup': 'backupdir',
            \ 'views': 'viewdir',
            \ 'swap': 'directory' }

if has('persistent_undo')
    let dir_list['undo'] = 'undodir'
endif

for [dirname, settingname] in items(dir_list)
    let directory = $HOME . '/.local/share/nvim/' . dirname . '/'
    if exists("*mkdir")
        if !isdirectory(directory)
            call mkdir(directory)
        endif
    endif
    if !isdirectory(directory)
        echo "Warning: Unable to create backup directory: " . directory
        echo "Try: mkdir -p " . directory
    else
        let directory = substitute(directory, " ", "\\\\ ", "g")
        exec "set " . settingname . "=" . directory . '/'
    endif
endfor

" Automatically create .backup directory, writable by the group.
"if filewritable(".") && ! filewritable(".backup")
"  silent execute '!umask 002; mkdir .backup'
"endif


"*****************************************************************************
"" Key mappings
"*****************************************************************************
let mapleader = ","

if !has('nvim') && &ttimeoutlen == -1
  set ttimeout
  set ttimeoutlen=100
endif

" Smash ESC
inoremap jk <Esc>

"" Vmap for maintain Visual Mode after shifting > and <
vmap < <gv
vmap > >gv

" delete without updating the clipboard or yank buffer
" from http://www.pixelbeat.org/vim.tips.html
nnoremap x "_x


"This unsets the 'last search pattern' register by hitting return
nnoremap <CR> :noh<CR><CR>
"nnoremap <Esc> :noh<CR><Esc> " this makes problems!

"" Use <C-L> to clear the highlighting of :set hlsearch.
if maparg('<C-L>', 'n') ==# ''
  nnoremap <silent> <C-L> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>
endif

" Jump back to quick fix after [Enter]
"augroup MyQFCommand
"    au!
"    au FileType qf nnoremap <buffer> <CR> <CR><C-W>p
"augroup END

nnoremap <leader>q :cclose<CR>          " Close quickfix list
nnoremap <C-j> :cnext<CR>               " Next in quick fix list
nnoremap <C-k> :cprevious<CR>           " Previous in quick fix list


" insert current date and new line above and below
nnoremap <leader>d :put =strftime('--- %Y-%m-%d ---')<CR>o<Esc>


"" See also plugin config section ""


"*****************************************************************************
"" Custom commands
"*****************************************************************************

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
" Revert with: ":delcommand DiffOrig".
if !exists(":DiffOrig")
    command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
                  \ | wincmd p | diffthis
endif

" Grep
"if executable('rg')
"    set grepprg=rg\ --no-heading\ --vimgrep
"    set grepformat=%f:%l:%c:%m
"endif


"*****************************************************************************
"" Visual Settings
"*****************************************************************************

" TODO why does setting background=dark after colorscheme affect colors?
colorscheme zenburn
"colorscheme kalisi

set background=dark

" Highlight color for misspelled words
" this line is necessary for many colorthemes, but not for zenburn!
"highlight SpellBad term=standout term=underline ctermbg=8 ctermfg=1 cterm=NONE
"highlight SpellBad term=standout term=underline ctermbg=0 ctermfg=1 cterm=underline

if has('syntax') && !exists('g:syntax_on')
  syntax enable
endif

set number
set ruler    " TODO what is this?

"" Set font for gvim
"set guifont=Inconsolata\ 10

"" Remove icons from gvim
"set guioptions-=T


"*****************************************************************************
"" File types
"*****************************************************************************
filetype plugin indent on   " Automatically detect file types.

" Python
" TODO this does not seem to be necessary...
"au BufNewFile,BufRead *.py
"    \ set tabstop=4
"    \ set softtabstop=4
"    \ set shiftwidth=4
"    \ set textwidth=79
"    \ set expandtab
"    \ set autoindent
"    \ set fileformat=unix

" otherwise VIM is unusable for py files in large folders like home
let g:pymode_rope = 0

" Flag bad whitespaces
"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" HTML, JS, ...
"au BufNewFile,BufRead *.js, *.html, *.css
"    \ set tabstop=2
"    \ set softtabstop=2
"    \ set shiftwidth=2

"" Arduino syntax highlighting
" http://www.vim.org/scripts/script.php?script_id=2654
autocmd! BufNewFile,BufRead *.pde setlocal ft=arduino
autocmd! BufNewFile,BufRead *.ino setlocal ft=arduino

autocmd! BufNewFile,BufRead *.scad setlocal ft=cpp
autocmd! BufNewFile,BufRead *.proto setlocal ft=cpp


au FileType gitcommit set tw=72


"*****************************************************************************
"" Plugin config
"*****************************************************************************

"""" ctrlp.vim
"set wildmode=list:longest,list:full
"set wildignore+=*.o,*.obj,.git,*.rbc,*.pyc,__pycache__
set wildignore+=*.so,*.swp,*build*/*     " Excluding build directory, very important!
"let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist)|(\.(swp|tox|ico|git|hg|svn))$'
"let g:ctrlp_user_command = "find %s -type f | grep -Ev '"+ g:ctrlp_custom_ignore +"'"
"let g:ctrlp_use_caching = 1
""let g:ctrlp_working_path_mode = ''   " Search path is current working directory
"unlet g:ctrlp_user_command            " Overwritting git serach, because does not support exclude


"""" Pymode
let g:pymode_folding = 0
let g:pymode_lint_cwindow = 0     " Disbale Auto open cwindow (quickfix)
                                  " if errors have been found
"let g:pymode_lint_write = 0      " Disable pymode checking on write
"
set completeopt=longest,menuone   " do not open docs on autocomplete


"""" Airline
" no idea why this is necessary in VIM and not in nvim...
" See also: https://github.com/vim-airline/vim-airline/issues/130
set laststatus=2

"TODO what is this?
"set ttimeoutlen=50


"""" Nerdtree
map <C-e> :NERDTreeToggle<CR>
map <leader>e :NERDTreeFind<CR>
let NERDTreeIgnore=['\.py[cd]$', '\~$', '\.swo$', '\.swp$', '^\.git$', '^\.hg$', '^\.svn$', '\.bzr$']
let g:nerdtree_tabs_open_on_gui_startup=0


""" Fugitive (GIT)
nnoremap <silent> <leader>gs :Gstatus<CR>
nnoremap <silent> <leader>gd :Gdiff<CR>
nnoremap <silent> <leader>gc :Gcommit<CR>
nnoremap <silent> <leader>gb :Gblame<CR>
nnoremap <silent> <leader>gl :Glog<CR>
nnoremap <silent> <leader>gp :Git push<CR>
nnoremap <silent> <leader>gr :Gread<CR>
nnoremap <silent> <leader>gw :Gwrite<CR>
nnoremap <silent> <leader>ge :Gedit<CR>
" Mnemonic _i_nteractive
nnoremap <silent> <leader>gi :Git add -p %<CR>
nnoremap <silent> <leader>gg :SignifyToggle<CR>


""" Grepper
" see also mappings for quickfix list above
let g:grepper = {}
let g:grepper.tools = ['rg', 'git', 'ag', 'grep']
let g:grepper.dir = 'repo,file'
let g:grepper.simple_prompt = 1
let g:grepper.highlight = 1
nnoremap <leader>gg :Grepper<cr>
