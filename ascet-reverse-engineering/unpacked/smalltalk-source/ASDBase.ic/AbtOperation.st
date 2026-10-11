"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20002cb8; bytecode file offset 0x8ffcfc"
!AbtOperation methodsFor: 'recovered'!
initialize
    ^self
! !

"ASDBase.ic method 0x2000680c; bytecode file offset 0x908be4"
!AbtOperation methodsFor: 'recovered'!
execute
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20007694; bytecode file offset 0x908be4"
!AbtOperation methodsFor: 'recovered'!
cancel
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007867c; bytecode file offset 0x9757c8"
!AbtOperation methodsFor: 'recovered'!
isOperation
    ^true
! !

"ASDBase.ic method 0x2007c444; bytecode file offset 0x97c330"
!AbtOperation methodsFor: 'recovered'!
isBeginUndoBlock
    ^false
! !

"ASDBase.ic method 0x2007d2dc; bytecode file offset 0x97c330"
!AbtOperation methodsFor: 'recovered'!
isEndUndoBlock
    ^false
! !

