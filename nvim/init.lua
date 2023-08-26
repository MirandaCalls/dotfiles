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

function! MyFindRoot(buffer)
  " Try first using ALE heuristics.
  let l:root = ale#c#FindProjectRoot(a:buffer)

  if !empty(l:root)
    return l:root
  endif

  " If ALE fails to find a project root then use more "advanced" heuristics.
  return expand('#' . a:buffer . ':p:h')
endfunction

" Configure ALE to use the custom find root function for clangd linter.
let g:ale_root = {
\ 'clangd': function('MyFindRoot')
\}

function! PhpSyntaxOverride()
  hi! link phpType Keyword
endfunction

augroup phpSyntaxOverride
  autocmd!
  autocmd FileType php call PhpSyntaxOverride()
augroup END
]])
