


" �s�ԍ� ON
set number

" �E�B���h�E�[�ŉ��s���Ȃ�
set nowrap

" �J�����g�s�ɉ���������
set cursorline
highlight CursorLine cterm=underline ctermfg=NONE ctermbg=NONE

" ���s�R�[�h��\l
set fileformat=unix


" �^�u��\������Ƃ��̕�
set tabstop=4

" �^�u��}������Ƃ��̕�
set shiftwidth=4
" �^�u���^�u�Ƃ��Ĉ���(�X�y�[�X�ɓW�J���Ȃ�)
set noexpandtab
set softtabstop=0

" �t�@�C���G���R�[�f�B���O
set fenc=euc-jp


" �����N�ŃN���b�v�{�[�h�ɃR�s�[����
set clipboard+=unnamed


" .swp & ~ �t�@�C���̍쐬�f�B���N�g���̎w��
set directory=~/.vim/tmp
set backupdir=~/.vim/tmp
set undodir=~/.vim/tmp

""""""""""""""""""""""""""""""""""""""""""""
" �ȍ~��neobundle�ł̃v���O�C���Ǘ�
""""""""""""""""""""""""""""""""""""""""""""

" vim�N�����̂�runtimepath��neobundle.vim��ǉ�
if has('vim_starting')
  set nocompatible
  set runtimepath+=~/.vim/bundle/neobundle.vim
endif

" neobundle.vim�̏����� 
" NeoBundle���X�V���邽�߂̐ݒ�
call neobundle#begin(expand('~/.vim/bundle'))
NeoBundleFetch 'Shougo/neobundle.vim'
call neobundle#end()

" �ǂݍ��ރv���O�C�����L��
NeoBundle 'Shougo/unite.vim'
NeoBundle 'itchyny/lightline.vim'

"insert here your Neobundle plugins"
NeoBundle 'scrooloose/nerdtree'

NeoBundle 'Shougo/neocomplcache'

" �ǂݍ��񂾃v���O�C�����܂߁A�t�@�C���^�C�v�̌��o�A�t�@�C���^�C�v�ʃv���O�C��/�C���f���g��L��������
filetype plugin indent on

" �C���X�g�[���̃`�F�b�N
NeoBundleCheck
