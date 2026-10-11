"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"dbgrun.ic method 0x200000e0; bytecode file offset 0x76d0"
!DbgError class methodsFor: 'recovered'!
messageDictionary
    | recoveredValue0 |
    recoveredValue0 := MessageDictionary.
    ^recoveredValue0
! !

"dbgrun.ic method 0x20000230; bytecode file offset 0x77fc"
!DbgError class methodsFor: 'recovered'!
initializeAfterLoad
    (self) initializeMessages.
    ^self
! !

"dbgrun.ic method 0x20000298; bytecode file offset 0x7864"
!DbgError class methodsFor: 'recovered'!
messageDictionary: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    MessageDictionary := recoveredValue0.
    ^self
! !

"dbgrun.ic method 0x20002794; bytecode file offset 0x9d84"
!DbgError class methodsFor: 'recovered'!
initializeMessages
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := MxDBG33.
    (recoveredValue2) at: (1000) put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := MxDBG34.
    (recoveredValue4) at: (1001) put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := MxDBG35.
    (recoveredValue6) at: (1002) put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := MxDBG36.
    (recoveredValue8) at: (1003) put: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := MxDBG28.
    (recoveredValue10) at: (1004) put: (recoveredValue11).
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := MxDBG29.
    (recoveredValue12) at: (1005) put: (recoveredValue13).
    recoveredValue14 := recoveredValue1.
    recoveredValue15 := MxDBG30.
    (recoveredValue14) at: (1006) put: (recoveredValue15).
    recoveredValue16 := recoveredValue1.
    recoveredValue17 := MxDBG31.
    (recoveredValue16) at: (1007) put: (recoveredValue17).
    recoveredValue18 := recoveredValue1.
    recoveredValue19 := MxDBG32.
    (recoveredValue18) at: (1008) put: (recoveredValue19).
    (self) messageDictionary: (recoveredValue1).
    ^self
! !

