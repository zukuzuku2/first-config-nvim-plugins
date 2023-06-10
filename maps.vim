" Usual commands
nnoremap <C-s> :w<CR>
nnoremap <C-q> :q<CR>
nnoremap <C-w> :bdelete<CR>       " Cerrar el buffer que esta abierto actualmente

" Find
nnoremap // :noh<CR>


let mapleader = " "
nmap <F5> :so<CR>
vmap <F5> :so<CR>


nnoremap <F2> :NERDTreeToggle<CR>
nnoremap <F3> :NERDTreeFind<CR>

" Split navigation
nnoremap <A-l> <C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-v> :vsplit<CR>


" Terminal
tnoremap <Esc> <C-\><C-n>
