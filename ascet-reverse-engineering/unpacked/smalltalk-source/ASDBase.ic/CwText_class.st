"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2007e74c; bytecode file offset 0x97c330"
!CwText class methodsFor: 'recovered'!
supportsColor
    ^false
! !

"ASDBase.ic method 0x20250b1c; bytecode file offset 0xb4d3f4"
!CwText class methodsFor: 'recovered'!
createWidget: recoveredArg1 parent: recoveredArg2 argBlock: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := super createWidget: (recoveredValue0) parent: (recoveredValue1) argBlock: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredValue4.
    recoveredValue6 := XmNlosingFocusCallback.
    recoveredValue7 := recoveredLocal1.
    (recoveredValue5) addCallback: (recoveredValue6) receiver: (recoveredValue7) selector: ('textLosingFocus:clientData:callData:') clientData: (nil).
    recoveredValue8 := KeyPressMask.
    recoveredValue9 := recoveredLocal1.
    (recoveredValue4) addEventHandler: (recoveredValue8) receiver: (recoveredValue9) selector: ('keyPress:clientData:event:') clientData: (nil).
    recoveredValue10 := recoveredLocal1.
    (recoveredValue10) setTextPopupMenu.
    recoveredValue11 := recoveredLocal1.
    ^recoveredValue11
! !

