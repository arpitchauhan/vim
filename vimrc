inoremap jk <Esc>
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
