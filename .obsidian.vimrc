" frequently used action : c/r/y/d
" UPPERCASE ACTION : till the end of the line
" C/D already works fine
noremap Y y$

" jj to escape insert mode
inoremap jj <Esc>

" send to clipboard
set clipboard=unnamed

" x send to register only in visual mode
nnoremap x "_x
nnoremap X "_X

" y always send to register
" d/c/r/D/C shouldn't send to clipboard/register
nnoremap d "_d
vnoremap d "_d
nnoremap D "_D
vnoremap D "_D
nnoremap c "_c
vnoremap c "_c
nnoremap C "_C
nnoremap C "_C
nnoremap r "_r

" j/k nav by visual line not vertical line
" Turn off highlight as soon as navigation starts
nnoremap j :nohl<CR>gj
nnoremap k :nohl<CR>gk
vnoremap j gj
vnoremap k gk
noremap J j
noremap K k
nnoremap h :nohl<CR>h
nnoremap l :nohl<CR>l

" tab equal to 2 spaces
set tabstop=2

" action + i/a + '/"/`/{/[/< : on the surrounded block
" Already works !

" action + i/a + p : on the current paragraph
" Already works !

" action + i/a + s : on the current sentence (surrounded by dots)
" Already works !

" Go back and forward with Ctrl+O and Ctrl+I
" (make sure to remove default Obsidian shortcuts for these to work)
" exmap back obcommand app:go-back
" nmap <C-o> :back<CR>
" exmap forward obcommand app:go-forward
" nmap <C-i> :forward<CR>

" Emulate Folding https://vimhelp.org/fold.txt.html#fold-commands
exmap togglefold obcommand editor:toggle-fold
nmap zo :togglefold<CR>
nmap zc :togglefold<CR>
nmap za :togglefold<CR>

exmap unfoldall obcommand editor:unfold-all
nmap zR :unfoldall<CR>

exmap foldall obcommand editor:fold-all
nmap zM :foldall<CR>

exmap tabnext obcommand workspace:next-tab
nmap gt :tabnext<CR>
exmap tabprev obcommand workspace:previous-tab
nmap gT :tabprev<CR>

" TO BE CONTINUED:
" action + i/a + g : on the whole file 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" TODO: This is not working (perhaps it is not working with Code Mirror vim) "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" nmap dig GVggd
" nmap dag GVggd
" :%y<CR> : yank the curr line instead of whole file idk tf why
" nmap yig :%y<CR>
" nmap yag :%y<CR>
" nmap cig GVggc
" nmap cag GVggc
" nmap vig G$vgg
" nmap Vig GVgg

" action + i/a + i : on the same identation
" leap.nvim like
