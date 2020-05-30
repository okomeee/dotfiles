scriptencoding utf-8
" ファイルを上書きする前にバックアップを作ることを無効化
set nowritebackup
" ファイルを上書きする前にバックアップを作ることを無効化
set nobackup
" undoファイル出力無効
set noundofile
" 保存されていないファイルがあるときは終了前に保存確認
set confirm
" 保存されていないファイルがあるときでも別のファイルを開くことが出来る
set hidden
" 外部でファイルに変更がされた場合は読みなおす
set autoread
" vim の矩形選択で最後の文字の右へ進める
set virtualedit=onemore
" 挿入モードでバックスペースで削除できるようにする
set backspace=indent,eol,start
set backspace=2
" 全角文字専用の設定
set ambiwidth=double
" wildmenuオプションを有効(vimバーからファイルを選択できる)
set wildmenu
" 単語判定
set iskeyword-=_
" 変換候補で一度に表示される数を設定
set pumheight=10
" カーソルの位置表示を行う
set ruler
" フラッシュ表示
set visualbell
" ファイル名補完
set wildmode=list:longest

"----------------------------------------
" 検索
"----------------------------------------
" 検索するときに大文字小文字を区別しない
set ignorecase
" 小文字で検索すると大文字と小文字を無視して検索
set smartcase
" 検索がファイル末尾まで進んだら、ファイル先頭から再び検索
set wrapscan
" インクリメンタル検索 (検索ワードの最初の文字を入力した時点で検索が開始)
set incsearch
" 検索結果をハイライト表示
set hlsearch

"----------------------------------------
" 表示設定
"----------------------------------------
" エラーメッセージの表示時にビープを鳴らさない
set noerrorbells
" Windowsでパスの区切り文字をスラッシュで扱う
set shellslash
" 対応する括弧やブレースを表示
set showmatch matchtime=1
" インデント方法の変更
set cinoptions+=:0
" メッセージ表示欄を1行確保
set cmdheight=1
" ステータス行を常に表示
set laststatus=2
" ウィンドウの右下にまだ実行していない入力中のコマンドを表示
set showcmd
" 省略されずに表示
set display=lastline
" タブ文字を CTRL-I で表示し、行末に $ で表示する
set list
" 行末のスペースを可視化
set listchars=tab:»-,extends:»,precedes:«,nbsp:%,trail:~
" コマンドラインの履歴を10000件保存する
set history=10000
" コメントの色を水色
hi Comment ctermfg=3
" 入力モードでTabキー押下時に半角スペースを挿入
set expandtab
" インデント幅
set shiftwidth=2
" タブキー押下時に挿入される文字幅を指定
set softtabstop=2
" ファイル内にあるタブ文字の表示幅
set tabstop=2
" ツールバーを非表示にする
set guioptions-=T
" yでコピーした時にクリップボードに入る
set guioptions+=a
" メニューバーを非表示にする
set guioptions-=m
" 右スクロールバーを非表示
set guioptions+=R
" 対応する括弧を強調表示
set showmatch
" カレント行のインデントをキープ
" set autoindent
" 改行時に入力された行の末尾に合わせて次の行のインデントを増減する
set smartindent
" スワップファイルを作成しない
set noswapfile
" 検索にマッチした行以外を折りたたむ(フォールドする)機能
set nofoldenable
" タイトルを表示
set title
" 行番号の表示
set number
" 相対行の表示
set relativenumber
" ヤンクでクリップボードにコピー
set clipboard=unnamed,autoselect
" シンタックスハイライト
syntax on
" すべての数を10進数として扱う
set nrformats=
" 行をまたいで移動
" set whichwrap=b,s,h,l,<,>,[,],~
" バッファスクロール
set mouse=a
" カーソルライン表示
set cursorline
" カーソルカラム表示
set cursorcolumn
" カーソルラインのスタイル
hi CursorLine term=bold ctermfg=NONE guifg=NONE gui=bold
" テキストファイルwidth指定
set textwidth=80
" カラムの色指定
let &colorcolumn=join(range(81,999),",")
hi ColorColumn ctermbg=235 guibg=#2c2d27
" コメントアウトの色指定
hi Comment ctermfg=grey
" 行の折り返し
set wrap
" シフトコマンド有効
set shiftround
" TABキー押下時Space
set expandtab
" スクロールオフセット
set scrolloff=10
" 新しいウィンドウを下に開く
set splitbelow
" 新しいウィンドウを右に開く
set splitright
" ウィンドウのサイズ
set winwidth=30
set winheight=1
" コマンドヒストリーウィンドウの幅
set cmdwinheight=5
" ウィンドウの自動調整無効
set noequalalways
" ヘルプウィンドウの高さ
set helpheight=12
" 常にタブラインを表示
set showtabline=2

" auto reload .vimrc
augroup source-vimrc
  autocmd!
  autocmd BufWritePost *vimrc source $MYVIMRC | set foldmethod=marker
  autocmd BufWritePost *gvimrc if has('gui_running') source $MYGVIMRC
augroup END

" auto comment off
augroup auto_comment_off
  autocmd!
  autocmd BufEnter * setlocal formatoptions-=r
  autocmd BufEnter * setlocal formatoptions-=o
augroup END

" HTML/XML閉じタグ自動補完
augroup MyXML
  autocmd!
  autocmd Filetype xml inoremap <buffer> </ </<C-x><C-o>
  autocmd Filetype html inoremap <buffer> </ </<C-x><C-o>
augroup END

" 編集箇所のカーソルを記憶
if has("autocmd")
  augroup redhat
    " In text files, always limit the width of text to 78 characters
    autocmd BufRead *.txt set tw=78
    " When editing a file, always jump to the last cursor position
    autocmd BufReadPost *
    \ if line("'\"") > 0 && line ("'\"") <= line("$") |
    \   exe "normal! g'\"" |
    \ endif
  augroup END
endif

filetype on
filetype plugin on
filetype indent on

syntax enable
