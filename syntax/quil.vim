if exists('b:current_syntax')
    finish
endif

syntax clear

syntax keyword quilTodo TODO FIXME
syntax match quilComment "\v#.*$" contains=@Spell,quilTodo

syntax keyword quilKeyword ADD AND AS CONTROLLED CONVERT DAGGER DECLARE DEFCIRCUIT DEFGATE DIV EQ EXCHANGE FORKED GE GT HALT INCLUDE IOR JUMP JUMP-UNLESS JUMP-WHEN LABEL LE LOAD LT MATRIX MEASURE MOVE MUL NEG NOP NOT OFFSET PAULI-SUM PERMUTATION PRAGMA RESET SHARING STORE SUB WAIT XOR

syntax keyword quilGate CAN CCNOT CNOT CPHASE CPHASE00 CPHASE01 CPHASE10 CSWAP CZ H I ISWAP PHASE PISWAP PSWAP RX RY RZ S SWAP T X XY Y Z
syntax keyword quilType BIT OCTET REAL INTEGER

syntax keyword quilTKeyword CAPTURE DEFCAL DEFFRAME DEFWAVEFORM DELAY DIRECTION FENCE HARDWARE-OBJECT INITIAL-FREQUENCY PULSE RAW-CAPTURE SAMPLE-RATE SET-FREQUENCY SET-PHASE SET-SCALE SHIFT-FREQUENCY SHIFT-PHASE SWAP-PHASE SWAP-PHASES
syntax keyword quilTFunction flat gaussian draggaussian erfsquare

syntax match quilInteger "\v\d+"
syntax match quilReal "\v(\d+)?\.?\d+(([Ee])([-+])?\d+)?"
syntax match quilComplex "\v(pi\/\d+|pi)"
syntax match quilComplex "\v\d+i"
syntax match quilComplex "\v(\d+)?\.?\d+(([Ee])?([-+])?\d+)?i"

syntax match quilLabel "\v[@][A-Za-z_]([A-Za-z0-9\-_]*[A-Za-z0-9_])?"

syntax match quilParameter "\v[%][A-Za-z_]([A-Za-z0-9\-_]*[A-Za-z0-9_])?"

syntax region quilString start=/"/ skip=/\\"/ end=/"/ oneline


highlight link quilTodo Todo
highlight link quilComment Comment
highlight link quilKeyword Keyword
highlight link quilGate Keyword
highlight link quilType Type
highlight link quilTKeyword Keyword
highlight link quilTFunction Function
highlight link quilInteger Number
highlight link quilReal Float
highlight link quilComplex Float
highlight link quilOperator Operator
highlight link quilLabel Special
highlight link quilParameter Special
highlight link quilString String

let b:current_syntax = 'quil'
