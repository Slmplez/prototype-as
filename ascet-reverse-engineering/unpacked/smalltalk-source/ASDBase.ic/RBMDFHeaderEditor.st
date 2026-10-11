"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200002c0; bytecode file offset 0x8ffcfc"
!RBMDFHeaderEditor methodsFor: 'recovered'!
help
    ^self
! !

"ASDBase.ic method 0x2005a4c4; bytecode file offset 0x957a6c"
!RBMDFHeaderEditor methodsFor: 'recovered'!
helpButtonActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) help.
    ^self
! !

"ASDBase.ic method 0x2005a8e4; bytecode file offset 0x957a6c"
!RBMDFHeaderEditor methodsFor: 'recovered'!
browseFilesButtonActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) browseFiles.
    ^self
! !

"ASDBase.ic method 0x2005ab90; bytecode file offset 0x957a6c"
!RBMDFHeaderEditor methodsFor: 'recovered'!
okButtonActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) ok.
    ^self
! !

"ASDBase.ic method 0x2005ae00; bytecode file offset 0x957a6c"
!RBMDFHeaderEditor methodsFor: 'recovered'!
takeOverButtonActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) takeOverSituation.
    ^self
! !

"ASDBase.ic method 0x2007038c; bytecode file offset 0x96ce40"
!RBMDFHeaderEditor methodsFor: 'recovered'!
mdfHeader
    | recoveredValue0 |
    recoveredValue0 := mdfHeader.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20070e84; bytecode file offset 0x96d7b0"
!RBMDFHeaderEditor methodsFor: 'recovered'!
fileName
    | recoveredValue0 |
    recoveredValue0 := fileName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2008721c; bytecode file offset 0x983b04"
!RBMDFHeaderEditor methodsFor: 'recovered'!
fileNameTextValue: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) checkFileName: (true).
    ^self
! !

"ASDBase.ic method 0x2009df40; bytecode file offset 0x99a800"
!RBMDFHeaderEditor methodsFor: 'recovered'!
focusComment
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('commentField').
    (recoveredValue0) setInputFocus.
    ^self
! !

"ASDBase.ic method 0x200aeb5c; bytecode file offset 0x9ab414"
!RBMDFHeaderEditor methodsFor: 'recovered'!
ccancelButtonActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    mdfHeader := nil.
    (self) cancel.
    ^self
! !

"ASDBase.ic method 0x200c6a64; bytecode file offset 0x9c3470"
!RBMDFHeaderEditor methodsFor: 'recovered'!
mdfHeader: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    mdfHeader := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c6da0; bytecode file offset 0x9c36ec"
!RBMDFHeaderEditor methodsFor: 'recovered'!
allowTakeOverSituation: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    allowTakeOverSituation := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c6f94; bytecode file offset 0x9c38d8"
!RBMDFHeaderEditor methodsFor: 'recovered'!
allowCancel: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    allowCancel := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c70a8; bytecode file offset 0x9c3a8c"
!RBMDFHeaderEditor methodsFor: 'recovered'!
devices: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    devices := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c7334; bytecode file offset 0x9c3c10"
!RBMDFHeaderEditor methodsFor: 'recovered'!
storedVariableNames: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    storedVars := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c74a8; bytecode file offset 0x9c3d64"
!RBMDFHeaderEditor methodsFor: 'recovered'!
notStoredVariableNames: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    notStoredVars := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c7564; bytecode file offset 0x9c3e48"
!RBMDFHeaderEditor methodsFor: 'recovered'!
fileName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    fileName := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c76d4; bytecode file offset 0x9c3fa0"
!RBMDFHeaderEditor methodsFor: 'recovered'!
checkFileName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    checkFileName := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200de580; bytecode file offset 0x9dae4c"
!RBMDFHeaderEditor methodsFor: 'recovered'!
aForm1Destroy: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    super aForm1Destroy: (recoveredValue0) clientData: (recoveredValue1) callData: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20180798; bytecode file offset 0xa7d0e4"
!RBMDFHeaderEditor methodsFor: 'recovered'!
focusFileName
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) widgetAt: ('fileNameText').
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) setInputFocus.
    recoveredValue2 := (self) widgetAt: ('fileNameText').
    recoveredValue3 := (recoveredValue2) getLastPosition.
    recoveredValue4 := (0) @ (recoveredValue3).
    (recoveredValue0) setSelection: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x201807b8; bytecode file offset 0xa7d0e4"
!RBMDFHeaderEditor methodsFor: 'recovered'!
focusProject
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) widgetAt: ('projectField').
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) setInputFocus.
    recoveredValue2 := (self) widgetAt: ('projectField').
    recoveredValue3 := (recoveredValue2) getLastPosition.
    recoveredValue4 := (0) @ (recoveredValue3).
    (recoveredValue0) setSelection: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x201807d8; bytecode file offset 0xa7d0e4"
!RBMDFHeaderEditor methodsFor: 'recovered'!
focusDivision
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) widgetAt: ('divisionField').
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) setInputFocus.
    recoveredValue2 := (self) widgetAt: ('divisionField').
    recoveredValue3 := (recoveredValue2) getLastPosition.
    recoveredValue4 := (0) @ (recoveredValue3).
    (recoveredValue0) setSelection: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x201807f8; bytecode file offset 0xa7d0e4"
!RBMDFHeaderEditor methodsFor: 'recovered'!
focusVehicle
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) widgetAt: ('subjectField').
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) setInputFocus.
    recoveredValue2 := (self) widgetAt: ('subjectField').
    recoveredValue3 := (recoveredValue2) getLastPosition.
    recoveredValue4 := (0) @ (recoveredValue3).
    (recoveredValue0) setSelection: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20180818; bytecode file offset 0xa7d0e4"
!RBMDFHeaderEditor methodsFor: 'recovered'!
focusEditor
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) widgetAt: ('nameField').
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) setInputFocus.
    recoveredValue2 := (self) widgetAt: ('nameField').
    recoveredValue3 := (recoveredValue2) getLastPosition.
    recoveredValue4 := (0) @ (recoveredValue3).
    (recoveredValue0) setSelection: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20249a48; bytecode file offset 0xb4630c"
!RBMDFHeaderEditor methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    super initialize.
    allowTakeOverSituation := false.
    allowCancel := true.
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    devices := recoveredValue1.
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    storedVars := recoveredValue3.
    recoveredValue4 := OrderedCollection.
    recoveredValue5 := (recoveredValue4) new.
    notStoredVars := recoveredValue5.
    showStoredVars := false.
    checkFileName := true.
    ^self
! !

"ASDBase.ic method 0x2033ceec; bytecode file offset 0xc397cc"
!RBMDFHeaderEditor methodsFor: 'recovered'!
takeOverSituation
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredLocal1 := ''.
    recoveredValue0 := devices.
    recoveredValue1 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 recoveredBlock11Value4 recoveredBlock11Value5 recoveredBlock11Value6 |
    recoveredBlock11Value0 := recoveredLocal1.
    recoveredBlock11Value1 := recoveredBlock11Arg1.
    recoveredBlock11Value2 := (recoveredBlock11Value1) name.
    recoveredBlock11Value3 := (recoveredBlock11Value0) , (recoveredBlock11Value2).
    recoveredBlock11Value4 := CR.
    recoveredBlock11Value5 := (recoveredBlock11Value3) , (recoveredBlock11Value4).
    recoveredBlock11Value6 := recoveredBlock11Value5.
    recoveredLocal1 := recoveredBlock11Value6.
    recoveredBlock11Value5
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := (self) widgetAt: ('commentField').
    recoveredValue3 := (self) widgetAt: ('commentField').
    recoveredValue4 := (recoveredValue3) getString.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (recoveredValue4) , (recoveredValue5).
    recoveredValue7 := (self) parent.
    recoveredValue8 := (recoveredValue7) printSituation.
    recoveredValue9 := (recoveredValue6) , (recoveredValue8).
    recoveredValue10 := CR.
    recoveredValue11 := (recoveredValue9) , (recoveredValue10).
    (recoveredValue2) setString: (recoveredValue11).
    ^self
! !

