" @(#) db/Vim/ftplugin/vimwiki.vim
" Last-edited: 2022.09.24.1224.Sat -- Danny Quah (me@DannyQuah.com)
" ----------------------------------------------------------------
" Revision History:  
"  % 2022.09.24.1218.Sat -- Danny Quah (me@DannyQuah.com)
"   When in use (although no longer)  my index.md's had
"    [WikiPrsn](wn.myWikiPrsn:./index.md)  
"    [WikiDean](wn.myWikiDean:./index.md)  
"    [WikiWork](wn.myWikiWork:./index.md)  
"    [EL-DQ-Inbox](wn.myWikiDean:./EL-DQ-inbox/EL-DQ-inbox.md)  
"  % Tue 2020.09.15.1612 -- Danny Quah (me@DannyQuah.com)
"    First draft. "
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

" Disabling these VimWiki keystrokes 
" as my diary notes are better managed through Obsidian
nnoremap <Leader>w<Leader>w <NOP>
nnoremap <Leader>wi <NOP>


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
