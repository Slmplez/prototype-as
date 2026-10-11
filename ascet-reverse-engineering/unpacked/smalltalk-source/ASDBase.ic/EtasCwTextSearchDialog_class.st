"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2010ecbc; bytecode file offset 0xa0b580"
!EtasCwTextSearchDialog class methodsFor: 'recovered'!
for: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super for: (recoveredValue0).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) editable.
    recoveredValue5 := (recoveredValue4) not.
    (recoveredValue2) disableReplace: (recoveredValue5).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2018ae7c; bytecode file offset 0xa87748"
!EtasCwTextSearchDialog class methodsFor: 'recovered'!
forView: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) currentWidgetText.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := super for: (recoveredValue2).
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (recoveredValue5) editable.
    recoveredValue7 := (recoveredValue6) not.
    (recoveredValue4) disableReplace: (recoveredValue7).
    recoveredValue8 := recoveredValue3.
    recoveredValue9 := recoveredArg1.
    (recoveredValue8) view: (recoveredValue9).
    ^recoveredValue3
! !

