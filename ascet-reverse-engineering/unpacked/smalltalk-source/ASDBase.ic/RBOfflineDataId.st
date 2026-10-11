"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20065f84; bytecode file offset 0x963428"
!RBOfflineDataId methodsFor: 'recovered'!
groupId
    | recoveredValue0 |
    recoveredValue0 := groupId.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20066f6c; bytecode file offset 0x9646f8"
!RBOfflineDataId methodsFor: 'recovered'!
dataId
    | recoveredValue0 |
    recoveredValue0 := dataId.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200be46c; bytecode file offset 0x9bb178"
!RBOfflineDataId methodsFor: 'recovered'!
groupId: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    groupId := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200be8f8; bytecode file offset 0x9bc0b4"
!RBOfflineDataId methodsFor: 'recovered'!
dataId: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    dataId := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2024b64c; bytecode file offset 0xb47f24"
!RBOfflineDataId methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := groupId.
    recoveredValue4 := (recoveredValue3) printString.
    recoveredValue5 := (' (groupNo ') , (recoveredValue4).
    recoveredValue6 := (recoveredValue5) , ('; dataId ').
    recoveredValue7 := dataId.
    recoveredValue8 := (recoveredValue7) printString.
    recoveredValue9 := (recoveredValue6) , (recoveredValue8).
    recoveredValue10 := (recoveredValue9) , (')').
    (recoveredValue2) nextPutAll: (recoveredValue10).
    (recoveredValue1) cr.
    ^self
! !

