"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200236a8; bytecode file offset 0x92209c"
!ASDXMLExportIssuesDisplayTreeDialog methodsFor: 'recovered'!
dialogTitle
    ^'Export Incompatibilities'
! !

"ASDBase.ic method 0x2007e53c; bytecode file offset 0x97c330"
!ASDXMLExportIssuesDisplayTreeDialog methodsFor: 'recovered'!
isCancelButtonAvailable
    ^false
! !

"ASDBase.ic method 0x203c68cc; bytecode file offset 0xcc3228"
!ASDXMLExportIssuesDisplayTreeDialog methodsFor: 'recovered'!
createTableColumnAutofix: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 |
    recoveredValue0 := EwTableColumn.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) heading: ('Details').
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) editable: (true).
    recoveredValue4 := recoveredValue1.
    (recoveredValue4) resizable: (false).
    recoveredValue5 := recoveredValue1.
    (recoveredValue5) showInUse: (false).
    recoveredValue6 := recoveredValue1.
    (recoveredValue6) verticalSeparatorThickness: (1).
    recoveredValue7 := recoveredValue1.
    (recoveredValue7) resizable: (true).
    recoveredValue8 := recoveredValue1.
    (recoveredValue8) width: (250).
    recoveredValue9 := recoveredValue1.
    recoveredValue10 := XmALIGNMENTBEGINNING.
    (recoveredValue9) horizontalAlignment: (recoveredValue10).
    recoveredLocal1 := recoveredValue1.
    recoveredValue11 := recoveredLocal1.
    recoveredValue12 := recoveredValue11.
    recoveredValue13 := XmNcellValueCallback.
    (recoveredValue12) addCallback: (recoveredValue13) receiver: (self) selector: ('autofixCellValueCallback:clientData:callData:') clientData: (nil).
    recoveredValue14 := recoveredValue11.
    recoveredValue15 := XmNresizeCallback.
    (recoveredValue14) addCallback: (recoveredValue15) receiver: (self) selector: ('columnResizeCallback:clientData:callData:') clientData: (nil).
    recoveredValue16 := XmNbeginEditCallback.
    (recoveredValue11) addCallback: (recoveredValue16) receiver: (self) selector: ('singleSelect:clientData:callData:') clientData: (nil).
    recoveredValue17 := recoveredArg1.
    recoveredValue18 := recoveredLocal1.
    (recoveredValue17) at: ('columnAutofix') put: (recoveredValue18).
    recoveredValue19 := recoveredLocal1.
    ^recoveredValue19
! !

