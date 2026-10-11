"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000f414; bytecode file offset 0x90bd10"
!SgmlAnyData class methodsFor: 'recovered'!
canAdd: recoveredArg1 to: recoveredArg2
    ^true
! !

"ASDBase.ic method 0x20078994; bytecode file offset 0x9757c8"
!SgmlAnyData class methodsFor: 'recovered'!
isAnyData
    ^true
! !

"ASDBase.ic method 0x20084188; bytecode file offset 0x980a40"
!SgmlAnyData class methodsFor: 'recovered'!
checkSyntax: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) setToEnd.
    ^true
! !

"ASDBase.ic method 0x200c84c8; bytecode file offset 0x9c4d88"
!SgmlAnyData class methodsFor: 'recovered'!
addAllPermissibleTagsOf: recoveredArg1 to: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) dtd.
    recoveredValue3 := (recoveredValue2) elements.
    (recoveredValue0) addAll: (recoveredValue3).
    ^true
! !

