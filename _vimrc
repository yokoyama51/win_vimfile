


" ���ֹ� ON
set number

" ������ɥ�ü�ǲ��Ԥ��ʤ�
set nowrap

" �����ȹԤ˲��������
set cursorline
highlight CursorLine cterm=underline ctermfg=NONE ctermbg=NONE

" ���ԥ����ɤ�\l
set fileformat=unix



" ����ɽ���������֤򥹥ڡ������Ѵ�����
set tabstop=2
set autoindent
set expandtab
set shiftwidth=2


" �ե����륨�󥳡��ǥ���
set fenc=euc-jp


" ��󥯤ǥ���åץܡ��ɤ˥��ԡ�����
set clipboard+=unnamed


" .swp & ~ �ե�����κ����ǥ��쥯�ȥ�λ���
set directory=~/.vim/tmp
set backupdir=~/.vim/tmp
set undodir=~/.vim/tmp


" [gs] �������벼�Υե�������ľʬ���Ÿ������
nnoremap gs :vertical wincmd f<CR>

" textwidth�Ǽ�ư���Ԥ����ʤ�
set textwidth=0 
set formatoptions=q
autocmd FileType text setlocal textwidth=0


""""""""""""""""""""""""""""""""""""""""""""
" �ʹߤ�neobundle�ǤΥץ饰�������
""""""""""""""""""""""""""""""""""""""""""""

" vim��ư���Τ�runtimepath��neobundle.vim���ɲ�
if has('vim_starting')
  set nocompatible
  set runtimepath+=~/.vim/bundle/neobundle.vim
endif

" neobundle.vim�ν���� 
" NeoBundle�򹹿����뤿�������
call neobundle#begin(expand('~/.vim/bundle'))
NeoBundleFetch 'Shougo/neobundle.vim'
call neobundle#end()

" �ɤ߹���ץ饰����򵭺�
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimproc.vim'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/unite-build'
NeoBundle 'Shougo/vimshell.vim'


NeoBundle 'itchyny/lightline.vim'

" �ե����륨�����ץ��顼
NeoBundle 'scrooloose/nerdtree'


" �����ɤ߹���
NeoBundle 'soramugi/auto-ctags.vim'
NeoBundle 'majutsushi/tagbar'


" \�����ǥ����Ȳ�
NeoBundle 'tpope/vim-commentary'

NeoBundle 'tmhedberg/matchit'


" �ɤ߹�����ץ饰�����ޤᡢ�ե����륿���פθ��С��ե����륿�����̥ץ饰����/����ǥ�Ȥ�ͭ��������
filetype plugin indent on

" ���󥹥ȡ���Υ����å�
NeoBundleCheck
