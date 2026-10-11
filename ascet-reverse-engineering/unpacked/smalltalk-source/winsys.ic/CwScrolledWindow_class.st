"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x200270d8; bytecode file offset 0xa32c8"
!CwScrolledWindow class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (8).
    ScrollBarCallbacks := recoveredValue1.
    recoveredValue2 := ScrollBarCallbacks.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := XmNdecrementCallback.
    (recoveredValue3) at: (1) put: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := XmNdragCallback.
    (recoveredValue5) at: (2) put: (recoveredValue6).
    recoveredValue7 := recoveredValue2.
    recoveredValue8 := XmNincrementCallback.
    (recoveredValue7) at: (3) put: (recoveredValue8).
    recoveredValue9 := recoveredValue2.
    recoveredValue10 := XmNpageDecrementCallback.
    (recoveredValue9) at: (4) put: (recoveredValue10).
    recoveredValue11 := recoveredValue2.
    recoveredValue12 := XmNpageIncrementCallback.
    (recoveredValue11) at: (5) put: (recoveredValue12).
    recoveredValue13 := recoveredValue2.
    recoveredValue14 := XmNtoBottomCallback.
    (recoveredValue13) at: (6) put: (recoveredValue14).
    recoveredValue15 := recoveredValue2.
    recoveredValue16 := XmNtoTopCallback.
    (recoveredValue15) at: (7) put: (recoveredValue16).
    recoveredValue17 := XmNvalueChangedCallback.
    (recoveredValue2) at: (8) put: (recoveredValue17).
    ^self
! !

