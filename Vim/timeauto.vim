" @(#) db0/Vim/timeauto.vim
" Last-edited: 2022.01.22.1912.Sat -- Danny Quah (me@DannyQuah.com)
" Modified from https://vim.fandom.com/wiki/Insert_current_date_or_time
" If buffer modified, update any 'Last-edited: ' in the first 10 lines.
" Restores cursor and window position using save_cursor variable.
"
" Created: 2022.01.22.1317.Sat -- Danny Quah (me@DannyQuah.com)
" ----------------------------------------------------------------
function! LastModified()
  if &modified
    let save_cursor = getpos(".")
    let nmbLines = min([7, line("$")])
    keepjumps exe '1,' . nmbLines . 's#^\(.\{,10}Last-edited: \).*#\1' .
          \ strftime('%Y.%m.%d.%H%M.%a')
          \ '-- Danny Quah (me@DannyQuah.com)'
          \. '#e'
    call histdel('search', -1)
    call setpos('.', save_cursor)
  endif
endfun
autocmd BufWritePre * call LastModified()

" eof db0/Vim/timeauto.vim
