set nocompatible
filetype off
set autoread
 " Note: Skip initialization for vim-tiny or vim-small.
 if !1 | finish | endif

 if has('vim_starting')
   set nocompatible               " Be iMproved

   " Required:
   set runtimepath+=~/.vim/bundle/neobundle.vim/
 endif

 " Required:
 call neobundle#begin(expand('~/.vim/bundle/'))

 " Let NeoBundle manage NeoBundle
 " Required:
 NeoBundleFetch 'Shougo/neobundle.vim'
" ここにインストールしたいプラグインのリストを書く
NeoBundle 'git://git.code.sf.net/p/vim-latex/vim-latex'
NeoBundle 'rbtnn/mario.vim'
NeoBundle 'rbtnn/game_engine.vim'
NeoBundle 'LeafCage/foldCC'
NeoBundle 'Yggdroot/indentLine'
NeoBundle 'basyura/TweetVim'
NeoBundle 'basyura/bitly.vim'
NeoBundle 'basyura/twibill.vim'
NeoBundle 'cohalz/c.vim'
NeoBundle 'cohalz/scala-vim-support'
NeoBundle 'cohalz/vim-smartinput'
NeoBundle 'cohalz/vim2hs'
NeoBundle 'cohalz/ghcmod-vim'
NeoBundle 'derekwyatt/vim-scala'
NeoBundle 'gcmt/wildfire.vim'
NeoBundle 'glts/vim-textobj-comment'
NeoBundle 'h1mesuke/unite-outline'
NeoBundle 'honza/vim-snippets'
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'jimsei/winresizer'
NeoBundle 'kana/vim-filetype-haskell'
NeoBundle 'kana/vim-operator-replace'
NeoBundle 'kana/vim-operator-user'
NeoBundle 'kana/vim-textobj-indent'
NeoBundle 'kana/vim-textobj-user'
NeoBundle 'kannokanno/previm'
NeoBundle 'mattn/gist-vim'
NeoBundle 'mattn/webapi-vim'
NeoBundle 'saihoooooooo/glowshi-ft.vim'
NeoBundle 'rhysd/vim-operator-surround'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'thinca/vim-quickrun'
NeoBundle 'thinca/vim-ref'
NeoBundle 'thinca/vim-textobj-plugins'
NeoBundle 'thinca/vim-visualstar'
NeoBundle 'tpope/vim-commentary'
NeoBundle 'tpope/vim-abolish'
NeoBundle 'houtsnip/vim-emacscommandline'
NeoBundle 'tyru/open-browser.vim'
NeoBundle 'ujihisa/neco-ghc'
NeoBundle 'ujihisa/ref-hoogle'
NeoBundle 'ujihisa/unite-haskellimport'
NeoBundle 'vim-jp/vital.vim'
NeoBundle 'w0ng/vim-hybrid'
NeoBundle 'eagletmt/unite-haddock'
NeoBundle 'Shougo/unite.vim' 
NeoBundle 'Shougo/neomru.vim'
NeoBundle 'Shougo/neocomplete.vim'
NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/vimfiler'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'Shougo/vimshell'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/vimproc', {
      \ 'build' : {
      \     'windows' : 'make -f make_mingw32.mak',
      \     'cygwin' : 'make -f make_cygwin.mak',
      \     'mac' : 'make -f make_mac.mak',
      \     'unix' : 'make -f make_unix.mak',
      \    },
      \ }
 call neobundle#end()

 " Required:
 filetype plugin indent on

 " If there are uninstalled bundles found on startup,
 " this will conveniently prompt you to install them.
 NeoBundleCheck

if filereadable(expand('~/.vim/etc/neocomplete.vim')) 
  source ~/.vim/etc/neocomplete.vim
endif

if filereadable(expand('~/.vim/etc/cursorhi.vim')) 
  source ~/.vim/etc/cursorhi.vim
endif

if filereadable(expand('~/.vim/etc/lightline.vim')) 
  source ~/.vim/etc/lightline.vim
endif

"インクリメンタルサーチ
set incsearch

"http://d.hatena.ne.jp/osyo-manga/20140121/1390309901
"元との違いはカーソル下が記号の場合、空白区切りの単位でハイライトするようにしたこと
  " 1 が設定されていれば有効になる
  let g:enable_highlight_cursor_word = 1


  augroup Vimrc
    autocmd!
    autocmd VimEnter * VimFiler -split -simple -winwidth=20 -no-quit 
    autocmd BufNewFile,BufRead,BufWritePost * retab! | IndentLinesReset
    autocmd BufNewFile,BufRead *.{md,mdwn,mkd,mkdn,mark*} set filetype=markdown
  augroup END



" e .などでvimfilerが起動できるように
let g:vimfiler_as_default_explorer = 1

"http://www.daisaru11.jp/blog/2011/09/vimsyntastic%E3%81%A7%E6%96%87%E6%B3%95%E3%83%81%E3%82%A7%E3%83%83%E3%82%AF%E3%82%92%E8%87%AA%E5%8B%95%E3%81%A7%E8%A1%8C%E3%81%86/
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=2

"Neosnippetで使うディレクトリを指定
let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets, ~/.vim/etc/snippets'

"http://blog.supermomonga.com/articles/vim/vimshell-dynamicprompt.html

"http://ameblo.jp/toki917/entry-11559823574.html
augroup VimFilerOpen
augroup END

"VimFilerのセーフモードをオフに
let g:vimfiler_safe_mode_by_default = 0

"http://lisia.hatenadiary.jp/entry/2014/01/25/000301
set list listchars=tab:\¦\
let g:indentLine_color_term = 111

let g:tweetvim_empty_separator = 1

