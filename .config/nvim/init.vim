"--------------- General Settings ---------------"
set nocompatible
filetype on
syntax on
" set showtabline=2
set fileencoding=utf-8
set number
set relativenumber
set cursorline
" set cursorcolumn
set shiftwidth=4
set tabstop=2
set expandtab
set nobackup
set scrolloff=10
set sidescrolloff=10
set nowrap
set incsearch
set ignorecase
set smartcase
set smartindent
set showcmd
set noshowmode
set showmatch
set hlsearch
set history=1000
set clipboard=unnamedplus
set wildmenu
set wildoptions=pum
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx
set termguicolors
set mouse=a
set updatetime=300
set noswapfile

"--------------- Plugins ---------------"
call plug#begin('$HOME/.config/nvim/plugged')
  Plug 'mhinz/vim-startify'
  Plug 'tpope/vim-surround'
  Plug 'mg979/vim-visual-multi', {'branch': 'master'}
  Plug 'jiangmiao/auto-pairs'
  Plug 'alvan/vim-closetag'
  Plug 'itchyny/lightline.vim'
  Plug 'mengelbrecht/lightline-bufferline'
  Plug 'norcalli/nvim-colorizer.lua'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'mattn/emmet-vim'
  Plug 'sheerun/vim-polyglot'
  Plug 'junegunn/fzf.vim'
  Plug 'https://github.com/tpope/vim-commentary'
  Plug 'https://github.com/ryanoasis/vim-devicons'
  Plug 'liuchengxu/vim-which-key'
  Plug 'folke/which-key.nvim'
  Plug 'olimorris/onedarkpro.nvim'
  Plug 'joshdick/onedark.vim'
call plug#end()

"--------------- Colorscheme Settings ---------------"
colorscheme onedarkpro 
lua require'colorizer'.setup()

" Transparent background.
hi Normal guibg=none ctermbg=none
hi LineNr guibg=none ctermbg=none
hi Folded guibg=none ctermbg=none
hi NonText guibg=none ctermbg=none
hi SpecialKey guibg=none ctermbg=none
hi VertSplit guibg=none ctermbg=none
hi SignColumn guibg=none ctermbg=none
hi EndOfBuffer guibg=none ctermbg=none

"--------------- Keybindings ---------------"
let mapleader = " "
let g:user_emmet_leader_key=','

" jump back to the last cursor position.
nnoremap <leader>\ ``

nnoremap <leader>e :CocCommand explorer<CR>
nnoremap <leader><leader>p :CocCommand prettier.forceFormatDocument<CR>

" Type jj to exit insert mode quickly.
inoremap jk <Esc>
inoremap kj <Esc>

nnoremap <leader>f :Files<CR>
nnoremap <leader>w :w!<CR>
nnoremap <leader>x :wq!<CR>
nnoremap <leader>qq :q!<CR>

" Center the cursor vertically when moving to the next word during a search.
nnoremap n nzz
nnoremap N Nzz

" Yank from cursor to the end of line.
nnoremap Y y$

" Use vim keyas to move between buffers
map <leader>n :bn<cr>
map <leader>p :bp<cr>
map <leader>d :bd<cr>  

" Navigate the split view easier by pressing CTRL+j, CTRL+k, CTRL+h, or CTRL+l.
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" Use alt + vim keys to resize windows
nnoremap <silent> <M-Up>      :resize -2<CR>
nnoremap <silent> <M-Down>    :resize +2<CR>
nnoremap <silent> <M-Left>    :vertical resize -2<CR>
nnoremap <silent> <M-Right>   :vertical resize +2<CR>

" keybinding to move lines up and down
xnoremap <A-j> :move '>+1<CR>gv-gv
xnoremap <A-k> :move '<-2<CR>gv-gv

" Indent 
vnoremap > >gv
vnoremap < <gv

" Better nav for autocomplete
inoremap <expr> <C-j> {"\<C-n>"}
inoremap <expr> <C-k> {"\<C-p>"}

" Better buffer nav 
nnoremap <TAB> :bnext<CR>
nnoremap <S-TAB> :bprevious<CR>

nnoremap <silent><leader><leader>l :!live-server &<CR>
"--------------- Plugin configs ---------------"
source $HOME/.config/nvim/plugged-config/coc-settings.vim
source $HOME/.config/nvim/plugged-config/lightline-settings.vim
source $HOME/.config/nvim/plugged-config/startify.vim