"ASDBase.ic method 0x2043f17c; bytecode file offset 0xd3ba88"
!RBMDFHeaderEditor methodsFor: 'recovered'!
ok
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := mdfHeader.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack4 := 'projectField'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := (recoveredStack3) widgetAt: (recoveredStack4).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := (recoveredStack3) getString.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack2) project: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack4 := 'subjectField'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := (recoveredStack3) widgetAt: (recoveredStack4).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := (recoveredStack3) getString.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack2) subject: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack4 := 'divisionField'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := (recoveredStack3) widgetAt: (recoveredStack4).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := (recoveredStack3) getString.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack2) division: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack4 := 'nameField'.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := (recoveredStack3) widgetAt: (recoveredStack4).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := (recoveredStack3) getString.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack2) name: (recoveredStack3).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := 'commentField'.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := (recoveredStack2) widgetAt: (recoveredStack3).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := (recoveredStack2) getString.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) text: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := 'fileNameText'.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) isManaged.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := 'fileNameText'.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) getString.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            fileName := recoveredStack0.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := checkFileName.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := CfsStat.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := fileName.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) stat: (recoveredStack1).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCfsError.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) isReg.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := RBError.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := fileName.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := (recoveredStack1) fileName.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := (recoveredStack0) confirmOverwriteFile: (recoveredStack1).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := mdfHeader.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            result := recoveredStack0.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20474b98; bytecode file offset 0xd714bc"
!RBMDFHeaderEditor methodsFor: 'recovered'!
browseFiles
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := fileName.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := '*.dat'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := fileName.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := CfsDirectoryDescriptor.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) getcwd.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := 'interfaceManager'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) respondsTo: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 53].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceManager.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := 'actProject'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) respondsTo: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 53].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceManager.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) actProject.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultMeasureDirectory.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := RBFileSelectionPrompter.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := SCMeasureFile.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack1) title: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack1) fileName: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack1) searchPath: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := '*.dat'.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack1) searchMask: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := Dictionary.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack4 := '*.dat'.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack5 := SCMeasureFile.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack6 := ' '.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack5 := (recoveredStack5) , (recoveredStack6).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack3) at: (recoveredStack4) put: (recoveredStack5).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack1) filterDictionary: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := '-'.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack1) invalidCharacters: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack1) appendDefaultExtension.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) prompt.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 110] ifFalse: [recoveredPC := 108].
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := 'fileNameText'.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack0) setString: (recoveredStack1).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack0) checkFileName: (recoveredStack1).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205272c4; bytecode file offset 0xe23c14"
!RBMDFHeaderEditor methodsFor: 'recovered'!
installActionKeys
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := XKCancel.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack4 := 'cancel'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := XKF1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack4 := 'help'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := HKOk.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack4 := 'ok'.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := HKCancel.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack4 := 'cancel'.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := HKHelp.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack4 := 'help'.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := HKBrowseMeasureFiles.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack4 := 'browseFiles'.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := HKBrowseMeasureFiles.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := (recoveredStack3) last.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack4 := 'browseFiles'.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack3 := HKFocusMDFFileName.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack4 := 'focusFileName'.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack3 := HKFocusMDFAuthor.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack4 := 'focusEditor'.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack3 := HKFocusMDFDivision.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack4 := 'focusDivision'.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack3 := HKFocusMDFVehicle.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack4 := 'focusVehicle'.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack3 := HKFocusMDFProject.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack4 := 'focusProject'.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := HKFocusMDFComment.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack3 := 'focusComment'.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := allowTakeOverSituation.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 110] ifFalse: [recoveredPC := 117].
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack2 := HKTakeOverSituation.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack3 := 'takeOverSituation'.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := (recoveredStack2) shell.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack2 := Character.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack3 := 13.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack2 := (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack3 := 'ok'.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack3 := 'subjectField'.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack2 := (recoveredStack2) widgetAt: (recoveredStack3).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack3 := 'divisionField'.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack2 := (recoveredStack2) widgetAt: (recoveredStack3).
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack3 := 'nameField'.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack2 := (recoveredStack2) widgetAt: (recoveredStack3).
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack3 := 'projectField'.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack2 := (recoveredStack2) widgetAt: (recoveredStack3).
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack3 := 'storedVariablesList'.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack2 := (recoveredStack2) widgetAt: (recoveredStack3).
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack3 := 'notStoredVariablesList'.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack2 := (recoveredStack2) widgetAt: (recoveredStack3).
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            (recoveredStack0) widgetKeyActions: (recoveredStack1).
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2063e218; bytecode file offset 0xf3abc8"
!RBMDFHeaderEditor methodsFor: 'recovered'!
initializeAfterCreate
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := checkFileName.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            super initializeAfterCreate.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := SCHeaderInfo.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) title: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := 'projectText'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := LLProject.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := Colon.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := 'subjectText'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := LLVehicle.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := Colon.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := 'divisionText'.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := LLDivision.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := Colon.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := 'nameText'.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := LLEditor.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := Colon.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := 'commentText'.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := LLComment.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := Colon.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := 'okButton'.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := SCOk.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := 'cancelButton'.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := SCCancel.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := 'helpButton'.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := SCHelp.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := 'storedVariablesLabel'.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := LLStoredVariables.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := 'notStoredVariablesLabel'.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := LLNotStoredVariables.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := 'takeOverButton'.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := BTTakeOverSituation.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := 'projectField'.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := mdfHeader.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := (recoveredStack1) project.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            (recoveredStack0) setString: (recoveredStack1).
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := 'subjectField'.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := mdfHeader.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := (recoveredStack1) subject.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            (recoveredStack0) setString: (recoveredStack1).
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := 'divisionField'.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack1 := mdfHeader.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack1 := (recoveredStack1) division.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            (recoveredStack0) setString: (recoveredStack1).
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack1 := 'nameField'.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack1 := mdfHeader.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            (recoveredStack0) setString: (recoveredStack1).
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack1 := 'commentField'.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack1 := mdfHeader.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack1 := (recoveredStack1) text.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            (recoveredStack0) setString: (recoveredStack1).
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack1 := 'helpButton'.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            (recoveredStack0) unmanageChild.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack0 := allowTakeOverSituation.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 211] ifFalse: [recoveredPC := 204].
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack1 := 'takeOverButton'.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            (recoveredStack0) unmanageChild.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack0 := allowCancel.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 223] ifFalse: [recoveredPC := 216].
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack1 := 'cancelButton'.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            (recoveredStack0) unmanageChild.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack0 := fileName.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 270] ifFalse: [recoveredPC := 228].
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack1 := 'fileNameLabel'.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            (recoveredStack0) unmanageChild.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack1 := 'fileNameText'.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            (recoveredStack0) unmanageChild.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack1 := 'browseFilesButton'.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            (recoveredStack0) unmanageChild.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack2 := 'notStoredVariablesList'.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetAt: (recoveredStack2).
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack1 := (recoveredStack1) corner.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack2 := 10.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            (recoveredStack0) height: (recoveredStack1).
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredPC := 297.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack1 := 'fileNameLabel'.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack1 := LLMeasureFile.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack1 := 'browseFilesButton'.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack1 := LLBrowseMeasureFiles.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack1 := 'fileNameText'.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack1 := fileName.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            (recoveredStack0) setString: (recoveredStack1).
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack0 := smallFont.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 563] ifFalse: [recoveredPC := 302].
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack1 := 'projectText'.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack1 := smallFont.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            (recoveredStack0) fontList: (recoveredStack1).
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack1 := 'subjectText'.
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack1 := smallFont.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            (recoveredStack0) fontList: (recoveredStack1).
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack1 := 'divisionText'.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack1 := smallFont.
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            (recoveredStack0) fontList: (recoveredStack1).
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack1 := 'nameText'.
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            recoveredStack1 := smallFont.
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            (recoveredStack0) fontList: (recoveredStack1).
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            recoveredStack1 := 'commentText'.
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredStack1 := smallFont.
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            (recoveredStack0) fontList: (recoveredStack1).
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            recoveredStack1 := 'okButton'.
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredStack1 := smallFont.
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            (recoveredStack0) fontList: (recoveredStack1).
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            recoveredStack1 := 'cancelButton'.
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            recoveredStack1 := smallFont.
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            (recoveredStack0) fontList: (recoveredStack1).
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            recoveredStack1 := 'helpButton'.
            recoveredPC := 368.
        ].
        recoveredStep = 368 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            recoveredStack1 := smallFont.
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            (recoveredStack0) fontList: (recoveredStack1).
            recoveredPC := 374.
        ].
        recoveredStep = 374 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            recoveredStack1 := 'projectField'.
            recoveredPC := 377.
        ].
        recoveredStep = 377 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 379.
        ].
        recoveredStep = 379 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 380.
        ].
        recoveredStep = 380 ifTrue: [
            recoveredStack2 := smallFont.
            recoveredPC := 382.
        ].
        recoveredStep = 382 ifTrue: [
            (recoveredStack1) fontList: (recoveredStack2).
            recoveredPC := 384.
        ].
        recoveredStep = 384 ifTrue: [
            recoveredStack1 := smallFont.
            recoveredPC := 386.
        ].
        recoveredStep = 386 ifTrue: [
            recoveredStack1 := (recoveredStack1) fontStruct.
            recoveredPC := 388.
        ].
        recoveredStep = 388 ifTrue: [
            recoveredStack1 := (recoveredStack1) height.
            recoveredPC := 390.
        ].
        recoveredStep = 390 ifTrue: [
            recoveredStack2 := 8.
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 393.
        ].
        recoveredStep = 393 ifTrue: [
            (recoveredStack0) height: (recoveredStack1).
            recoveredPC := 395.
        ].
        recoveredStep = 395 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 396.
        ].
        recoveredStep = 396 ifTrue: [
            recoveredStack1 := 'subjectField'.
            recoveredPC := 398.
        ].
        recoveredStep = 398 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 400.
        ].
        recoveredStep = 400 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 401.
        ].
        recoveredStep = 401 ifTrue: [
            recoveredStack2 := smallFont.
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            (recoveredStack1) fontList: (recoveredStack2).
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            recoveredStack1 := smallFont.
            recoveredPC := 407.
        ].
        recoveredStep = 407 ifTrue: [
            recoveredStack1 := (recoveredStack1) fontStruct.
            recoveredPC := 409.
        ].
        recoveredStep = 409 ifTrue: [
            recoveredStack1 := (recoveredStack1) height.
            recoveredPC := 411.
        ].
        recoveredStep = 411 ifTrue: [
            recoveredStack2 := 8.
            recoveredPC := 413.
        ].
        recoveredStep = 413 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 414.
        ].
        recoveredStep = 414 ifTrue: [
            (recoveredStack0) height: (recoveredStack1).
            recoveredPC := 416.
        ].
        recoveredStep = 416 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 417.
        ].
        recoveredStep = 417 ifTrue: [
            recoveredStack1 := 'divisionField'.
            recoveredPC := 419.
        ].
        recoveredStep = 419 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 421.
        ].
        recoveredStep = 421 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 422.
        ].
        recoveredStep = 422 ifTrue: [
            recoveredStack2 := smallFont.
            recoveredPC := 424.
        ].
        recoveredStep = 424 ifTrue: [
            (recoveredStack1) fontList: (recoveredStack2).
            recoveredPC := 426.
        ].
        recoveredStep = 426 ifTrue: [
            recoveredStack1 := smallFont.
            recoveredPC := 428.
        ].
        recoveredStep = 428 ifTrue: [
            recoveredStack1 := (recoveredStack1) fontStruct.
            recoveredPC := 430.
        ].
        recoveredStep = 430 ifTrue: [
            recoveredStack1 := (recoveredStack1) height.
            recoveredPC := 432.
        ].
        recoveredStep = 432 ifTrue: [
            recoveredStack2 := 8.
            recoveredPC := 434.
        ].
        recoveredStep = 434 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 435.
        ].
        recoveredStep = 435 ifTrue: [
            (recoveredStack0) height: (recoveredStack1).
            recoveredPC := 437.
        ].
        recoveredStep = 437 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 438.
        ].
        recoveredStep = 438 ifTrue: [
            recoveredStack1 := 'nameField'.
            recoveredPC := 440.
        ].
        recoveredStep = 440 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 442.
        ].
        recoveredStep = 442 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 443.
        ].
        recoveredStep = 443 ifTrue: [
            recoveredStack2 := smallFont.
            recoveredPC := 445.
        ].
        recoveredStep = 445 ifTrue: [
            (recoveredStack1) fontList: (recoveredStack2).
            recoveredPC := 447.
        ].
        recoveredStep = 447 ifTrue: [
            recoveredStack1 := smallFont.
            recoveredPC := 449.
        ].
        recoveredStep = 449 ifTrue: [
            recoveredStack1 := (recoveredStack1) fontStruct.
            recoveredPC := 451.
        ].
        recoveredStep = 451 ifTrue: [
            recoveredStack1 := (recoveredStack1) height.
            recoveredPC := 453.
        ].
        recoveredStep = 453 ifTrue: [
            recoveredStack2 := 8.
            recoveredPC := 455.
        ].
        recoveredStep = 455 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 456.
        ].
        recoveredStep = 456 ifTrue: [
            (recoveredStack0) height: (recoveredStack1).
            recoveredPC := 458.
        ].
        recoveredStep = 458 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 459.
        ].
        recoveredStep = 459 ifTrue: [
            recoveredStack1 := 'commentField'.
            recoveredPC := 461.
        ].
        recoveredStep = 461 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 463.
        ].
        recoveredStep = 463 ifTrue: [
            recoveredStack1 := smallFont.
            recoveredPC := 465.
        ].
        recoveredStep = 465 ifTrue: [
            (recoveredStack0) fontList: (recoveredStack1).
            recoveredPC := 467.
        ].
        recoveredStep = 467 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 468.
        ].
        recoveredStep = 468 ifTrue: [
            recoveredStack1 := 'takeOverButton'.
            recoveredPC := 470.
        ].
        recoveredStep = 470 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 472.
        ].
        recoveredStep = 472 ifTrue: [
            recoveredStack1 := smallFont.
            recoveredPC := 474.
        ].
        recoveredStep = 474 ifTrue: [
            (recoveredStack0) fontList: (recoveredStack1).
            recoveredPC := 476.
        ].
        recoveredStep = 476 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 477.
        ].
        recoveredStep = 477 ifTrue: [
            recoveredStack1 := 'storedVariablesLabel'.
            recoveredPC := 479.
        ].
        recoveredStep = 479 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 481.
        ].
        recoveredStep = 481 ifTrue: [
            recoveredStack1 := smallFont.
            recoveredPC := 483.
        ].
        recoveredStep = 483 ifTrue: [
            (recoveredStack0) fontList: (recoveredStack1).
            recoveredPC := 485.
        ].
        recoveredStep = 485 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 486.
        ].
        recoveredStep = 486 ifTrue: [
            recoveredStack1 := 'notStoredVariablesLabel'.
            recoveredPC := 488.
        ].
        recoveredStep = 488 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 490.
        ].
        recoveredStep = 490 ifTrue: [
            recoveredStack1 := smallFont.
            recoveredPC := 492.
        ].
        recoveredStep = 492 ifTrue: [
            (recoveredStack0) fontList: (recoveredStack1).
            recoveredPC := 494.
        ].
        recoveredStep = 494 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 495.
        ].
        recoveredStep = 495 ifTrue: [
            recoveredStack1 := 'storedVariablesList'.
            recoveredPC := 497.
        ].
        recoveredStep = 497 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 499.
        ].
        recoveredStep = 499 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 500.
        ].
        recoveredStep = 500 ifTrue: [
            recoveredStack2 := smallFont.
            recoveredPC := 502.
        ].
        recoveredStep = 502 ifTrue: [
            (recoveredStack1) fontList: (recoveredStack2).
            recoveredPC := 504.
        ].
        recoveredStep = 504 ifTrue: [
            recoveredStack1 := smallFont.
            recoveredPC := 506.
        ].
        recoveredStep = 506 ifTrue: [
            recoveredStack1 := (recoveredStack1) fontStruct.
            recoveredPC := 508.
        ].
        recoveredStep = 508 ifTrue: [
            recoveredStack1 := (recoveredStack1) height.
            recoveredPC := 510.
        ].
        recoveredStep = 510 ifTrue: [
            recoveredStack2 := 6.
            recoveredPC := 512.
        ].
        recoveredStep = 512 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 513.
        ].
        recoveredStep = 513 ifTrue: [
            (recoveredStack0) height: (recoveredStack1).
            recoveredPC := 515.
        ].
        recoveredStep = 515 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 516.
        ].
        recoveredStep = 516 ifTrue: [
            recoveredStack1 := 'notStoredVariablesList'.
            recoveredPC := 518.
        ].
        recoveredStep = 518 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 520.
        ].
        recoveredStep = 520 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 521.
        ].
        recoveredStep = 521 ifTrue: [
            recoveredStack2 := smallFont.
            recoveredPC := 523.
        ].
        recoveredStep = 523 ifTrue: [
            (recoveredStack1) fontList: (recoveredStack2).
            recoveredPC := 525.
        ].
        recoveredStep = 525 ifTrue: [
            recoveredStack1 := smallFont.
            recoveredPC := 527.
        ].
        recoveredStep = 527 ifTrue: [
            recoveredStack1 := (recoveredStack1) fontStruct.
            recoveredPC := 529.
        ].
        recoveredStep = 529 ifTrue: [
            recoveredStack1 := (recoveredStack1) height.
            recoveredPC := 531.
        ].
        recoveredStep = 531 ifTrue: [
            recoveredStack2 := 6.
            recoveredPC := 533.
        ].
        recoveredStep = 533 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 534.
        ].
        recoveredStep = 534 ifTrue: [
            (recoveredStack0) height: (recoveredStack1).
            recoveredPC := 536.
        ].
        recoveredStep = 536 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 537.
        ].
        recoveredStep = 537 ifTrue: [
            recoveredStack1 := 'fileNameLabel'.
            recoveredPC := 539.
        ].
        recoveredStep = 539 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 541.
        ].
        recoveredStep = 541 ifTrue: [
            recoveredStack1 := smallFont.
            recoveredPC := 543.
        ].
        recoveredStep = 543 ifTrue: [
            (recoveredStack0) fontList: (recoveredStack1).
            recoveredPC := 545.
        ].
        recoveredStep = 545 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 546.
        ].
        recoveredStep = 546 ifTrue: [
            recoveredStack1 := 'fileNameText'.
            recoveredPC := 548.
        ].
        recoveredStep = 548 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 550.
        ].
        recoveredStep = 550 ifTrue: [
            recoveredStack1 := smallFont.
            recoveredPC := 552.
        ].
        recoveredStep = 552 ifTrue: [
            (recoveredStack0) fontList: (recoveredStack1).
            recoveredPC := 554.
        ].
        recoveredStep = 554 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 555.
        ].
        recoveredStep = 555 ifTrue: [
            recoveredStack1 := 'browseFilesButton'.
            recoveredPC := 557.
        ].
        recoveredStep = 557 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 559.
        ].
        recoveredStep = 559 ifTrue: [
            recoveredStack1 := smallFont.
            recoveredPC := 561.
        ].
        recoveredStep = 561 ifTrue: [
            (recoveredStack0) fontList: (recoveredStack1).
            recoveredPC := 563.
        ].
        recoveredStep = 563 ifTrue: [
            recoveredStack0 := storedVars.
            recoveredPC := 565.
        ].
        recoveredStep = 565 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 569.
        ].
        recoveredStep = 569 ifTrue: [
            recoveredStack1 := notStoredVars.
            recoveredPC := 571.
        ].
        recoveredStep = 571 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 575.
        ].
        recoveredStep = 575 ifTrue: [
            recoveredStack0 := (recoveredStack0) & (recoveredStack1).
            recoveredPC := 579.
        ].
        recoveredStep = 579 ifTrue: [
            recoveredStack1 := showStoredVars.
            recoveredPC := 581.
        ].
        recoveredStep = 581 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 582.
        ].
        recoveredStep = 582 ifTrue: [
            recoveredStack0 := (recoveredStack0) & (recoveredStack1).
            recoveredPC := 587.
        ].
        recoveredStep = 587 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 590] ifFalse: [recoveredPC := 644].
        ].
        recoveredStep = 590 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 591.
        ].
        recoveredStep = 591 ifTrue: [
            recoveredStack1 := 'storedVariablesLabel'.
            recoveredPC := 593.
        ].
        recoveredStep = 593 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 595.
        ].
        recoveredStep = 595 ifTrue: [
            (recoveredStack0) unmanageChild.
            recoveredPC := 597.
        ].
        recoveredStep = 597 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 598.
        ].
        recoveredStep = 598 ifTrue: [
            recoveredStack1 := 'notStoredVariablesLabel'.
            recoveredPC := 600.
        ].
        recoveredStep = 600 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 602.
        ].
        recoveredStep = 602 ifTrue: [
            (recoveredStack0) unmanageChild.
            recoveredPC := 604.
        ].
        recoveredStep = 604 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 605.
        ].
        recoveredStep = 605 ifTrue: [
            recoveredStack1 := 'storedVariablesList'.
            recoveredPC := 607.
        ].
        recoveredStep = 607 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 609.
        ].
        recoveredStep = 609 ifTrue: [
            (recoveredStack0) unmanageChild.
            recoveredPC := 611.
        ].
        recoveredStep = 611 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 612.
        ].
        recoveredStep = 612 ifTrue: [
            recoveredStack1 := 'notStoredVariablesList'.
            recoveredPC := 614.
        ].
        recoveredStep = 614 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 616.
        ].
        recoveredStep = 616 ifTrue: [
            (recoveredStack0) unmanageChild.
            recoveredPC := 618.
        ].
        recoveredStep = 618 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 619.
        ].
        recoveredStep = 619 ifTrue: [
            recoveredStack1 := 'aSeparator2'.
            recoveredPC := 622.
        ].
        recoveredStep = 622 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 624.
        ].
        recoveredStep = 624 ifTrue: [
            (recoveredStack0) unmanageChild.
            recoveredPC := 626.
        ].
        recoveredStep = 626 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 627.
        ].
        recoveredStep = 627 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 628.
        ].
        recoveredStep = 628 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 629.
        ].
        recoveredStep = 629 ifTrue: [
            recoveredStack2 := 'aSeparator2'.
            recoveredPC := 632.
        ].
        recoveredStep = 632 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetAt: (recoveredStack2).
            recoveredPC := 634.
        ].
        recoveredStep = 634 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 636.
        ].
        recoveredStep = 636 ifTrue: [
            recoveredStack2 := 5.
            recoveredPC := 638.
        ].
        recoveredStep = 638 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 639.
        ].
        recoveredStep = 639 ifTrue: [
            (recoveredStack0) height: (recoveredStack1).
            recoveredPC := 641.
        ].
        recoveredStep = 641 ifTrue: [
            recoveredPC := 689.
        ].
        recoveredStep = 644 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 645.
        ].
        recoveredStep = 645 ifTrue: [
            recoveredStack1 := 'storedVariablesList'.
            recoveredPC := 647.
        ].
        recoveredStep = 647 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 649.
        ].
        recoveredStep = 649 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 650.
        ].
        recoveredStep = 650 ifTrue: [
            recoveredStack2 := storedVars.
            recoveredPC := 652.
        ].
        recoveredStep = 652 ifTrue: [
            (recoveredStack1) items: (recoveredStack2).
            recoveredPC := 657.
        ].
        recoveredStep = 657 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 658.
        ].
        recoveredStep = 658 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultBackgroundGray.
            recoveredPC := 663.
        ].
        recoveredStep = 663 ifTrue: [
            (recoveredStack0) backgroundColor: (recoveredStack1).
            recoveredPC := 667.
        ].
        recoveredStep = 667 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 668.
        ].
        recoveredStep = 668 ifTrue: [
            recoveredStack1 := 'notStoredVariablesList'.
            recoveredPC := 670.
        ].
        recoveredStep = 670 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 672.
        ].
        recoveredStep = 672 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 673.
        ].
        recoveredStep = 673 ifTrue: [
            recoveredStack2 := notStoredVars.
            recoveredPC := 675.
        ].
        recoveredStep = 675 ifTrue: [
            (recoveredStack1) items: (recoveredStack2).
            recoveredPC := 679.
        ].
        recoveredStep = 679 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 680.
        ].
        recoveredStep = 680 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultBackgroundGray.
            recoveredPC := 685.
        ].
        recoveredStep = 685 ifTrue: [
            (recoveredStack0) backgroundColor: (recoveredStack1).
            recoveredPC := 689.
        ].
        recoveredStep = 689 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 690.
        ].
        recoveredStep = 690 ifTrue: [
            checkFileName := recoveredStack0.
            recoveredPC := 692.
        ].
        recoveredStep = 692 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 693.
        ].
        recoveredStep = 693 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x206b4ff4; bytecode file offset 0xfb1b1c"
