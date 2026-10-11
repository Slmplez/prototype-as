"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"extwid.ic method 0x200155a4; bytecode file offset 0x66394"
!EwDrawnListSourceAdapter methodsFor: 'recovered'!
configure
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    super configure.
    recoveredValue0 := EwDragAndDropManager.
    recoveredValue1 := (recoveredValue0) default.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) widget.
    recoveredValue3 := (recoveredValue2) focusProxy.
    recoveredValue4 := KeyPressMask.
    recoveredValue5 := KeyReleaseMask.
    recoveredValue6 := (recoveredValue4) | (recoveredValue5).
    recoveredValue7 := recoveredLocal1.
    (recoveredValue3) addEventHandler: (recoveredValue6) receiver: (recoveredValue7) selector: ('inputEvent:clientData:callData:') clientData: (self).
    ^self
! !

