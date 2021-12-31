" @(#) db/Vim/timestamps.vim
" Last-edited: Wed 2021.12.08.2101 -- Danny Quah (me@DannyQuah.com)
" Created: Fri 2020.07.17.2000 -- Danny Quah (me@DannyQuah.com)
" Toggle with :DisableTimeStamp // :EnableTimestamp
" ----------------------------------------------------------------
" Revision History:
"  % Tue 2020.08.11.2318 -- Danny Quah (me@DannyQuah.com)
"    GVim on W10 doesn't like strftime formats that have numbers;
"    so just %Y, not %4Y; just %m, not %2m.
"  % Fri 2020.07.17.2000 -- Danny Quah (me@DannyQuah.com)
"    First draft
" ----------------------------------------------------------------
" modifying https://vim.fandom.com/wiki/Insert_current_date_or_time
" DEFAULT- let g:timestamp_rep='%a %d %b %Y %I:%M:%S %p %Z'
" DEFAULT- (in the package; it won't work in .vimrc)
" let g:timestamp_regexp=s:getValue('\v\C%(<%(Last %([cC]hanged?|modified)|Modified)\s*:\s+)@<=\a+ \d{2} \a+ \d{4} \d{2}:\d{2}:\d{2}%(\s+[AP]M)?%(\s+\a+)?|TIMESTAMP', 'g:timestamp_regexp')
"
"let g:timestamp_rep='%3a %4Y.%2m.%2d.%2H%2M '
let g:timestamp_rep='%a %Y.%m.%d.%H%M '
let g:timestamp_regexp='\v\c%(Last-%([cC]hanged?|[eE]dited):\s+)@<=\a+ \d{4}.\d{2}.\d{2}.\d{4}[h ]?%(\s+\a+)?|TIMESTAMP[ ]?'
                               " 'Last-edited' so it's a single token
let g:timestamp_modelines=7   "Default is modelines, typically 5

" eof db/Vim/timestamps.vim
