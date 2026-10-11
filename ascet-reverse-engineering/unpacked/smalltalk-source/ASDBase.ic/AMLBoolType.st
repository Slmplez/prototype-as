"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20004048; bytecode file offset 0x90206c"
!AMLBoolType methodsFor: 'recovered'!
getFrom: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20020c18; bytecode file offset 0x92209c"
!AMLBoolType methodsFor: 'recovered'!
enumerationBaseName
    ^'AMLBool.'
! !

"ASDBase.ic method 0x2007c3f4; bytecode file offset 0x97c330"
!AMLBoolType methodsFor: 'recovered'!
defaultValue
    ^false
! !

"ASDBase.ic method 0x20085314; bytecode file offset 0x981ca4"
!AMLBoolType methodsFor: 'recovered'!
putTaggedValueIn: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) putValueIn: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200ea498; bytecode file offset 0x9e6d54"
!AMLBoolType methodsFor: 'recovered'!
getValueFrom: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    super getValueFrom: (recoveredValue0).
    value := true.
    ^self
! !

"ASDBase.ic method 0x201314ec; bytecode file offset 0xa2ddac"
!AMLBoolType methodsFor: 'recovered'!
putValueIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    (self) etasDevHalt.
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := name.
    (self) putIn: (recoveredValue0) string: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (self) putNewLineIn: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20167d1c; bytecode file offset 0xa645e0"
!AMLBoolType methodsFor: 'recovered'!
createAccessor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) accessorClass.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) idAccessorClassByteSize.
    recoveredValue4 := (recoveredValue2) + (recoveredValue3).
    recoveredValue5 := name.
    recoveredValue6 := (recoveredValue1) create: (recoveredValue4) bitIndex: (1) name: (recoveredValue5).
    recoveredValue7 := recoveredValue6.
    accessor := recoveredValue7.
    ^recoveredValue6
! !

"ASDBase.ic method 0x202571a8; bytecode file offset 0xb53a6c"
!AMLBoolType methodsFor: 'recovered'!
putKeyWordAndNameIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    (self) putLevelIn: (recoveredValue0).
    recoveredValue1 := name.
    recoveredValue2 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 |
    recoveredBlock11Value0 := recoveredArg1.
    recoveredBlock11Value1 := recoveredBlock11Arg1.
    recoveredBlock11Value2 := (self) putIn: (recoveredBlock11Value0) quotedString: (recoveredBlock11Value1).
    recoveredBlock11Value2
].
    (recoveredValue1) ifNotNil: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (Character value: 9).
    (recoveredValue3) nextPut: (recoveredValue4).
    ^self
! !

