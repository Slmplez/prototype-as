"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200e3a84; bytecode file offset 0x9e0378"
!SGIlNodeLookupTable class methodsFor: 'recovered'!
createHasAlternativelySameValue
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) initialize.
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := SGIlNodeWrapperHasAlternativelySameValue.
    (recoveredValue2) wrapperClass: (recoveredValue3).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200e3a9c; bytecode file offset 0x9e0378"
!SGIlNodeLookupTable class methodsFor: 'recovered'!
createSameAccess
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) initialize.
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := SGIlNodeWrapperSameAccess.
    (recoveredValue2) wrapperClass: (recoveredValue3).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200e3ab4; bytecode file offset 0x9e0378"
!SGIlNodeLookupTable class methodsFor: 'recovered'!
createIsIleIdentical
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) initialize.
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := SGIlNodeWrapperIsIleIdentical.
    (recoveredValue2) wrapperClass: (recoveredValue3).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200ec0ac; bytecode file offset 0x9e8afc"
!SGIlNodeLookupTable class methodsFor: 'recovered'!
createWrapper: recoveredArg1 content: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) wrapperClass: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg2.
    (recoveredValue3) delegate: (recoveredValue4).
    ^recoveredValue0
! !

