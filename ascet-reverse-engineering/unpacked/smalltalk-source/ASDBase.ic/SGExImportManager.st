"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20010634; bytecode file offset 0x90cf40"
!SGExImportManager methodsFor: 'recovered'!
createXMLImportControllerHeadlessOn: recoveredArg1 keepHierarchy: recoveredArg2 remapOIDs: recoveredArg3
    ^nil
! !

"ASDBase.ic method 0x2001254c; bytecode file offset 0x912098"
!SGExImportManager methodsFor: 'recovered'!
mainController
    | recoveredValue0 |
    recoveredValue0 := MainController.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2003ca88; bytecode file offset 0x93bf94"
!SGExImportManager methodsFor: 'recovered'!
currentDBVersion
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := MainController.
    recoveredValue1 := (recoveredValue0) currentDBVersion.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20066b04; bytecode file offset 0x963428"
!SGExImportManager methodsFor: 'recovered'!
dbController
    | recoveredValue0 |
    recoveredValue0 := dbController.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20067b4c; bytecode file offset 0x9646f8"
!SGExImportManager methodsFor: 'recovered'!
userInterface
    | recoveredValue0 |
    recoveredValue0 := userInterface.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006b2e8; bytecode file offset 0x96873c"
!SGExImportManager methodsFor: 'recovered'!
threadManager
    | recoveredValue0 |
    recoveredValue0 := threadManager.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007c614; bytecode file offset 0x97c330"
!SGExImportManager methodsFor: 'recovered'!
isXMLImportExportInstalled
    ^false
! !

"ASDBase.ic method 0x200bdd74; bytecode file offset 0x9bb178"
!SGExImportManager methodsFor: 'recovered'!
dbController: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    dbController := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bef88; bytecode file offset 0x9bc0b4"
!SGExImportManager methodsFor: 'recovered'!
userInterface: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    userInterface := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2ae8; bytecode file offset 0x9bf474"
!SGExImportManager methodsFor: 'recovered'!
threadManager: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    threadManager := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200e3d14; bytecode file offset 0x9e05dc"
!SGExImportManager methodsFor: 'recovered'!
resetImportedItems
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) processedItems.
    recoveredValue1 := LookupTable.
    recoveredValue2 := (recoveredValue1) new.
    (recoveredValue0) at: ('importedItems') put: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20129b0c; bytecode file offset 0xa26468"
!SGExImportManager methodsFor: 'recovered'!
processedItems
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := processedItems.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            processedItems := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := processedItems.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20144a3c; bytecode file offset 0xa41310"
!SGExImportManager methodsFor: 'recovered'!
addImportedItems: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) item.
    recoveredBlock5Value2 := (self) addImportedItem: (recoveredBlock5Value1).
    recoveredBlock5Value2
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20181428; bytecode file offset 0xa7dcf8"
!SGExImportManager methodsFor: 'recovered'!
resetConvertedItems
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) processedItems.
    recoveredValue1 := LookupTable.
    recoveredValue2 := (recoveredValue1) new.
    (recoveredValue0) at: ('converted') put: (recoveredValue2).
    recoveredValue3 := (self) processedItems.
    recoveredValue4 := Set.
    recoveredValue5 := (recoveredValue4) new.
    (recoveredValue3) at: ('convertedV60') put: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x20191220; bytecode file offset 0xa8daf4"
!SGExImportManager methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    super initialize.
    recoveredValue0 := ExError.
    recoveredValue1 := (recoveredValue0) newChild.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) description: ('XML-Export: Non ANSI-C identifier found.').
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) resumable: (true).
    ExNoANSIC := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x201b0188; bytecode file offset 0xaacb54"
!SGExImportManager methodsFor: 'recovered'!
importedItems
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) processedItems.
    recoveredValue1 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 |
    recoveredBlock7Value0 := (self) processedItems.
    recoveredBlock7Value1 := LookupTable.
    recoveredBlock7Value2 := (recoveredBlock7Value1) new.
    recoveredBlock7Value3 := (recoveredBlock7Value0) at: ('importedItems') put: (recoveredBlock7Value2).
    recoveredBlock7Value3
].
    recoveredValue2 := (recoveredValue0) at: ('importedItems') ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x201b0228; bytecode file offset 0xaacb54"
!SGExImportManager methodsFor: 'recovered'!
convertedItemsV60
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) processedItems.
    recoveredValue1 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 |
    recoveredBlock7Value0 := (self) processedItems.
    recoveredBlock7Value1 := Set.
    recoveredBlock7Value2 := (recoveredBlock7Value1) new.
    recoveredBlock7Value3 := (recoveredBlock7Value0) at: ('convertedV60') put: (recoveredBlock7Value2).
    recoveredBlock7Value3
].
    recoveredValue2 := (recoveredValue0) at: ('convertedV60') ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x201b0248; bytecode file offset 0xaacb54"
