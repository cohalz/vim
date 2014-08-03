 " neocomplete用設定
   let g:neocomplete#enable_at_startup = 1
   let g:neocomplete#enable_ignore_case = 1
   let g:neocomplete#enable_smart_case = 1
   if !exists('g:neocomplete#keyword_patterns')
       let g:neocomplete#keyword_patterns = {}
   endif
   let g:neocomplete#keyword_patterns._ = '\h\w*'

   " For snippet_complete marker.
   if has('conceal')
     set conceallevel=2 concealcursor=i
   endif
   let g:neocomplete#sources#dictionary#dictionaries = {
     \ 'default' : '',
     \ 'vimshell' : $HOME.'/.vimshell_hist',
     \ 'c' : $HOME.'/.vim/etc/dict/c.dict',
     \ 'cpp' : $HOME.'/.vim/etc/dict/cpp.dict',
     \ 'haskell' : $HOME.'/.vim/etc/dict/haskell.dict',
     \ 'java' : $HOME.'/.vim/etc/dict/java.dict',
     \ 'javascript' : $HOME.'/.vim/etc/dict/javascript.dict',
     \ 'lua' : $HOME.'/.vim/etc/dict/lua.dict',
     \ 'ocaml' : $HOME.'/.vim/etc/dict/ocaml.dict',
     \ 'scheme' : $HOME.'/.vim/etc/dict/scheme.dict',
     \ 'scala' : $HOME.'/.vim/etc/dict/scala.dict'
     \ }

   " <TAB>: completion.
   " inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
   inoremap <expr><S-TAB>  pumvisible() ? "\<C-p>" : "\<S-TAB>"

   " Plugin key-mappings.
   imap <C-k>     <Plug>(neosnippet_expand_or_jump)
   smap <C-k>     <Plug>(neosnippet_expand_or_jump)

   " SuperTab like snippets behavior.
   " imap <expr><TAB> neosnippet#jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : pumvisible() ? "\<C-n>" : "\<TAB>"
   imap <expr><TAB> pumvisible() ? "\<C-n>" : neosnippet#jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
   smap <expr><TAB> neosnippet#jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"


