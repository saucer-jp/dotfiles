"---------------------------------------------------------------------------

" vundle.vim {{{1
filetype off
set rtp+=~/.vim/vundle/ 
call vundle#rc()
filetype on

" 使っているプラグイン {{{2
"
"Bundle 'git://github.com/mattn/gist-vim.git'
Bundle 'git://github.com/motemen/git-vim.git'
Bundle 'git://github.com/Shougo/neocomplcache.git'
Bundle 'git://github.com/msanders/snipmate.vim.git'
Bundle 'git://github.com/Shougo/unite.vim.git'
Bundle 'git://github.com/tpope/vim-cucumber.git'
Bundle 'git://github.com/tpope/vim-endwise.git'
Bundle 'git://github.com/Shougo/vimfiler.git'
Bundle 'git://github.com/kana/vim-metarw.git'
Bundle 'git://github.com/kana/vim-metarw-git.git'
Bundle 'git://github.com/Shougo/vimproc.git'
Bundle 'git://github.com/thinca/vim-quickrun.git'
Bundle 'git://github.com/tpope/vim-rails.git'
Bundle 'git://github.com/vim-ruby/vim-ruby.git'
Bundle 'git://github.com/Shougo/vimshell.git'
Bundle 'git://github.com/tpope/vim-surround.git'
Bundle 'git://github.com/richleland/vim-yankring.git'
Bundle 'git://github.com/mattn/zencoding-vim.git'
Bundle 'git://github.com/thinca/vim-ref.git'
Bundle 'git://github.com/vim-scripts/Lucius.git'

"}}}

"}}}

"---------------------------------------------------------------------------
" basic settings {{{1

"---------------------------------------------------------------------------
" オプション {{{2
autocmd!
set t_RV=
" 現在開いているファイルのある場所に常にcdする
au   BufEnter *      exec ":lcd " . expand("%:p:h")
" Alignを日本語環境で使用するための設定
:let g:Align_xstrlen = 3

" GUI固有ではない画面表示の設定 {{{3
" 文法の色付け
syntax on
syntax enable
" 行番号を表示 (nonumber:非表示)
set number
" ルーラーを表示 (noruler:非表示)
set ruler
" タブや改行を表示 (nolist:非表示)
set list
" どの文字でタブや改行を表示するかを設定
set listchars=tab:>-,trail:-,extends:@,eol:$
" 長い行を折り返さないで表示 (wrap:折り返す)
set nowrap
" 常にステータス行を表示
set laststatus=2
set statusline=%<%F\ %r%h%w%y%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%4v(ASCII=%03.3b,HEX=%02.2B)\ %l/%L(%P)%m
" 挿入モード時、ステータスラインの色を変える
autocmd InsertEnter * highlight StatusLine ctermfg=red
autocmd InsertLeave * highlight StatusLine ctermfg=white
" コマンドラインの高さ (Windows用gvim使用時はgvimrcを編集すること)
set cmdheight=2
" コマンドをステータス行に表示
set showcmd
" タイトルを表示
set title
" 画面を黒地に白にする (次行の先頭の " を削除すれば有効になる)
"colorscheme evening
" 背景が明るいとき用
set background=light
" 全角スペースの表示
highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=darkgray
match ZenkakuSpace /　/
" カーソル行をハイライト
set cursorline
" カレントウィンドウにのみ罫線を引く
augroup cch
    autocmd! cch
    autocmd WinLeave * set nocursorline
    autocmd WinEnter,BufRead * set cursorline
augroup END
" コマンド実行中は再描画しない
set lazyredraw
" 高速ターミナル接続を行う
set ttyfast
"}}}

" 編集に関する設定 {{{3

