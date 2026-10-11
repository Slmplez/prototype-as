"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200062fc; bytecode file offset 0x902de8"
!SGExportManager methodsFor: 'recovered'!
checkExportExecutionForArray: recoveredArg1 pathName: recoveredArg2 fileName: recoveredArg3
    ^self
! !

"ASDBase.ic method 0x2001500c; bytecode file offset 0x912098"
!SGExportManager methodsFor: 'recovered'!
amdExportControllerClass
    | recoveredValue0 |
    recoveredValue0 := ASDXMLExportController.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006c86c; bytecode file offset 0x9692b0"
!SGExportManager methodsFor: 'recovered'!
headerKey
    | recoveredValue0 |
    recoveredValue0 := headerKey.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20078cec; bytecode file offset 0x9757c8"
!SGExportManager methodsFor: 'recovered'!
isXMLImportExportInstalled
    ^true
! !

"ASDBase.ic method 0x200c31cc; bytecode file offset 0x9bfde0"
!SGExportManager methodsFor: 'recovered'!
headerKey: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    headerKey := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x201275fc; bytecode file offset 0xa23ec0"
!SGExportManager methodsFor: 'recovered'!
createContainerFor: recoveredArg1 library: recoveredArg2 inDictionary: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := MainController.
    recoveredValue1 := (recoveredValue0) class.
    recoveredValue2 := (recoveredValue1) product.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := recoveredArg3.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (self) createContainerFor: (recoveredValue3) library: (recoveredValue4) inDictionary: (recoveredValue5) productId: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x20191710; bytecode file offset 0xa8dfdc"
!SGExportManager methodsFor: 'recovered'!
initialize
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            super initialize.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) mainController.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := [:block280d1c28Arg1 | 
    | block280d1c28Value0 block280d1c28Value1 |
    block280d1c28Value0 := block280d1c28Arg1.
    block280d1c28Value1 := (block280d1c28Value0) isAboutToExport.
    block280d1c28Value1
].
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2019c4ac; bytecode file offset 0xa98d74"
!SGExportManager methodsFor: 'recovered'!
exportDictionary: recoveredArg1 path: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) dbController.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) exportAllRecords: (recoveredStack1) onFile: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) library.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) garbageCollect.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2026be18; bytecode file offset 0xb686f8"
!SGExportManager methodsFor: 'recovered'!
doInExceptionBlock: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRuntime.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := ExError.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := [:block280e0334Arg1 | 
    | block280e0334Value0 block280e0334Value1 block280e0334Value2 block280e0334Value3 |
    block280e0334Value0 := SGMonitorStreamDummy.
    block280e0334Value1 := (block280e0334Value0) create.
    (block280e0334Value1) addErrorText: ('Error in creating XML').
    block280e0334Value2 := block280e0334Arg1.
    block280e0334Value3 := (block280e0334Value2) signal.
    block280e0334Value3
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) when: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) value.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2035ff4c; bytecode file offset 0xc5c828"
!SGExportManager methodsFor: 'recovered'!
createContainerFor: recoveredArg1 library: recoveredArg2 inDictionary: recoveredArg3 productId: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := MainController.
    recoveredValue1 := (recoveredValue0) class.
    recoveredValue2 := (recoveredValue1) currentDBVersion.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) exportItems.
    recoveredValue5 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 recoveredBlock15Value3 recoveredBlock15Value4 recoveredBlock15Value5 recoveredBlock15Value6 recoveredBlock15Value7 recoveredBlock15Value8 recoveredBlock15Value9 recoveredBlock15Value10 recoveredBlock15Value11 recoveredBlock15Value12 recoveredBlock15Value13 |
    recoveredBlock15Value0 := recoveredBlock15Arg1.
    recoveredBlock15Value1 := (recoveredBlock15Value0) containerClass.
    recoveredBlock15Value2 := recoveredArg2.
    recoveredBlock15Value3 := MainController.
    recoveredBlock15Value4 := recoveredArg4.
    recoveredBlock15Value5 := recoveredLocal1.
    recoveredBlock15Value6 := (recoveredBlock15Value1) createFor: (recoveredBlock15Value2) mainCtrl: (recoveredBlock15Value3) product: (recoveredBlock15Value4) dbVersion: (recoveredBlock15Value5).
    recoveredLocal2 := recoveredBlock15Value6.
    recoveredBlock15Value7 := recoveredLocal2.
    recoveredBlock15Value8 := recoveredBlock15Arg1.
    (recoveredBlock15Value7) updateForItem: (recoveredBlock15Value8).
    recoveredBlock15Value9 := recoveredArg3.
    recoveredBlock15Value10 := recoveredLocal2.
    recoveredBlock15Value11 := recoveredBlock15Arg1.
    recoveredBlock15Value12 := (recoveredBlock15Value11) allDependentProxies.
    recoveredBlock15Value13 := (recoveredBlock15Value9) at: (recoveredBlock15Value10) put: (recoveredBlock15Value12).
    recoveredBlock15Value13
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := recoveredArg3.
    ^recoveredValue6
! !

"ASDBase.ic method 0x203862b8; bytecode file offset 0xc82ba8"
!SGExportManager methodsFor: 'recovered'!
exportItemsForWorkspace: recoveredArg1 toAmdFile: recoveredArg2 ui: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := System.
    recoveredValue1 := [
    | recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6Stack3 recoveredBlock6Stack4 recoveredBlock6Stack5 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            recoveredBlock6Stack1 := DBXmlDirectExportController.
            recoveredBlock6PC := 14.
        ].
        recoveredBlock6Step = 14 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) new.
            recoveredBlock6PC := 15.
        ].
        recoveredBlock6Step = 15 ifTrue: [
            recoveredBlock6Stack2 := MainController.
            recoveredBlock6PC := 17.
        ].
        recoveredBlock6Step = 17 ifTrue: [
            recoveredBlock6Stack3 := recoveredArg1.
            recoveredBlock6PC := 20.
        ].
        recoveredBlock6Step = 20 ifTrue: [
            recoveredBlock6Stack3 := (recoveredBlock6Stack3) options.
            recoveredBlock6PC := 22.
        ].
        recoveredBlock6Step = 22 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) initOn: (recoveredBlock6Stack2) options: (recoveredBlock6Stack3).
            recoveredBlock6PC := 24.
        ].
        recoveredBlock6Step = 24 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Stack1.
            recoveredBlock6PC := 25.
        ].
        recoveredBlock6Step = 25 ifTrue: [
            recoveredBlock6Stack3 := 'amd'.
            recoveredBlock6PC := 27.
        ].
        recoveredBlock6Step = 27 ifTrue: [
            (recoveredBlock6Stack2) xmlExt: (recoveredBlock6Stack3).
            recoveredBlock6PC := 29.
        ].
        recoveredBlock6Step = 29 ifTrue: [
            recoveredBlock6Stack2 := recoveredArg1.
            recoveredBlock6PC := 32.
        ].
        recoveredBlock6Step = 32 ifTrue: [
            recoveredBlock6Stack3 := recoveredArg2.
            recoveredBlock6PC := 35.
        ].
        recoveredBlock6Step = 35 ifTrue: [
            recoveredBlock6Stack3 := (recoveredBlock6Stack3) pathName.
            recoveredBlock6PC := 37.
        ].
        recoveredBlock6Step = 37 ifTrue: [
            recoveredBlock6Stack4 := recoveredArg3.
            recoveredBlock6PC := 40.
        ].
        recoveredBlock6Step = 40 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) export: (recoveredBlock6Stack2) to: (recoveredBlock6Stack3) ui: (recoveredBlock6Stack4).
            recoveredBlock6PC := 43.
        ].
        recoveredBlock6Step = 43 ifTrue: [
            recoveredLocal1 := recoveredBlock6Stack1.
            recoveredBlock6PC := 46.
        ].
        recoveredBlock6Step = 46 ifTrue: [
            recoveredBlock6Stack1 := nil.
            recoveredBlock6PC := 47.
        ].
        recoveredBlock6Step = 47 ifTrue: [
            recoveredBlock6Stack2 := recoveredLocal1.
            recoveredBlock6PC := 50.
        ].
        recoveredBlock6Step = 50 ifTrue: [
            recoveredBlock6Stack3 := 0.
            recoveredBlock6PC := 52.
        ].
        recoveredBlock6Step = 52 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) < (recoveredBlock6Stack3).
            recoveredBlock6PC := 53.
        ].
        recoveredBlock6Step = 53 ifTrue: [
            (recoveredBlock6Stack2) ifTrue: [recoveredBlock6PC := 56] ifFalse: [recoveredBlock6PC := 65].
        ].
        recoveredBlock6Step = 56 ifTrue: [
            recoveredBlock6PC := 57.
        ].
        recoveredBlock6Step = 57 ifTrue: [
            recoveredBlock6Stack1 := CwMessagePrompter.
            recoveredBlock6PC := 59.
        ].
        recoveredBlock6Step = 59 ifTrue: [
            recoveredBlock6Stack2 := 'Failed to create compressed export files.\See monitor for more information.'.
            recoveredBlock6PC := 61.
        ].
        recoveredBlock6Step = 61 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) withCrs.
            recoveredBlock6PC := 63.
        ].
        recoveredBlock6Step = 63 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) errorMessage: (recoveredBlock6Stack2).
            recoveredBlock6PC := 65.
        ].
        recoveredBlock6Step = 65 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack1.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
    (recoveredValue0) showBusyCursorWhile: (recoveredValue1).
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x203878a4; bytecode file offset 0xc8417c"
!SGExportManager methodsFor: 'recovered'!
createContainerDict: recoveredArg1 notificationWindow: recoveredArg2 withReferences: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := [:recoveredBlock19Arg1 :recoveredBlock19Arg2 | 
    | recoveredBlock19Stack0 recoveredBlock19Stack1 recoveredBlock19Stack2 recoveredBlock19Stack3 recoveredBlock19Stack4 recoveredBlock19Stack5 recoveredBlock19Stack6 recoveredBlock19Stack7 recoveredBlock19Stack8 recoveredBlock19Stack9 recoveredBlock19PC recoveredBlock19Step recoveredBlock19Done recoveredBlock19Result |
    recoveredBlock19Stack0 := self.
    recoveredBlock19PC := 26.
    recoveredBlock19Done := false.
    [recoveredBlock19Done not] whileTrue: [
        recoveredBlock19Step := recoveredBlock19PC.
        recoveredBlock19Step = 26 ifTrue: [
            recoveredBlock19Stack1 := nil.
            recoveredBlock19PC := 27.
        ].
        recoveredBlock19Step = 27 ifTrue: [
            recoveredBlock19Stack2 := recoveredLocal2.
            recoveredBlock19PC := 30.
        ].
        recoveredBlock19Step = 30 ifTrue: [
            recoveredBlock19Stack3 := recoveredBlock19Arg1.
            recoveredBlock19PC := 31.
        ].
        recoveredBlock19Step = 31 ifTrue: [
            recoveredBlock19Stack3 := (recoveredBlock19Stack3) dbObject.
            recoveredBlock19PC := 32.
        ].
        recoveredBlock19Step = 32 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) includes: (recoveredBlock19Stack3).
            recoveredBlock19PC := 34.
        ].
        recoveredBlock19Step = 34 ifTrue: [
            (recoveredBlock19Stack2) ifTrue: [recoveredBlock19PC := 65] ifFalse: [recoveredBlock19PC := 38].
        ].
        recoveredBlock19Step = 38 ifTrue: [
            recoveredBlock19PC := 39.
        ].
        recoveredBlock19Step = 39 ifTrue: [
            recoveredBlock19Stack1 := self.
            recoveredBlock19PC := 40.
        ].
        recoveredBlock19Step = 40 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Arg1.
            recoveredBlock19PC := 41.
        ].
        recoveredBlock19Step = 41 ifTrue: [
            recoveredBlock19Stack3 := recoveredLocal1.
            recoveredBlock19PC := 44.
        ].
        recoveredBlock19Step = 44 ifTrue: [
            recoveredBlock19Stack4 := recoveredLocal2.
            recoveredBlock19PC := 47.
        ].
        recoveredBlock19Step = 47 ifTrue: [
            recoveredBlock19Stack5 := recoveredArg2.
            recoveredBlock19PC := 50.
        ].
        recoveredBlock19Step = 50 ifTrue: [
            recoveredBlock19Stack6 := recoveredArg3.
            recoveredBlock19PC := 53.
        ].
        recoveredBlock19Step = 53 ifTrue: [
            recoveredBlock19Stack7 := recoveredBlock19Arg2.
            recoveredBlock19PC := 54.
        ].
        recoveredBlock19Step = 54 ifTrue: [
            recoveredBlock19Stack7 := (recoveredBlock19Stack7) + (-1).
            recoveredBlock19PC := 55.
        ].
        recoveredBlock19Step = 55 ifTrue: [
            recoveredBlock19Stack8 := recoveredArg1.
            recoveredBlock19PC := 58.
        ].
        recoveredBlock19Step = 58 ifTrue: [
            recoveredBlock19Stack8 := (recoveredBlock19Stack8) size.
            recoveredBlock19PC := 60.
        ].
        recoveredBlock19Step = 60 ifTrue: [
            recoveredBlock19Stack7 := (recoveredBlock19Stack7) / (recoveredBlock19Stack8).
            recoveredBlock19PC := 62.
        ].
        recoveredBlock19Step = 62 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) createContainer: (recoveredBlock19Stack2) dictionary: (recoveredBlock19Stack3) visitSet: (recoveredBlock19Stack4) notificationWindow: (recoveredBlock19Stack5) withReferences: (recoveredBlock19Stack6) parentFraction: (recoveredBlock19Stack7).
            recoveredBlock19PC := 65.
        ].
        recoveredBlock19Step = 65 ifTrue: [
            recoveredBlock19Result := recoveredBlock19Stack1.
            recoveredBlock19Done := true.
        ].
    ].
    recoveredBlock19Result
].
    (recoveredValue4) doWithIndex: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x20391d28; bytecode file offset 0xc8e628"
