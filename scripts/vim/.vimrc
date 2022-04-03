set rtp+=$PYTHON_PATH/site-packages/powerline/bindings/vim

" Settings -------------------------------------------------------------

" Make vim more useful
set nocompatible

" Syntax highlighting
set t_Co=256
set background=dark
syntax on

" Local directories
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
set undodir=~/.vim/undo

" Set some junk
set autoindent " Copy indent from last line when starting new line
set backspace=indent,eol,start
set cursorline " Highlight current line
set diffopt=filler " Add vertical spaces to keep right and left aligned
set diffopt+=iwhite " Ignore whitespace changes (focus on code changes)
set encoding=utf-8 nobomb " BOM often causes trouble
set esckeys " Allow cursor keys in insert mode
set expandtab " Expand tabs to spaces
set foldcolumn=0 " Column to show folds
set foldenable " Enable folding
set foldlevel=0 " Close all folds by default
set foldmethod=syntax " Syntax are used to specify folds
set foldminlines=0 " Allow folding single lines
set foldnestmax=5 " Set max fold nesting level
set formatoptions=
set formatoptions+=c " Format comments
set formatoptions+=r " Continue comments by default
set formatoptions+=o " Make comment when using o or O from comment line
set formatoptions+=q " Format comments with gq
set formatoptions+=n " Recognize numbered lists
set formatoptions+=2 " Use indent from 2nd line of a paragraph
set formatoptions+=l " Don't break lines that are already long
set formatoptions+=1 " Break before 1-letter words
set gdefault " By default add g flag to search/replace. Add g to toggle
set hidden " When a buffer is brought to foreground, remember undo history and marks
set history=1000 " Increase history from 20 default to 1000
set hlsearch " Highlight searches
set ignorecase " Ignore case of searches
set incsearch " Highlight dynamically as pattern is typed
set laststatus=2 " Always show status line
set lazyredraw " Don't redraw when we don't have to
set lispwords+=defroutes " Compojure
set lispwords+=defpartial,defpage " Noir core
set lispwords+=defaction,deffilter,defview,defsection " Ciste core
set lispwords+=describe,it " Speclj TDD/BDD
set magic " Enable extended regexes
set mouse=a " Enable mouse in all modes
set modelines=0 " Disable modelines a security precaution
set nomodeline
set noerrorbells " Disable error bells
set nojoinspaces " Only insert single space after a '.', '?' and '!' with a join command
set noshowmode " Don't show the current mode (airline.vim takes care of us)
set nostartofline " Don't reset cursor to start of line when moving around
set nowrap " Do not wrap lines
set nu " Enable line numbers
set ofu=syntaxcomplete#Complete " Set omni-completion method
set regexpengine=1 " Use the old regular expression engine (it's faster for certain language syntaxes)
set report=0 " Show all changes
set ruler " Show the cursor position
set scrolloff=3 " Start scrolling three lines before horizontal border of window
set shell=/bin/sh " Use /bin/sh for executing shell commands
set shiftwidth=2 " The # of spaces for indenting
set shortmess=atI " Don't show the intro message when starting vim
set showtabline=2 " Always show tab bar
set sidescrolloff=3 " Start scrolling three columns before vertical border of window
set smartcase " Ignore 'ignorecase' if search patter contains uppercase characters
set smarttab " At start of line, <Tab> inserts shiftwidth spaces, <Bs> deletes shiftwidth spaces
set softtabstop=2 " Tab key results in 2 spaces
set splitbelow " New window goes below
set splitright " New windows goes right
set suffixes=.bak,~,.swp,.swo,.o,.d,.info,.aux,.log,.dvi,.pdf,.bin,.bbl,.blg,.brf,.cb,.dmg,.exe,.ind,.idx,.ilg,.inx,.out,.toc,.pyc,.pyd,.dll
set switchbuf=""
set title " Show the filename in the window titlebar
set ttyfast " Send more characters at a given time
set ttymouse=xterm " Set mouse type to xterm
set undofile " Persistent Undo
set viminfo=%,'9999,s512,n~/.vim/viminfo " Restore buffer list, marks are remembered for 9999 files, registers up to 512Kb are remembered
set visualbell " Use visual bell instead of audible bell (annnnnoying)
set wildchar=<TAB> " Character for CLI expansion (TAB-completion)
set wildignore+=.DS_Store
set wildignore+=*.jpg,*.jpeg,*.gif,*.png,*.gif,*.psd,*.o,*.obj,*.min.js
set wildignore+=*/bower_components/*,*/node_modules/*
set wildignore+=*/smarty/*,*/vendor/*,*/.git/*,*/.hg/*,*/.svn/*,*/.sass-cache/*,*/log/*,*/tmp/*,*/build/*,*/ckeditor/*,*/doc/*,*/source_maps/*,*/dist/*
set wildmenu " Hitting TAB in command mode will show possible completions above command line
set wildmode=list:longest " Complete only until point of ambiguity
set winminheight=0 " Allow splits to be reduced to a single line
set wrapscan " Searches wrap around end of file

" General
augroup general_config
  autocmd!

  " Fix page up and down
  map <PageUp> <C-U>
  map <PageDown> <C-D>
  imap <PageUp> <C-O><C-U>
  imap <PageDown> <C-O><C-D>
augroup END

" Fish
augroup filetype_fish
  autocmd!
  au BufRead,BufNewFile *.fish set ft=fish
augroup END
" Force read encoding
set encoding=utf-8
" To work cool, disable compatibility with Vi
set nocompatible

filetype off

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

" Keep plugin commands between vundle#begin/end.
call vundle#begin()
" Indispensable
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
"Plugin 'terryma/vim-multiple-cursors'
Plugin 'mg979/vim-visual-multi'
"Plugin 'ludovicchabant/vim-gutentags'
Plugin 'rking/ag.vim'
Plugin 'tpope/vim-surround'
Plugin 'flazz/vim-colorschemes'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'vimwiki/vimwiki'

" Optional tmux
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'jgdavey/tslime.vim'
Plugin 'jpalardy/vim-slime'

" Choose languages
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 'thoughtbot/vim-rspec'
Plugin 'elixir-lang/vim-elixir'
Plugin 'guns/vim-clojure-static'
Plugin 'fatih/vim-go'
Plugin 'python-mode/python-mode'
Plugin 'othree/html5.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'dsawardekar/ember.vim'
Plugin 'joukevandermaas/vim-ember-hbs'
Plugin 'rust-lang/rust.vim'
Plugin 'c.vim'
Plugin 'plasticboy/vim-markdown'
Plugin 'ekalinin/dockerfile.vim'
Plugin 'stanangeloff/php.vim'
Plugin 'neovimhaskell/haskell-vim'
Plugin 'bash-support.vim'
Plugin 'tbastos/vim-lua'

call vundle#end()

filetype plugin indent on
syntax enable

set background=dark
" colorscheme af

" https://github.com/powerline/fonts/tree/master/SourceCodePro
set guifont=Source\ Code\ Pro\ for\ Powerline:h13

" Move the cursor to the matched string
set incsearch
" Search highlight
set hlsearch
" Search ignore case
set ignorecase
" Search do not wrap around
set nowrap

" Start scrolling 5 lines before the horizontal window border
set scrolloff=5

" Avoid lags
set lazyredraw

" Display line numbers
set number
set numberwidth=4

" To display the status line always
set laststatus=2

" Dont unload buffers
set hidden

" New window is put below the current one
set splitbelow
" New window is put right of the current one
set splitright

" Show commands
set showcmd

" Hide mode status (INSERT, VISUAL)
set noshowmode

" Show the cursor position
set ruler

" Flash screen instead of sounding a beep
" set visualbell

" Allow backspace in insert mode
" set backspace=start,eol,indent

" Reduce the need for % in matching
set showmatch
set matchtime=2

" Tab characters entered will be changed to spaces
set expandtab
" Number of space characters inserted for indentation
set shiftwidth=2
set softtabstop=2

" Avoid creation of * .ext files
set nowritebackup
set nobackup
set noswapfile

" Automatically read changes
set autoread

" Hidden buffer instead of close
set hidden

" Increase history
set history=1000

" Space as leader
map <space> <leader>

" Remaping Home and End keys
nnoremap 0 $
nnoremap 9 0
inoremap <C-A> <Home>
inoremap <C-E> <End>


" Window buffer navigation
" map <C-h> <C-w>h
" map <C-j> <C-w>j
" map <C-k> <C-w>k
" map <C-l> <C-w>l

" Ctrl C + Ctrl V
" vmap <C-c> "+yi
" vmap <C-x> "+c
" vmap <C-v> c<ESC>"+p
" imap <C-v> <C-r><C-o>+

" Multi cursors mapping
" let g:multi_cursor_next_key='<C-n>'
" let g:multi_cursor_prev_key='<C-p>'
" let g:multi_cursor_skip_key='<C-x>'
" let g:multi_cursor_quit_key='<Esc>'

" Airline
let g:airline_powerline_fonts = 1

" RSpec terminal with tmux or iterm2
"let g:rspec_runner = 'os_x_iterm2'
let g:rspec_command = 'call Send_to_Tmux("rspec {spec}\n")'

" Remove Bars
set guioptions-=T
set guioptions-=t
set guioptions-=L
set guioptions-=l
set guioptions-=m
set guioptions-=r

" Clean search
" nmap \hl :nohlsearch<CR>

" Open a new empty buffer
" nmap <leader>N :enew<cr>

" Move to the next buffer
" nmap <leader>n :bnext<CR>

" Move to the previous buffer
" nmap <leader>p :bprevious<CR>

" Move to the previous buffer
" nmap <leader>D :bdelete<CR>

" Close the current buffer and move to the previous one
" nmap <leader>bq :bp <BAR> bd #<CR>

" Show all open buffers and their status
" nmap <leader>bl :ls<CR>

" Toggle NERDTree
nmap <silent> <Leader>nt :NERDTreeToggle<CR>
map <C-o> :NERDTreeToggle<CR>

" Toggle Tagbar
nmap <silent> <Leader>tt :TagbarToggle<CR>

" Remove all trailing whitespaces at save
autocmd BufWritePre * :%s/\s\+$//e


map <Leader> <C-W>

map <Leader>, <C-W><
map <Leader>. <C-W>>

" RSpec.vim mappings
" map <Leader>t :call RunCurrentSpecFile()<CR>
" map <Leader>s :call RunNearestSpec()<CR>
" map <Leader>l :call RunLastSpec()<CR>
" map <Leader>a :call RunAllSpecs()<CR>

" Vim slime with tmux
let g:slime_target = "tmux"
let g:slime_paste_file = "$HOME/.slime_paste"

" Correct vim colors in tmux
set term=screen-256color

" Ignore some directories
"set wildignore+=**/node_modules,**/bower_components,**/tmp,**/vendor,**/git
"let NERDTreeIgnore=['node_modules', 'bower_components', 'tmp', 'vendor']
"let g:ctrlp_custom_ignore =
"'node_modules\|bower_components\|tmp\|vendor\|DS_Store\|git'

" Python mode disable some things
"let g:pymode_options_colorcolumn = 0
"let g:pymode_lint = 0
"let g:pymode_run = 0
"let g:pymode_virtualenv = 0
"let g:pymode_doc = 0
"let g:pymode_folding = 0
"let g:pymode_rope = 0

let g:NERDTreeDirArrows=0
let g:vimwiki_list = [{'path': '~/projects/vimwiki', 'path_html': '~/Projects/vimwiki/docs/'}]

