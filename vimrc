set number " Turns on line numbering

set backspace=indent,eol " Backspace over autoindent and line breaks

let mapleader="," " Set the leader to comma

" Install the plugin manager if it's not already installed
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


" All the plugins
call plug#begin('~/.vim/plugged')

Plug 'joshdick/onedark.vim' " Onedark colour scheme
Plug 'vim-airline/vim-airline' " Status line plugin
Plug 'kien/ctrlp.vim' " Fuzzy search
Plug 'vim-syntastic/syntastic' " Syntastic
Plug 'sjl/gundo.vim' " Better undo
Plug 'mileszs/ack.vim'
Plug 'wesQ3/vim-windowswap'

call plug#end()


"" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" Other Ctrl-P settings
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git' " Ignore these directories when searching with ctrlp
let g:ctrlp_switch_buffer = 0 " Always open files in a new buffer
let g:ctrlp_working_path_mode = 0 " Allow us to change the working directory and have CtrlP respect that change


" Syntastic default settings
" REVISIT THESE LATER
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


" MAPPINGS

" Toggle the type of line numbering
nmap <leader>ln :set relativenumber!<CR>

" Trigger Ctrl P 
nmap <leader>p <C-P>

" User leader + q to close splits
nnoremap <leader>q <C-W>q

" Arrows to split navagation in normal mode
nnoremap <Up> <C-W><C-K>
nnoremap <Down> <C-W><C-J>
nnoremap <Left> <C-W><C-H>
nnoremap <Right> <C-W><C-L>

nnoremap <leader>e <nop>
nnoremap <leader>ev :vsp ~/.vimrc<CR>
nnoremap <leader>ez :vsp ~/.zshrc<CR>
nnoremap <leader>sv :source ~/.vimrc<CR>

nmap <leader>sh   :leftabove  vnew<CR>
nmap <leader>sl  :rightbelow vnew<CR>
nmap <leader>sk     :leftabove  new<CR>
nmap <leader>sj   :rightbelow new<CR>

" Move to the beginning and end of a line
nnoremap B ^
nnoremap E $

" ensures $ and ^ don't do anything
nnoremap $ <nop>
nnoremap ^ <nop>

nnoremap <leader>u :GundoToggle<CR>

" Move vertically based on visual lines not real lines, this is useful when
" there are wrapped lines that you don't want to skip over
nnoremap j gj
nnoremap k gk

syntax on
colorscheme onedark
syntax on
colorscheme onedark
