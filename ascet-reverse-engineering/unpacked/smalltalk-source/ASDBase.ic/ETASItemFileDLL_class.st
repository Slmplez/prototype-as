"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20013c74; bytecode file offset 0x912098"
!ETASItemFileDLL class methodsFor: 'recovered'!
ClassInstances
    | recoveredValue0 |
    recoveredValue0 := ClassInstances.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20054518; bytecode file offset 0x951190"
!ETASItemFileDLL class methodsFor: 'recovered'!
ClassInstances: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ClassInstances := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200b077c; bytecode file offset 0x9ad058"
!ETASItemFileDLL class methodsFor: 'recovered'!
hasRecords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Processor.
    recoveredValue1 := (recoveredValue0) activeProcess.
    recoveredValue2 := (recoveredValue1) receiverAtFrame: (1).
    recoveredValue3 := (recoveredValue2) hasRecords.
    ^recoveredValue3
! !

"ASDBase.ic method 0x200b0794; bytecode file offset 0x9ad058"
!ETASItemFileDLL class methodsFor: 'recovered'!
allowsGroup
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Processor.
    recoveredValue1 := (recoveredValue0) activeProcess.
    recoveredValue2 := (recoveredValue1) receiverAtFrame: (1).
    recoveredValue3 := (recoveredValue2) allowsGroup.
    ^recoveredValue3
! !

"ASDBase.ic method 0x200b7bec; bytecode file offset 0x9b44c0"
!ETASItemFileDLL class methodsFor: 'recovered'!
removeFunctionTable: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ItemFileAPIFunctions.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) removeKey: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200de410; bytecode file offset 0x9dacd4"
!ETASItemFileDLL class methodsFor: 'recovered'!
createFile: recoveredArg1 recordFormat: recoveredArg2 nameTable: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (self) createFile: (recoveredValue0) recordFormat: (recoveredValue1) nameTable: (recoveredValue2) sampleCount: (0).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200e0ed8; bytecode file offset 0x9dd7a0"
!ETASItemFileDLL class methodsFor: 'recovered'!
implementations
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EtasOSHkey.
    recoveredValue1 := (recoveredValue0) getETASMeasureDLLs.
    (self) ClassInstances: (recoveredValue1).
    recoveredValue2 := (self) ClassInstances.
    recoveredValue3 := (recoveredValue2) asArray.
    ^recoveredValue3
! !

"ASDBase.ic method 0x2011527c; bytecode file offset 0xa11b48"
!ETASItemFileDLL class methodsFor: 'recovered'!
initializeClass
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EtasOSHkey.
    recoveredValue1 := (recoveredValue0) getETASMeasureDLLs.
    (self) ClassInstances: (recoveredValue1).
    recoveredValue2 := LookupTable.
    recoveredValue3 := (recoveredValue2) new.
    ItemFileAPIFunctions := recoveredValue3.
    ^self
! !

"ASDBase.ic method 0x20119f5c; bytecode file offset 0xa16880"
!ETASItemFileDLL class methodsFor: 'recovered'!
closeAllDlls
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) ClassInstances.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c84fcArg1 | 
    | block280c84fcValue0 block280c84fcValue1 |
    block280c84fcValue0 := block280c84fcArg1.
    block280c84fcValue1 := (block280c84fcValue0) closeDLL.
    block280c84fcValue1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20126e34; bytecode file offset 0xa23710"
