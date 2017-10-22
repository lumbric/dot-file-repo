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
" Stupid color theme workaround for VIM...
" see https://stackoverflow.com/a/10778126/859591
set t_Co=256  " Note: Neovim ignores t_Co and other terminal codes.


"*****************************************************************************
"" Plug install packages
"*****************************************************************************
call plug#begin('~/.local/share/nvim/plugged')


" Themes
Plug 'freeo/vim-kalisi'                " Theme
Plug 'jnurmine/Zenburn'             " theme used in old days (before 2016)
"Plug 'altercation/vim-colors-solarized'

Plug 'vim-airline/vim-airline'


" open files
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree'
"Plug 'git://git.wincent.com/command-t.git'   " similar to CTRL+P
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }    " seems to be faster than CTRL+P!


" Gernal programming helpers
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'               " GIT integration
Plug 'a.vim'                            " C/Cpp change between .c and .h files
Plug 'scrooloose/nerdcommenter'         " comment out/in 


" Programming languages
Plug 'python-mode/python-mode', {'branch': 'develop'}
Plug 'sirtaj/vim-openscad'              " Syntax highlighting for open scad


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
"
"Plug 'davidhalter/jedi-vim'

call plug#end()


"*****************************************************************************
"" Basic Setup
"*****************************************************************************
set encoding=utf-8
setlocal spell spelllang=en_us
set spell
"set mousemodel=popup            " TODO what is this?

set hlsearch                     " Highlight when searching
"set backspace=indent,eol,start   " Fix backspace indent  <-- TODO what is this?

set ignorecase                   " search case insensitive

set nofoldenable                 " Open files unfolded...
"set foldlevel=99

set tw=79 ts=4 sw=4 sta et sts=4 ai   " set width...

" http://vim.wikia.com/wiki/Restoring_indent_after_typing_hash
" don't unindent line completely when typing hash
set cinkeys-=0#


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


"set autowrite                       " Automatically write a file when leaving a modified buffer

" more undo - copied from spf13
set undofile                " So is persistent undo ...
set undolevels=1000         " Maximum number of changes that can be undone
set undoreload=10000        " Maximum number lines to save for undo on a buffer reload


"*****************************************************************************
"" Key mappings
"*****************************************************************************
let mapleader = ","

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

"" See also plugin config section ""


"*****************************************************************************
"" Visual Settings
"*****************************************************************************
colorscheme zenburn

"colorscheme kalisi
"
"if has('gui_running')
"  set background=dark
"  colorscheme solarized
"else
"  colorscheme zenburn
"endif

set background=dark

" Highlight color for misspelled words
" this line is necessary for many colorthemes, but not for zenburn!
"highlight SpellBad term=standout term=underline ctermbg=8 ctermfg=1 cterm=NONE
"highlight SpellBad term=standout term=underline ctermbg=0 ctermfg=1 cterm=underline

syntax on
set number
"set ruler    " TODO what is this?

"" http://askubuntu.com/questions/67/how-do-i-enable-full-color-support-in-vim
"if $COLORTERM == 'gnome-terminal'
"  set t_Co=256
"endif

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
