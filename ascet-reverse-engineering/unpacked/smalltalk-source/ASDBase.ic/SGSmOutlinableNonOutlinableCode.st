"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2007613c; bytecode file offset 0x9757c8"
!SGSmOutlinableNonOutlinableCode methodsFor: 'recovered'!
isOutlinableCode
    ^true
! !

"ASDBase.ic method 0x20084858; bytecode file offset 0x981ca4"
!SGSmOutlinableNonOutlinableCode methodsFor: 'recovered'!
addChildren: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) addChildrenList: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x20084b28; bytecode file offset 0x981ca4"
!SGSmOutlinableNonOutlinableCode methodsFor: 'recovered'!
removeChildren: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) removeChildrenList: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x201f9948; bytecode file offset 0xaf6218"
!SGSmOutlinableNonOutlinableCode methodsFor: 'recovered'!
duplicateFor: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := SGSmInlinedNonOutlinableCode.
    recoveredValue1 := beforeCode.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) duplicateListFor: (recoveredValue2).
    recoveredValue4 := afterCode.
    recoveredValue5 := (self) source.
    recoveredValue6 := (self) label.
    recoveredValue7 := (self) outlineStrategy.
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := (self) beginEndSize.
    recoveredValue10 := (recoveredValue0) createBefore: (recoveredValue1) sequence: (recoveredValue3) afterBlock: (recoveredValue4) source: (recoveredValue5) label: (recoveredValue6) outlineStrategy: (recoveredValue7) method: (recoveredValue8) beginEndSize: (recoveredValue9).
    recoveredLocal1 := recoveredValue10.
    recoveredValue11 := recoveredLocal1.
    ^recoveredValue11
! !

