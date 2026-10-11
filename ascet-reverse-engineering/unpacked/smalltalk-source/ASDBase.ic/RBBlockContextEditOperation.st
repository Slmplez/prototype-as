"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200670a4; bytecode file offset 0x9646f8"
!RBBlockContextEditOperation methodsFor: 'recovered'!
undoBlock
    | recoveredValue0 |
    recoveredValue0 := undoBlock.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20067f64; bytecode file offset 0x965b90"
!RBBlockContextEditOperation methodsFor: 'recovered'!
redoBlock
    | recoveredValue0 |
    recoveredValue0 := redoBlock.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007ba8c; bytecode file offset 0x97c330"
!RBBlockContextEditOperation methodsFor: 'recovered'!
isValueOperation
    ^false
! !

"ASDBase.ic method 0x200bf000; bytecode file offset 0x9bc0b4"
!RBBlockContextEditOperation methodsFor: 'recovered'!
undoBlock: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    undoBlock := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bfaa4; bytecode file offset 0x9bd228"
!RBBlockContextEditOperation methodsFor: 'recovered'!
redoBlock: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    redoBlock := recoveredValue0.
    ^self
! !

