"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20003958; bytecode file offset 0x90206c"
!ASDXMLImportStepProject methodsFor: 'recovered'!
handleSGDBObject: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20005808; bytecode file offset 0x902744"
!ASDXMLImportStepProject methodsFor: 'recovered'!
handleSGDBObject: recoveredArg1 oid: recoveredArg2
    ^self
! !

"ASDBase.ic method 0x20092f74; bytecode file offset 0x98f8a4"
!ASDXMLImportStepProject methodsFor: 'recovered'!
handleOSLogic: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := protoClass.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) osLogic: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20092fd4; bytecode file offset 0x98f8a4"
!ASDXMLImportStepProject methodsFor: 'recovered'!
handleFiles: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := protoClass.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) files: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2015c568; bytecode file offset 0xa58e28"
!ASDXMLImportStepProject methodsFor: 'recovered'!
makeExperimentImportStep
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := ASDXMLImportStepExperiment.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := controller.
    recoveredValue3 := sgClass.
    recoveredValue4 := protoClass.
    recoveredValue5 := importPath.
    recoveredValue6 := extension.
    recoveredValue7 := (recoveredValue1) initOn: (recoveredValue2) component: (recoveredValue3) item: (recoveredValue4) importPath: (recoveredValue5) ext: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x20320214; bytecode file offset 0xc1cb08"
!ASDXMLImportStepProject methodsFor: 'recovered'!
handleFileContent: recoveredArg1 location: recoveredArg2 pack: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Die'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_96418'.
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := Util.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) checkFileName: (recoveredStack3).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) readFile: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := controller.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := ASDXMLImportIssueUnreadableFile.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := protoClass.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) initOn: (recoveredStack3) location: (recoveredStack4).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) addIssue: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredPC := 57.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) fileInformations.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := 'size'.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

