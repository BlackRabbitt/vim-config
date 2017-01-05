set nocompatible              " be iMproved, required
set number
set laststatus=2
set statusline=2
set runtimepath^=~/.vim/bundle/ctrlp.vim
set rtp+=~/.vim/bundle/Vundle.vim
set cursorline
map <C-o> :set paste<CR>

autocmd BufNewFile,BufRead *.slim set ft=slim
"Remove all trailing whitespace by pressing F5
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

nmap <F8> :TagbarToggle<CR>

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

" syntastic configuration
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set backspace=indent,eol,start
highlight SyntasticWarning guifg=White guibg=Red ctermbg=1 ctermfg=15

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" sytastic configuration ends here.
"
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
nnoremap <silent> <F12> :BufExplorer<CR>
"nnoremap <silent> <F12> :bn<CR>
"nnoremap <silent> <S-F12> :bp<CR>
"bufexplorer configuration ends here

call vundle#begin()
" " let Vundle manage Vundle, required
" Put everything inside vundle#begin() and vundle#end() block.
Plugin 'VundleVim/Vundle.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'szw/vim-maximizer'
Plugin 'yegappan/grep' "grep -R 'keyword' .
Plugin 'Shougo/neocomplete.vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-surround'
Plugin 'raimondi/delimitmate'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'majutsushi/tagbar'
Plugin 'godlygeek/tabular'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'mileszs/ack.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'slim-template/vim-slim.git'
Plugin 'pangloss/vim-javascript'
call vundle#end()
