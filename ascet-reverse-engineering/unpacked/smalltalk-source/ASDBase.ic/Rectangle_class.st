"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20086cbc; bytecode file offset 0x98376c"
!Rectangle class methodsFor: 'recovered'!
leftTop: recoveredArg1 rightBottom: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) origin: (recoveredValue0) corner: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20086e24; bytecode file offset 0x98376c"
!Rectangle class methodsFor: 'recovered'!
leftTop: recoveredArg1 extent: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) origin: (recoveredValue0) extent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2009a0d8; bytecode file offset 0x997194"
!Rectangle class methodsFor: 'recovered'!
leftBottom: recoveredArg1 extent: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) leftBottom: (recoveredValue1) extent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2009a0f8; bytecode file offset 0x997194"
!Rectangle class methodsFor: 'recovered'!
leftBottom: recoveredArg1 rightTop: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) leftBottom: (recoveredValue1) rightTop: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20198f10; bytecode file offset 0xa957e0"
!Rectangle class methodsFor: 'recovered'!
ObjectFilerMapping
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    (recoveredValue2) at: ('leftTop') put: ('origin').
    recoveredValue3 := recoveredLocal1.
    (recoveredValue3) at: ('rightBottom') put: ('corner').
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

