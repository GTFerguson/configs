syntax on

colorscheme badwolf
"	Set background to dark
set bg=dark
"	Allow the mouse to be used
set mouse=a
"	Make default clipboard to system
set clipboard=unnamedplus
"	Line Stuff
set relativenumber
set number
"	Tags
set tabstop=4
set shiftwidth=4
"	Searching
set incsearch
set hlsearch
"	Turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>
"	Quicker Commands  Switch : and ;
nnoremap ; :
nnoremap : ;
"	Switch betweeen Source and Header
map <F5> ;call CurtineIncSw()<CR>

let g:neocomplcache_enable_at_startup = 1
"	File Templates
au BufNewFile *.c 0r ~/.vim/skel/c.skel | execute "normal! 3gg$" | s/DATE_TIME/\=strftime("%b %d, %Y %X (%Z)")/ | execute "normal! 9ggi\<Tab>\<Esc>"
"	File Defaults
autocmd Filetype c set autoindent | set cindent
	\ | ia _while while () {<CR>}<CR><Esc>2ko
	\ | ia _for for ( ; ; ) {<CR>}<CR><Esc>2ko
	\ | ia _if if () {<CR>}<CR><Esc>2ko
	\ | ia _pr printf ("");<Esc>2hi
	\ |	ia _switch switch () {<CR>}<CR><Esc>2ko
