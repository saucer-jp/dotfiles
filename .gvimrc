"---------------------------------------------------------------------------
" gvimrc
"---------------------------------------------------------------------------
" フォント設定:
"
set antialias              " アンチエイリアシング
set guifont=Bitstream\ Vera\ Sans\ Mono

"---------------------------------------------------------------------------
" ウインドウに関する設定:
"
"set transparency=15        " 半透明
set guioptions-=T          " ツールバー削除
" ウインドウの幅
set columns=100
" ウインドウの高さ
set lines=80
" コマンドラインの高さ(GUI使用時)
set cmdheight=2
" 画面を黒地に白にする (次行の先頭の " を削除すれば有効になる)
"colorscheme evening " (GUI使用時)
colorscheme lucius " (GUI使用時)

"set splitbelow             " 横分割したら新しいウィンドウは下に
"set splitright             " 縦分割したら新しいウィンドウは右に

" 水平スクロールバーを表示する
if has('gui')
    set guioptions+=b
endif

"---------------------------------------------------------------------------
" マウスに関する設定:
"
" どのモードでもマウスを使えるようにする
set mouse=a
" マウスの移動でフォーカスを自動的に切替えない (mousefocus:切替る)
set nomousefocus
" 入力時にマウスポインタを隠す (nomousehide:隠さない)
set mousehide
" ビジュアル選択(D&D他)を自動的にクリップボードへ (:help guioptions_a)
set guioptions+=a
