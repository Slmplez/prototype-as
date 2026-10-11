"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200021d8; bytecode file offset 0x8ffcfc"
!SGGraphicalProgrammingRT class methodsFor: 'recovered'!
_PRAGMA_GraphicalProgrammingExceptions
    ^self
! !

"ASDBase.ic method 0x2001a204; bytecode file offset 0x92209c"
!SGGraphicalProgrammingRT class methodsFor: 'recovered'!
packagerKnownSymbols
    ^#('changeEnd' 'down' 'horizontal' 'left' 'right' 'TaCenter' 'TaLeft' 'TaRight' 'up')
! !

"ASDBase.ic method 0x2013a268; bytecode file offset 0xa36b54"
!SGGraphicalProgrammingRT class methodsFor: 'recovered'!
loaded
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ExError.
    recoveredValue1 := (recoveredValue0) newChild.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) description: ('Graphical Identifier overflow').
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) resumable: (false).
    ExIdentifierOverflow := recoveredValue1.
    ^self
! !