" vi互換をOFFにする
set nocompatible
" softtabstopはTabキー押し下げ時の挿入される空白の量，0の場合はtabstopと同じ，BSにも影響する
set tabstop=2 shiftwidth=2 softtabstop=0
"行頭の余白内で Tab を打ち込むと、'shiftwidth' の数だけインデントする
set smarttab
" タブをスペースに展開する(noexpandtab:展開しない)
set noexpandtab
" 自動的にインデントする (noautoindent:インデントしない)
set autoindent
set smartindent
set cindent
" バックスペースでインデントや改行を削除できるようにする
set backspace=2
" 検索時にファイルの最後まで行ったら最初に戻る (nowrapscan:戻らない)
set wrapscan
" 括弧入力時に対応する括弧を表示 (noshowmatch:表示しない)
set showmatch
" コマンドライン補完するときに強化されたものを使う(参照 :help wildmenu)
set wildmenu
" テキスト挿入中の自動折り返しを日本語に対応させる
set formatoptions+=mM
" 一行に長い文章を書いていても自動折り返しをしない
set textwidth=0
" カーソルを行頭、行末で止まらないようにする
set whichwrap=b,s,h,l,<,>,[,]
" スクロール時の余白確保
set scrolloff=5
" ビープをならさない
set vb t_vb=
" vimとクリップボードを共通に利用
"set clipboard=unnamed,autoselect
" ファイルタイプによるインデント
filetype indent on
" ファイルタイプごとのプラグイン
filetype plugin on
"}}}

" 検索の挙動に関する設定 {{{3
" 検索時に大文字小文字を無視 (noignorecase:無視しない)
set ignorecase
" 大文字小文字の両方が含まれている場合は大文字小文字を区別
set smartcase
" インクリメンタルサーチ
set incsearch
" 検索文字をハイライト
set hlsearch
"}}}

" ファイル操作に関する設定 {{{3
" バックアップファイルを作成しない
set nobackup
" スワップファイル作らない
set noswapfile
" 他で書き換えられたら自動で読み直す
set autoread
" 編集中でも他のファイルを開けるようにする
set hidden
" Exploreの初期ディレクトリ
set browsedir=buffer
"}}}

" 補完・履歴 {{{3
" コマンド補完を開始するキー
"set wildchar=<tab>
" リスト表示，最長マッチ
set wildmode=list:full
" コマンド・検索パターンの履歴数
set history=1000
" 補完に辞書ファイル追加
set complete+=k
"}}}

" }}}

"-------------------------------------------------------------------------------
" キーマップ {{{2

" キーマップリーダー
let mapleader = ","
let maplocalleader = ","
" Escのショートカット
map  <Esc> <Nop>
map! <Esc> <Nop>
noremap  <C-[> <C-c>
noremap! <C-[> <C-c>
noremap  <C-c> <C-[>
noremap! <C-c> <C-[>
" 汎用プレフィックス
noremap [General] <Nop>
nmap <Space> [General]
" jump
nnoremap [General]j <C-f>
nnoremap [General]k <C-b>
nnoremap <C-j> 5j
nnoremap <C-k> 5k
vnoremap <C-j> 5j
vnoremap <C-k> 5k
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk
" vimrc
nnoremap [General]. :<C-u>edit $MYVIMRC<Enter>
nnoremap [General]S. :<C-u>source $MYVIMRC<Enter>
" help
" カーソルの下のキーワードを:helpで引けるようにする
nnoremap <C-h>      :<C-u>help[General]
nnoremap <C-h><C-h> :<C-u>help[General]<C-r><C-w><Enter>
" 最後に変更されたテキストを選択する
nnoremap gc '[v']
vnoremap gc :<C-u>normal gc<Enter>
onoremap gc :<C-u>normal gc<Enter>
" クリップボードの内容を名前付きレジスタに逃がす
nnoremap [General]" :<C-u>let @y=@*<CR>
" 名前付きレジスタからペースト
nnoremap [General]p "yp
nnoremap [General]P "yP
" 名前付きレジスタにヤンク
nnoremap [General]y "yy
" 名前付きレジスタにヤンクして削除
nnoremap [General]d "yd
" text-object
onoremap aa  a>
vnoremap aa  a>
onoremap ia  i>
vnoremap ia  i>
onoremap ar  a]
vnoremap ar  a]
onoremap ir  i]
vnoremap ir  i]
onoremap ad  a"
vnoremap ad  a"
onoremap id  i"
vnoremap id  i"
onoremap aq  a'
vnoremap aq  a'
onoremap iq  i'
vnoremap iq  i'
" command mode
cnoremap <C-B> <Left>
cnoremap <C-F> <Right>
cnoremap <C-A> <Home>
cnoremap <expr> <C-D> (getcmdpos()==strlen(getcmdline())+1 ? "\<C-d>" : "\<Del>")
cnoremap <C-E> <END>
cnoremap <C-H> <BS>
cnoremap <C-u> <C-e><C-u>
" insert mode
inoremap <C-B> <Left>
inoremap <C-F> <Right>
inoremap <C-A> <C-o>^
inoremap <C-E> <C-o>$
inoremap <C-H> <BS>
inoremap <C-D> <Del>
inoremap <C-K> <C-o>C
inoremap <C-W> <C-g>u<C-w>
inoremap <C-U> <C-g>u<C-u>
inoremap <C-K> <C-o>D<Esc>
" 検索後のハイライトを消す
nnoremap <Esc><Esc> :nohlsearch<CR><Esc>
" 日付の入力補助
inoremap <expr> ,df strftime('%Y-%m-%dT%H:%M:%S')
inoremap <expr> ,dd strftime('%Y-%m-%d')
inoremap <expr> ,dt strftime('%H:%M:%S')
" 検索などで飛んだらそこを真ん中に
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz
nnoremap G Gzz
"選択した文字列を検索
vnoremap <silent> // y/<C-R>=escape(@", '\\/.*$^?[]')<CR><CR>
"選択した文字列を置換
vnoremap /r "xy:%s/<C-R>=escape(@x, '\\/.*$^?[]')<CR>//gc<Left><Left><Left>

