"コマンドモードでTab補完をする
set wildmenu
set wildmode=longest:full,full

set  hidden           "保存しなくててもバッファを切り替えられるように
set nrformats=        "インクリメントを十進で

"バーを表示しない
set guioptions-=T     "ツールバー
set guioptions-=m     "メニューバー
set guioptions-=r     "ウインドウの右スクロールバー
set guioptions-=R     "分割時の右のスクロールバー
set guioptions-=l     "ウインドウの左スクロールバー
set guioptions-=L     "分割時の左のスクロールバー
set guioptions-=b     "下スクロールバーなし

set showtabline=2    " 常にタブ表示

set imdisable        " IME OFF
set antialias        " アンチエイリアス
set tabstop=2        " 見た目何文字にするか
set autoindent       " 自動インデント
set expandtab        " Tab入力時に空白に置き換える
set softtabstop=2    " Tabを空白2文字に置き換える
set shiftwidth=2     " 自動インデントに使われる空白の数
set transparency=10  " 透明度
set number           " 行番号表示
set nobackup         " バックアップなし
set visualbell t_vb= " ビープ音なし
colorscheme hybrid "カラースキーマ
set columns=170      " 横幅
set lines=999935     " 行数

" フォント設定
set guifontwide=Kibitaki-Light:h14
set guifont=Kibitaki-Light:h14

endif

"swapfile(バックアップ)を作らない
set noswapfile

"ステータスバーを常に表示
set laststatus=2

"http://d.hatena.ne.jp/leafcage/20111223/1324705686
"折りたたみの表示関連
set foldmethod=indent
set foldlevel=100
set foldtext=foldCC#foldtext()
set foldcolumn=0
set fillchars=vert:\|
hi Folded gui=bold term=standout ctermbg=LightGrey ctermfg=DarkBlue guibg=Grey30 guifg=Grey80
hi FoldColumn gui=bold term=standout ctermbg=LightGrey ctermfg=DarkBlue guibg=Grey guifg=DarkBlue

"クリップボードとヤンクを同期
if has("clipboard")
  vmap ,y "+y
  nmap ,p "+gP
  " exclude:{pattern} must be last ^= prepend += append
  if has("gui_running") || has("xterm_clipboard")
    silent! set clipboard^=unnamedplus
    set clipboard^=unnamed
  endif
endif

"相対行を表示
"絶対行にしたい場合はset numberのみにする
set number
if v:version >= 703
  set relativenumber
endif

"検索をループさせない
set nowrapscan

"undoファイル(.un)をまとめて管理するディレクトリを設定
set undodir=$HOME/.vim/etc/undodir
set undofile

"ポップアップ補完メニュー色設定（通常の項目、選択されている項目、スクロールバー、スクロールバーのつまみ部分）
hi Pmenu                    guibg=#222222
hi PmenuSel                 guifg=#8bcced guibg=#333333
hi PmenuSbar                guibg=#ffffff
hi PmenuThumb               guifg=#3cac3c

"行数表示のハイライトを設定
hi LineNr guifg=#777777

"検索単語のハイライトを設定
hi Search gui=underline guifg=#ff8787 guibg=NONE

"HaskellのGhcModTypeを使用した際のハイライトを設定
hi ghcmodType guifg=#ff8787 gui=underline
