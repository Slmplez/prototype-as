"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20015908; bytecode file offset 0x92209c"
!EtasExpProjectTransferActivexCalls class methodsFor: 'recovered'!
eTargetDevicePaths
    ^#(#('Link System' 'E-target') #('ES910 SimulationSystem' 'ES910 Simulation Controller') #('ES1130 SimulationSystem' 'ES1130 Simulation Controller') #('ES1135 SimulationSystem' 'ES1135 Simulation Controller'))
! !

"ASDBase.ic method 0x2001bcc8; bytecode file offset 0x92209c"
!EtasExpProjectTransferActivexCalls class methodsFor: 'recovered'!
minIncaVersion
    ^'4.0.4'
! !

"ASDBase.ic method 0x20020084; bytecode file offset 0x92209c"
!EtasExpProjectTransferActivexCalls class methodsFor: 'recovered'!
minETargetVersion
    ^'4.0.1'
! !

"ASDBase.ic method 0x200273bc; bytecode file offset 0x923d40"
!EtasExpProjectTransferActivexCalls class methodsFor: 'recovered'!
getCurrentIncaDatabase
    | recoveredValue0 |
    recoveredValue0 := (self) getCurrentIncaDatabasePrompt: (true).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200cfffc; bytecode file offset 0x9cc948"
!EtasExpProjectTransferActivexCalls class methodsFor: 'recovered'!
tool
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ('Rnz') == ('EHI_82264').
    recoveredValue1 := Tool.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200e2344; bytecode file offset 0x9dec60"
!EtasExpProjectTransferActivexCalls class methodsFor: 'recovered'!
isCorrectVersion
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) isCorrectIncaVersion.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCorrectETargetVersion.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x200f1ec8; bytecode file offset 0x9ee788"
!EtasExpProjectTransferActivexCalls class methodsFor: 'recovered'!
resetCachedReferences
    | recoveredValue0 |
    recoveredValue0 := ('Rnz') == ('EHI_82264').
    (self) tool: (nil).
    ^self
! !

"ASDBase.ic method 0x200fc048; bytecode file offset 0x9f891c"
!EtasExpProjectTransferActivexCalls class methodsFor: 'recovered'!
tool: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('Rnz') == ('EHI_82264').
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredValue1.
    Tool := recoveredValue2.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2010a8d0; bytecode file offset 0xa071a4"
!EtasExpProjectTransferActivexCalls class methodsFor: 'recovered'!
accessTool
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) tool.
    recoveredValue1 := [
    | recoveredBlock5Value0 |
    recoveredBlock5Value0 := (self) openInca.
    recoveredBlock5Value0
].
    recoveredValue2 := (recoveredValue0) ifNil: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2019077c; bytecode file offset 0xa8d044"
!EtasExpProjectTransferActivexCalls class methodsFor: 'recovered'!
releaseTool
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) tool.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    (self) disconnectFromTool.
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    (recoveredBlock5Value0) releaseObject.
    recoveredBlock5Value1 := (self) tool: (nil).
    recoveredBlock5Value1
].
    recoveredValue2 := (recoveredValue0) ifNotNil: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x201907b0; bytecode file offset 0xa8d078"
!EtasExpProjectTransferActivexCalls class methodsFor: 'recovered'!
closeInca
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) tool.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredBlock5Value0.
    (recoveredBlock5Value1) closeTool.
    (recoveredBlock5Value0) releaseObject.
    recoveredBlock5Value2 := (self) tool: (nil).
    recoveredBlock5Value2
].
    recoveredValue2 := (recoveredValue0) ifNotNil: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x202137ec; bytecode file offset 0xb100b8"
!EtasExpProjectTransferActivexCalls class methodsFor: 'recovered'!
getSubsystemDescriptionsOf: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) getAllSystemDescriptions.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) getData.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := EtasExpProjectTransferError.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := 'Failed to retrieve installed systems descriptions.'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) errorMessagePrompt: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) getChildDescriptionsOf: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202218e8; bytecode file offset 0xb1e1b4"
!EtasExpProjectTransferActivexCalls class methodsFor: 'recovered'!
findSubsystemDescriptions: recoveredArg1 withArgs: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) getAllSystemDescriptions.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) getData.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := EtasExpProjectTransferError.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := 'Failed to retrieve installed systems descriptions.'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) errorMessagePrompt: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) findChildDescriptions: (recoveredStack1) withVariantArgs: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202955dc; bytecode file offset 0xb91eb0"
!EtasExpProjectTransferActivexCalls class methodsFor: 'recovered'!
getCurrentIncaDatabasePrompt: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) accessTool.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) getCurrentDataBase.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := EtasExpProjectTransferError.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := 'Failed to retrieve current INCA database. Please make sure INCA is properly installed.'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) errorMessagePrompt: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := ASDIncaApiWrapperIncaDatabase.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) automationObject: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202cd2e8; bytecode file offset 0xbc9bc0"
!EtasExpProjectTransferActivexCalls class methodsFor: 'recovered'!
getAllSystemAndDeviceDescriptions
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) accessTool.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) getAllSystemDescriptions.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) getData.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := EtasExpProjectTransferError.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := 'Failed to retrieve installed systems descriptions.
Please make sure ''E-Target for INCA'' V4.0.1 or higher is installed.'.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) errorMessagePrompt: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) getChildDescriptionsOf: (recoveredStack1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202fc750; bytecode file offset 0xbf9028"
!EtasExpProjectTransferActivexCalls class methodsFor: 'recovered'!
disconnectFromTool
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) tool.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Local1 recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 13.
        ].
        recoveredBlock5Step = 13 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) automationObject.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            (recoveredBlock5Stack1 ~~ nil) ifTrue: [recoveredBlock5PC := 20] ifFalse: [recoveredBlock5PC := 18].
        ].
        recoveredBlock5Step = 18 ifTrue: [
            recoveredBlock5Stack1 := nil.
            recoveredBlock5PC := 19.
        ].
        recoveredBlock5Step = 19 ifTrue: [
            ^recoveredBlock5Stack1
        ].
        recoveredBlock5Step = 20 ifTrue: [
            recoveredBlock5Stack1 := 'Kra'.
            recoveredBlock5PC := 22.
        ].
        recoveredBlock5Step = 22 ifTrue: [
            recoveredBlock5Stack2 := 'Call_74149'.
            recoveredBlock5PC := 24.
        ].
        recoveredBlock5Step = 24 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) == (recoveredBlock5Stack2).
            recoveredBlock5PC := 25.
        ].
        recoveredBlock5Step = 25 ifTrue: [
            recoveredBlock5PC := 26.
        ].
        recoveredBlock5Step = 26 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 27.
        ].
        recoveredBlock5Step = 27 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) disconnectFromTool.
            recoveredBlock5PC := 29.
        ].
        recoveredBlock5Step = 29 ifTrue: [
            recoveredBlock5Local1 := recoveredBlock5Stack1.
            recoveredBlock5PC := 30.
        ].
        recoveredBlock5Step = 30 ifTrue: [
            recoveredBlock5Stack1 := nil.
            recoveredBlock5PC := 31.
        ].
        recoveredBlock5Step = 31 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Local1.
            recoveredBlock5PC := 32.
        ].
        recoveredBlock5Step = 32 ifTrue: [
            (recoveredBlock5Stack2 == nil) ifTrue: [recoveredBlock5PC := 40] ifFalse: [recoveredBlock5PC := 36].
        ].
        recoveredBlock5Step = 36 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Local1.
            recoveredBlock5PC := 37.
        ].
        recoveredBlock5Step = 37 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 49] ifFalse: [recoveredBlock5PC := 40].
        ].
        recoveredBlock5Step = 40 ifTrue: [
            recoveredBlock5PC := 41.
        ].
        recoveredBlock5Step = 41 ifTrue: [
            recoveredBlock5Stack1 := EtasExpProjectTransferError.
            recoveredBlock5PC := 43.
        ].
        recoveredBlock5Step = 43 ifTrue: [
            recoveredBlock5Stack2 := 'Failed to disconnect from INCA.'.
            recoveredBlock5PC := 45.
        ].
        recoveredBlock5Step = 45 ifTrue: [
            (recoveredBlock5Stack1) errorMessagePrompt: (recoveredBlock5Stack2).
            recoveredBlock5PC := 47.
        ].
        recoveredBlock5Step = 47 ifTrue: [
            recoveredBlock5Stack1 := nil.
            recoveredBlock5PC := 48.
        ].
        recoveredBlock5Step = 48 ifTrue: [
            ^recoveredBlock5Stack1
        ].
        recoveredBlock5Step = 49 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20350964; bytecode file offset 0xc4d240"
