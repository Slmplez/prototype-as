"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000d32c; bytecode file offset 0x909e08"
!TGInternalOSTool methodsFor: 'recovered'!
checkForOsToolDeclaration: recoveredArg1
    ^true
! !

"ASDBase.ic method 0x200751d4; bytecode file offset 0x9757c8"
!TGInternalOSTool methodsFor: 'recovered'!
isInternal
    ^true
! !

"ASDBase.ic method 0x200c1048; bytecode file offset 0x9bdf14"
!TGInternalOSTool methodsFor: 'recovered'!
osCategory: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    osCategory := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c18cc; bytecode file offset 0x9beac8"
!TGInternalOSTool methodsFor: 'recovered'!
rtioCategory: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    rtioCategory := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2017f2dc; bytecode file offset 0xa7bbb0"
!TGInternalOSTool methodsFor: 'recovered'!
osCategory
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := osCategory.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := (self) class.
    recoveredBlock6Value1 := (recoveredBlock6Value0) osCategoryGENERIC.
    recoveredBlock6Value2 := recoveredBlock6Value1.
    osCategory := recoveredBlock6Value2.
    recoveredBlock6Value1
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := osCategory.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2017f620; bytecode file offset 0xa7bee0"
!TGInternalOSTool methodsFor: 'recovered'!
rtioCategory
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := rtioCategory.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := (self) class.
    recoveredBlock6Value1 := (recoveredBlock6Value0) rtioCategoryNone.
    recoveredBlock6Value2 := recoveredBlock6Value1.
    osCategory := recoveredBlock6Value2.
    recoveredBlock6Value1
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := rtioCategory.
    ^recoveredValue2
! !

