"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200afdbc; bytecode file offset 0x9ac680"
!TGETargetHexItem class methodsFor: 'recovered'!
createHeaderItem
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := HEX_ETARGET_HEADER.
    recoveredValue1 := ('ETarget-Hex-File') asByteArray.
    recoveredValue2 := (self) createForType: (recoveredValue0) code: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200c97b0; bytecode file offset 0x9c6070"
!TGETargetHexItem class methodsFor: 'recovered'!
createFromFile: recoveredArg1 sizeLimit: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initialize.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    (recoveredValue2) readFromFile: (recoveredValue3) sizeLimit: (recoveredValue4).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200edc6c; bytecode file offset 0x9ea52c"
!TGETargetHexItem class methodsFor: 'recovered'!
createFromByteArray: recoveredArg1 offset: recoveredArg2 sizeLimit: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initialize.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := recoveredArg3.
    (recoveredValue2) readFromByteArray: (recoveredValue3) offset: (recoveredValue4) sizeLimit: (recoveredValue5).
    ^recoveredValue1
! !

"ASDBase.ic method 0x201017cc; bytecode file offset 0x9fe138"
!TGETargetHexItem class methodsFor: 'recovered'!
createForType: recoveredArg1 code: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initialize.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) type: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) code: (recoveredValue5).
    ^recoveredValue1
! !