!RBMDFHeaderEditor methodsFor: 'recovered'!
createWidgetHierarchy: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredLocal14 recoveredLocal15 recoveredLocal16 recoveredLocal17 recoveredLocal18 recoveredLocal19 recoveredLocal20 recoveredLocal21 recoveredLocal22 recoveredLocal23 recoveredLocal24 recoveredLocal25 recoveredLocal26 recoveredLocal27 recoveredLocal28 recoveredLocal29 recoveredLocal30 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal30 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 'mainWindow'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := [:block28131b6cArg1 | 
    | block28131b6cValue0 block28131b6cValue1 block28131b6cValue2 block28131b6cValue3 block28131b6cValue4 block28131b6cValue5 block28131b6cValue6 |
    block28131b6cValue0 := block28131b6cArg1.
    block28131b6cValue1 := block28131b6cValue0.
    (block28131b6cValue1) borderWidth: (1).
    block28131b6cValue2 := block28131b6cValue0.
    block28131b6cValue3 := MWMINPUTPRIMARYAPPLICATIONMODAL.
    (block28131b6cValue2) mwmInputMode: (block28131b6cValue3).
    block28131b6cValue4 := block28131b6cValue0.
    (block28131b6cValue4) title: ('MDF-Header-Information').
    block28131b6cValue5 := block28131b6cValue0.
    (block28131b6cValue5) height: (404).
    block28131b6cValue6 := (block28131b6cValue0) width: (503).
    block28131b6cValue6
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDialogShell: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredLocal29 := recoveredStack1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredLocal30.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := 'mainWindow'.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := recoveredLocal29.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredLocal29.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack3 := [:block28131b90Arg1 | 
    | block28131b90Value0 block28131b90Value1 |
    block28131b90Value0 := block28131b90Arg1.
    block28131b90Value1 := (block28131b90Value0) borderWidth: (1).
    block28131b90Value1
].
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := (recoveredStack1) createMainWindow: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredLocal28 := recoveredStack1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := recoveredLocal30.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack3 := recoveredLocal28.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := recoveredLocal28.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredLocal27 := recoveredStack1.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := recoveredLocal30.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack3 := recoveredLocal27.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack2 := 'subjectField'.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack3 := [:block28131bb4Arg1 | 
    | block28131bb4Value0 block28131bb4Value1 block28131bb4Value2 block28131bb4Value3 block28131bb4Value4 |
    block28131bb4Value0 := block28131bb4Arg1.
    block28131bb4Value1 := block28131bb4Value0.
    (block28131bb4Value1) y: (100).
    block28131bb4Value2 := block28131bb4Value0.
    (block28131bb4Value2) x: (95).
    block28131bb4Value3 := block28131bb4Value0.
    (block28131bb4Value3) height: (28).
    block28131bb4Value4 := (block28131bb4Value0) width: (266).
    block28131bb4Value4
].
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEnhancedText: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredLocal26 := recoveredStack1.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := recoveredLocal30.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack2 := 'subjectField'.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack3 := recoveredLocal26.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack2 := 'divisionField'.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack3 := [:block28131bd8Arg1 | 
    | block28131bd8Value0 block28131bd8Value1 block28131bd8Value2 block28131bd8Value3 block28131bd8Value4 |
    block28131bd8Value0 := block28131bd8Arg1.
    block28131bd8Value1 := block28131bd8Value0.
    (block28131bd8Value1) y: (40).
    block28131bd8Value2 := block28131bd8Value0.
    (block28131bd8Value2) x: (95).
    block28131bd8Value3 := block28131bd8Value0.
    (block28131bd8Value3) height: (28).
    block28131bd8Value4 := (block28131bd8Value0) width: (266).
    block28131bd8Value4
].
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEnhancedText: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredLocal25 := recoveredStack1.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack1 := recoveredLocal30.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack2 := 'divisionField'.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack3 := recoveredLocal25.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack2 := 'nameField'.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack3 := [:block28131bfcArg1 | 
    | block28131bfcValue0 block28131bfcValue1 block28131bfcValue2 block28131bfcValue3 block28131bfcValue4 |
    block28131bfcValue0 := block28131bfcArg1.
    block28131bfcValue1 := block28131bfcValue0.
    (block28131bfcValue1) y: (10).
    block28131bfcValue2 := block28131bfcValue0.
    (block28131bfcValue2) x: (95).
    block28131bfcValue3 := block28131bfcValue0.
    (block28131bfcValue3) height: (28).
    block28131bfcValue4 := (block28131bfcValue0) width: (266).
    block28131bfcValue4
].
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEnhancedText: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredLocal24 := recoveredStack1.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack1 := recoveredLocal30.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack2 := 'nameField'.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack3 := recoveredLocal24.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack2 := 'projectField'.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack3 := [:block28131c20Arg1 | 
    | block28131c20Value0 block28131c20Value1 block28131c20Value2 block28131c20Value3 block28131c20Value4 |
    block28131c20Value0 := block28131c20Arg1.
    block28131c20Value1 := block28131c20Value0.
    (block28131c20Value1) y: (70).
    block28131c20Value2 := block28131c20Value0.
    (block28131c20Value2) x: (95).
    block28131c20Value3 := block28131c20Value0.
    (block28131c20Value3) height: (28).
    block28131c20Value4 := (block28131c20Value0) width: (266).
    block28131c20Value4
].
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEnhancedText: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredLocal23 := recoveredStack1.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack1 := recoveredLocal30.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack2 := 'projectField'.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack3 := recoveredLocal23.
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack2 := 'aSeparator1'.
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            recoveredStack3 := [:block28131c44Arg1 | 
    | block28131c44Value0 block28131c44Value1 block28131c44Value2 block28131c44Value3 block28131c44Value4 block28131c44Value5 |
    block28131c44Value0 := block28131c44Arg1.
    block28131c44Value1 := block28131c44Value0.
    (block28131c44Value1) x: (370).
    block28131c44Value2 := block28131c44Value0.
    block28131c44Value3 := XmVERTICAL.
    (block28131c44Value2) orientation: (block28131c44Value3).
    block28131c44Value4 := block28131c44Value0.
    (block28131c44Value4) height: (250).
    block28131c44Value5 := (block28131c44Value0) width: (3).
    block28131c44Value5
].
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            recoveredStack1 := (recoveredStack1) createSeparator: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            recoveredLocal22 := recoveredStack1.
            recoveredPC := 364.
        ].
        recoveredStep = 364 ifTrue: [
            recoveredStack1 := recoveredLocal30.
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            recoveredStack2 := 'aSeparator1'.
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            recoveredStack3 := recoveredLocal22.
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 374.
        ].
        recoveredStep = 374 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 377.
        ].
        recoveredStep = 377 ifTrue: [
            recoveredStack2 := 'okButton'.
            recoveredPC := 379.
        ].
        recoveredStep = 379 ifTrue: [
            recoveredStack3 := [:block28131c68Arg1 | 
    | block28131c68Value0 block28131c68Value1 block28131c68Value2 block28131c68Value3 block28131c68Value4 block28131c68Value5 block28131c68Value6 |
    block28131c68Value0 := block28131c68Arg1.
    block28131c68Value1 := block28131c68Value0.
    (block28131c68Value1) x: (385).
    block28131c68Value2 := block28131c68Value0.
    (block28131c68Value2) showAsDefault: (1).
    block28131c68Value3 := block28131c68Value0.
    (block28131c68Value3) labelString: ('Ok').
    block28131c68Value4 := block28131c68Value0.
    (block28131c68Value4) y: (10).
    block28131c68Value5 := block28131c68Value0.
    (block28131c68Value5) height: (30).
    block28131c68Value6 := (block28131c68Value0) width: (110).
    block28131c68Value6
].
            recoveredPC := 381.
        ].
        recoveredStep = 381 ifTrue: [
            recoveredPC := 419.
        ].
        recoveredStep = 419 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 421.
        ].
        recoveredStep = 421 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 423.
        ].
        recoveredStep = 423 ifTrue: [
            recoveredLocal21 := recoveredStack1.
            recoveredPC := 426.
        ].
        recoveredStep = 426 ifTrue: [
            recoveredStack1 := recoveredLocal30.
            recoveredPC := 429.
        ].
        recoveredStep = 429 ifTrue: [
            recoveredStack2 := 'okButton'.
            recoveredPC := 431.
        ].
        recoveredStep = 431 ifTrue: [
            recoveredStack3 := recoveredLocal21.
            recoveredPC := 434.
        ].
        recoveredStep = 434 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 436.
        ].
        recoveredStep = 436 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 439.
        ].
        recoveredStep = 439 ifTrue: [
            recoveredStack2 := 'cancelButton'.
            recoveredPC := 441.
        ].
        recoveredStep = 441 ifTrue: [
            recoveredStack3 := [:block28131c8cArg1 | 
    | block28131c8cValue0 block28131c8cValue1 block28131c8cValue2 block28131c8cValue3 block28131c8cValue4 block28131c8cValue5 |
    block28131c8cValue0 := block28131c8cArg1.
    block28131c8cValue1 := block28131c8cValue0.
    (block28131c8cValue1) x: (381).
    block28131c8cValue2 := block28131c8cValue0.
    (block28131c8cValue2) labelString: ('Cancel').
    block28131c8cValue3 := block28131c8cValue0.
    (block28131c8cValue3) y: (45).
    block28131c8cValue4 := block28131c8cValue0.
    (block28131c8cValue4) height: (30).
    block28131c8cValue5 := (block28131c8cValue0) width: (110).
    block28131c8cValue5
].
            recoveredPC := 443.
        ].
        recoveredStep = 443 ifTrue: [
            recoveredPC := 475.
        ].
        recoveredStep = 475 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 477.
        ].
        recoveredStep = 477 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 479.
        ].
        recoveredStep = 479 ifTrue: [
            recoveredLocal20 := recoveredStack1.
            recoveredPC := 482.
        ].
        recoveredStep = 482 ifTrue: [
            recoveredStack1 := recoveredLocal30.
            recoveredPC := 485.
        ].
        recoveredStep = 485 ifTrue: [
            recoveredStack2 := 'cancelButton'.
            recoveredPC := 487.
        ].
        recoveredStep = 487 ifTrue: [
            recoveredStack3 := recoveredLocal20.
            recoveredPC := 490.
        ].
        recoveredStep = 490 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 492.
        ].
        recoveredStep = 492 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 495.
        ].
        recoveredStep = 495 ifTrue: [
            recoveredStack2 := 'helpButton'.
            recoveredPC := 497.
        ].
        recoveredStep = 497 ifTrue: [
            recoveredStack3 := [:block28131cb0Arg1 | 
    | block28131cb0Value0 block28131cb0Value1 block28131cb0Value2 block28131cb0Value3 block28131cb0Value4 block28131cb0Value5 |
    block28131cb0Value0 := block28131cb0Arg1.
    block28131cb0Value1 := block28131cb0Value0.
    (block28131cb0Value1) x: (381).
    block28131cb0Value2 := block28131cb0Value0.
    (block28131cb0Value2) labelString: ('Help').
    block28131cb0Value3 := block28131cb0Value0.
    (block28131cb0Value3) y: (80).
    block28131cb0Value4 := block28131cb0Value0.
    (block28131cb0Value4) height: (30).
    block28131cb0Value5 := (block28131cb0Value0) width: (110).
    block28131cb0Value5
].
            recoveredPC := 499.
        ].
        recoveredStep = 499 ifTrue: [
            recoveredPC := 533.
        ].
        recoveredStep = 533 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 535.
        ].
        recoveredStep = 535 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 537.
        ].
        recoveredStep = 537 ifTrue: [
            recoveredLocal19 := recoveredStack1.
            recoveredPC := 540.
        ].
        recoveredStep = 540 ifTrue: [
            recoveredStack1 := recoveredLocal30.
            recoveredPC := 543.
        ].
        recoveredStep = 543 ifTrue: [
            recoveredStack2 := 'helpButton'.
            recoveredPC := 546.
        ].
        recoveredStep = 546 ifTrue: [
            recoveredStack3 := recoveredLocal19.
            recoveredPC := 549.
        ].
        recoveredStep = 549 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 551.
        ].
        recoveredStep = 551 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 554.
        ].
        recoveredStep = 554 ifTrue: [
            recoveredStack2 := 'subjectText'.
            recoveredPC := 558.
        ].
        recoveredStep = 558 ifTrue: [
            recoveredStack3 := [:recoveredBlock558Arg1 | 
    | recoveredBlock558Value0 recoveredBlock558Value1 recoveredBlock558Value2 recoveredBlock558Value3 recoveredBlock558Value4 recoveredBlock558Value5 recoveredBlock558Value6 recoveredBlock558Value7 recoveredBlock558Value8 recoveredBlock558Value9 |
    recoveredBlock558Value0 := recoveredBlock558Arg1.
    recoveredBlock558Value1 := recoveredBlock558Value0.
    (recoveredBlock558Value1) x: (10).
    recoveredBlock558Value2 := recoveredBlock558Value0.
    recoveredBlock558Value3 := XmALIGNMENTBEGINNING.
    (recoveredBlock558Value2) alignment: (recoveredBlock558Value3).
    recoveredBlock558Value4 := recoveredBlock558Value0.
    (recoveredBlock558Value4) labelString: ('Subject').
    recoveredBlock558Value5 := recoveredBlock558Value0.
    (recoveredBlock558Value5) y: (105).
    recoveredBlock558Value6 := recoveredBlock558Value0.
    (recoveredBlock558Value6) height: (15).
    recoveredBlock558Value7 := recoveredBlock558Value0.
    (recoveredBlock558Value7) width: (80).
    recoveredBlock558Value8 := (self) defaultLabelBlue.
    recoveredBlock558Value9 := (recoveredBlock558Value0) foregroundColor: (recoveredBlock558Value8).
    recoveredBlock558Value9
].
            recoveredPC := 612.
        ].
        recoveredStep = 612 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 617.
        ].
        recoveredStep = 617 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 619.
        ].
        recoveredStep = 619 ifTrue: [
            recoveredLocal18 := recoveredStack1.
            recoveredPC := 622.
        ].
        recoveredStep = 622 ifTrue: [
            recoveredStack1 := recoveredLocal30.
            recoveredPC := 625.
        ].
        recoveredStep = 625 ifTrue: [
            recoveredStack2 := 'subjectText'.
            recoveredPC := 628.
        ].
        recoveredStep = 628 ifTrue: [
            recoveredStack3 := recoveredLocal18.
            recoveredPC := 631.
        ].
        recoveredStep = 631 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 633.
        ].
        recoveredStep = 633 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 636.
        ].
        recoveredStep = 636 ifTrue: [
            recoveredStack2 := 'nameText'.
            recoveredPC := 640.
        ].
        recoveredStep = 640 ifTrue: [
            recoveredStack3 := [:recoveredBlock640Arg1 | 
    | recoveredBlock640Value0 recoveredBlock640Value1 recoveredBlock640Value2 recoveredBlock640Value3 recoveredBlock640Value4 recoveredBlock640Value5 recoveredBlock640Value6 recoveredBlock640Value7 recoveredBlock640Value8 recoveredBlock640Value9 |
    recoveredBlock640Value0 := recoveredBlock640Arg1.
    recoveredBlock640Value1 := recoveredBlock640Value0.
    (recoveredBlock640Value1) x: (10).
    recoveredBlock640Value2 := recoveredBlock640Value0.
    recoveredBlock640Value3 := XmALIGNMENTBEGINNING.
    (recoveredBlock640Value2) alignment: (recoveredBlock640Value3).
    recoveredBlock640Value4 := recoveredBlock640Value0.
    (recoveredBlock640Value4) labelString: ('Name').
    recoveredBlock640Value5 := recoveredBlock640Value0.
    (recoveredBlock640Value5) y: (15).
    recoveredBlock640Value6 := recoveredBlock640Value0.
    (recoveredBlock640Value6) height: (15).
    recoveredBlock640Value7 := recoveredBlock640Value0.
    (recoveredBlock640Value7) width: (80).
    recoveredBlock640Value8 := (self) defaultLabelBlue.
    recoveredBlock640Value9 := (recoveredBlock640Value0) foregroundColor: (recoveredBlock640Value8).
    recoveredBlock640Value9
].
            recoveredPC := 692.
        ].
        recoveredStep = 692 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 697.
        ].
        recoveredStep = 697 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 699.
        ].
        recoveredStep = 699 ifTrue: [
            recoveredLocal17 := recoveredStack1.
            recoveredPC := 702.
        ].
        recoveredStep = 702 ifTrue: [
            recoveredStack1 := recoveredLocal30.
            recoveredPC := 705.
        ].
        recoveredStep = 705 ifTrue: [
            recoveredStack2 := 'nameText'.
            recoveredPC := 708.
        ].
        recoveredStep = 708 ifTrue: [
            recoveredStack3 := recoveredLocal17.
            recoveredPC := 711.
        ].
        recoveredStep = 711 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 713.
        ].
        recoveredStep = 713 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 716.
        ].
        recoveredStep = 716 ifTrue: [
            recoveredStack2 := 'commentText'.
            recoveredPC := 720.
        ].
        recoveredStep = 720 ifTrue: [
            recoveredStack3 := [:recoveredBlock720Arg1 | 
    | recoveredBlock720Value0 recoveredBlock720Value1 recoveredBlock720Value2 recoveredBlock720Value3 recoveredBlock720Value4 recoveredBlock720Value5 recoveredBlock720Value6 recoveredBlock720Value7 recoveredBlock720Value8 recoveredBlock720Value9 |
    recoveredBlock720Value0 := recoveredBlock720Arg1.
    recoveredBlock720Value1 := recoveredBlock720Value0.
    (recoveredBlock720Value1) x: (10).
    recoveredBlock720Value2 := recoveredBlock720Value0.
    recoveredBlock720Value3 := XmALIGNMENTBEGINNING.
    (recoveredBlock720Value2) alignment: (recoveredBlock720Value3).
    recoveredBlock720Value4 := recoveredBlock720Value0.
    (recoveredBlock720Value4) labelString: ('Comment').
    recoveredBlock720Value5 := recoveredBlock720Value0.
    (recoveredBlock720Value5) y: (155).
    recoveredBlock720Value6 := recoveredBlock720Value0.
    (recoveredBlock720Value6) height: (15).
    recoveredBlock720Value7 := recoveredBlock720Value0.
    (recoveredBlock720Value7) width: (175).
    recoveredBlock720Value8 := (self) defaultLabelBlue.
    recoveredBlock720Value9 := (recoveredBlock720Value0) foregroundColor: (recoveredBlock720Value8).
    recoveredBlock720Value9
].
            recoveredPC := 774.
        ].
        recoveredStep = 774 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 779.
        ].
        recoveredStep = 779 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 781.
        ].
        recoveredStep = 781 ifTrue: [
            recoveredLocal16 := recoveredStack1.
            recoveredPC := 784.
        ].
        recoveredStep = 784 ifTrue: [
            recoveredStack1 := recoveredLocal30.
            recoveredPC := 787.
        ].
        recoveredStep = 787 ifTrue: [
            recoveredStack2 := 'commentText'.
            recoveredPC := 790.
        ].
        recoveredStep = 790 ifTrue: [
            recoveredStack3 := recoveredLocal16.
            recoveredPC := 793.
        ].
        recoveredStep = 793 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 795.
        ].
        recoveredStep = 795 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 798.
        ].
        recoveredStep = 798 ifTrue: [
            recoveredStack2 := 'divisionText'.
            recoveredPC := 802.
        ].
        recoveredStep = 802 ifTrue: [
            recoveredStack3 := [:recoveredBlock802Arg1 | 
    | recoveredBlock802Value0 recoveredBlock802Value1 recoveredBlock802Value2 recoveredBlock802Value3 recoveredBlock802Value4 recoveredBlock802Value5 recoveredBlock802Value6 recoveredBlock802Value7 recoveredBlock802Value8 recoveredBlock802Value9 |
    recoveredBlock802Value0 := recoveredBlock802Arg1.
    recoveredBlock802Value1 := recoveredBlock802Value0.
    (recoveredBlock802Value1) x: (10).
    recoveredBlock802Value2 := recoveredBlock802Value0.
    recoveredBlock802Value3 := XmALIGNMENTBEGINNING.
    (recoveredBlock802Value2) alignment: (recoveredBlock802Value3).
    recoveredBlock802Value4 := recoveredBlock802Value0.
    (recoveredBlock802Value4) labelString: ('Division').
    recoveredBlock802Value5 := recoveredBlock802Value0.
    (recoveredBlock802Value5) y: (45).
    recoveredBlock802Value6 := recoveredBlock802Value0.
    (recoveredBlock802Value6) height: (15).
    recoveredBlock802Value7 := recoveredBlock802Value0.
    (recoveredBlock802Value7) width: (80).
    recoveredBlock802Value8 := (self) defaultLabelBlue.
    recoveredBlock802Value9 := (recoveredBlock802Value0) foregroundColor: (recoveredBlock802Value8).
    recoveredBlock802Value9
].
            recoveredPC := 854.
        ].
        recoveredStep = 854 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 859.
        ].
        recoveredStep = 859 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 861.
        ].
        recoveredStep = 861 ifTrue: [
            recoveredLocal15 := recoveredStack1.
            recoveredPC := 864.
        ].
        recoveredStep = 864 ifTrue: [
            recoveredStack1 := recoveredLocal30.
            recoveredPC := 867.
        ].
        recoveredStep = 867 ifTrue: [
            recoveredStack2 := 'divisionText'.
            recoveredPC := 870.
        ].
        recoveredStep = 870 ifTrue: [
            recoveredStack3 := recoveredLocal15.
            recoveredPC := 873.
        ].
        recoveredStep = 873 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 875.
        ].
        recoveredStep = 875 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 878.
        ].
        recoveredStep = 878 ifTrue: [
            recoveredStack2 := 'takeOverButton'.
            recoveredPC := 882.
        ].
        recoveredStep = 882 ifTrue: [
            recoveredStack3 := [:block28131cd4Arg1 | 
    | block28131cd4Value0 block28131cd4Value1 block28131cd4Value2 block28131cd4Value3 block28131cd4Value4 block28131cd4Value5 block28131cd4Value6 |
    block28131cd4Value0 := block28131cd4Arg1.
    block28131cd4Value1 := block28131cd4Value0.
    (block28131cd4Value1) x: (191).
    block28131cd4Value2 := block28131cd4Value0.
    block28131cd4Value3 := (String new: 21) at: 1 put: (Character value: 38); at: 2 put: (Character value: 83); at: 3 put: (Character value: 105); at: 4 put: (Character value: 116); at: 5 put: (Character value: 117); at: 6 put: (Character value: 97); at: 7 put: (Character value: 116); at: 8 put: (Character value: 105); at: 9 put: (Character value: 111); at: 10 put: (Character value: 110); at: 11 put: (Character value: 32); at: 12 put: (Character value: 252); at: 13 put: (Character value: 98); at: 14 put: (Character value: 101); at: 15 put: (Character value: 114); at: 16 put: (Character value: 110); at: 17 put: (Character value: 101); at: 18 put: (Character value: 104); at: 19 put: (Character value: 109); at: 20 put: (Character value: 101); at: 21 put: (Character value: 110); yourself.
    (block28131cd4Value2) labelString: (block28131cd4Value3).
    block28131cd4Value4 := block28131cd4Value0.
    (block28131cd4Value4) y: (140).
    block28131cd4Value5 := block28131cd4Value0.
    (block28131cd4Value5) height: (30).
    block28131cd4Value6 := (block28131cd4Value0) width: (170).
    block28131cd4Value6
].
            recoveredPC := 886.
        ].
        recoveredStep = 886 ifTrue: [
            recoveredPC := 921.
        ].
        recoveredStep = 921 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 923.
        ].
        recoveredStep = 923 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 925.
        ].
        recoveredStep = 925 ifTrue: [
            recoveredLocal14 := recoveredStack1.
            recoveredPC := 928.
        ].
        recoveredStep = 928 ifTrue: [
            recoveredStack1 := recoveredLocal30.
            recoveredPC := 931.
        ].
        recoveredStep = 931 ifTrue: [
            recoveredStack2 := 'takeOverButton'.
            recoveredPC := 934.
        ].
        recoveredStep = 934 ifTrue: [
            recoveredStack3 := recoveredLocal14.
            recoveredPC := 937.
        ].
        recoveredStep = 937 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 939.
        ].
        recoveredStep = 939 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 942.
        ].
        recoveredStep = 942 ifTrue: [
            recoveredStack2 := 'projectText'.
            recoveredPC := 946.
        ].
        recoveredStep = 946 ifTrue: [
            recoveredStack3 := [:recoveredBlock946Arg1 | 
    | recoveredBlock946Value0 recoveredBlock946Value1 recoveredBlock946Value2 recoveredBlock946Value3 recoveredBlock946Value4 recoveredBlock946Value5 recoveredBlock946Value6 recoveredBlock946Value7 recoveredBlock946Value8 recoveredBlock946Value9 |
    recoveredBlock946Value0 := recoveredBlock946Arg1.
    recoveredBlock946Value1 := recoveredBlock946Value0.
    (recoveredBlock946Value1) x: (10).
    recoveredBlock946Value2 := recoveredBlock946Value0.
    recoveredBlock946Value3 := XmALIGNMENTBEGINNING.
    (recoveredBlock946Value2) alignment: (recoveredBlock946Value3).
    recoveredBlock946Value4 := recoveredBlock946Value0.
    (recoveredBlock946Value4) labelString: ('Project').
    recoveredBlock946Value5 := recoveredBlock946Value0.
    (recoveredBlock946Value5) y: (75).
    recoveredBlock946Value6 := recoveredBlock946Value0.
    (recoveredBlock946Value6) height: (15).
    recoveredBlock946Value7 := recoveredBlock946Value0.
    (recoveredBlock946Value7) width: (80).
    recoveredBlock946Value8 := (self) defaultLabelBlue.
    recoveredBlock946Value9 := (recoveredBlock946Value0) foregroundColor: (recoveredBlock946Value8).
    recoveredBlock946Value9
].
            recoveredPC := 1000.
        ].
        recoveredStep = 1000 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1005.
        ].
        recoveredStep = 1005 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1007.
        ].
        recoveredStep = 1007 ifTrue: [
            recoveredLocal13 := recoveredStack1.
            recoveredPC := 1010.
        ].
        recoveredStep = 1010 ifTrue: [
            recoveredStack1 := recoveredLocal30.
            recoveredPC := 1013.
        ].
        recoveredStep = 1013 ifTrue: [
            recoveredStack2 := 'projectText'.
            recoveredPC := 1016.
        ].
        recoveredStep = 1016 ifTrue: [
            recoveredStack3 := recoveredLocal13.
            recoveredPC := 1019.
        ].
        recoveredStep = 1019 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1021.
        ].
        recoveredStep = 1021 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 1024.
        ].
        recoveredStep = 1024 ifTrue: [
            recoveredStack2 := 'aSeparator2'.
            recoveredPC := 1028.
        ].
        recoveredStep = 1028 ifTrue: [
            recoveredStack3 := [:block28131cf8Arg1 | 
    | block28131cf8Value0 block28131cf8Value1 block28131cf8Value2 block28131cf8Value3 |
    block28131cf8Value0 := block28131cf8Arg1.
    block28131cf8Value1 := block28131cf8Value0.
    (block28131cf8Value1) y: (250).
    block28131cf8Value2 := block28131cf8Value0.
    (block28131cf8Value2) height: (10).
    block28131cf8Value3 := (block28131cf8Value0) width: (370).
    block28131cf8Value3
].
            recoveredPC := 1032.
        ].
        recoveredStep = 1032 ifTrue: [
            recoveredPC := 1055.
        ].
        recoveredStep = 1055 ifTrue: [
            recoveredStack1 := (recoveredStack1) createSeparator: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1057.
        ].
        recoveredStep = 1057 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1059.
        ].
        recoveredStep = 1059 ifTrue: [
            recoveredLocal12 := recoveredStack1.
            recoveredPC := 1062.
        ].
        recoveredStep = 1062 ifTrue: [
            recoveredStack1 := recoveredLocal30.
            recoveredPC := 1065.
        ].
        recoveredStep = 1065 ifTrue: [
            recoveredStack2 := 'aSeparator2'.
            recoveredPC := 1068.
        ].
        recoveredStep = 1068 ifTrue: [
            recoveredStack3 := recoveredLocal12.
            recoveredPC := 1071.
        ].
        recoveredStep = 1071 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1073.
        ].
        recoveredStep = 1073 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 1076.
        ].
        recoveredStep = 1076 ifTrue: [
            recoveredStack2 := 'storedVariablesLabel'.
            recoveredPC := 1080.
        ].
        recoveredStep = 1080 ifTrue: [
            recoveredStack3 := [:recoveredBlock1080Arg1 | 
    | recoveredBlock1080Value0 recoveredBlock1080Value1 recoveredBlock1080Value2 recoveredBlock1080Value3 recoveredBlock1080Value4 recoveredBlock1080Value5 recoveredBlock1080Value6 recoveredBlock1080Value7 recoveredBlock1080Value8 recoveredBlock1080Value9 |
    recoveredBlock1080Value0 := recoveredBlock1080Arg1.
    recoveredBlock1080Value1 := recoveredBlock1080Value0.
    (recoveredBlock1080Value1) x: (10).
    recoveredBlock1080Value2 := recoveredBlock1080Value0.
    recoveredBlock1080Value3 := XmALIGNMENTBEGINNING.
    (recoveredBlock1080Value2) alignment: (recoveredBlock1080Value3).
    recoveredBlock1080Value4 := recoveredBlock1080Value0.
    (recoveredBlock1080Value4) labelString: ('Stored variables').
    recoveredBlock1080Value5 := recoveredBlock1080Value0.
    (recoveredBlock1080Value5) y: (260).
    recoveredBlock1080Value6 := recoveredBlock1080Value0.
    (recoveredBlock1080Value6) height: (15).
    recoveredBlock1080Value7 := recoveredBlock1080Value0.
    (recoveredBlock1080Value7) width: (170).
    recoveredBlock1080Value8 := (self) defaultLabelBlue.
    recoveredBlock1080Value9 := (recoveredBlock1080Value0) foregroundColor: (recoveredBlock1080Value8).
    recoveredBlock1080Value9
].
            recoveredPC := 1134.
        ].
        recoveredStep = 1134 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1139.
        ].
        recoveredStep = 1139 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1141.
        ].
        recoveredStep = 1141 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 1144.
        ].
        recoveredStep = 1144 ifTrue: [
            recoveredStack1 := recoveredLocal30.
            recoveredPC := 1147.
        ].
        recoveredStep = 1147 ifTrue: [
            recoveredStack2 := 'storedVariablesLabel'.
            recoveredPC := 1150.
        ].
        recoveredStep = 1150 ifTrue: [
            recoveredStack3 := recoveredLocal11.
            recoveredPC := 1153.
        ].
        recoveredStep = 1153 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1155.
        ].
        recoveredStep = 1155 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 1158.
        ].
        recoveredStep = 1158 ifTrue: [
            recoveredStack2 := 'notStoredVariablesLabel'.
            recoveredPC := 1162.
        ].
        recoveredStep = 1162 ifTrue: [
            recoveredStack3 := [:recoveredBlock1162Arg1 | 
    | recoveredBlock1162Value0 recoveredBlock1162Value1 recoveredBlock1162Value2 recoveredBlock1162Value3 recoveredBlock1162Value4 recoveredBlock1162Value5 recoveredBlock1162Value6 recoveredBlock1162Value7 recoveredBlock1162Value8 recoveredBlock1162Value9 |
    recoveredBlock1162Value0 := recoveredBlock1162Arg1.
    recoveredBlock1162Value1 := recoveredBlock1162Value0.
    (recoveredBlock1162Value1) x: (190).
    recoveredBlock1162Value2 := recoveredBlock1162Value0.
    recoveredBlock1162Value3 := XmALIGNMENTBEGINNING.
    (recoveredBlock1162Value2) alignment: (recoveredBlock1162Value3).
    recoveredBlock1162Value4 := recoveredBlock1162Value0.
    (recoveredBlock1162Value4) labelString: ('Not stored Variables').
    recoveredBlock1162Value5 := recoveredBlock1162Value0.
    (recoveredBlock1162Value5) y: (260).
    recoveredBlock1162Value6 := recoveredBlock1162Value0.
    (recoveredBlock1162Value6) height: (15).
    recoveredBlock1162Value7 := recoveredBlock1162Value0.
    (recoveredBlock1162Value7) width: (170).
    recoveredBlock1162Value8 := (self) defaultLabelBlue.
    recoveredBlock1162Value9 := (recoveredBlock1162Value0) foregroundColor: (recoveredBlock1162Value8).
    recoveredBlock1162Value9
].
            recoveredPC := 1218.
        ].
        recoveredStep = 1218 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1223.
        ].
        recoveredStep = 1223 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1225.
        ].
        recoveredStep = 1225 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 1228.
        ].
        recoveredStep = 1228 ifTrue: [
            recoveredStack1 := recoveredLocal30.
            recoveredPC := 1231.
        ].
        recoveredStep = 1231 ifTrue: [
            recoveredStack2 := 'notStoredVariablesLabel'.
            recoveredPC := 1234.
        ].
        recoveredStep = 1234 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 1237.
        ].
        recoveredStep = 1237 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1239.
        ].
        recoveredStep = 1239 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 1242.
        ].
        recoveredStep = 1242 ifTrue: [
            recoveredStack2 := 'storedVariablesList'.
            recoveredPC := 1246.
        ].
        recoveredStep = 1246 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 1247.
        ].
        recoveredStep = 1247 ifTrue: [
            recoveredStack1 := (recoveredStack1) createScrolledList: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1251.
        ].
        recoveredStep = 1251 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1253.
        ].
        recoveredStep = 1253 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 1256.
        ].
        recoveredStep = 1256 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 1259.
        ].
        recoveredStep = 1259 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 1263.
        ].
        recoveredStep = 1263 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 1266.
        ].
        recoveredStep = 1266 ifTrue: [
            recoveredStack1 := recoveredLocal30.
            recoveredPC := 1269.
        ].
        recoveredStep = 1269 ifTrue: [
            recoveredStack2 := 'aScrolledList1'.
            recoveredPC := 1272.
        ].
        recoveredStep = 1272 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 1275.
        ].
        recoveredStep = 1275 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1277.
        ].
        recoveredStep = 1277 ifTrue: [
            recoveredStack1 := recoveredLocal30.
            recoveredPC := 1280.
        ].
        recoveredStep = 1280 ifTrue: [
            recoveredStack2 := 'storedVariablesList'.
            recoveredPC := 1284.
        ].
        recoveredStep = 1284 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 1287.
        ].
        recoveredStep = 1287 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1289.
        ].
        recoveredStep = 1289 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 1292.
        ].
        recoveredStep = 1292 ifTrue: [
            recoveredStack2 := 'notStoredVariablesList'.
            recoveredPC := 1296.
        ].
        recoveredStep = 1296 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 1297.
        ].
        recoveredStep = 1297 ifTrue: [
            recoveredStack1 := (recoveredStack1) createScrolledList: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1301.
        ].
        recoveredStep = 1301 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1303.
        ].
        recoveredStep = 1303 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 1306.
        ].
        recoveredStep = 1306 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 1309.
        ].
        recoveredStep = 1309 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 1313.
        ].
        recoveredStep = 1313 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 1316.
        ].
        recoveredStep = 1316 ifTrue: [
            recoveredStack1 := recoveredLocal30.
            recoveredPC := 1319.
        ].
        recoveredStep = 1319 ifTrue: [
            recoveredStack2 := 'aScrolledList2'.
            recoveredPC := 1322.
        ].
        recoveredStep = 1322 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 1325.
        ].
        recoveredStep = 1325 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1327.
        ].
        recoveredStep = 1327 ifTrue: [
            recoveredStack1 := recoveredLocal30.
            recoveredPC := 1330.
        ].
        recoveredStep = 1330 ifTrue: [
            recoveredStack2 := 'notStoredVariablesList'.
            recoveredPC := 1334.
        ].
        recoveredStep = 1334 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 1337.
        ].
        recoveredStep = 1337 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1339.
        ].
        recoveredStep = 1339 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 1342.
        ].
        recoveredStep = 1342 ifTrue: [
            recoveredStack2 := 'commentField'.
            recoveredPC := 1346.
        ].
        recoveredStep = 1346 ifTrue: [
            recoveredStack3 := [:block28131d1cArg1 | 
    | block28131d1cValue0 block28131d1cValue1 block28131d1cValue2 |
    block28131d1cValue0 := block28131d1cArg1.
    block28131d1cValue1 := XmMULTILINEEDIT.
    block28131d1cValue2 := (block28131d1cValue0) editMode: (block28131d1cValue1).
    block28131d1cValue2
].
            recoveredPC := 1350.
        ].
        recoveredStep = 1350 ifTrue: [
            recoveredPC := 1364.
        ].
        recoveredStep = 1364 ifTrue: [
            recoveredStack1 := (recoveredStack1) createScrolledEnhancedText: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1369.
        ].
        recoveredStep = 1369 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1371.
        ].
        recoveredStep = 1371 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 1374.
        ].
        recoveredStep = 1374 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 1377.
        ].
        recoveredStep = 1377 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 1381.
        ].
        recoveredStep = 1381 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 1384.
        ].
        recoveredStep = 1384 ifTrue: [
            recoveredStack1 := recoveredLocal30.
            recoveredPC := 1387.
        ].
        recoveredStep = 1387 ifTrue: [
            recoveredStack2 := 'aScrolledText1'.
            recoveredPC := 1390.
        ].
        recoveredStep = 1390 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 1393.
        ].
        recoveredStep = 1393 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1395.
        ].
        recoveredStep = 1395 ifTrue: [
            recoveredStack1 := recoveredLocal30.
            recoveredPC := 1398.
        ].
        recoveredStep = 1398 ifTrue: [
            recoveredStack2 := 'commentField'.
            recoveredPC := 1402.
        ].
        recoveredStep = 1402 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 1405.
        ].
        recoveredStep = 1405 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1407.
        ].
        recoveredStep = 1407 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 1410.
        ].
        recoveredStep = 1410 ifTrue: [
            recoveredStack2 := 'fileNameLabel'.
            recoveredPC := 1414.
        ].
        recoveredStep = 1414 ifTrue: [
            recoveredStack3 := [:block28131d40Arg1 | 
    | block28131d40Value0 block28131d40Value1 block28131d40Value2 block28131d40Value3 block28131d40Value4 block28131d40Value5 block28131d40Value6 block28131d40Value7 |
    block28131d40Value0 := block28131d40Arg1.
    block28131d40Value1 := block28131d40Value0.
    (block28131d40Value1) x: (10).
    block28131d40Value2 := block28131d40Value0.
    block28131d40Value3 := XmALIGNMENTBEGINNING.
    (block28131d40Value2) alignment: (block28131d40Value3).
    block28131d40Value4 := block28131d40Value0.
    (block28131d40Value4) labelString: ('Datei:').
    block28131d40Value5 := block28131d40Value0.
    (block28131d40Value5) y: (375).
    block28131d40Value6 := block28131d40Value0.
    (block28131d40Value6) height: (20).
    block28131d40Value7 := (block28131d40Value0) width: (45).
    block28131d40Value7
].
            recoveredPC := 1418.
        ].
        recoveredStep = 1418 ifTrue: [
            recoveredPC := 1458.
        ].
        recoveredStep = 1458 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1463.
        ].
        recoveredStep = 1463 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1465.
        ].
        recoveredStep = 1465 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 1468.
        ].
        recoveredStep = 1468 ifTrue: [
            recoveredStack1 := recoveredLocal30.
            recoveredPC := 1471.
        ].
        recoveredStep = 1471 ifTrue: [
            recoveredStack2 := 'fileNameLabel'.
            recoveredPC := 1474.
        ].
        recoveredStep = 1474 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 1477.
        ].
        recoveredStep = 1477 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1479.
        ].
        recoveredStep = 1479 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 1482.
        ].
        recoveredStep = 1482 ifTrue: [
            recoveredStack2 := 'fileNameText'.
            recoveredPC := 1486.
        ].
        recoveredStep = 1486 ifTrue: [
            recoveredStack3 := [:block28131d64Arg1 | 
    | block28131d64Value0 block28131d64Value1 block28131d64Value2 block28131d64Value3 block28131d64Value4 |
    block28131d64Value0 := block28131d64Arg1.
    block28131d64Value1 := block28131d64Value0.
    (block28131d64Value1) y: (373).
    block28131d64Value2 := block28131d64Value0.
    (block28131d64Value2) x: (55).
    block28131d64Value3 := block28131d64Value0.
    (block28131d64Value3) height: (21).
    block28131d64Value4 := (block28131d64Value0) width: (270).
    block28131d64Value4
].
            recoveredPC := 1490.
        ].
        recoveredStep = 1490 ifTrue: [
            recoveredPC := 1519.
        ].
        recoveredStep = 1519 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEnhancedText: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1521.
        ].
        recoveredStep = 1521 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1523.
        ].
        recoveredStep = 1523 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 1526.
        ].
        recoveredStep = 1526 ifTrue: [
            recoveredStack1 := recoveredLocal30.
            recoveredPC := 1529.
        ].
        recoveredStep = 1529 ifTrue: [
            recoveredStack2 := 'fileNameText'.
            recoveredPC := 1532.
        ].
        recoveredStep = 1532 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 1535.
        ].
        recoveredStep = 1535 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1537.
        ].
        recoveredStep = 1537 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 1540.
        ].
        recoveredStep = 1540 ifTrue: [
            recoveredStack2 := 'browseFilesButton'.
            recoveredPC := 1544.
        ].
        recoveredStep = 1544 ifTrue: [
            recoveredStack3 := [:block28131d88Arg1 | 
    | block28131d88Value0 block28131d88Value1 block28131d88Value2 block28131d88Value3 block28131d88Value4 block28131d88Value5 |
    block28131d88Value0 := block28131d88Arg1.
    block28131d88Value1 := block28131d88Value0.
    (block28131d88Value1) x: (330).
    block28131d88Value2 := block28131d88Value0.
    (block28131d88Value2) labelString: ('&?').
    block28131d88Value3 := block28131d88Value0.
    (block28131d88Value3) y: (370).
    block28131d88Value4 := block28131d88Value0.
    (block28131d88Value4) height: (26).
    block28131d88Value5 := (block28131d88Value0) width: (30).
    block28131d88Value5
].
            recoveredPC := 1548.
        ].
        recoveredStep = 1548 ifTrue: [
            recoveredPC := 1582.
        ].
        recoveredStep = 1582 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1584.
        ].
        recoveredStep = 1584 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1586.
        ].
        recoveredStep = 1586 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 1589.
        ].
        recoveredStep = 1589 ifTrue: [
            recoveredStack1 := recoveredLocal30.
            recoveredPC := 1592.
        ].
        recoveredStep = 1592 ifTrue: [
            recoveredStack2 := 'browseFilesButton'.
            recoveredPC := 1596.
        ].
        recoveredStep = 1596 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 1599.
        ].
        recoveredStep = 1599 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1601.
        ].
        recoveredStep = 1601 ifTrue: [
            recoveredStack1 := recoveredLocal28.
            recoveredPC := 1604.
        ].
        recoveredStep = 1604 ifTrue: [
            recoveredStack2 := [:recoveredBlock1604Arg1 | 
    | recoveredBlock1604Value0 recoveredBlock1604Value1 recoveredBlock1604Value2 |
    recoveredBlock1604Value0 := recoveredBlock1604Arg1.
    recoveredBlock1604Value1 := recoveredLocal27.
    recoveredBlock1604Value2 := (recoveredBlock1604Value0) workWindow: (recoveredBlock1604Value1).
    recoveredBlock1604Value2
].
            recoveredPC := 1620.
        ].
        recoveredStep = 1620 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1625.
        ].
        recoveredStep = 1625 ifTrue: [
            recoveredStack1 := recoveredLocal26.
            recoveredPC := 1628.
        ].
        recoveredStep = 1628 ifTrue: [
            recoveredStack2 := [:block28131dacArg1 | 
    | block28131dacValue0 block28131dacValue1 block28131dacValue2 block28131dacValue3 |
    block28131dacValue0 := block28131dacArg1.
    block28131dacValue1 := block28131dacValue0.
    block28131dacValue2 := XmATTACHFORM.
    (block28131dacValue1) rightAttachment: (block28131dacValue2).
    block28131dacValue3 := (block28131dacValue0) rightOffset: (140).
    block28131dacValue3
].
            recoveredPC := 1632.
        ].
        recoveredStep = 1632 ifTrue: [
            recoveredPC := 1656.
        ].
        recoveredStep = 1656 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1661.
        ].
        recoveredStep = 1661 ifTrue: [
            recoveredStack1 := recoveredLocal25.
            recoveredPC := 1664.
        ].
        recoveredStep = 1664 ifTrue: [
            recoveredStack2 := [:block28131dd0Arg1 | 
    | block28131dd0Value0 block28131dd0Value1 block28131dd0Value2 block28131dd0Value3 |
    block28131dd0Value0 := block28131dd0Arg1.
    block28131dd0Value1 := block28131dd0Value0.
    block28131dd0Value2 := XmATTACHFORM.
    (block28131dd0Value1) rightAttachment: (block28131dd0Value2).
    block28131dd0Value3 := (block28131dd0Value0) rightOffset: (140).
    block28131dd0Value3
].
            recoveredPC := 1668.
        ].
        recoveredStep = 1668 ifTrue: [
            recoveredPC := 1692.
        ].
        recoveredStep = 1692 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1697.
        ].
        recoveredStep = 1697 ifTrue: [
            recoveredStack1 := recoveredLocal24.
            recoveredPC := 1700.
        ].
        recoveredStep = 1700 ifTrue: [
            recoveredStack2 := [:block28131df4Arg1 | 
    | block28131df4Value0 block28131df4Value1 block28131df4Value2 block28131df4Value3 |
    block28131df4Value0 := block28131df4Arg1.
    block28131df4Value1 := block28131df4Value0.
    block28131df4Value2 := XmATTACHFORM.
    (block28131df4Value1) rightAttachment: (block28131df4Value2).
    block28131df4Value3 := (block28131df4Value0) rightOffset: (140).
    block28131df4Value3
].
            recoveredPC := 1704.
        ].
        recoveredStep = 1704 ifTrue: [
            recoveredPC := 1728.
        ].
        recoveredStep = 1728 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1733.
        ].
        recoveredStep = 1733 ifTrue: [
            recoveredStack1 := recoveredLocal23.
            recoveredPC := 1736.
        ].
        recoveredStep = 1736 ifTrue: [
            recoveredStack2 := [:block28131e18Arg1 | 
    | block28131e18Value0 block28131e18Value1 block28131e18Value2 block28131e18Value3 |
    block28131e18Value0 := block28131e18Arg1.
    block28131e18Value1 := block28131e18Value0.
    block28131e18Value2 := XmATTACHFORM.
    (block28131e18Value1) rightAttachment: (block28131e18Value2).
    block28131e18Value3 := (block28131e18Value0) rightOffset: (140).
    block28131e18Value3
].
            recoveredPC := 1740.
        ].
        recoveredStep = 1740 ifTrue: [
            recoveredPC := 1764.
        ].
        recoveredStep = 1764 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1769.
        ].
        recoveredStep = 1769 ifTrue: [
            recoveredStack1 := recoveredLocal22.
            recoveredPC := 1772.
        ].
        recoveredStep = 1772 ifTrue: [
            recoveredStack2 := [:block28131e3cArg1 | 
    | block28131e3cValue0 block28131e3cValue1 block28131e3cValue2 block28131e3cValue3 block28131e3cValue4 block28131e3cValue5 block28131e3cValue6 block28131e3cValue7 |
    block28131e3cValue0 := block28131e3cArg1.
    block28131e3cValue1 := block28131e3cValue0.
    block28131e3cValue2 := XmATTACHFORM.
    (block28131e3cValue1) bottomAttachment: (block28131e3cValue2).
    block28131e3cValue3 := block28131e3cValue0.
    block28131e3cValue4 := XmATTACHFORM.
    (block28131e3cValue3) topAttachment: (block28131e3cValue4).
    block28131e3cValue5 := block28131e3cValue0.
    block28131e3cValue6 := XmATTACHOPPOSITEFORM.
    (block28131e3cValue5) leftAttachment: (block28131e3cValue6).
    block28131e3cValue7 := (block28131e3cValue0) leftOffset: (-130).
    block28131e3cValue7
].
            recoveredPC := 1776.
        ].
        recoveredStep = 1776 ifTrue: [
            recoveredPC := 1816.
        ].
        recoveredStep = 1816 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1821.
        ].
        recoveredStep = 1821 ifTrue: [
            recoveredStack1 := recoveredLocal21.
            recoveredPC := 1824.
        ].
        recoveredStep = 1824 ifTrue: [
            recoveredStack2 := [:block28131e60Arg1 | 
    | block28131e60Value0 block28131e60Value1 block28131e60Value2 block28131e60Value3 |
    block28131e60Value0 := block28131e60Arg1.
    block28131e60Value1 := block28131e60Value0.
    block28131e60Value2 := XmATTACHFORM.
    (block28131e60Value1) rightAttachment: (block28131e60Value2).
    block28131e60Value3 := (block28131e60Value0) rightOffset: (10).
    block28131e60Value3
].
            recoveredPC := 1828.
        ].
        recoveredStep = 1828 ifTrue: [
            recoveredPC := 1850.
        ].
        recoveredStep = 1850 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1855.
        ].
        recoveredStep = 1855 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 1858.
        ].
        recoveredStep = 1858 ifTrue: [
            recoveredStack2 := [:block28131e84Arg1 | 
    | block28131e84Value0 block28131e84Value1 block28131e84Value2 block28131e84Value3 |
    block28131e84Value0 := block28131e84Arg1.
    block28131e84Value1 := block28131e84Value0.
    block28131e84Value2 := XmATTACHFORM.
    (block28131e84Value1) rightAttachment: (block28131e84Value2).
    block28131e84Value3 := (block28131e84Value0) rightOffset: (10).
    block28131e84Value3
].
            recoveredPC := 1862.
        ].
        recoveredStep = 1862 ifTrue: [
            recoveredPC := 1884.
        ].
        recoveredStep = 1884 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1889.
        ].
        recoveredStep = 1889 ifTrue: [
            recoveredStack1 := recoveredLocal19.
            recoveredPC := 1892.
        ].
        recoveredStep = 1892 ifTrue: [
            recoveredStack2 := [:block28131ea8Arg1 | 
    | block28131ea8Value0 block28131ea8Value1 block28131ea8Value2 block28131ea8Value3 |
    block28131ea8Value0 := block28131ea8Arg1.
    block28131ea8Value1 := block28131ea8Value0.
    block28131ea8Value2 := XmATTACHFORM.
    (block28131ea8Value1) rightAttachment: (block28131ea8Value2).
    block28131ea8Value3 := (block28131ea8Value0) rightOffset: (10).
    block28131ea8Value3
].
            recoveredPC := 1896.
        ].
        recoveredStep = 1896 ifTrue: [
            recoveredPC := 1918.
        ].
        recoveredStep = 1918 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1923.
        ].
        recoveredStep = 1923 ifTrue: [
            recoveredStack1 := recoveredLocal18.
            recoveredPC := 1926.
        ].
        recoveredStep = 1926 ifTrue: [
            recoveredStack2 := [:block28131eccArg1 | 
    | block28131eccValue0 block28131eccValue1 block28131eccValue2 block28131eccValue3 |
    block28131eccValue0 := block28131eccArg1.
    block28131eccValue1 := block28131eccValue0.
    block28131eccValue2 := XmATTACHFORM.
    (block28131eccValue1) leftAttachment: (block28131eccValue2).
    block28131eccValue3 := (block28131eccValue0) leftOffset: (10).
    block28131eccValue3
].
            recoveredPC := 1930.
        ].
        recoveredStep = 1930 ifTrue: [
            recoveredPC := 1952.
        ].
        recoveredStep = 1952 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1957.
        ].
        recoveredStep = 1957 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 1960.
        ].
        recoveredStep = 1960 ifTrue: [
            recoveredStack2 := [:block28131ef0Arg1 | 
    | block28131ef0Value0 block28131ef0Value1 block28131ef0Value2 block28131ef0Value3 |
    block28131ef0Value0 := block28131ef0Arg1.
    block28131ef0Value1 := block28131ef0Value0.
    block28131ef0Value2 := XmATTACHFORM.
    (block28131ef0Value1) leftAttachment: (block28131ef0Value2).
    block28131ef0Value3 := (block28131ef0Value0) leftOffset: (10).
    block28131ef0Value3
].
            recoveredPC := 1964.
        ].
        recoveredStep = 1964 ifTrue: [
            recoveredPC := 1986.
        ].
        recoveredStep = 1986 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1991.
        ].
        recoveredStep = 1991 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 1994.
        ].
        recoveredStep = 1994 ifTrue: [
            recoveredStack2 := [:block28131f14Arg1 | 
    | block28131f14Value0 block28131f14Value1 block28131f14Value2 block28131f14Value3 |
    block28131f14Value0 := block28131f14Arg1.
    block28131f14Value1 := block28131f14Value0.
    block28131f14Value2 := XmATTACHFORM.
    (block28131f14Value1) leftAttachment: (block28131f14Value2).
    block28131f14Value3 := (block28131f14Value0) leftOffset: (10).
    block28131f14Value3
].
            recoveredPC := 1998.
        ].
        recoveredStep = 1998 ifTrue: [
            recoveredPC := 2020.
        ].
        recoveredStep = 2020 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 2025.
        ].
        recoveredStep = 2025 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 2028.
        ].
        recoveredStep = 2028 ifTrue: [
            recoveredStack2 := [:block28131f38Arg1 | 
    | block28131f38Value0 block28131f38Value1 block28131f38Value2 block28131f38Value3 |
    block28131f38Value0 := block28131f38Arg1.
    block28131f38Value1 := block28131f38Value0.
    block28131f38Value2 := XmATTACHFORM.
    (block28131f38Value1) leftAttachment: (block28131f38Value2).
    block28131f38Value3 := (block28131f38Value0) leftOffset: (10).
    block28131f38Value3
].
            recoveredPC := 2032.
        ].
        recoveredStep = 2032 ifTrue: [
            recoveredPC := 2054.
        ].
        recoveredStep = 2054 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 2059.
        ].
        recoveredStep = 2059 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 2062.
        ].
        recoveredStep = 2062 ifTrue: [
            recoveredStack2 := [:block28131f5cArg1 | 
    | block28131f5cValue0 block28131f5cValue1 block28131f5cValue2 block28131f5cValue3 |
    block28131f5cValue0 := block28131f5cArg1.
    block28131f5cValue1 := block28131f5cValue0.
    block28131f5cValue2 := XmATTACHFORM.
    (block28131f5cValue1) leftAttachment: (block28131f5cValue2).
    block28131f5cValue3 := (block28131f5cValue0) leftOffset: (10).
    block28131f5cValue3
].
            recoveredPC := 2066.
        ].
        recoveredStep = 2066 ifTrue: [
            recoveredPC := 2088.
        ].
        recoveredStep = 2088 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 2093.
        ].
        recoveredStep = 2093 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 2096.
        ].
        recoveredStep = 2096 ifTrue: [
            recoveredStack2 := [:block28131f80Arg1 | 
    | block28131f80Value0 block28131f80Value1 block28131f80Value2 block28131f80Value3 block28131f80Value4 |
    block28131f80Value0 := block28131f80Arg1.
    block28131f80Value1 := block28131f80Value0.
    (block28131f80Value1) x: (10).
    block28131f80Value2 := block28131f80Value0.
    (block28131f80Value2) y: (280).
    block28131f80Value3 := block28131f80Value0.
    (block28131f80Value3) height: (85).
    block28131f80Value4 := (block28131f80Value0) width: (170).
    block28131f80Value4
].
            recoveredPC := 2100.
        ].
        recoveredStep = 2100 ifTrue: [
            recoveredPC := 2129.
        ].
        recoveredStep = 2129 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 2133.
        ].
        recoveredStep = 2133 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 2136.
        ].
        recoveredStep = 2136 ifTrue: [
            recoveredStack2 := [:block28131fa4Arg1 | 
    | block28131fa4Value0 block28131fa4Value1 block28131fa4Value2 block28131fa4Value3 block28131fa4Value4 |
    block28131fa4Value0 := block28131fa4Arg1.
    block28131fa4Value1 := block28131fa4Value0.
    (block28131fa4Value1) x: (190).
    block28131fa4Value2 := block28131fa4Value0.
    (block28131fa4Value2) y: (280).
    block28131fa4Value3 := block28131fa4Value0.
    (block28131fa4Value3) height: (85).
    block28131fa4Value4 := (block28131fa4Value0) width: (170).
    block28131fa4Value4
].
            recoveredPC := 2140.
        ].
        recoveredStep = 2140 ifTrue: [
            recoveredPC := 2171.
        ].
        recoveredStep = 2171 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 2175.
        ].
        recoveredStep = 2175 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 2178.
        ].
        recoveredStep = 2178 ifTrue: [
            recoveredStack2 := [:block28131fc8Arg1 | 
    | block28131fc8Value0 block28131fc8Value1 block28131fc8Value2 block28131fc8Value3 block28131fc8Value4 block28131fc8Value5 block28131fc8Value6 block28131fc8Value7 block28131fc8Value8 block28131fc8Value9 block28131fc8Value10 |
    block28131fc8Value0 := block28131fc8Arg1.
    block28131fc8Value1 := block28131fc8Value0.
    block28131fc8Value2 := XmATTACHFORM.
    (block28131fc8Value1) leftAttachment: (block28131fc8Value2).
    block28131fc8Value3 := block28131fc8Value0.
    (block28131fc8Value3) leftOffset: (10).
    block28131fc8Value4 := block28131fc8Value0.
    block28131fc8Value5 := XmATTACHFORM.
    (block28131fc8Value4) rightAttachment: (block28131fc8Value5).
    block28131fc8Value6 := block28131fc8Value0.
    (block28131fc8Value6) rightOffset: (140).
    block28131fc8Value7 := block28131fc8Value0.
    (block28131fc8Value7) x: (10).
    block28131fc8Value8 := block28131fc8Value0.
    (block28131fc8Value8) y: (175).
    block28131fc8Value9 := block28131fc8Value0.
    (block28131fc8Value9) height: (68).
    block28131fc8Value10 := (block28131fc8Value0) width: (351).
    block28131fc8Value10
].
            recoveredPC := 2182.
        ].
        recoveredStep = 2182 ifTrue: [
            recoveredPC := 2243.
        ].
        recoveredStep = 2243 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 2247.
        ].
        recoveredStep = 2247 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 2250.
        ].
        recoveredStep = 2250 ifTrue: [
            recoveredStack2 := XmNdestroyCallback.
            recoveredPC := 2254.
        ].
        recoveredStep = 2254 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2255.
        ].
        recoveredStep = 2255 ifTrue: [
            recoveredStack4 := 'aForm1Destroy:clientData:callData:'.
            recoveredPC := 2258.
        ].
        recoveredStep = 2258 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2259.
        ].
        recoveredStep = 2259 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2263.
        ].
        recoveredStep = 2263 ifTrue: [
            recoveredStack1 := recoveredLocal21.
            recoveredPC := 2266.
        ].
        recoveredStep = 2266 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 2270.
        ].
        recoveredStep = 2270 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2271.
        ].
        recoveredStep = 2271 ifTrue: [
            recoveredStack4 := 'okButtonActivate:clientData:callData:'.
            recoveredPC := 2274.
        ].
        recoveredStep = 2274 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2275.
        ].
        recoveredStep = 2275 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2279.
        ].
        recoveredStep = 2279 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 2282.
        ].
        recoveredStep = 2282 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 2286.
        ].
        recoveredStep = 2286 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2287.
        ].
        recoveredStep = 2287 ifTrue: [
            recoveredStack4 := 'ccancelButtonActivate:clientData:callData:'.
            recoveredPC := 2290.
        ].
        recoveredStep = 2290 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2291.
        ].
        recoveredStep = 2291 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2295.
        ].
        recoveredStep = 2295 ifTrue: [
            recoveredStack1 := recoveredLocal19.
            recoveredPC := 2298.
        ].
        recoveredStep = 2298 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 2302.
        ].
        recoveredStep = 2302 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2303.
        ].
        recoveredStep = 2303 ifTrue: [
            recoveredStack4 := 'helpButtonActivate:clientData:callData:'.
            recoveredPC := 2306.
        ].
        recoveredStep = 2306 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2307.
        ].
        recoveredStep = 2307 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2311.
        ].
        recoveredStep = 2311 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 2314.
        ].
        recoveredStep = 2314 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 2318.
        ].
        recoveredStep = 2318 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2319.
        ].
        recoveredStep = 2319 ifTrue: [
            recoveredStack4 := 'takeOverButtonActivate:clientData:callData:'.
            recoveredPC := 2322.
        ].
        recoveredStep = 2322 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2323.
        ].
        recoveredStep = 2323 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2327.
        ].
        recoveredStep = 2327 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 2330.
        ].
        recoveredStep = 2330 ifTrue: [
            recoveredStack2 := XmNvalueChangedCallback.
            recoveredPC := 2334.
        ].
        recoveredStep = 2334 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2335.
        ].
        recoveredStep = 2335 ifTrue: [
            recoveredStack4 := 'fileNameTextValue:clientData:callData:'.
            recoveredPC := 2338.
        ].
        recoveredStep = 2338 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2339.
        ].
        recoveredStep = 2339 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2343.
        ].
        recoveredStep = 2343 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2346.
        ].
        recoveredStep = 2346 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 2350.
        ].
        recoveredStep = 2350 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2351.
        ].
        recoveredStep = 2351 ifTrue: [
            recoveredStack4 := 'browseFilesButtonActivate:clientData:callData:'.
            recoveredPC := 2354.
        ].
        recoveredStep = 2354 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2355.
        ].
        recoveredStep = 2355 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2359.
        ].
        recoveredStep = 2359 ifTrue: [
            recoveredStack1 := recoveredLocal24.
            recoveredPC := 2362.
        ].
        recoveredStep = 2362 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2367.
        ].
        recoveredStep = 2367 ifTrue: [
            recoveredStack1 := recoveredLocal25.
            recoveredPC := 2370.
        ].
        recoveredStep = 2370 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2375.
        ].
        recoveredStep = 2375 ifTrue: [
            recoveredStack1 := recoveredLocal23.
            recoveredPC := 2378.
        ].
        recoveredStep = 2378 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2383.
        ].
        recoveredStep = 2383 ifTrue: [
            recoveredStack1 := recoveredLocal26.
            recoveredPC := 2386.
        ].
        recoveredStep = 2386 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2391.
        ].
        recoveredStep = 2391 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 2394.
        ].
        recoveredStep = 2394 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2399.
        ].
        recoveredStep = 2399 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 2402.
        ].
        recoveredStep = 2402 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2407.
        ].
        recoveredStep = 2407 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 2410.
        ].
        recoveredStep = 2410 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2415.
        ].
        recoveredStep = 2415 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2418.
        ].
        recoveredStep = 2418 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2423.
        ].
        recoveredStep = 2423 ifTrue: [
            recoveredStack1 := recoveredLocal21.
            recoveredPC := 2426.
        ].
        recoveredStep = 2426 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2431.
        ].
        recoveredStep = 2431 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 2434.
        ].
        recoveredStep = 2434 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2439.
        ].
        recoveredStep = 2439 ifTrue: [
            recoveredStack1 := recoveredLocal19.
            recoveredPC := 2442.
        ].
        recoveredStep = 2442 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2447.
        ].
        recoveredStep = 2447 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 2450.
        ].
        recoveredStep = 2450 ifTrue: [
            recoveredStack2 := recoveredLocal30.
            recoveredPC := 2453.
        ].
        recoveredStep = 2453 ifTrue: [
            recoveredStack3 := recoveredLocal28.
            recoveredPC := 2456.
        ].
        recoveredStep = 2456 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 2461.
        ].
        recoveredStep = 2461 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

