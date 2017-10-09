call plug#begin('~/.vim/plugged')
Plug 'fatih/vim-go'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
call plug#end()
" Give a shortcut key to NERD Tree
 map <F2> :NERDTreeToggle<CR>
set laststatus=2
set statusline+=%F
"set tags=./tags,tags;$HOME
set tags=tags;/
"set tags=./tags,./TAGS,tags;~,TAGS;~
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
" in normal mode F2 will save the file
" nmap <F2> :w<CR>
" in insert mode F2 will exit insert, save, enters insert again
" imap <F2> <ESC>:w<CR>
set number
