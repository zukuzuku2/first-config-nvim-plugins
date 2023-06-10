so ~\AppData\Local\nvim\maps.vim
so ~\AppData\Local\nvim\toggleterm.lua

syntax on
set mouse=a
set showcmd
set showmatch
set sw=2
set expandtab
set smartindent                                       
set number                                            " line numbers
set rnu                                               " relative number
set hlsearch                                          " highlight matches
set incsearch                                         " incremental searching
set numberwidth=1
set ignorecase                                        " searches are case insensitive
set smartcase                                         " ... unless the contain at least one capital letter
set clipboard=unnamedplus                             " to use the operating system clipboard
set encoding=UTF-8
set background=dark
set updatetime=100
set hidden


call plug#begin('~/AppData/Local/nvim/plugged')

" status bar
Plug 'itchyny/lightline.vim'
Plug 'sainnhe/gruvbox-material'
Plug 'shinchu/lightline-gruvbox.vim'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'

call plug#end()


if (has("termguicolors"))
  set termguicolors
endif

colorscheme gruvbox-material
let g:gruvbox_material_foreground='mix'
let g:gruvbox_material_background='hard'
let g:gruvbox_material_enable_italic=1
let g:gruvbox_material_transparent_background=2
let g:gruvbox_material_dim_inactive_windows=1
let g:lightline = {}
let g:lightline.colorscheme = 'gruvbox'
" This path probably won't work
let g:gitgutter_git_executable = 'C:\Program Files\Git\bin\git.exe'
let g:gitgutter_terminal_reports_focus=0

"""""""""""""""""""""""""""""""""""""""""""""""""" COC Config

let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver', 'coc-vetur', 'coc-flutter', 'coc-yank', 'coc-tslint-plugin', 'coc-snippets', 'coc-svelte']


" Mappings Go To's
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gR <Plug>(coc-references)

" Mappings Completion
inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Mappings Diagnostics
nnoremap <silent> d[ <Plug>(coc-diagnostic-prev)
nnoremap <silent> d] <Plug>(coc-diagnostic-next)

" Mappings Hover Documentation
nnoremap <silent> K :call ShowDocumentation()<CR>

" Mappings Code Actions
nnoremap ga <Plug>(coc-codeaction-cursor)

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction


"""""""""""""""""""""""""""""""""""""""""""""""""" COC Config
