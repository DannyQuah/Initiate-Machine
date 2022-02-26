" @(#) platform-identify.vim
" Last-edited: 2022.02.26.1514.Sat -- Danny Quah (me@DannyQuah.com)
" ----------------------------------------------------------------
" Revision History:
"  % 2022.02.26.1512.Sat -- Danny Quah (me@DannyQuah.com)
"  Platform detection // Modified from
"  https://devel.tech/snippets/n/vIIMu4mB/vim-functions-to-detect-os-and-platform
" ----------------------------------------------------------------
" Platform identification {
silent function! OSX()
  return has('macunix')
endfunction
silent function! LINUX()
  return has('unix') && !has('macunix') && !has('win32unix')
endfunction
silent function! WINDOWS()
  return  (has('win16') || has('win32') || has('win64'))
endfunction
silent function! CHROMEOS()
  let s:uname = system("uname -a")
  return (match(s:uname, 'Linux penguin') >= 0)
endfunction
silent function! FREEBSD()
  let s:uname = system("uname -s")
  return (match(s:uname, 'FreeBSD') >= 0)
endfunction
" }
"
" eof platform-identify.vim
