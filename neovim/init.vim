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
"   - https://github.com/fisadev/fisa-nvim-config/


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
Plug 'JaySandhu/xcode-vim'             " light high contrast
Plug 'arzg/vim-colors-xcode'           " light high contrast
"Plug 'vim-scripts/proton'             " theme with light background
"Plug 'altercation/vim-colors-solarized'
Plug 'vim-airline/vim-airline'         " advanced status line, like powerline but more lightweight
"Plug 'itchyny/lightline.vim'          " Alternative to vim-airline
Plug 'mikewest/vimroom'


" Open and find files
Plug 'scrooloose/nerdtree'
Plug 'mhinz/vim-grepper'                " Search with ag, rg, grep etc for files
Plug 'ctrlpvim/ctrlp.vim'
"Plug 'git://git.wincent.com/command-t.git'   " similar to CTRL+P
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }    " seems to be faster than CTRL+P!


" General programming helpers
Plug 'tpope/vim-fugitive'               " GIT integration
Plug 'mhinz/vim-signify'                " Git/mercurial/others diff icons on the side of the file lines
Plug 'vim-scripts/a.vim'                " C/Cpp change between .c and .h files
Plug 'scrooloose/nerdcommenter'         " comment out/in
Plug 'tmhedberg/matchit'                " better match with %
Plug 'tpope/vim-surround'               " surround text with parentheses
Plug 'Townk/vim-autoclose'              " Automatically close parenthesis, etc
Plug 'bronson/vim-trailing-whitespace'  " Display (and fix) trailing white spaces
Plug 'psf/black', { 'tag': '22.3.0' }

"Plug 'w0rp/ale'                        " asynchronous linting, only vim >8.0, neovim
Plug 'davidhalter/jedi-vim'             " only for python go-to-definition, autocompletion is disabled

" Async autocompletion
if has('nvim-0.3')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
endif


" Programming languages
Plug 'python-mode/python-mode', {'branch': 'develop'}
Plug 'sirtaj/vim-openscad'              " Syntax highlighting for open scad
"Plug 'lervag/vimtex'
Plug 'ibab/vim-snakemake'


" Misc
Plug 'lambdalisue/suda.vim'             " Save open file as sudo

Plug 'sotte/presenting.vim'             " Powerpoint for VIM


" TODO maybe interesting?
"Plug 'Valloric/YouCompleteMe'          " autocompletion
"Plug 'vim-scripts/indentpython.vim'    " helps to indent correctly
"Plug 'scrooloose/syntastic'            "
"Plug 'nvie/vim-flake8'                 " pep8 checker

"Plug 'jistr/vim-nerdtree-tabs'
"Plug 'airblade/vim-gitgutter'
"Plug 'vim-scripts/grep.vim'
"Plug 'vim-scripts/CSApprox'
"Plug 'bronson/vim-trailing-whitespace'
"Plug 'Raimondi/delimitMate'
"Plug 'majutsushi/tagbar'
"Plug 'Yggdroot/indentLine'
"Plug 'avelino/vim-bootstrap-updater'
"Plug 'Shougo/vimproc.vim'
"Plug 'xolox/vim-misc'
"Plug 'xolox/vim-session'
"Plug 'Shougo/vimshell.vim'
"Plug 'SirVer/ultisnips'
"Plug 'FelikZ/ctrlp-py-matcher'
"Plug 'honza/vim-snippets'
"Plug 'sheerun/vim-polyglot'             " better syntax highlighting?
"Plug 'arielrossanigo/dir-configs-override.vim' " Override configs by directory
"Plug 'vim-scripts/IndexedSearch'        " Search results counter
"Plug 'fisadev/fisa-vim-colorscheme'     " Terminal Vim with 256 colors colorscheme
"Plug 'fisadev/FixedTaskList.vim'        " Pending tasks list
"Plug 'michaeljsmith/vim-indent-object'  " Indent text object
"Plug 'jeetsukumaran/vim-indentwise'     " Indentation based movements
"Plug 'lilydjwg/colorizer'               " Paint css colors with the real color
"Plug 't9md/vim-choosewin'               " Window chooser
"Plug 'valloric/MatchTagAlways'          " Highlight matching html tags
"Plug 'mattn/emmet-vim'                  " Generate html in a simple way
"Plug 'vim-scripts/YankRing.vim'         " Yank history navigation
"Plug 'neomake/neomake'                  " Linters


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