!ETASItemFileDLL class methodsFor: 'recovered'!
create: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super create: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    (recoveredValue2) onFinalizeDo: ('finalize').
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x201adc94; bytecode file offset 0xaaa568"
!ETASItemFileDLL class methodsFor: 'recovered'!
getCurrentDLLPath
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ItemFileAPIFunctions.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'CurrentDLLPath'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := [
    | block280d3698Value0 block280d3698Value1 block280d3698Value2 block280d3698Value3 |
    block280d3698Value0 := EtasOSHkey.
    block280d3698Value1 := (block280d3698Value0) getETASMeasureDLLs.
    block280d3698Value2 := (block280d3698Value1) someElement.
    block280d3698Value3 := (block280d3698Value2) dll.
    block280d3698Value3
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsentPut: (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2021133c; bytecode file offset 0xb0dc10"
!ETASItemFileDLL class methodsFor: 'recovered'!
fileTypeSymbol
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Processor.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) activeProcess.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) receiverAtFrame: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) fileTypeSymbol.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) implementations.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) ClassInstances.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) someElement.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileTypeSymbol.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20211384; bytecode file offset 0xb0dc88"
!ETASItemFileDLL class methodsFor: 'recovered'!
fileExtension
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Processor.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) activeProcess.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) receiverAtFrame: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) fileExtension.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) implementations.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) ClassInstances.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) someAssociation.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) key.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202113b0; bytecode file offset 0xb0dc88"
!ETASItemFileDLL class methodsFor: 'recovered'!
fileTypeString
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Processor.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) activeProcess.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) receiverAtFrame: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) fileTypeSymbol.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) implementations.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) ClassInstances.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) someElement.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileTypeString.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20276550; bytecode file offset 0xb72e20"
!ETASItemFileDLL class methodsFor: 'recovered'!
getFunctionTable: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ItemFileAPIFunctions.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ItemFileAPIFunctions := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) getFunctionTable: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := ItemFileAPIFunctions.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := [
    | block280e0c10Value0 block280e0c10Value1 |
    block280e0c10Value0 := LookupTable.
    block280e0c10Value1 := (block280e0c10Value0) new.
    block280e0c10Value1
].
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsentPut: (recoveredStack3).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x204f52c8; bytecode file offset 0xdf1be4"
!ETASItemFileDLL class methodsFor: 'recovered'!
createFrom: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) initializeClass.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := RBBcrtl32DLL.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) splitPath: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := 4.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) firstOrNil.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := $..
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := '.'.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) implementations.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) ClassInstances.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock51Value0 recoveredBlock51Value1 recoveredBlock51Value2 recoveredBlock51Value3 |
    recoveredBlock51Value0 := DBFileError.
    recoveredBlock51Value1 := recoveredArg1.
    recoveredBlock51Value2 := ('unknown measureFile extension: ') , (recoveredBlock51Value1).
    recoveredBlock51Value3 := (recoveredBlock51Value0) create: (recoveredBlock51Value2).
    ^recoveredBlock51Value3
].
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack3 := [:recoveredBlock70Arg1 | 
    | recoveredBlock70Stack0 recoveredBlock70Stack1 recoveredBlock70Stack2 recoveredBlock70Stack3 recoveredBlock70PC recoveredBlock70Step recoveredBlock70Done recoveredBlock70Result |
    recoveredBlock70Stack0 := self.
    recoveredBlock70PC := 76.
    recoveredBlock70Done := false.
    [recoveredBlock70Done not] whileTrue: [
        recoveredBlock70Step := recoveredBlock70PC.
        recoveredBlock70Step = 76 ifTrue: [
            recoveredBlock70Stack1 := CfsStat.
            recoveredBlock70PC := 78.
        ].
        recoveredBlock70Step = 78 ifTrue: [
            recoveredBlock70Stack2 := recoveredBlock70Arg1.
            recoveredBlock70PC := 79.
        ].
        recoveredBlock70Step = 79 ifTrue: [
            recoveredBlock70Stack2 := (recoveredBlock70Stack2) dll.
            recoveredBlock70PC := 81.
        ].
        recoveredBlock70Step = 81 ifTrue: [
            recoveredBlock70Stack1 := (recoveredBlock70Stack1) stat: (recoveredBlock70Stack2).
            recoveredBlock70PC := 83.
        ].
        recoveredBlock70Step = 83 ifTrue: [
            recoveredBlock70Stack2 := recoveredBlock70Stack1.
            recoveredBlock70PC := 84.
        ].
        recoveredBlock70Step = 84 ifTrue: [
            recoveredLocal3 := recoveredBlock70Stack2.
            recoveredBlock70PC := 87.
        ].
        recoveredBlock70Step = 87 ifTrue: [
            recoveredBlock70Stack1 := (recoveredBlock70Stack1) isCfsError.
            recoveredBlock70PC := 89.
        ].
        recoveredBlock70Step = 89 ifTrue: [
            (recoveredBlock70Stack1) ifTrue: [recoveredBlock70PC := 92] ifFalse: [recoveredBlock70PC := 109].
        ].
        recoveredBlock70Step = 92 ifTrue: [
            recoveredBlock70Stack1 := recoveredLocal3.
            recoveredBlock70PC := 95.
        ].
        recoveredBlock70Step = 95 ifTrue: [
            recoveredBlock70Stack2 := recoveredBlock70Arg1.
            recoveredBlock70PC := 96.
        ].
        recoveredBlock70Step = 96 ifTrue: [
            recoveredBlock70Stack2 := (recoveredBlock70Stack2) dll.
            recoveredBlock70PC := 98.
        ].
        recoveredBlock70Step = 98 ifTrue: [
            (recoveredBlock70Stack1) errorObject: (recoveredBlock70Stack2).
            recoveredBlock70PC := 100.
        ].
        recoveredBlock70Step = 100 ifTrue: [
            recoveredBlock70Stack1 := recoveredLocal3.
            recoveredBlock70PC := 103.
        ].
        recoveredBlock70Step = 103 ifTrue: [
            (recoveredBlock70Stack1) monitor.
            recoveredBlock70PC := 105.
        ].
        recoveredBlock70Step = 105 ifTrue: [
            recoveredBlock70Stack1 := recoveredLocal3.
            recoveredBlock70PC := 108.
        ].
        recoveredBlock70Step = 108 ifTrue: [
            ^recoveredBlock70Stack1
        ].
        recoveredBlock70Step = 109 ifTrue: [
            recoveredBlock70Stack1 := recoveredBlock70Arg1.
            recoveredBlock70PC := 110.
        ].
        recoveredBlock70Step = 110 ifTrue: [
            recoveredBlock70Stack1 := (recoveredBlock70Stack1) copy.
            recoveredBlock70PC := 112.
        ].
        recoveredBlock70Step = 112 ifTrue: [
            recoveredLocal2 := recoveredBlock70Stack1.
            recoveredBlock70PC := 115.
        ].
        recoveredBlock70Step = 115 ifTrue: [
            recoveredBlock70Stack1 := recoveredLocal2.
            recoveredBlock70PC := 118.
        ].
        recoveredBlock70Step = 118 ifTrue: [
            recoveredBlock70Stack2 := recoveredArg1.
            recoveredBlock70PC := 121.
        ].
        recoveredBlock70Step = 121 ifTrue: [
            (recoveredBlock70Stack1) path: (recoveredBlock70Stack2).
            recoveredBlock70PC := 123.
        ].
        recoveredBlock70Step = 123 ifTrue: [
            recoveredBlock70Stack1 := recoveredLocal2.
            recoveredBlock70PC := 126.
        ].
        recoveredBlock70Step = 126 ifTrue: [
            recoveredBlock70Stack1 := (recoveredBlock70Stack1) initializeFunctions.
            recoveredBlock70PC := 128.
        ].
        recoveredBlock70Step = 128 ifTrue: [
            recoveredBlock70Stack2 := recoveredBlock70Stack1.
            recoveredBlock70PC := 129.
        ].
        recoveredBlock70Step = 129 ifTrue: [
            recoveredLocal3 := recoveredBlock70Stack2.
            recoveredBlock70PC := 132.
        ].
        recoveredBlock70Step = 132 ifTrue: [
            recoveredBlock70Stack1 := (recoveredBlock70Stack1) isError.
            recoveredBlock70PC := 134.
        ].
        recoveredBlock70Step = 134 ifTrue: [
            (recoveredBlock70Stack1) ifTrue: [recoveredBlock70PC := 138] ifFalse: [recoveredBlock70PC := 142].
        ].
        recoveredBlock70Step = 138 ifTrue: [
            recoveredBlock70Stack1 := recoveredLocal3.
            recoveredBlock70PC := 141.
        ].
        recoveredBlock70Step = 141 ifTrue: [
            ^recoveredBlock70Stack1
        ].
        recoveredBlock70Step = 142 ifTrue: [
            recoveredBlock70Stack1 := recoveredLocal2.
            recoveredBlock70PC := 145.
        ].
        recoveredBlock70Step = 145 ifTrue: [
            recoveredBlock70Stack1 := (recoveredBlock70Stack1) parse.
            recoveredBlock70PC := 147.
        ].
        recoveredBlock70Step = 147 ifTrue: [
            recoveredBlock70Stack2 := recoveredBlock70Stack1.
            recoveredBlock70PC := 148.
        ].
        recoveredBlock70Step = 148 ifTrue: [
            recoveredLocal2 := recoveredBlock70Stack2.
            recoveredBlock70PC := 151.
        ].
        recoveredBlock70Step = 151 ifTrue: [
            recoveredBlock70Stack1 := (recoveredBlock70Stack1) isError.
            recoveredBlock70PC := 153.
        ].
        recoveredBlock70Step = 153 ifTrue: [
            (recoveredBlock70Stack1) ifTrue: [recoveredBlock70PC := 162] ifFalse: [recoveredBlock70PC := 156].
        ].
        recoveredBlock70Step = 156 ifTrue: [
            recoveredBlock70Stack1 := recoveredLocal2.
            recoveredBlock70PC := 159.
        ].
        recoveredBlock70Step = 159 ifTrue: [
            recoveredBlock70Stack1 := (recoveredBlock70Stack1) testReadFirstRecord.
            recoveredBlock70PC := 161.
        ].
        recoveredBlock70Step = 161 ifTrue: [
            ^recoveredBlock70Stack1
        ].
        recoveredBlock70Step = 162 ifTrue: [
            recoveredBlock70Stack1 := recoveredLocal2.
            recoveredBlock70PC := 165.
        ].
        recoveredBlock70Step = 165 ifTrue: [
            ^recoveredBlock70Stack1
        ].
    ].
    recoveredBlock70Result
].
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2) ifPresent: (recoveredStack3).
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205970d8; bytecode file offset 0xe93a74"
!ETASItemFileDLL class methodsFor: 'recovered'!
FunctionAPI
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) at: ('FileExtension') put: (#('pointer')).
    recoveredValue4 := recoveredValue2.
    (recoveredValue4) at: ('FileTypeSymbol') put: (#('pointer')).
    recoveredValue5 := recoveredValue2.
    (recoveredValue5) at: ('SetGroupChannel') put: (#('bool' 'struct' 'uint16' 'struct' 'struct' 'uint32' 'bool')).
    recoveredValue6 := recoveredValue2.
    (recoveredValue6) at: ('GetGroupChannel') put: (#('bool' 'struct' 'uint16' 'pointer' 'pointer' 'pointer' 'uint32')).
    recoveredValue7 := recoveredValue2.
    (recoveredValue7) at: ('PreOpenItemFile') put: (#('bool' 'struct')).
    recoveredValue8 := recoveredValue2.
    (recoveredValue8) at: ('GroupCnt') put: (#('uint16' 'struct' 'uint16')).
    recoveredValue9 := recoveredValue2.
    (recoveredValue9) at: ('CleanupDLL') put: (#('bool')).
    recoveredValue10 := recoveredValue2.
    (recoveredValue10) at: ('SampleCnt') put: (#('uint32' 'struct' 'uint16')).
    recoveredValue11 := recoveredValue2.
    (recoveredValue11) at: ('SetSampleCnt') put: (#('uint32' 'uint32' 'struct' 'uint16')).
    recoveredValue12 := recoveredValue2.
    (recoveredValue12) at: ('CurrentRecordNumber') put: (#('uint32' 'struct' 'uint16')).
    recoveredValue13 := recoveredValue2.
    (recoveredValue13) at: ('OffsetIntoFile') put: (#('uint32' 'struct' 'uint16')).
    recoveredValue14 := recoveredValue2.
    (recoveredValue14) at: ('IndexTimeChannel') put: (#('uint32' 'struct' 'uint16')).
    recoveredValue15 := recoveredValue2.
    (recoveredValue15) at: ('SetIndexTimeChannel') put: (#('uint32' 'struct' 'uint16' 'int32')).
    recoveredValue16 := recoveredValue2.
    (recoveredValue16) at: ('NameTable') put: (#('pointer' 'struct' 'uint16')).
    recoveredValue17 := recoveredValue2.
    (recoveredValue17) at: ('SetNameTable') put: (#('pointer' 'struct' 'struct' 'uint16')).
    recoveredValue18 := recoveredValue2.
    (recoveredValue18) at: ('Formula') put: (#('uint16' 'pointer' 'struct' 'uint16')).
    recoveredValue19 := recoveredValue2.
    (recoveredValue19) at: ('SetFormula') put: (#('pointer' 'pointer' 'struct' 'uint16')).
    recoveredValue20 := recoveredValue2.
    (recoveredValue20) at: ('RecordFormat') put: (#('pointer' 'struct' 'uint16')).
    recoveredValue21 := recoveredValue2.
    (recoveredValue21) at: ('SetRecordFormat') put: (#('pointer' 'struct' 'struct' 'uint16')).
    recoveredValue22 := recoveredValue2.
    (recoveredValue22) at: ('HasRecords') put: (#('bool')).
    recoveredValue23 := recoveredValue2.
    (recoveredValue23) at: ('HasRecord') put: (#('bool')).
    recoveredValue24 := recoveredValue2.
    (recoveredValue24) at: ('AllowGroups') put: (#('bool')).
    recoveredValue25 := recoveredValue2.
    (recoveredValue25) at: ('IsOpen') put: (#('bool' 'struct')).
    recoveredValue26 := recoveredValue2.
    (recoveredValue26) at: ('CreateItemFile') put: (#('handle' 'struct')).
    recoveredValue27 := recoveredValue2.
    (recoveredValue27) at: ('OpenItemFile') put: (#('handle' 'struct')).
    recoveredValue28 := recoveredValue2.
    (recoveredValue28) at: ('OpenItemFileReadOnly') put: (#('handle' 'struct')).
    recoveredValue29 := recoveredValue2.
    (recoveredValue29) at: ('CloseItemFile') put: (#('bool' 'handle')).
    recoveredValue30 := recoveredValue2.
    (recoveredValue30) at: ('PreCloseItemFile') put: (#('bool' 'handle')).
    recoveredValue31 := recoveredValue2.
    (recoveredValue31) at: ('CreateOneFileNamed') put: (#('bool' 'handle')).
    recoveredValue32 := recoveredValue2.
    (recoveredValue32) at: ('SeekTo') put: (#('uint32' 'uint32' 'struct' 'uint16')).
    recoveredValue33 := recoveredValue2.
    (recoveredValue33) at: ('ReadCurrentRecord') put: (#('uint32' 'struct' 'uint32' 'struct' 'uint16')).
    recoveredValue34 := recoveredValue2.
    (recoveredValue34) at: ('ReadFirstRecord') put: (#('uint32' 'struct' 'uint32' 'struct' 'uint16')).
    recoveredValue35 := recoveredValue2.
    (recoveredValue35) at: ('ReadLastRecord') put: (#('uint32' 'struct' 'uint32' 'struct' 'uint16')).
    recoveredValue36 := recoveredValue2.
    (recoveredValue36) at: ('ReadNextRecord') put: (#('uint32' 'struct' 'uint32' 'struct' 'uint16')).
    recoveredValue37 := recoveredValue2.
    (recoveredValue37) at: ('ReadFirstBlockOfData') put: (#('uint32' 'struct' 'uint32' 'struct' 'uint16')).
    recoveredValue38 := recoveredValue2.
    (recoveredValue38) at: ('ReadNextBlockOfData') put: (#('uint32' 'struct' 'uint32' 'struct' 'uint16')).
    recoveredValue39 := recoveredValue2.
    (recoveredValue39) at: ('AddRecord') put: (#('uint32' 'struct' 'uint32' 'struct' 'uint16')).
    recoveredValue40 := recoveredValue2.
    (recoveredValue40) at: ('WriteFirstBlockOfData') put: (#('uint32' 'struct' 'uint32' 'struct' 'uint16')).
    (recoveredValue2) at: ('WriteNextBlockOfData') put: (#('uint32' 'struct' 'uint32' 'struct' 'uint16')).
    recoveredValue41 := recoveredLocal1.
    ^recoveredValue41
! !

