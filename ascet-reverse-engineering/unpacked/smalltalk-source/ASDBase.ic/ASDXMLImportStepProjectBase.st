"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20016490; bytecode file offset 0x92209c"
!ASDXMLImportStepProjectBase methodsFor: 'recovered'!
description
    ^'Importing project data'
! !

"ASDBase.ic method 0x2004e9c0; bytecode file offset 0x94d048"
!ASDXMLImportStepProjectBase methodsFor: 'recovered'!
makeExperimentImportStep
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20052a88; bytecode file offset 0x9505d0"
!ASDXMLImportStepProjectBase methodsFor: 'recovered'!
handleOSLogic: recoveredArg1
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20052ddc; bytecode file offset 0x9505d0"
!ASDXMLImportStepProjectBase methodsFor: 'recovered'!
handleFiles: recoveredArg1
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20053c10; bytecode file offset 0x9505d0"
!ASDXMLImportStepProjectBase methodsFor: 'recovered'!
handleSGDBObject: recoveredArg1
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20059d28; bytecode file offset 0x9566ac"
!ASDXMLImportStepProjectBase methodsFor: 'recovered'!
handleSGDBObject: recoveredArg1 oid: recoveredArg2
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2005afec; bytecode file offset 0x957a6c"
!ASDXMLImportStepProjectBase methodsFor: 'recovered'!
handleFileContent: recoveredArg1 location: recoveredArg2 pack: recoveredArg3
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x200dbf20; bytecode file offset 0x9d87e0"
!ASDXMLImportStepProjectBase methodsFor: 'recovered'!
readTriggerHooks: recoveredArg1 newEl: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) getString: ('prePostHooks').
    (recoveredValue0) setPrePostHooksForString: (recoveredValue2).
    recoveredValue3 := recoveredArg2.
    ^recoveredValue3
! !

"ASDBase.ic method 0x2011230c; bytecode file offset 0xa0ebe8"
!ASDXMLImportStepProjectBase methodsFor: 'recovered'!
initOn: recoveredArg1 component: recoveredArg2 item: recoveredArg3 importPath: recoveredArg4 ext: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg4.
    recoveredValue4 := recoveredArg5.
    super initOn: (recoveredValue0) sgClass: (recoveredValue1) item: (recoveredValue2) importPath: (recoveredValue3) ext: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20159e2c; bytecode file offset 0xa566f0"
!ASDXMLImportStepProjectBase methodsFor: 'recovered'!
readImplementationType: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := ASDImplType.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := handler.
    recoveredValue4 := (recoveredValue1) readImplementationType: (recoveredValue2) handler: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := handler.
    (recoveredValue5) doneIfNot: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    ^recoveredValue7
! !

"ASDBase.ic method 0x20197434; bytecode file offset 0xa93d00"
!ASDXMLImportStepProjectBase methodsFor: 'recovered'!
readTriggerTimeTable: recoveredArg1 newEl: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    (self) readTriggerBase: (recoveredValue0) newEl: (recoveredValue1).
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) getDouble: ('delay').
    (recoveredValue2) delay: (recoveredValue4).
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) getDouble: ('period').
    (recoveredValue5) period: (recoveredValue7).
    recoveredValue8 := recoveredArg2.
    ^recoveredValue8
! !

"ASDBase.ic method 0x2021d4c8; bytecode file offset 0xb19dbc"
!ASDXMLImportStepProjectBase methodsFor: 'recovered'!
readTriggerSoftware: recoveredArg1 newEl: recoveredArg2
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
            recoveredStack2 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) readTriggerBase: (recoveredStack1) newEl: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 'Call_74722'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 'autostart'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) getBoolean: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) setAutostart.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) clearAutostart.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2021d4ec; bytecode file offset 0xb19dbc"
!ASDXMLImportStepProjectBase methodsFor: 'recovered'!
readTriggerAlarm: recoveredArg1 newEl: recoveredArg2
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
            recoveredStack2 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) readTriggerTimeTable: (recoveredStack1) newEl: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 'Call_74722'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 'startAlarm'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) getBoolean: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) setStartAlarm.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) clearStartAlarm.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2026325c; bytecode file offset 0xb5fb28"
!ASDXMLImportStepProjectBase methodsFor: 'recovered'!
readAdditionalSignatureMappingSourceObjectAttributes: recoveredArg1 sourceObject: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    super readAdditionalSignatureMappingSourceObjectAttributes: (recoveredValue0) sourceObject: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) getNNInt: ('index') default: (nil).
    recoveredValue4 := [:recoveredBlock22Arg1 | 
    | recoveredBlock22Value0 recoveredBlock22Value1 recoveredBlock22Value2 |
    recoveredBlock22Value0 := recoveredArg2.
    recoveredBlock22Value1 := recoveredBlock22Arg1.
    recoveredBlock22Value2 := (recoveredBlock22Value0) setIndex: (recoveredBlock22Value1).
    recoveredBlock22Value2
].
    (recoveredValue3) ifNotNil: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x202b73b0; bytecode file offset 0xbb3ca0"
!ASDXMLImportStepProjectBase methodsFor: 'recovered'!
readOperationMode: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
    recoveredValue0 := SGOSMode.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) getString: ('name').
    recoveredValue3 := (recoveredValue0) create: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) getNNInt: ('id').
    (recoveredValue4) id: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := (recoveredValue8) getBoolean: ('isStartMode').
    (recoveredValue7) startMode: (recoveredValue9).
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := recoveredArg1.
    recoveredValue12 := (recoveredValue11) getBoolean: ('isCTMode') default: (false).
    (recoveredValue10) ctMode: (recoveredValue12).
    recoveredValue13 := opModes.
    recoveredValue14 := recoveredLocal1.
    recoveredValue15 := (recoveredValue14) name.
    recoveredValue16 := recoveredLocal1.
    (recoveredValue13) at: (recoveredValue15) put: (recoveredValue16).
    recoveredValue17 := recoveredLocal1.
    ^recoveredValue17
! !

"ASDBase.ic method 0x202da0d8; bytecode file offset 0xbd69c4"
!ASDXMLImportStepProjectBase methodsFor: 'recovered'!
readTriggerBase: recoveredArg1 newEl: recoveredArg2
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
            recoveredStack2 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) readTriggerHooks: (recoveredStack1) newEl: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := 'priority'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) getNNInt: (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) priority: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := 'scheduling'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) getString: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) setSchedulingForString: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := 'maxNoActivations'.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) getNNInt: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) maxActivate: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := 'deadline'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) getBoolean: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 41].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) setDeadlineCheck.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := 'deadlineValue'.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) getNNInt: (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) deadlineCheckValue: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203c6e18; bytecode file offset 0xcc3700"
!ASDXMLImportStepProjectBase methodsFor: 'recovered'!
readERCOSEKT: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Local1 recoveredBlock15Local2 recoveredBlock15Stack0 recoveredBlock15Stack1 recoveredBlock15Stack2 recoveredBlock15Stack3 recoveredBlock15Stack4 recoveredBlock15Stack5 recoveredBlock15PC recoveredBlock15Step recoveredBlock15Done recoveredBlock15Result |
    recoveredBlock15Stack0 := self.
    recoveredBlock15PC := 22.
    recoveredBlock15Done := false.
    [recoveredBlock15Done not] whileTrue: [
        recoveredBlock15Step := recoveredBlock15PC.
        recoveredBlock15Step = 22 ifTrue: [
            recoveredBlock15Stack1 := recoveredBlock15Arg1.
            recoveredBlock15PC := 23.
        ].
        recoveredBlock15Step = 23 ifTrue: [
            recoveredBlock15Stack2 := 'TargetKey'.
            recoveredBlock15PC := 25.
        ].
        recoveredBlock15Step = 25 ifTrue: [
            recoveredBlock15Stack3 := [:block280f6de0Arg1 | 
    | block280f6de0Value0 block280f6de0Value1 |
    block280f6de0Value0 := block280f6de0Arg1.
    block280f6de0Value1 := (block280f6de0Value0) getString: ('name').
    block280f6de0Value1
].
            recoveredBlock15PC := 27.
        ].
        recoveredBlock15Step = 27 ifTrue: [
            recoveredBlock15PC := 36.
        ].
        recoveredBlock15Step = 36 ifTrue: [
            recoveredBlock15Stack4 := handler.
            recoveredBlock15PC := 38.
        ].
        recoveredBlock15Step = 38 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) required: (recoveredBlock15Stack2) do: (recoveredBlock15Stack3) ifNot: (recoveredBlock15Stack4).
            recoveredBlock15PC := 41.
        ].
        recoveredBlock15Step = 41 ifTrue: [
            recoveredBlock15Local2 := recoveredBlock15Stack1.
            recoveredBlock15PC := 42.
        ].
        recoveredBlock15Step = 42 ifTrue: [
            recoveredBlock15Stack1 := recoveredBlock15Arg1.
            recoveredBlock15PC := 43.
        ].
        recoveredBlock15Step = 43 ifTrue: [
            recoveredBlock15Stack2 := 'OsDescription'.
            recoveredBlock15PC := 45.
        ].
        recoveredBlock15Step = 45 ifTrue: [
            recoveredBlock15Stack3 := [:recoveredBlock15Block45Arg1 | 
    | recoveredBlock15Block45Value0 recoveredBlock15Block45Value1 |
    recoveredBlock15Block45Value0 := recoveredBlock15Block45Arg1.
    recoveredBlock15Block45Value1 := (self) readOsDescription: (recoveredBlock15Block45Value0).
    recoveredBlock15Block45Value1
].
            recoveredBlock15PC := 56.
        ].
        recoveredBlock15Step = 56 ifTrue: [
            recoveredBlock15Stack4 := handler.
            recoveredBlock15PC := 58.
        ].
        recoveredBlock15Step = 58 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) required: (recoveredBlock15Stack2) do: (recoveredBlock15Stack3) ifNot: (recoveredBlock15Stack4).
            recoveredBlock15PC := 61.
        ].
        recoveredBlock15Step = 61 ifTrue: [
            recoveredBlock15Local1 := recoveredBlock15Stack1.
            recoveredBlock15PC := 62.
        ].
        recoveredBlock15Step = 62 ifTrue: [
            recoveredBlock15Stack1 := recoveredLocal1.
            recoveredBlock15PC := 65.
        ].
        recoveredBlock15Step = 65 ifTrue: [
            recoveredBlock15Stack2 := recoveredBlock15Local2.
            recoveredBlock15PC := 66.
        ].
        recoveredBlock15Step = 66 ifTrue: [
            recoveredBlock15Stack3 := recoveredBlock15Local1.
            recoveredBlock15PC := 67.
        ].
        recoveredBlock15Step = 67 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) at: (recoveredBlock15Stack2) put: (recoveredBlock15Stack3).
            recoveredBlock15PC := 69.
        ].
        recoveredBlock15Step = 69 ifTrue: [
            recoveredBlock15Result := recoveredBlock15Stack1.
            recoveredBlock15Done := true.
        ].
    ].
    recoveredBlock15Result
].
    (recoveredValue2) multiple: ('OsEntry') do: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := handler.
    (recoveredValue4) doneIfNot: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x203e675c; bytecode file offset 0xce3074"
!ASDXMLImportStepProjectBase methodsFor: 'recovered'!
readTriggerInterrupt: recoveredArg1 newEl: recoveredArg2
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
            recoveredStack2 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) readTriggerHooks: (recoveredStack1) newEl: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := SGOSEvent.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := 'priority'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) getNNInt: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) priority: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := 'isrSource'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) getNMToken: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) name: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := 'eventId'.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) getNNInt: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) id: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := 'minPrio'.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) getNNInt: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) minPrio: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := 'maxPrio'.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) getNNInt: (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) maxPrio: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) triggerEvent: (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := 'Call_74722'.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := 'minimumPeriod'.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) getBoolean: (recoveredStack1).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack0) setMinimumPeriodCheck.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := 'minimumPeriodValue'.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) getDouble: (recoveredStack2).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0) minimumPeriodCheckValue: (recoveredStack1).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredPC := 87.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack0) clearMinimumPeriodCheck.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203e9dd0; bytecode file offset 0xce66c4"
!ASDXMLImportStepProjectBase methodsFor: 'recovered'!
readTaskType: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock9Arg1 | 
    | recoveredBlock9Value0 recoveredBlock9Value1 recoveredBlock9Value2 recoveredBlock9Value3 |
    recoveredBlock9Value0 := recoveredBlock9Arg1.
    recoveredBlock9Value1 := SGOSEventTrigger.
    recoveredBlock9Value2 := (recoveredBlock9Value1) create.
    recoveredBlock9Value3 := (self) readTriggerInterrupt: (recoveredBlock9Value0) newEl: (recoveredBlock9Value2).
    ^recoveredBlock9Value3
].
    recoveredValue2 := [:recoveredBlock25Arg1 | 
    | recoveredBlock25Value0 recoveredBlock25Value1 recoveredBlock25Value2 recoveredBlock25Value3 |
    recoveredBlock25Value0 := recoveredBlock25Arg1.
    recoveredBlock25Value1 := SGOSTimerTrigger.
    recoveredBlock25Value2 := (recoveredBlock25Value1) create.
    recoveredBlock25Value3 := (self) readTriggerAlarm: (recoveredBlock25Value0) newEl: (recoveredBlock25Value2).
    ^recoveredBlock25Value3
].
    recoveredValue3 := [:recoveredBlock41Arg1 | 
    | recoveredBlock41Value0 recoveredBlock41Value1 recoveredBlock41Value2 recoveredBlock41Value3 |
    recoveredBlock41Value0 := recoveredBlock41Arg1.
    recoveredBlock41Value1 := SGOSTimetableTrigger.
    recoveredBlock41Value2 := (recoveredBlock41Value1) create.
    recoveredBlock41Value3 := (self) readTriggerTimeTable: (recoveredBlock41Value0) newEl: (recoveredBlock41Value2).
    ^recoveredBlock41Value3
].
    recoveredValue4 := [:recoveredBlock57Arg1 | 
    | recoveredBlock57Value0 recoveredBlock57Value1 recoveredBlock57Value2 recoveredBlock57Value3 |
    recoveredBlock57Value0 := recoveredBlock57Arg1.
    recoveredBlock57Value1 := SGOSSoftwareTrigger.
    recoveredBlock57Value2 := (recoveredBlock57Value1) create.
    recoveredBlock57Value3 := (self) readTriggerSoftware: (recoveredBlock57Value0) newEl: (recoveredBlock57Value2).
    ^recoveredBlock57Value3
].
    recoveredValue5 := [:recoveredBlock73Arg1 | 
    | recoveredBlock73Value0 recoveredBlock73Value1 |
    recoveredBlock73Value0 := SGOSInitTrigger.
    recoveredBlock73Value1 := (recoveredBlock73Value0) create.
    ^recoveredBlock73Value1
].
    recoveredValue6 := handler.
    (recoveredValue0) choice: ('Interrupt') do: (recoveredValue1) choice: ('Alarm') do: (recoveredValue2) choice: ('Timetable') do: (recoveredValue3) choice: ('Software') do: (recoveredValue4) choice: ('Init') do: (recoveredValue5) ifNot: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x2044777c; bytecode file offset 0xd4407c"
