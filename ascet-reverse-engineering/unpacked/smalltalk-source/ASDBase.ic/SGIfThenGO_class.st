"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20021adc; bytecode file offset 0x92209c"
!SGIfThenGO class methodsFor: 'recovered'!
goTypeString
    ^'IfThen'
! !

"ASDBase.ic method 0x20179f1c; bytecode file offset 0xa767e4"
!SGIfThenGO class methodsFor: 'recovered'!
createDefault: recoveredArg1 blockSize: recoveredArg2 connectorSize: recoveredArg3 oldFashion: recoveredArg4 id: recoveredArg5 controlInfo: recoveredArg6
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := SGIfThenElseGO.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := recoveredArg5.
    recoveredValue6 := Array.
    recoveredValue7 := (self) ifThenType.
    recoveredValue8 := (recoveredValue6) with: (recoveredValue7).
    recoveredValue9 := (recoveredValue0) createDefault: (recoveredValue1) blockSize: (recoveredValue2) connectorSize: (recoveredValue3) oldFashion: (recoveredValue4) id: (recoveredValue5) controlInfo: (recoveredValue8).
    ^recoveredValue9
! !