!SGExImportManager methodsFor: 'recovered'!
convertedItems
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) processedItems.
    recoveredValue1 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 |
    recoveredBlock7Value0 := (self) processedItems.
    recoveredBlock7Value1 := LookupTable.
    recoveredBlock7Value2 := (recoveredBlock7Value1) new.
    recoveredBlock7Value3 := (recoveredBlock7Value0) at: ('converted') put: (recoveredBlock7Value2).
    recoveredBlock7Value3
].
    recoveredValue2 := (recoveredValue0) at: ('converted') ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x201f4b38; bytecode file offset 0xaf140c"
!SGExImportManager methodsFor: 'recovered'!
addImportedItem: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 29] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := SGMonitorStreamDummy.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) label.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := ' is imported into the database ('.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := (recoveredStack3) ascetLink: (recoveredStack4).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := ')'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) addImportantInfoText: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20256104; bytecode file offset 0xb529d0"
!SGExImportManager methodsFor: 'recovered'!
checkViewsOfItem: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasTextDocumentation.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 37].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) textDocumentation.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) textObjects.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 recoveredBlock13Value3 |
    recoveredBlock13Value0 := recoveredBlock13Arg1.
    recoveredBlock13Value1 := (recoveredBlock13Value0) assignedViewNames.
    recoveredBlock13Value2 := [:recoveredBlock13Block22Arg1 | 
    | recoveredBlock13Block22Value0 recoveredBlock13Block22Value1 |
    recoveredBlock13Block22Value0 := recoveredBlock13Block22Arg1.
    recoveredBlock13Block22Value1 := (self) checkViewName: (recoveredBlock13Block22Value0).
    recoveredBlock13Block22Value1
].
    recoveredBlock13Value3 := (recoveredBlock13Value1) do: (recoveredBlock13Value2).
    recoveredBlock13Value3
].
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203ff918; bytecode file offset 0xcfc200"
!SGExImportManager methodsFor: 'recovered'!
checkViewName: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := dbSettings.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) categories.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [:block280fa134Arg1 :block280fa134Arg2 | 
    | block280fa134Value0 block280fa134Value1 block280fa134Value2 block280fa134Value3 block280fa134Value4 |
    block280fa134Value0 := block280fa134Arg1.
    block280fa134Value1 := (block280fa134Value0) name.
    block280fa134Value2 := block280fa134Arg2.
    block280fa134Value3 := (block280fa134Value2) name.
    block280fa134Value4 := (block280fa134Value1) < (block280fa134Value3).
    block280fa134Value4
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := [:recoveredBlock25Arg1 | 
    | recoveredBlock25Value0 recoveredBlock25Value1 recoveredBlock25Value2 recoveredBlock25Value3 |
    recoveredBlock25Value0 := recoveredBlock25Arg1.
    recoveredBlock25Value1 := (recoveredBlock25Value0) name.
    recoveredBlock25Value2 := recoveredArg1.
    recoveredBlock25Value3 := (recoveredBlock25Value1) = (recoveredBlock25Value2).
    recoveredBlock25Value3
].
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock39Stack0 recoveredBlock39Stack1 recoveredBlock39Stack2 recoveredBlock39Stack3 recoveredBlock39PC recoveredBlock39Step recoveredBlock39Done recoveredBlock39Result |
    recoveredBlock39Stack0 := self.
    recoveredBlock39PC := 46.
    recoveredBlock39Done := false.
    [recoveredBlock39Done not] whileTrue: [
        recoveredBlock39Step := recoveredBlock39PC.
        recoveredBlock39Step = 46 ifTrue: [
            recoveredBlock39Stack1 := Smalltalk.
            recoveredBlock39PC := 48.
        ].
        recoveredBlock39Step = 48 ifTrue: [
            recoveredBlock39Stack2 := 'SGCategory'.
            recoveredBlock39PC := 50.
        ].
        recoveredBlock39Step = 50 ifTrue: [
            recoveredBlock39Stack1 := (recoveredBlock39Stack1) at: (recoveredBlock39Stack2).
            recoveredBlock39PC := 52.
        ].
        recoveredBlock39Step = 52 ifTrue: [
            recoveredBlock39Stack1 := (recoveredBlock39Stack1) createDefault.
            recoveredBlock39PC := 54.
        ].
        recoveredBlock39Step = 54 ifTrue: [
            recoveredBlock39Stack2 := recoveredBlock39Stack1.
            recoveredBlock39PC := 55.
        ].
        recoveredBlock39Step = 55 ifTrue: [
            recoveredLocal2 := recoveredBlock39Stack2.
            recoveredBlock39PC := 58.
        ].
        recoveredBlock39Step = 58 ifTrue: [
            (recoveredBlock39Stack1 ~~ nil) ifTrue: [recoveredBlock39PC := 64] ifFalse: [recoveredBlock39PC := 62].
        ].
        recoveredBlock39Step = 62 ifTrue: [
            recoveredBlock39Stack1 := nil.
            recoveredBlock39PC := 63.
        ].
        recoveredBlock39Step = 63 ifTrue: [
            ^recoveredBlock39Stack1
        ].
        recoveredBlock39Step = 64 ifTrue: [
            recoveredBlock39Stack1 := recoveredLocal2.
            recoveredBlock39PC := 67.
        ].
        recoveredBlock39Step = 67 ifTrue: [
            recoveredBlock39Stack2 := recoveredArg1.
            recoveredBlock39PC := 70.
        ].
        recoveredBlock39Step = 70 ifTrue: [
            (recoveredBlock39Stack1) name: (recoveredBlock39Stack2).
            recoveredBlock39PC := 72.
        ].
        recoveredBlock39Step = 72 ifTrue: [
            recoveredBlock39Stack1 := recoveredLocal1.
            recoveredBlock39PC := 75.
        ].
        recoveredBlock39Step = 75 ifTrue: [
            recoveredBlock39Stack2 := recoveredLocal2.
            recoveredBlock39PC := 78.
        ].
        recoveredBlock39Step = 78 ifTrue: [
            recoveredBlock39Stack1 := (recoveredBlock39Stack1) copyWith: (recoveredBlock39Stack2).
            recoveredBlock39PC := 80.
        ].
        recoveredBlock39Step = 80 ifTrue: [
            recoveredLocal1 := recoveredBlock39Stack1.
            recoveredBlock39PC := 83.
        ].
        recoveredBlock39Step = 83 ifTrue: [
            recoveredBlock39Stack1 := MainController.
            recoveredBlock39PC := 85.
        ].
        recoveredBlock39Step = 85 ifTrue: [
            recoveredBlock39Stack2 := recoveredLocal1.
            recoveredBlock39PC := 88.
        ].
        recoveredBlock39Step = 88 ifTrue: [
            recoveredBlock39Stack1 := (recoveredBlock39Stack1) updateCategories: (recoveredBlock39Stack2).
            recoveredBlock39PC := 90.
        ].
        recoveredBlock39Step = 90 ifTrue: [
            recoveredBlock39Result := recoveredBlock39Stack1.
            recoveredBlock39Done := true.
        ].
    ].
    recoveredBlock39Result
].
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204cdc08; bytecode file offset 0xdca514"
!SGExImportManager methodsFor: 'recovered'!
evaluateBlock: recoveredArg1 label: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) userInterface.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 139] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) userInterface.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDestroyed.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 139] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := 'Kk'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 'Call_71182'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := '                                                                                                    '.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRuntime.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 49] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) image.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) breakpointManager.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) activeBreakpoints.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) userInterface.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := [:recoveredBlock60Arg1 | 
    | recoveredBlock60Value0 recoveredBlock60Value1 recoveredBlock60Value2 recoveredBlock60Value3 recoveredBlock60Value4 recoveredBlock60Value5 recoveredBlock60Value6 recoveredBlock60Value7 |
    recoveredBlock60Value0 := (self) dbController.
    recoveredBlock60Value1 := recoveredBlock60Arg1.
    (recoveredBlock60Value0) progressWindow: (recoveredBlock60Value1).
    recoveredBlock60Value2 := SGMonitorStreamDummy.
    recoveredBlock60Value3 := (recoveredBlock60Value2) create.
    recoveredBlock60Value4 := recoveredArg1.
    recoveredBlock60Value5 := recoveredArg2.
    recoveredBlock60Value6 := (recoveredBlock60Value3) measureTimeFor: (recoveredBlock60Value4) description: (recoveredBlock60Value5).
    recoveredBlock60Value7 := recoveredBlock60Value6.
    recoveredLocal3 := recoveredBlock60Value7.
    recoveredBlock60Value6
].
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack4 := true.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack0) execLongOperation: (recoveredStack1) message: (recoveredStack2) allowCancel: (recoveredStack3) showProgress: (recoveredStack4).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredPC := 135.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := SGMonitorStreamDummy.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock104Value0 recoveredBlock104Value1 recoveredBlock104Value2 recoveredBlock104Value3 recoveredBlock104Value4 |
    recoveredBlock104Value0 := RBUserInterface.
    recoveredBlock104Value1 := (recoveredBlock104Value0) new.
    recoveredBlock104Value2 := recoveredArg1.
    recoveredBlock104Value3 := recoveredLocal1.
    recoveredBlock104Value4 := (recoveredBlock104Value1) execWithProgressDialog: (recoveredBlock104Value2) message: (recoveredBlock104Value3) showProgress: (true) title: ('ASCET').
    recoveredBlock104Value4
].
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := (recoveredStack0) measureTimeFor: (recoveredStack1) description: (recoveredStack2).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack0 := SGMonitorStreamDummy.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack0 := (recoveredStack0) measureTimeFor: (recoveredStack1) description: (recoveredStack2).
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

