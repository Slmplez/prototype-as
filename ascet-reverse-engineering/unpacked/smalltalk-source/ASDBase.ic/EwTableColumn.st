"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20086cd4; bytecode file offset 0x98376c"
!EwTableColumn methodsFor: 'recovered'!
getCellValueFor: recoveredArg1 position: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) callCellValueCallbackFor: (recoveredValue0) position: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2009c5f0; bytecode file offset 0x998fec"
!EwTableColumn methodsFor: 'recovered'!
abtHeadingWidth
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := CgFontStruct.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (self) heading.
    recoveredValue3 := (recoveredValue1) textWidth: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2025bc3c; bytecode file offset 0xb58518"
!EwTableColumn methodsFor: 'recovered'!
callCellValueCallbackFor: recoveredArg1 position: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := EwCellValueCallbackData.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := XmCRCELLVALUE.
    (recoveredValue3) reason: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := recoveredArg1.
    (recoveredValue5) item: (recoveredValue6).
    recoveredValue7 := recoveredValue2.
    recoveredValue8 := recoveredArg2.
    (recoveredValue7) itemPosition: (recoveredValue8).
    recoveredValue9 := recoveredValue2.
    (recoveredValue9) column: (self).
    (recoveredValue2) value: (nil).
    recoveredValue10 := cellValueCallback.
    recoveredValue11 := recoveredLocal1.
    (self) callCallbackList: (recoveredValue10) callData: (recoveredValue11).
    recoveredValue12 := recoveredLocal1.
    recoveredValue13 := (recoveredValue12) value.
    ^recoveredValue13
! !

