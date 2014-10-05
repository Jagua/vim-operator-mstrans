" vim: set et fdm=marker ft=vim sts=2 sw=2 ts=2 :


scriptencoding utf-8


if exists('g:loaded_operator_mstrans')
  finish
endif


call operator#user#define('mstrans-echo', 'operator#mstrans#echo')


let g:loaded_operator_mstrans = 1

