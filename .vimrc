" config
syntax enable
let g:solarized_termcolors=16
set background=dark
colorscheme solarized
set cursorline
set relativenumber
set noshowmode
set nu

" new lines
nmap <S-Enter> O<Esc>j
nmap <CR> o<Esc>k

" indent
set autoindent
autocmd FileType go setlocal shiftwidth=4 tabstop=4
autocmd FileType javascript,yaml,json setlocal shiftwidth=2 tabstop=2

" splits
set splitbelow
set splitright

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Remap normal mode
:imap jj <Esc>
let mapleader=" "

" vimrc
:nnoremap <leader>ev :vsplit $MYVIMRC<cr>
:nnoremap <leader>sv :source $MYVIMRC<cr>

" quick save
noremap <Leader>s :update<CR>

" disable .swp files
:set noswapfile

" PLUGINS

" Nerdtree
map <C-n> :NERDTreeToggle<CR>

" Tagbar
nmap <F8> :TagbarToggle<CR>

" Fugitive
nnoremap tn :tabnew<Space>
nnoremap tk :tabnext<CR>
nnoremap tj :tabprev<CR>
nnoremap th :tabfirst<CR>
nnoremap tl :tablast<CR>

" Syntastic
let g:syntastic_javascript_eslint_exe='$(npm bin)/eslint'
let g:syntastic_javascript_checkers=['eslint']

" FZF
nnoremap <silent> <leader>f :Files<CR>
nnoremap <silent> <leader>b :Buffers<CR>
nnoremap <silent> <leader>w :Windows<CR>

" Nerdcommenter
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='zenburn'

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'Valloric/YouCompleteMe'

Plug 'tpope/vim-fugitive'

Plug 'scrooloose/syntastic'

Plug 'tpope/vim-surround'

Plug 'altercation/vim-colors-solarized'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'scrooloose/nerdcommenter'

Plug 'airblade/vim-gitgutter'

Plug 'pangloss/vim-javascript'

Plug 'easymotion/vim-easymotion'

Plug 'fatih/vim-go'

Plug 'tmhedberg/SimpylFold'

Plug 'elzr/vim-json'

Plug 'scrooloose/nerdtree'

Plug 'majutsushi/tagbar'

Plug 'godlygeek/tabular'

Plug 'honza/vim-snippets'

Plug 'raimondi/delimitmate'

Plug 'tpope/vim-markdown'

Plug 'christoomey/vim-tmux-navigator'

Plug 'bronson/vim-trailing-whitespace'

Plug 'mxw/vim-jsx'

" Initialize plugin system
call plug#end()