!ASDXMLImportStepProjectBase methodsFor: 'recovered'!
performStep
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) baseName.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := '.project.'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := extension.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) qualifyBaseName: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := CfsStat.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) exists: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) makeExperimentImportStep.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := [
    | recoveredBlock30Value0 recoveredBlock30Value1 recoveredBlock30Value2 recoveredBlock30Value3 recoveredBlock30Value4 |
    recoveredBlock30Value0 := extension.
    recoveredBlock30Value1 := ('.project.') , (recoveredBlock30Value0).
    recoveredBlock30Value2 := (self) readDOMTree: (recoveredBlock30Value1) schema: ('component_project.xsd').
    recoveredLocal1 := recoveredBlock30Value2.
    recoveredBlock30Value3 := recoveredLocal1.
    recoveredBlock30Value4 := (self) readProject: (recoveredBlock30Value3).
    recoveredBlock30Value4
].
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := ExError.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := [:recoveredBlock57Arg1 | 
    | recoveredBlock57Stack0 recoveredBlock57Stack1 recoveredBlock57Stack2 recoveredBlock57Stack3 recoveredBlock57Stack4 recoveredBlock57Stack5 recoveredBlock57Stack6 recoveredBlock57PC recoveredBlock57Step recoveredBlock57Done recoveredBlock57Result |
    recoveredBlock57Stack0 := self.
    recoveredBlock57PC := 64.
    recoveredBlock57Done := false.
    [recoveredBlock57Done not] whileTrue: [
        recoveredBlock57Step := recoveredBlock57PC.
        recoveredBlock57Step = 64 ifTrue: [
            recoveredBlock57Stack1 := issue.
            recoveredBlock57PC := 66.
        ].
        recoveredBlock57Step = 66 ifTrue: [
            (recoveredBlock57Stack1 == nil) ifTrue: [recoveredBlock57PC := 80] ifFalse: [recoveredBlock57PC := 70].
        ].
        recoveredBlock57Step = 70 ifTrue: [
            recoveredBlock57Stack1 := controller.
            recoveredBlock57PC := 72.
        ].
        recoveredBlock57Step = 72 ifTrue: [
            recoveredBlock57Stack2 := issue.
            recoveredBlock57PC := 74.
        ].
        recoveredBlock57Step = 74 ifTrue: [
            (recoveredBlock57Stack1) addIssue: (recoveredBlock57Stack2).
            recoveredBlock57PC := 76.
        ].
        recoveredBlock57Step = 76 ifTrue: [
            recoveredBlock57PC := 100.
        ].
        recoveredBlock57Step = 80 ifTrue: [
            recoveredBlock57Stack1 := Util.
            recoveredBlock57PC := 82.
        ].
        recoveredBlock57Step = 82 ifTrue: [
            recoveredBlock57Stack2 := recoveredBlock57Arg1.
            recoveredBlock57PC := 83.
        ].
        recoveredBlock57Step = 83 ifTrue: [
            (recoveredBlock57Stack1) writeStackTrace: (recoveredBlock57Stack2).
            recoveredBlock57PC := 85.
        ].
        recoveredBlock57Step = 85 ifTrue: [
            recoveredBlock57Stack1 := controller.
            recoveredBlock57PC := 87.
        ].
        recoveredBlock57Step = 87 ifTrue: [
            recoveredBlock57Stack2 := ASDXMLImportIssueUnhandledException.
            recoveredBlock57PC := 89.
        ].
        recoveredBlock57Step = 89 ifTrue: [
            recoveredBlock57Stack2 := (recoveredBlock57Stack2) new.
            recoveredBlock57PC := 91.
        ].
        recoveredBlock57Step = 91 ifTrue: [
            recoveredBlock57Stack3 := protoClass.
            recoveredBlock57PC := 93.
        ].
        recoveredBlock57Step = 93 ifTrue: [
            recoveredBlock57Stack4 := recoveredBlock57Arg1.
            recoveredBlock57PC := 94.
        ].
        recoveredBlock57Step = 94 ifTrue: [
            recoveredBlock57Stack5 := true.
            recoveredBlock57PC := 95.
        ].
        recoveredBlock57Step = 95 ifTrue: [
            recoveredBlock57Stack2 := (recoveredBlock57Stack2) initOn: (recoveredBlock57Stack3) exception: (recoveredBlock57Stack4) fatal: (recoveredBlock57Stack5).
            recoveredBlock57PC := 98.
        ].
        recoveredBlock57Step = 98 ifTrue: [
            (recoveredBlock57Stack1) addIssue: (recoveredBlock57Stack2).
            recoveredBlock57PC := 100.
        ].
        recoveredBlock57Step = 100 ifTrue: [
            recoveredBlock57Stack1 := recoveredBlock57Arg1.
            recoveredBlock57PC := 101.
        ].
        recoveredBlock57Step = 101 ifTrue: [
            recoveredBlock57Stack2 := nil.
            recoveredBlock57PC := 102.
        ].
        recoveredBlock57Step = 102 ifTrue: [
            recoveredBlock57Stack1 := (recoveredBlock57Stack1) exitWith: (recoveredBlock57Stack2).
            recoveredBlock57PC := 104.
        ].
        recoveredBlock57Step = 104 ifTrue: [
            recoveredBlock57Result := recoveredBlock57Stack1.
            recoveredBlock57Done := true.
        ].
    ].
    recoveredBlock57Result
].
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack0) when: (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := (recoveredStack0) makeExperimentImportStep.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2045cabc; bytecode file offset 0xd593ac"
!ASDXMLImportStepProjectBase methodsFor: 'recovered'!
readOsSettings: recoveredArg1 forOsLogic: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (recoveredValue0) osConfigSettings.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Stack0 recoveredBlock16Stack1 recoveredBlock16Stack2 recoveredBlock16Stack3 recoveredBlock16Stack4 recoveredBlock16PC recoveredBlock16Step recoveredBlock16Done recoveredBlock16Result |
    recoveredBlock16Stack0 := self.
    recoveredBlock16PC := 22.
    recoveredBlock16Done := false.
    [recoveredBlock16Done not] whileTrue: [
        recoveredBlock16Step := recoveredBlock16PC.
        recoveredBlock16Step = 22 ifTrue: [
            recoveredBlock16Stack1 := nil.
            recoveredBlock16PC := 23.
        ].
        recoveredBlock16Step = 23 ifTrue: [
            recoveredBlock16Stack2 := recoveredBlock16Arg1.
            recoveredBlock16PC := 24.
        ].
        recoveredBlock16Step = 24 ifTrue: [
            recoveredBlock16Stack3 := 'name'.
            recoveredBlock16PC := 26.
        ].
        recoveredBlock16Step = 26 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) getNMToken: (recoveredBlock16Stack3).
            recoveredBlock16PC := 27.
        ].
        recoveredBlock16Step = 27 ifTrue: [
            recoveredBlock16Stack3 := recoveredLocal1.
            recoveredBlock16PC := 30.
        ].
        recoveredBlock16Step = 30 ifTrue: [
            recoveredBlock16Stack3 := (recoveredBlock16Stack3) sectionName.
            recoveredBlock16PC := 32.
        ].
        recoveredBlock16Step = 32 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) = (recoveredBlock16Stack3).
            recoveredBlock16PC := 33.
        ].
        recoveredBlock16Step = 33 ifTrue: [
            (recoveredBlock16Stack2) ifTrue: [recoveredBlock16PC := 36] ifFalse: [recoveredBlock16PC := 106].
        ].
        recoveredBlock16Step = 36 ifTrue: [
            recoveredBlock16PC := 37.
        ].
        recoveredBlock16Step = 37 ifTrue: [
            recoveredBlock16Stack1 := recoveredBlock16Arg1.
            recoveredBlock16PC := 38.
        ].
        recoveredBlock16Step = 38 ifTrue: [
            recoveredBlock16Stack2 := 'Option'.
            recoveredBlock16PC := 40.
        ].
        recoveredBlock16Step = 40 ifTrue: [
            recoveredBlock16Stack3 := [:recoveredBlock16Block40Arg1 | 
    | recoveredBlock16Block40Local1 recoveredBlock16Block40Stack0 recoveredBlock16Block40Stack1 recoveredBlock16Block40Stack2 recoveredBlock16Block40Stack3 recoveredBlock16Block40Stack4 recoveredBlock16Block40Stack5 recoveredBlock16Block40PC recoveredBlock16Block40Step recoveredBlock16Block40Done recoveredBlock16Block40Result |
    recoveredBlock16Block40Stack0 := nil.
    recoveredBlock16Block40PC := 46.
    recoveredBlock16Block40Done := false.
    [recoveredBlock16Block40Done not] whileTrue: [
        recoveredBlock16Block40Step := recoveredBlock16Block40PC.
        recoveredBlock16Block40Step = 46 ifTrue: [
            recoveredBlock16Block40Stack1 := recoveredBlock16Block40Arg1.
            recoveredBlock16Block40PC := 47.
        ].
        recoveredBlock16Block40Step = 47 ifTrue: [
            recoveredBlock16Block40Stack2 := 'name'.
            recoveredBlock16Block40PC := 49.
        ].
        recoveredBlock16Block40Step = 49 ifTrue: [
            recoveredBlock16Block40Stack1 := (recoveredBlock16Block40Stack1) getNMToken: (recoveredBlock16Block40Stack2).
            recoveredBlock16Block40PC := 50.
        ].
        recoveredBlock16Block40Step = 50 ifTrue: [
            recoveredBlock16Block40Local1 := recoveredBlock16Block40Stack1.
            recoveredBlock16Block40PC := 51.
        ].
        recoveredBlock16Block40Step = 51 ifTrue: [
            recoveredBlock16Block40Stack1 := recoveredLocal1.
            recoveredBlock16Block40PC := 54.
        ].
        recoveredBlock16Block40Step = 54 ifTrue: [
            recoveredBlock16Block40Stack1 := (recoveredBlock16Block40Stack1) stringOptionKeys.
            recoveredBlock16Block40PC := 56.
        ].
        recoveredBlock16Block40Step = 56 ifTrue: [
            recoveredBlock16Block40Stack2 := recoveredBlock16Block40Local1.
            recoveredBlock16Block40PC := 57.
        ].
        recoveredBlock16Block40Step = 57 ifTrue: [
            recoveredBlock16Block40Stack1 := (recoveredBlock16Block40Stack1) includes: (recoveredBlock16Block40Stack2).
            recoveredBlock16Block40PC := 59.
        ].
        recoveredBlock16Block40Step = 59 ifTrue: [
            (recoveredBlock16Block40Stack1) ifTrue: [recoveredBlock16Block40PC := 62] ifFalse: [recoveredBlock16Block40PC := 73].
        ].
        recoveredBlock16Block40Step = 62 ifTrue: [
            recoveredBlock16Block40Stack1 := recoveredLocal1.
            recoveredBlock16Block40PC := 65.
        ].
        recoveredBlock16Block40Step = 65 ifTrue: [
            recoveredBlock16Block40Stack2 := recoveredBlock16Block40Local1.
            recoveredBlock16Block40PC := 66.
        ].
        recoveredBlock16Block40Step = 66 ifTrue: [
            recoveredBlock16Block40Stack3 := recoveredBlock16Block40Arg1.
            recoveredBlock16Block40PC := 67.
        ].
        recoveredBlock16Block40Step = 67 ifTrue: [
            recoveredBlock16Block40Stack4 := 'value'.
            recoveredBlock16Block40PC := 69.
        ].
        recoveredBlock16Block40Step = 69 ifTrue: [
            recoveredBlock16Block40Stack3 := (recoveredBlock16Block40Stack3) getString: (recoveredBlock16Block40Stack4).
            recoveredBlock16Block40PC := 71.
        ].
        recoveredBlock16Block40Step = 71 ifTrue: [
            (recoveredBlock16Block40Stack1) setOption: (recoveredBlock16Block40Stack2) to: (recoveredBlock16Block40Stack3).
            recoveredBlock16Block40PC := 73.
        ].
        recoveredBlock16Block40Step = 73 ifTrue: [
            recoveredBlock16Block40Stack1 := nil.
            recoveredBlock16Block40PC := 74.
        ].
        recoveredBlock16Block40Step = 74 ifTrue: [
            recoveredBlock16Block40Stack2 := recoveredLocal1.
            recoveredBlock16Block40PC := 77.
        ].
        recoveredBlock16Block40Step = 77 ifTrue: [
            recoveredBlock16Block40Stack2 := (recoveredBlock16Block40Stack2) boolOptionKeys.
            recoveredBlock16Block40PC := 79.
        ].
        recoveredBlock16Block40Step = 79 ifTrue: [
            recoveredBlock16Block40Stack3 := recoveredBlock16Block40Local1.
            recoveredBlock16Block40PC := 80.
        ].
        recoveredBlock16Block40Step = 80 ifTrue: [
            recoveredBlock16Block40Stack2 := (recoveredBlock16Block40Stack2) includes: (recoveredBlock16Block40Stack3).
            recoveredBlock16Block40PC := 82.
        ].
        recoveredBlock16Block40Step = 82 ifTrue: [
            (recoveredBlock16Block40Stack2) ifTrue: [recoveredBlock16Block40PC := 86] ifFalse: [recoveredBlock16Block40PC := 98].
        ].
        recoveredBlock16Block40Step = 86 ifTrue: [
            recoveredBlock16Block40PC := 87.
        ].
        recoveredBlock16Block40Step = 87 ifTrue: [
            recoveredBlock16Block40Stack1 := recoveredLocal1.
            recoveredBlock16Block40PC := 90.
        ].
        recoveredBlock16Block40Step = 90 ifTrue: [
            recoveredBlock16Block40Stack2 := recoveredBlock16Block40Local1.
            recoveredBlock16Block40PC := 91.
        ].
        recoveredBlock16Block40Step = 91 ifTrue: [
            recoveredBlock16Block40Stack3 := recoveredBlock16Block40Arg1.
            recoveredBlock16Block40PC := 92.
        ].
        recoveredBlock16Block40Step = 92 ifTrue: [
            recoveredBlock16Block40Stack4 := 'value'.
            recoveredBlock16Block40PC := 94.
        ].
        recoveredBlock16Block40Step = 94 ifTrue: [
            recoveredBlock16Block40Stack3 := (recoveredBlock16Block40Stack3) getBoolean: (recoveredBlock16Block40Stack4).
            recoveredBlock16Block40PC := 96.
        ].
        recoveredBlock16Block40Step = 96 ifTrue: [
            recoveredBlock16Block40Stack1 := (recoveredBlock16Block40Stack1) setOption: (recoveredBlock16Block40Stack2) to: (recoveredBlock16Block40Stack3).
            recoveredBlock16Block40PC := 98.
        ].
        recoveredBlock16Block40Step = 98 ifTrue: [
            recoveredBlock16Block40Result := recoveredBlock16Block40Stack1.
            recoveredBlock16Block40Done := true.
        ].
    ].
    recoveredBlock16Block40Result
].
            recoveredBlock16PC := 99.
        ].
        recoveredBlock16Step = 99 ifTrue: [
            (recoveredBlock16Stack1) multiple: (recoveredBlock16Stack2) do: (recoveredBlock16Stack3).
            recoveredBlock16PC := 101.
        ].
        recoveredBlock16Step = 101 ifTrue: [
            recoveredBlock16Stack1 := recoveredBlock16Arg1.
            recoveredBlock16PC := 102.
        ].
        recoveredBlock16Step = 102 ifTrue: [
            recoveredBlock16Stack2 := handler.
            recoveredBlock16PC := 104.
        ].
        recoveredBlock16Step = 104 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) doneIfNot: (recoveredBlock16Stack2).
            recoveredBlock16PC := 106.
        ].
        recoveredBlock16Step = 106 ifTrue: [
            recoveredBlock16Result := recoveredBlock16Stack1.
            recoveredBlock16Done := true.
        ].
    ].
    recoveredBlock16Result
].
    (recoveredValue2) multiple: ('Group') do: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := handler.
    (recoveredValue4) doneIfNot: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x204cf0b0; bytecode file offset 0xdcb9c8"
!ASDXMLImportStepProjectBase methodsFor: 'recovered'!
readModelConfigurationT: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock9Arg1 | 
    | recoveredBlock9Local1 recoveredBlock9Local2 recoveredBlock9Value0 recoveredBlock9Value1 recoveredBlock9Value2 recoveredBlock9Value3 recoveredBlock9Value4 recoveredBlock9Value5 recoveredBlock9Value6 recoveredBlock9Value7 recoveredBlock9Value8 |
    recoveredBlock9Value0 := recoveredBlock9Arg1.
    recoveredBlock9Value1 := (self) readFileReferenceTAsDOM: (recoveredBlock9Value0) topLevelElementName: ('Formulas') schema: ('formulas.xsd').
    recoveredBlock9Local2 := recoveredBlock9Value1.
    recoveredBlock9Value2 := protoClass.
    recoveredBlock9Value3 := (recoveredBlock9Value2) thing.
    recoveredBlock9Value4 := (recoveredBlock9Value3) specification.
    recoveredBlock9Value5 := RBFormulaId.
    recoveredBlock9Value6 := recoveredBlock9Local2.
    recoveredBlock9Value7 := (recoveredBlock9Value5) xmlFormulas: (recoveredBlock9Value6) env: (self).
    recoveredBlock9Value8 := (recoveredBlock9Value4) formulas: (recoveredBlock9Value7).
    recoveredBlock9Value8
].
    (recoveredValue0) optional: ('FormulasFile') do: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [:recoveredBlock47Arg1 | 
    | recoveredBlock47Local1 recoveredBlock47Local2 recoveredBlock47Stack0 recoveredBlock47Stack1 recoveredBlock47Stack2 recoveredBlock47Stack3 recoveredBlock47Stack4 recoveredBlock47PC recoveredBlock47Step recoveredBlock47Done recoveredBlock47Result |
    recoveredBlock47Stack0 := self.
    recoveredBlock47PC := 54.
    recoveredBlock47Done := false.
    [recoveredBlock47Done not] whileTrue: [
        recoveredBlock47Step := recoveredBlock47PC.
        recoveredBlock47Step = 54 ifTrue: [
            recoveredBlock47Stack1 := recoveredBlock47Arg1.
            recoveredBlock47PC := 57.
        ].
        recoveredBlock47Step = 57 ifTrue: [
            recoveredBlock47Stack2 := 'ImplementationTypes'.
            recoveredBlock47PC := 59.
        ].
        recoveredBlock47Step = 59 ifTrue: [
            recoveredBlock47Stack3 := 'implementationtypes.xsd'.
            recoveredBlock47PC := 61.
        ].
        recoveredBlock47Step = 61 ifTrue: [
            recoveredBlock47Stack0 := (recoveredBlock47Stack0) readFileReferenceTAsDOM: (recoveredBlock47Stack1) topLevelElementName: (recoveredBlock47Stack2) schema: (recoveredBlock47Stack3).
            recoveredBlock47PC := 64.
        ].
        recoveredBlock47Step = 64 ifTrue: [
            recoveredBlock47Local2 := recoveredBlock47Stack0.
            recoveredBlock47PC := 67.
        ].
        recoveredBlock47Step = 67 ifTrue: [
            recoveredBlock47Stack0 := LookupTable.
            recoveredBlock47PC := 69.
        ].
        recoveredBlock47Step = 69 ifTrue: [
            recoveredBlock47Stack0 := (recoveredBlock47Stack0) new.
            recoveredBlock47PC := 71.
        ].
        recoveredBlock47Step = 71 ifTrue: [
            recoveredBlock47Local1 := recoveredBlock47Stack0.
            recoveredBlock47PC := 74.
        ].
        recoveredBlock47Step = 74 ifTrue: [
            recoveredBlock47Stack0 := recoveredBlock47Local2.
            recoveredBlock47PC := 77.
        ].
        recoveredBlock47Step = 77 ifTrue: [
            recoveredBlock47Stack1 := 'ImplementationType'.
            recoveredBlock47PC := 79.
        ].
        recoveredBlock47Step = 79 ifTrue: [
            recoveredBlock47Stack2 := [:recoveredBlock47Block79Arg1 | 
    | recoveredBlock47Block79Value0 recoveredBlock47Block79Value1 recoveredBlock47Block79Value2 recoveredBlock47Block79Value3 |
    recoveredBlock47Block79Value0 := recoveredBlock47Block79Arg1.
    recoveredBlock47Block79Value1 := (self) readImplementationType: (recoveredBlock47Block79Value0).
    recoveredBlock47Block79Value2 := [:recoveredBlock47Block79Block89Arg1 | 
    | recoveredBlock47Block79Block89Value0 recoveredBlock47Block79Block89Value1 recoveredBlock47Block79Block89Value2 recoveredBlock47Block79Block89Value3 recoveredBlock47Block79Block89Value4 |
    recoveredBlock47Block79Block89Value0 := recoveredBlock47Local1.
    recoveredBlock47Block79Block89Value1 := recoveredBlock47Block79Block89Arg1.
    recoveredBlock47Block79Block89Value2 := (recoveredBlock47Block79Block89Value1) implTypeName.
    recoveredBlock47Block79Block89Value3 := recoveredBlock47Block79Block89Arg1.
    recoveredBlock47Block79Block89Value4 := (recoveredBlock47Block79Block89Value0) at: (recoveredBlock47Block79Block89Value2) put: (recoveredBlock47Block79Block89Value3).
    recoveredBlock47Block79Block89Value4
].
    recoveredBlock47Block79Value3 := (recoveredBlock47Block79Value1) ifNotNil: (recoveredBlock47Block79Value2).
    recoveredBlock47Block79Value3
].
            recoveredBlock47PC := 109.
        ].
        recoveredBlock47Step = 109 ifTrue: [
            (recoveredBlock47Stack0) multiple: (recoveredBlock47Stack1) do: (recoveredBlock47Stack2).
            recoveredBlock47PC := 111.
        ].
        recoveredBlock47Step = 111 ifTrue: [
            recoveredBlock47Stack0 := recoveredBlock47Local2.
            recoveredBlock47PC := 114.
        ].
        recoveredBlock47Step = 114 ifTrue: [
            recoveredBlock47Stack1 := 'Signature'.
            recoveredBlock47PC := 116.
        ].
        recoveredBlock47Step = 116 ifTrue: [
            recoveredBlock47Stack2 := [:block2810723cArg1 | 
    nil
].
            recoveredBlock47PC := 118.
        ].
        recoveredBlock47Step = 118 ifTrue: [
            recoveredBlock47PC := 124.
        ].
        recoveredBlock47Step = 124 ifTrue: [
            (recoveredBlock47Stack0) optional: (recoveredBlock47Stack1) do: (recoveredBlock47Stack2).
            recoveredBlock47PC := 126.
        ].
        recoveredBlock47Step = 126 ifTrue: [
            recoveredBlock47Stack0 := recoveredBlock47Local2.
            recoveredBlock47PC := 129.
        ].
        recoveredBlock47Step = 129 ifTrue: [
            recoveredBlock47Stack1 := handler.
            recoveredBlock47PC := 131.
        ].
        recoveredBlock47Step = 131 ifTrue: [
            (recoveredBlock47Stack0) doneIfNot: (recoveredBlock47Stack1).
            recoveredBlock47PC := 133.
        ].
        recoveredBlock47Step = 133 ifTrue: [
            recoveredBlock47Stack0 := protoClass.
            recoveredBlock47PC := 135.
        ].
        recoveredBlock47Step = 135 ifTrue: [
            recoveredBlock47Stack0 := (recoveredBlock47Stack0) thing.
            recoveredBlock47PC := 137.
        ].
        recoveredBlock47Step = 137 ifTrue: [
            recoveredBlock47Stack0 := (recoveredBlock47Stack0) specification.
            recoveredBlock47PC := 139.
        ].
        recoveredBlock47Step = 139 ifTrue: [
            recoveredBlock47Stack1 := recoveredBlock47Local1.
            recoveredBlock47PC := 142.
        ].
        recoveredBlock47Step = 142 ifTrue: [
            recoveredBlock47Stack0 := (recoveredBlock47Stack0) implTypes: (recoveredBlock47Stack1).
            recoveredBlock47PC := 144.
        ].
        recoveredBlock47Step = 144 ifTrue: [
            recoveredBlock47Result := recoveredBlock47Stack0.
            recoveredBlock47Done := true.
        ].
    ].
    recoveredBlock47Result
].
    (recoveredValue2) optional: ('ImplementationTypesFile') do: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := handler.
    (recoveredValue4) doneIfNot: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x204cfd94; bytecode file offset 0xdcc6c4"
