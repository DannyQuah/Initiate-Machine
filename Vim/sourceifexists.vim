" @(#) sourceifexists.vim
" Last-edited: 2022.02.26.1522.Sat -- Danny Quah (me@DannyQuah.com)
" ----------------------------------------------------------------
" Revision History:
"  % 2022.02.26.1520.Sat -- Danny Quah (me@DannyQuah.com)
"  Load vim source file if it exists
"  https://devel.tech/snippets/n/vIIMz8vZ/load-vim-source-files-only-if-they-exist
" ----------------------------------------------------------------
" Function to source if file exists {
function! SourceIfExists(file)
  if filereadable(expand(a:file))
    exe 'source' a:file
  endif
endfunction
" }
"
" eof sourceifexists.vim