!EtasExpProjectTransferActivexCalls class methodsFor: 'recovered'!
isCorrectETargetVersion
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) accessTool.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) getAllSystemDescriptions.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) getData.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := EtasExpProjectTransferError.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := 'Failed to retrieve installed systems descriptions.
Please make sure ''E-Target for INCA'' V4.0.1 or higher is installed.'.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) errorMessagePrompt: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) eTargetDevicePaths.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) findChildDescriptions: (recoveredStack1) withVariantArgs: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := EtasExpProjectTransferError.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := 'INCA doesn''t know any E-Target devices.
Please make sure ''E-Target for INCA'' V4.0.1 or higher is installed.'.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) errorMessagePrompt: (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20360888; bytecode file offset 0xc5d16c"
!EtasExpProjectTransferActivexCalls class methodsFor: 'recovered'!
openIncaDatabase: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) accessTool.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := EtasExpProjectTransferError.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := 'Cannot open INCA database with empty path name.'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) errorMessagePrompt: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) openDataBase: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 55] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := EtasExpProjectTransferError.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := 'Failed to open INCA database "'.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := '".'.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) errorMessagePrompt: (recoveredStack1).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := ASDIncaApiWrapperIncaDatabase.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack1) automationObject: (recoveredStack2).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2036f03c; bytecode file offset 0xc6b914"
!EtasExpProjectTransferActivexCalls class methodsFor: 'recovered'!
isIncaVersionV6OrHigher
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) accessTool.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := 'Kra'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := 'Call_69199'.
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
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) getCurrentVersion.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := 'vt'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) respondsTo: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) vt.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := 'V6.0.0'.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) asEtasVersion.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) asEtasVersion.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) >= (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2038f98c; bytecode file offset 0xc8c26c"
!EtasExpProjectTransferActivexCalls class methodsFor: 'recovered'!
performTransaction: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) accessTool.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := [
    | recoveredBlock5Block12Stack0 recoveredBlock5Block12Stack1 recoveredBlock5Block12Stack2 recoveredBlock5Block12Stack3 recoveredBlock5Block12PC recoveredBlock5Block12Step recoveredBlock5Block12Done recoveredBlock5Block12Result |
    recoveredBlock5Block12Stack0 := self.
    recoveredBlock5Block12PC := 18.
    recoveredBlock5Block12Done := false.
    [recoveredBlock5Block12Done not] whileTrue: [
        recoveredBlock5Block12Step := recoveredBlock5Block12PC.
        recoveredBlock5Block12Step = 18 ifTrue: [
            recoveredBlock5Block12Stack1 := recoveredBlock5Arg1.
            recoveredBlock5Block12PC := 21.
        ].
        recoveredBlock5Block12Step = 21 ifTrue: [
            recoveredBlock5Block12Stack1 := (recoveredBlock5Block12Stack1) lockTool.
            recoveredBlock5Block12PC := 22.
        ].
        recoveredBlock5Block12Step = 22 ifTrue: [
            (recoveredBlock5Block12Stack1) ifTrue: [recoveredBlock5Block12PC := 34] ifFalse: [recoveredBlock5Block12PC := 26].
        ].
        recoveredBlock5Block12Step = 26 ifTrue: [
            recoveredBlock5Block12Stack1 := EtasExpProjectTransferError.
            recoveredBlock5Block12PC := 28.
        ].
        recoveredBlock5Block12Step = 28 ifTrue: [
            recoveredBlock5Block12Stack2 := 'Failed to lock INCA.'.
            recoveredBlock5Block12PC := 30.
        ].
        recoveredBlock5Block12Step = 30 ifTrue: [
            (recoveredBlock5Block12Stack1) errorMessagePrompt: (recoveredBlock5Block12Stack2).
            recoveredBlock5Block12PC := 32.
        ].
        recoveredBlock5Block12Step = 32 ifTrue: [
            recoveredBlock5Block12Stack1 := nil.
            recoveredBlock5Block12PC := 33.
        ].
        recoveredBlock5Block12Step = 33 ifTrue: [
            ^recoveredBlock5Block12Stack1
        ].
        recoveredBlock5Block12Step = 34 ifTrue: [
            recoveredBlock5Block12Stack1 := recoveredArg1.
            recoveredBlock5Block12PC := 37.
        ].
        recoveredBlock5Block12Step = 37 ifTrue: [
            (recoveredBlock5Block12Stack1) value.
            recoveredBlock5Block12PC := 39.
        ].
        recoveredBlock5Block12Step = 39 ifTrue: [
            recoveredBlock5Block12Stack1 := nil.
            recoveredBlock5Block12PC := 40.
        ].
        recoveredBlock5Block12Step = 40 ifTrue: [
            recoveredBlock5Block12Stack2 := recoveredBlock5Arg1.
            recoveredBlock5Block12PC := 43.
        ].
        recoveredBlock5Block12Step = 43 ifTrue: [
            recoveredBlock5Block12Stack2 := (recoveredBlock5Block12Stack2) unlockTool.
            recoveredBlock5Block12PC := 45.
        ].
        recoveredBlock5Block12Step = 45 ifTrue: [
            (recoveredBlock5Block12Stack2) ifTrue: [recoveredBlock5Block12PC := 57] ifFalse: [recoveredBlock5Block12PC := 48].
        ].
        recoveredBlock5Block12Step = 48 ifTrue: [
            recoveredBlock5Block12PC := 49.
        ].
        recoveredBlock5Block12Step = 49 ifTrue: [
            recoveredBlock5Block12Stack1 := EtasExpProjectTransferError.
            recoveredBlock5Block12PC := 51.
        ].
        recoveredBlock5Block12Step = 51 ifTrue: [
            recoveredBlock5Block12Stack2 := 'Failed to unlock INCA.'.
            recoveredBlock5Block12PC := 53.
        ].
        recoveredBlock5Block12Step = 53 ifTrue: [
            (recoveredBlock5Block12Stack1) errorMessagePrompt: (recoveredBlock5Block12Stack2).
            recoveredBlock5Block12PC := 55.
        ].
        recoveredBlock5Block12Step = 55 ifTrue: [
            recoveredBlock5Block12Stack1 := nil.
            recoveredBlock5Block12PC := 56.
        ].
        recoveredBlock5Block12Step = 56 ifTrue: [
            ^recoveredBlock5Block12Stack1
        ].
        recoveredBlock5Block12Step = 57 ifTrue: [
            recoveredBlock5Block12Result := recoveredBlock5Block12Stack1.
            recoveredBlock5Block12Done := true.
        ].
    ].
    recoveredBlock5Block12Result
].
    recoveredBlock5Value1 := [
    | recoveredBlock5Block58Value0 |
    recoveredBlock5Block58Value0 := (self) releaseTool.
    recoveredBlock5Block58Value0
].
    recoveredBlock5Value2 := (recoveredBlock5Value0) ensure: (recoveredBlock5Value1).
    recoveredBlock5Value2
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x203c6214; bytecode file offset 0xcc2b20"
!EtasExpProjectTransferActivexCalls class methodsFor: 'recovered'!
openInca
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 |
    recoveredBlock4Value0 := (self) tool.
    recoveredBlock4Value1 := (recoveredBlock4Value0) isNil.
    recoveredBlock4Value1
].
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 'handle to INCA is already available!!'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) runtimeAssert: (recoveredStack1) additionalInfo: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := ASDIncaApiWrapperInca.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) createObject.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) automationObject.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := EtasExpProjectTransferError.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := 'Failed to open Inca. Please make sure INCA is properly installed.'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) errorMessagePrompt: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) tool: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := 'Rnz'.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := 'EHI_82264'.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := MainController.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) userInterface.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) registerApplication.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCorrectVersion.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 75] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := 'Kra'.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := 'Call_74149'.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack0) releaseTool.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack1) switchCatchWalkbackOn.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack1) switchLoggingOn.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203c8c28; bytecode file offset 0xcc5528"
!EtasExpProjectTransferActivexCalls class methodsFor: 'recovered'!
getAllIncaFolders
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := (self) getCurrentIncaDatabase.
    recoveredLocal3 := recoveredValue2.
    recoveredValue3 := recoveredLocal3.
    recoveredValue4 := (recoveredValue3) getAllIncaFolders.
    recoveredValue5 := (recoveredValue4) getData.
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := [:recoveredBlock26Arg1 | 
    | recoveredBlock26Local1 recoveredBlock26Local2 recoveredBlock26Local3 recoveredBlock26Local4 recoveredBlock26Value0 recoveredBlock26Value1 recoveredBlock26Value2 recoveredBlock26Value3 recoveredBlock26Value4 recoveredBlock26Value5 recoveredBlock26Value6 recoveredBlock26Value7 recoveredBlock26Value8 recoveredBlock26Value9 recoveredBlock26Value10 recoveredBlock26Value11 recoveredBlock26Value12 recoveredBlock26Value13 recoveredBlock26Value14 recoveredBlock26Value15 recoveredBlock26Value16 recoveredBlock26Value17 |
    recoveredBlock26Value0 := ASDIncaApiWrapperIncaFolder.
    recoveredBlock26Value1 := (recoveredBlock26Value0) new.
    recoveredBlock26Value2 := recoveredBlock26Value1.
    recoveredBlock26Local4 := recoveredBlock26Value2.
    recoveredBlock26Value3 := OleAutomationObject.
    recoveredBlock26Value4 := recoveredBlock26Arg1.
    recoveredBlock26Value5 := (recoveredBlock26Value4) pdispVal.
    recoveredBlock26Value6 := (recoveredBlock26Value3) forDispatch: (recoveredBlock26Value5).
    (recoveredBlock26Value1) automationObject: (recoveredBlock26Value6).
    recoveredBlock26Value7 := recoveredLocal2.
    recoveredBlock26Value8 := recoveredBlock26Local4.
    (recoveredBlock26Value7) add: (recoveredBlock26Value8).
    recoveredBlock26Value9 := recoveredBlock26Local4.
    recoveredBlock26Value10 := (recoveredBlock26Value9) getName.
    recoveredBlock26Local3 := recoveredBlock26Value10.
    recoveredBlock26Value11 := Transcript.
    recoveredBlock26Value12 := recoveredBlock26Value11.
    (recoveredBlock26Value12) cr.
    recoveredBlock26Value13 := recoveredBlock26Value11.
    recoveredBlock26Value14 := recoveredBlock26Local3.
    recoveredBlock26Value15 := ('EtasExpProjectTransferActivexCalls class>>#getAllIncaFolders (') , (recoveredBlock26Value14).
    recoveredBlock26Value16 := (recoveredBlock26Value15) , (')').
    (recoveredBlock26Value13) show: (recoveredBlock26Value16).
    recoveredBlock26Value17 := (recoveredBlock26Value11) cr.
    recoveredBlock26Value17
].
    (recoveredValue6) do: (recoveredValue7).
    recoveredValue8 := recoveredLocal2.
    ^recoveredValue8
