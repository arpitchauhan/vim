execute pathogen#infect()
inoremap jj <Esc>
set laststatus=2
set tabstop=2
set shiftwidth=2
set smarttab
set softtabstop=2
set expandtab
set ignorecase
set incsearch
set hlsearch

nnoremap <C-K> :call HighlightNearCursor()<CR>
function HighlightNearCursor()
  if !exists("s:highlightcursor")
    match Todo /\k*\%#\k*/
    let s:highlightcursor=1
  else
    match None
    unlet s:highlightcursor
  endif
endfunction

nnoremap tl :tabnext<CR>
nnoremap th :tabprev<CR>
nnoremap tn :tabnew<CR>

autocmd FileType c,cpp,javascript,python,ruby,html,yaml autocmd BufWritePre <buffer> StripWhitespace