nnoremap [General]ce :colorscheme evening<CR>
nnoremap [General]cd :colorscheme desert<CR>

" エンコーディング関連 {{{3
command! Euc edit ++enc=euc-jp
command! Iso2022jp edit ++enc=iso-2022-jp
command! Jis Iso2022jp
command! Cp932 edit ++enc=cp932
command! Sjis Cp932
command! Utf8 edit ++enc=utf-8
"}}}

"}}}

"---------------------------------------------------------------------------
" Tabs {{{2
set showtabline=2
" tab page {{{3
nnoremap [TabPage]   <Nop>
nmap     <C-t>    [TabPage]
nnoremap <silent> [TabPage]n  :<C-u>tabnew<cr>
nnoremap <silent> [TabPage]c  :<C-u>tabclose<cr>
nnoremap <silent> [TabPage]o  :<C-u>tabonly<cr>
nnoremap <silent> [TabPage]m  :<C-u>tabmove<cr>
nnoremap <silent> [TabPage]l  :<C-u>execute 'tabnext' 1 + (tabpagenr() + v:count1 - 1) % tabpagenr('$')<CR>
nnoremap <silent> [TabPage]h  gT

nnoremap <silent> gr :<C-u>tabprevious<cr>
"}}}
" tab junp {{{3
nnoremap [TagJump]    <Nop>
nmap     t            [TagJump]
nnoremap [TagJump]t   <C-]>          " 「飛ぶ」
nnoremap [TagJump]j   :<C-u>tag<CR>  " 「進む」
nnoremap [TagJump]k   :<C-u>pop<CR>  " 「戻る」
nnoremap [TagJump]l   :<C-u>tags<CR> " 履歴一覧
"}}}
"}}}

"}}}

"---------------------------------------------------------------------------
" plugins {{{1

"---------------------------------------------------------------------------
" for rails.vim {{{2
let g:rails_level=4
let g:rails_default_file="app/controllers/application.rb"
let g:rails_default_database="sqlite3"
"}}}

"---------------------------------------------------------------------------
" for rubycomplete.vim {{{2
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
"}}}

"---------------------------------------------------------------------------
" for Gist.vim {{{2
"let g:gist_clip_command = 'xclip -selection clipboard'
"let g:gist_detect_filetype = 1
"let g:gist_open_browser_after_post = 1
"let g:gist_browser_command = 'firefox %URL% &amp;'
"}}}

"---------------------------------------------------------------------------
" for metarw-git {{{2
nnoremap <silent> <Leader>gw :silent call GitHighlightLastChange()<CR>
function! GitHighlightLastChange()
    if &diff
        diffoff
        return
    endif

    let log = system('git log -1 --pretty=oneline ' . expand('%'))
    if v:shell_error
        echoerr log
        return
    endif
    let [ sha1, message ] = matchlist(log, '\v(\x{40}) (.*)\n')[1:2]
    execute 'vertical diffsplit' 'git:' . sha1 . '^:%'
    quit

    redrawstatus
    unsilent echo "highlighting diff of '" . message . "'"
endfunction
"}}}

"---------------------------------------------------------------------------
" for unite.vim {{{2

