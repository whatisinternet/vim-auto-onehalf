" Set defaults for unset configuration variables for the plugin
if !exists("g:auto_onehalf_start_dark")
    let g:auto_onehalf_start_dark = '1850'
endif
if !exists("g:auto_onehalf_start_light")
    let g:auto_onehalf_start_light = '0700'
endif
if !exists("g:auto_onehalf_togglebg_key")
    let g:auto_onehalf_togglebg_key = '<F8>'
endif
if !exists("g:auto_onehalf_check_on_save")
    let g:auto_onehalf_check_on_save = 1
endif


function! AutoOnehalf()"{
  silent! colorscheme onehalfd

  let start_light = g:auto_onehalf_start_light
  let start_dark = g:auto_onehalf_start_dark

  " comparison operations are according to which start time is later
  if start_light > start_dark
    let inversed_start_light = start_dark
    let start_dark = start_light
    let start_light = inversed_start_light
  endif

  call SetBackground(start_dark, start_light)

endfunction"}

function! SetBackground(start_dark, start_light)"{
  let current_time = strftime("%H%M")

  if current_time >= a:start_light && current_time < a:start_dark
    colorscheme onehalflight
  else
    colorscheme onehalfdark
  endif

endfunction"}

" auto_onehalf
call AutoOnehalf()

" map togglebg key (requires vim-colors-onehalfd)
" call togglebg#map(g:auto_onehalf_togglebg_key)

" make sure to AutoOnehalf during save
if g:auto_onehalf_check_on_save == 1 && has('autocmd')
    autocmd bufwritepost * nested call AutoOnehalf()
endif
