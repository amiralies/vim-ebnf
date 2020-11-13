if exists("b:current_syntax")
  finish
endif

" Symbols
syntax match ebnfSymbol "\v\:\:\="
syntax match ebnfSymbol "\v\="
syntax match ebnfSymbol "\v\|"
syntax match ebnfSymbol "\v;"
syntax match ebnfSymbol "\v\{|\}"
syntax match ebnfSymbol "\v\[|\]"
syntax match ebnfSymbol "\v\.\.\."
syntax match ebnfSymbol "\v\+"
syntax match ebnfSymbol "\v\*"

" Terminals
syntax region ebnfTerminal start="\v\"" end="\v\""
syntax region ebnfTerminal start="\'" end="\'"

" Constants
syntax match ebnfConstant "\v<[A-Z]+>"

" Comments
syntax region ebnfComment start="\v\(\*" end="\v\*\)"

" SpecialSequence
syntax region ebnfSpecialSequence start="\v\?" end="\v\?"



highlight default link ebnfSymbol Operator
highlight default link ebnfTerminal String
highlight default link ebnfConstant Constant
highlight default link ebnfComment Comment
highlight default link ebnfSpecialSequence Statement


let b:current_syntax = "ebnf"
