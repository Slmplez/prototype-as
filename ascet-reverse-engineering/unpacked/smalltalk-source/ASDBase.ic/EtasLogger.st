"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2002f394; bytecode file offset 0x934580"
!EtasLogger methodsFor: 'recovered'!
apiOpenLogViewer
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) apiOpenLogViewer.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200667d4; bytecode file offset 0x963428"
!EtasLogger methodsFor: 'recovered'!
server
    | recoveredValue0 |
    recoveredValue0 := server.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200be89c; bytecode file offset 0x9bb178"
!EtasLogger methodsFor: 'recovered'!
server: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    server := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20186770; bytecode file offset 0xa8303c"
!EtasLogger methodsFor: 'recovered'!
writeToLogfile: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) server.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) module.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) location.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) categoryID.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue7) message.
    (recoveredValue0) writeEntryDisp: (recoveredValue2) iThread: (0) szLocation: (recoveredValue4) iLocation: (0) iCategory: (recoveredValue6) szMsg: (recoveredValue8).
    ^self
! !

"ASDBase.ic method 0x2019f674; bytecode file offset 0xa9bf40"
!EtasLogger methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := EtasLoggerOleObjectWrapper.
    recoveredValue1 := (recoveredValue0) createObject.
    recoveredValue2 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    (self) server: (recoveredBlock7Value0).
    recoveredBlock7Value1 := (self) server.
    recoveredBlock7Value2 := (recoveredBlock7Value1) initializeDisp.
    recoveredBlock7Value2
].
    (recoveredValue1) ifNotNil: (recoveredValue2).
    ^self
! !