!ASDXMLImportStepProjectBase methodsFor: 'recovered'!
readFormula: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := (LookupTable new) elementCount: (4); keyArray: (#(nil nil nil 'Linear' '5 Parameters' nil 'Identity' nil 'Moebius' nil nil)); valueArray: (#(nil nil nil RBFormulaLinear RBFormula5Parm nil RBFormulaId nil RBFormulaMoebius nil nil)); yourself.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := 'type'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) getString: (recoveredStack3).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := [
    ^nil
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) initialize.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := 'name'.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := (recoveredStack2) getNMToken: (recoveredStack3).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) name: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := 'unit'.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := (recoveredStack2) getString: (recoveredStack3).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack1) unit: (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) description.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack3 := 'Comment'.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack4 := [:block281072ccArg1 | 
    | block281072ccValue0 block281072ccValue1 |
    block281072ccValue0 := block281072ccArg1.
    block281072ccValue1 := (block281072ccValue0) cData.
    block281072ccValue1
].
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack5 := [
    ''
].
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := (recoveredStack2) optional: (recoveredStack3) do: (recoveredStack4) ifNot: (recoveredStack5).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack1) text: (recoveredStack2).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := 'Parameter'.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack3 := [:block28107314Arg1 | 
    | block28107314Value0 block28107314Value1 |
    block28107314Value0 := block28107314Arg1.
    block28107314Value1 := (block28107314Value0) getNZQR: ('value').
    block28107314Value1
].
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := (recoveredStack1) multiple: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack2 := (recoveredStack2) parameterValuesXML.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 124] ifFalse: [recoveredPC := 141].
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := controller.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := ASDXMLImportIssueWrongParNumber.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack3 := protoClass.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack2 := (recoveredStack2) initOn: (recoveredStack3) formula: (recoveredStack4).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack1) addIssue: (recoveredStack2).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack2 := (recoveredStack2) asArray.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            (recoveredStack1) xmlParams: (recoveredStack2).
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x204f9774; bytecode file offset 0xdf607c"
!ASDXMLImportStepProjectBase methodsFor: 'recovered'!
alternativeImplementation_readBuildSettings: recoveredArg1 genSettings: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := ('removeMe') notNil.
    (self) etasDevHalt.
    recoveredValue1 := LookupTable.
    recoveredValue2 := (recoveredValue1) new.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := [:recoveredBlock21Arg1 | 
    | recoveredBlock21Local1 recoveredBlock21Local2 recoveredBlock21Value0 recoveredBlock21Value1 recoveredBlock21Value2 recoveredBlock21Value3 recoveredBlock21Value4 recoveredBlock21Value5 recoveredBlock21Value6 recoveredBlock21Value7 recoveredBlock21Value8 recoveredBlock21Value9 recoveredBlock21Value10 recoveredBlock21Value11 recoveredBlock21Value12 |
    recoveredBlock21Value0 := LookupTable.
    recoveredBlock21Value1 := (recoveredBlock21Value0) new.
    recoveredBlock21Local1 := recoveredBlock21Value1.
    recoveredBlock21Value2 := recoveredBlock21Arg1.
    recoveredBlock21Value3 := (recoveredBlock21Value2) getNMToken: ('name').
    recoveredBlock21Local2 := recoveredBlock21Value3.
    recoveredBlock21Value4 := recoveredBlock21Arg1.
    recoveredBlock21Value5 := [:recoveredBlock21Block49Arg1 | 
    | recoveredBlock21Block49Value0 recoveredBlock21Block49Value1 recoveredBlock21Block49Value2 recoveredBlock21Block49Value3 recoveredBlock21Block49Value4 recoveredBlock21Block49Value5 |
    recoveredBlock21Block49Value0 := recoveredBlock21Local1.
    recoveredBlock21Block49Value1 := recoveredBlock21Block49Arg1.
    recoveredBlock21Block49Value2 := (recoveredBlock21Block49Value1) getNMToken: ('name').
    recoveredBlock21Block49Value3 := recoveredBlock21Block49Arg1.
    recoveredBlock21Block49Value4 := (recoveredBlock21Block49Value3) getString: ('value').
    recoveredBlock21Block49Value5 := (recoveredBlock21Block49Value0) at: (recoveredBlock21Block49Value2) put: (recoveredBlock21Block49Value4).
    recoveredBlock21Block49Value5
].
    (recoveredBlock21Value4) multiple: ('Option') do: (recoveredBlock21Value5).
    recoveredBlock21Value6 := [
    | recoveredBlock21Block74Value0 |
    recoveredBlock21Block74Value0 := recoveredBlock21Local2.
    recoveredBlock21Block74Value0
].
    recoveredBlock21Value7 := [
    | recoveredBlock21Block86Value0 recoveredBlock21Block86Value1 recoveredBlock21Block86Value2 |
    recoveredBlock21Block86Value0 := recoveredArg2.
    recoveredBlock21Block86Value1 := recoveredBlock21Local1.
    recoveredBlock21Block86Value2 := (recoveredBlock21Block86Value0) options: (recoveredBlock21Block86Value1).
    recoveredBlock21Block86Value2
].
    recoveredBlock21Value8 := [
    | recoveredBlock21Block103Value0 recoveredBlock21Block103Value1 recoveredBlock21Block103Value2 recoveredBlock21Block103Value3 |
    recoveredBlock21Block103Value0 := recoveredArg2.
    recoveredBlock21Block103Value1 := (recoveredBlock21Block103Value0) codeOptimizationSettingsCreateIfAbsent.
    recoveredBlock21Block103Value2 := recoveredBlock21Local1.
    recoveredBlock21Block103Value3 := (recoveredBlock21Block103Value1) options: (recoveredBlock21Block103Value2).
    recoveredBlock21Block103Value3
].
    recoveredBlock21Value9 := [
    | recoveredBlock21Block121Value0 recoveredBlock21Block121Value1 recoveredBlock21Block121Value2 recoveredBlock21Block121Value3 |
    recoveredBlock21Block121Value0 := recoveredLocal1.
    recoveredBlock21Block121Value1 := recoveredBlock21Local2.
    recoveredBlock21Block121Value2 := recoveredBlock21Local1.
    recoveredBlock21Block121Value3 := (recoveredBlock21Block121Value0) at: (recoveredBlock21Block121Value1) put: (recoveredBlock21Block121Value2).
    recoveredBlock21Block121Value3
].
    (recoveredBlock21Value6) case: ('build') do: (recoveredBlock21Value7) case: ('codeOptimization') do: (recoveredBlock21Value8) others: (recoveredBlock21Value9).
    recoveredBlock21Value10 := recoveredBlock21Arg1.
    recoveredBlock21Value11 := handler.
    recoveredBlock21Value12 := (recoveredBlock21Value10) doneIfNot: (recoveredBlock21Value11).
    recoveredBlock21Value12
].
    (recoveredValue3) multiple: ('Group') do: (recoveredValue4).
    recoveredValue5 := protoClass.
    recoveredValue6 := (recoveredValue5) thing.
    recoveredValue7 := (recoveredValue6) specification.
    recoveredValue8 := recoveredLocal1.
    (recoveredValue7) projectOptions: (recoveredValue8).
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := handler.
    (recoveredValue9) doneIfNot: (recoveredValue10).
    ^self
! !

"ASDBase.ic method 0x205120bc; bytecode file offset 0xe0e9c4"
!ASDXMLImportStepProjectBase methodsFor: 'recovered'!
readBuildSettings: recoveredArg1 genSettings: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Local1 recoveredBlock15Local2 recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 recoveredBlock15Value3 recoveredBlock15Value4 recoveredBlock15Value5 recoveredBlock15Value6 recoveredBlock15Value7 recoveredBlock15Value8 recoveredBlock15Value9 recoveredBlock15Value10 recoveredBlock15Value11 recoveredBlock15Value12 recoveredBlock15Value13 |
    recoveredBlock15Value0 := LookupTable.
    recoveredBlock15Value1 := (recoveredBlock15Value0) new.
    recoveredBlock15Local1 := recoveredBlock15Value1.
    recoveredBlock15Value2 := recoveredBlock15Arg1.
    recoveredBlock15Value3 := (recoveredBlock15Value2) getNMToken: ('name').
    recoveredBlock15Local2 := recoveredBlock15Value3.
    recoveredBlock15Value4 := recoveredBlock15Arg1.
    recoveredBlock15Value5 := [:recoveredBlock15Block43Arg1 | 
    | recoveredBlock15Block43Value0 recoveredBlock15Block43Value1 recoveredBlock15Block43Value2 recoveredBlock15Block43Value3 recoveredBlock15Block43Value4 recoveredBlock15Block43Value5 |
    recoveredBlock15Block43Value0 := recoveredBlock15Local1.
    recoveredBlock15Block43Value1 := recoveredBlock15Block43Arg1.
    recoveredBlock15Block43Value2 := (recoveredBlock15Block43Value1) getNMToken: ('name').
    recoveredBlock15Block43Value3 := recoveredBlock15Block43Arg1.
    recoveredBlock15Block43Value4 := (self) readTypedObject: (recoveredBlock15Block43Value3).
    recoveredBlock15Block43Value5 := (recoveredBlock15Block43Value0) at: (recoveredBlock15Block43Value2) put: (recoveredBlock15Block43Value4).
    recoveredBlock15Block43Value5
].
    (recoveredBlock15Value4) multiple: ('Option') do: (recoveredBlock15Value5).
    recoveredBlock15Value6 := [
    | recoveredBlock15Block67Value0 |
    recoveredBlock15Block67Value0 := recoveredBlock15Local2.
    recoveredBlock15Block67Value0
].
    recoveredBlock15Value7 := [
    | recoveredBlock15Block80Value0 recoveredBlock15Block80Value1 recoveredBlock15Block80Value2 |
    recoveredBlock15Block80Value0 := recoveredArg2.
    recoveredBlock15Block80Value1 := recoveredBlock15Local1.
    recoveredBlock15Block80Value2 := (recoveredBlock15Block80Value0) options: (recoveredBlock15Block80Value1).
    recoveredBlock15Block80Value2
].
    recoveredBlock15Value8 := [
    | recoveredBlock15Block97Value0 recoveredBlock15Block97Value1 recoveredBlock15Block97Value2 recoveredBlock15Block97Value3 |
    recoveredBlock15Block97Value0 := recoveredArg2.
    recoveredBlock15Block97Value1 := (recoveredBlock15Block97Value0) codeOptimizationSettingsCreateIfAbsent.
    recoveredBlock15Block97Value2 := recoveredBlock15Local1.
    recoveredBlock15Block97Value3 := (recoveredBlock15Block97Value1) options: (recoveredBlock15Block97Value2).
    recoveredBlock15Block97Value3
].
    recoveredBlock15Value9 := [
    | recoveredBlock15Block117Value0 recoveredBlock15Block117Value1 recoveredBlock15Block117Value2 recoveredBlock15Block117Value3 |
    recoveredBlock15Block117Value0 := recoveredArg2.
    recoveredBlock15Block117Value1 := (recoveredBlock15Block117Value0) iaSettingsCreateIfAbsent.
    recoveredBlock15Block117Value2 := recoveredBlock15Local1.
    recoveredBlock15Block117Value3 := (recoveredBlock15Block117Value1) newOptions: (recoveredBlock15Block117Value2).
    recoveredBlock15Block117Value3
].
    recoveredBlock15Value10 := [
    | recoveredBlock15Block135Value0 recoveredBlock15Block135Value1 recoveredBlock15Block135Value2 recoveredBlock15Block135Value3 |
    recoveredBlock15Block135Value0 := recoveredLocal1.
    recoveredBlock15Block135Value1 := recoveredBlock15Local2.
    recoveredBlock15Block135Value2 := recoveredBlock15Local1.
    recoveredBlock15Block135Value3 := (recoveredBlock15Block135Value0) at: (recoveredBlock15Block135Value1) put: (recoveredBlock15Block135Value2).
    recoveredBlock15Block135Value3
].
    (recoveredBlock15Value6) case: ('build') do: (recoveredBlock15Value7) case: ('codeOptimization') do: (recoveredBlock15Value8) case: ('iaSettings') do: (recoveredBlock15Value9) others: (recoveredBlock15Value10).
    recoveredBlock15Value11 := recoveredBlock15Arg1.
    recoveredBlock15Value12 := handler.
    recoveredBlock15Value13 := (recoveredBlock15Value11) doneIfNot: (recoveredBlock15Value12).
    recoveredBlock15Value13
].
    (recoveredValue2) multiple: ('Group') do: (recoveredValue3).
    recoveredValue4 := protoClass.
    recoveredValue5 := (recoveredValue4) thing.
    recoveredValue6 := (recoveredValue5) specification.
    recoveredValue7 := recoveredLocal1.
    (recoveredValue6) projectOptions: (recoveredValue7).
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := handler.
    (recoveredValue8) doneIfNot: (recoveredValue9).
    ^self
! !

"ASDBase.ic method 0x20529fbc; bytecode file offset 0xe268f0"
!ASDXMLImportStepProjectBase methodsFor: 'recovered'!
readBuildConfiguration: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := SGTargetOptions.
    recoveredValue1 := (recoveredValue0) create.
    recoveredLocal3 := recoveredValue1.
    recoveredValue2 := SGMdSettings.
    recoveredValue3 := (recoveredValue2) createDefault.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := protoClass.
    recoveredValue5 := (recoveredValue4) thing.
    recoveredValue6 := (recoveredValue5) specification.
    recoveredValue7 := recoveredValue6.
    recoveredValue8 := recoveredLocal3.
    (recoveredValue7) targetSettings: (recoveredValue8).
    recoveredValue9 := recoveredLocal1.
    (recoveredValue6) generatorSettings: (recoveredValue9).
    recoveredValue10 := recoveredArg1.
    recoveredValue11 := [:recoveredBlock38Arg1 | 
    | recoveredBlock38Value0 recoveredBlock38Value1 recoveredBlock38Value2 recoveredBlock38Value3 recoveredBlock38Value4 recoveredBlock38Value5 recoveredBlock38Value6 recoveredBlock38Value7 recoveredBlock38Value8 recoveredBlock38Value9 recoveredBlock38Value10 |
    recoveredBlock38Value0 := recoveredBlock38Arg1.
    recoveredBlock38Value1 := [:recoveredBlock38Block47Arg1 | 
    | recoveredBlock38Block47Value0 recoveredBlock38Block47Value1 recoveredBlock38Block47Value2 recoveredBlock38Block47Value3 |
    recoveredBlock38Block47Value0 := recoveredLocal3.
    recoveredBlock38Block47Value1 := recoveredBlock38Block47Arg1.
    recoveredBlock38Block47Value2 := (recoveredBlock38Block47Value1) getNMToken: ('key').
    recoveredBlock38Block47Value3 := (recoveredBlock38Block47Value0) targetType: (recoveredBlock38Block47Value2).
    recoveredBlock38Block47Value3
].
    (recoveredBlock38Value0) optional: ('Target') do: (recoveredBlock38Value1).
    recoveredBlock38Value2 := recoveredBlock38Arg1.
    recoveredBlock38Value3 := [:recoveredBlock38Block70Arg1 | 
    | recoveredBlock38Block70Value0 recoveredBlock38Block70Value1 recoveredBlock38Block70Value2 recoveredBlock38Block70Value3 |
    recoveredBlock38Block70Value0 := recoveredLocal3.
    recoveredBlock38Block70Value1 := recoveredBlock38Block70Arg1.
    recoveredBlock38Block70Value2 := (recoveredBlock38Block70Value1) getNMToken: ('name').
    recoveredBlock38Block70Value3 := (recoveredBlock38Block70Value0) compilerToolType: (recoveredBlock38Block70Value2).
    recoveredBlock38Block70Value3
].
    (recoveredBlock38Value2) optional: ('Compiler') do: (recoveredBlock38Value3).
    recoveredBlock38Value4 := recoveredBlock38Arg1.
    recoveredBlock38Value5 := [:recoveredBlock38Block92Arg1 | 
    | recoveredBlock38Block92Local1 recoveredBlock38Block92Stack0 recoveredBlock38Block92Stack1 recoveredBlock38Block92Stack2 recoveredBlock38Block92Stack3 recoveredBlock38Block92Stack4 recoveredBlock38Block92PC recoveredBlock38Block92Step recoveredBlock38Block92Done recoveredBlock38Block92Result |
    recoveredBlock38Block92Stack0 := nil.
    recoveredBlock38Block92PC := 98.
    recoveredBlock38Block92Done := false.
    [recoveredBlock38Block92Done not] whileTrue: [
        recoveredBlock38Block92Step := recoveredBlock38Block92PC.
        recoveredBlock38Block92Step = 98 ifTrue: [
            recoveredBlock38Block92Stack1 := SGMdSettings.
            recoveredBlock38Block92PC := 100.
        ].
        recoveredBlock38Block92Step = 100 ifTrue: [
            recoveredBlock38Block92Stack1 := (recoveredBlock38Block92Stack1) xmlPathNames.
            recoveredBlock38Block92PC := 102.
        ].
        recoveredBlock38Block92Step = 102 ifTrue: [
            recoveredBlock38Block92Stack2 := recoveredBlock38Block92Arg1.
            recoveredBlock38Block92PC := 103.
        ].
        recoveredBlock38Block92Step = 103 ifTrue: [
            recoveredBlock38Block92Stack3 := 'type'.
            recoveredBlock38Block92PC := 105.
        ].
        recoveredBlock38Block92Step = 105 ifTrue: [
            recoveredBlock38Block92Stack2 := (recoveredBlock38Block92Stack2) getNMToken: (recoveredBlock38Block92Stack3).
            recoveredBlock38Block92PC := 107.
        ].
        recoveredBlock38Block92Step = 107 ifTrue: [
            recoveredBlock38Block92Stack1 := (recoveredBlock38Block92Stack1) indexOf: (recoveredBlock38Block92Stack2).
            recoveredBlock38Block92PC := 109.
        ].
        recoveredBlock38Block92Step = 109 ifTrue: [
            recoveredBlock38Block92Local1 := recoveredBlock38Block92Stack1.
            recoveredBlock38Block92PC := 110.
        ].
        recoveredBlock38Block92Step = 110 ifTrue: [
            recoveredBlock38Block92Stack1 := recoveredLocal3.
            recoveredBlock38Block92PC := 113.
        ].
        recoveredBlock38Block92Step = 113 ifTrue: [
            recoveredBlock38Block92Stack1 := (recoveredBlock38Block92Stack1) targetType.
            recoveredBlock38Block92PC := 115.
        ].
        recoveredBlock38Block92Step = 115 ifTrue: [
            recoveredBlock38Block92Stack2 := 'EHOOKS'.
            recoveredBlock38Block92PC := 117.
        ].
        recoveredBlock38Block92Step = 117 ifTrue: [
            recoveredBlock38Block92Stack1 := (recoveredBlock38Block92Stack1) equals: (recoveredBlock38Block92Stack2).
            recoveredBlock38Block92PC := 119.
        ].
        recoveredBlock38Block92Step = 119 ifTrue: [
            (recoveredBlock38Block92Stack1) ifTrue: [recoveredBlock38Block92PC := 122] ifFalse: [recoveredBlock38Block92PC := 131].
        ].
        recoveredBlock38Block92Step = 122 ifTrue: [
            recoveredBlock38Block92Stack1 := recoveredBlock38Block92Local1.
            recoveredBlock38Block92PC := 123.
        ].
        recoveredBlock38Block92Step = 123 ifTrue: [
            recoveredBlock38Block92Stack2 := 1.
            recoveredBlock38Block92PC := 125.
        ].
        recoveredBlock38Block92Step = 125 ifTrue: [
            (recoveredBlock38Block92Stack1 ~~ recoveredBlock38Block92Stack2) ifTrue: [recoveredBlock38Block92PC := 131] ifFalse: [recoveredBlock38Block92PC := 128].
        ].
        recoveredBlock38Block92Step = 128 ifTrue: [
            recoveredBlock38Block92Stack1 := 4.
            recoveredBlock38Block92PC := 130.
        ].
        recoveredBlock38Block92Step = 130 ifTrue: [
            recoveredBlock38Block92Local1 := recoveredBlock38Block92Stack1.
            recoveredBlock38Block92PC := 131.
        ].
        recoveredBlock38Block92Step = 131 ifTrue: [
            recoveredBlock38Block92Stack1 := recoveredLocal1.
            recoveredBlock38Block92PC := 134.
        ].
        recoveredBlock38Block92Step = 134 ifTrue: [
            recoveredBlock38Block92Stack2 := recoveredBlock38Block92Local1.
            recoveredBlock38Block92PC := 135.
        ].
        recoveredBlock38Block92Step = 135 ifTrue: [
            recoveredBlock38Block92Stack1 := (recoveredBlock38Block92Stack1) codeGenPath: (recoveredBlock38Block92Stack2).
            recoveredBlock38Block92PC := 137.
        ].
        recoveredBlock38Block92Step = 137 ifTrue: [
            recoveredBlock38Block92Result := recoveredBlock38Block92Stack1.
            recoveredBlock38Block92Done := true.
        ].
    ].
    recoveredBlock38Block92Result
].
    (recoveredBlock38Value4) optional: ('CodeGenerator') do: (recoveredBlock38Value5).
    recoveredBlock38Value6 := recoveredBlock38Arg1.
    recoveredBlock38Value7 := [:recoveredBlock38Block143Arg1 | 
    | recoveredBlock38Block143Value0 recoveredBlock38Block143Value1 recoveredBlock38Block143Value2 recoveredBlock38Block143Value3 |
    recoveredBlock38Block143Value0 := recoveredLocal3.
    recoveredBlock38Block143Value1 := recoveredBlock38Block143Arg1.
    recoveredBlock38Block143Value2 := (recoveredBlock38Block143Value1) getString: ('type').
    recoveredBlock38Block143Value3 := (recoveredBlock38Block143Value0) osType: (recoveredBlock38Block143Value2).
    recoveredBlock38Block143Value3
].
    (recoveredBlock38Value6) optional: ('OperatingSystem') do: (recoveredBlock38Value7).
    recoveredBlock38Value8 := recoveredBlock38Arg1.
    recoveredBlock38Value9 := handler.
    recoveredBlock38Value10 := (recoveredBlock38Value8) doneIfNot: (recoveredBlock38Value9).
    recoveredBlock38Value10
].
    recoveredValue12 := handler.
    (recoveredValue10) required: ('Platform') do: (recoveredValue11) ifNot: (recoveredValue12).
    recoveredValue13 := recoveredArg1.
    recoveredValue14 := [:recoveredBlock179Arg1 | 
    | recoveredBlock179Value0 recoveredBlock179Value1 recoveredBlock179Value2 |
    recoveredBlock179Value0 := recoveredBlock179Arg1.
    recoveredBlock179Value1 := recoveredLocal1.
    recoveredBlock179Value2 := (self) readBuildSettings: (recoveredBlock179Value0) genSettings: (recoveredBlock179Value1).
    recoveredBlock179Value2
].
    recoveredValue15 := handler.
    (recoveredValue13) required: ('BuildSettings') do: (recoveredValue14) ifNot: (recoveredValue15).
    ^self
