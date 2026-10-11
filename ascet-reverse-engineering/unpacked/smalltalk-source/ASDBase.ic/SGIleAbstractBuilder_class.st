"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20012fa8; bytecode file offset 0x912098"
!SGIleAbstractBuilder class methodsFor: 'recovered'!
current
    | recoveredValue0 |
    recoveredValue0 := Current.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20048c90; bytecode file offset 0x945728"
!SGIleAbstractBuilder class methodsFor: 'recovered'!
resetCurrent
    Current := nil.
    ^self
! !

"ASDBase.ic method 0x200a195c; bytecode file offset 0x99e220"
!SGIleAbstractBuilder class methodsFor: 'recovered'!
create
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initialize.
    Current := recoveredValue1.
    recoveredValue2 := (self) current.
    ^recoveredValue2
! !