set nrformats-=octal                  " what is this?

"set mousemodel=popup                 " TODO what is this?
"
" better copy & paste with mouse
if has('mouse')
    set mouse=a
endif

set hlsearch                          " Highlight when searching
"set backspace=indent,eol,start       " Fix backspace indent  <-- TODO what is this?

set ignorecase                        " search case insensitive

set nofoldenable                      " Open files unfolded...
"set foldlevel=99

set wildmenu                          " display completion matches in a status line

set tw=99 ts=4 sw=4 sta et sts=4 ai   " set width...  (tw=79 according to pep8)

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

" otherwise super dangerous according to Jakob
" https://github.com/neovim/neovim/issues/9888#issuecomment-482576387
set fsync

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

" Automatically copy to clipboard after select
" Does not work in neovim... https://github.com/neovim/neovim/issues/2325
vmap <LeftRelease> "*ygv

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
nnoremap <leader>d :put =strftime('--- %Y-%m-%d %H:%M---')<CR><Esc>


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

" Save file as root
" From https://unix.stackexchange.com/a/23615/9023
" NOTE: Does not work in Neovim, use suda plugin!
cmap w!! %!sudo tee > /dev/null %


"*****************************************************************************
"" Visual Settings
"*****************************************************************************

" TODO why does setting background=dark after colorscheme affect colors?
set background=dark

"colorscheme zenburn
colorscheme kalisi

" Fix weird parenthesis highlighting for kalisi
"highlight MatchParen cterm=bold ctermfg=145 ctermbg=236 gui=bold guifg=#b2b2a0 guibg=#2e2e2e  " not colorful
"highlight MatchParen cterm=bold ctermfg=16 ctermbg=148 gui=bold guifg=#000000 guibg=#b8ea00   " original
highlight MatchParen cterm=bold ctermfg=148  ctermbg=236 gui=bold guifg=#000000 guibg=#2e2e2e  " original inverted

" Highlight color for misspelled words
" this line is necessary for many colorthemes, but not for zenburn!
"highlight SpellBad term=standout term=underline ctermbg=8 ctermfg=1 cterm=NONE
"highlight SpellBad term=standout term=underline ctermbg=0 ctermfg=1 cterm=underline

" line for textwidth
highlight ColorColumn ctermbg=236 guibg=#2e2e2e

if has('syntax') && !exists('g:syntax_on')
  syntax enable
endif

set number
set ruler    " TODO what is this?

"" Set font for gvim
"set guifont=Inconsolata\ 10

"" Remove icons from gvim
"set guioptions-=T

" needed so deoplete can auto select the first suggestion
if has('nvim')
    set completeopt+=noinsert
endif


"*****************************************************************************
"" File types
"*****************************************************************************
filetype plugin indent on   " Automatically detect file types.

" Python
" already set above and by pymode!, see set tw, st, ..
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


au FileType gitcommit set tw=72


"*****************************************************************************
"" Plugin config
"*****************************************************************************

"""" ctrlp.vim
"set wildmode=list:longest,list:full
"set wildignore+=*.o,*.obj,.git,*.rbc,*.pyc,__pycache__
"set wildignore+=*.so,*.swp,*build*/*     " Excluding build directory, very important!
"let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist)|(\.(swp|tox|ico|git|hg|svn))$'
"let g:ctrlp_user_command = "find %s -type f | grep -Ev '"+ g:ctrlp_custom_ignore +"'"
"let g:ctrlp_use_caching = 1
""let g:ctrlp_working_path_mode = ''   " Search path is current working directory
"unlet g:ctrlp_user_command            " Overwritting git serach, because does not support exclude


"""" Pymode
let g:pymode_python = 'python3'
let g:pymode_folding = 0
let g:pymode_options_max_line_length = 99   " sets also colorbar
let g:pymode_lint_cwindow = 0     " Disbale Auto open cwindow (quickfix)
                                  " if errors have been found
