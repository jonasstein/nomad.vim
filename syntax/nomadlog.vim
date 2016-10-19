" Vim syntax file
" Language: Nomad
" Maintainer: Jonas Stein
" Latest Revision: 2016-10-16

" check if syntax is already loaded
if exists("b:current_syntax") | finish | endif
" set flag when abaqus syntax is loaded
let b:current_syntax = "nomadlog"

" Keywords
syn keyword nomadOperator pr dr co se on off sc fm bs
syn keyword nomadStatement ls 
syn keyword nomadRepeat for endfor
syn keyword nomadDevices f1 f2 coldvalve hiv gu gl a1 a2 a3 a4 a5 a6 ki kf hx  
syn keyword nomadMetric as bs cs ax bx cx

syn match nomadCurrents " i\d "  

" Matches
syn match messagesBegin       display '^' nextgroup=timestamp,messageType,messagesText 
syn match messagesText        contained '.*'
syn match timestamp '\d\d:\d\d:\d\d' contained display
syn match messageType "    info   " contained display
syn match nomadComment       "!.*$"
syn match nomadError '^\d\d:\d\d:\d\d    error   .*$'
syn match nomadWarning 'warning'
syn match nomadFloat display contained '\d+\(.\d+\)'
syn match NumorStart     '^.* Numor     \d*  started at .*$'
syn match NumorFinnished 'Numor     \d*  finished at .*$'

highlight link NumorStart Macro 
highlight link NumorFinnished Special

" Regions
"syn region syntaxElementRegion start='x' end='y'

hi def link nomadComment     Comment
hi def link nomadOperator    Operator
hi def link nomadMetric      Identifier
hi def link nomadStatement   Statement
hi def link messagesText     Error
hi def link nomadRepeat      Repeat
hi def link nomadError       Error
hi def link nomadWarning     Warning
hi def link nomadCurrents    Identifier
hi def link nomadDevices     Identifier
hi def link nomadFloat       Number
hi def link timestamp        Normal
hi def link nomadAxes        Identifier
hi def link messageType      Error