! !

"ASDBase.ic method 0x2052d230; bytecode file offset 0xe29b4c"
!ASDXMLImportStepProjectBase methodsFor: 'recovered'!
readAdditionalSignatureMappingTargetObjectAttributes: recoveredArg1 targetObject: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    super readAdditionalSignatureMappingTargetObjectAttributes: (recoveredValue0) targetObject: (recoveredValue1).
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := ASDEHooksBypassFuncNode.
    recoveredValue4 := (recoveredValue3) new.
    (recoveredValue2) ehooksAttributesNode: (recoveredValue4).
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := (recoveredValue5) ehooksAttributesNode.
    recoveredValue7 := recoveredArg2.
    recoveredValue8 := (recoveredValue7) displayName.
    (recoveredValue6) funcNodeName: (recoveredValue8).
    recoveredValue9 := recoveredArg2.
    recoveredValue10 := (recoveredValue9) ehooksAttributesNode.
    recoveredValue11 := OrderedCollection.
    recoveredValue12 := (recoveredValue11) new.
    (recoveredValue10) instVarProcessReferences: (recoveredValue12).
    recoveredValue13 := recoveredArg1.
    recoveredValue14 := (recoveredValue13) getString: ('dispatchPoint') default: (nil).
    recoveredValue15 := [:recoveredBlock52Arg1 | 
    | recoveredBlock52Value0 recoveredBlock52Value1 recoveredBlock52Value2 recoveredBlock52Value3 |
    recoveredBlock52Value0 := recoveredArg2.
    recoveredBlock52Value1 := (recoveredBlock52Value0) ehooksAttributesNode.
    recoveredBlock52Value2 := recoveredBlock52Arg1.
    recoveredBlock52Value3 := (recoveredBlock52Value1) ecuTriggerConfigDispatchPoint: (recoveredBlock52Value2).
    recoveredBlock52Value3
].
    (recoveredValue14) ifNotNil: (recoveredValue15).
    recoveredValue16 := recoveredArg1.
    recoveredValue17 := (recoveredValue16) getDouble: ('period') default: (nil).
    recoveredValue18 := [:recoveredBlock77Arg1 | 
    | recoveredBlock77Value0 recoveredBlock77Value1 recoveredBlock77Value2 recoveredBlock77Value3 |
    recoveredBlock77Value0 := recoveredArg2.
    recoveredBlock77Value1 := (recoveredBlock77Value0) ehooksAttributesNode.
    recoveredBlock77Value2 := recoveredBlock77Arg1.
    recoveredBlock77Value3 := (recoveredBlock77Value1) period: (recoveredBlock77Value2).
    recoveredBlock77Value3
].
    (recoveredValue17) ifNotNil: (recoveredValue18).
    recoveredValue19 := recoveredArg1.
    recoveredValue20 := (recoveredValue19) getBoolean: ('forceWrites') default: (nil).
    recoveredValue21 := [:recoveredBlock103Arg1 | 
    | recoveredBlock103Value0 recoveredBlock103Value1 recoveredBlock103Value2 recoveredBlock103Value3 |
    recoveredBlock103Value0 := recoveredArg2.
    recoveredBlock103Value1 := (recoveredBlock103Value0) ehooksAttributesNode.
    recoveredBlock103Value2 := recoveredBlock103Arg1.
    recoveredBlock103Value3 := (recoveredBlock103Value1) ecuTriggerConfigForceWrites: (recoveredBlock103Value2).
    recoveredBlock103Value3
].
    (recoveredValue20) ifNotNil: (recoveredValue21).
    recoveredValue22 := recoveredArg1.
    recoveredValue23 := (recoveredValue22) getString: ('controlVariable') default: (nil).
    recoveredValue24 := [:recoveredBlock129Arg1 | 
    | recoveredBlock129Value0 recoveredBlock129Value1 recoveredBlock129Value2 recoveredBlock129Value3 |
    recoveredBlock129Value0 := recoveredArg2.
    recoveredBlock129Value1 := (recoveredBlock129Value0) ehooksAttributesNode.
    recoveredBlock129Value2 := recoveredBlock129Arg1.
    recoveredBlock129Value3 := (recoveredBlock129Value1) ecuTriggerConfigControlVariable: (recoveredBlock129Value2).
    recoveredBlock129Value3
].
    (recoveredValue23) ifNotNil: (recoveredValue24).
    recoveredValue25 := recoveredArg1.
    recoveredValue26 := (recoveredValue25) getString: ('enablerParameter') default: (nil).
    recoveredValue27 := [:recoveredBlock155Arg1 | 
    | recoveredBlock155Value0 recoveredBlock155Value1 recoveredBlock155Value2 recoveredBlock155Value3 |
    recoveredBlock155Value0 := recoveredArg2.
    recoveredBlock155Value1 := (recoveredBlock155Value0) ehooksAttributesNode.
    recoveredBlock155Value2 := recoveredBlock155Arg1.
    recoveredBlock155Value3 := (recoveredBlock155Value1) ecuTriggerConfigEnablerParameter: (recoveredBlock155Value2).
    recoveredBlock155Value3
].
    (recoveredValue26) ifNotNil: (recoveredValue27).
    recoveredValue28 := recoveredArg1.
    recoveredValue29 := (recoveredValue28) getString: ('indicatorVariable') default: (nil).
    recoveredValue30 := [:recoveredBlock181Arg1 | 
    | recoveredBlock181Value0 recoveredBlock181Value1 recoveredBlock181Value2 recoveredBlock181Value3 |
    recoveredBlock181Value0 := recoveredArg2.
    recoveredBlock181Value1 := (recoveredBlock181Value0) ehooksAttributesNode.
    recoveredBlock181Value2 := recoveredBlock181Arg1.
    recoveredBlock181Value3 := (recoveredBlock181Value1) ecuTriggerConfigIndicatorVariable: (recoveredBlock181Value2).
    recoveredBlock181Value3
].
    (recoveredValue29) ifNotNil: (recoveredValue30).
    ^self
! !

