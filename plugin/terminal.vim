command! -bang -nargs=0 TerminalToggle :call terminal#toggle(<q-mods>, <bang>0)

augroup RubixTerm
  autocmd!
  autocmd TermOpen * :call terminal#setup()

  if has('nvim')
    autocmd TermOpen * setlocal nolist nonumber norelativenumber sidescrolloff=0 scrolloff=0 winfixheight signcolumn=no
  elseif has('terminal')
    autocmd TerminalOpen * setlocal nolist nonumber norelativenumber sidescrolloff=0 scrolloff=0 winfixheight signcolumn=no
  endif
augroup END
