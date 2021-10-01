function! s:smart_fern() abort
  Fern . -drawer -reveal=% -toggle -stay
endfunction

autocmd BufEnter clojure,dart,vim call s:smart_fern()
