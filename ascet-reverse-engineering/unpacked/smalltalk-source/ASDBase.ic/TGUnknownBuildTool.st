"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20008f78; bytecode file offset 0x908be4"
!TGUnknownBuildTool methodsFor: 'recovered'!
label
    | recoveredValue0 |
    recoveredValue0 := (self) unknownLabel.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20078734; bytecode file offset 0x9757c8"
!TGUnknownBuildTool methodsFor: 'recovered'!
isMissingTool
    ^true
! !

"ASDBase.ic method 0x201f7c6c; bytecode file offset 0xaf4548"
!TGUnknownBuildTool methodsFor: 'recovered'!
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

