


" 行番号 ON
set number

" ウィンドウ端で改行しない
set nowrap

" カレント行に下線を引く
set cursorline
highlight CursorLine cterm=underline ctermfg=NONE ctermbg=NONE

" 改行コードは\l
set fileformat=unix



" タブ表示幅、タブをスペースに変換する
set tabstop=2
set autoindent
set expandtab
set shiftwidth=2


" ファイルエンコーディング
set fenc=euc-jp


" ヤンクでクリップボードにコピーする
set clipboard+=unnamed


" .swp & ~ ファイルの作成ディレクトリの指定
set directory=~/.vim/tmp
set backupdir=~/.vim/tmp
set undodir=~/.vim/tmp


" [gs] カーソル下のファイルを垂直分割で展開する
nnoremap gs :vertical wincmd f<CR>

" textwidthで自動改行させない
set textwidth=0 
set formatoptions=q
autocmd FileType text setlocal textwidth=0

""""""""""""""""""""""""""""""""""""""""""""
" 以降はneobundleでのプラグイン管理
""""""""""""""""""""""""""""""""""""""""""""

" vim起動時のみruntimepathにneobundle.vimを追加
if has('vim_starting')
  set nocompatible
  set runtimepath+=~/.vim/bundle/neobundle.vim
endif

" neobundle.vimの初期化 
" NeoBundleを更新するための設定
call neobundle#begin(expand('~/.vim/bundle'))
NeoBundleFetch 'Shougo/neobundle.vim'
call neobundle#end()

" 読み込むプラグインを記載
NeoBundle 'Shougo/unite.vim'
NeoBundle 'itchyny/lightline.vim'

"insert here your Neobundle plugins"
NeoBundle 'scrooloose/nerdtree'

NeoBundle 'Shougo/neocomplcache'

" タグ読み込み
NeoBundle 'soramugi/auto-ctags.vim'
NeoBundle 'majutsushi/tagbar'


NeoBundle 'tpope/vim-commentary'
"NeoBundle 'kana/vim-textobj-entire'
NeoBundle 'tmhedberg/matchit'

" 読み込んだプラグインも含め、ファイルタイプの検出、ファイルタイプ別プラグイン/インデントを有効化する
filetype plugin indent on

" インストールのチェック
NeoBundleCheck
