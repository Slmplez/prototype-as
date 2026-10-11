"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200668ac; bytecode file offset 0x963428"
!RBMeasureDataBatchChannel methodsFor: 'recovered'!
value
    | recoveredValue0 |
    recoveredValue0 := value.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007e2f4; bytecode file offset 0x97c330"
!RBMeasureDataBatchChannel methodsFor: 'recovered'!
isWorkingPointChannel
    ^false
! !

"ASDBase.ic method 0x2007f7ec; bytecode file offset 0x97c330"
!RBMeasureDataBatchChannel methodsFor: 'recovered'!
isOnlineDLLDisplayChannel
    ^false
! !

"ASDBase.ic method 0x201b5ce4; bytecode file offset 0xab25b4"
!RBMeasureDataBatchChannel methodsFor: 'recovered'!
outputHexValue: recoveredArg1 physValue: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg2.
    value := recoveredValue0.
    recoveredValue1 := Transcript.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) printString.
    recoveredValue5 := ('	hex = ') , (recoveredValue4).
    recoveredValue6 := (recoveredValue5) , ('  phys = ').
    recoveredValue7 := recoveredArg2.
    recoveredValue8 := (recoveredValue7) printString.
    recoveredValue9 := (recoveredValue6) , (recoveredValue8).
    (recoveredValue2) nextPutAll: (recoveredValue9).
    (recoveredValue1) cr.
    ^self
! !

