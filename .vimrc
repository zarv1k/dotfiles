"
"
" --------------------------
" vim zarv1k config - v0.1.0
" --------------------------


" auto download vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

 
" Plugins
call plug#begin()

Plug 'morhetz/gruvbox'			" theme like Intellij Idea by default
"Plug 'HerringtonDarkholme/yats.vim'	" TS synthax highlight
Plug 'neoclide/coc.nvim'		" Conquer of Completion
Plug 'preservim/nerdtree'		" NERDTree file manager
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'othree/yajs.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'ctrlpvim/ctrlp.vim'

call plug#end()


" From TS article - @see https://techinscribed.com/how-to-set-up-vim-as-an-ide-for-react-and-typescript-in-2020/
colorscheme gruvbox
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:airline_powerline_fonts = 1

" From TS article - @see https://thoughtbot.com/blog/modern-typescript-and-react-development-in-vim
autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

" Import coc config
source ~/.vim-coc-ts

" Custom params
set nu
set hidden
nnoremap <C-Tab> <C-w>w
nnoremap <S-Tab> <C-w>W
tnoremap <C-Tab> <C-w>w
tnoremap <S-Tab> <C-w>W
nmap <F10> :e ~/.vimrc<CR>
nmap <S-F10> :so ~/.vimrc<CR>
nmap <leader>1 :NERDTreeFind<CR>
nmap <F3> ]g
nmap <S-F3> [g
nmap <F5> :bf<CR>
nmap <F6> :bp<CR>
tmap <F6> <C-w>:bp<CR>
nmap <F7> :bN<CR>
tmap <F7> <C-w>:bN<CR>
nmap ¡ :NERDTreeToggle<CR>
set splitbelow
set splitright
"
set termwinsize=15x0
autocmd TerminalOpen * :wincmd J | :res 15

