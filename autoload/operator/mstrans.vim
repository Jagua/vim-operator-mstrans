" vim: set et fdm=marker ft=vim sts=2 sw=2 ts=2 :


scriptencoding utf-8


let s:save_cpo = &cpo
set cpo&vim


function! operator#mstrans#echo(motion_wise)
  let visual_command = operator#user#visual_command_from_wise_name(a:motion_wise)

  let original_selection = &g:selection
  let &g:selection = 'inclusive'
  execute 'normal!' '`[' . visual_command . '`]y"'
  let &g:selection = original_selection

  execute 'echo mstrans#translate("' . @" . '")'
endfunction


let &cpo = s:save_cpo
unlet s:save_cpo

