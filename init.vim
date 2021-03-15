call plug#begin('~/.config/nvim/plugged')

                  "THEMES"
Plug 'morhetz/gruvbox'		                          " dark theme
Plug 'sonph/onehalf', { 'rtp': 'vim' }                " onehalf theme
Plug 'jacoborus/tender.vim'                           " tender theme
Plug 'drewtempelmeyer/palenight.vim'                  " palenight theme
Plug 'rakr/vim-one'                                   " vimone theme
Plug 'dracula/vim', { 'as': 'dracula' }               " dracula theme
Plug 'NLKNguyen/papercolor-theme'                     " light theme 

                  "NOT THEMES"
Plug 'preservim/nerdtree'	                          " file manager
Plug 'vim-airline/vim-airline'	                      " status line
Plug 'tpope/vim-surround'                             " quick bracket changing
Plug 'ctrlpvim/ctrlp.vim'                             " fuzzy file search
Plug 'mkitt/tabline.vim'                              " tab indexes
Plug 'mhinz/vim-startify'                             " starting screen
Plug 'vim-scripts/DoxygenToolkit.vim'                 " doxygen comments
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'pseewald/vim-anyfold'                           " Folding plugin

call plug#end()

"TODO install ack
"TODO rework tab management

syntax on                                             " enables syntax
syntax enable
set relativenumber       	                          " lines are indexed relatively from current line
set nu                                                " shows index of current line
set hlsearch                                          " highlights searched
set autoindent                                        " indents text
set smartindent                                       " indents text
let mapleader=" "                                     " sets mapleader as 'space'

"Gruvbox commands
"autocmd vimenter * ++nested colorscheme gruvbox 
"autocmd vimenter * colorscheme gruvbox                                                                                        

"Onehalf commands
"colorscheme onehalflight
"let g:airline_theme='onehalflight'

"Tender theme
colorscheme tender

"Palenight theme
"set background=dark
"colorscheme palenight
"let g:airline_theme = "palenight"

"Atom one theme
"colorscheme one
"set background=dark
"let g:airline_theme='one'

"Dracula theme
"colorscheme dracula

"set background=dark
"colorscheme PaperColor


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
"noremap <C-o> :NERDTreeFind<CR>                                                                                               
noremap <leader>o :NERDTreeToggle<CR>
let g:NERDTreeWinPos = "right"

"Clears / search                                                                                                              
nnoremap <esc> :noh<return><esc>

"Lets ctrlp only search current directory                                                                                     
let g:ctrlp_working_path_mode = 'a'

"Opens terminal
noremap <leader>t :term<CR>

"Doxygen comment
noremap <leader>d :Dox<CR>

"AutoFold commands
filetype plugin indent on
autocmd Filetype * AnyFoldActivate
set foldlevel=0  " close all folds
" or
"set foldlevel=99 " Open all folds
