"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20019ab4; bytecode file offset 0x92209c"
!DBNameKey methodsFor: 'recovered'!
name
    ^'name'
! !

"ASDBase.ic method 0x20083308; bytecode file offset 0x97fbf0"
!DBNameKey methodsFor: 'recovered'!
putKeyValueIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := keyValue.
    recoveredValue2 := (recoveredValue0) name: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20083338; bytecode file offset 0x97fbf0"
!DBNameKey methodsFor: 'recovered'!
matchSubString: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := keyValue.
    recoveredValue2 := (recoveredValue0) includesNameSubstring: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200ce34c; bytecode file offset 0x9cac40"
!DBNameKey methodsFor: 'recovered'!
significantBytes
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := keyValue.
    recoveredValue1 := (recoveredValue0) size.
    recoveredValue2 := interface.
    recoveredValue3 := (recoveredValue2) recordClass.
    recoveredValue4 := (recoveredValue3) nameLength.
    recoveredValue5 := (recoveredValue1) min: (recoveredValue4).
    ^recoveredValue5
! !