"ASDBase.ic method 0x2054bb6c; bytecode file offset 0xe4849c"
!ASDXMLImportStepProjectBase methodsFor: 'recovered'!
readOsDescription: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SGOperatingSystemLogic.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 'OID'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) getOID: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Value0 recoveredBlock18Value1 |
    recoveredBlock18Value0 := recoveredBlock18Arg1.
    recoveredBlock18Value1 := recoveredBlock18Value0.
    recoveredLocal1 := recoveredBlock18Value1.
    recoveredBlock18Value0
].
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            opModes := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := 'coopLevels'.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := (recoveredStack2) getNNInt: (recoveredStack3).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack4 := 'preempLevels'.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := (recoveredStack3) getNNInt: (recoveredStack4).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack5 := 'eventLevels'.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack4 := (recoveredStack4) getNNInt: (recoveredStack5).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack6 := 'enableMonitoring'.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack5 := (recoveredStack5) getBoolean: (recoveredStack6).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack6 := recoveredArg1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack7 := 'enableTickDuration'.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack6 := (recoveredStack6) getBoolean: (recoveredStack7).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack7 := recoveredArg1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack8 := 'tickDuration'.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack7 := (recoveredStack7) getNNInt: (recoveredStack8).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack1) xmlInitCL: (recoveredStack2) pl: (recoveredStack3) el: (recoveredStack4) em: (recoveredStack5) etd: (recoveredStack6) td: (recoveredStack7).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 104] ifFalse: [recoveredPC := 92].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack1) handleSGDBObject: (recoveredStack2) oid: (recoveredStack3).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredPC := 110.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack1) handleSGDBObject: (recoveredStack2).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := 'OperationModes'.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack3 := [:recoveredBlock115Arg1 | 
    | recoveredBlock115Value0 recoveredBlock115Value1 recoveredBlock115Value2 recoveredBlock115Value3 recoveredBlock115Value4 recoveredBlock115Value5 recoveredBlock115Value6 recoveredBlock115Value7 |
    recoveredBlock115Value0 := recoveredLocal2.
    recoveredBlock115Value1 := recoveredBlock115Arg1.
    recoveredBlock115Value2 := [:recoveredBlock115Block128Arg1 | 
    | recoveredBlock115Block128Value0 recoveredBlock115Block128Value1 |
    recoveredBlock115Block128Value0 := recoveredBlock115Block128Arg1.
    recoveredBlock115Block128Value1 := (self) readOperationMode: (recoveredBlock115Block128Value0).
    recoveredBlock115Block128Value1
].
    recoveredBlock115Value3 := (recoveredBlock115Value1) multiple: ('OperationMode') do: (recoveredBlock115Value2).
    recoveredBlock115Value4 := (recoveredBlock115Value3) asArray.
    (recoveredBlock115Value0) operatingModes: (recoveredBlock115Value4).
    recoveredBlock115Value5 := recoveredBlock115Arg1.
    recoveredBlock115Value6 := handler.
    recoveredBlock115Value7 := (recoveredBlock115Value5) doneIfNot: (recoveredBlock115Value6).
    recoveredBlock115Value7
].
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack4 := handler.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            (recoveredStack1) required: (recoveredStack2) do: (recoveredStack3) ifNot: (recoveredStack4).
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack2 := 'Tasks'.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack3 := [:recoveredBlock160Arg1 | 
    | recoveredBlock160Value0 recoveredBlock160Value1 recoveredBlock160Value2 recoveredBlock160Value3 recoveredBlock160Value4 |
    recoveredBlock160Value0 := recoveredLocal2.
    recoveredBlock160Value1 := recoveredBlock160Arg1.
    recoveredBlock160Value2 := [:recoveredBlock160Block172Arg1 | 
    | recoveredBlock160Block172Value0 recoveredBlock160Block172Value1 |
    recoveredBlock160Block172Value0 := recoveredBlock160Block172Arg1.
    recoveredBlock160Block172Value1 := (self) readTask: (recoveredBlock160Block172Value0).
    recoveredBlock160Block172Value1
].
    recoveredBlock160Value3 := (recoveredBlock160Value1) multiple: ('Task') do: (recoveredBlock160Value2).
    recoveredBlock160Value4 := (recoveredBlock160Value0) setTasks: (recoveredBlock160Value3).
    recoveredBlock160Value4
].
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack4 := handler.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            (recoveredStack1) required: (recoveredStack2) do: (recoveredStack3) ifNot: (recoveredStack4).
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack2 := 'OsSettings'.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack3 := [:recoveredBlock197Arg1 | 
    | recoveredBlock197Value0 recoveredBlock197Value1 recoveredBlock197Value2 |
    recoveredBlock197Value0 := recoveredBlock197Arg1.
    recoveredBlock197Value1 := recoveredLocal2.
    recoveredBlock197Value2 := (self) readOsSettings: (recoveredBlock197Value0) forOsLogic: (recoveredBlock197Value1).
    recoveredBlock197Value2
].
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack4 := handler.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            (recoveredStack1) required: (recoveredStack2) do: (recoveredStack3) ifNot: (recoveredStack4).
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x205f30dc; bytecode file offset 0xeefa70"
!ASDXMLImportStepProjectBase methodsFor: 'recovered'!
readEHOOKSConfigurationT: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 |
    recoveredValue0 := ASDEHooksConfig.
    recoveredValue1 := protoClass.
    recoveredValue2 := (recoveredValue1) thing.
    recoveredValue3 := (recoveredValue0) createForProject: (recoveredValue2) configFile: ('') forceAssociation: (true).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := LookupTable.
    recoveredValue5 := (recoveredValue4) new.
    recoveredLocal3 := recoveredValue5.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (recoveredValue7) class.
    recoveredValue9 := (recoveredValue8) mappingProcessTag.
    recoveredValue10 := [:recoveredBlock35Arg1 | 
    | recoveredBlock35Local1 recoveredBlock35Value0 recoveredBlock35Value1 recoveredBlock35Value2 recoveredBlock35Value3 recoveredBlock35Value4 recoveredBlock35Value5 recoveredBlock35Value6 recoveredBlock35Value7 recoveredBlock35Value8 recoveredBlock35Value9 recoveredBlock35Value10 recoveredBlock35Value11 |
    recoveredLocal2 := 'Process'.
    recoveredBlock35Value0 := recoveredBlock35Arg1.
    recoveredBlock35Value1 := ASDMappingObject.
    recoveredBlock35Value2 := recoveredLocal2.
    recoveredBlock35Value3 := (recoveredBlock35Value1) newSourceClassForType: (recoveredBlock35Value2).
    recoveredBlock35Value4 := ASDMappingTargetEHooksObject.
    recoveredBlock35Value5 := (self) readSignatureMappingT: (recoveredBlock35Value0) sourceObject: (recoveredBlock35Value3) targetObject: (recoveredBlock35Value4).
    recoveredBlock35Local1 := recoveredBlock35Value5.
    recoveredBlock35Value6 := recoveredBlock35Local1.
    recoveredBlock35Value7 := (recoveredBlock35Value6) values.
    recoveredBlock35Value8 := [:recoveredBlock35Block64Arg1 | 
    | recoveredBlock35Block64Value0 recoveredBlock35Block64Value1 recoveredBlock35Block64Value2 |
    recoveredBlock35Block64Value0 := recoveredBlock35Block64Arg1.
    recoveredBlock35Block64Value1 := [:recoveredBlock35Block64Block71Arg1 | 
    | recoveredBlock35Block64Block71Stack0 recoveredBlock35Block64Block71Stack1 recoveredBlock35Block64Block71Stack2 recoveredBlock35Block64Block71Stack3 recoveredBlock35Block64Block71Stack4 recoveredBlock35Block64Block71Stack5 recoveredBlock35Block64Block71Stack6 recoveredBlock35Block64Block71Stack7 recoveredBlock35Block64Block71PC recoveredBlock35Block64Block71Step recoveredBlock35Block64Block71Done recoveredBlock35Block64Block71Result |
    recoveredBlock35Block64Block71Stack0 := nil.
    recoveredBlock35Block64Block71PC := 78.
    recoveredBlock35Block64Block71Done := false.
    [recoveredBlock35Block64Block71Done not] whileTrue: [
        recoveredBlock35Block64Block71Step := recoveredBlock35Block64Block71PC.
        recoveredBlock35Block64Block71Step = 78 ifTrue: [
            recoveredBlock35Block64Block71Stack1 := recoveredBlock35Block64Block71Arg1.
            recoveredBlock35Block64Block71PC := 81.
        ].
        recoveredBlock35Block64Block71Step = 81 ifTrue: [
            recoveredBlock35Block64Block71Stack1 := (recoveredBlock35Block64Block71Stack1) sourceObject.
            recoveredBlock35Block64Block71PC := 83.
        ].
        recoveredBlock35Block64Block71Step = 83 ifTrue: [
            recoveredBlock35Block64Block71Stack1 := (recoveredBlock35Block64Block71Stack1) elementOIDChain.
            recoveredBlock35Block64Block71PC := 85.
        ].
        recoveredBlock35Block64Block71Step = 85 ifTrue: [
            recoveredBlock35Block64Block71Stack1 := (recoveredBlock35Block64Block71Stack1) parts.
            recoveredBlock35Block64Block71PC := 87.
        ].
        recoveredBlock35Block64Block71Step = 87 ifTrue: [
            recoveredBlock35Block64Block71Stack1 := (recoveredBlock35Block64Block71Stack1) size.
            recoveredBlock35Block64Block71PC := 89.
        ].
        recoveredBlock35Block64Block71Step = 89 ifTrue: [
            recoveredBlock35Block64Block71Stack2 := 2.
            recoveredBlock35Block64Block71PC := 91.
        ].
        recoveredBlock35Block64Block71Step = 91 ifTrue: [
            recoveredBlock35Block64Block71Stack1 := (recoveredBlock35Block64Block71Stack1) = (recoveredBlock35Block64Block71Stack2).
            recoveredBlock35Block64Block71PC := 92.
        ].
        recoveredBlock35Block64Block71Step = 92 ifTrue: [
            (recoveredBlock35Block64Block71Stack1) ifTrue: [recoveredBlock35Block64Block71PC := 96] ifFalse: [recoveredBlock35Block64Block71PC := 141].
        ].
        recoveredBlock35Block64Block71Step = 96 ifTrue: [
            recoveredBlock35Block64Block71Stack1 := recoveredBlock35Block64Block71Arg1.
            recoveredBlock35Block64Block71PC := 99.
        ].
        recoveredBlock35Block64Block71Step = 99 ifTrue: [
            recoveredBlock35Block64Block71Stack1 := (recoveredBlock35Block64Block71Stack1) targetObject.
            recoveredBlock35Block64Block71PC := 101.
        ].
        recoveredBlock35Block64Block71Step = 101 ifTrue: [
            recoveredBlock35Block64Block71Stack1 := (recoveredBlock35Block64Block71Stack1) ehooksAttributesNode.
            recoveredBlock35Block64Block71PC := 103.
        ].
        recoveredBlock35Block64Block71Step = 103 ifTrue: [
            recoveredBlock35Block64Block71Stack1 := (recoveredBlock35Block64Block71Stack1) instVarProcessReferences.
            recoveredBlock35Block64Block71PC := 105.
        ].
        recoveredBlock35Block64Block71Step = 105 ifTrue: [
            recoveredBlock35Block64Block71Stack2 := Array.
            recoveredBlock35Block64Block71PC := 107.
        ].
        recoveredBlock35Block64Block71Step = 107 ifTrue: [
            recoveredBlock35Block64Block71Stack3 := recoveredBlock35Block64Block71Arg1.
            recoveredBlock35Block64Block71PC := 110.
        ].
        recoveredBlock35Block64Block71Step = 110 ifTrue: [
            recoveredBlock35Block64Block71Stack3 := (recoveredBlock35Block64Block71Stack3) sourceObject.
            recoveredBlock35Block64Block71PC := 112.
        ].
        recoveredBlock35Block64Block71Step = 112 ifTrue: [
            recoveredBlock35Block64Block71Stack3 := (recoveredBlock35Block64Block71Stack3) elementOIDChain.
            recoveredBlock35Block64Block71PC := 114.
        ].
        recoveredBlock35Block64Block71Step = 114 ifTrue: [
            recoveredBlock35Block64Block71Stack3 := (recoveredBlock35Block64Block71Stack3) parts.
            recoveredBlock35Block64Block71PC := 116.
        ].
        recoveredBlock35Block64Block71Step = 116 ifTrue: [
            recoveredBlock35Block64Block71Stack4 := 1.
            recoveredBlock35Block64Block71PC := 118.
        ].
        recoveredBlock35Block64Block71Step = 118 ifTrue: [
            recoveredBlock35Block64Block71Stack5 := [].
            recoveredBlock35Block64Block71PC := 120.
        ].
        recoveredBlock35Block64Block71Step = 120 ifTrue: [
            recoveredBlock35Block64Block71Stack3 := (recoveredBlock35Block64Block71Stack3) at: (recoveredBlock35Block64Block71Stack4) ifAbsent: (recoveredBlock35Block64Block71Stack5).
            recoveredBlock35Block64Block71PC := 122.
        ].
        recoveredBlock35Block64Block71Step = 122 ifTrue: [
            recoveredBlock35Block64Block71Stack4 := recoveredBlock35Block64Block71Arg1.
            recoveredBlock35Block64Block71PC := 125.
        ].
        recoveredBlock35Block64Block71Step = 125 ifTrue: [
            recoveredBlock35Block64Block71Stack4 := (recoveredBlock35Block64Block71Stack4) sourceObject.
            recoveredBlock35Block64Block71PC := 127.
        ].
        recoveredBlock35Block64Block71Step = 127 ifTrue: [
            recoveredBlock35Block64Block71Stack4 := (recoveredBlock35Block64Block71Stack4) elementOIDChain.
            recoveredBlock35Block64Block71PC := 129.
        ].
        recoveredBlock35Block64Block71Step = 129 ifTrue: [
            recoveredBlock35Block64Block71Stack4 := (recoveredBlock35Block64Block71Stack4) parts.
            recoveredBlock35Block64Block71PC := 131.
        ].
        recoveredBlock35Block64Block71Step = 131 ifTrue: [
            recoveredBlock35Block64Block71Stack5 := 2.
            recoveredBlock35Block64Block71PC := 133.
        ].
        recoveredBlock35Block64Block71Step = 133 ifTrue: [
            recoveredBlock35Block64Block71Stack6 := [].
            recoveredBlock35Block64Block71PC := 135.
        ].
        recoveredBlock35Block64Block71Step = 135 ifTrue: [
            recoveredBlock35Block64Block71Stack4 := (recoveredBlock35Block64Block71Stack4) at: (recoveredBlock35Block64Block71Stack5) ifAbsent: (recoveredBlock35Block64Block71Stack6).
            recoveredBlock35Block64Block71PC := 137.
        ].
        recoveredBlock35Block64Block71Step = 137 ifTrue: [
            recoveredBlock35Block64Block71Stack2 := (recoveredBlock35Block64Block71Stack2) with: (recoveredBlock35Block64Block71Stack3) with: (recoveredBlock35Block64Block71Stack4).
            recoveredBlock35Block64Block71PC := 139.
        ].
        recoveredBlock35Block64Block71Step = 139 ifTrue: [
            (recoveredBlock35Block64Block71Stack1) add: (recoveredBlock35Block64Block71Stack2).
            recoveredBlock35Block64Block71PC := 141.
        ].
        recoveredBlock35Block64Block71Step = 141 ifTrue: [
            recoveredBlock35Block64Block71Stack1 := recoveredBlock35Block64Block71Arg1.
            recoveredBlock35Block64Block71PC := 144.
        ].
        recoveredBlock35Block64Block71Step = 144 ifTrue: [
            recoveredBlock35Block64Block71Stack1 := (recoveredBlock35Block64Block71Stack1) targetObject.
            recoveredBlock35Block64Block71PC := 146.
        ].
        recoveredBlock35Block64Block71Step = 146 ifTrue: [
            recoveredBlock35Block64Block71Stack1 := (recoveredBlock35Block64Block71Stack1) ehooksAttributesNode.
            recoveredBlock35Block64Block71PC := 148.
        ].
        recoveredBlock35Block64Block71Step = 148 ifTrue: [
            recoveredBlock35Block64Block71Stack2 := recoveredLocal1.
            recoveredBlock35Block64Block71PC := 151.
        ].
        recoveredBlock35Block64Block71Step = 151 ifTrue: [
            (recoveredBlock35Block64Block71Stack1) eHooksConfig: (recoveredBlock35Block64Block71Stack2).
            recoveredBlock35Block64Block71PC := 153.
        ].
        recoveredBlock35Block64Block71Step = 153 ifTrue: [
            recoveredBlock35Block64Block71Stack1 := recoveredLocal1.
            recoveredBlock35Block64Block71PC := 156.
        ].
        recoveredBlock35Block64Block71Step = 156 ifTrue: [
            recoveredBlock35Block64Block71Stack1 := (recoveredBlock35Block64Block71Stack1) bypassFunctions.
            recoveredBlock35Block64Block71PC := 158.
        ].
        recoveredBlock35Block64Block71Step = 158 ifTrue: [
            recoveredBlock35Block64Block71Stack2 := [:recoveredBlock35Block64Block71Block158Arg1 | 
    | recoveredBlock35Block64Block71Block158Value0 recoveredBlock35Block64Block71Block158Value1 recoveredBlock35Block64Block71Block158Value2 recoveredBlock35Block64Block71Block158Value3 recoveredBlock35Block64Block71Block158Value4 recoveredBlock35Block64Block71Block158Value5 recoveredBlock35Block64Block71Block158Value6 |
    recoveredBlock35Block64Block71Block158Value0 := recoveredBlock35Block64Block71Block158Arg1.
    recoveredBlock35Block64Block71Block158Value1 := (recoveredBlock35Block64Block71Block158Value0) funcNodeName.
    recoveredBlock35Block64Block71Block158Value2 := recoveredBlock35Block64Block71Arg1.
    recoveredBlock35Block64Block71Block158Value3 := (recoveredBlock35Block64Block71Block158Value2) targetObject.
    recoveredBlock35Block64Block71Block158Value4 := (recoveredBlock35Block64Block71Block158Value3) ehooksAttributesNode.
    recoveredBlock35Block64Block71Block158Value5 := (recoveredBlock35Block64Block71Block158Value4) funcNodeName.
    recoveredBlock35Block64Block71Block158Value6 := (recoveredBlock35Block64Block71Block158Value1) = (recoveredBlock35Block64Block71Block158Value5).
    recoveredBlock35Block64Block71Block158Value6
].
            recoveredBlock35Block64Block71PC := 178.
        ].
        recoveredBlock35Block64Block71Step = 178 ifTrue: [
            recoveredBlock35Block64Block71Stack3 := [
    | recoveredBlock35Block64Block71Block178Value0 recoveredBlock35Block64Block71Block178Value1 recoveredBlock35Block64Block71Block178Value2 recoveredBlock35Block64Block71Block178Value3 recoveredBlock35Block64Block71Block178Value4 recoveredBlock35Block64Block71Block178Value5 |
    recoveredBlock35Block64Block71Block178Value0 := recoveredLocal1.
    recoveredBlock35Block64Block71Block178Value1 := (recoveredBlock35Block64Block71Block178Value0) bypassFunctions.
    recoveredBlock35Block64Block71Block178Value2 := recoveredBlock35Block64Block71Arg1.
    recoveredBlock35Block64Block71Block178Value3 := (recoveredBlock35Block64Block71Block178Value2) targetObject.
    recoveredBlock35Block64Block71Block178Value4 := (recoveredBlock35Block64Block71Block178Value3) ehooksAttributesNode.
    recoveredBlock35Block64Block71Block178Value5 := (recoveredBlock35Block64Block71Block178Value1) add: (recoveredBlock35Block64Block71Block178Value4).
    recoveredBlock35Block64Block71Block178Value5
].
            recoveredBlock35Block64Block71PC := 199.
        ].
        recoveredBlock35Block64Block71Step = 199 ifTrue: [
            recoveredBlock35Block64Block71Stack1 := (recoveredBlock35Block64Block71Stack1) detect: (recoveredBlock35Block64Block71Stack2) ifNone: (recoveredBlock35Block64Block71Stack3).
            recoveredBlock35Block64Block71PC := 201.
        ].
        recoveredBlock35Block64Block71Step = 201 ifTrue: [
            recoveredBlock35Block64Block71Result := recoveredBlock35Block64Block71Stack1.
            recoveredBlock35Block64Block71Done := true.
        ].
    ].
    recoveredBlock35Block64Block71Result
].
    recoveredBlock35Block64Value2 := (recoveredBlock35Block64Value0) do: (recoveredBlock35Block64Value1).
    recoveredBlock35Block64Value2
].
    (recoveredBlock35Value7) do: (recoveredBlock35Value8).
    recoveredBlock35Value9 := recoveredLocal1.
    recoveredBlock35Value10 := recoveredBlock35Local1.
    recoveredBlock35Value11 := (recoveredBlock35Value9) mappingProcess: (recoveredBlock35Value10).
    recoveredBlock35Value11
].
    (recoveredValue6) optional: (recoveredValue9) do: (recoveredValue10).
    recoveredValue11 := recoveredArg1.
    recoveredValue12 := recoveredLocal1.
    recoveredValue13 := (recoveredValue12) class.
    recoveredValue14 := (recoveredValue13) mappingInputTag.
    recoveredValue15 := [:recoveredBlock226Arg1 | 
    | recoveredBlock226Local1 recoveredBlock226Value0 recoveredBlock226Value1 recoveredBlock226Value2 recoveredBlock226Value3 recoveredBlock226Value4 recoveredBlock226Value5 recoveredBlock226Value6 recoveredBlock226Value7 recoveredBlock226Value8 |
    recoveredLocal2 := 'Input'.
    recoveredBlock226Value0 := recoveredBlock226Arg1.
    recoveredBlock226Value1 := ASDMappingObject.
    recoveredBlock226Value2 := recoveredLocal2.
    recoveredBlock226Value3 := (recoveredBlock226Value1) newSourceClassForType: (recoveredBlock226Value2).
    recoveredBlock226Value4 := ASDMappingTargetEHooksObject.
    recoveredBlock226Value5 := (self) readElementMappingT: (recoveredBlock226Value0) sourceObject: (recoveredBlock226Value3) targetObject: (recoveredBlock226Value4).
    recoveredBlock226Local1 := recoveredBlock226Value5.
    recoveredBlock226Value6 := recoveredLocal1.
    recoveredBlock226Value7 := recoveredBlock226Local1.
    recoveredBlock226Value8 := (recoveredBlock226Value6) mappingMessageInput: (recoveredBlock226Value7).
    recoveredBlock226Value8
].
    (recoveredValue11) optional: (recoveredValue14) do: (recoveredValue15).
    recoveredValue16 := recoveredArg1.
    recoveredValue17 := recoveredLocal1.
    recoveredValue18 := (recoveredValue17) class.
    recoveredValue19 := (recoveredValue18) ecuInputVariablesTag.
    recoveredValue20 := [:recoveredBlock270Arg1 | 
    | recoveredBlock270Local1 recoveredBlock270Value0 recoveredBlock270Value1 recoveredBlock270Value2 recoveredBlock270Value3 recoveredBlock270Value4 recoveredBlock270Value5 recoveredBlock270Value6 |
    recoveredBlock270Value0 := recoveredBlock270Arg1.
    recoveredBlock270Value1 := ASDEHooksVariable.
    recoveredBlock270Value2 := (recoveredBlock270Value1) inputVarTag.
    recoveredBlock270Value3 := (self) readEcuVariables: (recoveredBlock270Value0) tag: (recoveredBlock270Value2).
    recoveredBlock270Local1 := recoveredBlock270Value3.
    recoveredBlock270Value4 := recoveredLocal1.
    recoveredBlock270Value5 := recoveredBlock270Local1.
    recoveredBlock270Value6 := (recoveredBlock270Value4) ecuVarsInput: (recoveredBlock270Value5).
    recoveredBlock270Value6
].
    (recoveredValue16) optional: (recoveredValue19) do: (recoveredValue20).
    recoveredValue21 := recoveredArg1.
    recoveredValue22 := recoveredLocal1.
    recoveredValue23 := (recoveredValue22) class.
    recoveredValue24 := (recoveredValue23) mappingOutputTag.
    recoveredValue25 := [:recoveredBlock303Arg1 | 
    | recoveredBlock303Local1 recoveredBlock303Value0 recoveredBlock303Value1 recoveredBlock303Value2 recoveredBlock303Value3 recoveredBlock303Value4 recoveredBlock303Value5 recoveredBlock303Value6 recoveredBlock303Value7 recoveredBlock303Value8 |
    recoveredLocal2 := 'Output'.
    recoveredBlock303Value0 := recoveredBlock303Arg1.
    recoveredBlock303Value1 := ASDMappingObject.
    recoveredBlock303Value2 := recoveredLocal2.
    recoveredBlock303Value3 := (recoveredBlock303Value1) newSourceClassForType: (recoveredBlock303Value2).
    recoveredBlock303Value4 := ASDMappingTargetEHooksObject.
    recoveredBlock303Value5 := (self) readElementMappingT: (recoveredBlock303Value0) sourceObject: (recoveredBlock303Value3) targetObject: (recoveredBlock303Value4).
    recoveredBlock303Local1 := recoveredBlock303Value5.
    recoveredBlock303Value6 := recoveredLocal1.
    recoveredBlock303Value7 := recoveredBlock303Local1.
    recoveredBlock303Value8 := (recoveredBlock303Value6) mappingMessageOutput: (recoveredBlock303Value7).
    recoveredBlock303Value8
].
    (recoveredValue21) optional: (recoveredValue24) do: (recoveredValue25).
    recoveredValue26 := recoveredArg1.
    recoveredValue27 := recoveredLocal1.
    recoveredValue28 := (recoveredValue27) class.
    recoveredValue29 := (recoveredValue28) ecuOutputVariablesTag.
    recoveredValue30 := [:recoveredBlock348Arg1 | 
    | recoveredBlock348Local1 recoveredBlock348Value0 recoveredBlock348Value1 recoveredBlock348Value2 recoveredBlock348Value3 recoveredBlock348Value4 recoveredBlock348Value5 recoveredBlock348Value6 |
    recoveredBlock348Value0 := recoveredBlock348Arg1.
    recoveredBlock348Value1 := ASDEHooksVariable.
    recoveredBlock348Value2 := (recoveredBlock348Value1) outputVarTag.
    recoveredBlock348Value3 := (self) readEcuVariables: (recoveredBlock348Value0) tag: (recoveredBlock348Value2).
    recoveredBlock348Local1 := recoveredBlock348Value3.
    recoveredBlock348Value4 := recoveredLocal1.
    recoveredBlock348Value5 := recoveredBlock348Local1.
    recoveredBlock348Value6 := (recoveredBlock348Value4) ecuVarsOutput: (recoveredBlock348Value5).
    recoveredBlock348Value6
].
    (recoveredValue26) optional: (recoveredValue29) do: (recoveredValue30).
    recoveredValue31 := recoveredLocal1.
    recoveredValue32 := recoveredArg1.
    (recoveredValue31) readEHOOKSBypassFunctions: (recoveredValue32).
    recoveredValue33 := recoveredLocal1.
    recoveredValue34 := recoveredArg1.
    recoveredValue35 := (recoveredValue34) getString: ('configFileName') default: ('').
    (recoveredValue33) configFileName: (recoveredValue35).
    recoveredValue36 := recoveredLocal1.
    recoveredValue37 := recoveredArg1.
    recoveredValue38 := (recoveredValue37) getId: ('identifier') default: ('').
    (recoveredValue36) setIdentifier: (recoveredValue38).
    recoveredValue39 := recoveredArg1.
    recoveredValue40 := handler.
    (recoveredValue39) doneIfNot: (recoveredValue40).
    ^self
! !