" 起動時にインサートモードで開始
let g:unite_enable_start_insert = 1

" インサート／ノーマルどちらからでも呼び出せるようにキーマップ
nnoremap <silent> <C-f> :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
inoremap <silent> <C-f> <ESC>:<C-u>UniteWithBufferDir -buffer-name=files file<CR>
nnoremap <silent> <C-b> :<C-u>Unite buffer file_mru<CR>
inoremap <silent> <C-b> <ESC>:<C-u>Unite buffer file_mru<CR>

" バッファ一覧
nnoremap [General]b :<C-u>Unite buffer<CR>
" ファイル一覧
nnoremap [General]f :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
" レジスタ一覧
nnoremap [General]r :<C-u>Unite -buffer-name=register register<CR>
" 最近使用したファイル一覧
nnoremap [General]m :<C-u>Unite file_mru<CR>
" 全部乗せ
nnoremap [General]a :<C-u>UniteWithBufferDir -buffer-name=files buffer file_mru bookmark file<CR>

" unite.vim上でのキーマッピング
autocmd FileType unite call s:unite_my_settings()
function! s:unite_my_settings()
    " 単語単位からパス単位で削除するように変更
    imap <buffer> <C-w> <Plug>(unite_delete_backward_path)
    " ESCキーを2回押すと終了する
    nnoremap <silent><buffer> <ESC><ESC> q
    imap <silent><buffer> <ESC><ESC> <ESC>q
endfunction
"}}}

"---------------------------------------------------------------------------
" for VimShell {{{2
" ,is: シェルを起動
nnoremap <silent> ,is :VimShell<CR>
" ,irb: irbを非同期で起動
nnoremap <silent> ,irb :VimShellInteractive irb<CR>
" ,ss: 非同期で開いたインタプリタに現在の行を評価させる
vmap <silent> ,ss :VimShellSendString<CR>
" 選択中に,ss: 非同期で開いたインタプリタに選択行を評価させる
nnoremap <silent> ,ss <S-v>:VimShellSendString<CR>
"}}}

"---------------------------------------------------------------------------
" for vimfiler {{{2
let g:vimfiler_as_default_explorer = 1
"}}}

"---------------------------------------------------------------------------
" for neocomplcache {{{2
" neocomplcacheを起動時に有効化する
let g:neocomplcache_enable_at_startup = 1
" 大文字小文字を区別する
let g:neocomplcache_enable_smart_case = 1
" キャメルケース補完を有効にする
let g:neocomplcache_enable_camel_case_completion = 1
" アンダーバー補完を有効にする
let g:neocomplcache_enable_underbar_completion = 1
" シンタックスファイルの補完対象キーワードとする最小の長さ
let g:neocomplcache_min_syntax_length = 3
" 辞書ファイルの場所
let g:neocomplcache_snippets_dir = '~/.vim/snippets'
" Tabで補完を開始する
imap <silent> <Tab> <Plu>(neocomplcache_snippets_expand)
smap <silent> <Tab> <Plu>(neocomplcache_snippets_expand)
" 前回行われた補完をキャンセルする
inoremap <expr><C-g> neocomplcache#undo_completion()
" 補完候補のなかから、共通する部分を補完する
inoremap <expr><C-l> neocomplcache#complete_common_string()
" 現在選択している候補を確定する
inoremap <expr><C-y> neocomplcache#close_popup()

"}}}

"---------------------------------------------------------------------------
" for git-vim.vim {{{2
let g:git_no_map_default = 1
let g:git_command_edit = 'rightbelow vnew'
nnoremap [General]gd :<C-u>GitDiff --cached<Enter>
nnoremap [General]gD :<C-u>GitDiff<Enter>
nnoremap [General]gs :<C-u>GitStatus<Enter>
nnoremap [General]gl :<C-u>GitLog<Enter>
nnoremap [General]gL :<C-u>GitLog -u \| head -10000<Enter>
nnoremap [General]ga :<C-u>GitAdd<Enter>
nnoremap [General]gA :<C-u>GitAdd <cfile><Enter>
nnoremap [General]gc :<C-u>GitCommit<Enter>
nnoremap [General]gC :<C-u>GitCommit --amend<Enter>
nnoremap [General]gp :<C-u>Git push
"}}}

"---------------------------------------------------------------------------
" for zencoding.vim {{{2
let g:user_zen_expandabbr_key = '<c-y>'
" }}}