let g:indentLine_faster = 1

"http://hail2u.net/blog/software/vim-wildfire.html
let g:wildfire_water_map = '<S-Enter>'
let g:wildfire_objects = ["ii", "i'", 'i"', "i)", "i]", "i}", "ip", "it"]

let g:gist_clip_command = 'pbcopy'
let g:gist_detect_filetype = 1
let g:github_user = 'cohalz'

"<Leader>mでマークダウンのプレビュー表示
nnoremap <silent> <Leader>m :PrevimOpen<CR>

"Haskell関連
"PATHは各自合ったように変更
let $PATH = $PATH . ':' . expand('~/.cabal/bin')
let $PATH = $PATH . ':' . expand('/usr/local/bin')
let g:ghcmod_hlint_options = ['--ignore=Redundant $']
let g:ghcmod_type_highlight = 'ghcmodType'

"vimshellで現在のパスを表示
let g:vimshell_prompt_expr = 'getcwd()." > "'
let g:vimshell_prompt_pattern = '^\f\+ > '

"Qを未設定に
nnoremap Q <Nop>

"Yの挙動を行末までに変更
nnoremap Y y$

"--------------------
"operator-replace
"Rで置換できるようにする
"defaultのRが使えなくなるので注意
"--------------------
map R <Plug>(operator-replace)

"検索を画面の中央に表示
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz

"<C-j>でEsc
inoremap <SID>I_won’t_ever_type_this <Plug>IMAP_JumpForward
nnoremap <SID>I_won’t_ever_type_this <Plug>IMAP_JumpForward
imap <C-j> <Esc>
nnoremap <C-j> <Esc>
vnoremap <C-j> <Esc>

"インサートから<C-o>連打して途中からでも改行;
nnoremap <C-o> o

" Ctrl+:でコマンドモードへ、設定するにはhttps://www.dropbox.com/s/vklvp9qbq7mz1w0/private.xml からKeyRemap4Macbookで"Vim Keybind"をオンにしてください
"USキーボードMac以外の動作は保証できません
inoremap  <C-o>:
nnoremap  :
cnoremap  <Esc>:

"Ctrl+hやlでインサートモードも動けるように
inoremap <C-l> <C-o>a
inoremap <C-h> <Esc>i

"いい感じに横からVimShellを起動
nnoremap <silent> co <C-w>v<C-w>10><C-w><C-w>:VimShell<CR><Esc><C-w>h

"今いる場所以外を折りたたむ
noremap <Space>i zMzv
"折りたたみをすべて展開
noremap <Space>r zR

"<Leader>zで左のVimFilerを開閉
nnoremap <silent> <Leader>z :<C-u>VimFilerBufferDir -split -simple -winwidth=20 -toggle -no-quit<CR>

"TweetVimを起動
nnoremap <silent> twi :TweetVimUserStream<CR>

"<Leader>xで前のバッファに戻る
nnoremap <silent> <Leader>x <C-^>$

"VimShellを今のウインドウで開く
nnoremap <silent> vs :VimShell<CR><Esc>

"ツイートする
nnoremap <Leader>s :TweetVimSay<CR>

"VimShellでzshの補完
nnoremap <Tab> <Plug>(vimshell_zsh_complete)

"http://qiita.com/tekkoc/items/98adcadfa4bdc8b5a6ca
"sを使ってウインドウ関連の移動など
"slで右のウインドウ、shで左のウインドウに移動
nnoremap s <Nop>
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap sn gt
nnoremap sp gT
nnoremap st :<C-u>tabnew<CR>
nnoremap sv :<C-u>vs<CR>


"ハイライトを消す
nnoremap <silent> - :noh<CR>

"http://d.hatena.ne.jp/tyru/20130509/vim_replaceable_keys
"C-hlなどで単語間の移動
map <C-h> b
map <C-l> w
map <S-h> ge
map <S-l> e

"表示行で移動
nnoremap k gk
nnoremap j gj

" s*でカーソル下のキーワードを置換
nnoremap <expr> s* ':%substitute/\<' . expand('<cword>') . '\>/'
vnoremap <expr> s* ':substitute/\<' . expand('<cword>') . '\>;'

"Haskellで現在の単語の関数の型を表示
noremap <silent> <Space>t :GhcModType<CR>
noremap <silent> <Leader><Leader> :GhcModTypeClear<CR>

"http://vim-users.jp/2011/12/hack241/
"Haskellでimportやhoogle
nnoremap <Leader>i :<C-u>UniteWithCursorWord haskellimport<Cr>
nnoremap <Leader>k :<C-u>UniteWithCursorWord -auto-preview hoogle<CR>

"行頭行末に移動
map <Space>h ^
map <Space>l $

"<Leader>aで簡単に選択範囲を広げる
nmap <leader>a <Plug>(wildfire-quick-select)

"インデントを変えても選択を保持
vnoremap < <gv
vnoremap > >gv

"検索しても場所を動かない
noremap <Plug>N N
map * <Plug>(visualstar-*)<Plug>N 
map # <Plug>(visualstar-#)<Plug>N


let tex_flavor='latex'
set grepprg=grep\ -nH\ $*
set shellslash
let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_CompileRule_dvi='platex --interaction=nonstopmode $*'
let g:Tex_FormatDependency_pdf='dvi,pdf'

" PDFはPreview.appで開く
let g:Tex_ViewRule_pdf='open -a Preview.app'

nnoremap <silent> <Space><Space> :<C-u>Unite file_mru<CR>

" operator mappings
map <silent>sa <Plug>(operator-surround-append)
map <silent>sd <Plug>(operator-surround-delete)
map <silent>sr <Plug>(operator-surround-replace)
