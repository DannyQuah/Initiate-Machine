" @(#) Editors/Vim/appearances.vim
" Last-edited: Sun 2020.07.19.0827 -- Danny Quah (me@DannyQuah.com)
" ----------------------------------------------------------------
" Revision History:
"  % Sun 2020.07.19.0731 -- Danny Quah (me@DannyQuah.com)
"    thematic themes, in place of those in .gvimrc
"    Regular Vim doesn't have guifont or typeface.
" ----------------------------------------------------------------

"  Thematic ------------------------------------------------------

let g:thematic#themes = {
\ 'bubblegum'  : {
\                },
\ 'jellybeans' : { 'laststatus': 0,
\                  'ruler': 1,
\                },
\ 'pencil_dark' :{'colorscheme': 'pencil',
\                 'background': 'dark',
\                 'airline-theme': 'badwolf',
\                 'ruler': 1,
\                },
\ 'pencil_lite' :{'colorscheme': 'pencil',
\                 'background': 'light',
\                 'airline-theme': 'light',
\                 'ruler': 1,
\                },
\ }

" eof Editors/Vim/appearances.vim