"---------------------------------------------------------------------------
" for surround.vim {{{2

" 共通
let g:surround_{char2nr("a")}  = "<\r>"
let g:surround_{char2nr("r")}  = "[\r]"
let g:surround_{char2nr("d")}  = '"\r"'
let g:surround_{char2nr("q")}  = "'\r'"

" HTML
autocmd FileType html,eruby let g:surround_{char2nr("1")}  = "<h1>\r</h1>"
autocmd FileType html,eruby let g:surround_{char2nr("2")}  = "<h2>\r</h2>"
autocmd FileType html,eruby let g:surround_{char2nr("3")}  = "<h3>\r</h3>"
autocmd FileType html,eruby let g:surround_{char2nr("4")}  = "<h4>\r</h4>"
autocmd FileType html,eruby let g:surround_{char2nr("5")}  = "<h5>\r</h5>"
autocmd FileType html,eruby let g:surround_{char2nr("6")}  = "<h6>\r</h6>"
autocmd FileType html,eruby let g:surround_{char2nr("p")}  = "<p>\r</p>"
autocmd FileType html,eruby let g:surround_{char2nr("u")}  = "<ul>\r</ul>"
autocmd FileType html,eruby let g:surround_{char2nr("o")}  = "<ol>\r</ol>"
autocmd FileType html,eruby let g:surround_{char2nr("l")}  = "<li>\r</li>"
autocmd FileType html,eruby let g:surround_{char2nr("a")}  = "<a href=\"\">\r</a>"
autocmd FileType html,eruby let g:surround_{char2nr("A")}  = "<a href=\"\r\"></a>"
autocmd FileType html,eruby let g:surround_{char2nr("i")}  = "<img src=\"\r\" alt=\"\" />"
autocmd FileType html,eruby let g:surround_{char2nr("I")}  = "<img src=\"\" alt=\"\r\" />"
autocmd FileType html,eruby let g:surround_{char2nr("d")}  = "<div>\r</div>"
autocmd FileType html,eruby let g:surround_{char2nr("D")}  = "<div class=\"section\">\r</div>"

" Ruby
autocmd FileType ruby let g:surround_{char2nr('%')} = "%(\r)"
autocmd FileType ruby let g:surround_{char2nr('w')} = "%w(\r)"
autocmd FileType ruby let g:surround_{char2nr('#')} = "#{\r}"
autocmd FileType ruby let g:surround_{char2nr('e')} = "begin \r end"
autocmd FileType ruby let g:surround_{char2nr('i')} = "if \1if\1 \r end"
autocmd FileType ruby let g:surround_{char2nr('u')} = "unless \1unless\1 \r end"
autocmd FileType ruby let g:surround_{char2nr('c')} = "class \1class\1 \r end"
autocmd FileType ruby let g:surround_{char2nr('m')} = "module \1module\1 \r end"
autocmd FileType ruby let g:surround_{char2nr('d')} = "def \1def\1\2args\r..*\r(&)\2 \r end"
autocmd FileType ruby let g:surround_{char2nr('p')} = "\1method\1 do \2args\r..*\r|&| \2\r end"
autocmd FileType ruby let g:surround_{char2nr('P')} = "\1method\1 {\2args\r..*\r|&|\2 \r }"

" }}}
"
"---------------------------------------------------------------------------
" for YamkRing.vim {{{2
set viminfo+=!
"}}}

" }}}

"---------------------------------------------------------------------------
" その他の設定 {{{1

"---------------------------------------------------------------------------
" スカウター {{{2
" http://d.hatena.ne.jp/thinca/20091031/1257001194
function! Scouter(file, ...)
  let pat = '^\s*$\|^\s*"'
  let lines = readfile(a:file)
  if !a:0 || !a:1
    let lines = split(substitute(join(lines, "\n"), '\n\s*\\', '', 'g'), "\n")
  endif
  return len(filter(lines,'v:val !~ pat'))
endfunction
command! -bar -bang -nargs=? -complete=file Scouter
\        echo Scouter(empty(<q-args>) ? $MYVIMRC : expand(<q-args>), <bang>0)
" }}}

" }}}

"---------------------------------------------------------------------------
" __END__  "{{{1
" vim: expandtab softtabstop=2 shiftwidth=2
" vim: foldmethod=marker
" }}}