"ASDBase.ic method 0x205f621c; bytecode file offset 0xef2b9c"
!ASDXMLImportStepProjectBase methodsFor: 'recovered'!
readTask: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 'isContinuousTime'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) getBoolean: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := SGOSCTTask.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := SGOSTask.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := 'name'.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := (recoveredStack2) getNMToken: (recoveredStack3).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) name: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := 'id'.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := (recoveredStack2) getNNInt: (recoveredStack3).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) id: (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := 'Call_71089'.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := 'Process'.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack3 := [:recoveredBlock71Arg1 | 
    | recoveredBlock71Stack0 recoveredBlock71Stack1 recoveredBlock71Stack2 recoveredBlock71Stack3 recoveredBlock71Stack4 recoveredBlock71Stack5 recoveredBlock71Stack6 recoveredBlock71PC recoveredBlock71Step recoveredBlock71Done recoveredBlock71Result |
    recoveredBlock71Stack0 := self.
    recoveredBlock71PC := 78.
    recoveredBlock71Done := false.
    [recoveredBlock71Done not] whileTrue: [
        recoveredBlock71Step := recoveredBlock71PC.
        recoveredBlock71Step = 78 ifTrue: [
            recoveredBlock71Stack1 := recoveredBlock71Arg1.
            recoveredBlock71PC := 81.
        ].
        recoveredBlock71Step = 81 ifTrue: [
            recoveredBlock71Stack2 := 'default'.
            recoveredBlock71PC := 83.
        ].
        recoveredBlock71Step = 83 ifTrue: [
            recoveredBlock71Stack3 := false.
            recoveredBlock71PC := 84.
        ].
        recoveredBlock71Step = 84 ifTrue: [
            recoveredBlock71Stack1 := (recoveredBlock71Stack1) getBoolean: (recoveredBlock71Stack2) default: (recoveredBlock71Stack3).
            recoveredBlock71PC := 86.
        ].
        recoveredBlock71Step = 86 ifTrue: [
            (recoveredBlock71Stack1) ifTrue: [recoveredBlock71PC := 90] ifFalse: [recoveredBlock71PC := 116].
        ].
        recoveredBlock71Step = 90 ifTrue: [
            recoveredBlock71Stack1 := recoveredLocal3.
            recoveredBlock71PC := 93.
        ].
        recoveredBlock71Step = 93 ifTrue: [
            recoveredBlock71Stack2 := Array.
            recoveredBlock71PC := 95.
        ].
        recoveredBlock71Step = 95 ifTrue: [
            recoveredBlock71Stack3 := recoveredBlock71Arg1.
            recoveredBlock71PC := 98.
        ].
        recoveredBlock71Step = 98 ifTrue: [
            recoveredBlock71Stack4 := 'elementName'.
            recoveredBlock71PC := 100.
        ].
        recoveredBlock71Step = 100 ifTrue: [
            recoveredBlock71Stack3 := (recoveredBlock71Stack3) getNMToken: (recoveredBlock71Stack4).
            recoveredBlock71PC := 102.
        ].
        recoveredBlock71Step = 102 ifTrue: [
            recoveredBlock71Stack4 := recoveredBlock71Arg1.
            recoveredBlock71PC := 105.
        ].
        recoveredBlock71Step = 105 ifTrue: [
            recoveredBlock71Stack5 := 'methodName'.
            recoveredBlock71PC := 107.
        ].
        recoveredBlock71Step = 107 ifTrue: [
            recoveredBlock71Stack4 := (recoveredBlock71Stack4) getNMToken: (recoveredBlock71Stack5).
            recoveredBlock71PC := 109.
        ].
        recoveredBlock71Step = 109 ifTrue: [
            recoveredBlock71Stack2 := (recoveredBlock71Stack2) with: (recoveredBlock71Stack3) with: (recoveredBlock71Stack4).
            recoveredBlock71PC := 111.
        ].
        recoveredBlock71Step = 111 ifTrue: [
            recoveredBlock71Stack1 := (recoveredBlock71Stack1) add: (recoveredBlock71Stack2).
            recoveredBlock71PC := 113.
        ].
        recoveredBlock71Step = 113 ifTrue: [
            recoveredBlock71PC := 295.
        ].
        recoveredBlock71Step = 116 ifTrue: [
            recoveredBlock71Stack1 := [
    | recoveredBlock71Block116Local1 recoveredBlock71Block116Local2 recoveredBlock71Block116Local3 recoveredBlock71Block116Stack0 recoveredBlock71Block116Stack1 recoveredBlock71Block116Stack2 recoveredBlock71Block116Stack3 recoveredBlock71Block116Stack4 recoveredBlock71Block116Stack5 recoveredBlock71Block116Stack6 recoveredBlock71Block116PC recoveredBlock71Block116Step recoveredBlock71Block116Done recoveredBlock71Block116Result |
    recoveredBlock71Block116Stack0 := self.
    recoveredBlock71Block116PC := 122.
    recoveredBlock71Block116Done := false.
    [recoveredBlock71Block116Done not] whileTrue: [
        recoveredBlock71Block116Step := recoveredBlock71Block116PC.
        recoveredBlock71Block116Step = 122 ifTrue: [
            recoveredBlock71Block116Stack1 := recoveredBlock71Arg1.
            recoveredBlock71Block116PC := 125.
        ].
        recoveredBlock71Block116Step = 125 ifTrue: [
            recoveredBlock71Block116Stack2 := 'elementName'.
            recoveredBlock71Block116PC := 127.
        ].
        recoveredBlock71Block116Step = 127 ifTrue: [
            recoveredBlock71Block116Stack3 := 'elementOID'.
            recoveredBlock71Block116PC := 129.
        ].
        recoveredBlock71Block116Step = 129 ifTrue: [
            recoveredBlock71Block116Stack0 := (recoveredBlock71Block116Stack0) getProcessElement: (recoveredBlock71Block116Stack1) nameAttr: (recoveredBlock71Block116Stack2) oidAttr: (recoveredBlock71Block116Stack3).
            recoveredBlock71Block116PC := 132.
        ].
        recoveredBlock71Block116Step = 132 ifTrue: [
            recoveredBlock71Block116Local3 := recoveredBlock71Block116Stack0.
            recoveredBlock71Block116PC := 135.
        ].
        recoveredBlock71Block116Step = 135 ifTrue: [
            recoveredBlock71Block116Stack0 := recoveredBlock71Block116Local3.
            recoveredBlock71Block116PC := 138.
        ].
        recoveredBlock71Block116Step = 138 ifTrue: [
            recoveredBlock71Block116Stack1 := ASDXMLImportProtoComplex.
            recoveredBlock71Block116PC := 140.
        ].
        recoveredBlock71Block116Step = 140 ifTrue: [
            recoveredBlock71Block116Stack0 := (recoveredBlock71Block116Stack0) isKindOf: (recoveredBlock71Block116Stack1).
            recoveredBlock71Block116PC := 142.
        ].
        recoveredBlock71Block116Step = 142 ifTrue: [
            (recoveredBlock71Block116Stack0) ifTrue: [recoveredBlock71Block116PC := 146] ifFalse: [recoveredBlock71Block116PC := 184].
        ].
        recoveredBlock71Block116Step = 146 ifTrue: [
            recoveredBlock71Block116Stack0 := self.
            recoveredBlock71Block116PC := 147.
        ].
        recoveredBlock71Block116Step = 147 ifTrue: [
            recoveredBlock71Block116Stack1 := recoveredBlock71Arg1.
            recoveredBlock71Block116PC := 150.
        ].
        recoveredBlock71Block116Step = 150 ifTrue: [
            recoveredBlock71Block116Stack2 := recoveredBlock71Block116Local3.
            recoveredBlock71Block116PC := 153.
        ].
        recoveredBlock71Block116Step = 153 ifTrue: [
            recoveredBlock71Block116Stack2 := (recoveredBlock71Block116Stack2) refItem.
            recoveredBlock71Block116PC := 155.
        ].
        recoveredBlock71Block116Step = 155 ifTrue: [
            recoveredBlock71Block116Stack3 := nil.
            recoveredBlock71Block116PC := 156.
        ].
        recoveredBlock71Block116Step = 156 ifTrue: [
            recoveredBlock71Block116Stack4 := [:recoveredBlock71Block116Block156Arg1 :recoveredBlock71Block116Block156Arg2 :recoveredBlock71Block116Block156Arg3 | 
    | recoveredBlock71Block116Block156Value0 recoveredBlock71Block116Block156Value1 recoveredBlock71Block116Block156Value2 recoveredBlock71Block116Block156Value3 recoveredBlock71Block116Block156Value4 recoveredBlock71Block116Block156Value5 recoveredBlock71Block116Block156Value6 |
    recoveredBlock71Block116Block156Value0 := recoveredLocal3.
    recoveredBlock71Block116Block156Value1 := Array.
    recoveredBlock71Block116Block156Value2 := recoveredBlock71Block116Local3.
    recoveredBlock71Block116Block156Value3 := (recoveredBlock71Block116Block156Value2) xmlOID.
    recoveredBlock71Block116Block156Value4 := recoveredBlock71Block116Block156Arg2.
    recoveredBlock71Block116Block156Value5 := (recoveredBlock71Block116Block156Value1) with: (recoveredBlock71Block116Block156Value3) with: (recoveredBlock71Block116Block156Value4).
    recoveredBlock71Block116Block156Value6 := (recoveredBlock71Block116Block156Value0) add: (recoveredBlock71Block116Block156Value5).
    recoveredBlock71Block116Block156Value6
].
            recoveredBlock71Block116PC := 178.
        ].
        recoveredBlock71Block116Step = 178 ifTrue: [
            recoveredBlock71Block116Stack0 := (recoveredBlock71Block116Stack0) readComplexPort: (recoveredBlock71Block116Stack1) protoRef: (recoveredBlock71Block116Stack2) defAttr: (recoveredBlock71Block116Stack3) block: (recoveredBlock71Block116Stack4).
            recoveredBlock71Block116PC := 181.
        ].
        recoveredBlock71Block116Step = 181 ifTrue: [
            recoveredBlock71Block116PC := 279.
        ].
        recoveredBlock71Block116Step = 184 ifTrue: [
            recoveredBlock71Block116Stack0 := recoveredBlock71Block116Local3.
            recoveredBlock71Block116PC := 187.
        ].
        recoveredBlock71Block116Step = 187 ifTrue: [
            (recoveredBlock71Block116Stack0 ~~ nil) ifTrue: [recoveredBlock71Block116PC := 274] ifFalse: [recoveredBlock71Block116PC := 190].
        ].
        recoveredBlock71Block116Step = 190 ifTrue: [
            recoveredBlock71Block116Stack0 := recoveredBlock71Arg1.
            recoveredBlock71Block116PC := 193.
        ].
        recoveredBlock71Block116Step = 193 ifTrue: [
            recoveredBlock71Block116Stack1 := 'elementOID'.
            recoveredBlock71Block116PC := 195.
        ].
        recoveredBlock71Block116Step = 195 ifTrue: [
            recoveredBlock71Block116Stack2 := nil.
            recoveredBlock71Block116PC := 196.
        ].
        recoveredBlock71Block116Step = 196 ifTrue: [
            recoveredBlock71Block116Stack0 := (recoveredBlock71Block116Stack0) getLocalID: (recoveredBlock71Block116Stack1) default: (recoveredBlock71Block116Stack2).
            recoveredBlock71Block116PC := 198.
        ].
        recoveredBlock71Block116Step = 198 ifTrue: [
            recoveredBlock71Block116Local2 := recoveredBlock71Block116Stack0.
            recoveredBlock71Block116PC := 201.
        ].
        recoveredBlock71Block116Step = 201 ifTrue: [
            recoveredBlock71Block116Stack0 := recoveredBlock71Arg1.
            recoveredBlock71Block116PC := 204.
        ].
        recoveredBlock71Block116Step = 204 ifTrue: [
            recoveredBlock71Block116Stack1 := 'methodOID'.
            recoveredBlock71Block116PC := 206.
        ].
        recoveredBlock71Block116Step = 206 ifTrue: [
            recoveredBlock71Block116Stack2 := nil.
            recoveredBlock71Block116PC := 207.
        ].
        recoveredBlock71Block116Step = 207 ifTrue: [
            recoveredBlock71Block116Stack0 := (recoveredBlock71Block116Stack0) getLocalID: (recoveredBlock71Block116Stack1) default: (recoveredBlock71Block116Stack2).
            recoveredBlock71Block116PC := 209.
        ].
        recoveredBlock71Block116Step = 209 ifTrue: [
            recoveredBlock71Block116Local1 := recoveredBlock71Block116Stack0.
            recoveredBlock71Block116PC := 212.
        ].
        recoveredBlock71Block116Step = 212 ifTrue: [
            recoveredBlock71Block116Stack0 := recoveredBlock71Block116Local2.
            recoveredBlock71Block116PC := 215.
        ].
        recoveredBlock71Block116Step = 215 ifTrue: [
            (recoveredBlock71Block116Stack0 == nil) ifTrue: [recoveredBlock71Block116PC := 252] ifFalse: [recoveredBlock71Block116PC := 218].
        ].
        recoveredBlock71Block116Step = 218 ifTrue: [
            recoveredBlock71Block116Stack0 := recoveredBlock71Block116Local1.
            recoveredBlock71Block116PC := 221.
        ].
        recoveredBlock71Block116Step = 221 ifTrue: [
            (recoveredBlock71Block116Stack0 == nil) ifTrue: [recoveredBlock71Block116PC := 252] ifFalse: [recoveredBlock71Block116PC := 224].
        ].
        recoveredBlock71Block116Step = 224 ifTrue: [
            recoveredBlock71Block116Stack0 := recoveredLocal3.
            recoveredBlock71Block116PC := 227.
        ].
        recoveredBlock71Block116Step = 227 ifTrue: [
            recoveredBlock71Block116Stack1 := Array.
            recoveredBlock71Block116PC := 229.
        ].
        recoveredBlock71Block116Step = 229 ifTrue: [
            recoveredBlock71Block116Stack2 := recoveredBlock71Arg1.
            recoveredBlock71Block116PC := 232.
        ].
        recoveredBlock71Block116Step = 232 ifTrue: [
            recoveredBlock71Block116Stack3 := 'elementOID'.
            recoveredBlock71Block116PC := 234.
        ].
        recoveredBlock71Block116Step = 234 ifTrue: [
            recoveredBlock71Block116Stack4 := nil.
            recoveredBlock71Block116PC := 235.
        ].
        recoveredBlock71Block116Step = 235 ifTrue: [
            recoveredBlock71Block116Stack2 := (recoveredBlock71Block116Stack2) getLocalID: (recoveredBlock71Block116Stack3) default: (recoveredBlock71Block116Stack4).
            recoveredBlock71Block116PC := 237.
        ].
        recoveredBlock71Block116Step = 237 ifTrue: [
            recoveredBlock71Block116Stack3 := recoveredBlock71Arg1.
            recoveredBlock71Block116PC := 240.
        ].
        recoveredBlock71Block116Step = 240 ifTrue: [
            recoveredBlock71Block116Stack4 := 'methodOID'.
            recoveredBlock71Block116PC := 242.
        ].
        recoveredBlock71Block116Step = 242 ifTrue: [
            recoveredBlock71Block116Stack5 := nil.
            recoveredBlock71Block116PC := 243.
        ].
        recoveredBlock71Block116Step = 243 ifTrue: [
            recoveredBlock71Block116Stack3 := (recoveredBlock71Block116Stack3) getLocalID: (recoveredBlock71Block116Stack4) default: (recoveredBlock71Block116Stack5).
            recoveredBlock71Block116PC := 245.
        ].
        recoveredBlock71Block116Step = 245 ifTrue: [
            recoveredBlock71Block116Stack1 := (recoveredBlock71Block116Stack1) with: (recoveredBlock71Block116Stack2) with: (recoveredBlock71Block116Stack3).
            recoveredBlock71Block116PC := 247.
        ].
        recoveredBlock71Block116Step = 247 ifTrue: [
            recoveredBlock71Block116Stack0 := (recoveredBlock71Block116Stack0) add: (recoveredBlock71Block116Stack1).
            recoveredBlock71Block116PC := 249.
        ].
        recoveredBlock71Block116Step = 249 ifTrue: [
            recoveredBlock71Block116PC := 262.
        ].
        recoveredBlock71Block116Step = 252 ifTrue: [
            recoveredBlock71Block116Stack0 := self.
            recoveredBlock71Block116PC := 253.
        ].
        recoveredBlock71Block116Step = 253 ifTrue: [
            recoveredBlock71Block116Stack1 := recoveredBlock71Arg1.
            recoveredBlock71Block116PC := 256.
        ].
        recoveredBlock71Block116Step = 256 ifTrue: [
            recoveredBlock71Block116Stack2 := 'elementName'.
            recoveredBlock71Block116PC := 258.
        ].
        recoveredBlock71Block116Step = 258 ifTrue: [
            recoveredBlock71Block116Stack1 := (recoveredBlock71Block116Stack1) getNMToken: (recoveredBlock71Block116Stack2).
            recoveredBlock71Block116PC := 260.
        ].
        recoveredBlock71Block116Step = 260 ifTrue: [
            recoveredBlock71Block116Stack0 := (recoveredBlock71Block116Stack0) elementNotFound: (recoveredBlock71Block116Stack1).
            recoveredBlock71Block116PC := 262.
        ].
        recoveredBlock71Block116Step = 262 ifTrue: [
            recoveredBlock71Block116Stack1 := nil.
            recoveredBlock71Block116PC := 263.
        ].
        recoveredBlock71Block116Step = 263 ifTrue: [
            recoveredBlock71Block116Stack2 := recoveredBlock71Block116Stack1.
            recoveredBlock71Block116PC := 264.
        ].
        recoveredBlock71Block116Step = 264 ifTrue: [
            recoveredBlock71Block116Local2 := recoveredBlock71Block116Stack2.
            recoveredBlock71Block116PC := 267.
        ].
        recoveredBlock71Block116Step = 267 ifTrue: [
            recoveredBlock71Block116Local1 := recoveredBlock71Block116Stack1.
            recoveredBlock71Block116PC := 270.
        ].
        recoveredBlock71Block116Step = 270 ifTrue: [
            recoveredBlock71Block116PC := 279.
        ].
        recoveredBlock71Block116Step = 274 ifTrue: [
            recoveredBlock71Block116Stack0 := self.
            recoveredBlock71Block116PC := 275.
        ].
        recoveredBlock71Block116Step = 275 ifTrue: [
            recoveredBlock71Block116Stack1 := 'Wrong type for module element'.
            recoveredBlock71Block116PC := 277.
        ].
        recoveredBlock71Block116Step = 277 ifTrue: [
            recoveredBlock71Block116Stack0 := (recoveredBlock71Block116Stack0) inconsistencyFound: (recoveredBlock71Block116Stack1).
            recoveredBlock71Block116PC := 279.
        ].
        recoveredBlock71Block116Step = 279 ifTrue: [
            recoveredBlock71Block116Result := recoveredBlock71Block116Stack0.
            recoveredBlock71Block116Done := true.
        ].
    ].
    recoveredBlock71Block116Result
].
            recoveredBlock71PC := 280.
        ].
        recoveredBlock71Step = 280 ifTrue: [
            recoveredBlock71Stack2 := ElementNotFound.
            recoveredBlock71PC := 282.
        ].
        recoveredBlock71Step = 282 ifTrue: [
            recoveredBlock71Stack3 := [:block2811bcd8Arg1 | 
    | block2811bcd8Value0 block2811bcd8Value1 |
    block2811bcd8Value0 := block2811bcd8Arg1.
    block2811bcd8Value1 := (block2811bcd8Value0) exitWith: (nil).
    block2811bcd8Value1
].
            recoveredBlock71PC := 284.
        ].
        recoveredBlock71Step = 284 ifTrue: [
            recoveredBlock71PC := 293.
        ].
        recoveredBlock71Step = 293 ifTrue: [
            recoveredBlock71Stack1 := (recoveredBlock71Stack1) when: (recoveredBlock71Stack2) do: (recoveredBlock71Stack3).
            recoveredBlock71PC := 295.
        ].
        recoveredBlock71Step = 295 ifTrue: [
            recoveredBlock71Result := recoveredBlock71Stack1.
            recoveredBlock71Done := true.
        ].
    ].
    recoveredBlock71Result
].
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            (recoveredStack1) multiple: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack2 := (recoveredStack2) asArray.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            (recoveredStack1) instVarProcessReferences: (recoveredStack2).
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack2 := 'AssignedOperationModes'.
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack3 := [:recoveredBlock320Arg1 | 
    | recoveredBlock320Value0 recoveredBlock320Value1 recoveredBlock320Value2 |
    recoveredBlock320Value0 := recoveredBlock320Arg1.
    recoveredBlock320Value1 := [:recoveredBlock320Block329Arg1 | 
    | recoveredBlock320Block329Stack0 recoveredBlock320Block329Stack1 recoveredBlock320Block329Stack2 recoveredBlock320Block329Stack3 recoveredBlock320Block329Stack4 recoveredBlock320Block329Stack5 recoveredBlock320Block329PC recoveredBlock320Block329Step recoveredBlock320Block329Done recoveredBlock320Block329Result |
    recoveredBlock320Block329Stack0 := self.
    recoveredBlock320Block329PC := 336.
    recoveredBlock320Block329Done := false.
    [recoveredBlock320Block329Done not] whileTrue: [
        recoveredBlock320Block329Step := recoveredBlock320Block329PC.
        recoveredBlock320Block329Step = 336 ifTrue: [
            recoveredBlock320Block329Stack1 := opModes.
            recoveredBlock320Block329PC := 338.
        ].
        recoveredBlock320Block329Step = 338 ifTrue: [
            recoveredBlock320Block329Stack2 := recoveredBlock320Block329Arg1.
            recoveredBlock320Block329PC := 339.
        ].
        recoveredBlock320Block329Step = 339 ifTrue: [
            recoveredBlock320Block329Stack3 := 'name'.
            recoveredBlock320Block329PC := 341.
        ].
        recoveredBlock320Block329Step = 341 ifTrue: [
            recoveredBlock320Block329Stack2 := (recoveredBlock320Block329Stack2) getString: (recoveredBlock320Block329Stack3).
            recoveredBlock320Block329PC := 343.
        ].
        recoveredBlock320Block329Step = 343 ifTrue: [
            recoveredBlock320Block329Stack3 := [
    | block2811bcfcValue0 |
    block2811bcfcValue0 := ('todo') notNil.
    block2811bcfcValue0
].
            recoveredBlock320Block329PC := 345.
        ].
        recoveredBlock320Block329Step = 345 ifTrue: [
            recoveredBlock320Block329PC := 352.
        ].
        recoveredBlock320Block329Step = 352 ifTrue: [
            recoveredBlock320Block329Stack4 := [:recoveredBlock320Block329Block352Arg1 | 
    | recoveredBlock320Block329Block352Value0 recoveredBlock320Block329Block352Value1 recoveredBlock320Block329Block352Value2 |
    recoveredBlock320Block329Block352Value0 := recoveredLocal2.
    recoveredBlock320Block329Block352Value1 := recoveredBlock320Block329Block352Arg1.
    recoveredBlock320Block329Block352Value2 := (recoveredBlock320Block329Block352Value0) add: (recoveredBlock320Block329Block352Value1).
    recoveredBlock320Block329Block352Value2
].
            recoveredBlock320Block329PC := 365.
        ].
        recoveredBlock320Block329Step = 365 ifTrue: [
            recoveredBlock320Block329Stack1 := (recoveredBlock320Block329Stack1) at: (recoveredBlock320Block329Stack2) ifAbsent: (recoveredBlock320Block329Stack3) ifPresent: (recoveredBlock320Block329Stack4).
            recoveredBlock320Block329PC := 368.
        ].
        recoveredBlock320Block329Step = 368 ifTrue: [
            recoveredBlock320Block329Result := recoveredBlock320Block329Stack1.
            recoveredBlock320Block329Done := true.
        ].
    ].
    recoveredBlock320Block329Result
].
    recoveredBlock320Value2 := (recoveredBlock320Value0) multiple: ('OperationMode') do: (recoveredBlock320Value1).
    recoveredBlock320Value2
].
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            recoveredStack4 := handler.
            recoveredPC := 374.
        ].
        recoveredStep = 374 ifTrue: [
            (recoveredStack1) required: (recoveredStack2) do: (recoveredStack3) ifNot: (recoveredStack4).
            recoveredPC := 377.
        ].
        recoveredStep = 377 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 380.
        ].
        recoveredStep = 380 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 383.
        ].
        recoveredStep = 383 ifTrue: [
            (recoveredStack1) operatingModes: (recoveredStack2).
            recoveredPC := 385.
        ].
        recoveredStep = 385 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 388.
        ].
        recoveredStep = 388 ifTrue: [
            recoveredStack2 := 'TaskType'.
            recoveredPC := 390.
        ].
        recoveredStep = 390 ifTrue: [
            recoveredStack3 := [:recoveredBlock390Arg1 | 
    | recoveredBlock390Value0 recoveredBlock390Value1 |
    recoveredBlock390Value0 := recoveredBlock390Arg1.
    recoveredBlock390Value1 := (self) readTaskType: (recoveredBlock390Value0).
    recoveredBlock390Value1
].
            recoveredPC := 400.
        ].
        recoveredStep = 400 ifTrue: [
            recoveredStack4 := handler.
            recoveredPC := 402.
        ].
        recoveredStep = 402 ifTrue: [
            recoveredStack1 := (recoveredStack1) required: (recoveredStack2) do: (recoveredStack3) ifNot: (recoveredStack4).
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 408.
        ].
        recoveredStep = 408 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 411.
        ].
        recoveredStep = 411 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 414.
        ].
        recoveredStep = 414 ifTrue: [
            (recoveredStack1) triggerObjectBasic: (recoveredStack2).
            recoveredPC := 416.
        ].
        recoveredStep = 416 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 419.
        ].
        recoveredStep = 419 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2065d40c; bytecode file offset 0xf59e38"
