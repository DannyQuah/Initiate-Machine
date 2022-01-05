let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1 0/Board/1/1-Notes/Listings/zLogs/2020/2020.08.md
badd +1 0/Board/1/1-Notes/Listings/zLogs/2020/nexts.md
badd +0 0/Scene/1/db/Vim/Vimrc
argglobal
silent! argdel *
edit 0/Board/1/1-Notes/Listings/zLogs/2020/nexts.md
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=1 winheight=1 winminwidth=1 winwidth=1
exe '1resize ' . ((&lines * 24 + 25) / 51)
exe 'vert 1resize ' . ((&columns * 79 + 80) / 160)
exe '2resize ' . ((&lines * 24 + 25) / 51)
exe 'vert 2resize ' . ((&columns * 79 + 80) / 160)
exe 'vert 3resize ' . ((&columns * 80 + 80) / 160)
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 9 - ((8 * winheight(0) + 12) / 24)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
9
normal! 0
lcd ~/0/Board/1/1-Notes/Listings/zLogs/2020
wincmd w
argglobal
if bufexists('~/0/Board/1/1-Notes/Listings/zLogs/2020/2020.08.md') | buffer ~/0/Board/1/1-Notes/Listings/zLogs/2020/2020.08.md | else | edit ~/0/Board/1/1-Notes/Listings/zLogs/2020/2020.08.md | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 492 - ((0 * winheight(0) + 12) / 24)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
492
normal! 0193|
lcd ~/0/Board/1/1-Notes/Listings/zLogs/2020
wincmd w
argglobal
if bufexists('~/0/Scene/1/db/Vim/Vimrc') | buffer ~/0/Scene/1/db/Vim/Vimrc | else | edit ~/0/Scene/1/db/Vim/Vimrc | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 26 - ((19 * winheight(0) + 24) / 49)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
26
normal! 017|
lcd ~/0/Scene/1/db/Vim
wincmd w
3wincmd w
exe '1resize ' . ((&lines * 24 + 25) / 51)
exe 'vert 1resize ' . ((&columns * 79 + 80) / 160)
exe '2resize ' . ((&lines * 24 + 25) / 51)
exe 'vert 2resize ' . ((&columns * 79 + 80) / 160)
exe 'vert 3resize ' . ((&columns * 80 + 80) / 160)
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
set winminheight=1 winminwidth=1
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
