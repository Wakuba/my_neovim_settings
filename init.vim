if &compatible
  set nocompatible " Be iMproved
endif

let s:dein_dir = $HOME . '/.config/nvim/dein'
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
if !isdirectory(s:dein_repo_dir)
  call system('git clone https://github.com/Shougo/dein.vim ' . shellescape(s:dein_repo_dir))
endif


" Required:
" Add the dein installation directory into runtimepath
set runtimepath+=$HOME/.config/nvim/dein/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin('~/.config/nvim/dein')
	call dein#load_toml('~/.config/nvim/dein/toml/dein.toml', {'lazy': 0})
	call dein#load_toml('~/.config/nvim/dein/toml/dein_lazy.toml', {'lazy': 1})

" Let dein manage dein
call dein#add('~/.config/nvim/dein')
if !has('nvim')
  call dein#add('roxma/nvim-yarp')
  call dein#add('roxma/vim-hug-neovim-rpc')
endif

" Add or remove your plugins here like this:
" これを記載しないとプラグインがインストールされっぱなしになる
call map(dein#check_clean(), "delete(v:val, 'rf')")

" Required:
call dein#end()

" Required:
filetype plugin indent on
syntax enable

if dein#check_install()
 call dein#install()
endi

set tabstop=2  
set shiftwidth=2    

" set filetypes as typescriptreact
autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescriptreact	
hi tsxTagName guifg=#E06C75
hi tsxComponentName guifg=#E06C75
hi tsxCloseComponentName guifg=#E06C75

