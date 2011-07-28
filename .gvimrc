"---------------------------------------------------------------------------
" gvimrc
"---------------------------------------------------------------------------
" フォント設定:
"
set antialias              " アンチエイリアシング
set guifont=Bitstream\ Vera\ Sans\ Mono,Osaka-mono:h14

"---------------------------------------------------------------------------
" ウインドウに関する設定:
"
"set transparency=15        " 半透明
set guioptions-=T          " ツールバー削除
" ウインドウの幅
set columns=230
" ウインドウの高さ
set lines=60
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
hi Normal		guifg=#efefef guibg=#191919
" インクリメンタル検索ハイライト
hi IncSearch	guifg=#efca00 guibg=#000000
" 検索結果ハイライト
hi Search		guifg=#FFFFFF guibg=#aa0000 
" tab
hi SpecialKey	guifg=#333333
" コメントアウト
hi Comment		guifg=#444444
" 変数とか命令文
"hi Constant         guifg=#70c0d8                                   gui=none
"hi Identifier       guifg=#86c6b6                                   gui=none
"hi Statement        guifg=#b3d38c                                   gui=none
"hi PreProc          guifg=#e0e8b0                                   gui=none
"hi Type             guifg=#90d0a0                                   gui=none
"hi Special          guifg=#b0a0c0                                   gui=none
hi Statement        guifg=#E1EBA7
hi PreProc          guifg=#E1EBA7
