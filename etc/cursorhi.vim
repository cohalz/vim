"http://d.hatena.ne.jp/osyo-manga/20140121/1390309901
"元との違いはカーソル下が記号の場合、空白区切りの単位でハイライトするようにしたこと
  " 1 が設定されていれば有効になる
  let g:enable_highlight_cursor_word = 1


  augroup highlight-cursor-word
      autocmd!
       autocmd CursorMoved * call s:hl_cword()
      autocmd ColorScheme * highlight CursorWord gui=underline guifg=orange
      autocmd BufLeave * call s:hl_clear()
      autocmd WinLeave * call s:hl_clear()
      autocmd InsertEnter * call s:hl_clear()
  augroup END

  function! s:hl_clear()
    if exists("b:highlight_cursor_word_id") && exists("b:highlight_cursor_word")
      silent! call matchdelete(b:highlight_cursor_word_id)
      unlet b:highlight_cursor_word_id
      unlet b:highlight_cursor_word
    endif
  endfunction

  function! s:hl_cword()
    let cursorChar = matchstr(getline('.'), '.', col('.')-1)
    if matchstr(cursorChar,"[a-zA-Z0-9_'.]") != ""
      let word = expand('<cword>')
    else 
      let word = expand('<cWORD>')
    endif
    if    word == ""
      return
    endif
    " 記号列のせいで全文字がハイライトされないようにする
    if  matchstr(word,"[*]") != ""
      return
    endif
    if get(b:, "highlight_cursor_word", "") ==# word
      return
    endif

    call s:hl_clear()
    if !g:enable_highlight_cursor_word
      return
    endif

    if !empty(filter(split(word, '\zs'), "strlen(v:val) > 1"))
      return
    endif

    silent! let b:highlight_cursor_word_id = matchadd("CursorWord", word)
    let b:highlight_cursor_word = word
  endfunction

