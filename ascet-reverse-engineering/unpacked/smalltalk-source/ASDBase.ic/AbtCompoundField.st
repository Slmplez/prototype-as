"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200419f4; bytecode file offset 0x93e414"
!AbtCompoundField methodsFor: 'recovered'!
fields
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := type.
    recoveredValue1 := (recoveredValue0) fields.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20041a60; bytecode file offset 0x93e414"
!AbtCompoundField methodsFor: 'recovered'!
new
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := type.
    recoveredValue1 := (recoveredValue0) new.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20082290; bytecode file offset 0x97ebfc"
!AbtCompoundField methodsFor: 'recovered'!
setInitialValue: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := type.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) setInitialValue: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200822e4; bytecode file offset 0x97ebfc"
!AbtCompoundField methodsFor: 'recovered'!
fieldsDo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := type.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) fieldsDo: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200c7ef0; bytecode file offset 0x9c47ac"
!AbtCompoundField methodsFor: 'recovered'!
fieldAt: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := type.
    recoveredValue1 := (recoveredValue0) fields.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue1) at: (recoveredValue2) ifAbsent: (recoveredValue3).
    ^recoveredValue4
! !