"let g:pymode_lint_write = 0      " Disable pymode checking on write

set completeopt=longest,menuone   " do not open docs on autocomplete

" otherwise VIM is unusable for py files in large folders like home
let g:pymode_rope = 0


"""" Deoplete
let g:deoplete#enable_at_startup = 1

" Path to Python 3 interpreter. Setting this makes startup faster. Also useful
" for working with virtualenvs.
let g:python_host_prog  = '/usr/bin/python'	  " Python 2
let g:python3_host_prog = '/usr/bin/python3'  " Python 3


"""" Jedi
" Disable autocompletion (using deoplete instead)
let g:jedi#completions_enabled = 0

" All these mappings work only for python code:
let g:jedi#goto_command = ',g'                  " Go to definition
let g:jedi#usages_command = ',o'                " Find ocurrences
let g:jedi#goto_assignments_command = ',a'      " Find assignments
"
" Go to definition in new tab
nmap ,D :tab split<CR>:call jedi#goto()<CR>


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


"""" Fugitive (GIT)
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


"""" Signify

" this first setting decides in which order try to guess your current vcs
" UPDATE it to reflect your preferences, it will speed up opening files
let g:signify_vcs_list = [ 'git']
" mappings to jump to changed blocks
nmap <leader>sn <plug>(signify-next-hunk)
nmap <leader>sp <plug>(signify-prev-hunk)
" nicer colors
highlight DiffAdd           cterm=bold ctermbg=none ctermfg=119
highlight DiffDelete        cterm=bold ctermbg=none ctermfg=167
highlight DiffChange        cterm=bold ctermbg=none ctermfg=227
highlight SignifySignAdd    cterm=bold ctermbg=237  ctermfg=119
highlight SignifySignDelete cterm=bold ctermbg=237  ctermfg=167
highlight SignifySignChange cterm=bold ctermbg=237  ctermfg=227


"""" Grepper
" see also mappings for quickfix list above
let g:grepper = {}
let g:grepper.tools = ['rg', 'git', 'ag', 'grep']
let g:grepper.dir = 'repo,file'
let g:grepper.simple_prompt = 1
let g:grepper.highlight = 1
nnoremap <leader>gg :Grepper<cr>


"""" Autoclose
" Fix to let ESC work as espected with Autoclose plugin
" (without this, when showing an autocompletion window, ESC won't leave insert
"  mode)
let g:AutoClosePumvisible = {"ENTER": "\<C-Y>", "ESC": "\<ESC>"}


"""" Suda
let g:suda_smart_edit = 1


"""" Vimroom
" default maped to <leader>V
"nnoremap <silent> <Leader>V <Plug>VimroomToggle
let g:vimroom_width=99
let g:vimroom_sidebar_height=0
let g:vimroom_scrolloff=10


"""" Presenting
:let g:presenting_top_margin = 2


"""" Black
let g:black_linelength = 99
autocmd BufWritePre /home/peter/reFUEL/windpower-decomposition-usa/*.py execute ':Black'
autocmd BufWritePre /home/p/reFUEL/windpower-decomposition-usa/*.py execute ':Black'
autocmd BufWritePre /home/p/abcvoting/*.py execute ':Black'


let g:vimtex_compiler_latexmk_engines='pdflatex'
let g:vimtex_view_method='zathura'

" https://gist.github.com/vext01/16df5bd48019d451e078
function! Synctex()
  " remove 'silent' for debugging
  execute "silent !zathura --synctex-forward " . line('.') . ":" . col('.') . ":" . bufname('%') . " " . bufname('%')[:-5]. ".pdf"
  redraw!
endfunction
nnoremap <C-S> :call Synctex()<CR>
