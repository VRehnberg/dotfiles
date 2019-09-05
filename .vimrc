" Mark with mouse 
"set mouse=a

" Tab to spaces
let _curfile = expand("%:t")
if _curfile =~ "Makefile" || _curfile =~ "makefile" || _curfile =~ ".*\.mk"
    set noexpandtab
else
    set tabstop=4
    set shiftwidth=4
    set expandtab
endif

" Set higlight search on
set hlsearch

" Commenting blocks of code.
autocmd FileType c,cpp,java,scala let b:comment_leader = '// '
autocmd FileType sh,ruby,python   let b:comment_leader = '# '
autocmd FileType conf,fstab       let b:comment_leader = '# '
autocmd FileType tex              let b:comment_leader = '% '
autocmd filetype mail             let b:comment_leader = '> '
autocmd filetype vim              let b:comment_leader = '" '
noremap <silent> ,cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> ,cu :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>

" Key maps
" run current script in temporary new window
nmap <silent> <F5> :silent ! gnome-terminal -e 'bash -c "./% ; read line"'; <CR><CR>:redraw!<CR>
" map ctrl+l to remove highligts
nmap <silent> <C-l> :nohl<CR>
