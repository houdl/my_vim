set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'tpope/vim-rails'
" plugin from https://github.com/tpope/vim-rails
Plugin 'vim-ruby/vim-ruby'
" plugin from https://github.com/vim-ruby/vim-ruby
Plugin 'scrooloose/nerdtree'
" plugin from https://github.com/scrooloose/nerdtree
Plugin 'ervandew/supertab'
" plugin from https://github.com/ervandew/supertab
Plugin 'wincent/command-t'
" plugin from https://github.com/wincent/command-t
Plugin 'altercation/vim-colors-solarized'
" plugin from https://github.com/altercation/vim-colors-solarized
Plugin 'kien/ctrlp.vim'
" for search use_like: ctrl + p
" plugin from https://github.com/kien/ctrlp.vim
Plugin 'scrooloose/syntastic'
" plugin from https://github.com/scrooloose/syntastic
Plugin 'tpope/vim-endwise'
" helps to end certain structures automatically
" plugin from https://github.com/tpope/vim-endwise
Plugin 'thoughtbot/vim-rspec'
" plugin from https://github.com/thoughtbot/vim-rspec
Plugin 'vim-scripts/tComment'
" plugin from https://github.com/vim-scripts/tComment
Plugin 'tpope/vim-surround'
" Surround.vim is all about surroundings:parentheses, brackets, quotes, XML tags, and more
" plugin from https://github.com/tpope/vim-surround
Plugin 'vim-scripts/vim-auto-save'
" plugin from https://github.com/vim-scripts/vim-auto-save
Plugin 'kchmck/vim-coffee-script'
" plugin from https://github.com/kchmck/vim-coffee-script

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line



"Plugin setting
"""""""""""""""""""""""""""""""""""""""
"
""             nerdtree
"
""""""""""""""""""""""""""""""""""""""""
autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
"""""""""""""""""""""""""""""""""""""""
"
""             supertab
"
""""""""""""""""""""""""""""""""""""""""
let g:SuperTabDefaultCompletionType = "<c-n>"
"""""""""""""""""""""""""""""""""""""""
"
""             command-t
"
""""""""""""""""""""""""""""""""""""""""
"cd ~/.vim/bundle/command-t/ruby/command-t
"ruby extconf.rb
"make

"""""""""""""""""""""""""""""""""""""""
"
""             solarized
"
""""""""""""""""""""""""""""""""""""""""
" Backspace deletes like most programs in insert mode
set backspace=2
" Show the cursor position all the time
set ruler
" Display incomplete commands
set showcmd
" Set fileencodings
set fileencodings=utf-8,bg18030,gbk,big5

filetype plugin indent on
" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab
" Display extra whitespace
set list listchars=tab:»·,trail:·
" Numbers
set number
set numberwidth=5

set matchpairs+=<:>
set hlsearch
"""""""""""""""""""""""""""""""""""""""
"
""             ctrap
"
""""""""""""""""""""""""""""""""""""""""
" ctrap
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.png,*.jpg,*.jpeg,*.gif "MacOSX/Linux
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
"""""""""""""""""""""""""""""""""""""""
"
""             scrooloose/syntastic
"
""""""""""""""""""""""""""""""""""""""""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
"""""""""""""""""""""""""""""""""""""""
"
""             vim-ruby
"
""""""""""""""""""""""""""""""""""""""""
map <S-CR>    <CR><CR>end<Esc>-cc
"""""""""""""""""""""""""""""""""""""""
"
""             thoughtbot/vim-rspec
"
""""""""""""""""""""""""""""""""""""""""
"Spec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>
"""""""""""""""""""""""""""""""""""""""
"
""             thoughtbot/vim-rspec
"
""""""""""""""""""""""""""""""""""""""""
" Use Ctrl-c to comment and uncomment, cool
map <c-c> gcc
"""""""""""""""""""""""""""""""""""""""
"
""             vim-scripts/vim-auto-save
"
""""""""""""""""""""""""""""""""""""""""
let g:auto_save = 1  " enable AutoSave on Vim startup



"Other Setting
"set mouse click
set mouse=a
"set line number
set nu
"code indented
map ff gg=G<CR>
imap fff <esc>gg=G<CR>
imap ppp <esc>p
set listchars=trail:-,tab:--