! !

"ASDBase.ic method 0x203d3468; bytecode file offset 0xccfd58"
!EtasExpProjectTransferActivexCalls class methodsFor: 'recovered'!
getDeviceDescriptionsOf: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) getAllDeviceDescriptions.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) getData.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := [:recoveredBlock41Arg1 | 
    | recoveredBlock41Local1 recoveredBlock41Value0 recoveredBlock41Value1 recoveredBlock41Value2 recoveredBlock41Value3 recoveredBlock41Value4 recoveredBlock41Value5 recoveredBlock41Value6 recoveredBlock41Value7 recoveredBlock41Value8 recoveredBlock41Value9 recoveredBlock41Value10 recoveredBlock41Value11 recoveredBlock41Value12 |
    recoveredBlock41Value0 := ASDIncaApiWrapperHwDeviceDescription.
    recoveredBlock41Value1 := (recoveredBlock41Value0) new.
    recoveredBlock41Value2 := recoveredBlock41Value1.
    recoveredBlock41Local1 := recoveredBlock41Value2.
    recoveredBlock41Value3 := OleAutomationObject.
    recoveredBlock41Value4 := recoveredBlock41Arg1.
    recoveredBlock41Value5 := (recoveredBlock41Value4) pdispVal.
    recoveredBlock41Value6 := (recoveredBlock41Value3) forDispatch: (recoveredBlock41Value5).
    (recoveredBlock41Value1) automationObject: (recoveredBlock41Value6).
    recoveredBlock41Value7 := recoveredLocal1.
    recoveredBlock41Value8 := recoveredBlock41Local1.
    recoveredBlock41Value9 := (recoveredBlock41Value8) getName.
    recoveredBlock41Value10 := ('device<') , (recoveredBlock41Value9).
    recoveredBlock41Value11 := (recoveredBlock41Value10) , ('>').
    recoveredBlock41Value12 := (recoveredBlock41Value7) add: (recoveredBlock41Value11).
    recoveredBlock41Value12
].
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20468d94; bytecode file offset 0xd65690"
!EtasExpProjectTransferActivexCalls class methodsFor: 'recovered'!
isCorrectIncaVersion
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) accessTool.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) getDataBasePath.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := EtasExpProjectTransferError.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := 'Cannot get access to INCA. Please, restart ASCET"'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) errorMessagePrompt: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := 'Kra'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := 'Call_69199'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) getCurrentVersion.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := 'vt'.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) respondsTo: (recoveredStack1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) vt.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 81].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := EtasExpProjectTransferError.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := 'Cannot retrieve INCA version. Please, install INCA version "'.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := (recoveredStack2) minIncaVersion.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := '" or higher.'.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack0) errorMessagePrompt: (recoveredStack1).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) minIncaVersion.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) asEtasVersion.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := (recoveredStack1) asEtasVersion.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 94] ifFalse: [recoveredPC := 118].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := EtasExpProjectTransferError.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := 'Invalid INCA version "'.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := '". Please, install INCA version "'.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack2 := (recoveredStack2) minIncaVersion.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := '" or higher.'.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack0) errorMessagePrompt: (recoveredStack1).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204831f0; bytecode file offset 0xd7fae4"
!EtasExpProjectTransferActivexCalls class methodsFor: 'recovered'!
findDeviceDescriptions: recoveredArg1 withArgs: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) getAllDeviceDescriptions.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) getData.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := [:recoveredBlock41Arg1 | 
    | recoveredBlock41Local1 recoveredBlock41Local2 recoveredBlock41Local3 recoveredBlock41Stack0 recoveredBlock41Stack1 recoveredBlock41Stack2 recoveredBlock41Stack3 recoveredBlock41Stack4 recoveredBlock41PC recoveredBlock41Step recoveredBlock41Done recoveredBlock41Result |
    recoveredBlock41Stack0 := self.
    recoveredBlock41PC := 48.
    recoveredBlock41Done := false.
    [recoveredBlock41Done not] whileTrue: [
        recoveredBlock41Step := recoveredBlock41PC.
        recoveredBlock41Step = 48 ifTrue: [
            recoveredBlock41Stack1 := ASDIncaApiWrapperHwDeviceDescription.
            recoveredBlock41PC := 50.
        ].
        recoveredBlock41Step = 50 ifTrue: [
            recoveredBlock41Stack1 := (recoveredBlock41Stack1) new.
            recoveredBlock41PC := 51.
        ].
        recoveredBlock41Step = 51 ifTrue: [
            recoveredBlock41Stack2 := recoveredBlock41Stack1.
            recoveredBlock41PC := 52.
        ].
        recoveredBlock41Step = 52 ifTrue: [
            recoveredBlock41Local3 := recoveredBlock41Stack2.
            recoveredBlock41PC := 55.
        ].
        recoveredBlock41Step = 55 ifTrue: [
            recoveredBlock41Stack2 := OleAutomationObject.
            recoveredBlock41PC := 57.
        ].
        recoveredBlock41Step = 57 ifTrue: [
            recoveredBlock41Stack3 := recoveredBlock41Arg1.
            recoveredBlock41PC := 60.
        ].
        recoveredBlock41Step = 60 ifTrue: [
            recoveredBlock41Stack3 := (recoveredBlock41Stack3) pdispVal.
            recoveredBlock41PC := 62.
        ].
        recoveredBlock41Step = 62 ifTrue: [
            recoveredBlock41Stack2 := (recoveredBlock41Stack2) forDispatch: (recoveredBlock41Stack3).
            recoveredBlock41PC := 64.
        ].
        recoveredBlock41Step = 64 ifTrue: [
            (recoveredBlock41Stack1) automationObject: (recoveredBlock41Stack2).
            recoveredBlock41PC := 66.
        ].
        recoveredBlock41Step = 66 ifTrue: [
            recoveredBlock41Stack1 := recoveredBlock41Local3.
            recoveredBlock41PC := 69.
        ].
        recoveredBlock41Step = 69 ifTrue: [
            recoveredBlock41Stack1 := (recoveredBlock41Stack1) getName.
            recoveredBlock41PC := 71.
        ].
        recoveredBlock41Step = 71 ifTrue: [
            recoveredBlock41Local2 := recoveredBlock41Stack1.
            recoveredBlock41PC := 74.
        ].
        recoveredBlock41Step = 74 ifTrue: [
            recoveredBlock41Stack1 := recoveredArg1.
            recoveredBlock41PC := 77.
        ].
        recoveredBlock41Step = 77 ifTrue: [
            recoveredBlock41Stack2 := [:recoveredBlock41Block77Arg1 | 
    | recoveredBlock41Block77Value0 recoveredBlock41Block77Value1 recoveredBlock41Block77Value2 recoveredBlock41Block77Value3 recoveredBlock41Block77Value4 recoveredBlock41Block77Value5 |
    recoveredBlock41Block77Value0 := recoveredBlock41Block77Arg1.
    recoveredBlock41Block77Value1 := (recoveredBlock41Block77Value0) first.
    recoveredBlock41Block77Value2 := (recoveredBlock41Block77Value1) asLowercase.
    recoveredBlock41Block77Value3 := recoveredBlock41Local2.
    recoveredBlock41Block77Value4 := (recoveredBlock41Block77Value3) asLowercase.
    recoveredBlock41Block77Value5 := (recoveredBlock41Block77Value2) = (recoveredBlock41Block77Value4).
    recoveredBlock41Block77Value5
].
            recoveredBlock41PC := 96.
        ].
        recoveredBlock41Step = 96 ifTrue: [
            recoveredBlock41Stack3 := [].
            recoveredBlock41PC := 98.
        ].
        recoveredBlock41Step = 98 ifTrue: [
            recoveredBlock41Stack1 := (recoveredBlock41Stack1) detect: (recoveredBlock41Stack2) ifNone: (recoveredBlock41Stack3).
            recoveredBlock41PC := 100.
        ].
        recoveredBlock41Step = 100 ifTrue: [
            recoveredBlock41Local1 := recoveredBlock41Stack1.
            recoveredBlock41PC := 103.
        ].
        recoveredBlock41Step = 103 ifTrue: [
            recoveredBlock41Stack1 := nil.
            recoveredBlock41PC := 104.
        ].
        recoveredBlock41Step = 104 ifTrue: [
            recoveredBlock41Stack2 := recoveredBlock41Local1.
            recoveredBlock41PC := 107.
        ].
        recoveredBlock41Step = 107 ifTrue: [
            (recoveredBlock41Stack2 == nil) ifTrue: [recoveredBlock41PC := 121] ifFalse: [recoveredBlock41PC := 110].
        ].
        recoveredBlock41Step = 110 ifTrue: [
            recoveredBlock41PC := 111.
        ].
        recoveredBlock41Step = 111 ifTrue: [
            recoveredBlock41Stack1 := recoveredLocal1.
            recoveredBlock41PC := 114.
        ].
        recoveredBlock41Step = 114 ifTrue: [
            recoveredBlock41Stack2 := recoveredBlock41Local3.
            recoveredBlock41PC := 117.
        ].
        recoveredBlock41Step = 117 ifTrue: [
            recoveredBlock41Stack2 := (recoveredBlock41Stack2) getName.
            recoveredBlock41PC := 119.
        ].
        recoveredBlock41Step = 119 ifTrue: [
            recoveredBlock41Stack1 := (recoveredBlock41Stack1) add: (recoveredBlock41Stack2).
            recoveredBlock41PC := 121.
        ].
        recoveredBlock41Step = 121 ifTrue: [
            recoveredBlock41Result := recoveredBlock41Stack1.
            recoveredBlock41Done := true.
        ].
    ].
    recoveredBlock41Result
].
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x204c3f48; bytecode file offset 0xdc083c"
!EtasExpProjectTransferActivexCalls class methodsFor: 'recovered'!
getChildDescriptionsOf: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Local1 recoveredBlock13Local2 recoveredBlock13Local3 recoveredBlock13Local4 recoveredBlock13Local5 recoveredBlock13Local6 recoveredBlock13Local7 recoveredBlock13Stack0 recoveredBlock13Stack1 recoveredBlock13Stack2 recoveredBlock13Stack3 recoveredBlock13Stack4 recoveredBlock13PC recoveredBlock13Step recoveredBlock13Done recoveredBlock13Result |
    recoveredBlock13Stack0 := self.
    recoveredBlock13PC := 20.
    recoveredBlock13Done := false.
    [recoveredBlock13Done not] whileTrue: [
        recoveredBlock13Step := recoveredBlock13PC.
        recoveredBlock13Step = 20 ifTrue: [
            recoveredBlock13Stack1 := ASDIncaApiWrapperHwSystemDescription.
            recoveredBlock13PC := 22.
        ].
        recoveredBlock13Step = 22 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) new.
            recoveredBlock13PC := 23.
        ].
        recoveredBlock13Step = 23 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Stack1.
            recoveredBlock13PC := 24.
        ].
        recoveredBlock13Step = 24 ifTrue: [
            recoveredBlock13Local7 := recoveredBlock13Stack2.
            recoveredBlock13PC := 27.
        ].
        recoveredBlock13Step = 27 ifTrue: [
            recoveredBlock13Stack2 := OleAutomationObject.
            recoveredBlock13PC := 29.
        ].
        recoveredBlock13Step = 29 ifTrue: [
            recoveredBlock13Stack3 := recoveredBlock13Arg1.
            recoveredBlock13PC := 32.
        ].
        recoveredBlock13Step = 32 ifTrue: [
            recoveredBlock13Stack3 := (recoveredBlock13Stack3) pdispVal.
            recoveredBlock13PC := 34.
        ].
        recoveredBlock13Step = 34 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) forDispatch: (recoveredBlock13Stack3).
            recoveredBlock13PC := 36.
        ].
        recoveredBlock13Step = 36 ifTrue: [
            (recoveredBlock13Stack1) automationObject: (recoveredBlock13Stack2).
            recoveredBlock13PC := 38.
        ].
        recoveredBlock13Step = 38 ifTrue: [
            recoveredBlock13Stack1 := 'system<'.
            recoveredBlock13PC := 40.
        ].
        recoveredBlock13Step = 40 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Local7.
            recoveredBlock13PC := 43.
        ].
        recoveredBlock13Step = 43 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) getName.
            recoveredBlock13PC := 45.
        ].
        recoveredBlock13Step = 45 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) , (recoveredBlock13Stack2).
            recoveredBlock13PC := 47.
        ].
        recoveredBlock13Step = 47 ifTrue: [
            recoveredBlock13Stack2 := '>'.
            recoveredBlock13PC := 49.
        ].
        recoveredBlock13Step = 49 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) , (recoveredBlock13Stack2).
            recoveredBlock13PC := 51.
        ].
        recoveredBlock13Step = 51 ifTrue: [
            recoveredBlock13Local1 := recoveredBlock13Stack1.
            recoveredBlock13PC := 54.
        ].
        recoveredBlock13Step = 54 ifTrue: [
            recoveredBlock13Stack1 := recoveredLocal1.
            recoveredBlock13PC := 57.
        ].
        recoveredBlock13Step = 57 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Local1.
            recoveredBlock13PC := 60.
        ].
        recoveredBlock13Step = 60 ifTrue: [
            (recoveredBlock13Stack1) add: (recoveredBlock13Stack2).
            recoveredBlock13PC := 62.
        ].
        recoveredBlock13Step = 62 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Local7.
            recoveredBlock13PC := 65.
        ].
        recoveredBlock13Step = 65 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) getSubsystemDescriptionsOf: (recoveredBlock13Stack1).
            recoveredBlock13PC := 67.
        ].
        recoveredBlock13Step = 67 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Stack0.
            recoveredBlock13PC := 68.
        ].
        recoveredBlock13Step = 68 ifTrue: [
            recoveredBlock13Local2 := recoveredBlock13Stack1.
            recoveredBlock13PC := 71.
        ].
        recoveredBlock13Step = 71 ifTrue: [
            (recoveredBlock13Stack0 == nil) ifTrue: [recoveredBlock13PC := 102] ifFalse: [recoveredBlock13PC := 74].
        ].
        recoveredBlock13Step = 74 ifTrue: [
            recoveredBlock13Stack0 := recoveredBlock13Local2.
            recoveredBlock13PC := 77.
        ].
        recoveredBlock13Step = 77 ifTrue: [
            recoveredBlock13Stack1 := [:recoveredBlock13Block77Arg1 | 
    | recoveredBlock13Block77Value0 recoveredBlock13Block77Value1 recoveredBlock13Block77Value2 recoveredBlock13Block77Value3 recoveredBlock13Block77Value4 recoveredBlock13Block77Value5 |
    recoveredBlock13Block77Value0 := recoveredLocal1.
    recoveredBlock13Block77Value1 := recoveredBlock13Local1.
    recoveredBlock13Block77Value2 := (recoveredBlock13Block77Value1) , ('/').
    recoveredBlock13Block77Value3 := recoveredBlock13Block77Arg1.
    recoveredBlock13Block77Value4 := (recoveredBlock13Block77Value2) , (recoveredBlock13Block77Value3).
    recoveredBlock13Block77Value5 := (recoveredBlock13Block77Value0) add: (recoveredBlock13Block77Value4).
    recoveredBlock13Block77Value5
].
            recoveredBlock13PC := 100.
        ].
        recoveredBlock13Step = 100 ifTrue: [
            (recoveredBlock13Stack0) do: (recoveredBlock13Stack1).
            recoveredBlock13PC := 102.
        ].
        recoveredBlock13Step = 102 ifTrue: [
            recoveredBlock13Stack0 := nil.
            recoveredBlock13PC := 103.
        ].
        recoveredBlock13Step = 103 ifTrue: [
            recoveredBlock13Stack1 := self.
            recoveredBlock13PC := 104.
        ].
        recoveredBlock13Step = 104 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Local7.
            recoveredBlock13PC := 107.
        ].
        recoveredBlock13Step = 107 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) getDeviceDescriptionsOf: (recoveredBlock13Stack2).
            recoveredBlock13PC := 109.
        ].
        recoveredBlock13Step = 109 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Stack1.
            recoveredBlock13PC := 110.
        ].
        recoveredBlock13Step = 110 ifTrue: [
            recoveredBlock13Local2 := recoveredBlock13Stack2.
            recoveredBlock13PC := 113.
        ].
        recoveredBlock13Step = 113 ifTrue: [
            (recoveredBlock13Stack1 == nil) ifTrue: [recoveredBlock13PC := 144] ifFalse: [recoveredBlock13PC := 116].
        ].
        recoveredBlock13Step = 116 ifTrue: [
            recoveredBlock13PC := 117.
        ].
        recoveredBlock13Step = 117 ifTrue: [
            recoveredBlock13Stack0 := recoveredBlock13Local2.
            recoveredBlock13PC := 120.
        ].
        recoveredBlock13Step = 120 ifTrue: [
            recoveredBlock13Stack1 := [:recoveredBlock13Block120Arg1 | 
    | recoveredBlock13Block120Value0 recoveredBlock13Block120Value1 recoveredBlock13Block120Value2 recoveredBlock13Block120Value3 recoveredBlock13Block120Value4 recoveredBlock13Block120Value5 |
    recoveredBlock13Block120Value0 := recoveredLocal1.
    recoveredBlock13Block120Value1 := recoveredBlock13Local1.
    recoveredBlock13Block120Value2 := (recoveredBlock13Block120Value1) , ('/').
    recoveredBlock13Block120Value3 := recoveredBlock13Block120Arg1.
    recoveredBlock13Block120Value4 := (recoveredBlock13Block120Value2) , (recoveredBlock13Block120Value3).
    recoveredBlock13Block120Value5 := (recoveredBlock13Block120Value0) add: (recoveredBlock13Block120Value4).
    recoveredBlock13Block120Value5
].
            recoveredBlock13PC := 142.
        ].
        recoveredBlock13Step = 142 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) do: (recoveredBlock13Stack1).
            recoveredBlock13PC := 144.
        ].
        recoveredBlock13Step = 144 ifTrue: [
            recoveredBlock13Result := recoveredBlock13Stack0.
            recoveredBlock13Done := true.
        ].
    ].
    recoveredBlock13Result
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x2057eef8; bytecode file offset 0xe7b7f0"
!EtasExpProjectTransferActivexCalls class methodsFor: 'recovered'!
findChildDescriptions: recoveredArg1 withVariantArgs: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Local1 recoveredBlock13Local2 recoveredBlock13Local3 recoveredBlock13Local4 recoveredBlock13Local5 recoveredBlock13Local6 recoveredBlock13Local7 recoveredBlock13Local8 recoveredBlock13Local9 recoveredBlock13Stack0 recoveredBlock13Stack1 recoveredBlock13Stack2 recoveredBlock13Stack3 recoveredBlock13Stack4 recoveredBlock13Stack5 recoveredBlock13PC recoveredBlock13Step recoveredBlock13Done recoveredBlock13Result |
    recoveredBlock13Stack0 := self.
    recoveredBlock13PC := 20.
    recoveredBlock13Done := false.
    [recoveredBlock13Done not] whileTrue: [
        recoveredBlock13Step := recoveredBlock13PC.
        recoveredBlock13Step = 20 ifTrue: [
            recoveredBlock13Stack1 := false.
            recoveredBlock13PC := 21.
        ].
        recoveredBlock13Step = 21 ifTrue: [
            recoveredBlock13Local1 := recoveredBlock13Stack1.
            recoveredBlock13PC := 24.
        ].
        recoveredBlock13Step = 24 ifTrue: [
            recoveredBlock13Stack1 := ASDIncaApiWrapperHwSystemDescription.
            recoveredBlock13PC := 26.
        ].
        recoveredBlock13Step = 26 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) new.
            recoveredBlock13PC := 27.
        ].
        recoveredBlock13Step = 27 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Stack1.
            recoveredBlock13PC := 28.
        ].
        recoveredBlock13Step = 28 ifTrue: [
            recoveredBlock13Local9 := recoveredBlock13Stack2.
            recoveredBlock13PC := 31.
        ].
        recoveredBlock13Step = 31 ifTrue: [
            recoveredBlock13Stack2 := OleAutomationObject.
            recoveredBlock13PC := 33.
        ].
        recoveredBlock13Step = 33 ifTrue: [
            recoveredBlock13Stack3 := recoveredBlock13Arg1.
            recoveredBlock13PC := 36.
        ].
        recoveredBlock13Step = 36 ifTrue: [
            recoveredBlock13Stack3 := (recoveredBlock13Stack3) pdispVal.
            recoveredBlock13PC := 38.
        ].
        recoveredBlock13Step = 38 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) forDispatch: (recoveredBlock13Stack3).
            recoveredBlock13PC := 40.
        ].
        recoveredBlock13Step = 40 ifTrue: [
            (recoveredBlock13Stack1) automationObject: (recoveredBlock13Stack2).
            recoveredBlock13PC := 42.
        ].
        recoveredBlock13Step = 42 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Local9.
            recoveredBlock13PC := 45.
        ].
        recoveredBlock13Step = 45 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) getName.
            recoveredBlock13PC := 47.
        ].
        recoveredBlock13Step = 47 ifTrue: [
            recoveredBlock13Local3 := recoveredBlock13Stack1.
            recoveredBlock13PC := 50.
        ].
        recoveredBlock13Step = 50 ifTrue: [
            recoveredBlock13Stack1 := OrderedCollection.
            recoveredBlock13PC := 52.
        ].
        recoveredBlock13Step = 52 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) new.
            recoveredBlock13PC := 53.
        ].
        recoveredBlock13Step = 53 ifTrue: [
            recoveredBlock13Local2 := recoveredBlock13Stack1.
            recoveredBlock13PC := 56.
        ].
        recoveredBlock13Step = 56 ifTrue: [
            recoveredBlock13Stack1 := recoveredArg1.
            recoveredBlock13PC := 59.
        ].
        recoveredBlock13Step = 59 ifTrue: [
            recoveredBlock13Stack2 := [:recoveredBlock13Block59Arg1 | 
    | recoveredBlock13Block59Stack0 recoveredBlock13Block59Stack1 recoveredBlock13Block59Stack2 recoveredBlock13Block59Stack3 recoveredBlock13Block59Stack4 recoveredBlock13Block59Stack5 recoveredBlock13Block59PC recoveredBlock13Block59Step recoveredBlock13Block59Done recoveredBlock13Block59Result |
    recoveredBlock13Block59Stack0 := nil.
    recoveredBlock13Block59PC := 66.
    recoveredBlock13Block59Done := false.
    [recoveredBlock13Block59Done not] whileTrue: [
        recoveredBlock13Block59Step := recoveredBlock13Block59PC.
        recoveredBlock13Block59Step = 66 ifTrue: [
            recoveredBlock13Block59Stack1 := nil.
            recoveredBlock13Block59PC := 67.
        ].
        recoveredBlock13Block59Step = 67 ifTrue: [
            recoveredBlock13Block59Stack2 := recoveredBlock13Block59Arg1.
            recoveredBlock13Block59PC := 68.
        ].
        recoveredBlock13Block59Step = 68 ifTrue: [
            recoveredBlock13Block59Stack2 := (recoveredBlock13Block59Stack2) first.
            recoveredBlock13Block59PC := 70.
        ].
        recoveredBlock13Block59Step = 70 ifTrue: [
            recoveredBlock13Block59Stack2 := (recoveredBlock13Block59Stack2) asLowercase.
            recoveredBlock13Block59PC := 72.
        ].
        recoveredBlock13Block59Step = 72 ifTrue: [
            recoveredBlock13Block59Stack3 := recoveredBlock13Local3.
            recoveredBlock13Block59PC := 75.
        ].
        recoveredBlock13Block59Step = 75 ifTrue: [
            recoveredBlock13Block59Stack3 := (recoveredBlock13Block59Stack3) asLowercase.
            recoveredBlock13Block59PC := 77.
        ].
        recoveredBlock13Block59Step = 77 ifTrue: [
            recoveredBlock13Block59Stack2 := (recoveredBlock13Block59Stack2) = (recoveredBlock13Block59Stack3).
            recoveredBlock13Block59PC := 78.
        ].
        recoveredBlock13Block59Step = 78 ifTrue: [
            (recoveredBlock13Block59Stack2) ifTrue: [recoveredBlock13Block59PC := 82] ifFalse: [recoveredBlock13Block59PC := 121].
        ].
        recoveredBlock13Block59Step = 82 ifTrue: [
            recoveredBlock13Block59PC := 83.
        ].
        recoveredBlock13Block59Step = 83 ifTrue: [
            recoveredBlock13Block59Stack1 := true.
            recoveredBlock13Block59PC := 84.
        ].
        recoveredBlock13Block59Step = 84 ifTrue: [
            recoveredBlock13Local1 := recoveredBlock13Block59Stack1.
            recoveredBlock13Block59PC := 87.
        ].
        recoveredBlock13Block59Step = 87 ifTrue: [
            recoveredBlock13Block59Stack1 := recoveredBlock13Block59Arg1.
            recoveredBlock13Block59PC := 88.
        ].
        recoveredBlock13Block59Step = 88 ifTrue: [
            recoveredBlock13Block59Stack1 := (recoveredBlock13Block59Stack1) size.
            recoveredBlock13Block59PC := 90.
        ].
        recoveredBlock13Block59Step = 90 ifTrue: [
            recoveredBlock13Block59Stack2 := 1.
            recoveredBlock13Block59PC := 92.
        ].
        recoveredBlock13Block59Step = 92 ifTrue: [
            recoveredBlock13Block59Stack1 := (recoveredBlock13Block59Stack1) = (recoveredBlock13Block59Stack2).
            recoveredBlock13Block59PC := 93.
        ].
        recoveredBlock13Block59Step = 93 ifTrue: [
            (recoveredBlock13Block59Stack1) ifTrue: [recoveredBlock13Block59PC := 96] ifFalse: [recoveredBlock13Block59PC := 108].
        ].
        recoveredBlock13Block59Step = 96 ifTrue: [
            recoveredBlock13Block59Stack1 := recoveredLocal1.
            recoveredBlock13Block59PC := 99.
        ].
        recoveredBlock13Block59Step = 99 ifTrue: [
            recoveredBlock13Block59Stack2 := recoveredBlock13Local3.
            recoveredBlock13Block59PC := 102.
        ].
        recoveredBlock13Block59Step = 102 ifTrue: [
            recoveredBlock13Block59Stack1 := (recoveredBlock13Block59Stack1) add: (recoveredBlock13Block59Stack2).
            recoveredBlock13Block59PC := 104.
        ].
        recoveredBlock13Block59Step = 104 ifTrue: [
            recoveredBlock13Block59PC := 121.
        ].
        recoveredBlock13Block59Step = 108 ifTrue: [
            recoveredBlock13Block59Stack1 := recoveredBlock13Local2.
            recoveredBlock13Block59PC := 111.
        ].
        recoveredBlock13Block59Step = 111 ifTrue: [
            recoveredBlock13Block59Stack2 := recoveredBlock13Block59Arg1.
            recoveredBlock13Block59PC := 112.
        ].
        recoveredBlock13Block59Step = 112 ifTrue: [
            recoveredBlock13Block59Stack3 := 2.
            recoveredBlock13Block59PC := 114.
        ].
        recoveredBlock13Block59Step = 114 ifTrue: [
            recoveredBlock13Block59Stack4 := recoveredBlock13Block59Arg1.
            recoveredBlock13Block59PC := 115.
        ].
        recoveredBlock13Block59Step = 115 ifTrue: [
            recoveredBlock13Block59Stack4 := (recoveredBlock13Block59Stack4) size.
            recoveredBlock13Block59PC := 117.
        ].
        recoveredBlock13Block59Step = 117 ifTrue: [
            recoveredBlock13Block59Stack2 := (recoveredBlock13Block59Stack2) copyFrom: (recoveredBlock13Block59Stack3) to: (recoveredBlock13Block59Stack4).
            recoveredBlock13Block59PC := 119.
        ].
        recoveredBlock13Block59Step = 119 ifTrue: [
            recoveredBlock13Block59Stack1 := (recoveredBlock13Block59Stack1) add: (recoveredBlock13Block59Stack2).
            recoveredBlock13Block59PC := 121.
        ].
        recoveredBlock13Block59Step = 121 ifTrue: [
            recoveredBlock13Block59Result := recoveredBlock13Block59Stack1.
            recoveredBlock13Block59Done := true.
        ].
    ].
    recoveredBlock13Block59Result
].
            recoveredBlock13PC := 122.
        ].
        recoveredBlock13Step = 122 ifTrue: [
            (recoveredBlock13Stack1) do: (recoveredBlock13Stack2).
            recoveredBlock13PC := 124.
        ].
        recoveredBlock13Step = 124 ifTrue: [
            recoveredBlock13Stack1 := nil.
            recoveredBlock13PC := 125.
        ].
        recoveredBlock13Step = 125 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Local2.
            recoveredBlock13PC := 128.
        ].
        recoveredBlock13Step = 128 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) notEmpty.
            recoveredBlock13PC := 130.
        ].
        recoveredBlock13Step = 130 ifTrue: [
            (recoveredBlock13Stack2) ifTrue: [recoveredBlock13PC := 134] ifFalse: [recoveredBlock13PC := 253].
        ].
        recoveredBlock13Step = 134 ifTrue: [
            recoveredBlock13PC := 135.
        ].
        recoveredBlock13Step = 135 ifTrue: [
            recoveredBlock13Stack1 := self.
            recoveredBlock13PC := 136.
        ].
        recoveredBlock13Step = 136 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Local2.
            recoveredBlock13PC := 139.
        ].
        recoveredBlock13Step = 139 ifTrue: [
            recoveredBlock13Stack3 := recoveredBlock13Local9.
            recoveredBlock13PC := 142.
        ].
        recoveredBlock13Step = 142 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) findSubsystemDescriptions: (recoveredBlock13Stack2) withArgs: (recoveredBlock13Stack3).
            recoveredBlock13PC := 144.
        ].
        recoveredBlock13Step = 144 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Stack1.
            recoveredBlock13PC := 145.
        ].
        recoveredBlock13Step = 145 ifTrue: [
            recoveredBlock13Local4 := recoveredBlock13Stack2.
            recoveredBlock13PC := 148.
        ].
        recoveredBlock13Step = 148 ifTrue: [
            (recoveredBlock13Stack1 == nil) ifTrue: [recoveredBlock13PC := 204] ifFalse: [recoveredBlock13PC := 152].
        ].
        recoveredBlock13Step = 152 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Local4.
            recoveredBlock13PC := 155.
        ].
        recoveredBlock13Step = 155 ifTrue: [
            recoveredBlock13Stack2 := [:recoveredBlock13Block155Arg1 | 
    | recoveredBlock13Block155Local1 recoveredBlock13Block155Value0 recoveredBlock13Block155Value1 recoveredBlock13Block155Value2 recoveredBlock13Block155Value3 recoveredBlock13Block155Value4 recoveredBlock13Block155Value5 recoveredBlock13Block155Value6 recoveredBlock13Block155Value7 recoveredBlock13Block155Value8 |
    recoveredBlock13Block155Value0 := OrderedCollection.
    recoveredBlock13Block155Value1 := (recoveredBlock13Block155Value0) new.
    recoveredBlock13Block155Value2 := recoveredBlock13Block155Value1.
    recoveredBlock13Block155Local1 := recoveredBlock13Block155Value2.
    recoveredBlock13Block155Value3 := recoveredBlock13Local3.
    (recoveredBlock13Block155Value1) add: (recoveredBlock13Block155Value3).
    recoveredBlock13Block155Value4 := recoveredBlock13Block155Arg1.
    recoveredBlock13Block155Value5 := [:recoveredBlock13Block155Block177Arg1 | 
    | recoveredBlock13Block155Block177Value0 recoveredBlock13Block155Block177Value1 recoveredBlock13Block155Block177Value2 |
    recoveredBlock13Block155Block177Value0 := recoveredBlock13Block155Local1.
    recoveredBlock13Block155Block177Value1 := recoveredBlock13Block155Block177Arg1.
    recoveredBlock13Block155Block177Value2 := (recoveredBlock13Block155Block177Value0) add: (recoveredBlock13Block155Block177Value1).
    recoveredBlock13Block155Block177Value2
].
    (recoveredBlock13Block155Value4) do: (recoveredBlock13Block155Value5).
    recoveredBlock13Block155Value6 := recoveredLocal1.
    recoveredBlock13Block155Value7 := recoveredBlock13Block155Local1.
    recoveredBlock13Block155Value8 := (recoveredBlock13Block155Value6) add: (recoveredBlock13Block155Value7).
    recoveredBlock13Block155Value8
].
            recoveredBlock13PC := 202.
        ].
        recoveredBlock13Step = 202 ifTrue: [
            (recoveredBlock13Stack1) do: (recoveredBlock13Stack2).
            recoveredBlock13PC := 204.
        ].
        recoveredBlock13Step = 204 ifTrue: [
            recoveredBlock13Stack1 := nil.
            recoveredBlock13PC := 205.
        ].
        recoveredBlock13Step = 205 ifTrue: [
            recoveredBlock13Stack2 := self.
            recoveredBlock13PC := 206.
        ].
        recoveredBlock13Step = 206 ifTrue: [
            recoveredBlock13Stack3 := recoveredBlock13Local2.
            recoveredBlock13PC := 209.
        ].
        recoveredBlock13Step = 209 ifTrue: [
            recoveredBlock13Stack4 := recoveredBlock13Local9.
            recoveredBlock13PC := 212.
        ].
        recoveredBlock13Step = 212 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) findDeviceDescriptions: (recoveredBlock13Stack3) withArgs: (recoveredBlock13Stack4).
            recoveredBlock13PC := 214.
        ].
        recoveredBlock13Step = 214 ifTrue: [
            recoveredBlock13Stack3 := recoveredBlock13Stack2.
            recoveredBlock13PC := 215.
        ].
        recoveredBlock13Step = 215 ifTrue: [
            recoveredBlock13Local4 := recoveredBlock13Stack3.
            recoveredBlock13PC := 218.
        ].
        recoveredBlock13Step = 218 ifTrue: [
            (recoveredBlock13Stack2 == nil) ifTrue: [recoveredBlock13PC := 253] ifFalse: [recoveredBlock13PC := 222].
        ].
        recoveredBlock13Step = 222 ifTrue: [
            recoveredBlock13PC := 223.
        ].
        recoveredBlock13Step = 223 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Local4.
            recoveredBlock13PC := 226.
        ].
        recoveredBlock13Step = 226 ifTrue: [
            recoveredBlock13Stack2 := [:recoveredBlock13Block226Arg1 | 
    | recoveredBlock13Block226Value0 recoveredBlock13Block226Value1 recoveredBlock13Block226Value2 recoveredBlock13Block226Value3 recoveredBlock13Block226Value4 recoveredBlock13Block226Value5 recoveredBlock13Block226Value6 recoveredBlock13Block226Value7 |
    recoveredBlock13Block226Value0 := recoveredLocal1.
    recoveredBlock13Block226Value1 := OrderedCollection.
    recoveredBlock13Block226Value2 := (recoveredBlock13Block226Value1) new.
    recoveredBlock13Block226Value3 := recoveredBlock13Block226Value2.
    recoveredBlock13Block226Value4 := recoveredBlock13Local3.
    (recoveredBlock13Block226Value3) add: (recoveredBlock13Block226Value4).
    recoveredBlock13Block226Value5 := recoveredBlock13Block226Value2.
    recoveredBlock13Block226Value6 := recoveredBlock13Block226Arg1.
    (recoveredBlock13Block226Value5) add: (recoveredBlock13Block226Value6).
    recoveredBlock13Block226Value7 := (recoveredBlock13Block226Value0) add: (recoveredBlock13Block226Value2).
    recoveredBlock13Block226Value7
].
            recoveredBlock13PC := 251.
        ].
        recoveredBlock13Step = 251 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) do: (recoveredBlock13Stack2).
            recoveredBlock13PC := 253.
        ].
        recoveredBlock13Step = 253 ifTrue: [
            recoveredBlock13Result := recoveredBlock13Stack1.
            recoveredBlock13Done := true.
        ].
    ].
    recoveredBlock13Result
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

