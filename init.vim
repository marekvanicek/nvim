call plug#begin('~/.config/nvim/plugged')

Plug 'morhetz/gruvbox'		           " dark theme
Plug 'preservim/nerdtree'	           " file manager
Plug 'vim-airline/vim-airline'	       " status line
Plug 'tpope/vim-surround'              " quick bracket changing
Plug 'ctrlpvim/ctrlp.vim'              " fuzzy file search
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mkitt/tabline.vim'               " Tab indexes
Plug 'mhinz/vim-startify'              " Starting screen
call plug#end()

"TODO install ack
"TODO rework tab management

syntax on                              " enables syntax
set relativenumber       	           " lines are indexed relatively from current line
set nu                                 " shows index of current line
set hlsearch                           " highlights searched
set autoindent                         " indents text
set smartindent                        " indents text
let mapleader=" "                      " sets mapleader as 'space'

"Gruvbox commands
autocmd vimenter * colorscheme gruvbox                                                                                        
"autocmd vimenter * ++nested colorscheme gruvbox 

"Tab stuff                                                                                                                    
set ts=4                                                                                                                      
set sts=3                                                                                                                     
set sw=2                                                                                                                      
set et

"default splitting
set splitbelow
set splitright

" Remap splits navigation to just CTRL + hjkl
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Make adjusing split sizes a bit more friendly
nnoremap <silent> <S-h> :vertical resize +3<CR>
nnoremap <silent> <S-l> :vertical resize -3<CR>
nnoremap <silent> <S-k> :resize +3<CR>
nnoremap <silent> <S-j> :resize -3<CR>

"Scrolling speed
"set ttyfast
"set lazyredraw
"set updatetime=300

"Empty space on top and bottom                                                                                                
set scrolloff=8                                                                                                               
set sidescrolloff=15                                                                                                          
set sidescroll=1                                                                                                              
                                                                                                                              
"Nerd tree setup                                                                                                              
noremap <leader>w :tab ball<CR>                                                                                               
noremap <C-o> :NERDTreeFind<CR>                                                                                               
noremap <leader>o :NERDTreeToggle<CR>
let g:NERDTreeWinPos = "right"

"Clears / search                                                                                                              
nnoremap <esc> :noh<return><esc>

"Lets ctrlp only search current directory                                                                                     
let g:ctrlp_working_path_mode = 'a'

"Opens terminal
noremap <leader>t :term<CR>
