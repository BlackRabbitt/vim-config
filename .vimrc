set nocompatible              " be iMproved, required
set number
set laststatus=2
set statusline=2
set runtimepath^=~/.vim/bundle/ctrlp.vim
set rtp+=~/.vim/bundle/Vundle.vim
set cursorline
set mouse=a
set clipboard=unnamed

autocmd BufNewFile,BufRead *.slim set ft=slim
"Remove all trailing whitespace by pressing F5
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>
let g:ruby_path = []

" Standard shortcut keys
map \a GVgg
map <C-t> :tabnew <Enter>
"map <C-i> >>
"map <C-W> :q! <Enter>
map <C-h> :%s/

"shortcuts
map \t :TagbarToggle<CR>
map \s :w<CR>
map \q :q<CR>
map \b :BufExplorer<CR>
map \v :set paste<CR>
map \nv :set nopaste<CR>
" comment shortcuts
map \c gc
map \nc gcgc
" distraction free writing
map \f :Goyo 100%<CR>
map \nf :Goyo!<CR>

syntax enable
colorscheme nord

filetype plugin on
filetype plugin indent on

map <C-i> :NERDTreeToggle<CR>
map <C-a> :MaximizerToggle<CR>

set tabstop=2
set shiftwidth=2
set expandtab

set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=2

set incsearch           " search as characters are entered
set hlsearch            " highlight matches

" neocomplete configuration
let g:neocomplete#enable_at_startup = 1
" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
 \ 'default' : '',
 \ 'vimshell' : $HOME.'/.vimshell_hist',
 \ 'scheme' : $HOME.'/.gosh_completions'
 \ }
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" neocomplete configuration end here
" airline configuration
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_powerline_fonts = 1
let g:Powerline_symbols='unicode'

function! AirlineInit()
  let g:airline_section_a = airline#section#create(['mode', ' *', 'branch', ' ', 'hunks'])
  let g:airline_section_b = airline#section#create(['ffenc'])
  let g:airline_section_y = 'Buffer#: %{bufnr("%")}'
  let g:airline_section_z = airline#section#create_right(['%l', '%c'])
endfunction
autocmd VimEnter * call AirlineInit()
" airline configuration ends here
" gitgutter configuration
let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_modified = '*'
let g:gitgutter_sign_removed = '-'
let g:gitgutter_sign_removed_first_line = '^'
let g:gitgutter_sign_modified_removed = '~'
" gitgutter configuration ends here
"
" bufexplorer configuration
" Buffers - explore/next/previous: Alt-12, 12, Shift-12.
"nnoremap <silent> <F12> :bn<CR>
"nnoremap <silent> <S-F12> :bp<CR>
"bufexplorer configuration ends here

call vundle#begin()
" " let Vundle manage Vundle, required
" Put everything inside vundle#begin() and vundle#end() block.
Plugin 'arcticicestudio/nord-vim'
Plugin 'VundleVim/Vundle.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'szw/vim-maximizer'
Plugin 'yegappan/grep' "grep -R 'keyword' .
Plugin 'Shougo/neocomplete.vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails'
Plugin 'raimondi/delimitmate'
Plugin 'majutsushi/tagbar'
Plugin 'godlygeek/tabular'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'altercation/vim-colors-solarized'
Plugin 'airblade/vim-gitgutter'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'mileszs/ack.vim'
Plugin 'slim-template/vim-slim.git'
Plugin 'pangloss/vim-javascript'
Plugin 'yggdroot/indentline'
Plugin 'junegunn/goyo.vim'
Plugin 'myusuf3/numbers.vim'
Plugin 'ryanoasis/vim-devicons'
Plugin 'mhinz/vim-startify'
Plugin 'elzr/vim-json'

"Plugin 'wincent/command-t'
call vundle#end()
hi Comment ctermfg=Yellow
