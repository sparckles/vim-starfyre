" Vim syntax file
" Language: Fyre (HTML/Python/JavaScript/CSS)


if exists("b:current_syntax")
  finish
endif


" Include necessary syntax files
runtime! syntax/python.vim
runtime! syntax/html.vim
runtime! syntax/css.vim
runtime! syntax/javascript.vim

" Set default syntax highlighting to Python
" Define regions for Fyre
" HTML inside <pyxide>
syntax region fyreHTML
    \ start=+<pyxide\ [^>]*>+
    \ keepend
    \ end=+</pyxide\ [^>]*>+me=s-1
    \ contains=htmlTag,@htmlPreproc,htmlCssStyleComment,htmlEndTag

" Python inside a custom tag (e.g., <fyre>)
syntax region fyrePython
      \ start=+^---client$+
      \ keepend
      \ end=+^---$+
      \ contains=@pythonTop,pythonDocTest,pythonString,pythonRawString,pythonBytes,pythonRawBytes,pythonEscape,pythonNumber,pythonOperators,pythonBuiltin,pythonExceptions,pythonConditional,pythonRepeat,pythonFunction,pythonInclude,pythonStatement,pythonTodo,pythonComment
      \ fold


" JavaScript inside <script>
syntax region fyreJS
      \ start=+<script [^>]*>+
      \ keepend
      \ end=+</script\ [^>]*>+me=s-1
      \ contains=htmlScriptTag,@htmlPreproc,htmlCssStyleComment

" CSS inside <style>
syntax region fyreCSS
      \ start=+<style\ [^>]*>+
      \ keepend
      \ end=+</style\ [^>]*>+me=s-1
      \ contains=@css,htmlTag,@htmlCss,htmlCssStyleComment,@htmlPreproc,htmlEndTag

" Link the regions to their respective syntax groups

" hi def link fyreCSS css


" Cybernetically enhanced web apps.
let b:current_syntax = "fyre"

" Sync from start
syntax sync fromstart

