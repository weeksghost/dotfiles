set nocp
execute pathogen#infect()
filetype on            " enables filetype detection
filetype plugin on     " enables filetype specific plugins
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

" My Bundles here:
"Bundle 'vim-scripts/UltiSnips'
"Bundle 'rey-wright/ultisnips-snippets.git'
Bundle 'scrooloose/nerdtree'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-fugitive'
" Bundle 'ervandew/supertab'
Bundle 'mileszs/ack.vim'
"Bundle 'vim-scripts/matchit.zip'
Bundle 'tomtom/tcomment_vim'
"Bundle 'Valloric/MatchTagAlways'
"Bundle 'Raimondi/delimitMate'
"Bundle 'skammer/vim-css-color'
Bundle 'Lokaltog/vim-powerline'
Bundle 'tpope/vim-unimpaired'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-repeat'
Bundle 'sjl/gundo.vim'
Bundle 'dahu/LearnVim'
Bundle 'Valloric/YouCompleteMe'
Bundle 'flazz/vim-colorschemes'
Bundle 'powerline/fonts'
"Bundle 'powerline/powerline'
Bundle 'altercation/solarized'
Bundle 'davidhalter/jedi-vim'
Bundle 'scrooloose/syntastic'

" colorschemes:
Bundle 'tristen/superman'
Bundle 'w0ng/vim-hybrid'
Bundle 'noahfrederick/Hemisu'
Bundle 'tomasr/molokai'
Bundle 'rey-wright/argokai'

" let g:ackprg = 'ag --nogroup --nocolor --column' 
"filetype plugin indent on   " required!
syntax enable
set background=dark
let g:solarized_termcolors=256
colo solarized

let g:python_host_prog = '/usr/local/bin/python'

set showcmd                       " Display incomplete commands.
set showmode                      " Display the mode you're in.

set backspace=indent,eol,start    " Intuitive backspacing.
set backspace=2

set hidden                        " Handle multiple buffers better.

set wildmenu                      " Enhanced command line completion.
set wildmode=list:longest         " Complete files like a shell.

set ignorecase                    " Case-insensitive searching.
set smartcase                     " But case-sensitive if expression contains a capital letter.

set number                        " Show absolute line numbers (cf. relativenumber).
set ruler                         " Show cursor position.
set laststatus=2                  " Always show a status line.

set incsearch                     " Highlight matches as you type.
set hlsearch                      " Highlight matches.

set wrap                          " Turn on line wrapping.
" set scrolloff=3                   " Show 3 lines of context around the cursor.

set shiftwidth=4                 " 
set tabstop=4                     " Tabs and spaces.
set softtabstop=4
set expandtab                     " 

set nrformats=                    " This will cause Vim to treat all numerals
                                  " As decimal, regarless whether they are
                                  " padded with zeros.

set title                         " Set the terminal's title

set visualbell                    " No beeping.

set nobackup                      " No backups.
set nowritebackup                 " No backups.
set noswapfile                    " No swap files; more hassle than they're worth.

set tildeop                       " Make tilde command behave like an operator.
set shortmess=atI                 " Avoid unnecessary hit-enter prompts.

set noequalalways                 " Resize windows as little as possible.

set autoread                      " Automatically re-read files changed outside Vim.

set notimeout                     " Don't time out partially entered mapped key sequences.
set ttimeout                      " But do time out key codes.

"set autoindent
"set copyindent
"set smartindent
set showbreak=↪\

" The active split is now on the right / bottom for
" vertical / horizontal splits respectively. To 
" get native functionality, use the maps provited
set splitright
set splitbelow
ca vsl lefta vs
ca spt abo sp
" ca qall <silent> bufdo update|bdelete


" I do not want to see any of this stuff when I'm searching for files
set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.rbo,*.class,.svn,*.gem
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz,*/.sass-cache/*
set wildignore+=*.php*
set wildignore+=*.swp,*~,._*

set listchars=precedes:<,extends:>,tab:\|-,trail:· list

set statusline=%F%r%h%w\
set statusline+=%{fugitive#statusline()}\
set statusline +=%y%*                "file type
set statusline+=[%{strlen(&fenc)?&fenc:&enc}]
set statusline +=%2*%m%*                "modified flag

set guifont=Inconsolata\ for\ Powerline:h16
"let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
"set term=xterm-256color
set termencoding=utf-8

"Syntastic
set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

if has("gui_running")
   let s:uname = system("uname")
   if s:uname == "Darwin\n"
      set guifont=Inconsolata\ for\ Powerline:h16
   endif
endif

let g:SuperTabCrMapping = 0
let delimitMate_expand_cr = 1

nnoremap <SPACE> <Nop>
let mapleader = ","

" Window pane navigation shortcut
nn <Leader>h <c-w>h
nn <Leader>j <c-w>j
nn <Leader>k <c-w>k
nn <Leader>l <c-w>l

" Ultisnips
let g:UltiSnipsSnippetDirectories=["my_snippets"]
let g:UltiSnipsExpandTrigger="<tab>"
nn <leader>ue :UltiSnipsEdit<CR>

" ColorV

nn <leader>u :GundoToggle<CR>

" CtrlP
let g:ctrlp_working_path_mode = 0
nn <Leader>m :CtrlPMRUFiles<CR>
nn <Leader>b :CtrlPBuffer<CR>
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_buffer_func = { 'enter': 'MyCtrlPMappings' }
func! MyCtrlPMappings()
    nnoremap <buffer> <silent> <c-@> :call <sid>DeleteBuffer()<cr>
endfunc
func! s:DeleteBuffer()
    exec "bd" fnamemodify(getline('.')[2:], ':p')
    exec "norm \<F5>"
endfunc


" NerdTree Toggle
nn <Leader>n :NERDTreeToggle<CR>

" Ack
nn <Leader>f :Ack! 
 
" move through virtual lines, rows as determined by terminal even if wrapped
" nn j gj
" nn k gk
" and when those wrapped lines are massive, do this!
" nn gj j
" nn gk k

" spacebar turns off search highlighting.
nn <silent> <leader><space> :noh<CR>

" Yank to end of line
nn Y y$

" Map colon to semicolon, map semicolon to colon
nn ; :
nn : ;
vn ; :
vn : ;
" 
" "finese these timeouts later
" " :set timeout timeoutlen=500 ttimeoutlen=100
" 
" " Map escape to jk
" :imap jk <Esc><Esc>
" :inoremap jk <esc><esc>
" 
" " When joining lines, vim adds a space.... I end up removing  that space far too often, so let's override the default" functionality of J
" " Also: no gj does not also accomplish this, because if both the lines are indented, the indentation will be carried over
"nn jj
"nn J Jx
" 
command! W :execute ':silent w !sudo tee % > /dev/null' | :edit!
" 
source ~/.vimrc.local
