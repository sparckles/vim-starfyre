" Vim syntax file
" Language:     Fyre (Svelte-like with Python)
" Maintainer:   Sanskar Jethi <hi@sanskar.wtf>
" Last Change:  [Date]

if exists("b:current_syntax")
  finish
endif

" Clear old syntax
syntax clear

" Include HTML syntax for the base
runtime! syntax/html.vim

" Python syntax inclusion
syntax include @Python syntax/python.vim

" Define a syntax region for Python inside <fyre> tags
syntax region fyrePython start="---client" end="---" contains=@Python

" Define a syntax region for Python inside <pyxide> tags
syntax region fyrePyxide start="<pyxide>" end="</pyxide>" contains=@html


" Define the main syntax highlighting groups
hi def link fyrePython Statement

" Update current syntax
let b:current_syntax = 'fyre'

