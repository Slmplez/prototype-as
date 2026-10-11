"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2008fee0; bytecode file offset 0x98c83c"
!EtasLogger class methodsFor: 'recovered'!
createInstance
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initialize.
    recoveredValue2 := recoveredValue1.
    theInstance := recoveredValue2.
    ^recoveredValue1
! !

"ASDBase.ic method 0x202b63b8; bytecode file offset 0xbb2cac"
!EtasLogger class methodsFor: 'recovered'!
apiOpenLogViewer
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 |
    recoveredValue0 := WriteStream.
    recoveredValue1 := Locale.
    recoveredValue2 := (recoveredValue1) current.
    recoveredValue3 := (recoveredValue2) preferredStringClass.
    recoveredValue4 := (recoveredValue3) new.
    recoveredValue5 := (recoveredValue0) on: (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := recoveredValue6.
    recoveredValue8 := EtasGeneralDllApi.
    recoveredValue9 := (recoveredValue8) getETASSharedFilePath.
    (recoveredValue7) nextPutAll: (recoveredValue9).
    recoveredValue10 := recoveredValue6.
    (recoveredValue10) nextPutAll: ('CodingFramework').
    recoveredValue11 := recoveredValue6.
    recoveredValue12 := CfsDirectoryDescriptor.
    recoveredValue13 := (recoveredValue12) pathSeparatorString.
    (recoveredValue11) nextPutAll: (recoveredValue13).
    (recoveredValue6) nextPutAll: ('Cfw.LogViewerGUI.exe').
    recoveredValue14 := ETASWinExec.
    recoveredValue15 := recoveredLocal1.
    recoveredValue16 := (recoveredValue15) contents.
    (recoveredValue14) startOnWindows: (recoveredValue16).
    ^self
! !

"ASDBase.ic method 0x20343b7c; bytecode file offset 0xc40450"
!EtasLogger class methodsFor: 'recovered'!
removeInstance
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := theInstance.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := (recoveredBlock6Value0) server.
    recoveredBlock6Value2 := [:recoveredBlock6Block14Arg1 | 
    | recoveredBlock6Block14Value0 recoveredBlock6Block14Value1 recoveredBlock6Block14Value2 recoveredBlock6Block14Value3 |
    recoveredBlock6Block14Value0 := [
    | recoveredBlock6Block14Block20Value0 recoveredBlock6Block14Block20Value1 |
    recoveredBlock6Block14Block20Value0 := recoveredBlock6Block14Arg1.
    recoveredBlock6Block14Block20Value1 := (recoveredBlock6Block14Block20Value0) releaseObject.
    recoveredBlock6Block14Block20Value1
].
    recoveredBlock6Block14Value1 := ExError.
    recoveredBlock6Block14Value2 := [:recoveredBlock6Block14Block33Arg1 | 
    | recoveredBlock6Block14Block33Value0 recoveredBlock6Block14Block33Value1 |
    super removeInstance.
    recoveredBlock6Block14Block33Value0 := recoveredBlock6Block14Block33Arg1.
    recoveredBlock6Block14Block33Value1 := (recoveredBlock6Block14Block33Value0) exitWith: (nil).
    recoveredBlock6Block14Block33Value1
].
    recoveredBlock6Block14Value3 := (recoveredBlock6Block14Value0) when: (recoveredBlock6Block14Value1) do: (recoveredBlock6Block14Value2).
    recoveredBlock6Block14Value3
].
    recoveredBlock6Value3 := (recoveredBlock6Value1) ifNotNil: (recoveredBlock6Value2).
    recoveredBlock6Value3
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    super removeInstance.
    ^self
! !