!SGExportManager methodsFor: 'recovered'!
exportItems: recoveredArg1 toAmdFile: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := System.
    recoveredValue1 := [
    | recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6Stack3 recoveredBlock6Stack4 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) amdExportControllerClass.
            recoveredBlock6PC := 13.
        ].
        recoveredBlock6Step = 13 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) new.
            recoveredBlock6PC := 14.
        ].
        recoveredBlock6Step = 14 ifTrue: [
            recoveredBlock6Stack1 := MainController.
            recoveredBlock6PC := 16.
        ].
        recoveredBlock6Step = 16 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) initOn: (recoveredBlock6Stack1).
            recoveredBlock6PC := 18.
        ].
        recoveredBlock6Step = 18 ifTrue: [
            recoveredBlock6Stack1 := recoveredBlock6Stack0.
            recoveredBlock6PC := 19.
        ].
        recoveredBlock6Step = 19 ifTrue: [
            recoveredBlock6Stack2 := 'amd'.
            recoveredBlock6PC := 21.
        ].
        recoveredBlock6Step = 21 ifTrue: [
            (recoveredBlock6Stack1) xmlExt: (recoveredBlock6Stack2).
            recoveredBlock6Stack1 := recoveredBlock6Stack0.
            recoveredBlock6PC := 24.
        ].
        recoveredBlock6Step = 24 ifTrue: [
            recoveredBlock6Stack2 := self.
            recoveredBlock6PC := 25.
        ].
        recoveredBlock6Step = 25 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) dbController.
            recoveredBlock6PC := 27.
        ].
        recoveredBlock6Step = 27 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) progressWindow.
            recoveredBlock6PC := 29.
        ].
        recoveredBlock6Step = 29 ifTrue: [
            (recoveredBlock6Stack1) progressWindow: (recoveredBlock6Stack2).
            recoveredBlock6PC := 31.
        ].
        recoveredBlock6Step = 31 ifTrue: [
            recoveredBlock6Stack1 := recoveredArg1.
            recoveredBlock6PC := 34.
        ].
        recoveredBlock6Step = 34 ifTrue: [
            recoveredBlock6Stack2 := recoveredArg2.
            recoveredBlock6PC := 37.
        ].
        recoveredBlock6Step = 37 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) pathName.
            recoveredBlock6PC := 39.
        ].
        recoveredBlock6Step = 39 ifTrue: [
            recoveredBlock6Stack3 := false.
            recoveredBlock6PC := 40.
        ].
        recoveredBlock6Step = 40 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) exportComponents: (recoveredBlock6Stack1) to: (recoveredBlock6Stack2) zip: (recoveredBlock6Stack3).
            recoveredBlock6PC := 43.
        ].
        recoveredBlock6Step = 43 ifTrue: [
            recoveredLocal1 := recoveredBlock6Stack0.
            recoveredBlock6PC := 46.
        ].
        recoveredBlock6Step = 46 ifTrue: [
            recoveredBlock6Stack0 := nil.
            recoveredBlock6PC := 47.
        ].
        recoveredBlock6Step = 47 ifTrue: [
            recoveredBlock6Stack1 := #(-1 -2 -3 -4 -5 -6 -7).
            recoveredBlock6PC := 49.
        ].
        recoveredBlock6Step = 49 ifTrue: [
            recoveredBlock6Stack2 := recoveredLocal1.
            recoveredBlock6PC := 52.
        ].
        recoveredBlock6Step = 52 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) includes: (recoveredBlock6Stack2).
            recoveredBlock6PC := 54.
        ].
        recoveredBlock6Step = 54 ifTrue: [
            (recoveredBlock6Stack1) ifTrue: [recoveredBlock6PC := 58] ifFalse: [recoveredBlock6PC := 67].
        ].
        recoveredBlock6Step = 58 ifTrue: [
            recoveredBlock6PC := 59.
        ].
        recoveredBlock6Step = 59 ifTrue: [
            recoveredBlock6Stack0 := CwMessagePrompter.
            recoveredBlock6PC := 61.
        ].
        recoveredBlock6Step = 61 ifTrue: [
            recoveredBlock6Stack1 := 'Failed to create export files.\See monitor for more information.'.
            recoveredBlock6PC := 63.
        ].
        recoveredBlock6Step = 63 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) withCrs.
            recoveredBlock6PC := 65.
        ].
        recoveredBlock6Step = 65 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) errorMessage: (recoveredBlock6Stack1).
            recoveredBlock6PC := 67.
        ].
        recoveredBlock6Step = 67 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack0.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
    (recoveredValue0) showBusyCursorWhile: (recoveredValue1).
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x203b72f0; bytecode file offset 0xcb3be8"
!SGExportManager methodsFor: 'recovered'!
exportItems: recoveredArg1 toAxlFile: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := System.
    recoveredValue1 := [
    | recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6Stack3 recoveredBlock6Stack4 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) amdExportControllerClass.
            recoveredBlock6PC := 13.
        ].
        recoveredBlock6Step = 13 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) new.
            recoveredBlock6PC := 14.
        ].
        recoveredBlock6Step = 14 ifTrue: [
            recoveredBlock6Stack1 := MainController.
            recoveredBlock6PC := 16.
        ].
        recoveredBlock6Step = 16 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) initOn: (recoveredBlock6Stack1).
            recoveredBlock6PC := 18.
        ].
        recoveredBlock6Step = 18 ifTrue: [
            recoveredBlock6Stack1 := recoveredBlock6Stack0.
            recoveredBlock6PC := 19.
        ].
        recoveredBlock6Step = 19 ifTrue: [
            recoveredBlock6Stack2 := 'amd'.
            recoveredBlock6PC := 21.
        ].
        recoveredBlock6Step = 21 ifTrue: [
            (recoveredBlock6Stack1) xmlExt: (recoveredBlock6Stack2).
            recoveredBlock6Stack1 := recoveredBlock6Stack0.
            recoveredBlock6PC := 24.
        ].
        recoveredBlock6Step = 24 ifTrue: [
            recoveredBlock6Stack2 := self.
            recoveredBlock6PC := 25.
        ].
        recoveredBlock6Step = 25 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) dbController.
            recoveredBlock6PC := 27.
        ].
        recoveredBlock6Step = 27 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) progressWindow.
            recoveredBlock6PC := 29.
        ].
        recoveredBlock6Step = 29 ifTrue: [
            (recoveredBlock6Stack1) progressWindow: (recoveredBlock6Stack2).
            recoveredBlock6PC := 31.
        ].
        recoveredBlock6Step = 31 ifTrue: [
            recoveredBlock6Stack1 := recoveredArg1.
            recoveredBlock6PC := 34.
        ].
        recoveredBlock6Step = 34 ifTrue: [
            recoveredBlock6Stack2 := recoveredArg2.
            recoveredBlock6PC := 37.
        ].
        recoveredBlock6Step = 37 ifTrue: [
            recoveredBlock6Stack3 := true.
            recoveredBlock6PC := 38.
        ].
        recoveredBlock6Step = 38 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) exportComponents: (recoveredBlock6Stack1) to: (recoveredBlock6Stack2) zip: (recoveredBlock6Stack3).
            recoveredBlock6PC := 41.
        ].
        recoveredBlock6Step = 41 ifTrue: [
            recoveredLocal1 := recoveredBlock6Stack0.
            recoveredBlock6PC := 44.
        ].
        recoveredBlock6Step = 44 ifTrue: [
            recoveredBlock6Stack0 := nil.
            recoveredBlock6PC := 45.
        ].
        recoveredBlock6Step = 45 ifTrue: [
            recoveredBlock6Stack1 := recoveredLocal1.
            recoveredBlock6PC := 48.
        ].
        recoveredBlock6Step = 48 ifTrue: [
            (recoveredBlock6Stack1 == nil) ifTrue: [recoveredBlock6PC := 73] ifFalse: [recoveredBlock6PC := 52].
        ].
        recoveredBlock6Step = 52 ifTrue: [
            recoveredBlock6Stack1 := recoveredLocal1.
            recoveredBlock6PC := 55.
        ].
        recoveredBlock6Step = 55 ifTrue: [
            recoveredBlock6Stack2 := 0.
            recoveredBlock6PC := 57.
        ].
        recoveredBlock6Step = 57 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) < (recoveredBlock6Stack2).
            recoveredBlock6PC := 58.
        ].
        recoveredBlock6Step = 58 ifTrue: [
            (recoveredBlock6Stack1) ifTrue: [recoveredBlock6PC := 62] ifFalse: [recoveredBlock6PC := 73].
        ].
        recoveredBlock6Step = 62 ifTrue: [
            recoveredBlock6PC := 63.
        ].
        recoveredBlock6Step = 63 ifTrue: [
            recoveredBlock6Stack0 := RBUserInfo.
            recoveredBlock6PC := 65.
        ].
        recoveredBlock6Step = 65 ifTrue: [
            recoveredBlock6Stack1 := 'Failed to create compressed export files.\See monitor for more information.'.
            recoveredBlock6PC := 67.
        ].
        recoveredBlock6Step = 67 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) withCrs.
            recoveredBlock6PC := 69.
        ].
        recoveredBlock6Step = 69 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) errorMessage: (recoveredBlock6Stack1).
            recoveredBlock6PC := 71.
        ].
        recoveredBlock6Step = 71 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) prompt.
            recoveredBlock6PC := 73.
        ].
        recoveredBlock6Step = 73 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack0.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
    (recoveredValue0) showBusyCursorWhile: (recoveredValue1).
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x203bb370; bytecode file offset 0xcb7c58"
!SGExportManager methodsFor: 'recovered'!
checkExportExecutionForDictionary: recoveredArg1 pathName: recoveredArg2 fileName: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) keys.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [:block280f627cArg1 :block280f627cArg2 | 
    | block280f627cValue0 block280f627cValue1 block280f627cValue2 block280f627cValue3 block280f627cValue4 block280f627cValue5 block280f627cValue6 |
    block280f627cValue0 := block280f627cArg1.
    block280f627cValue1 := (block280f627cValue0) getObject.
    block280f627cValue2 := (block280f627cValue1) label.
    block280f627cValue3 := block280f627cArg2.
    block280f627cValue4 := (block280f627cValue3) getObject.
    block280f627cValue5 := (block280f627cValue4) label.
    block280f627cValue6 := (block280f627cValue2) < (block280f627cValue5).
    block280f627cValue6
].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := [:recoveredBlock34Arg1 | 
    | recoveredBlock34Local1 recoveredBlock34Stack0 recoveredBlock34Stack1 recoveredBlock34Stack2 recoveredBlock34Stack3 recoveredBlock34Stack4 recoveredBlock34PC recoveredBlock34Step recoveredBlock34Done recoveredBlock34Result |
    recoveredBlock34Stack0 := self.
    recoveredBlock34PC := 40.
    recoveredBlock34Done := false.
    [recoveredBlock34Done not] whileTrue: [
        recoveredBlock34Step := recoveredBlock34PC.
        recoveredBlock34Step = 40 ifTrue: [
            recoveredBlock34Stack1 := recoveredArg3.
            recoveredBlock34PC := 43.
        ].
        recoveredBlock34Step = 43 ifTrue: [
            recoveredBlock34Stack2 := recoveredBlock34Stack1.
            recoveredBlock34PC := 44.
        ].
        recoveredBlock34Step = 44 ifTrue: [
            recoveredBlock34Local1 := recoveredBlock34Stack2.
            recoveredBlock34PC := 45.
        ].
        recoveredBlock34Step = 45 ifTrue: [
            (recoveredBlock34Stack1 ~~ nil) ifTrue: [recoveredBlock34PC := 64] ifFalse: [recoveredBlock34PC := 48].
        ].
        recoveredBlock34Step = 48 ifTrue: [
            recoveredBlock34Stack1 := recoveredArg1.
            recoveredBlock34PC := 51.
        ].
        recoveredBlock34Step = 51 ifTrue: [
            recoveredBlock34Stack2 := recoveredBlock34Arg1.
            recoveredBlock34PC := 52.
        ].
        recoveredBlock34Step = 52 ifTrue: [
            recoveredBlock34Stack3 := [
    'xml'
].
            recoveredBlock34PC := 54.
        ].
        recoveredBlock34Step = 54 ifTrue: [
            recoveredBlock34PC := 61.
        ].
        recoveredBlock34Step = 61 ifTrue: [
            recoveredBlock34Stack1 := (recoveredBlock34Stack1) at: (recoveredBlock34Stack2) ifAbsent: (recoveredBlock34Stack3).
            recoveredBlock34PC := 63.
        ].
        recoveredBlock34Step = 63 ifTrue: [
            recoveredBlock34Local1 := recoveredBlock34Stack1.
            recoveredBlock34PC := 64.
        ].
        recoveredBlock34Step = 64 ifTrue: [
            recoveredBlock34Stack1 := Array.
            recoveredBlock34PC := 66.
        ].
        recoveredBlock34Step = 66 ifTrue: [
            recoveredBlock34Stack2 := recoveredBlock34Arg1.
            recoveredBlock34PC := 67.
        ].
        recoveredBlock34Step = 67 ifTrue: [
            recoveredBlock34Stack2 := (recoveredBlock34Stack2) getObject.
            recoveredBlock34PC := 68.
        ].
        recoveredBlock34Step = 68 ifTrue: [
            recoveredBlock34Stack1 := (recoveredBlock34Stack1) with: (recoveredBlock34Stack2).
            recoveredBlock34PC := 70.
        ].
        recoveredBlock34Step = 70 ifTrue: [
            recoveredBlock34Stack2 := recoveredArg2.
            recoveredBlock34PC := 73.
        ].
        recoveredBlock34Step = 73 ifTrue: [
            recoveredBlock34Stack3 := recoveredBlock34Local1.
            recoveredBlock34PC := 74.
        ].
        recoveredBlock34Step = 74 ifTrue: [
            recoveredBlock34Stack0 := (recoveredBlock34Stack0) checkExportExecutionForArray: (recoveredBlock34Stack1) pathName: (recoveredBlock34Stack2) fileName: (recoveredBlock34Stack3).
            recoveredBlock34PC := 77.
        ].
        recoveredBlock34Step = 77 ifTrue: [
            recoveredBlock34Result := recoveredBlock34Stack0.
            recoveredBlock34Done := true.
        ].
    ].
    recoveredBlock34Result
].
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20448c78; bytecode file offset 0xd45558"
!SGExportManager methodsFor: 'recovered'!
createFileNameForItem: recoveredArg1 fileNames: recoveredArg2 pathHasLongNames: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultExportFilename.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) shortCutToDOSName.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := '.exp'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 97.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) printString.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := $..
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexOf: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := 'dummy'.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := '.exp'.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredPC := 90.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack4 := (recoveredStack4) size.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (1).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack3 := (recoveredStack3) - (recoveredStack4).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack4 := (recoveredStack4) size.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := (recoveredStack2) copyFrom: (recoveredStack3) to: (recoveredStack4).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 104].
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2045f3dc; bytecode file offset 0xd5bcf0"
!SGExportManager methodsFor: 'recovered'!
exportTempFileNameFor: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_51364'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := OSCall.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) getFullPathName: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) pathName.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) stat: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal5 := recoveredStack2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDir.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := CfsDirectoryDescriptor.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) getTempPath.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) isError.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := PlatformConstants.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := 'MaxPath'.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := [
    260
].
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := String.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := (recoveredStack2) asPSZ.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack3 := 'EXP'.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack3 := (recoveredStack3) asPSZ.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack4 := 0.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack5 := recoveredLocal2.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := (recoveredStack1) getTempFileName: (recoveredStack2) lpszPrefixString: (recoveredStack3) uUnique: (recoveredStack4) lpszTempFileName: (recoveredStack5).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 108] ifFalse: [recoveredPC := 112].
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredPC := 116.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := WinError.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := (recoveredStack1) getLastError.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x204846c0; bytecode file offset 0xd80fb0"
!SGExportManager methodsFor: 'recovered'!
createContainersAndExport: recoveredArg1 path: recoveredArg2 notificationWindow: recoveredArg3 withReferences: recoveredArg4 omitExport: recoveredArg5
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) library.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) commit.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) cr.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := EtExportItemsRecursiveTo.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredPC := 54.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) cr.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := EtExportItemsFlatTo.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := LookupTable.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := Set.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := [:recoveredBlock71Arg1 | 
    | recoveredBlock71Value0 recoveredBlock71Value1 recoveredBlock71Value2 recoveredBlock71Value3 recoveredBlock71Value4 recoveredBlock71Value5 recoveredBlock71Value6 recoveredBlock71Value7 |
    recoveredBlock71Value0 := recoveredBlock71Arg1.
    recoveredBlock71Value1 := recoveredArg2.
    recoveredBlock71Value2 := recoveredArg3.
    recoveredBlock71Value3 := recoveredArg4.
    recoveredBlock71Value4 := recoveredLocal1.
    recoveredBlock71Value5 := recoveredLocal2.
    recoveredBlock71Value6 := recoveredArg5.
    recoveredBlock71Value7 := (self) createContainersAndExport: (recoveredBlock71Value0) path: (recoveredBlock71Value1) notificationWindow: (recoveredBlock71Value2) withReferences: (recoveredBlock71Value3) visitCollection: (recoveredBlock71Value4) fileNameCollection: (recoveredBlock71Value5) omitExport: (recoveredBlock71Value6).
    recoveredBlock71Value7
].
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := (recoveredStack0) keys.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 114] ifFalse: [recoveredPC := 124].
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := EtNoItemsIncluded.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204cf478; bytecode file offset 0xdcbd78"
!SGExportManager methodsFor: 'recovered'!
exportItemsOwnFiles: recoveredArg1 path: recoveredArg2 notificationWindow: recoveredArg3 withReferences: recoveredArg4
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) library.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isWorkspaceMode.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock13Local1 recoveredBlock13Local2 recoveredBlock13Local3 recoveredBlock13Local4 recoveredBlock13Local5 recoveredBlock13Stack0 recoveredBlock13Stack1 recoveredBlock13Stack2 recoveredBlock13Stack3 recoveredBlock13Stack4 recoveredBlock13Stack5 recoveredBlock13Stack6 recoveredBlock13PC recoveredBlock13Step recoveredBlock13Done recoveredBlock13Result |
    recoveredBlock13Stack0 := self.
    recoveredBlock13PC := 20.
    recoveredBlock13Done := false.
    [recoveredBlock13Done not] whileTrue: [
        recoveredBlock13Step := recoveredBlock13PC.
        recoveredBlock13Step = 20 ifTrue: [
            recoveredBlock13Stack1 := RBBcrtl32DLL.
            recoveredBlock13PC := 22.
        ].
        recoveredBlock13Step = 22 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) new.
            recoveredBlock13PC := 23.
        ].
        recoveredBlock13Step = 23 ifTrue: [
            recoveredBlock13Stack2 := recoveredArg2.
            recoveredBlock13PC := 26.
        ].
        recoveredBlock13Step = 26 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) splitPath: (recoveredBlock13Stack2).
            recoveredBlock13PC := 28.
        ].
        recoveredBlock13Step = 28 ifTrue: [
            recoveredBlock13Local4 := recoveredBlock13Stack1.
            recoveredBlock13PC := 31.
        ].
        recoveredBlock13Step = 31 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Local4.
            recoveredBlock13PC := 34.
        ].
        recoveredBlock13Step = 34 ifTrue: [
            recoveredBlock13Stack2 := 1.
            recoveredBlock13PC := 36.
        ].
        recoveredBlock13Step = 36 ifTrue: [
            recoveredBlock13Stack3 := [
    ''
].
            recoveredBlock13PC := 38.
        ].
        recoveredBlock13Step = 38 ifTrue: [
            recoveredBlock13PC := 45.
        ].
        recoveredBlock13Step = 45 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) at: (recoveredBlock13Stack2) ifAbsent: (recoveredBlock13Stack3).
            recoveredBlock13PC := 47.
        ].
        recoveredBlock13Step = 47 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Local4.
            recoveredBlock13PC := 50.
        ].
        recoveredBlock13Step = 50 ifTrue: [
            recoveredBlock13Stack3 := 2.
            recoveredBlock13PC := 52.
        ].
        recoveredBlock13Step = 52 ifTrue: [
            recoveredBlock13Stack4 := [
    ''
].
            recoveredBlock13PC := 54.
        ].
        recoveredBlock13Step = 54 ifTrue: [
            recoveredBlock13PC := 61.
        ].
        recoveredBlock13Step = 61 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) at: (recoveredBlock13Stack3) ifAbsent: (recoveredBlock13Stack4).
            recoveredBlock13PC := 63.
        ].
        recoveredBlock13Step = 63 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) , (recoveredBlock13Stack2).
            recoveredBlock13PC := 65.
        ].
        recoveredBlock13Step = 65 ifTrue: [
            recoveredBlock13Local3 := recoveredBlock13Stack1.
            recoveredBlock13PC := 68.
        ].
        recoveredBlock13Step = 68 ifTrue: [
            recoveredBlock13Stack1 := MainController.
            recoveredBlock13PC := 70.
        ].
        recoveredBlock13Step = 70 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) getLastExportPath.
            recoveredBlock13PC := 72.
        ].
        recoveredBlock13Step = 72 ifTrue: [
            recoveredBlock13Local2 := recoveredBlock13Stack1.
            recoveredBlock13PC := 75.
        ].
        recoveredBlock13Step = 75 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Local3.
            recoveredBlock13PC := 78.
        ].
        recoveredBlock13Step = 78 ifTrue: [
            (recoveredBlock13Stack1 == nil) ifTrue: [recoveredBlock13PC := 97] ifFalse: [recoveredBlock13PC := 82].
        ].
        recoveredBlock13Step = 82 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Local3.
            recoveredBlock13PC := 85.
        ].
        recoveredBlock13Step = 85 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) notEmpty.
            recoveredBlock13PC := 87.
        ].
        recoveredBlock13Step = 87 ifTrue: [
            (recoveredBlock13Stack1) ifTrue: [recoveredBlock13PC := 90] ifFalse: [recoveredBlock13PC := 97].
        ].
        recoveredBlock13Step = 90 ifTrue: [
            recoveredBlock13Stack1 := MainController.
            recoveredBlock13PC := 92.
        ].
        recoveredBlock13Step = 92 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Local3.
            recoveredBlock13PC := 95.
        ].
        recoveredBlock13Step = 95 ifTrue: [
            (recoveredBlock13Stack1) setLastExportPath: (recoveredBlock13Stack2).
            recoveredBlock13PC := 97.
        ].
        recoveredBlock13Step = 97 ifTrue: [
            recoveredBlock13Stack1 := recoveredArg1.
            recoveredBlock13PC := 100.
        ].
        recoveredBlock13Step = 100 ifTrue: [
            recoveredBlock13Stack2 := recoveredArg2.
            recoveredBlock13PC := 103.
        ].
        recoveredBlock13Step = 103 ifTrue: [
            recoveredBlock13Stack3 := recoveredArg3.
            recoveredBlock13PC := 106.
        ].
        recoveredBlock13Step = 106 ifTrue: [
            recoveredBlock13Stack4 := recoveredArg4.
            recoveredBlock13PC := 109.
        ].
        recoveredBlock13Step = 109 ifTrue: [
            recoveredBlock13Stack5 := false.
            recoveredBlock13PC := 110.
        ].
        recoveredBlock13Step = 110 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) createContainersAndExport: (recoveredBlock13Stack1) path: (recoveredBlock13Stack2) notificationWindow: (recoveredBlock13Stack3) withReferences: (recoveredBlock13Stack4) omitExport: (recoveredBlock13Stack5).
            recoveredBlock13PC := 113.
        ].
        recoveredBlock13Step = 113 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Stack0.
            recoveredBlock13PC := 114.
        ].
        recoveredBlock13Step = 114 ifTrue: [
            recoveredBlock13Local1 := recoveredBlock13Stack1.
            recoveredBlock13PC := 117.
        ].
        recoveredBlock13Step = 117 ifTrue: [
            (recoveredBlock13Stack0 == nil) ifTrue: [recoveredBlock13PC := 141] ifFalse: [recoveredBlock13PC := 120].
        ].
        recoveredBlock13Step = 120 ifTrue: [
            recoveredBlock13Stack0 := self.
            recoveredBlock13PC := 121.
        ].
        recoveredBlock13Step = 121 ifTrue: [
            recoveredBlock13Stack1 := [
    | recoveredBlock13Block121Value0 recoveredBlock13Block121Value1 recoveredBlock13Block121Value2 |
    recoveredBlock13Block121Value0 := recoveredBlock13Local1.
    recoveredBlock13Block121Value1 := recoveredArg2.
    recoveredBlock13Block121Value2 := (self) checkExportExecutionForDictionary: (recoveredBlock13Block121Value0) pathName: (recoveredBlock13Block121Value1) fileName: (nil).
    recoveredBlock13Block121Value2
].
            recoveredBlock13PC := 139.
        ].
        recoveredBlock13Step = 139 ifTrue: [
            (recoveredBlock13Stack0) doInExceptionBlock: (recoveredBlock13Stack1).
            recoveredBlock13PC := 141.
        ].
        recoveredBlock13Step = 141 ifTrue: [
            recoveredBlock13Stack0 := MainController.
            recoveredBlock13PC := 143.
        ].
        recoveredBlock13Step = 143 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Local2.
            recoveredBlock13PC := 146.
        ].
        recoveredBlock13Step = 146 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) setLastExportPath: (recoveredBlock13Stack1).
            recoveredBlock13PC := 148.
        ].
        recoveredBlock13Step = 148 ifTrue: [
            recoveredBlock13Result := recoveredBlock13Stack0.
            recoveredBlock13Done := true.
        ].
    ].
    recoveredBlock13Result
].
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack2 := EtExportItems.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            (recoveredStack0) evaluateBlock: (recoveredStack1) label: (recoveredStack2).
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2052e890; bytecode file offset 0xe2b1d0"
!SGExportManager methodsFor: 'recovered'!
createContainerDict: recoveredArg1 path: recoveredArg2 notificationWindow: recoveredArg3 withReferences: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack2) cr.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := EtExportItemsRecursiveTo.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := (recoveredStack3) bindWith: (recoveredStack4).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 41.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack2) cr.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := EtExportItemsFlatTo.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := (recoveredStack3) bindWith: (recoveredStack4).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := recoveredArg4.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) createContainerDict: (recoveredStack1) notificationWindow: (recoveredStack2) withReferences: (recoveredStack3).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := EtCannotExportWithoutItemsIncluded.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := EtExportAborted.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := 'Kk'.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := 'ASC_MaxDatabaseSize'.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := (recoveredStack0) exportDictionary: (recoveredStack1) path: (recoveredStack2).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 102] ifFalse: [recoveredPC := 159].
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack2 := (recoveredStack2) messageText.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack3 := ' '.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack2 := EtExportAborted.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := (recoveredStack1) messageText.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack2 := '\Export File: %1\Temporary Directory: %2'.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack2 := (recoveredStack2) withCrs.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack3 := CfsDirectoryDescriptor.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack3 := (recoveredStack3) getTempPath.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack2 := EtExportAbortedMessage.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            (recoveredStack1) title: (recoveredStack2).
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack0 := (recoveredStack0) keys.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := [:block2810d290Arg1 | 
    | block2810d290Value0 block2810d290Value1 |
    block2810d290Value0 := block2810d290Arg1.
    block2810d290Value1 := (block2810d290Value0) item.
    block2810d290Value1
].
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack1 := [:block2810d2b4Arg1 | 
    | block2810d2b4Value0 block2810d2b4Value1 |
    block2810d2b4Value0 := block2810d2b4Arg1.
    block2810d2b4Value1 := (block2810d2b4Value0) notNil.
    block2810d2b4Value1
].
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack1 := [:block2810d2d8Arg1 :block2810d2d8Arg2 | 
    | block2810d2d8Value0 block2810d2d8Value1 block2810d2d8Value2 block2810d2d8Value3 block2810d2d8Value4 |
    block2810d2d8Value0 := block2810d2d8Arg1.
    block2810d2d8Value1 := (block2810d2d8Value0) label.
    block2810d2d8Value2 := block2810d2d8Arg2.
    block2810d2d8Value3 := (block2810d2d8Value2) label.
    block2810d2d8Value4 := (block2810d2d8Value1) < (block2810d2d8Value3).
    block2810d2d8Value4
].
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2057dd78; bytecode file offset 0xe7a6a8"
!SGExportManager methodsFor: 'recovered'!
exportItemsOneFile: recoveredArg1 path: recoveredArg2 notificationWindow: recoveredArg3 withReferences: recoveredArg4
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) library.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isWorkspaceMode.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := 'Kk'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := 'Call_51364'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock19Local1 recoveredBlock19Local2 recoveredBlock19Local3 recoveredBlock19Local4 recoveredBlock19Local5 recoveredBlock19Stack0 recoveredBlock19Stack1 recoveredBlock19Stack2 recoveredBlock19Stack3 recoveredBlock19Stack4 recoveredBlock19Stack5 recoveredBlock19PC recoveredBlock19Step recoveredBlock19Done recoveredBlock19Result |
    recoveredBlock19Stack0 := self.
    recoveredBlock19PC := 26.
    recoveredBlock19Done := false.
    [recoveredBlock19Done not] whileTrue: [
        recoveredBlock19Step := recoveredBlock19PC.
        recoveredBlock19Step = 26 ifTrue: [
            recoveredBlock19Stack1 := RBBcrtl32DLL.
            recoveredBlock19PC := 28.
        ].
        recoveredBlock19Step = 28 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) new.
            recoveredBlock19PC := 30.
        ].
        recoveredBlock19Step = 30 ifTrue: [
            recoveredBlock19Stack2 := recoveredArg2.
            recoveredBlock19PC := 33.
        ].
        recoveredBlock19Step = 33 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) splitPath: (recoveredBlock19Stack2).
            recoveredBlock19PC := 35.
        ].
        recoveredBlock19Step = 35 ifTrue: [
            recoveredBlock19Local4 := recoveredBlock19Stack1.
            recoveredBlock19PC := 38.
        ].
        recoveredBlock19Step = 38 ifTrue: [
            recoveredBlock19Stack1 := recoveredBlock19Local4.
            recoveredBlock19PC := 41.
        ].
        recoveredBlock19Step = 41 ifTrue: [
            recoveredBlock19Stack2 := 1.
            recoveredBlock19PC := 43.
        ].
        recoveredBlock19Step = 43 ifTrue: [
            recoveredBlock19Stack3 := [
    ''
].
            recoveredBlock19PC := 45.
        ].
        recoveredBlock19Step = 45 ifTrue: [
            recoveredBlock19PC := 51.
        ].
        recoveredBlock19Step = 51 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) at: (recoveredBlock19Stack2) ifAbsent: (recoveredBlock19Stack3).
            recoveredBlock19PC := 53.
        ].
        recoveredBlock19Step = 53 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Local4.
            recoveredBlock19PC := 56.
        ].
        recoveredBlock19Step = 56 ifTrue: [
            recoveredBlock19Stack3 := 2.
            recoveredBlock19PC := 58.
        ].
        recoveredBlock19Step = 58 ifTrue: [
            recoveredBlock19Stack4 := [
    ''
].
            recoveredBlock19PC := 60.
        ].
        recoveredBlock19Step = 60 ifTrue: [
            recoveredBlock19PC := 67.
        ].
        recoveredBlock19Step = 67 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) at: (recoveredBlock19Stack3) ifAbsent: (recoveredBlock19Stack4).
            recoveredBlock19PC := 69.
        ].
        recoveredBlock19Step = 69 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) , (recoveredBlock19Stack2).
            recoveredBlock19PC := 71.
        ].
        recoveredBlock19Step = 71 ifTrue: [
            recoveredBlock19Local3 := recoveredBlock19Stack1.
            recoveredBlock19PC := 74.
        ].
        recoveredBlock19Step = 74 ifTrue: [
            recoveredBlock19Stack1 := MainController.
            recoveredBlock19PC := 76.
        ].
        recoveredBlock19Step = 76 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) getLastExportPath.
            recoveredBlock19PC := 78.
        ].
        recoveredBlock19Step = 78 ifTrue: [
            recoveredBlock19Local2 := recoveredBlock19Stack1.
            recoveredBlock19PC := 81.
        ].
        recoveredBlock19Step = 81 ifTrue: [
            recoveredBlock19Stack1 := recoveredBlock19Local3.
            recoveredBlock19PC := 84.
        ].
        recoveredBlock19Step = 84 ifTrue: [
            (recoveredBlock19Stack1 == nil) ifTrue: [recoveredBlock19PC := 103] ifFalse: [recoveredBlock19PC := 88].
        ].
        recoveredBlock19Step = 88 ifTrue: [
            recoveredBlock19Stack1 := recoveredBlock19Local3.
            recoveredBlock19PC := 91.
        ].
        recoveredBlock19Step = 91 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) notEmpty.
            recoveredBlock19PC := 93.
        ].
        recoveredBlock19Step = 93 ifTrue: [
            (recoveredBlock19Stack1) ifTrue: [recoveredBlock19PC := 96] ifFalse: [recoveredBlock19PC := 103].
        ].
        recoveredBlock19Step = 96 ifTrue: [
            recoveredBlock19Stack1 := MainController.
            recoveredBlock19PC := 98.
        ].
        recoveredBlock19Step = 98 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Local3.
            recoveredBlock19PC := 101.
        ].
        recoveredBlock19Step = 101 ifTrue: [
            (recoveredBlock19Stack1) setLastExportPath: (recoveredBlock19Stack2).
            recoveredBlock19PC := 103.
        ].
        recoveredBlock19Step = 103 ifTrue: [
            recoveredBlock19Stack1 := recoveredArg2.
            recoveredBlock19PC := 106.
        ].
        recoveredBlock19Step = 106 ifTrue: [
            recoveredBlock19Stack0 := (recoveredBlock19Stack0) exportTempFileNameFor: (recoveredBlock19Stack1).
            recoveredBlock19PC := 108.
        ].
        recoveredBlock19Step = 108 ifTrue: [
            recoveredBlock19Local1 := recoveredBlock19Stack0.
            recoveredBlock19PC := 111.
        ].
        recoveredBlock19Step = 111 ifTrue: [
            recoveredBlock19Stack0 := recoveredBlock19Local1.
            recoveredBlock19PC := 114.
        ].
        recoveredBlock19Step = 114 ifTrue: [
            recoveredBlock19Stack0 := (recoveredBlock19Stack0) isError.
            recoveredBlock19PC := 116.
        ].
        recoveredBlock19Step = 116 ifTrue: [
            (recoveredBlock19Stack0) ifTrue: [recoveredBlock19PC := 120] ifFalse: [recoveredBlock19PC := 122].
        ].
        recoveredBlock19Step = 120 ifTrue: [
            recoveredBlock19Stack0 := nil.
            recoveredBlock19PC := 121.
        ].
        recoveredBlock19Step = 121 ifTrue: [
            ^recoveredBlock19Stack0
        ].
        recoveredBlock19Step = 122 ifTrue: [
            recoveredBlock19Stack0 := self.
            recoveredBlock19PC := 123.
        ].
        recoveredBlock19Step = 123 ifTrue: [
            recoveredBlock19Stack1 := recoveredArg1.
            recoveredBlock19PC := 126.
        ].
        recoveredBlock19Step = 126 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Local1.
            recoveredBlock19PC := 129.
        ].
        recoveredBlock19Step = 129 ifTrue: [
            recoveredBlock19Stack3 := recoveredArg3.
            recoveredBlock19PC := 132.
        ].
        recoveredBlock19Step = 132 ifTrue: [
            recoveredBlock19Stack4 := recoveredArg4.
            recoveredBlock19PC := 135.
        ].
        recoveredBlock19Step = 135 ifTrue: [
            recoveredBlock19Stack0 := (recoveredBlock19Stack0) createContainerDict: (recoveredBlock19Stack1) path: (recoveredBlock19Stack2) notificationWindow: (recoveredBlock19Stack3) withReferences: (recoveredBlock19Stack4).
            recoveredBlock19PC := 138.
        ].
        recoveredBlock19Step = 138 ifTrue: [
            recoveredBlock19Local5 := recoveredBlock19Stack0.
            recoveredBlock19PC := 141.
        ].
        recoveredBlock19Step = 141 ifTrue: [
            recoveredBlock19Stack0 := recoveredBlock19Local5.
            recoveredBlock19PC := 144.
        ].
        recoveredBlock19Step = 144 ifTrue: [
            (recoveredBlock19Stack0 == nil) ifTrue: [recoveredBlock19PC := 160] ifFalse: [recoveredBlock19PC := 148].
        ].
        recoveredBlock19Step = 148 ifTrue: [
            recoveredBlock19Stack0 := CfsStat.
            recoveredBlock19PC := 150.
        ].
        recoveredBlock19Step = 150 ifTrue: [
            recoveredBlock19Stack1 := recoveredBlock19Local1.
            recoveredBlock19PC := 153.
        ].
        recoveredBlock19Step = 153 ifTrue: [
            recoveredBlock19Stack0 := (recoveredBlock19Stack0) getFileSize: (recoveredBlock19Stack1).
            recoveredBlock19PC := 155.
        ].
        recoveredBlock19Step = 155 ifTrue: [
            recoveredBlock19Stack1 := 0.
            recoveredBlock19PC := 157.
        ].
        recoveredBlock19Step = 157 ifTrue: [
            (recoveredBlock19Stack0 ~~ recoveredBlock19Stack1) ifTrue: [recoveredBlock19PC := 174] ifFalse: [recoveredBlock19PC := 160].
        ].
        recoveredBlock19Step = 160 ifTrue: [
            recoveredBlock19Stack0 := CfsFileDescriptor.
            recoveredBlock19PC := 162.
        ].
        recoveredBlock19Step = 162 ifTrue: [
            recoveredBlock19Stack1 := recoveredBlock19Local1.
            recoveredBlock19PC := 165.
        ].
        recoveredBlock19Step = 165 ifTrue: [
            (recoveredBlock19Stack0) remove: (recoveredBlock19Stack1).
            recoveredBlock19PC := 167.
        ].
        recoveredBlock19Step = 167 ifTrue: [
            recoveredBlock19Stack0 := nil.
            recoveredBlock19PC := 168.
        ].
        recoveredBlock19Step = 168 ifTrue: [
            recoveredBlock19Local5 := recoveredBlock19Stack0.
            recoveredBlock19PC := 171.
        ].
        recoveredBlock19Step = 171 ifTrue: [
            recoveredBlock19PC := 243.
        ].
        recoveredBlock19Step = 174 ifTrue: [
            recoveredBlock19Stack0 := CfsStat.
            recoveredBlock19PC := 176.
        ].
        recoveredBlock19Step = 176 ifTrue: [
            recoveredBlock19Stack1 := recoveredArg2.
            recoveredBlock19PC := 179.
        ].
        recoveredBlock19Step = 179 ifTrue: [
            recoveredBlock19Stack0 := (recoveredBlock19Stack0) exists: (recoveredBlock19Stack1).
            recoveredBlock19PC := 181.
        ].
        recoveredBlock19Step = 181 ifTrue: [
            (recoveredBlock19Stack0) ifTrue: [recoveredBlock19PC := 184] ifFalse: [recoveredBlock19PC := 191].
        ].
        recoveredBlock19Step = 184 ifTrue: [
            recoveredBlock19Stack0 := CfsFileDescriptor.
            recoveredBlock19PC := 186.
        ].
        recoveredBlock19Step = 186 ifTrue: [
            recoveredBlock19Stack1 := recoveredArg2.
            recoveredBlock19PC := 189.
        ].
        recoveredBlock19Step = 189 ifTrue: [
            (recoveredBlock19Stack0) remove: (recoveredBlock19Stack1).
            recoveredBlock19PC := 191.
        ].
        recoveredBlock19Step = 191 ifTrue: [
            recoveredBlock19Stack0 := OSCall.
            recoveredBlock19PC := 193.
        ].
        recoveredBlock19Step = 193 ifTrue: [
            recoveredBlock19Stack0 := (recoveredBlock19Stack0) new.
            recoveredBlock19PC := 195.
        ].
        recoveredBlock19Step = 195 ifTrue: [
            recoveredBlock19Stack1 := recoveredBlock19Local1.
            recoveredBlock19PC := 198.
        ].
        recoveredBlock19Step = 198 ifTrue: [
            recoveredBlock19Stack2 := recoveredArg2.
            recoveredBlock19PC := 201.
        ].
        recoveredBlock19Step = 201 ifTrue: [
            (recoveredBlock19Stack0) moveFile: (recoveredBlock19Stack1) lpszNew: (recoveredBlock19Stack2).
            recoveredBlock19PC := 203.
        ].
        recoveredBlock19Step = 203 ifTrue: [
            recoveredBlock19Stack0 := self.
            recoveredBlock19PC := 204.
        ].
        recoveredBlock19Step = 204 ifTrue: [
            recoveredBlock19Stack1 := [
    | recoveredBlock19Block204Local1 recoveredBlock19Block204Stack0 recoveredBlock19Block204Stack1 recoveredBlock19Block204Stack2 recoveredBlock19Block204Stack3 recoveredBlock19Block204Stack4 recoveredBlock19Block204Stack5 recoveredBlock19Block204PC recoveredBlock19Block204Step recoveredBlock19Block204Done recoveredBlock19Block204Result |
    recoveredBlock19Block204Stack0 := self.
    recoveredBlock19Block204PC := 210.
    recoveredBlock19Block204Done := false.
    [recoveredBlock19Block204Done not] whileTrue: [
        recoveredBlock19Block204Step := recoveredBlock19Block204PC.
        recoveredBlock19Block204Step = 210 ifTrue: [
            recoveredBlock19Block204Stack1 := nil.
            recoveredBlock19Block204PC := 211.
        ].
        recoveredBlock19Block204Step = 211 ifTrue: [
            recoveredBlock19Block204Stack2 := recoveredArg2.
            recoveredBlock19Block204PC := 214.
        ].
        recoveredBlock19Block204Step = 214 ifTrue: [
            recoveredBlock19Block204Stack2 := (recoveredBlock19Block204Stack2) fileNameOnly.
            recoveredBlock19Block204PC := 216.
        ].
        recoveredBlock19Block204Step = 216 ifTrue: [
            recoveredBlock19Block204Stack3 := recoveredBlock19Block204Stack2.
            recoveredBlock19Block204PC := 217.
        ].
        recoveredBlock19Block204Step = 217 ifTrue: [
            recoveredBlock19Block204Local1 := recoveredBlock19Block204Stack3.
            recoveredBlock19Block204PC := 218.
        ].
        recoveredBlock19Block204Step = 218 ifTrue: [
            (recoveredBlock19Block204Stack2 == nil) ifTrue: [recoveredBlock19Block204PC := 240] ifFalse: [recoveredBlock19Block204PC := 222].
        ].
        recoveredBlock19Block204Step = 222 ifTrue: [
            recoveredBlock19Block204Stack2 := recoveredBlock19Block204Local1.
            recoveredBlock19Block204PC := 223.
        ].
        recoveredBlock19Block204Step = 223 ifTrue: [
            recoveredBlock19Block204Stack2 := (recoveredBlock19Block204Stack2) notEmpty.
            recoveredBlock19Block204PC := 225.
        ].
        recoveredBlock19Block204Step = 225 ifTrue: [
            (recoveredBlock19Block204Stack2) ifTrue: [recoveredBlock19Block204PC := 228] ifFalse: [recoveredBlock19Block204PC := 240].
        ].
        recoveredBlock19Block204Step = 228 ifTrue: [
            recoveredBlock19Block204PC := 229.
        ].
        recoveredBlock19Block204Step = 229 ifTrue: [
            recoveredBlock19Block204Stack1 := self.
            recoveredBlock19Block204PC := 230.
        ].
        recoveredBlock19Block204Step = 230 ifTrue: [
            recoveredBlock19Block204Stack2 := recoveredBlock19Local5.
            recoveredBlock19Block204PC := 233.
        ].
        recoveredBlock19Block204Step = 233 ifTrue: [
            recoveredBlock19Block204Stack3 := recoveredBlock19Local3.
            recoveredBlock19Block204PC := 236.
        ].
        recoveredBlock19Block204Step = 236 ifTrue: [
            recoveredBlock19Block204Stack4 := recoveredBlock19Block204Local1.
            recoveredBlock19Block204PC := 237.
        ].
        recoveredBlock19Block204Step = 237 ifTrue: [
            recoveredBlock19Block204Stack1 := (recoveredBlock19Block204Stack1) checkExportExecutionForArray: (recoveredBlock19Block204Stack2) pathName: (recoveredBlock19Block204Stack3) fileName: (recoveredBlock19Block204Stack4).
            recoveredBlock19Block204PC := 240.
        ].
        recoveredBlock19Block204Step = 240 ifTrue: [
            recoveredBlock19Block204Result := recoveredBlock19Block204Stack1.
            recoveredBlock19Block204Done := true.
        ].
    ].
    recoveredBlock19Block204Result
].
            recoveredBlock19PC := 241.
        ].
        recoveredBlock19Step = 241 ifTrue: [
            (recoveredBlock19Stack0) doInExceptionBlock: (recoveredBlock19Stack1).
            recoveredBlock19PC := 243.
        ].
        recoveredBlock19Step = 243 ifTrue: [
            recoveredBlock19Stack0 := MainController.
            recoveredBlock19PC := 245.
        ].
        recoveredBlock19Step = 245 ifTrue: [
            recoveredBlock19Stack1 := recoveredBlock19Local2.
            recoveredBlock19PC := 248.
        ].
        recoveredBlock19Step = 248 ifTrue: [
            (recoveredBlock19Stack0) setLastExportPath: (recoveredBlock19Stack1).
            recoveredBlock19PC := 250.
        ].
        recoveredBlock19Step = 250 ifTrue: [
            recoveredBlock19Stack0 := recoveredBlock19Local5.
            recoveredBlock19PC := 253.
        ].
        recoveredBlock19Step = 253 ifTrue: [
            recoveredBlock19Result := recoveredBlock19Stack0.
            recoveredBlock19Done := true.
        ].
    ].
    recoveredBlock19Result
].
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack2 := 'Export items...'.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack0 := (recoveredStack0) evaluateBlock: (recoveredStack1) label: (recoveredStack2).
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205c44a8; bytecode file offset 0xec0e1c"
!SGExportManager methodsFor: 'recovered'!
exportConfig: recoveredArg1 exportPath: recoveredArg2 notificationWindow: recoveredArg3 headerKey: recoveredArg4 userInterface: recoveredArg5
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) headerKey: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultExportFilename.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 37.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := 'config.exp'.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := ETASFileParsing.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := CfsDirectoryDescriptor.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) getTempPath.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := 'Exp'.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) getTempFileNameIn: (recoveredStack1) prefix: (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 69] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := 'Failed to create temporyry file in %1. Operation aborted.'.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := CfsDirectoryDescriptor.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := (recoveredStack2) getTempPath.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0) addErrorText: (recoveredStack1).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := Dictionary.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := '*.exp'.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack3 := EtExpFile.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := '*.exp'.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := MainController.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := 'Export File'.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := (recoveredStack2) fileNameOnly.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack5 := recoveredLocal3.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack6 := false.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack7 := false.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack8 := recoveredArg5.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack9 := [:recoveredBlock111Arg1 | 
    | recoveredBlock111Stack0 recoveredBlock111Stack1 recoveredBlock111Stack2 recoveredBlock111Stack3 recoveredBlock111Stack4 recoveredBlock111PC recoveredBlock111Step recoveredBlock111Done recoveredBlock111Result |
    recoveredBlock111Stack0 := self.
    recoveredBlock111PC := 118.
    recoveredBlock111Done := false.
    [recoveredBlock111Done not] whileTrue: [
        recoveredBlock111Step := recoveredBlock111PC.
        recoveredBlock111Step = 118 ifTrue: [
            recoveredBlock111Stack1 := CfsStat.
            recoveredBlock111PC := 120.
        ].
        recoveredBlock111Step = 120 ifTrue: [
            recoveredBlock111Stack2 := recoveredBlock111Arg1.
            recoveredBlock111PC := 121.
        ].
        recoveredBlock111Step = 121 ifTrue: [
            recoveredBlock111Stack1 := (recoveredBlock111Stack1) exists: (recoveredBlock111Stack2).
            recoveredBlock111PC := 123.
        ].
        recoveredBlock111Step = 123 ifTrue: [
            (recoveredBlock111Stack1) ifTrue: [recoveredBlock111PC := 126] ifFalse: [recoveredBlock111PC := 134].
        ].
        recoveredBlock111Step = 126 ifTrue: [
            recoveredBlock111Stack1 := CfsFileDescriptor.
            recoveredBlock111PC := 128.
        ].
        recoveredBlock111Step = 128 ifTrue: [
            recoveredBlock111Stack2 := recoveredBlock111Arg1.
            recoveredBlock111PC := 129.
        ].
        recoveredBlock111Step = 129 ifTrue: [
            recoveredBlock111Stack3 := recoveredLocal6.
            recoveredBlock111PC := 132.
        ].
        recoveredBlock111Step = 132 ifTrue: [
            (recoveredBlock111Stack1) copy: (recoveredBlock111Stack2) over: (recoveredBlock111Stack3).
            recoveredBlock111PC := 134.
        ].
        recoveredBlock111Step = 134 ifTrue: [
            recoveredBlock111Stack1 := CfsFileDescriptor.
            recoveredBlock111PC := 136.
        ].
        recoveredBlock111Step = 136 ifTrue: [
            recoveredBlock111Stack2 := recoveredBlock111Arg1.
            recoveredBlock111PC := 137.
        ].
        recoveredBlock111Step = 137 ifTrue: [
            recoveredBlock111Stack1 := (recoveredBlock111Stack1) remove: (recoveredBlock111Stack2).
            recoveredBlock111PC := 139.
        ].
        recoveredBlock111Step = 139 ifTrue: [
            recoveredBlock111Result := recoveredBlock111Stack1.
            recoveredBlock111Done := true.
        ].
    ].
    recoveredBlock111Result
].
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := (recoveredStack0) promptForFileNameLabel: (recoveredStack1) defaultFileName: (recoveredStack2) searchPath: (recoveredStack3) searchMask: (recoveredStack4) filterDict: (recoveredStack5) shouldExist: (recoveredStack6) multipleSelect: (recoveredStack7) parentWindow: (recoveredStack8) doWithExistingFile: (recoveredStack9).
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 152] ifFalse: [recoveredPC := 150].
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := MainController.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            (recoveredStack0) setLastExportPathFromFile: (recoveredStack1).
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack0 := (recoveredStack0) library.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack0 := (recoveredStack0) isWorkspaceMode.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 168] ifFalse: [recoveredPC := 194].
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileExtension.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack0 := (recoveredStack0) asLowercase.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack1 := 'exp'.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 182] ifFalse: [recoveredPC := 194].
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack1 := 'The EXP format is not supported in Workspace mode!!\Please select another export format!!'.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack1 := (recoveredStack1) withCrs.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorMessage: (recoveredStack1).
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileExtension.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack0 := (recoveredStack0) asLowercase.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack1 := 'exp'.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 208] ifFalse: [recoveredPC := 283].
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock209Local1 recoveredBlock209Stack0 recoveredBlock209Stack1 recoveredBlock209Stack2 recoveredBlock209Stack3 recoveredBlock209Stack4 recoveredBlock209Stack5 recoveredBlock209Stack6 recoveredBlock209Stack7 recoveredBlock209PC recoveredBlock209Step recoveredBlock209Done recoveredBlock209Result |
    recoveredBlock209Stack0 := self.
    recoveredBlock209PC := 216.
    recoveredBlock209Done := false.
    [recoveredBlock209Done not] whileTrue: [
        recoveredBlock209Step := recoveredBlock209PC.
        recoveredBlock209Step = 216 ifTrue: [
            recoveredBlock209Stack1 := nil.
            recoveredBlock209PC := 217.
        ].
        recoveredBlock209Step = 217 ifTrue: [
            recoveredBlock209Stack2 := self.
            recoveredBlock209PC := 218.
        ].
        recoveredBlock209Step = 218 ifTrue: [
            recoveredBlock209Stack3 := recoveredArg1.
            recoveredBlock209PC := 221.
        ].
        recoveredBlock209Step = 221 ifTrue: [
            recoveredBlock209Stack4 := recoveredLocal9.
            recoveredBlock209PC := 224.
        ].
        recoveredBlock209Step = 224 ifTrue: [
            recoveredBlock209Stack5 := recoveredArg3.
            recoveredBlock209PC := 227.
        ].
        recoveredBlock209Step = 227 ifTrue: [
            recoveredBlock209Stack6 := MainController.
            recoveredBlock209PC := 229.
        ].
        recoveredBlock209Step = 229 ifTrue: [
            recoveredBlock209Stack6 := (recoveredBlock209Stack6) asdImportExportOptions.
            recoveredBlock209PC := 231.
        ].
        recoveredBlock209Step = 231 ifTrue: [
            recoveredBlock209Stack6 := (recoveredBlock209Stack6) optionExportIncludeReferencedItems.
            recoveredBlock209PC := 233.
        ].
        recoveredBlock209Step = 233 ifTrue: [
            recoveredBlock209Stack2 := (recoveredBlock209Stack2) createContainerDict: (recoveredBlock209Stack3) path: (recoveredBlock209Stack4) notificationWindow: (recoveredBlock209Stack5) withReferences: (recoveredBlock209Stack6).
            recoveredBlock209PC := 236.
        ].
        recoveredBlock209Step = 236 ifTrue: [
            recoveredBlock209Stack3 := recoveredBlock209Stack2.
            recoveredBlock209PC := 237.
        ].
        recoveredBlock209Step = 237 ifTrue: [
            recoveredLocal7 := recoveredBlock209Stack3.
            recoveredBlock209PC := 240.
        ].
        recoveredBlock209Step = 240 ifTrue: [
            (recoveredBlock209Stack2 == nil) ifTrue: [recoveredBlock209PC := 278] ifFalse: [recoveredBlock209PC := 244].
        ].
        recoveredBlock209Step = 244 ifTrue: [
            recoveredBlock209PC := 245.
        ].
        recoveredBlock209Step = 245 ifTrue: [
            recoveredBlock209Stack1 := nil.
            recoveredBlock209PC := 246.
        ].
        recoveredBlock209Step = 246 ifTrue: [
            recoveredBlock209Stack2 := recoveredLocal9.
            recoveredBlock209PC := 249.
        ].
        recoveredBlock209Step = 249 ifTrue: [
            recoveredBlock209Stack2 := (recoveredBlock209Stack2) fileNameOnly.
            recoveredBlock209PC := 251.
        ].
        recoveredBlock209Step = 251 ifTrue: [
            recoveredBlock209Stack3 := recoveredBlock209Stack2.
            recoveredBlock209PC := 252.
        ].
        recoveredBlock209Step = 252 ifTrue: [
            recoveredBlock209Local1 := recoveredBlock209Stack3.
            recoveredBlock209PC := 253.
        ].
        recoveredBlock209Step = 253 ifTrue: [
            (recoveredBlock209Stack2 == nil) ifTrue: [recoveredBlock209PC := 276] ifFalse: [recoveredBlock209PC := 256].
        ].
        recoveredBlock209Step = 256 ifTrue: [
            recoveredBlock209Stack2 := recoveredBlock209Local1.
            recoveredBlock209PC := 257.
        ].
        recoveredBlock209Step = 257 ifTrue: [
            recoveredBlock209Stack2 := (recoveredBlock209Stack2) notEmpty.
            recoveredBlock209PC := 259.
        ].
        recoveredBlock209Step = 259 ifTrue: [
            (recoveredBlock209Stack2) ifTrue: [recoveredBlock209PC := 262] ifFalse: [recoveredBlock209PC := 276].
        ].
        recoveredBlock209Step = 262 ifTrue: [
            recoveredBlock209PC := 263.
        ].
        recoveredBlock209Step = 263 ifTrue: [
            recoveredBlock209Stack1 := self.
            recoveredBlock209PC := 264.
        ].
        recoveredBlock209Step = 264 ifTrue: [
            recoveredBlock209Stack2 := recoveredLocal7.
            recoveredBlock209PC := 267.
        ].
        recoveredBlock209Step = 267 ifTrue: [
            recoveredBlock209Stack3 := recoveredLocal9.
            recoveredBlock209PC := 270.
        ].
        recoveredBlock209Step = 270 ifTrue: [
            recoveredBlock209Stack3 := (recoveredBlock209Stack3) pathName.
            recoveredBlock209PC := 272.
        ].
        recoveredBlock209Step = 272 ifTrue: [
            recoveredBlock209Stack4 := recoveredBlock209Local1.
            recoveredBlock209PC := 273.
        ].
        recoveredBlock209Step = 273 ifTrue: [
            recoveredBlock209Stack1 := (recoveredBlock209Stack1) checkExportExecutionForArray: (recoveredBlock209Stack2) pathName: (recoveredBlock209Stack3) fileName: (recoveredBlock209Stack4).
            recoveredBlock209PC := 276.
        ].
        recoveredBlock209Step = 276 ifTrue: [
            recoveredBlock209Stack2 := nil.
            recoveredBlock209PC := 277.
        ].
        recoveredBlock209Step = 277 ifTrue: [
            recoveredBlock209Local1 := recoveredBlock209Stack2.
            recoveredBlock209PC := 278.
        ].
        recoveredBlock209Step = 278 ifTrue: [
            recoveredBlock209Result := recoveredBlock209Stack1.
            recoveredBlock209Done := true.
        ].
    ].
    recoveredBlock209Result
].
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack2 := 'Export items...'.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            (recoveredStack0) evaluateBlock: (recoveredStack1) label: (recoveredStack2).
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock284Stack0 recoveredBlock284Stack1 recoveredBlock284Stack2 recoveredBlock284Stack3 recoveredBlock284Stack4 recoveredBlock284PC recoveredBlock284Step recoveredBlock284Done recoveredBlock284Result |
    recoveredBlock284Stack0 := self.
    recoveredBlock284PC := 290.
    recoveredBlock284Done := false.
    [recoveredBlock284Done not] whileTrue: [
        recoveredBlock284Step := recoveredBlock284PC.
        recoveredBlock284Step = 290 ifTrue: [
            recoveredBlock284Stack1 := nil.
            recoveredBlock284PC := 291.
        ].
        recoveredBlock284Step = 291 ifTrue: [
            recoveredBlock284Stack2 := CfsStat.
            recoveredBlock284PC := 293.
        ].
        recoveredBlock284Step = 293 ifTrue: [
            recoveredBlock284Stack3 := recoveredLocal6.
            recoveredBlock284PC := 296.
        ].
        recoveredBlock284Step = 296 ifTrue: [
            recoveredBlock284Stack2 := (recoveredBlock284Stack2) exists: (recoveredBlock284Stack3).
            recoveredBlock284PC := 298.
        ].
        recoveredBlock284Step = 298 ifTrue: [
            (recoveredBlock284Stack2) ifTrue: [recoveredBlock284PC := 302] ifFalse: [recoveredBlock284PC := 327].
        ].
        recoveredBlock284Step = 302 ifTrue: [
            recoveredBlock284PC := 303.
        ].
        recoveredBlock284Step = 303 ifTrue: [
            recoveredBlock284Stack1 := recoveredLocal7.
            recoveredBlock284PC := 306.
        ].
        recoveredBlock284Step = 306 ifTrue: [
            (recoveredBlock284Stack1 ~~ nil) ifTrue: [recoveredBlock284PC := 320] ifFalse: [recoveredBlock284PC := 310].
        ].
        recoveredBlock284Step = 310 ifTrue: [
            recoveredBlock284Stack1 := ETASFileParsing.
            recoveredBlock284PC := 312.
        ].
        recoveredBlock284Step = 312 ifTrue: [
            recoveredBlock284Stack2 := recoveredLocal6.
            recoveredBlock284PC := 315.
        ].
        recoveredBlock284Step = 315 ifTrue: [
            recoveredBlock284Stack3 := recoveredLocal9.
            recoveredBlock284PC := 318.
        ].
        recoveredBlock284Step = 318 ifTrue: [
            (recoveredBlock284Stack1) copy: (recoveredBlock284Stack2) to: (recoveredBlock284Stack3).
            recoveredBlock284PC := 320.
        ].
        recoveredBlock284Step = 320 ifTrue: [
            recoveredBlock284Stack1 := CfsFileDescriptor.
            recoveredBlock284PC := 322.
        ].
        recoveredBlock284Step = 322 ifTrue: [
            recoveredBlock284Stack2 := recoveredLocal6.
            recoveredBlock284PC := 325.
        ].
        recoveredBlock284Step = 325 ifTrue: [
            recoveredBlock284Stack1 := (recoveredBlock284Stack1) remove: (recoveredBlock284Stack2).
            recoveredBlock284PC := 327.
        ].
        recoveredBlock284Step = 327 ifTrue: [
            recoveredBlock284Result := recoveredBlock284Stack1.
            recoveredBlock284Done := true.
        ].
    ].
    recoveredBlock284Result
].
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            (recoveredStack0) doInExceptionBlock: (recoveredStack1).
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205d5574; bytecode file offset 0xed1edc"
!SGExportManager methodsFor: 'recovered'!
createContainer: recoveredArg1 dictionary: recoveredArg2 visitSet: recoveredArg3 notificationWindow: recoveredArg4 withReferences: recoveredArg5 parentFraction: recoveredArg6
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) getLibrary.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal5 := recoveredStack2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 43] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRuntime.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 41] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := RBUserInfo.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := 'Item '.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := (recoveredStack3) label.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := ' has no Lib !!'.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) prompt.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := (recoveredStack2) dbObject.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := 'Call_71182'.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) dbController.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) progressWindow.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := [:recoveredBlock68Arg1 | 
    | recoveredBlock68Stack0 recoveredBlock68Stack1 recoveredBlock68Stack2 recoveredBlock68Stack3 recoveredBlock68Stack4 recoveredBlock68Stack5 recoveredBlock68PC recoveredBlock68Step recoveredBlock68Done recoveredBlock68Result |
    recoveredBlock68Stack0 := self.
    recoveredBlock68PC := 74.
    recoveredBlock68Done := false.
    [recoveredBlock68Done not] whileTrue: [
        recoveredBlock68Step := recoveredBlock68PC.
        recoveredBlock68Step = 74 ifTrue: [
            recoveredBlock68Stack1 := recoveredBlock68Arg1.
            recoveredBlock68PC := 75.
        ].
        recoveredBlock68Step = 75 ifTrue: [
            recoveredBlock68Stack2 := 'Collecting items for export\Amount: %1\Name: %2'.
            recoveredBlock68PC := 77.
        ].
        recoveredBlock68Step = 77 ifTrue: [
            recoveredBlock68Stack2 := (recoveredBlock68Stack2) withCrs.
            recoveredBlock68PC := 79.
        ].
        recoveredBlock68Step = 79 ifTrue: [
            recoveredBlock68Stack3 := recoveredArg2.
            recoveredBlock68PC := 82.
        ].
        recoveredBlock68Step = 82 ifTrue: [
            recoveredBlock68Stack3 := (recoveredBlock68Stack3) size.
            recoveredBlock68PC := 84.
        ].
        recoveredBlock68Step = 84 ifTrue: [
            recoveredBlock68Stack3 := (recoveredBlock68Stack3) asString.
            recoveredBlock68PC := 86.
        ].
        recoveredBlock68Step = 86 ifTrue: [
            recoveredBlock68Stack4 := recoveredArg1.
            recoveredBlock68PC := 89.
        ].
        recoveredBlock68Step = 89 ifTrue: [
            recoveredBlock68Stack4 := (recoveredBlock68Stack4) label.
            recoveredBlock68PC := 91.
        ].
        recoveredBlock68Step = 91 ifTrue: [
            recoveredBlock68Stack2 := (recoveredBlock68Stack2) bindWith: (recoveredBlock68Stack3) with: (recoveredBlock68Stack4).
            recoveredBlock68PC := 93.
        ].
        recoveredBlock68Step = 93 ifTrue: [
            (recoveredBlock68Stack1) messageString: (recoveredBlock68Stack2).
            recoveredBlock68PC := 95.
        ].
        recoveredBlock68Step = 95 ifTrue: [
            recoveredBlock68Stack1 := recoveredBlock68Arg1.
            recoveredBlock68PC := 96.
        ].
        recoveredBlock68Step = 96 ifTrue: [
            recoveredBlock68Stack1 := (recoveredBlock68Stack1) cancelled.
            recoveredBlock68PC := 98.
        ].
        recoveredBlock68Step = 98 ifTrue: [
            (recoveredBlock68Stack1) ifTrue: [recoveredBlock68PC := 102] ifFalse: [recoveredBlock68PC := 116].
        ].
        recoveredBlock68Step = 102 ifTrue: [
            recoveredBlock68Stack1 := recoveredArg2.
            recoveredBlock68PC := 105.
        ].
        recoveredBlock68Step = 105 ifTrue: [
            recoveredBlock68Stack2 := recoveredArg2.
            recoveredBlock68PC := 108.
        ].
        recoveredBlock68Step = 108 ifTrue: [
            recoveredBlock68Stack2 := (recoveredBlock68Stack2) keys.
            recoveredBlock68PC := 110.
        ].
        recoveredBlock68Step = 110 ifTrue: [
            (recoveredBlock68Stack1) removeAllKeys: (recoveredBlock68Stack2).
            recoveredBlock68PC := 112.
        ].
        recoveredBlock68Step = 112 ifTrue: [
            recoveredBlock68Stack1 := recoveredArg2.
            recoveredBlock68PC := 115.
        ].
        recoveredBlock68Step = 115 ifTrue: [
            ^recoveredBlock68Stack1
        ].
        recoveredBlock68Step = 116 ifTrue: [
            recoveredBlock68Stack1 := recoveredBlock68Arg1.
            recoveredBlock68PC := 117.
        ].
        recoveredBlock68Step = 117 ifTrue: [
            recoveredBlock68Stack2 := recoveredArg6.
            recoveredBlock68PC := 120.
        ].
        recoveredBlock68Step = 120 ifTrue: [
            recoveredBlock68Stack1 := (recoveredBlock68Stack1) fractionComplete: (recoveredBlock68Stack2).
            recoveredBlock68PC := 122.
        ].
        recoveredBlock68Step = 122 ifTrue: [
            recoveredBlock68Result := recoveredBlock68Stack1.
            recoveredBlock68Done := true.
        ].
    ].
    recoveredBlock68Result
].
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := (recoveredStack0) isFolder.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 134] ifFalse: [recoveredPC := 208].
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := [:recoveredBlock143Arg1 :recoveredBlock143Arg2 | 
    | recoveredBlock143Stack0 recoveredBlock143Stack1 recoveredBlock143Stack2 recoveredBlock143Stack3 recoveredBlock143Stack4 recoveredBlock143Stack5 recoveredBlock143Stack6 recoveredBlock143Stack7 recoveredBlock143Stack8 recoveredBlock143Stack9 recoveredBlock143Stack10 recoveredBlock143Stack11 recoveredBlock143PC recoveredBlock143Step recoveredBlock143Done recoveredBlock143Result |
    recoveredBlock143Stack0 := self.
    recoveredBlock143PC := 150.
    recoveredBlock143Done := false.
    [recoveredBlock143Done not] whileTrue: [
        recoveredBlock143Step := recoveredBlock143PC.
        recoveredBlock143Step = 150 ifTrue: [
            recoveredBlock143Stack1 := nil.
            recoveredBlock143PC := 151.
        ].
        recoveredBlock143Step = 151 ifTrue: [
            recoveredBlock143Stack2 := recoveredBlock143Arg1.
            recoveredBlock143PC := 152.
        ].
        recoveredBlock143Step = 152 ifTrue: [
            recoveredBlock143Stack2 := (recoveredBlock143Stack2) isRBDBUndefinedObject.
            recoveredBlock143PC := 154.
        ].
        recoveredBlock143Step = 154 ifTrue: [
            (recoveredBlock143Stack2) ifTrue: [recoveredBlock143PC := 198] ifFalse: [recoveredBlock143PC := 158].
        ].
        recoveredBlock143Step = 158 ifTrue: [
            recoveredBlock143PC := 159.
        ].
        recoveredBlock143Step = 159 ifTrue: [
            recoveredBlock143Stack1 := self.
            recoveredBlock143PC := 160.
        ].
        recoveredBlock143Step = 160 ifTrue: [
            recoveredBlock143Stack2 := recoveredBlock143Arg1.
            recoveredBlock143PC := 161.
        ].
        recoveredBlock143Step = 161 ifTrue: [
            recoveredBlock143Stack3 := recoveredArg2.
            recoveredBlock143PC := 164.
        ].
        recoveredBlock143Step = 164 ifTrue: [
            recoveredBlock143Stack4 := recoveredArg3.
            recoveredBlock143PC := 167.
        ].
        recoveredBlock143Step = 167 ifTrue: [
            recoveredBlock143Stack5 := recoveredArg4.
            recoveredBlock143PC := 170.
        ].
        recoveredBlock143Step = 170 ifTrue: [
            recoveredBlock143Stack6 := recoveredArg5.
            recoveredBlock143PC := 173.
        ].
        recoveredBlock143Step = 173 ifTrue: [
            recoveredBlock143Stack7 := recoveredArg6.
            recoveredBlock143PC := 176.
        ].
        recoveredBlock143Step = 176 ifTrue: [
            recoveredBlock143Stack8 := 1.
            recoveredBlock143PC := 178.
        ].
        recoveredBlock143Step = 178 ifTrue: [
            recoveredBlock143Stack9 := recoveredArg6.
            recoveredBlock143PC := 181.
        ].
        recoveredBlock143Step = 181 ifTrue: [
            recoveredBlock143Stack9 := (recoveredBlock143Stack9) denominator.
            recoveredBlock143PC := 183.
        ].
        recoveredBlock143Step = 183 ifTrue: [
            recoveredBlock143Stack8 := (recoveredBlock143Stack8) / (recoveredBlock143Stack9).
            recoveredBlock143PC := 185.
        ].
        recoveredBlock143Step = 185 ifTrue: [
            recoveredBlock143Stack9 := recoveredBlock143Arg2.
            recoveredBlock143PC := 186.
        ].
        recoveredBlock143Step = 186 ifTrue: [
            recoveredBlock143Stack10 := recoveredLocal1.
            recoveredBlock143PC := 189.
        ].
        recoveredBlock143Step = 189 ifTrue: [
            recoveredBlock143Stack10 := (recoveredBlock143Stack10) size.
            recoveredBlock143PC := 191.
        ].
        recoveredBlock143Step = 191 ifTrue: [
            recoveredBlock143Stack9 := (recoveredBlock143Stack9) / (recoveredBlock143Stack10).
            recoveredBlock143PC := 193.
        ].
        recoveredBlock143Step = 193 ifTrue: [
            recoveredBlock143Stack8 := (recoveredBlock143Stack8) * (recoveredBlock143Stack9).
            recoveredBlock143PC := 194.
        ].
        recoveredBlock143Step = 194 ifTrue: [
            recoveredBlock143Stack7 := (recoveredBlock143Stack7) + (recoveredBlock143Stack8).
            recoveredBlock143PC := 195.
        ].
        recoveredBlock143Step = 195 ifTrue: [
            recoveredBlock143Stack1 := (recoveredBlock143Stack1) createContainer: (recoveredBlock143Stack2) dictionary: (recoveredBlock143Stack3) visitSet: (recoveredBlock143Stack4) notificationWindow: (recoveredBlock143Stack5) withReferences: (recoveredBlock143Stack6) parentFraction: (recoveredBlock143Stack7).
            recoveredBlock143PC := 198.
        ].
        recoveredBlock143Step = 198 ifTrue: [
            recoveredBlock143Result := recoveredBlock143Stack1.
            recoveredBlock143Done := true.
        ].
    ].
    recoveredBlock143Result
].
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            (recoveredStack0) doWithIndex: (recoveredStack1).
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredPC := 354.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack0 := 'Kk'.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack1 := 'Call_73700'.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack1 := (recoveredStack1) label.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack2 := ' ('.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack2 := (recoveredStack2) exportTypeString.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack2 := ')'.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            (recoveredStack0) createContainerFor: (recoveredStack1) library: (recoveredStack2) inDictionary: (recoveredStack3).
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 272] ifFalse: [recoveredPC := 280].
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredPC := 290.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack2 := ' - not exported'.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack1 := (recoveredStack1) dbObject.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack0 := recoveredArg5.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 306] ifFalse: [recoveredPC := 350].
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredStack0 := (recoveredStack0) referencedItemsForExport.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack1 := [:recoveredBlock311Arg1 | 
    | recoveredBlock311Stack0 recoveredBlock311Stack1 recoveredBlock311Stack2 recoveredBlock311Stack3 recoveredBlock311Stack4 recoveredBlock311Stack5 recoveredBlock311Stack6 recoveredBlock311Stack7 recoveredBlock311Stack8 recoveredBlock311PC recoveredBlock311Step recoveredBlock311Done recoveredBlock311Result |
    recoveredBlock311Stack0 := self.
    recoveredBlock311PC := 318.
    recoveredBlock311Done := false.
    [recoveredBlock311Done not] whileTrue: [
        recoveredBlock311Step := recoveredBlock311PC.
        recoveredBlock311Step = 318 ifTrue: [
            recoveredBlock311Stack1 := nil.
            recoveredBlock311PC := 319.
        ].
        recoveredBlock311Step = 319 ifTrue: [
            recoveredBlock311Stack2 := recoveredBlock311Arg1.
            recoveredBlock311PC := 320.
        ].
        recoveredBlock311Step = 320 ifTrue: [
            recoveredBlock311Stack2 := (recoveredBlock311Stack2) isRBDBUndefinedObject.
            recoveredBlock311PC := 322.
        ].
        recoveredBlock311Step = 322 ifTrue: [
            (recoveredBlock311Stack2) ifTrue: [recoveredBlock311PC := 347] ifFalse: [recoveredBlock311PC := 326].
        ].
        recoveredBlock311Step = 326 ifTrue: [
            recoveredBlock311PC := 327.
        ].
        recoveredBlock311Step = 327 ifTrue: [
            recoveredBlock311Stack1 := self.
            recoveredBlock311PC := 328.
        ].
        recoveredBlock311Step = 328 ifTrue: [
            recoveredBlock311Stack2 := recoveredBlock311Arg1.
            recoveredBlock311PC := 329.
        ].
        recoveredBlock311Step = 329 ifTrue: [
            recoveredBlock311Stack3 := recoveredArg2.
            recoveredBlock311PC := 332.
        ].
        recoveredBlock311Step = 332 ifTrue: [
            recoveredBlock311Stack4 := recoveredArg3.
            recoveredBlock311PC := 335.
        ].
        recoveredBlock311Step = 335 ifTrue: [
            recoveredBlock311Stack5 := recoveredArg4.
            recoveredBlock311PC := 338.
        ].
        recoveredBlock311Step = 338 ifTrue: [
            recoveredBlock311Stack6 := recoveredArg5.
            recoveredBlock311PC := 341.
        ].
        recoveredBlock311Step = 341 ifTrue: [
            recoveredBlock311Stack7 := recoveredArg6.
            recoveredBlock311PC := 344.
        ].
        recoveredBlock311Step = 344 ifTrue: [
            recoveredBlock311Stack1 := (recoveredBlock311Stack1) createContainer: (recoveredBlock311Stack2) dictionary: (recoveredBlock311Stack3) visitSet: (recoveredBlock311Stack4) notificationWindow: (recoveredBlock311Stack5) withReferences: (recoveredBlock311Stack6) parentFraction: (recoveredBlock311Stack7).
            recoveredBlock311PC := 347.
        ].
        recoveredBlock311Step = 347 ifTrue: [
            recoveredBlock311Result := recoveredBlock311Stack1.
            recoveredBlock311Done := true.
        ].
    ].
    recoveredBlock311Result
].
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205f7234; bytecode file offset 0xef3b94"
!SGExportManager methodsFor: 'recovered'!
createContainersAndExport: recoveredArg1 path: recoveredArg2 notificationWindow: recoveredArg3 withReferences: recoveredArg4 visitCollection: recoveredArg5 fileNameCollection: recoveredArg6 omitExport: recoveredArg7
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) getLibrary.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal9 := recoveredStack2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 41] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRuntime.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 39] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := RBUserInfo.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := 'Item '.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := (recoveredStack3) label.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := ' has no Lib !!'.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredArg5.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := (recoveredStack2) dbObject.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) isFolder.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 116].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) children.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := [:recoveredBlock71Arg1 | 
    | recoveredBlock71Stack0 recoveredBlock71Stack1 recoveredBlock71Stack2 recoveredBlock71Stack3 recoveredBlock71Stack4 recoveredBlock71Stack5 recoveredBlock71Stack6 recoveredBlock71Stack7 recoveredBlock71Stack8 recoveredBlock71Stack9 recoveredBlock71PC recoveredBlock71Step recoveredBlock71Done recoveredBlock71Result |
    recoveredBlock71Stack0 := self.
    recoveredBlock71PC := 78.
    recoveredBlock71Done := false.
    [recoveredBlock71Done not] whileTrue: [
        recoveredBlock71Step := recoveredBlock71PC.
        recoveredBlock71Step = 78 ifTrue: [
            recoveredBlock71Stack1 := nil.
            recoveredBlock71PC := 79.
        ].
        recoveredBlock71Step = 79 ifTrue: [
            recoveredBlock71Stack2 := recoveredBlock71Arg1.
            recoveredBlock71PC := 80.
        ].
        recoveredBlock71Step = 80 ifTrue: [
            recoveredBlock71Stack2 := (recoveredBlock71Stack2) isRBDBUndefinedObject.
            recoveredBlock71PC := 82.
        ].
        recoveredBlock71Step = 82 ifTrue: [
            (recoveredBlock71Stack2) ifTrue: [recoveredBlock71PC := 110] ifFalse: [recoveredBlock71PC := 86].
        ].
        recoveredBlock71Step = 86 ifTrue: [
            recoveredBlock71PC := 87.
        ].
        recoveredBlock71Step = 87 ifTrue: [
            recoveredBlock71Stack1 := self.
            recoveredBlock71PC := 88.
        ].
        recoveredBlock71Step = 88 ifTrue: [
            recoveredBlock71Stack2 := recoveredBlock71Arg1.
            recoveredBlock71PC := 89.
        ].
        recoveredBlock71Step = 89 ifTrue: [
            recoveredBlock71Stack3 := recoveredArg2.
            recoveredBlock71PC := 92.
        ].
        recoveredBlock71Step = 92 ifTrue: [
            recoveredBlock71Stack4 := recoveredArg3.
            recoveredBlock71PC := 95.
        ].
        recoveredBlock71Step = 95 ifTrue: [
            recoveredBlock71Stack5 := recoveredArg4.
            recoveredBlock71PC := 98.
        ].
        recoveredBlock71Step = 98 ifTrue: [
            recoveredBlock71Stack6 := recoveredArg5.
            recoveredBlock71PC := 101.
        ].
        recoveredBlock71Step = 101 ifTrue: [
            recoveredBlock71Stack7 := recoveredArg6.
            recoveredBlock71PC := 104.
        ].
        recoveredBlock71Step = 104 ifTrue: [
            recoveredBlock71Stack8 := recoveredArg7.
            recoveredBlock71PC := 107.
        ].
        recoveredBlock71Step = 107 ifTrue: [
            recoveredBlock71Stack1 := (recoveredBlock71Stack1) createContainersAndExport: (recoveredBlock71Stack2) path: (recoveredBlock71Stack3) notificationWindow: (recoveredBlock71Stack4) withReferences: (recoveredBlock71Stack5) visitCollection: (recoveredBlock71Stack6) fileNameCollection: (recoveredBlock71Stack7) omitExport: (recoveredBlock71Stack8).
            recoveredBlock71PC := 110.
        ].
        recoveredBlock71Step = 110 ifTrue: [
            recoveredBlock71Result := recoveredBlock71Stack1.
            recoveredBlock71Done := true.
        ].
    ].
    recoveredBlock71Result
].
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredPC := 415.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := (recoveredStack1) splitPath.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 148] ifFalse: [recoveredPC := 138].
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := ETASOSHandle.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasLongNames: (recoveredStack2).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack3 := recoveredArg6.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := (recoveredStack1) createFileNameForItem: (recoveredStack2) fileNames: (recoveredStack3) pathHasLongNames: (recoveredStack4).
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredLocal6 := recoveredStack2.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 170] ifFalse: [recoveredPC := 168].
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack2 := (recoveredStack2) label.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack3 := ' ('.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack3 := (recoveredStack3) itemTypeString.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack3 := ') in: '.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack2 := 'Call_73700'.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            (recoveredStack1) createContainerFor: (recoveredStack2) library: (recoveredStack3) inDictionary: (recoveredStack4).
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 246] ifFalse: [recoveredPC := 254].
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredPC := 264.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack3 := ' - not exported'.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack1 := recoveredArg5.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack2 := (recoveredStack2) dbObject.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack3 := (recoveredStack3) fileNameOnly.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack1 := recoveredArg7.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 337] ifFalse: [recoveredPC := 286].
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack4 := '\'.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack4 := recoveredLocal6.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack1 := (recoveredStack1) exportDictionary: (recoveredStack2) path: (recoveredStack3).
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredLocal5 := recoveredStack2.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack1 := (recoveredStack1) isError.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 314] ifFalse: [recoveredPC := 337].
        ].
        recoveredStep = 314 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack3 := (recoveredStack3) messageText.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            (recoveredStack2) cr.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            recoveredStack3 := EtExportAborted.
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 337 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 344] ifFalse: [recoveredPC := 391].
        ].
        recoveredStep = 344 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            recoveredStack1 := (recoveredStack1) referencedItemsForExport.
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredStack2 := [:recoveredBlock349Arg1 | 
    | recoveredBlock349Stack0 recoveredBlock349Stack1 recoveredBlock349Stack2 recoveredBlock349Stack3 recoveredBlock349Stack4 recoveredBlock349Stack5 recoveredBlock349Stack6 recoveredBlock349Stack7 recoveredBlock349Stack8 recoveredBlock349Stack9 recoveredBlock349PC recoveredBlock349Step recoveredBlock349Done recoveredBlock349Result |
    recoveredBlock349Stack0 := self.
    recoveredBlock349PC := 356.
    recoveredBlock349Done := false.
    [recoveredBlock349Done not] whileTrue: [
        recoveredBlock349Step := recoveredBlock349PC.
        recoveredBlock349Step = 356 ifTrue: [
            recoveredBlock349Stack1 := nil.
            recoveredBlock349PC := 357.
        ].
        recoveredBlock349Step = 357 ifTrue: [
            recoveredBlock349Stack2 := recoveredBlock349Arg1.
            recoveredBlock349PC := 358.
        ].
        recoveredBlock349Step = 358 ifTrue: [
            recoveredBlock349Stack2 := (recoveredBlock349Stack2) isRBDBUndefinedObject.
            recoveredBlock349PC := 360.
        ].
        recoveredBlock349Step = 360 ifTrue: [
            (recoveredBlock349Stack2) ifTrue: [recoveredBlock349PC := 388] ifFalse: [recoveredBlock349PC := 364].
        ].
        recoveredBlock349Step = 364 ifTrue: [
            recoveredBlock349PC := 365.
        ].
        recoveredBlock349Step = 365 ifTrue: [
            recoveredBlock349Stack1 := self.
            recoveredBlock349PC := 366.
        ].
        recoveredBlock349Step = 366 ifTrue: [
            recoveredBlock349Stack2 := recoveredBlock349Arg1.
            recoveredBlock349PC := 367.
        ].
        recoveredBlock349Step = 367 ifTrue: [
            recoveredBlock349Stack3 := recoveredArg2.
            recoveredBlock349PC := 370.
        ].
        recoveredBlock349Step = 370 ifTrue: [
            recoveredBlock349Stack4 := recoveredArg3.
            recoveredBlock349PC := 373.
        ].
        recoveredBlock349Step = 373 ifTrue: [
            recoveredBlock349Stack5 := recoveredArg4.
            recoveredBlock349PC := 376.
        ].
        recoveredBlock349Step = 376 ifTrue: [
            recoveredBlock349Stack6 := recoveredArg5.
            recoveredBlock349PC := 379.
        ].
        recoveredBlock349Step = 379 ifTrue: [
            recoveredBlock349Stack7 := recoveredArg6.
            recoveredBlock349PC := 382.
        ].
        recoveredBlock349Step = 382 ifTrue: [
            recoveredBlock349Stack8 := recoveredArg7.
            recoveredBlock349PC := 385.
        ].
        recoveredBlock349Step = 385 ifTrue: [
            recoveredBlock349Stack1 := (recoveredBlock349Stack1) createContainersAndExport: (recoveredBlock349Stack2) path: (recoveredBlock349Stack3) notificationWindow: (recoveredBlock349Stack4) withReferences: (recoveredBlock349Stack5) visitCollection: (recoveredBlock349Stack6) fileNameCollection: (recoveredBlock349Stack7) omitExport: (recoveredBlock349Stack8).
            recoveredBlock349PC := 388.
        ].
        recoveredBlock349Step = 388 ifTrue: [
            recoveredBlock349Result := recoveredBlock349Stack1.
            recoveredBlock349Done := true.
        ].
    ].
    recoveredBlock349Result
].
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 391.
        ].
        recoveredStep = 391 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 393.
        ].
        recoveredStep = 393 ifTrue: [
            recoveredLocal6 := recoveredStack2.
            recoveredPC := 396.
        ].
        recoveredStep = 396 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 397.
        ].
        recoveredStep = 397 ifTrue: [
            recoveredLocal5 := recoveredStack2.
            recoveredPC := 400.
        ].
        recoveredStep = 400 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 401.
        ].
        recoveredStep = 401 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 404.
        ].
        recoveredStep = 404 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 408.
        ].
        recoveredStep = 408 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 409.
        ].
        recoveredStep = 409 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 412.
        ].
        recoveredStep = 412 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 415.
        ].
        recoveredStep = 415 ifTrue: [
            recoveredStack0 := (recoveredStack0) library.
            recoveredPC := 417.
        ].
        recoveredStep = 417 ifTrue: [
            (recoveredStack0) garbageCollect.
            recoveredPC := 419.
        ].
        recoveredStep = 419 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 420.
        ].
        recoveredStep = 420 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20634d70; bytecode file offset 0xf31748"
