"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtxmlp.ic method 0x20000478; bytecode file offset 0x18c60"
!SgmlAnyData class methodsFor: 'recovered'!
canAdd: recoveredArg1 to: recoveredArg2
    ^true
! !

"abtxmlp.ic method 0x20001224; bytecode file offset 0x19a94"
!SgmlAnyData class methodsFor: 'recovered'!
isAnyData
    ^true
! !

"abtxmlp.ic method 0x20001524; bytecode file offset 0x19d10"
!SgmlAnyData class methodsFor: 'recovered'!
checkSyntax: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) setToEnd.
    ^true
! !

"abtxmlp.ic method 0x200028d0; bytecode file offset 0x1b0c4"
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

