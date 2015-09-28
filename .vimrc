set nu
syntax on
nmap <Leader><Leader> V
:map <Space> <Leader>
:map <Space><Space> <Leader><Leader>

vmap v <plug>(expand_region_expand)
vmap <c-v> <plug>(expand_region_shrink)
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/syntastic'
Plugin 'Valloric/YouCompleteMe'
Plugin 'rdnetto/YCM-Generator'
Plugin 'jeaye/color_coded'
Plugin 'wincent/Command-T'
Plugin 'terryma/vim-expand-region'

call vundle#end()
filetype plugin indent on

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
"let g:syntastic_cpp_compiler = 'clang'
let g:syntastic_cpp_compiler_options = '-std=c++14'
let g:ycm_show_diagnostic_ui = 0
