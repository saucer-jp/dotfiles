"---------------------------------------------------------------------------
" gvimrc
"---------------------------------------------------------------------------
" フォント設定:
"
set antialias              " アンチエイリアシング
set guifont=Osaka-mono:h14

"---------------------------------------------------------------------------
" ウインドウに関する設定:
"
"set transparency=15        " 半透明
set guioptions-=T          " ツールバー削除
" ウインドウの幅
set columns=256
" ウインドウの高さ
set lines=62
" コマンドラインの高さ(GUI使用時)
set cmdheight=2
" 画面を黒地に白にする (次行の先頭の " を削除すれば有効になる)
colorscheme darkspectrum " (GUI使用時)

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

"---------------------------------------------------------------------------
" colorscheme darkspectrum 上書き:

" 通常の文字、背景色
hi Normal					guifg=#efefef		guibg=#1c1c1c
" インクリメンタル検索ハイライト
hi IncSearch			guifg=#efca00		guibg=#000000
" 検索結果ハイライト
hi Search					guifg=#FFFFFF		guibg=#aa0000
" tab
hi SpecialKey			guifg=#444444
" コメントアウト
hi Comment				guifg=#555555
" 変数とか命令文
hi Statement			guifg=#E1EBA7
hi PreProc				guifg=#E1EBA7
" カーソル桁
hi CursorColumn		guibg=#000000
"行番号部分
hi LineNr					guifg=#999999		guibg=#292929
