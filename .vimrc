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
Plugin 'chandlerc/jellybeans.vim'
Plugin 'Shougo/vimproc'
"Plugin 'Shougo/unite.vim'
"Plugin 'm2mdas/phpcomplete-extended'
Plugin 'shawncplus/phpcomplete.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'rhysd/vim-clang-format'

call vundle#end()
filetype plugin indent on

colorscheme jellybeans
autocmd FileType php setlocal omnifunc=phpcomplete_extended#CompletePHP
autocmd FileType c,cpp nnoremap <buffer><Leader>cf :<C-u>ClangFormat<CR>
autocmd FileType c,cpp vnoremap <buffer><Leader>cf :ClangFormat<CR>
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:jellybeans_use_term_italics = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_cpp_compiler = 'clang'
let g:syntastic_cpp_compiler_options = '-std=c++14'
let g:ycm_show_diagnostic_ui = 0
let g:clang_format#style_options = {
			\ "Standard" : "C++11"}
nmap <Leader>C :ClangFormatAutoToggle<CR>