!SGExportManager methodsFor: 'recovered'!
exportItems: recoveredArg1 exportPath: recoveredArg2 notificationWindow: recoveredArg3 headerKey: recoveredArg4 userInterface: recoveredArg5
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) headerKey: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) last.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := CfsPath.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) pathSeparator.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) trimPathSeparatorAtEnd.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := 'Call_88892'.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := CfsPath.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) isValidPathName: (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 83] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := ' is not a valid name!!\Please select another name!!'.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := (recoveredStack2) withCrs.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorMessage: (recoveredStack1).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) library.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := (recoveredStack0) isWorkspaceMode.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 92] ifFalse: [recoveredPC := 116].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) asLowercase.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := 'exp'.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 104] ifFalse: [recoveredPC := 116].
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := 'The EXP format is not supported in Workspace mode!!\Please select another export format!!'.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := (recoveredStack1) withCrs.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorMessage: (recoveredStack1).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := 'XMLExport'.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := (recoveredStack0) asLowercase.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := 'amd'.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 134] ifFalse: [recoveredPC := 190].
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock135Value0 recoveredBlock135Value1 recoveredBlock135Value2 recoveredBlock135Value3 recoveredBlock135Value4 recoveredBlock135Value5 recoveredBlock135Value6 recoveredBlock135Value7 |
    recoveredBlock135Value0 := recoveredArg1.
    recoveredBlock135Value1 := recoveredLocal6.
    recoveredBlock135Value2 := (recoveredBlock135Value1) asPathname.
    recoveredBlock135Value3 := (self) exportItems: (recoveredBlock135Value0) toAmdFile: (recoveredBlock135Value2).
    recoveredLocal3 := recoveredBlock135Value3.
    recoveredBlock135Value4 := MainController.
    recoveredBlock135Value5 := recoveredLocal6.
    recoveredBlock135Value6 := (recoveredBlock135Value5) pathName.
    recoveredBlock135Value7 := (recoveredBlock135Value4) setLastExportPath: (recoveredBlock135Value6).
    recoveredBlock135Value7
].
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack2 := 'Export items...'.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            (recoveredStack0) evaluateBlock: (recoveredStack1) label: (recoveredStack2).
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 186] ifFalse: [recoveredPC := 176].
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 186] ifFalse: [recoveredPC := 188].
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack0 := (recoveredStack0) asLowercase.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack1 := 'axl'.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 214] ifFalse: [recoveredPC := 202].
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack0 := (recoveredStack0) asLowercase.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack1 := 'zip'.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 214] ifFalse: [recoveredPC := 268].
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock215Value0 recoveredBlock215Value1 recoveredBlock215Value2 recoveredBlock215Value3 recoveredBlock215Value4 recoveredBlock215Value5 recoveredBlock215Value6 |
    recoveredBlock215Value0 := recoveredArg1.
    recoveredBlock215Value1 := recoveredLocal6.
    recoveredBlock215Value2 := (self) exportItems: (recoveredBlock215Value0) toAxlFile: (recoveredBlock215Value1).
    recoveredLocal3 := recoveredBlock215Value2.
    recoveredBlock215Value3 := MainController.
    recoveredBlock215Value4 := recoveredLocal6.
    recoveredBlock215Value5 := (recoveredBlock215Value4) pathName.
    recoveredBlock215Value6 := (recoveredBlock215Value3) setLastExportPath: (recoveredBlock215Value5).
    recoveredBlock215Value6
].
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack2 := 'Export items...'.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            (recoveredStack0) evaluateBlock: (recoveredStack1) label: (recoveredStack2).
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 264] ifFalse: [recoveredPC := 254].
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 264] ifFalse: [recoveredPC := 266].
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack0 := MainController.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack0 := (recoveredStack0) asdImportExportOptions.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionExportOneFileForEachItem.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 278] ifFalse: [recoveredPC := 396].
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack0 := EtasUserQuestion.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack1 := 'Existing files will be overwritten.\Continue?'.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack1 := (recoveredStack1) withCrs.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack2 := 'ExportComponents'.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            (recoveredStack1) prompterID: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack2 := 'OKCANCEL'.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            (recoveredStack1) buttonStyle: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack2 := 'question'.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            (recoveredStack1) type: (recoveredStack2).
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack0 := (recoveredStack0) prompt.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 308] ifFalse: [recoveredPC := 306].
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack0 := MainController.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            (recoveredStack0) setLastExportPath: (recoveredStack1).
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack0 := 'Kk'.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack1 := 'Call_61211'.
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock324Stack0 recoveredBlock324Stack1 recoveredBlock324Stack2 recoveredBlock324Stack3 recoveredBlock324Stack4 recoveredBlock324Stack5 recoveredBlock324Stack6 recoveredBlock324Stack7 recoveredBlock324Stack8 recoveredBlock324PC recoveredBlock324Step recoveredBlock324Done recoveredBlock324Result |
    recoveredBlock324Stack0 := self.
    recoveredBlock324PC := 330.
    recoveredBlock324Done := false.
    [recoveredBlock324Done not] whileTrue: [
        recoveredBlock324Step := recoveredBlock324PC.
        recoveredBlock324Step = 330 ifTrue: [
            recoveredBlock324Stack1 := nil.
            recoveredBlock324PC := 331.
        ].
        recoveredBlock324Step = 331 ifTrue: [
            recoveredBlock324Stack2 := self.
            recoveredBlock324PC := 332.
        ].
        recoveredBlock324Step = 332 ifTrue: [
            recoveredBlock324Stack3 := recoveredArg1.
            recoveredBlock324PC := 335.
        ].
        recoveredBlock324Step = 335 ifTrue: [
            recoveredBlock324Stack4 := recoveredLocal6.
            recoveredBlock324PC := 338.
        ].
        recoveredBlock324Step = 338 ifTrue: [
            recoveredBlock324Stack5 := recoveredArg3.
            recoveredBlock324PC := 341.
        ].
        recoveredBlock324Step = 341 ifTrue: [
            recoveredBlock324Stack6 := MainController.
            recoveredBlock324PC := 343.
        ].
        recoveredBlock324Step = 343 ifTrue: [
            recoveredBlock324Stack6 := (recoveredBlock324Stack6) asdImportExportOptions.
            recoveredBlock324PC := 345.
        ].
        recoveredBlock324Step = 345 ifTrue: [
            recoveredBlock324Stack6 := (recoveredBlock324Stack6) optionExportIncludeReferencedItems.
            recoveredBlock324PC := 347.
        ].
        recoveredBlock324Step = 347 ifTrue: [
            recoveredBlock324Stack7 := false.
            recoveredBlock324PC := 348.
        ].
        recoveredBlock324Step = 348 ifTrue: [
            recoveredBlock324Stack2 := (recoveredBlock324Stack2) createContainersAndExport: (recoveredBlock324Stack3) path: (recoveredBlock324Stack4) notificationWindow: (recoveredBlock324Stack5) withReferences: (recoveredBlock324Stack6) omitExport: (recoveredBlock324Stack7).
            recoveredBlock324PC := 351.
        ].
        recoveredBlock324Step = 351 ifTrue: [
            recoveredBlock324Stack3 := recoveredBlock324Stack2.
            recoveredBlock324PC := 352.
        ].
        recoveredBlock324Step = 352 ifTrue: [
            recoveredLocal3 := recoveredBlock324Stack3.
            recoveredBlock324PC := 355.
        ].
        recoveredBlock324Step = 355 ifTrue: [
            (recoveredBlock324Stack2 == nil) ifTrue: [recoveredBlock324PC := 379] ifFalse: [recoveredBlock324PC := 358].
        ].
        recoveredBlock324Step = 358 ifTrue: [
            recoveredBlock324PC := 359.
        ].
        recoveredBlock324Step = 359 ifTrue: [
            recoveredBlock324Stack1 := self.
            recoveredBlock324PC := 360.
        ].
        recoveredBlock324Step = 360 ifTrue: [
            recoveredBlock324Stack2 := [
    | recoveredBlock324Block360Value0 recoveredBlock324Block360Value1 recoveredBlock324Block360Value2 |
    recoveredBlock324Block360Value0 := recoveredLocal3.
    recoveredBlock324Block360Value1 := recoveredLocal6.
    recoveredBlock324Block360Value2 := (self) checkExportExecutionForDictionary: (recoveredBlock324Block360Value0) pathName: (recoveredBlock324Block360Value1) fileName: (nil).
    recoveredBlock324Block360Value2
].
            recoveredBlock324PC := 377.
        ].
        recoveredBlock324Step = 377 ifTrue: [
            recoveredBlock324Stack1 := (recoveredBlock324Stack1) doInExceptionBlock: (recoveredBlock324Stack2).
            recoveredBlock324PC := 379.
        ].
        recoveredBlock324Step = 379 ifTrue: [
            recoveredBlock324Result := recoveredBlock324Stack1.
            recoveredBlock324Done := true.
        ].
    ].
    recoveredBlock324Result
].
            recoveredPC := 380.
        ].
        recoveredStep = 380 ifTrue: [
            recoveredStack2 := 'export to '.
            recoveredPC := 382.
        ].
        recoveredStep = 382 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 385.
        ].
        recoveredStep = 385 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 387.
        ].
        recoveredStep = 387 ifTrue: [
            (recoveredStack0) measureTimeFor: (recoveredStack1) description: (recoveredStack2).
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 390.
        ].
        recoveredStep = 390 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 393.
        ].
        recoveredStep = 393 ifTrue: [
            recoveredPC := 640.
        ].
        recoveredStep = 396 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 399.
        ].
        recoveredStep = 399 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 401.
        ].
        recoveredStep = 401 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 404.
        ].
        recoveredStep = 404 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 408] ifFalse: [recoveredPC := 422].
        ].
        recoveredStep = 408 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 411.
        ].
        recoveredStep = 411 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 413.
        ].
        recoveredStep = 413 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultExportFilename.
            recoveredPC := 415.
        ].
        recoveredStep = 415 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 418.
        ].
        recoveredStep = 418 ifTrue: [
            recoveredPC := 427.
        ].
        recoveredStep = 422 ifTrue: [
            recoveredStack0 := 'items.exp'.
            recoveredPC := 424.
        ].
        recoveredStep = 424 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 427.
        ].
        recoveredStep = 427 ifTrue: [
            recoveredStack0 := MainController.
            recoveredPC := 429.
        ].
        recoveredStep = 429 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 432.
        ].
        recoveredStep = 432 ifTrue: [
            (recoveredStack0) setLastExportPathFromFile: (recoveredStack1).
            recoveredPC := 434.
        ].
        recoveredStep = 434 ifTrue: [
            recoveredStack0 := 'Kk'.
            recoveredPC := 436.
        ].
        recoveredStep = 436 ifTrue: [
            recoveredStack1 := 'Call_61211'.
            recoveredPC := 438.
        ].
        recoveredStep = 438 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 439.
        ].
        recoveredStep = 439 ifTrue: [
            recoveredPC := 440.
        ].
        recoveredStep = 440 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 443.
        ].
        recoveredStep = 443 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock443Local1 recoveredBlock443Stack0 recoveredBlock443Stack1 recoveredBlock443Stack2 recoveredBlock443Stack3 recoveredBlock443Stack4 recoveredBlock443Stack5 recoveredBlock443PC recoveredBlock443Step recoveredBlock443Done recoveredBlock443Result |
    recoveredBlock443Stack0 := self.
    recoveredBlock443PC := 450.
    recoveredBlock443Done := false.
    [recoveredBlock443Done not] whileTrue: [
        recoveredBlock443Step := recoveredBlock443PC.
        recoveredBlock443Step = 450 ifTrue: [
            recoveredBlock443Stack1 := recoveredLocal5.
            recoveredBlock443PC := 453.
        ].
        recoveredBlock443Step = 453 ifTrue: [
            recoveredBlock443Stack1 := (recoveredBlock443Stack1) asLowercase.
            recoveredBlock443PC := 455.
        ].
        recoveredBlock443Step = 455 ifTrue: [
            recoveredBlock443Stack2 := 'a2l'.
            recoveredBlock443PC := 458.
        ].
        recoveredBlock443Step = 458 ifTrue: [
            recoveredBlock443Stack1 := (recoveredBlock443Stack1) = (recoveredBlock443Stack2).
            recoveredBlock443PC := 459.
        ].
        recoveredBlock443Step = 459 ifTrue: [
            (recoveredBlock443Stack1) ifTrue: [recoveredBlock443PC := 462] ifFalse: [recoveredBlock443PC := 558].
        ].
        recoveredBlock443Step = 462 ifTrue: [
            recoveredBlock443Stack1 := recoveredArg1.
            recoveredBlock443PC := 465.
        ].
        recoveredBlock443Step = 465 ifTrue: [
            recoveredBlock443Stack2 := [:block28120958Arg1 | 
    | block28120958Value0 block28120958Value1 |
    block28120958Value0 := block28120958Arg1.
    block28120958Value1 := (block28120958Value0) isAsap2Project.
    block28120958Value1
].
            recoveredBlock443PC := 468.
        ].
        recoveredBlock443Step = 468 ifTrue: [
            recoveredBlock443PC := 478.
        ].
        recoveredBlock443Step = 478 ifTrue: [
            recoveredBlock443Stack1 := (recoveredBlock443Stack1) select: (recoveredBlock443Stack2).
            recoveredBlock443PC := 483.
        ].
        recoveredBlock443Step = 483 ifTrue: [
            recoveredBlock443Stack2 := recoveredBlock443Stack1.
            recoveredBlock443PC := 484.
        ].
        recoveredBlock443Step = 484 ifTrue: [
            recoveredBlock443Local1 := recoveredBlock443Stack2.
            recoveredBlock443PC := 485.
        ].
        recoveredBlock443Step = 485 ifTrue: [
            recoveredBlock443Stack1 := (recoveredBlock443Stack1) notEmpty.
            recoveredBlock443PC := 489.
        ].
        recoveredBlock443Step = 489 ifTrue: [
            (recoveredBlock443Stack1) ifTrue: [recoveredBlock443PC := 492] ifFalse: [recoveredBlock443PC := 513].
        ].
        recoveredBlock443Step = 492 ifTrue: [
            recoveredBlock443Stack1 := ASAP2FileReader.
            recoveredBlock443PC := 496.
        ].
        recoveredBlock443Step = 496 ifTrue: [
            recoveredBlock443Stack2 := recoveredLocal6.
            recoveredBlock443PC := 499.
        ].
        recoveredBlock443Step = 499 ifTrue: [
            recoveredBlock443Stack3 := recoveredBlock443Local1.
            recoveredBlock443PC := 500.
        ].
        recoveredBlock443Step = 500 ifTrue: [
            recoveredBlock443Stack3 := (recoveredBlock443Stack3) first.
            recoveredBlock443PC := 502.
        ].
        recoveredBlock443Step = 502 ifTrue: [
            recoveredBlock443Stack3 := (recoveredBlock443Stack3) asap2Project.
            recoveredBlock443PC := 507.
        ].
        recoveredBlock443Step = 507 ifTrue: [
            recoveredBlock443Stack4 := true.
            recoveredBlock443PC := 508.
        ].
        recoveredBlock443Step = 508 ifTrue: [
            (recoveredBlock443Stack1) createFile: (recoveredBlock443Stack2) project: (recoveredBlock443Stack3) showProgress: (recoveredBlock443Stack4).
            recoveredBlock443PC := 513.
        ].
        recoveredBlock443Step = 513 ifTrue: [
            recoveredBlock443Stack1 := nil.
            recoveredBlock443PC := 514.
        ].
        recoveredBlock443Step = 514 ifTrue: [
            recoveredBlock443Stack2 := recoveredBlock443Local1.
            recoveredBlock443PC := 515.
        ].
        recoveredBlock443Step = 515 ifTrue: [
            recoveredBlock443Stack2 := (recoveredBlock443Stack2) size.
            recoveredBlock443PC := 517.
        ].
        recoveredBlock443Step = 517 ifTrue: [
            recoveredBlock443Stack3 := recoveredArg1.
            recoveredBlock443PC := 520.
        ].
        recoveredBlock443Step = 520 ifTrue: [
            recoveredBlock443Stack3 := (recoveredBlock443Stack3) size.
            recoveredBlock443PC := 522.
        ].
        recoveredBlock443Step = 522 ifTrue: [
            recoveredBlock443Stack2 := (recoveredBlock443Stack2) < (recoveredBlock443Stack3).
            recoveredBlock443PC := 523.
        ].
        recoveredBlock443Step = 523 ifTrue: [
            (recoveredBlock443Stack2) ifTrue: [recoveredBlock443PC := 526] ifFalse: [recoveredBlock443PC := 553].
        ].
        recoveredBlock443Step = 526 ifTrue: [
            recoveredBlock443PC := 527.
        ].
        recoveredBlock443Step = 527 ifTrue: [
            recoveredBlock443Stack1 := SGMonitorStreamDummy.
            recoveredBlock443PC := 530.
        ].
        recoveredBlock443Step = 530 ifTrue: [
            recoveredBlock443Stack1 := (recoveredBlock443Stack1) create.
            recoveredBlock443PC := 535.
        ].
        recoveredBlock443Step = 535 ifTrue: [
            recoveredBlock443Stack2 := recoveredBlock443Stack1.
            recoveredBlock443PC := 536.
        ].
        recoveredBlock443Step = 536 ifTrue: [
            (recoveredBlock443Stack2) cr.
            recoveredBlock443Stack2 := recoveredBlock443Stack1.
            recoveredBlock443PC := 541.
        ].
        recoveredBlock443Step = 541 ifTrue: [
            recoveredBlock443Stack3 := 'Only ASAM items can be exported as *.a2l files!!'.
            recoveredBlock443PC := 544.
        ].
        recoveredBlock443Step = 544 ifTrue: [
            (recoveredBlock443Stack2) nextPutAll: (recoveredBlock443Stack3).
            recoveredBlock443PC := 549.
        ].
        recoveredBlock443Step = 549 ifTrue: [
            recoveredBlock443Stack1 := (recoveredBlock443Stack1) cr.
            recoveredBlock443PC := 553.
        ].
        recoveredBlock443Step = 553 ifTrue: [
            recoveredBlock443Stack2 := nil.
            recoveredBlock443PC := 554.
        ].
        recoveredBlock443Step = 554 ifTrue: [
            recoveredBlock443Local1 := recoveredBlock443Stack2.
            recoveredBlock443PC := 555.
        ].
        recoveredBlock443Step = 555 ifTrue: [
            recoveredBlock443PC := 618.
        ].
        recoveredBlock443Step = 558 ifTrue: [
            recoveredBlock443Stack1 := self.
            recoveredBlock443PC := 559.
        ].
        recoveredBlock443Step = 559 ifTrue: [
            recoveredBlock443Stack2 := [
    | recoveredBlock443Block559Stack0 recoveredBlock443Block559Stack1 recoveredBlock443Block559Stack2 recoveredBlock443Block559Stack3 recoveredBlock443Block559Stack4 recoveredBlock443Block559Stack5 recoveredBlock443Block559Stack6 recoveredBlock443Block559Stack7 recoveredBlock443Block559PC recoveredBlock443Block559Step recoveredBlock443Block559Done recoveredBlock443Block559Result |
    recoveredBlock443Block559Stack0 := self.
    recoveredBlock443Block559PC := 566.
    recoveredBlock443Block559Done := false.
    [recoveredBlock443Block559Done not] whileTrue: [
        recoveredBlock443Block559Step := recoveredBlock443Block559PC.
        recoveredBlock443Block559Step = 566 ifTrue: [
            recoveredBlock443Block559Stack1 := nil.
            recoveredBlock443Block559PC := 567.
        ].
        recoveredBlock443Block559Step = 567 ifTrue: [
            recoveredBlock443Block559Stack2 := self.
            recoveredBlock443Block559PC := 568.
        ].
        recoveredBlock443Block559Step = 568 ifTrue: [
            recoveredBlock443Block559Stack3 := recoveredArg1.
            recoveredBlock443Block559PC := 571.
        ].
        recoveredBlock443Block559Step = 571 ifTrue: [
            recoveredBlock443Block559Stack4 := recoveredLocal6.
            recoveredBlock443Block559PC := 574.
        ].
        recoveredBlock443Block559Step = 574 ifTrue: [
            recoveredBlock443Block559Stack5 := recoveredArg3.
            recoveredBlock443Block559PC := 577.
        ].
        recoveredBlock443Block559Step = 577 ifTrue: [
            recoveredBlock443Block559Stack6 := MainController.
            recoveredBlock443Block559PC := 579.
        ].
        recoveredBlock443Block559Step = 579 ifTrue: [
            recoveredBlock443Block559Stack6 := (recoveredBlock443Block559Stack6) asdImportExportOptions.
            recoveredBlock443Block559PC := 581.
        ].
        recoveredBlock443Block559Step = 581 ifTrue: [
            recoveredBlock443Block559Stack6 := (recoveredBlock443Block559Stack6) optionExportIncludeReferencedItems.
            recoveredBlock443Block559PC := 583.
        ].
        recoveredBlock443Block559Step = 583 ifTrue: [
            recoveredBlock443Block559Stack2 := (recoveredBlock443Block559Stack2) createContainerDict: (recoveredBlock443Block559Stack3) path: (recoveredBlock443Block559Stack4) notificationWindow: (recoveredBlock443Block559Stack5) withReferences: (recoveredBlock443Block559Stack6).
            recoveredBlock443Block559PC := 587.
        ].
        recoveredBlock443Block559Step = 587 ifTrue: [
            recoveredBlock443Block559Stack3 := recoveredBlock443Block559Stack2.
            recoveredBlock443Block559PC := 588.
        ].
        recoveredBlock443Block559Step = 588 ifTrue: [
            recoveredLocal2 := recoveredBlock443Block559Stack3.
            recoveredBlock443Block559PC := 591.
        ].
        recoveredBlock443Block559Step = 591 ifTrue: [
            (recoveredBlock443Block559Stack2 == nil) ifTrue: [recoveredBlock443Block559PC := 613] ifFalse: [recoveredBlock443Block559PC := 594].
        ].
        recoveredBlock443Block559Step = 594 ifTrue: [
            recoveredBlock443Block559PC := 595.
        ].
        recoveredBlock443Block559Step = 595 ifTrue: [
            recoveredBlock443Block559Stack1 := self.
            recoveredBlock443Block559PC := 596.
        ].
        recoveredBlock443Block559Step = 596 ifTrue: [
            recoveredBlock443Block559Stack2 := recoveredLocal2.
            recoveredBlock443Block559PC := 599.
        ].
        recoveredBlock443Block559Step = 599 ifTrue: [
            recoveredBlock443Block559Stack3 := recoveredLocal6.
            recoveredBlock443Block559PC := 602.
        ].
        recoveredBlock443Block559Step = 602 ifTrue: [
            recoveredBlock443Block559Stack4 := recoveredLocal6.
            recoveredBlock443Block559PC := 605.
        ].
        recoveredBlock443Block559Step = 605 ifTrue: [
            recoveredBlock443Block559Stack4 := (recoveredBlock443Block559Stack4) fileNameOnly.
            recoveredBlock443Block559PC := 609.
        ].
        recoveredBlock443Block559Step = 609 ifTrue: [
            recoveredBlock443Block559Stack1 := (recoveredBlock443Block559Stack1) checkExportExecutionForArray: (recoveredBlock443Block559Stack2) pathName: (recoveredBlock443Block559Stack3) fileName: (recoveredBlock443Block559Stack4).
            recoveredBlock443Block559PC := 613.
        ].
        recoveredBlock443Block559Step = 613 ifTrue: [
            recoveredBlock443Block559Result := recoveredBlock443Block559Stack1.
            recoveredBlock443Block559Done := true.
        ].
    ].
    recoveredBlock443Block559Result
].
            recoveredBlock443PC := 614.
        ].
        recoveredBlock443Step = 614 ifTrue: [
            recoveredBlock443Stack3 := 'Export items...'.
            recoveredBlock443PC := 616.
        ].
        recoveredBlock443Step = 616 ifTrue: [
            recoveredBlock443Stack1 := (recoveredBlock443Stack1) evaluateBlock: (recoveredBlock443Stack2) label: (recoveredBlock443Stack3).
            recoveredBlock443PC := 618.
        ].
        recoveredBlock443Step = 618 ifTrue: [
            recoveredBlock443Result := recoveredBlock443Stack1.
            recoveredBlock443Done := true.
        ].
    ].
    recoveredBlock443Result
].
            recoveredPC := 619.
        ].
        recoveredStep = 619 ifTrue: [
            recoveredStack2 := 'export to '.
            recoveredPC := 621.
        ].
        recoveredStep = 621 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 624.
        ].
        recoveredStep = 624 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 626.
        ].
        recoveredStep = 626 ifTrue: [
            (recoveredStack0) measureTimeFor: (recoveredStack1) description: (recoveredStack2).
            recoveredPC := 628.
        ].
        recoveredStep = 628 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 629.
        ].
        recoveredStep = 629 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 630.
        ].
        recoveredStep = 630 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 633.
        ].
        recoveredStep = 633 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 634.
        ].
        recoveredStep = 634 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 637.
        ].
        recoveredStep = 637 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 640.
        ].
        recoveredStep = 640 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 641.
        ].
        recoveredStep = 641 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

