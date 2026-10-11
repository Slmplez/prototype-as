"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200658a4; bytecode file offset 0x963428"
!EtasTSZipFileReturn methodsFor: 'recovered'!
zipFilePath
    | recoveredValue0 |
    recoveredValue0 := zipFilePath.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20067c3c; bytecode file offset 0x9646f8"
!EtasTSZipFileReturn methodsFor: 'recovered'!
eMailSuccess
    | recoveredValue0 |
    recoveredValue0 := eMailSuccess.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20082e84; bytecode file offset 0x97f798"
!EtasTSZipFileReturn methodsFor: 'recovered'!
zipFilePath: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    zipFilePath := recoveredValue1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20082f40; bytecode file offset 0x97f81c"
!EtasTSZipFileReturn methodsFor: 'recovered'!
eMailSuccess: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    eMailSuccess := recoveredValue1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x201b2e20; bytecode file offset 0xaaf6ec"
!EtasTSZipFileReturn methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := zipFilePath.
    recoveredValue3 := ('ZipFilePath: ') , (recoveredValue2).
    (recoveredValue1) nextPutAll: (recoveredValue3).
    recoveredValue4 := recoveredValue0.
    (recoveredValue4) cr.
    recoveredValue5 := eMailSuccess.
    recoveredValue6 := (recoveredValue5) printString.
    recoveredValue7 := ('EmailSuccessful: ') , (recoveredValue6).
    (recoveredValue0) nextPutAll: (recoveredValue7).
    ^self
! !

