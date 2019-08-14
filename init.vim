call plug#begin()


Plug 'fatih/vim-go', { 'for': 'go' }
Plug 'sebdah/vim-delve'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'morhetz/gruvbox'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-sensible'
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'
Plug 'tarekbecker/vim-yaml-formatter'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'majutsushi/tagbar'
Plug 'elzr/vim-json'
Plug 'mattn/emmet-vim'
Plug 'ternjs/tern_for_vim'
Plug 'leafgarland/typescript-vim'
Plug 'vim-scripts/louver.vim'
Plug 'nsf/gocode', { 'rtp': 'vim',
  \ 'do': '~/.vim/plugged/gocode/vim/symlink.sh' }
call plug#end()

nmap <F2> :NERDTreeToggle<CR>
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <F9> :GoCoverageToggle -short<cr>
au FileType go nmap <F12> <Plug>(go-def)

set rtp+=$GOPATH/src/github.com/golang/lint/misc/vim
" autocmd BufWritePost,FileWritePost *.go execute 'Lint' | cwindow

let g:go_fmt_command = "goimports"    
let g:go_fmt_autosave = 1

" Code Highlight
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1
let g:go_addtags_transform = "snakecase"


" Nerd Tree settings
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists(“s:std_in”) | NERDTree | endif

let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

set nu
colorscheme gruvbox
" colorscheme louver
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" YAML Settings
" au! BufNewFile,BufReadPost *.{yaml,yml} set filetype=yaml foldmethod=indent
" au! BufNewFile,BufReadPost *.{yaml,yml} set filetype=yaml
" autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" JavaScript Settings
autocmd FileType javascript set formatprg=prettier\ --stdin
"autocmd BufWritePre *.js :normal gggqG

" TypeScript Settings
autocmd FileType typescript setlocal formatprg=prettier\ --parser\ typescript


