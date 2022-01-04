" @(#) db/Vim/ftplugin/vimwiki.vim
" Last-edited: Sun 2020.11.01.1948 -- Danny Quah (me@DannyQuah.com)
" ----------------------------------------------------------------
" Revision History: 
"  % Tue 2020.09.15.1612 -- Danny Quah (me@DannyQuah.com)
"    First draft
" ----------------------------------------------------------------
"
" :VWS /thisToken/ - will search across all wiki notes
" :lopen - list all found 

"vimwiki-global-commands
"vimwiki-local-commands

"                              "ToDo
" <C-sp> toggle check
" .oOX - via gln/gpl, i.e., forward/backward completion
"                              "Splits
":VimwikiVSplitLink variants 
"<S-CR> Split and follow link
"<C-CR> Vertical split and follow link
"<C-S-CR> Follow link into new tab 
"[reuse] [move_cursor]
nnoremap <Leader>wvs :VimwikiVSplitLink 1 1<CR> 
nnoremap <Leader>whs :VimwikiSplitLink  1 1<CR> 


"                              "Calendar ------------------------- 
"command! SideCal Calendar -view=year -split=vertical -width=30 

"From Chris Mague own domain https://blog.mague.com/?p=602 
"function! ToggleCalendar()
"  execute ":Calendar"
"  if exists("g:calendar_open")
"    if g:calendar_open == 1
"      execute "q"
"      unlet g:calendar_open
"    else
"      g:calendar_open = 1
"    end
"  else
"    let g:calendar_open = 1
"  end
"endfunction
":autocmd FileType vimwiki map d :VimwikiMakeDiaryNote 
":autocmd FileType vimwiki map c :call ToggleCalendar() 

" eof vimwiki.vim