!ASDXMLImportStepProjectBase methodsFor: 'recovered'!
readProject: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
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
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := 'Project'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := handler.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := 'todoReiko'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) notNil.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := 'ImplementationConfiguration'.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := [:block281248e8Arg1 | 
    nil
].
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack4 := handler.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) required: (recoveredStack2) do: (recoveredStack3) ifNot: (recoveredStack4).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := 'DataConfiguration'.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := [:block2812490cArg1 | 
    nil
].
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack4 := handler.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack1) required: (recoveredStack2) do: (recoveredStack3) ifNot: (recoveredStack4).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := 'OsLogic'.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack3 := [:recoveredBlock72Arg1 | 
    | recoveredBlock72Value0 recoveredBlock72Value1 recoveredBlock72Value2 recoveredBlock72Value3 recoveredBlock72Value4 |
    recoveredBlock72Value0 := recoveredBlock72Arg1.
    recoveredBlock72Value1 := (self) readERCOSEKT: (recoveredBlock72Value0).
    (self) handleOSLogic: (recoveredBlock72Value1).
    recoveredBlock72Value2 := recoveredBlock72Arg1.
    recoveredBlock72Value3 := handler.
    recoveredBlock72Value4 := (recoveredBlock72Value2) doneIfNot: (recoveredBlock72Value3).
    recoveredBlock72Value4
].
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack4 := handler.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack1) required: (recoveredStack2) do: (recoveredStack3) ifNot: (recoveredStack4).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := 'ModelConfiguration'.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack3 := [:recoveredBlock100Arg1 | 
    | recoveredBlock100Value0 recoveredBlock100Value1 |
    recoveredBlock100Value0 := recoveredBlock100Arg1.
    recoveredBlock100Value1 := (self) readModelConfigurationT: (recoveredBlock100Value0).
    recoveredBlock100Value1
].
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack4 := handler.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack1) required: (recoveredStack2) do: (recoveredStack3) ifNot: (recoveredStack4).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := 'EHOOKSConfiguration'.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack3 := [:recoveredBlock120Arg1 | 
    | recoveredBlock120Value0 recoveredBlock120Value1 |
    recoveredBlock120Value0 := recoveredBlock120Arg1.
    recoveredBlock120Value1 := (self) readEHOOKSConfigurationT: (recoveredBlock120Value0).
    recoveredBlock120Value1
].
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack1) optional: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack2 := 'BuildConfiguration'.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack3 := [:recoveredBlock137Arg1 | 
    | recoveredBlock137Value0 recoveredBlock137Value1 |
    recoveredBlock137Value0 := recoveredBlock137Arg1.
    recoveredBlock137Value1 := (self) readBuildConfiguration: (recoveredBlock137Value0).
    recoveredBlock137Value1
].
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack4 := handler.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            (recoveredStack1) required: (recoveredStack2) do: (recoveredStack3) ifNot: (recoveredStack4).
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack2 := 'SimulationConfiguration'.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack3 := [:recoveredBlock158Arg1 | 
    | recoveredBlock158Value0 recoveredBlock158Value1 recoveredBlock158Value2 recoveredBlock158Value3 recoveredBlock158Value4 recoveredBlock158Value5 |
    recoveredBlock158Value0 := (LookupTable new) elementCount: (7); keyArray: (#(nil 'ExperimentOnlineRP' 'ExperimentOnlineINTECRIO' nil nil nil 'ExperimentOnlineINCA' 'ExperimentOfflineRP' nil nil nil nil 'ExperimentOnlineEtasEE' nil nil nil 'ExperimentOfflinePC' 'ExperimentOnlinePC' nil nil nil nil)); valueArray: (#(nil 'Online (RP)' 'INTECRIO' nil nil nil 'INCA' 'Offline (RP)' nil nil nil nil 'Online (ETAS EE)' nil nil nil 'Offline (PC)' 'Online (PC)' nil nil nil nil)); yourself.
    recoveredBlock158Value1 := recoveredBlock158Arg1.
    recoveredBlock158Value2 := (recoveredBlock158Value1) getString: ('experimentTarget') default: ('ExperimentOfflinePC').
    recoveredBlock158Value3 := [].
    recoveredBlock158Value4 := [:recoveredBlock158Block175Arg1 | 
    | recoveredBlock158Block175Value0 recoveredBlock158Block175Value1 recoveredBlock158Block175Value2 recoveredBlock158Block175Value3 |
    recoveredBlock158Block175Value0 := protoClass.
    recoveredBlock158Block175Value1 := (recoveredBlock158Block175Value0) thing.
    recoveredBlock158Block175Value2 := recoveredBlock158Block175Arg1.
    recoveredBlock158Block175Value3 := (recoveredBlock158Block175Value1) experimentTarget: (recoveredBlock158Block175Value2).
    recoveredBlock158Block175Value3
].
    recoveredBlock158Value5 := (recoveredBlock158Value0) at: (recoveredBlock158Value2) ifAbsent: (recoveredBlock158Value3) ifPresent: (recoveredBlock158Value4).
    recoveredBlock158Value5
].
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            (recoveredStack1) optional: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack2 := 'HiddenMessageTypes'.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack3 := [:recoveredBlock201Arg1 | 
    | recoveredBlock201Local1 recoveredBlock201Value0 recoveredBlock201Value1 recoveredBlock201Value2 recoveredBlock201Value3 recoveredBlock201Value4 recoveredBlock201Value5 recoveredBlock201Value6 recoveredBlock201Value7 recoveredBlock201Value8 recoveredBlock201Value9 |
    recoveredBlock201Value0 := Set.
    recoveredBlock201Value1 := (recoveredBlock201Value0) new.
    recoveredBlock201Local1 := recoveredBlock201Value1.
    recoveredBlock201Value2 := recoveredBlock201Arg1.
    recoveredBlock201Value3 := [:recoveredBlock201Block219Arg1 | 
    | recoveredBlock201Block219Value0 recoveredBlock201Block219Value1 recoveredBlock201Block219Value2 recoveredBlock201Block219Value3 |
    recoveredBlock201Block219Value0 := recoveredBlock201Local1.
    recoveredBlock201Block219Value1 := recoveredBlock201Block219Arg1.
    recoveredBlock201Block219Value2 := (recoveredBlock201Block219Value1) getString: ('label').
    recoveredBlock201Block219Value3 := (recoveredBlock201Block219Value0) add: (recoveredBlock201Block219Value2).
    recoveredBlock201Block219Value3
].
    (recoveredBlock201Value2) multiple: ('MessageType') do: (recoveredBlock201Value3).
    recoveredBlock201Value4 := recoveredBlock201Arg1.
    recoveredBlock201Value5 := handler.
    (recoveredBlock201Value4) doneIfNot: (recoveredBlock201Value5).
    recoveredBlock201Value6 := protoClass.
    recoveredBlock201Value7 := (recoveredBlock201Value6) thing.
    recoveredBlock201Value8 := recoveredBlock201Local1.
    recoveredBlock201Value9 := (recoveredBlock201Value7) xmlHiddenCodeGenMessages: (recoveredBlock201Value8).
    recoveredBlock201Value9
].
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            (recoveredStack1) optional: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack2 := 'IgnoredMessageTypes'.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack3 := [:recoveredBlock263Arg1 | 
    | recoveredBlock263Local1 recoveredBlock263Value0 recoveredBlock263Value1 recoveredBlock263Value2 recoveredBlock263Value3 recoveredBlock263Value4 recoveredBlock263Value5 recoveredBlock263Value6 recoveredBlock263Value7 recoveredBlock263Value8 recoveredBlock263Value9 |
    recoveredBlock263Value0 := Set.
    recoveredBlock263Value1 := (recoveredBlock263Value0) new.
    recoveredBlock263Local1 := recoveredBlock263Value1.
    recoveredBlock263Value2 := recoveredBlock263Arg1.
    recoveredBlock263Value3 := [:recoveredBlock263Block281Arg1 | 
    | recoveredBlock263Block281Value0 recoveredBlock263Block281Value1 recoveredBlock263Block281Value2 recoveredBlock263Block281Value3 |
    recoveredBlock263Block281Value0 := recoveredBlock263Local1.
    recoveredBlock263Block281Value1 := recoveredBlock263Block281Arg1.
    recoveredBlock263Block281Value2 := (recoveredBlock263Block281Value1) getString: ('label').
    recoveredBlock263Block281Value3 := (recoveredBlock263Block281Value0) add: (recoveredBlock263Block281Value2).
    recoveredBlock263Block281Value3
].
    (recoveredBlock263Value2) multiple: ('MessageType') do: (recoveredBlock263Value3).
    recoveredBlock263Value4 := recoveredBlock263Arg1.
    recoveredBlock263Value5 := handler.
    (recoveredBlock263Value4) doneIfNot: (recoveredBlock263Value5).
    recoveredBlock263Value6 := protoClass.
    recoveredBlock263Value7 := (recoveredBlock263Value6) thing.
    recoveredBlock263Value8 := recoveredBlock263Local1.
    recoveredBlock263Value9 := (recoveredBlock263Value7) xmlIgnoredCodeGenMessages: (recoveredBlock263Value8).
    recoveredBlock263Value9
].
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            (recoveredStack1) optional: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack2 := 'XMLImport'.
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            recoveredStack2 := 'PromotedToErrorMessageTypes'.
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            recoveredStack3 := [:recoveredBlock331Arg1 | 
    | recoveredBlock331Local1 recoveredBlock331Value0 recoveredBlock331Value1 recoveredBlock331Value2 recoveredBlock331Value3 recoveredBlock331Value4 recoveredBlock331Value5 recoveredBlock331Value6 recoveredBlock331Value7 recoveredBlock331Value8 |
    recoveredBlock331Value0 := Set.
    recoveredBlock331Value1 := (recoveredBlock331Value0) new.
    recoveredBlock331Local1 := recoveredBlock331Value1.
    recoveredBlock331Value2 := recoveredBlock331Arg1.
    recoveredBlock331Value3 := [:recoveredBlock331Block349Arg1 | 
    | recoveredBlock331Block349Value0 recoveredBlock331Block349Value1 recoveredBlock331Block349Value2 recoveredBlock331Block349Value3 |
    recoveredBlock331Block349Value0 := recoveredBlock331Local1.
    recoveredBlock331Block349Value1 := recoveredBlock331Block349Arg1.
    recoveredBlock331Block349Value2 := (recoveredBlock331Block349Value1) getString: ('label').
    recoveredBlock331Block349Value3 := (recoveredBlock331Block349Value0) add: (recoveredBlock331Block349Value2).
    recoveredBlock331Block349Value3
].
    (recoveredBlock331Value2) multiple: ('MessageType') do: (recoveredBlock331Value3).
    recoveredBlock331Value4 := recoveredBlock331Arg1.
    recoveredBlock331Value5 := handler.
    (recoveredBlock331Value4) doneIfNot: (recoveredBlock331Value5).
    recoveredBlock331Value6 := recoveredBlock331Local1.
    recoveredBlock331Value7 := [:recoveredBlock331Block379Arg1 | 
    | recoveredBlock331Block379Value0 recoveredBlock331Block379Value1 recoveredBlock331Block379Value2 |
    recoveredBlock331Block379Value0 := recoveredLocal1.
    recoveredBlock331Block379Value1 := recoveredBlock331Block379Arg1.
    recoveredBlock331Block379Value2 := (recoveredBlock331Block379Value0) at: (recoveredBlock331Block379Value1) put: ('error').
    recoveredBlock331Block379Value2
].
    recoveredBlock331Value8 := (recoveredBlock331Value6) do: (recoveredBlock331Value7).
    recoveredBlock331Value8
].
            recoveredPC := 398.
        ].
        recoveredStep = 398 ifTrue: [
            (recoveredStack1) optional: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 400.
        ].
        recoveredStep = 400 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            recoveredStack2 := 'PromotedToWarningMessageTypes'.
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            recoveredStack3 := [:recoveredBlock405Arg1 | 
    | recoveredBlock405Local1 recoveredBlock405Value0 recoveredBlock405Value1 recoveredBlock405Value2 recoveredBlock405Value3 recoveredBlock405Value4 recoveredBlock405Value5 recoveredBlock405Value6 recoveredBlock405Value7 recoveredBlock405Value8 |
    recoveredBlock405Value0 := Set.
    recoveredBlock405Value1 := (recoveredBlock405Value0) new.
    recoveredBlock405Local1 := recoveredBlock405Value1.
    recoveredBlock405Value2 := recoveredBlock405Arg1.
    recoveredBlock405Value3 := [:recoveredBlock405Block423Arg1 | 
    | recoveredBlock405Block423Value0 recoveredBlock405Block423Value1 recoveredBlock405Block423Value2 recoveredBlock405Block423Value3 |
    recoveredBlock405Block423Value0 := recoveredBlock405Local1.
    recoveredBlock405Block423Value1 := recoveredBlock405Block423Arg1.
    recoveredBlock405Block423Value2 := (recoveredBlock405Block423Value1) getString: ('label').
    recoveredBlock405Block423Value3 := (recoveredBlock405Block423Value0) add: (recoveredBlock405Block423Value2).
    recoveredBlock405Block423Value3
].
    (recoveredBlock405Value2) multiple: ('MessageType') do: (recoveredBlock405Value3).
    recoveredBlock405Value4 := recoveredBlock405Arg1.
    recoveredBlock405Value5 := handler.
    (recoveredBlock405Value4) doneIfNot: (recoveredBlock405Value5).
    recoveredBlock405Value6 := recoveredBlock405Local1.
    recoveredBlock405Value7 := [:recoveredBlock405Block453Arg1 | 
    | recoveredBlock405Block453Value0 recoveredBlock405Block453Value1 recoveredBlock405Block453Value2 |
    recoveredBlock405Block453Value0 := recoveredLocal1.
    recoveredBlock405Block453Value1 := recoveredBlock405Block453Arg1.
    recoveredBlock405Block453Value2 := (recoveredBlock405Block453Value0) at: (recoveredBlock405Block453Value1) put: ('warning').
    recoveredBlock405Block453Value2
].
    recoveredBlock405Value8 := (recoveredBlock405Value6) do: (recoveredBlock405Value7).
    recoveredBlock405Value8
].
            recoveredPC := 472.
        ].
        recoveredStep = 472 ifTrue: [
            (recoveredStack1) optional: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 474.
        ].
        recoveredStep = 474 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 477.
        ].
        recoveredStep = 477 ifTrue: [
            recoveredStack2 := 'TransferOptions'.
            recoveredPC := 479.
        ].
        recoveredStep = 479 ifTrue: [
            recoveredStack3 := [:recoveredBlock479Arg1 | 
    | recoveredBlock479Local1 recoveredBlock479Value0 recoveredBlock479Value1 recoveredBlock479Value2 recoveredBlock479Value3 recoveredBlock479Value4 recoveredBlock479Value5 recoveredBlock479Value6 recoveredBlock479Value7 recoveredBlock479Value8 |
    recoveredBlock479Value0 := LookupTable.
    recoveredBlock479Value1 := (recoveredBlock479Value0) new.
    recoveredBlock479Local1 := recoveredBlock479Value1.
    recoveredBlock479Value2 := recoveredBlock479Arg1.
    recoveredBlock479Value3 := [:recoveredBlock479Block497Arg1 | 
    | recoveredBlock479Block497Value0 recoveredBlock479Block497Value1 recoveredBlock479Block497Value2 recoveredBlock479Block497Value3 recoveredBlock479Block497Value4 recoveredBlock479Block497Value5 |
    recoveredBlock479Block497Value0 := recoveredBlock479Local1.
    recoveredBlock479Block497Value1 := recoveredBlock479Block497Arg1.
    recoveredBlock479Block497Value2 := (recoveredBlock479Block497Value1) getNMToken: ('name').
    recoveredBlock479Block497Value3 := recoveredBlock479Block497Arg1.
    recoveredBlock479Block497Value4 := (self) readTypedObject: (recoveredBlock479Block497Value3).
    recoveredBlock479Block497Value5 := (recoveredBlock479Block497Value0) at: (recoveredBlock479Block497Value2) put: (recoveredBlock479Block497Value4).
    recoveredBlock479Block497Value5
].
    (recoveredBlock479Value2) multiple: ('Option') do: (recoveredBlock479Value3).
    recoveredBlock479Value4 := protoClass.
    recoveredBlock479Value5 := (recoveredBlock479Value4) thing.
    recoveredBlock479Value6 := (recoveredBlock479Value5) specification.
    recoveredBlock479Value7 := recoveredBlock479Local1.
    recoveredBlock479Value8 := (recoveredBlock479Value6) expPrjTransInfo: (recoveredBlock479Value7).
    recoveredBlock479Value8
].
            recoveredPC := 533.
        ].
        recoveredStep = 533 ifTrue: [
            (recoveredStack1) optional: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 535.
        ].
        recoveredStep = 535 ifTrue: [
            recoveredStack1 := protoClass.
            recoveredPC := 537.
        ].
        recoveredStep = 537 ifTrue: [
            recoveredStack1 := (recoveredStack1) thing.
            recoveredPC := 539.
        ].
        recoveredStep = 539 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 542.
        ].
        recoveredStep = 542 ifTrue: [
            (recoveredStack1) xmlPromotedCodeGenMessages: (recoveredStack2).
            recoveredPC := 547.
        ].
        recoveredStep = 547 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 550.
        ].
        recoveredStep = 550 ifTrue: [
            recoveredStack2 := 'Files'.
            recoveredPC := 554.
        ].
        recoveredStep = 554 ifTrue: [
            recoveredStack3 := [:recoveredBlock554Arg1 | 
    | recoveredBlock554Local1 recoveredBlock554Value0 recoveredBlock554Value1 recoveredBlock554Value2 recoveredBlock554Value3 recoveredBlock554Value4 recoveredBlock554Value5 recoveredBlock554Value6 recoveredBlock554Value7 |
    recoveredBlock554Value0 := LookupTable.
    recoveredBlock554Value1 := (recoveredBlock554Value0) new.
    recoveredBlock554Local1 := recoveredBlock554Value1.
    recoveredBlock554Value2 := recoveredBlock554Arg1.
    recoveredBlock554Value3 := [:recoveredBlock554Block572Arg1 | 
    | recoveredBlock554Block572Local1 recoveredBlock554Block572Value0 recoveredBlock554Block572Value1 recoveredBlock554Block572Value2 recoveredBlock554Block572Value3 recoveredBlock554Block572Value4 recoveredBlock554Block572Value5 recoveredBlock554Block572Value6 recoveredBlock554Block572Value7 recoveredBlock554Block572Value8 recoveredBlock554Block572Value9 recoveredBlock554Block572Value10 |
    recoveredBlock554Block572Value0 := OrderedCollection.
    recoveredBlock554Block572Value1 := (recoveredBlock554Block572Value0) new.
    recoveredBlock554Block572Local1 := recoveredBlock554Block572Value1.
    recoveredBlock554Block572Value2 := recoveredBlock554Block572Arg1.
    recoveredBlock554Block572Value3 := [:recoveredBlock554Block572Block592Arg1 | 
    | recoveredBlock554Block572Block592Local1 recoveredBlock554Block572Block592Local2 recoveredBlock554Block572Block592Local3 recoveredBlock554Block572Block592Local4 recoveredBlock554Block572Block592Stack0 recoveredBlock554Block572Block592Stack1 recoveredBlock554Block572Block592Stack2 recoveredBlock554Block572Block592Stack3 recoveredBlock554Block572Block592Stack4 recoveredBlock554Block572Block592Stack5 recoveredBlock554Block572Block592Stack6 recoveredBlock554Block572Block592PC recoveredBlock554Block572Block592Step recoveredBlock554Block572Block592Done recoveredBlock554Block572Block592Result |
    recoveredBlock554Block572Block592Stack0 := self.
    recoveredBlock554Block572Block592PC := 598.
    recoveredBlock554Block572Block592Done := false.
    [recoveredBlock554Block572Block592Done not] whileTrue: [
        recoveredBlock554Block572Block592Step := recoveredBlock554Block572Block592PC.
        recoveredBlock554Block572Block592Step = 598 ifTrue: [
            recoveredBlock554Block572Block592Stack1 := SGFileString.
            recoveredBlock554Block572Block592PC := 602.
        ].
        recoveredBlock554Block572Block592Step = 602 ifTrue: [
            recoveredBlock554Block572Block592Stack1 := (recoveredBlock554Block572Block592Stack1) new.
            recoveredBlock554Block572Block592PC := 603.
        ].
        recoveredBlock554Block572Block592Step = 603 ifTrue: [
            recoveredBlock554Block572Block592Local3 := recoveredBlock554Block572Block592Stack1.
            recoveredBlock554Block572Block592PC := 606.
        ].
        recoveredBlock554Block572Block592Step = 606 ifTrue: [
            recoveredBlock554Block572Block592Stack1 := recoveredBlock554Block572Block592Local3.
            recoveredBlock554Block572Block592PC := 609.
        ].
        recoveredBlock554Block572Block592Step = 609 ifTrue: [
            recoveredBlock554Block572Block592Stack2 := protoClass.
            recoveredBlock554Block572Block592PC := 611.
        ].
        recoveredBlock554Block572Block592Step = 611 ifTrue: [
            recoveredBlock554Block572Block592Stack2 := (recoveredBlock554Block572Block592Stack2) thing.
            recoveredBlock554Block572Block592PC := 613.
        ].
        recoveredBlock554Block572Block592Step = 613 ifTrue: [
            recoveredBlock554Block572Block592Stack2 := (recoveredBlock554Block572Block592Stack2) specification.
            recoveredBlock554Block572Block592PC := 615.
        ].
        recoveredBlock554Block572Block592Step = 615 ifTrue: [
            (recoveredBlock554Block572Block592Stack1) owner: (recoveredBlock554Block572Block592Stack2).
            recoveredBlock554Block572Block592PC := 619.
        ].
        recoveredBlock554Block572Block592Step = 619 ifTrue: [
            recoveredBlock554Block572Block592Stack1 := recoveredBlock554Block572Block592Local3.
            recoveredBlock554Block572Block592PC := 622.
        ].
        recoveredBlock554Block572Block592Step = 622 ifTrue: [
            recoveredBlock554Block572Block592Stack2 := recoveredBlock554Block572Block592Arg1.
            recoveredBlock554Block572Block592PC := 625.
        ].
        recoveredBlock554Block572Block592Step = 625 ifTrue: [
            recoveredBlock554Block572Block592Stack3 := 'Name'.
            recoveredBlock554Block572Block592PC := 628.
        ].
        recoveredBlock554Block572Block592Step = 628 ifTrue: [
            recoveredBlock554Block572Block592Stack4 := [:block28124930Arg1 | 
    | block28124930Value0 block28124930Value1 |
    block28124930Value0 := block28124930Arg1.
    block28124930Value1 := (block28124930Value0) cData.
    block28124930Value1
].
            recoveredBlock554Block572Block592PC := 632.
        ].
        recoveredBlock554Block572Block592Step = 632 ifTrue: [
            recoveredBlock554Block572Block592PC := 642.
        ].
        recoveredBlock554Block572Block592Step = 642 ifTrue: [
            recoveredBlock554Block572Block592Stack5 := handler.
            recoveredBlock554Block572Block592PC := 644.
        ].
        recoveredBlock554Block572Block592Step = 644 ifTrue: [
            recoveredBlock554Block572Block592Stack2 := (recoveredBlock554Block572Block592Stack2) required: (recoveredBlock554Block572Block592Stack3) do: (recoveredBlock554Block572Block592Stack4) ifNot: (recoveredBlock554Block572Block592Stack5).
            recoveredBlock554Block572Block592PC := 647.
        ].
        recoveredBlock554Block572Block592Step = 647 ifTrue: [
            (recoveredBlock554Block572Block592Stack1) name: (recoveredBlock554Block572Block592Stack2).
            recoveredBlock554Block572Block592PC := 651.
        ].
        recoveredBlock554Block572Block592Step = 651 ifTrue: [
            recoveredBlock554Block572Block592Stack1 := recoveredBlock554Block572Block592Arg1.
            recoveredBlock554Block572Block592PC := 654.
        ].
        recoveredBlock554Block572Block592Step = 654 ifTrue: [
            recoveredBlock554Block572Block592Stack2 := 'Location'.
            recoveredBlock554Block572Block592PC := 658.
        ].
        recoveredBlock554Block572Block592Step = 658 ifTrue: [
            recoveredBlock554Block572Block592Stack3 := [:block28124954Arg1 | 
    | block28124954Value0 block28124954Value1 |
    block28124954Value0 := block28124954Arg1.
    block28124954Value1 := (block28124954Value0) cData.
    block28124954Value1
].
            recoveredBlock554Block572Block592PC := 662.
        ].
        recoveredBlock554Block572Block592Step = 662 ifTrue: [
            recoveredBlock554Block572Block592PC := 672.
        ].
        recoveredBlock554Block572Block592Step = 672 ifTrue: [
            recoveredBlock554Block572Block592Stack4 := handler.
            recoveredBlock554Block572Block592PC := 674.
        ].
        recoveredBlock554Block572Block592Step = 674 ifTrue: [
            recoveredBlock554Block572Block592Stack1 := (recoveredBlock554Block572Block592Stack1) required: (recoveredBlock554Block572Block592Stack2) do: (recoveredBlock554Block572Block592Stack3) ifNot: (recoveredBlock554Block572Block592Stack4).
            recoveredBlock554Block572Block592PC := 677.
        ].
        recoveredBlock554Block572Block592Step = 677 ifTrue: [
            recoveredBlock554Block572Block592Stack2 := $/.
            recoveredBlock554Block572Block592PC := 680.
        ].
        recoveredBlock554Block572Block592Step = 680 ifTrue: [
            recoveredBlock554Block572Block592Stack3 := $\.
            recoveredBlock554Block572Block592PC := 684.
        ].
        recoveredBlock554Block572Block592Step = 684 ifTrue: [
            recoveredBlock554Block572Block592Stack1 := (recoveredBlock554Block572Block592Stack1) replaceCharacter: (recoveredBlock554Block572Block592Stack2) with: (recoveredBlock554Block572Block592Stack3).
            recoveredBlock554Block572Block592PC := 689.
        ].
        recoveredBlock554Block572Block592Step = 689 ifTrue: [
            recoveredBlock554Block572Block592Local2 := recoveredBlock554Block572Block592Stack1.
            recoveredBlock554Block572Block592PC := 692.
        ].
        recoveredBlock554Block572Block592Step = 692 ifTrue: [
            recoveredBlock554Block572Block592Stack0 := (recoveredBlock554Block572Block592Stack0) dirOfMain.
            recoveredBlock554Block572Block592PC := 697.
        ].
        recoveredBlock554Block572Block592Step = 697 ifTrue: [
            recoveredBlock554Block572Block592Stack1 := '\'.
            recoveredBlock554Block572Block592PC := 700.
        ].
        recoveredBlock554Block572Block592Step = 700 ifTrue: [
            recoveredBlock554Block572Block592Stack0 := (recoveredBlock554Block572Block592Stack0) , (recoveredBlock554Block572Block592Stack1).
            recoveredBlock554Block572Block592PC := 705.
        ].
        recoveredBlock554Block572Block592Step = 705 ifTrue: [
            recoveredBlock554Block572Block592Stack1 := recoveredBlock554Block572Block592Local2.
            recoveredBlock554Block572Block592PC := 708.
        ].
        recoveredBlock554Block572Block592Step = 708 ifTrue: [
            recoveredBlock554Block572Block592Stack0 := (recoveredBlock554Block572Block592Stack0) , (recoveredBlock554Block572Block592Stack1).
            recoveredBlock554Block572Block592PC := 713.
        ].
        recoveredBlock554Block572Block592Step = 713 ifTrue: [
            recoveredBlock554Block572Block592Local2 := recoveredBlock554Block572Block592Stack0.
            recoveredBlock554Block572Block592PC := 716.
        ].
        recoveredBlock554Block572Block592Step = 716 ifTrue: [
            recoveredBlock554Block572Block592Stack0 := LookupTable.
            recoveredBlock554Block572Block592PC := 718.
        ].
        recoveredBlock554Block572Block592Step = 718 ifTrue: [
            recoveredBlock554Block572Block592Stack0 := (recoveredBlock554Block572Block592Stack0) new.
            recoveredBlock554Block572Block592PC := 719.
        ].
        recoveredBlock554Block572Block592Step = 719 ifTrue: [
            recoveredBlock554Block572Block592Local4 := recoveredBlock554Block572Block592Stack0.
            recoveredBlock554Block572Block592PC := 722.
        ].
        recoveredBlock554Block572Block592Step = 722 ifTrue: [
            recoveredBlock554Block572Block592Stack0 := recoveredBlock554Block572Block592Local3.
            recoveredBlock554Block572Block592PC := 725.
        ].
        recoveredBlock554Block572Block592Step = 725 ifTrue: [
            recoveredBlock554Block572Block592Stack1 := recoveredBlock554Block572Block592Local4.
            recoveredBlock554Block572Block592PC := 728.
        ].
        recoveredBlock554Block572Block592Step = 728 ifTrue: [
            (recoveredBlock554Block572Block592Stack0) xmlFileInfo: (recoveredBlock554Block572Block592Stack1).
            recoveredBlock554Block572Block592PC := 733.
        ].
        recoveredBlock554Block572Block592Step = 733 ifTrue: [
            recoveredBlock554Block572Block592Stack0 := recoveredBlock554Block572Block592Arg1.
            recoveredBlock554Block572Block592PC := 736.
        ].
        recoveredBlock554Block572Block592Step = 736 ifTrue: [
            recoveredBlock554Block572Block592Stack1 := 'AbstractLocation'.
            recoveredBlock554Block572Block592PC := 740.
        ].
        recoveredBlock554Block572Block592Step = 740 ifTrue: [
            recoveredBlock554Block572Block592Stack2 := [:recoveredBlock554Block572Block592Block740Arg1 | 
    | recoveredBlock554Block572Block592Block740Value0 recoveredBlock554Block572Block592Block740Value1 recoveredBlock554Block572Block592Block740Value2 recoveredBlock554Block572Block592Block740Value3 |
    recoveredBlock554Block572Block592Block740Value0 := recoveredBlock554Block572Block592Local4.
    recoveredBlock554Block572Block592Block740Value1 := recoveredBlock554Block572Block592Block740Arg1.
    recoveredBlock554Block572Block592Block740Value2 := (recoveredBlock554Block572Block592Block740Value1) cData.
    recoveredBlock554Block572Block592Block740Value3 := (recoveredBlock554Block572Block592Block740Value0) at: ('abstractFilePath') put: (recoveredBlock554Block572Block592Block740Value2).
    recoveredBlock554Block572Block592Block740Value3
].
            recoveredBlock554Block572Block592PC := 760.
        ].
        recoveredBlock554Block572Block592Step = 760 ifTrue: [
            (recoveredBlock554Block572Block592Stack0) optional: (recoveredBlock554Block572Block592Stack1) do: (recoveredBlock554Block572Block592Stack2).
            recoveredBlock554Block572Block592PC := 762.
        ].
        recoveredBlock554Block572Block592Step = 762 ifTrue: [
            recoveredBlock554Block572Block592Stack0 := recoveredBlock554Block572Block592Arg1.
            recoveredBlock554Block572Block592PC := 765.
        ].
        recoveredBlock554Block572Block592Step = 765 ifTrue: [
            recoveredBlock554Block572Block592Stack1 := 'OriginalLocation'.
            recoveredBlock554Block572Block592PC := 768.
        ].
        recoveredBlock554Block572Block592Step = 768 ifTrue: [
            recoveredBlock554Block572Block592Stack2 := [:recoveredBlock554Block572Block592Block768Arg1 | 
    | recoveredBlock554Block572Block592Block768Value0 recoveredBlock554Block572Block592Block768Value1 recoveredBlock554Block572Block592Block768Value2 recoveredBlock554Block572Block592Block768Value3 |
    recoveredBlock554Block572Block592Block768Value0 := recoveredBlock554Block572Block592Local4.
    recoveredBlock554Block572Block592Block768Value1 := recoveredBlock554Block572Block592Block768Arg1.
    recoveredBlock554Block572Block592Block768Value2 := (recoveredBlock554Block572Block592Block768Value1) cData.
    recoveredBlock554Block572Block592Block768Value3 := (recoveredBlock554Block572Block592Block768Value0) at: ('originalFilePath') put: (recoveredBlock554Block572Block592Block768Value2).
    recoveredBlock554Block572Block592Block768Value3
].
            recoveredBlock554Block572Block592PC := 788.
        ].
        recoveredBlock554Block572Block592Step = 788 ifTrue: [
            (recoveredBlock554Block572Block592Stack0) optional: (recoveredBlock554Block572Block592Stack1) do: (recoveredBlock554Block572Block592Stack2).
            recoveredBlock554Block572Block592PC := 790.
        ].
        recoveredBlock554Block572Block592Step = 790 ifTrue: [
            recoveredBlock554Block572Block592Stack0 := recoveredBlock554Block572Block592Arg1.
            recoveredBlock554Block572Block592PC := 793.
        ].
        recoveredBlock554Block572Block592Step = 793 ifTrue: [
            recoveredBlock554Block572Block592Stack1 := 'timeStamp'.
            recoveredBlock554Block572Block592PC := 796.
        ].
        recoveredBlock554Block572Block592Step = 796 ifTrue: [
            recoveredBlock554Block572Block592Stack2 := nil.
            recoveredBlock554Block572Block592PC := 797.
        ].
        recoveredBlock554Block572Block592Step = 797 ifTrue: [
            recoveredBlock554Block572Block592Stack0 := (recoveredBlock554Block572Block592Stack0) getDateTime: (recoveredBlock554Block572Block592Stack1) default: (recoveredBlock554Block572Block592Stack2).
            recoveredBlock554Block572Block592PC := 801.
        ].
        recoveredBlock554Block572Block592Step = 801 ifTrue: [
            recoveredBlock554Block572Block592Stack1 := [:recoveredBlock554Block572Block592Block801Arg1 | 
    | recoveredBlock554Block572Block592Block801Value0 recoveredBlock554Block572Block592Block801Value1 recoveredBlock554Block572Block592Block801Value2 recoveredBlock554Block572Block592Block801Value3 recoveredBlock554Block572Block592Block801Value4 recoveredBlock554Block572Block592Block801Value5 recoveredBlock554Block572Block592Block801Value6 recoveredBlock554Block572Block592Block801Value7 recoveredBlock554Block572Block592Block801Value8 recoveredBlock554Block572Block592Block801Value9 recoveredBlock554Block572Block592Block801Value10 recoveredBlock554Block572Block592Block801Value11 |
    recoveredBlock554Block572Block592Block801Value0 := recoveredBlock554Block572Block592Local4.
    recoveredBlock554Block572Block592Block801Value1 := Array.
    recoveredBlock554Block572Block592Block801Value2 := Date.
    recoveredBlock554Block572Block592Block801Value3 := recoveredBlock554Block572Block592Block801Arg1.
    recoveredBlock554Block572Block592Block801Value4 := (recoveredBlock554Block572Block592Block801Value3) // (86400).
    recoveredBlock554Block572Block592Block801Value5 := (recoveredBlock554Block572Block592Block801Value2) fromDays: (recoveredBlock554Block572Block592Block801Value4).
    recoveredBlock554Block572Block592Block801Value6 := Time.
    recoveredBlock554Block572Block592Block801Value7 := recoveredBlock554Block572Block592Block801Arg1.
    recoveredBlock554Block572Block592Block801Value8 := (recoveredBlock554Block572Block592Block801Value7) \\ (86400).
    recoveredBlock554Block572Block592Block801Value9 := (recoveredBlock554Block572Block592Block801Value6) fromSeconds: (recoveredBlock554Block572Block592Block801Value8).
    recoveredBlock554Block572Block592Block801Value10 := (recoveredBlock554Block572Block592Block801Value1) with: (recoveredBlock554Block572Block592Block801Value5) with: (recoveredBlock554Block572Block592Block801Value9).
    recoveredBlock554Block572Block592Block801Value11 := (recoveredBlock554Block572Block592Block801Value0) at: ('timeStamp') put: (recoveredBlock554Block572Block592Block801Value10).
    recoveredBlock554Block572Block592Block801Value11
].
            recoveredBlock554Block572Block592PC := 850.
        ].
        recoveredBlock554Block572Block592Step = 850 ifTrue: [
            (recoveredBlock554Block572Block592Stack0) ifNotNil: (recoveredBlock554Block572Block592Stack1).
            recoveredBlock554Block572Block592PC := 855.
        ].
        recoveredBlock554Block572Block592Step = 855 ifTrue: [
            recoveredBlock554Block572Block592Stack0 := self.
            recoveredBlock554Block572Block592PC := 856.
        ].
        recoveredBlock554Block572Block592Step = 856 ifTrue: [
            recoveredBlock554Block572Block592Stack1 := recoveredBlock554Block572Block592Local3.
            recoveredBlock554Block572Block592PC := 859.
        ].
        recoveredBlock554Block572Block592Step = 859 ifTrue: [
            recoveredBlock554Block572Block592Stack2 := recoveredBlock554Block572Block592Local2.
            recoveredBlock554Block572Block592PC := 862.
        ].
        recoveredBlock554Block572Block592Step = 862 ifTrue: [
            recoveredBlock554Block572Block592Stack3 := recoveredBlock554Block572Local1.
            recoveredBlock554Block572Block592PC := 865.
        ].
        recoveredBlock554Block572Block592Step = 865 ifTrue: [
            recoveredBlock554Block572Block592Stack0 := (recoveredBlock554Block572Block592Stack0) handleFileContent: (recoveredBlock554Block572Block592Stack1) location: (recoveredBlock554Block572Block592Stack2) pack: (recoveredBlock554Block572Block592Stack3).
            recoveredBlock554Block572Block592PC := 869.
        ].
        recoveredBlock554Block572Block592Step = 869 ifTrue: [
            recoveredBlock554Block572Block592Result := recoveredBlock554Block572Block592Stack0.
            recoveredBlock554Block572Block592Done := true.
        ].
    ].
    recoveredBlock554Block572Block592Result
].
    (recoveredBlock554Block572Value2) multiple: ('File') do: (recoveredBlock554Block572Value3).
    recoveredBlock554Block572Value4 := recoveredBlock554Block572Arg1.
    recoveredBlock554Block572Value5 := handler.
    (recoveredBlock554Block572Value4) doneIfNot: (recoveredBlock554Block572Value5).
    recoveredBlock554Block572Value6 := recoveredBlock554Local1.
    recoveredBlock554Block572Value7 := recoveredBlock554Block572Arg1.
    recoveredBlock554Block572Value8 := (recoveredBlock554Block572Value7) getNMToken: ('key').
    recoveredBlock554Block572Value9 := recoveredBlock554Block572Local1.
    recoveredBlock554Block572Value10 := (recoveredBlock554Block572Value6) at: (recoveredBlock554Block572Value8) put: (recoveredBlock554Block572Value9).
    recoveredBlock554Block572Value10
].
    (recoveredBlock554Value2) multiple: ('Target') do: (recoveredBlock554Value3).
    recoveredBlock554Value4 := recoveredBlock554Arg1.
    recoveredBlock554Value5 := handler.
    (recoveredBlock554Value4) doneIfNot: (recoveredBlock554Value5).
    recoveredBlock554Value6 := recoveredBlock554Local1.
    recoveredBlock554Value7 := (self) handleFiles: (recoveredBlock554Value6).
    recoveredBlock554Value7
].
            recoveredPC := 914.
        ].
        recoveredStep = 914 ifTrue: [
            (recoveredStack1) optional: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 916.
        ].
        recoveredStep = 916 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 919.
        ].
        recoveredStep = 919 ifTrue: [
            recoveredStack2 := 'Signature'.
            recoveredPC := 922.
        ].
        recoveredStep = 922 ifTrue: [
            recoveredStack3 := [:block28124978Arg1 | 
    nil
].
            recoveredPC := 926.
        ].
        recoveredStep = 926 ifTrue: [
            recoveredPC := 932.
        ].
        recoveredStep = 932 ifTrue: [
            (recoveredStack1) optional: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 934.
        ].
        recoveredStep = 934 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 937.
        ].
        recoveredStep = 937 ifTrue: [
            recoveredStack2 := handler.
            recoveredPC := 939.
        ].
        recoveredStep = 939 ifTrue: [
            (recoveredStack1) doneIfNot: (recoveredStack2).
            recoveredPC := 941.
        ].
        recoveredStep = 941 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

