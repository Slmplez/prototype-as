"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000d1a4; bytecode file offset 0x909ab8"
!AMLalwaysState class methodsFor: 'recovered'!
doNot: recoveredArg1
    ^nil
! !

"ASDBase.ic method 0x2000d9c4; bytecode file offset 0x90a4b8"
!AMLalwaysState class methodsFor: 'recovered'!
and: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001b8b4; bytecode file offset 0x92209c"
!AMLalwaysState class methodsFor: 'recovered'!
stringRepresentation
    ^'always'
! !

"ASDBase.ic method 0x200210bc; bytecode file offset 0x92209c"
!AMLalwaysState class methodsFor: 'recovered'!
keyWord
    ^'alwaysUseAML'
! !

"ASDBase.ic method 0x20038b68; bytecode file offset 0x935c54"
!AMLalwaysState class methodsFor: 'recovered'!
do: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) value.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003c0b4; bytecode file offset 0x9389cc"
!AMLalwaysState class methodsFor: 'recovered'!
do: recoveredArg1 or: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) value.
    ^recoveredValue1
! !

"ASDBase.ic method 0x201dae74; bytecode file offset 0xad7740"
!AMLalwaysState class methodsFor: 'recovered'!
parseFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Smalltalk.
    recoveredValue1 := [].
    recoveredValue2 := (recoveredValue0) at: ('AMLDeclaration') ifAbsent: (recoveredValue1).
    recoveredValue3 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 |
    recoveredBlock12Value0 := recoveredBlock12Arg1.
    recoveredBlock12Value1 := recoveredArg1.
    recoveredBlock12Value2 := (recoveredBlock12Value0) createFromString: (recoveredBlock12Value1).
    recoveredBlock12Value2
].
    recoveredValue4 := (recoveredValue2) ifNotNil: (recoveredValue3).
    ^recoveredValue4
! !

