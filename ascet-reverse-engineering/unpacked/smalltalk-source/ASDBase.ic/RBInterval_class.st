"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200368e4; bytecode file offset 0x934580"
!RBInterval class methodsFor: 'recovered'!
createDefault
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initialize.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20058568; bytecode file offset 0x956284"
!RBInterval class methodsFor: 'recovered'!
inftyLeft: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) createDefault.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) left: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20058d08; bytecode file offset 0x956284"
!RBInterval class methodsFor: 'recovered'!
inftyRight: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) createDefault.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) right: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20080ee8; bytecode file offset 0x97d79c"
!RBInterval class methodsFor: 'recovered'!
emBehaviorId
    ^100
! !

"ASDBase.ic method 0x2009b79c; bytecode file offset 0x99805c"
!RBInterval class methodsFor: 'recovered'!
createDefaultInvers
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := PlusInfinity.
    recoveredValue1 := MinusInfinity.
    recoveredValue2 := (self) left: (recoveredValue0) right: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20101920; bytecode file offset 0x9fe1e4"
!RBInterval class methodsFor: 'recovered'!
left: recoveredArg1 right: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := super new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) left: (recoveredValue2).
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue0) right: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x2011c4f0; bytecode file offset 0xa18db4"
!RBInterval class methodsFor: 'recovered'!
emptyInterval
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := super new.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) left: (1).
    recoveredValue2 := (recoveredValue0) right: (0).
    ^recoveredValue2
! !

