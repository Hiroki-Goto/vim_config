set title
set number
set cursorline
highlight CursorLine term=reverse cterm=reverse

"ファイル処理関連
set confirm			"保存されていない場合,終了前に確認を行う
set noswapfile		"編集中にスワップファイルを作成しない

"タブ/インデント関係
set tabstop=4		"タブの感覚
set shiftwidth=4	"自動インデントの大きさ
set smartindent		"開業時に前回のインデントを引き継ぐ

"検索の設定
set hlsearch	    " 検索文字列をハイライトする
set ignorecase		"大文字と小文字を区別しない
set wrapscan		"下まで行ったら上に戻る

" 補完ウィンドウの設定
set completeopt=menuone

"カラースキーム
:colorschem adventurous

"ビープ関連
set visualbell t_vb=
set noerrorbells "エラーメッセージの表示時にビープを鳴らさない

"独自のコンフィグファイルの追加
set runtimepath+=user_config

" ファイルタイプの設定
filetype on
augroup MyGroup
	autocmd!
	autocmd BufRead,BufNewFile *.py setfiletype python
	autocmd BufRead,BufNewFile *.tex setfiletype tex
	autocmd BufRead,BufNewFile *.cpp setfiletype cpp
augroup END

"プラグインの読み込み
runtime! user_config/plugin.vim

