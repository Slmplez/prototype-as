"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001e0ec; bytecode file offset 0x92209c"
!DBClassNameKey methodsFor: 'recovered'!
name
    ^'className'
! !

"ASDBase.ic method 0x200832f0; bytecode file offset 0x97fbf0"
!DBClassNameKey methodsFor: 'recovered'!
putKeyValueIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := keyValue.
    recoveredValue2 := (recoveredValue0) className: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008332c; bytecode file offset 0x97fbf0"
!DBClassNameKey methodsFor: 'recovered'!
matchSubString: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := keyValue.
    recoveredValue2 := (recoveredValue0) includesClassNameSubstring: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200ce364; bytecode file offset 0x9cac40"
!DBClassNameKey methodsFor: 'recovered'!
significantBytes
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := keyValue.
    recoveredValue1 := (recoveredValue0) size.
    recoveredValue2 := interface.
    recoveredValue3 := (recoveredValue2) recordClass.
    recoveredValue4 := (recoveredValue3) classNameLength.
    recoveredValue5 := (recoveredValue1) min: (recoveredValue4).
    ^recoveredValue5
! !

