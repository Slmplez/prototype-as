"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200070c4; bytecode file offset 0x908be4"
!ETASAlignment class methodsFor: 'recovered'!
create
    | recoveredValue0 |
    recoveredValue0 := (self) new.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004a3cc; bytecode file offset 0x947128"
!ETASAlignment class methodsFor: 'recovered'!
createDefault
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) defaultValue.
    recoveredValue1 := (self) create: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004ec30; bytecode file offset 0x94d048"
!ETASAlignment class methodsFor: 'recovered'!
defaultValue
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x200cb074; bytecode file offset 0x9c7930"
!ETASAlignment class methodsFor: 'recovered'!
create: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) create.
    recoveredValue1 := recoveredValue0.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    (recoveredValue0) alignment: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

