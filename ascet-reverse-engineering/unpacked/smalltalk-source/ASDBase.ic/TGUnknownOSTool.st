"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200096e0; bytecode file offset 0x908be4"
!TGUnknownOSTool methodsFor: 'recovered'!
label
    | recoveredValue0 |
    recoveredValue0 := (self) unknownLabel.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200762ac; bytecode file offset 0x9757c8"
!TGUnknownOSTool methodsFor: 'recovered'!
isMissingTool
    ^true
! !

"ASDBase.ic method 0x201f7c84; bytecode file offset 0xaf4548"
!TGUnknownOSTool methodsFor: 'recovered'!
getAttributeValue: recoveredArg1 default: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) declaration.
    recoveredValue1 := [
    | recoveredBlock5Value0 |
    recoveredBlock5Value0 := recoveredArg2.
    ^recoveredBlock5Value0
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := super getAttributeValue: (recoveredValue2) default: (recoveredValue3).
    ^recoveredValue4
! !

