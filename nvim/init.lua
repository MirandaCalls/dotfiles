require('user/plugins')
require('user/options')
require('user/keymaps')

vim.cmd([[
call plug#begin()
Plug 'dense-analysis/ale'
Plug 'vim-python/python-syntax'
call plug#end()

let g:ale_completion_enabled = 1
let g:python_highlight_all = 1

function! PhpSyntaxOverride()
  hi! link phpType Keyword
endfunction

augroup phpSyntaxOverride
  autocmd!
  autocmd FileType php call PhpSyntaxOverride()
augroup END
]])
