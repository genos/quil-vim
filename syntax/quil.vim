if exists('b:current_syntax')
    finish
endif

syntax match quilComment "\v#.*$"

syntax keyword quilKeyword ADD AND AS CONTROLLED CONVERT DAGGER DECLARE DEFCIRCUIT DEFGATE DIV EQ EXCHANGE FORKED GE GT HALT INCLUDE IOR JUMP JUMP-UNLESS JUMP-WHEN LABEL LE LOAD LT MATRIX MEASURE MOVE MUL NEG NOP NOT OFFSET PAULI-SUM PERMUTATION PRAGMA RESET SHARING STORE SUB WAIT XOR
syntax keyword quilGate CAN CCNOT CNOT CPHASE CPHASE00 CPHASE01 CPHASE10 CSWAP CZ H I ISWAP PHASE PISWAP PSWAP RX RY RZ S SWAP T X XY Y Z

syntax match quilInteger "\v\d+"
syntax match quilReal "\v(\d+)?\.?\d+(([Ee])?([-+])?\d+)?"
syntax match quilComplex "i"
syntax match quilComplex "pi"
syntax match quilComplex "\v(\d+)?i"
syntax match quilComplex "\v((\d+)?\.?\d+(([Ee])?([-+])?\d+)?)?i"

syntax match quilOperator "^\|*\|/\|+\|-"

syntax match quilLabel "\v@[A-Za-z_]([A-Za-z0-9\-_]*[A-Za-z0-9_])?"

syntax match quilParameter "\v%[A-Za-z_]([A-Za-z0-9\-_]*[A-Za-z0-9_])?"

syntax match quilString '\v"([^\"]|\"|\\)*'

syntax match quilIdentifier "\v[A-Za-z_]([A-Za-z0-9\-_]*[A-Za-z0-9_])?"

highlight link quilComment Comment
highlight link quilKeyword Keyword
highlight link quilGate Keyword
highlight link quilInteger Number
highlight link quilReal Float
highlight link quilComplex Float
highlight link quilOperator Operator
highlight link quilLabel Special
highlight link quilParameter Special
highlight link quilString String
highlight link quilIdentifier Identifier

let b:current_syntax = 'quil'