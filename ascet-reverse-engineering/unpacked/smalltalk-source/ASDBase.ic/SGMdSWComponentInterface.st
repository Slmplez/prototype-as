"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200028a0; bytecode file offset 0x8ffcfc"
!SGMdSWComponentInterface methodsFor: 'recovered'!
semAnaDataset
    ^self
! !

"ASDBase.ic method 0x2003d748; bytecode file offset 0x93bf94"
!SGMdSWComponentInterface methodsFor: 'recovered'!
arBaseCategory
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGCgAutosarSettings.
    recoveredValue1 := (recoveredValue0) categorySwComponent.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200491d4; bytecode file offset 0x945a88"
!SGMdSWComponentInterface methodsFor: 'recovered'!
resetAREvents
    arEvents := nil.
    ^self
! !

"ASDBase.ic method 0x20055290; bytecode file offset 0x952a9c"
!SGMdSWComponentInterface methodsFor: 'recovered'!
mdlAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) mdlSWComponentInterface: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20077ac4; bytecode file offset 0x9757c8"
!SGMdSWComponentInterface methodsFor: 'recovered'!
isMdlSWComponent
    ^true
! !

"ASDBase.ic method 0x20079f94; bytecode file offset 0x97c330"
!SGMdSWComponentInterface methodsFor: 'recovered'!
arXmlSupportsMultipleInstantiation
    ^false
! !

"ASDBase.ic method 0x200c73f0; bytecode file offset 0x9c3d64"
!SGMdSWComponentInterface methodsFor: 'recovered'!
arConstantMemoryList: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    arConstantMemoryList := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c7514; bytecode file offset 0x9c3e48"
!SGMdSWComponentInterface methodsFor: 'recovered'!
arStaticMemoryList: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    arStaticMemoryList := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200f8154; bytecode file offset 0x9f4e38"
!SGMdSWComponentInterface methodsFor: 'recovered'!
allARInterrunnableVariables
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) instanceVars.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c57fcArg1 | 
    | block280c57fcValue0 block280c57fcValue1 |
    block280c57fcValue0 := block280c57fcArg1.
    block280c57fcValue1 := (block280c57fcValue0) isMdlARInterrunnableVarDecl.
    block280c57fcValue1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20116cb4; bytecode file offset 0xa1356c"
!SGMdSWComponentInterface methodsFor: 'recovered'!
arConstantMemoryList
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := arConstantMemoryList.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            arConstantMemoryList := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := arConstantMemoryList.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20116d6c; bytecode file offset 0xa13624"
!SGMdSWComponentInterface methodsFor: 'recovered'!
arStaticMemoryList
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := arStaticMemoryList.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            arStaticMemoryList := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := arStaticMemoryList.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2012aef8; bytecode file offset 0xa277b4"
!SGMdSWComponentInterface methodsFor: 'recovered'!
allMappings
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := allMappings.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := SGCgSet.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            allMappings := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := allMappings.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2012e5e8; bytecode file offset 0xa2b0c4"
!SGMdSWComponentInterface methodsFor: 'recovered'!
allAREvents
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) arEvents.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) symbols.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := [:block280ca968Arg1 | 
    | block280ca968Value0 block280ca968Value1 |
    block280ca968Value0 := block280ca968Arg1.
    block280ca968Value1 := (block280ca968Value0) isMdlAREvent.
    block280ca968Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20171868; bytecode file offset 0xa6e138"
!SGMdSWComponentInterface methodsFor: 'recovered'!
sortedRunnableDecls
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) symbols.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [:block280cef28Arg1 | 
    | block280cef28Value0 block280cef28Value1 |
    block280cef28Value0 := block280cef28Arg1.
    block280cef28Value1 := (block280cef28Value0) isMdlRunnableDecl.
    block280cef28Value1
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSet.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) sortElements: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2018e4b8; bytecode file offset 0xa8ad78"
!SGMdSWComponentInterface methodsFor: 'recovered'!
arEvents
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := arEvents.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := SGCgSymbolTable.
    recoveredBlock6Value1 := (recoveredBlock6Value0) create.
    recoveredBlock6Value2 := recoveredBlock6Value1.
    arEvents := recoveredBlock6Value2.
    recoveredBlock6Value1
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := arEvents.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2029d778; bytecode file offset 0xb9a04c"
!SGMdSWComponentInterface methodsFor: 'recovered'!
mdlSemAnaMsgAccess: recoveredArg1 to: recoveredArg2 sources: recoveredArg3 labels: recoveredArg4
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSendReceiveUsage.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 29] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSendUsage.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := 'write only'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 29.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := 'read only'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := ' access in more than one runnable'.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) mdlSemErrInvalidMessageAccessTo: (recoveredStack1) with: (recoveredStack2) sources: (recoveredStack3) labels: (recoveredStack4).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204093b8; bytecode file offset 0xd05ca4"
!SGMdSWComponentInterface methodsFor: 'recovered'!
analyseIRVWriteMacros: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := LookupTable.
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
            recoveredStack2 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 recoveredBlock13Value3 recoveredBlock13Value4 |
    recoveredBlock13Value0 := recoveredLocal1.
    recoveredBlock13Value1 := recoveredBlock13Arg1.
    recoveredBlock13Value2 := (recoveredBlock13Value1) mdlLabel.
    recoveredBlock13Value3 := recoveredBlock13Arg1.
    recoveredBlock13Value4 := (recoveredBlock13Value0) at: (recoveredBlock13Value2) put: (recoveredBlock13Value3).
    recoveredBlock13Value4
].
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) runnableDecls.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := [:recoveredBlock33Arg1 | 
    | recoveredBlock33Value0 recoveredBlock33Value1 recoveredBlock33Value2 recoveredBlock33Value3 |
    recoveredBlock33Value0 := recoveredBlock33Arg1.
    recoveredBlock33Value1 := (recoveredBlock33Value0) allIssuedRTECalls.
    recoveredBlock33Value2 := [:recoveredBlock33Block43Arg1 | 
    | recoveredBlock33Block43Stack0 recoveredBlock33Block43Stack1 recoveredBlock33Block43Stack2 recoveredBlock33Block43Stack3 recoveredBlock33Block43Stack4 recoveredBlock33Block43PC recoveredBlock33Block43Step recoveredBlock33Block43Done recoveredBlock33Block43Result |
    recoveredBlock33Block43Stack0 := nil.
    recoveredBlock33Block43PC := 50.
    recoveredBlock33Block43Done := false.
    [recoveredBlock33Block43Done not] whileTrue: [
        recoveredBlock33Block43Step := recoveredBlock33Block43PC.
        recoveredBlock33Block43Step = 50 ifTrue: [
            recoveredBlock33Block43Stack1 := nil.
            recoveredBlock33Block43PC := 51.
        ].
        recoveredBlock33Block43Step = 51 ifTrue: [
            recoveredBlock33Block43Stack2 := recoveredBlock33Block43Arg1.
            recoveredBlock33Block43PC := 52.
        ].
        recoveredBlock33Block43Step = 52 ifTrue: [
            recoveredBlock33Block43Stack2 := (recoveredBlock33Block43Stack2) isMdlRteIrvWriteAccess.
            recoveredBlock33Block43PC := 54.
        ].
        recoveredBlock33Block43Step = 54 ifTrue: [
            (recoveredBlock33Block43Stack2) ifTrue: [recoveredBlock33Block43PC := 58] ifFalse: [recoveredBlock33Block43PC := 70].
        ].
        recoveredBlock33Block43Step = 58 ifTrue: [
            recoveredBlock33Block43PC := 59.
        ].
        recoveredBlock33Block43Step = 59 ifTrue: [
            recoveredBlock33Block43Stack1 := recoveredLocal1.
            recoveredBlock33Block43PC := 62.
        ].
        recoveredBlock33Block43Step = 62 ifTrue: [
            recoveredBlock33Block43Stack2 := recoveredBlock33Block43Arg1.
            recoveredBlock33Block43PC := 63.
        ].
        recoveredBlock33Block43Step = 63 ifTrue: [
            recoveredBlock33Block43Stack2 := (recoveredBlock33Block43Stack2) argReceiver.
            recoveredBlock33Block43PC := 65.
        ].
        recoveredBlock33Block43Step = 65 ifTrue: [
            recoveredBlock33Block43Stack2 := (recoveredBlock33Block43Stack2) mdlLabel.
            recoveredBlock33Block43PC := 66.
        ].
        recoveredBlock33Block43Step = 66 ifTrue: [
            recoveredBlock33Block43Stack3 := [].
            recoveredBlock33Block43PC := 68.
        ].
        recoveredBlock33Block43Step = 68 ifTrue: [
            recoveredBlock33Block43Stack1 := (recoveredBlock33Block43Stack1) removeKey: (recoveredBlock33Block43Stack2) ifAbsent: (recoveredBlock33Block43Stack3).
            recoveredBlock33Block43PC := 70.
        ].
        recoveredBlock33Block43Step = 70 ifTrue: [
            recoveredBlock33Block43Result := recoveredBlock33Block43Stack1.
            recoveredBlock33Block43Done := true.
        ].
    ].
    recoveredBlock33Block43Result
].
    recoveredBlock33Value3 := (recoveredBlock33Value1) do: (recoveredBlock33Value2).
    recoveredBlock33Value3
].
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := [:block280faaa0Arg1 :block280faaa0Arg2 | 
    | block280faaa0Value0 block280faaa0Value1 block280faaa0Value2 block280faaa0Value3 |
    block280faaa0Value0 := block280faaa0Arg2.
    block280faaa0Value1 := block280faaa0Arg2.
    block280faaa0Value2 := (block280faaa0Value1) mdlLabel.
    block280faaa0Value3 := (block280faaa0Value0) mdlWarningNo: (56) with: (block280faaa0Value2).
    block280faaa0Value3
].
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack0) keysAndValuesDo: (recoveredStack1).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20409b70; bytecode file offset 0xd06468"
!SGMdSWComponentInterface methodsFor: 'recovered'!
mdlSemAnaMsgAccess: recoveredArg1 usage: recoveredArg2 oneRunnable: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasOneOrMoreValidMappings.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSendUsage.
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
            recoveredStack1 := recoveredArg2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSendReceiveUsage.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) scope.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasCCodeScope.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := 386.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := (recoveredStack3) errLabel.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack4 := (recoveredStack4) errLabel.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) mdlWarningNo: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredPC := 95.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSendUsage.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := 'write only'.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredPC := 67.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := 'read only'.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack4 := ' access in one runnable'.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack4 := Array.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack5 := recoveredArg2.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack5 := (recoveredStack5) msgId.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack5 := (recoveredStack5) source.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack4 := (recoveredStack4) with: (recoveredStack5).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack5 := Array.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack6 := recoveredArg2.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack7 := recoveredArg3.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack6 := (recoveredStack6) errLabelAccessIn: (recoveredStack7).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack5 := (recoveredStack5) with: (recoveredStack6).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack1) mdlSemErrInvalidMessageAccessTo: (recoveredStack2) with: (recoveredStack3) sources: (recoveredStack4) labels: (recoveredStack5).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2044fe64; bytecode file offset 0xd4c758"
!SGMdSWComponentInterface methodsFor: 'recovered'!
semAnaEvents
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) runnableDecls.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) allAREvents.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 |
    recoveredBlock10Value0 := recoveredBlock10Arg1.
    recoveredBlock10Value1 := (recoveredBlock10Value0) runnableRef.
    recoveredBlock10Value2 := [:recoveredBlock10Block18Arg1 | 
    | recoveredBlock10Block18Value0 recoveredBlock10Block18Value1 recoveredBlock10Block18Value2 recoveredBlock10Block18Value3 |
    recoveredBlock10Block18Value0 := recoveredLocal3.
    recoveredBlock10Block18Value1 := recoveredBlock10Block18Arg1.
    recoveredBlock10Block18Value2 := [].
    recoveredBlock10Block18Value3 := (recoveredBlock10Block18Value0) remove: (recoveredBlock10Block18Value1) ifAbsent: (recoveredBlock10Block18Value2).
    recoveredBlock10Block18Value3
].
    recoveredBlock10Value3 := (recoveredBlock10Value1) ifNotNil: (recoveredBlock10Value2).
    recoveredBlock10Value3
].
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 111].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := [:block280ff3f4Arg1 | 
    | block280ff3f4Value0 block280ff3f4Value1 |
    block280ff3f4Value0 := block280ff3f4Arg1.
    block280ff3f4Value1 := (block280ff3f4Value0) source.
    block280ff3f4Value1
].
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := [:block280ff418Arg1 | 
    | block280ff418Value0 block280ff418Value1 |
    block280ff418Value0 := block280ff418Arg1.
    block280ff418Value1 := (block280ff418Value0) errLabel.
    block280ff418Value1
].
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := 16.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := (recoveredStack2) errLabel.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack3 := (recoveredStack3) first.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack3 := (recoveredStack3) createMultiSource: (recoveredStack4) labels: (recoveredStack5).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack0) mdlWarningNo: (recoveredStack1) with: (recoveredStack2) source: (recoveredStack3).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204d6978; bytecode file offset 0xdd3278"
!SGMdSWComponentInterface methodsFor: 'recovered'!
mdlSemErrInvalidMessageAccessTo: recoveredArg1 with: recoveredArg2 sources: recoveredArg3 labels: recoveredArg4
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlRedundantDataSlave.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) scope.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasCCodeScope.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := 273.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := Array.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack5 := (recoveredStack5) errLabel.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack6 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack6 := (recoveredStack6) scope.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack6 := (recoveredStack6) errLabel.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5) with: (recoveredStack6).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack4 := (recoveredStack4) source.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlSemErrNo: (recoveredStack2) withArgs: (recoveredStack3) source: (recoveredStack4).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasOneOrMoreValidMappings.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 75].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlMapping.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlSemErrMissingPrimaryMapping: (recoveredStack2).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock75Value0 recoveredBlock75Value1 |
    recoveredBlock75Value0 := recoveredArg1.
    recoveredBlock75Value1 := (recoveredBlock75Value0) isMdlMappedTargetMissing.
    recoveredBlock75Value1
].
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := [
    'Error should be issued for unmapped ASCET messages only'
].
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlMapping.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := [:recoveredBlock112Arg1 | 
    | recoveredBlock112Value0 recoveredBlock112Value1 recoveredBlock112Value2 recoveredBlock112Value3 recoveredBlock112Value4 recoveredBlock112Value5 |
    recoveredBlock112Value0 := recoveredBlock112Arg1.
    recoveredBlock112Value1 := (recoveredBlock112Value0) source.
    recoveredBlock112Value2 := recoveredArg3.
    recoveredBlock112Value3 := recoveredArg4.
    recoveredBlock112Value4 := (recoveredBlock112Value1) createMultiSource: (recoveredBlock112Value2) labels: (recoveredBlock112Value3).
    recoveredBlock112Value5 := recoveredBlock112Value4.
    recoveredLocal1 := recoveredBlock112Value5.
    recoveredBlock112Value4
].
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := 270.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack3 := (recoveredStack3) errLabel.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            (recoveredStack0) mdlSemErrNo: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) source: (recoveredStack4).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20519978; bytecode file offset 0xe162a0"
!SGMdSWComponentInterface methodsFor: 'recovered'!
analyseRteWriteMacros: recoveredArg1 imports: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := [:recoveredBlock23Arg1 | 
    | recoveredBlock23Value0 recoveredBlock23Value1 recoveredBlock23Value2 recoveredBlock23Value3 recoveredBlock23Value4 recoveredBlock23Value5 recoveredBlock23Value6 |
    recoveredBlock23Value0 := recoveredArg2.
    recoveredBlock23Value1 := recoveredBlock23Arg1.
    recoveredBlock23Value2 := (recoveredBlock23Value1) mdlClass.
    recoveredBlock23Value3 := [].
    recoveredBlock23Value4 := (recoveredBlock23Value0) lookupClassInterface: (recoveredBlock23Value2) ifFail: (recoveredBlock23Value3).
    recoveredBlock23Value5 := [:recoveredBlock23Block41Arg1 | 
    | recoveredBlock23Block41Value0 recoveredBlock23Block41Value1 recoveredBlock23Block41Value2 recoveredBlock23Block41Value3 |
    recoveredBlock23Block41Value0 := recoveredBlock23Block41Arg1.
    recoveredBlock23Block41Value1 := (recoveredBlock23Block41Value0) instVars.
    recoveredBlock23Block41Value2 := [:recoveredBlock23Block41Block51Arg1 | 
    | recoveredBlock23Block41Block51Value0 recoveredBlock23Block41Block51Value1 recoveredBlock23Block41Block51Value2 recoveredBlock23Block41Block51Value3 recoveredBlock23Block41Block51Value4 recoveredBlock23Block41Block51Value5 recoveredBlock23Block41Block51Value6 recoveredBlock23Block41Block51Value7 recoveredBlock23Block41Block51Value8 |
    recoveredBlock23Block41Block51Value0 := recoveredLocal1.
    recoveredBlock23Block41Block51Value1 := recoveredBlock23Arg1.
    recoveredBlock23Block41Block51Value2 := (recoveredBlock23Block41Block51Value1) mdlLabel.
    recoveredBlock23Block41Block51Value3 := (recoveredBlock23Block41Block51Value2) , ('.').
    recoveredBlock23Block41Block51Value4 := recoveredBlock23Block41Block51Arg1.
    recoveredBlock23Block41Block51Value5 := (recoveredBlock23Block41Block51Value4) mdlLabel.
    recoveredBlock23Block41Block51Value6 := (recoveredBlock23Block41Block51Value3) , (recoveredBlock23Block41Block51Value5).
    recoveredBlock23Block41Block51Value7 := recoveredBlock23Arg1.
    recoveredBlock23Block41Block51Value8 := (recoveredBlock23Block41Block51Value0) at: (recoveredBlock23Block41Block51Value6) put: (recoveredBlock23Block41Block51Value7).
    recoveredBlock23Block41Block51Value8
].
    recoveredBlock23Block41Value3 := (recoveredBlock23Block41Value1) do: (recoveredBlock23Block41Value2).
    recoveredBlock23Block41Value3
].
    recoveredBlock23Value6 := (recoveredBlock23Value4) ifNotNil: (recoveredBlock23Value5).
    recoveredBlock23Value6
].
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) runnableDecls.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := [:recoveredBlock91Arg1 | 
    | recoveredBlock91Value0 recoveredBlock91Value1 recoveredBlock91Value2 recoveredBlock91Value3 |
    recoveredBlock91Value0 := recoveredBlock91Arg1.
    recoveredBlock91Value1 := (recoveredBlock91Value0) allIssuedRTECalls.
    recoveredBlock91Value2 := [:recoveredBlock91Block101Arg1 | 
    | recoveredBlock91Block101Stack0 recoveredBlock91Block101Stack1 recoveredBlock91Block101Stack2 recoveredBlock91Block101Stack3 recoveredBlock91Block101Stack4 recoveredBlock91Block101PC recoveredBlock91Block101Step recoveredBlock91Block101Done recoveredBlock91Block101Result |
    recoveredBlock91Block101Stack0 := nil.
    recoveredBlock91Block101PC := 108.
    recoveredBlock91Block101Done := false.
    [recoveredBlock91Block101Done not] whileTrue: [
        recoveredBlock91Block101Step := recoveredBlock91Block101PC.
        recoveredBlock91Block101Step = 108 ifTrue: [
            recoveredBlock91Block101Stack1 := nil.
            recoveredBlock91Block101PC := 109.
        ].
        recoveredBlock91Block101Step = 109 ifTrue: [
            recoveredBlock91Block101Stack2 := recoveredBlock91Block101Arg1.
            recoveredBlock91Block101PC := 110.
        ].
        recoveredBlock91Block101Step = 110 ifTrue: [
            recoveredBlock91Block101Stack2 := (recoveredBlock91Block101Stack2) isRteWrite.
            recoveredBlock91Block101PC := 112.
        ].
        recoveredBlock91Block101Step = 112 ifTrue: [
            (recoveredBlock91Block101Stack2) ifTrue: [recoveredBlock91Block101PC := 128] ifFalse: [recoveredBlock91Block101PC := 116].
        ].
        recoveredBlock91Block101Step = 116 ifTrue: [
            recoveredBlock91Block101Stack2 := recoveredBlock91Block101Arg1.
            recoveredBlock91Block101PC := 117.
        ].
        recoveredBlock91Block101Step = 117 ifTrue: [
            recoveredBlock91Block101Stack2 := (recoveredBlock91Block101Stack2) isRteIWrite.
            recoveredBlock91Block101PC := 119.
        ].
        recoveredBlock91Block101Step = 119 ifTrue: [
            (recoveredBlock91Block101Stack2) ifTrue: [recoveredBlock91Block101PC := 128] ifFalse: [recoveredBlock91Block101PC := 122].
        ].
        recoveredBlock91Block101Step = 122 ifTrue: [
            recoveredBlock91Block101Stack2 := recoveredBlock91Block101Arg1.
            recoveredBlock91Block101PC := 123.
        ].
        recoveredBlock91Block101Step = 123 ifTrue: [
            recoveredBlock91Block101Stack2 := (recoveredBlock91Block101Stack2) isRteIWriteRef.
            recoveredBlock91Block101PC := 125.
        ].
        recoveredBlock91Block101Step = 125 ifTrue: [
            (recoveredBlock91Block101Stack2) ifTrue: [recoveredBlock91Block101PC := 128] ifFalse: [recoveredBlock91Block101PC := 141].
        ].
        recoveredBlock91Block101Step = 128 ifTrue: [
            recoveredBlock91Block101PC := 129.
        ].
        recoveredBlock91Block101Step = 129 ifTrue: [
            recoveredBlock91Block101Stack1 := recoveredLocal1.
            recoveredBlock91Block101PC := 132.
        ].
        recoveredBlock91Block101Step = 132 ifTrue: [
            recoveredBlock91Block101Stack2 := recoveredBlock91Block101Arg1.
            recoveredBlock91Block101PC := 133.
        ].
        recoveredBlock91Block101Step = 133 ifTrue: [
            recoveredBlock91Block101Stack2 := (recoveredBlock91Block101Stack2) argReceiver.
            recoveredBlock91Block101PC := 135.
        ].
        recoveredBlock91Block101Step = 135 ifTrue: [
            recoveredBlock91Block101Stack2 := (recoveredBlock91Block101Stack2) mdlFullLabel.
            recoveredBlock91Block101PC := 137.
        ].
        recoveredBlock91Block101Step = 137 ifTrue: [
            recoveredBlock91Block101Stack3 := [].
            recoveredBlock91Block101PC := 139.
        ].
        recoveredBlock91Block101Step = 139 ifTrue: [
            recoveredBlock91Block101Stack1 := (recoveredBlock91Block101Stack1) removeKey: (recoveredBlock91Block101Stack2) ifAbsent: (recoveredBlock91Block101Stack3).
            recoveredBlock91Block101PC := 141.
        ].
        recoveredBlock91Block101Step = 141 ifTrue: [
            recoveredBlock91Block101Result := recoveredBlock91Block101Stack1.
            recoveredBlock91Block101Done := true.
        ].
    ].
    recoveredBlock91Block101Result
].
    recoveredBlock91Value3 := (recoveredBlock91Value1) do: (recoveredBlock91Value2).
    recoveredBlock91Value3
].
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := [:block2810bce8Arg1 :block2810bce8Arg2 | 
    | block2810bce8Local1 block2810bce8Value0 block2810bce8Value1 block2810bce8Value2 block2810bce8Value3 block2810bce8Value4 block2810bce8Value5 block2810bce8Value6 block2810bce8Value7 block2810bce8Value8 block2810bce8Value9 block2810bce8Value10 block2810bce8Value11 block2810bce8Value12 block2810bce8Value13 |
    block2810bce8Value0 := block2810bce8Arg1.
    block2810bce8Value1 := (block2810bce8Value0) subStrings: ($.).
    block2810bce8Local1 := block2810bce8Value1.
    block2810bce8Value2 := block2810bce8Arg2.
    block2810bce8Value3 := block2810bce8Local1.
    block2810bce8Value4 := (block2810bce8Value3) last.
    block2810bce8Value5 := block2810bce8Local1.
    block2810bce8Value6 := (block2810bce8Value5) first.
    block2810bce8Value7 := block2810bce8Arg2.
    block2810bce8Value8 := (block2810bce8Value7) scope.
    block2810bce8Value9 := (block2810bce8Value8) componentTypeLabel.
    block2810bce8Value10 := block2810bce8Arg2.
    block2810bce8Value11 := (block2810bce8Value10) scope.
    block2810bce8Value12 := (block2810bce8Value11) mdlLabel.
    block2810bce8Value13 := (block2810bce8Value2) mdlWarningNo: (51) with: (block2810bce8Value4) with: (block2810bce8Value6) with: (block2810bce8Value9) with: (block2810bce8Value12).
    block2810bce8Value13
].
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            (recoveredStack0) keysAndValuesDo: (recoveredStack1).
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20605604; bytecode file offset 0xf01f64"
!SGMdSWComponentInterface methodsFor: 'recovered'!
analyseIRVUsage: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
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
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) runnableDecls.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := [:recoveredBlock27Arg1 | 
    | recoveredBlock27Value0 recoveredBlock27Value1 recoveredBlock27Value2 recoveredBlock27Value3 recoveredBlock27Value4 |
    recoveredBlock27Value0 := (self) errorHandler.
    recoveredBlock27Value1 := recoveredBlock27Arg1.
    recoveredBlock27Value2 := (recoveredBlock27Value1) errLabel.
    recoveredBlock27Value3 := [
    | recoveredBlock27Block41Value0 recoveredBlock27Block41Value1 recoveredBlock27Block41Value2 recoveredBlock27Block41Value3 |
    recoveredBlock27Block41Value0 := recoveredBlock27Arg1.
    recoveredBlock27Block41Value1 := (recoveredBlock27Block41Value0) allIssuedRTECalls.
    recoveredBlock27Block41Value2 := [:recoveredBlock27Block41Block53Arg1 | 
    | recoveredBlock27Block41Block53Local1 recoveredBlock27Block41Block53Stack0 recoveredBlock27Block41Block53Stack1 recoveredBlock27Block41Block53Stack2 recoveredBlock27Block41Block53Stack3 recoveredBlock27Block41Block53Stack4 recoveredBlock27Block41Block53PC recoveredBlock27Block41Block53Step recoveredBlock27Block41Block53Done recoveredBlock27Block41Block53Result |
    recoveredBlock27Block41Block53Stack0 := nil.
    recoveredBlock27Block41Block53PC := 60.
    recoveredBlock27Block41Block53Done := false.
    [recoveredBlock27Block41Block53Done not] whileTrue: [
        recoveredBlock27Block41Block53Step := recoveredBlock27Block41Block53PC.
        recoveredBlock27Block41Block53Step = 60 ifTrue: [
            recoveredBlock27Block41Block53Stack1 := nil.
            recoveredBlock27Block41Block53PC := 61.
        ].
        recoveredBlock27Block41Block53Step = 61 ifTrue: [
            recoveredBlock27Block41Block53Stack2 := recoveredBlock27Block41Block53Arg1.
            recoveredBlock27Block41Block53PC := 64.
        ].
        recoveredBlock27Block41Block53Step = 64 ifTrue: [
            recoveredBlock27Block41Block53Stack2 := (recoveredBlock27Block41Block53Stack2) isMdlRteIrvAccess.
            recoveredBlock27Block41Block53PC := 66.
        ].
        recoveredBlock27Block41Block53Step = 66 ifTrue: [
            (recoveredBlock27Block41Block53Stack2) ifTrue: [recoveredBlock27Block41Block53PC := 70] ifFalse: [recoveredBlock27Block41Block53PC := 208].
        ].
        recoveredBlock27Block41Block53Step = 70 ifTrue: [
            recoveredBlock27Block41Block53PC := 71.
        ].
        recoveredBlock27Block41Block53Step = 71 ifTrue: [
            recoveredBlock27Block41Block53Stack1 := recoveredLocal2.
            recoveredBlock27Block41Block53PC := 74.
        ].
        recoveredBlock27Block41Block53Step = 74 ifTrue: [
            recoveredBlock27Block41Block53Stack2 := recoveredBlock27Block41Block53Arg1.
            recoveredBlock27Block41Block53PC := 77.
        ].
        recoveredBlock27Block41Block53Step = 77 ifTrue: [
            recoveredBlock27Block41Block53Stack2 := (recoveredBlock27Block41Block53Stack2) argReceiver.
            recoveredBlock27Block41Block53PC := 79.
        ].
        recoveredBlock27Block41Block53Step = 79 ifTrue: [
            recoveredBlock27Block41Block53Stack2 := (recoveredBlock27Block41Block53Stack2) errLabel.
            recoveredBlock27Block41Block53PC := 81.
        ].
        recoveredBlock27Block41Block53Step = 81 ifTrue: [
            recoveredBlock27Block41Block53Stack3 := [
    | block2811cf44Value0 block2811cf44Value1 |
    block2811cf44Value0 := Set.
    block2811cf44Value1 := (block2811cf44Value0) new.
    block2811cf44Value1
].
            recoveredBlock27Block41Block53PC := 83.
        ].
        recoveredBlock27Block41Block53Step = 83 ifTrue: [
            recoveredBlock27Block41Block53PC := 90.
        ].
        recoveredBlock27Block41Block53Step = 90 ifTrue: [
            recoveredBlock27Block41Block53Stack1 := (recoveredBlock27Block41Block53Stack1) at: (recoveredBlock27Block41Block53Stack2) ifAbsentPut: (recoveredBlock27Block41Block53Stack3).
            recoveredBlock27Block41Block53PC := 92.
        ].
        recoveredBlock27Block41Block53Step = 92 ifTrue: [
            recoveredBlock27Block41Block53Stack2 := recoveredBlock27Arg1.
            recoveredBlock27Block41Block53PC := 95.
        ].
        recoveredBlock27Block41Block53Step = 95 ifTrue: [
            (recoveredBlock27Block41Block53Stack1) add: (recoveredBlock27Block41Block53Stack2).
            recoveredBlock27Block41Block53PC := 97.
        ].
        recoveredBlock27Block41Block53Step = 97 ifTrue: [
            recoveredBlock27Block41Block53Stack1 := recoveredBlock27Block41Block53Arg1.
            recoveredBlock27Block41Block53PC := 100.
        ].
        recoveredBlock27Block41Block53Step = 100 ifTrue: [
            recoveredBlock27Block41Block53Stack1 := (recoveredBlock27Block41Block53Stack1) runnableEntity.
            recoveredBlock27Block41Block53PC := 102.
        ].
        recoveredBlock27Block41Block53Step = 102 ifTrue: [
            recoveredBlock27Block41Block53Stack2 := recoveredBlock27Block41Block53Stack1.
            recoveredBlock27Block41Block53PC := 103.
        ].
        recoveredBlock27Block41Block53Step = 103 ifTrue: [
            recoveredBlock27Block41Block53Local1 := recoveredBlock27Block41Block53Stack2.
            recoveredBlock27Block41Block53PC := 106.
        ].
        recoveredBlock27Block41Block53Step = 106 ifTrue: [
            recoveredBlock27Block41Block53Stack1 := (recoveredBlock27Block41Block53Stack1) isCollection.
            recoveredBlock27Block41Block53PC := 108.
        ].
        recoveredBlock27Block41Block53Step = 108 ifTrue: [
            (recoveredBlock27Block41Block53Stack1) ifTrue: [recoveredBlock27Block41Block53PC := 137] ifFalse: [recoveredBlock27Block41Block53PC := 112].
        ].
        recoveredBlock27Block41Block53Step = 112 ifTrue: [
            recoveredBlock27Block41Block53Stack1 := recoveredLocal1.
            recoveredBlock27Block41Block53PC := 115.
        ].
        recoveredBlock27Block41Block53Step = 115 ifTrue: [
            recoveredBlock27Block41Block53Stack2 := recoveredBlock27Block41Block53Arg1.
            recoveredBlock27Block41Block53PC := 118.
        ].
        recoveredBlock27Block41Block53Step = 118 ifTrue: [
            recoveredBlock27Block41Block53Stack2 := (recoveredBlock27Block41Block53Stack2) errLabelRteMacroName.
            recoveredBlock27Block41Block53PC := 120.
        ].
        recoveredBlock27Block41Block53Step = 120 ifTrue: [
            recoveredBlock27Block41Block53Stack3 := [
    | block2811cf68Value0 block2811cf68Value1 |
    block2811cf68Value0 := Set.
    block2811cf68Value1 := (block2811cf68Value0) new.
    block2811cf68Value1
].
            recoveredBlock27Block41Block53PC := 122.
        ].
        recoveredBlock27Block41Block53Step = 122 ifTrue: [
            recoveredBlock27Block41Block53PC := 130.
        ].
        recoveredBlock27Block41Block53Step = 130 ifTrue: [
            recoveredBlock27Block41Block53Stack1 := (recoveredBlock27Block41Block53Stack1) at: (recoveredBlock27Block41Block53Stack2) ifAbsentPut: (recoveredBlock27Block41Block53Stack3).
            recoveredBlock27Block41Block53PC := 132.
        ].
        recoveredBlock27Block41Block53Step = 132 ifTrue: [
            recoveredBlock27Block41Block53Stack2 := recoveredBlock27Block41Block53Local1.
            recoveredBlock27Block41Block53PC := 135.
        ].
        recoveredBlock27Block41Block53Step = 135 ifTrue: [
            (recoveredBlock27Block41Block53Stack1) add: (recoveredBlock27Block41Block53Stack2).
            recoveredBlock27Block41Block53PC := 137.
        ].
        recoveredBlock27Block41Block53Step = 137 ifTrue: [
            recoveredBlock27Block41Block53Stack1 := nil.
            recoveredBlock27Block41Block53PC := 138.
        ].
        recoveredBlock27Block41Block53Step = 138 ifTrue: [
            recoveredBlock27Block41Block53Stack2 := recoveredBlock27Block41Block53Arg1.
            recoveredBlock27Block41Block53PC := 141.
        ].
        recoveredBlock27Block41Block53Step = 141 ifTrue: [
            recoveredBlock27Block41Block53Stack2 := (recoveredBlock27Block41Block53Stack2) isMdlRteExplicitIrvAccess.
            recoveredBlock27Block41Block53PC := 143.
        ].
        recoveredBlock27Block41Block53Step = 143 ifTrue: [
            (recoveredBlock27Block41Block53Stack2) ifTrue: [recoveredBlock27Block41Block53PC := 146] ifFalse: [recoveredBlock27Block41Block53PC := 204].
        ].
        recoveredBlock27Block41Block53Step = 146 ifTrue: [
            recoveredBlock27Block41Block53PC := 147.
        ].
        recoveredBlock27Block41Block53Step = 147 ifTrue: [
            recoveredBlock27Block41Block53Stack1 := recoveredBlock27Block41Block53Arg1.
            recoveredBlock27Block41Block53PC := 150.
        ].
        recoveredBlock27Block41Block53Step = 150 ifTrue: [
            recoveredBlock27Block41Block53Stack1 := (recoveredBlock27Block41Block53Stack1) mdlMapping.
            recoveredBlock27Block41Block53PC := 152.
        ].
        recoveredBlock27Block41Block53Step = 152 ifTrue: [
            recoveredBlock27Block41Block53Stack2 := [:recoveredBlock27Block41Block53Block152Arg1 | 
    | recoveredBlock27Block41Block53Block152Stack0 recoveredBlock27Block41Block53Block152Stack1 recoveredBlock27Block41Block53Block152Stack2 recoveredBlock27Block41Block53Block152Stack3 recoveredBlock27Block41Block53Block152Stack4 recoveredBlock27Block41Block53Block152Stack5 recoveredBlock27Block41Block53Block152PC recoveredBlock27Block41Block53Block152Step recoveredBlock27Block41Block53Block152Done recoveredBlock27Block41Block53Block152Result |
    recoveredBlock27Block41Block53Block152Stack0 := nil.
    recoveredBlock27Block41Block53Block152PC := 158.
    recoveredBlock27Block41Block53Block152Done := false.
    [recoveredBlock27Block41Block53Block152Done not] whileTrue: [
        recoveredBlock27Block41Block53Block152Step := recoveredBlock27Block41Block53Block152PC.
        recoveredBlock27Block41Block53Block152Step = 158 ifTrue: [
            recoveredBlock27Block41Block53Block152Stack1 := nil.
            recoveredBlock27Block41Block53Block152PC := 159.
        ].
        recoveredBlock27Block41Block53Block152Step = 159 ifTrue: [
            recoveredBlock27Block41Block53Block152Stack2 := recoveredBlock27Block41Block53Block152Arg1.
            recoveredBlock27Block41Block53Block152PC := 160.
        ].
        recoveredBlock27Block41Block53Block152Step = 160 ifTrue: [
            recoveredBlock27Block41Block53Block152Stack2 := (recoveredBlock27Block41Block53Block152Stack2) fromVarDecl.
            recoveredBlock27Block41Block53Block152PC := 162.
        ].
        recoveredBlock27Block41Block53Block152Step = 162 ifTrue: [
            recoveredBlock27Block41Block53Block152Stack2 := (recoveredBlock27Block41Block53Block152Stack2) isMdlMessage.
            recoveredBlock27Block41Block53Block152PC := 164.
        ].
        recoveredBlock27Block41Block53Block152Step = 164 ifTrue: [
            (recoveredBlock27Block41Block53Block152Stack2) ifTrue: [recoveredBlock27Block41Block53Block152PC := 168] ifFalse: [recoveredBlock27Block41Block53Block152PC := 201].
        ].
        recoveredBlock27Block41Block53Block152Step = 168 ifTrue: [
            recoveredBlock27Block41Block53Block152PC := 169.
        ].
        recoveredBlock27Block41Block53Block152Step = 169 ifTrue: [
            recoveredBlock27Block41Block53Block152Stack1 := recoveredBlock27Block41Block53Arg1.
            recoveredBlock27Block41Block53Block152PC := 172.
        ].
        recoveredBlock27Block41Block53Block152Step = 172 ifTrue: [
            recoveredBlock27Block41Block53Block152Stack1 := (recoveredBlock27Block41Block53Block152Stack1) argReceiver.
            recoveredBlock27Block41Block53Block152PC := 174.
        ].
        recoveredBlock27Block41Block53Block152Step = 174 ifTrue: [
            recoveredBlock27Block41Block53Block152Stack2 := 289.
            recoveredBlock27Block41Block53Block152PC := 178.
        ].
        recoveredBlock27Block41Block53Block152Step = 178 ifTrue: [
            recoveredBlock27Block41Block53Block152Stack3 := 'via mapped message ""'.
            recoveredBlock27Block41Block53Block152PC := 180.
        ].
        recoveredBlock27Block41Block53Block152Step = 180 ifTrue: [
            recoveredBlock27Block41Block53Block152Stack4 := recoveredBlock27Block41Block53Block152Arg1.
            recoveredBlock27Block41Block53Block152PC := 181.
        ].
        recoveredBlock27Block41Block53Block152Step = 181 ifTrue: [
            recoveredBlock27Block41Block53Block152Stack4 := (recoveredBlock27Block41Block53Block152Stack4) fromVarDecl.
            recoveredBlock27Block41Block53Block152PC := 183.
        ].
        recoveredBlock27Block41Block53Block152Step = 183 ifTrue: [
            recoveredBlock27Block41Block53Block152Stack4 := (recoveredBlock27Block41Block53Block152Stack4) errLabel.
            recoveredBlock27Block41Block53Block152PC := 185.
        ].
        recoveredBlock27Block41Block53Block152Step = 185 ifTrue: [
            recoveredBlock27Block41Block53Block152Stack3 := (recoveredBlock27Block41Block53Block152Stack3) , (recoveredBlock27Block41Block53Block152Stack4).
            recoveredBlock27Block41Block53Block152PC := 187.
        ].
        recoveredBlock27Block41Block53Block152Step = 187 ifTrue: [
            recoveredBlock27Block41Block53Block152Stack4 := '""'.
            recoveredBlock27Block41Block53Block152PC := 189.
        ].
        recoveredBlock27Block41Block53Block152Step = 189 ifTrue: [
            recoveredBlock27Block41Block53Block152Stack3 := (recoveredBlock27Block41Block53Block152Stack3) , (recoveredBlock27Block41Block53Block152Stack4).
            recoveredBlock27Block41Block53Block152PC := 191.
        ].
        recoveredBlock27Block41Block53Block152Step = 191 ifTrue: [
            recoveredBlock27Block41Block53Block152Stack4 := recoveredBlock27Block41Block53Arg1.
            recoveredBlock27Block41Block53Block152PC := 194.
        ].
        recoveredBlock27Block41Block53Block152Step = 194 ifTrue: [
            recoveredBlock27Block41Block53Block152Stack4 := (recoveredBlock27Block41Block53Block152Stack4) argReceiver.
            recoveredBlock27Block41Block53Block152PC := 196.
        ].
        recoveredBlock27Block41Block53Block152Step = 196 ifTrue: [
            recoveredBlock27Block41Block53Block152Stack4 := (recoveredBlock27Block41Block53Block152Stack4) errLabel.
            recoveredBlock27Block41Block53Block152PC := 198.
        ].
        recoveredBlock27Block41Block53Block152Step = 198 ifTrue: [
            recoveredBlock27Block41Block53Block152Stack1 := (recoveredBlock27Block41Block53Block152Stack1) mdlWarningNo: (recoveredBlock27Block41Block53Block152Stack2) with: (recoveredBlock27Block41Block53Block152Stack3) with: (recoveredBlock27Block41Block53Block152Stack4).
            recoveredBlock27Block41Block53Block152PC := 201.
        ].
        recoveredBlock27Block41Block53Block152Step = 201 ifTrue: [
            recoveredBlock27Block41Block53Block152Result := recoveredBlock27Block41Block53Block152Stack1.
            recoveredBlock27Block41Block53Block152Done := true.
        ].
    ].
    recoveredBlock27Block41Block53Block152Result
].
            recoveredBlock27Block41Block53PC := 202.
        ].
        recoveredBlock27Block41Block53Step = 202 ifTrue: [
            recoveredBlock27Block41Block53Stack1 := (recoveredBlock27Block41Block53Stack1) ifNotNil: (recoveredBlock27Block41Block53Stack2).
            recoveredBlock27Block41Block53PC := 204.
        ].
        recoveredBlock27Block41Block53Step = 204 ifTrue: [
            recoveredBlock27Block41Block53Stack2 := nil.
            recoveredBlock27Block41Block53PC := 205.
        ].
        recoveredBlock27Block41Block53Step = 205 ifTrue: [
            recoveredBlock27Block41Block53Local1 := recoveredBlock27Block41Block53Stack2.
            recoveredBlock27Block41Block53PC := 208.
        ].
        recoveredBlock27Block41Block53Step = 208 ifTrue: [
            recoveredBlock27Block41Block53Result := recoveredBlock27Block41Block53Stack1.
            recoveredBlock27Block41Block53Done := true.
        ].
    ].
    recoveredBlock27Block41Block53Result
].
    recoveredBlock27Block41Value3 := (recoveredBlock27Block41Value1) do: (recoveredBlock27Block41Value2).
    recoveredBlock27Block41Value3
].
    recoveredBlock27Value4 := (recoveredBlock27Value0) collectMessagesInSubUnit: (recoveredBlock27Value2) do: (recoveredBlock27Value3).
    recoveredBlock27Value4
].
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack1 := [:recoveredBlock220Arg1 | 
    | recoveredBlock220Value0 recoveredBlock220Value1 recoveredBlock220Value2 recoveredBlock220Value3 recoveredBlock220Value4 recoveredBlock220Value5 |
    recoveredBlock220Value0 := recoveredLocal2.
    recoveredBlock220Value1 := recoveredBlock220Arg1.
    recoveredBlock220Value2 := (recoveredBlock220Value1) errLabel.
    recoveredBlock220Value3 := [
    | recoveredBlock220Block234Value0 recoveredBlock220Block234Value1 recoveredBlock220Block234Value2 recoveredBlock220Block234Value3 |
    recoveredBlock220Block234Value0 := recoveredBlock220Arg1.
    recoveredBlock220Block234Value1 := recoveredBlock220Arg1.
    recoveredBlock220Block234Value2 := (recoveredBlock220Block234Value1) errLabel.
    recoveredBlock220Block234Value3 := (recoveredBlock220Block234Value0) mdlWarningNo: (285) with: (recoveredBlock220Block234Value2).
    recoveredBlock220Block234Value3
].
    recoveredBlock220Value4 := [:recoveredBlock220Block254Arg1 | 
    | recoveredBlock220Block254Stack0 recoveredBlock220Block254Stack1 recoveredBlock220Block254Stack2 recoveredBlock220Block254Stack3 recoveredBlock220Block254Stack4 recoveredBlock220Block254Stack5 recoveredBlock220Block254PC recoveredBlock220Block254Step recoveredBlock220Block254Done recoveredBlock220Block254Result |
    recoveredBlock220Block254Stack0 := nil.
    recoveredBlock220Block254PC := 260.
    recoveredBlock220Block254Done := false.
    [recoveredBlock220Block254Done not] whileTrue: [
        recoveredBlock220Block254Step := recoveredBlock220Block254PC.
        recoveredBlock220Block254Step = 260 ifTrue: [
            recoveredBlock220Block254Stack1 := nil.
            recoveredBlock220Block254PC := 261.
        ].
        recoveredBlock220Block254Step = 261 ifTrue: [
            recoveredBlock220Block254Stack2 := recoveredBlock220Block254Arg1.
            recoveredBlock220Block254PC := 262.
        ].
        recoveredBlock220Block254Step = 262 ifTrue: [
            recoveredBlock220Block254Stack2 := (recoveredBlock220Block254Stack2) size.
            recoveredBlock220Block254PC := 264.
        ].
        recoveredBlock220Block254Step = 264 ifTrue: [
            recoveredBlock220Block254Stack3 := 1.
            recoveredBlock220Block254PC := 266.
        ].
        recoveredBlock220Block254Step = 266 ifTrue: [
            (recoveredBlock220Block254Stack2 ~~ recoveredBlock220Block254Stack3) ifTrue: [recoveredBlock220Block254PC := 291] ifFalse: [recoveredBlock220Block254PC := 270].
        ].
        recoveredBlock220Block254Step = 270 ifTrue: [
            recoveredBlock220Block254PC := 271.
        ].
        recoveredBlock220Block254Step = 271 ifTrue: [
            recoveredBlock220Block254Stack1 := recoveredBlock220Arg1.
            recoveredBlock220Block254PC := 274.
        ].
        recoveredBlock220Block254Step = 274 ifTrue: [
            recoveredBlock220Block254Stack2 := 286.
            recoveredBlock220Block254PC := 278.
        ].
        recoveredBlock220Block254Step = 278 ifTrue: [
            recoveredBlock220Block254Stack3 := recoveredBlock220Arg1.
            recoveredBlock220Block254PC := 281.
        ].
        recoveredBlock220Block254Step = 281 ifTrue: [
            recoveredBlock220Block254Stack3 := (recoveredBlock220Block254Stack3) errLabel.
            recoveredBlock220Block254PC := 283.
        ].
        recoveredBlock220Block254Step = 283 ifTrue: [
            recoveredBlock220Block254Stack4 := recoveredBlock220Block254Arg1.
            recoveredBlock220Block254PC := 284.
        ].
        recoveredBlock220Block254Step = 284 ifTrue: [
            recoveredBlock220Block254Stack4 := (recoveredBlock220Block254Stack4) anyElement.
            recoveredBlock220Block254PC := 286.
        ].
        recoveredBlock220Block254Step = 286 ifTrue: [
            recoveredBlock220Block254Stack4 := (recoveredBlock220Block254Stack4) errLabel.
            recoveredBlock220Block254PC := 288.
        ].
        recoveredBlock220Block254Step = 288 ifTrue: [
            recoveredBlock220Block254Stack1 := (recoveredBlock220Block254Stack1) mdlWarningNo: (recoveredBlock220Block254Stack2) with: (recoveredBlock220Block254Stack3) with: (recoveredBlock220Block254Stack4).
            recoveredBlock220Block254PC := 291.
        ].
        recoveredBlock220Block254Step = 291 ifTrue: [
            recoveredBlock220Block254Result := recoveredBlock220Block254Stack1.
            recoveredBlock220Block254Done := true.
        ].
    ].
    recoveredBlock220Block254Result
].
    recoveredBlock220Value5 := (recoveredBlock220Value0) at: (recoveredBlock220Value2) ifAbsent: (recoveredBlock220Value3) ifPresent: (recoveredBlock220Value4).
    recoveredBlock220Value5
].
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack1 := [:recoveredBlock301Arg1 :recoveredBlock301Arg2 | 
    | recoveredBlock301Local1 recoveredBlock301Local2 recoveredBlock301Local3 recoveredBlock301Stack0 recoveredBlock301Stack1 recoveredBlock301Stack2 recoveredBlock301Stack3 recoveredBlock301Stack4 recoveredBlock301Stack5 recoveredBlock301Stack6 recoveredBlock301Stack7 recoveredBlock301Stack8 recoveredBlock301PC recoveredBlock301Step recoveredBlock301Done recoveredBlock301Result |
    recoveredBlock301Stack0 := self.
    recoveredBlock301PC := 308.
    recoveredBlock301Done := false.
    [recoveredBlock301Done not] whileTrue: [
        recoveredBlock301Step := recoveredBlock301PC.
        recoveredBlock301Step = 308 ifTrue: [
            recoveredBlock301Stack1 := nil.
            recoveredBlock301PC := 309.
        ].
        recoveredBlock301Step = 309 ifTrue: [
            recoveredBlock301Stack2 := recoveredBlock301Arg2.
            recoveredBlock301PC := 312.
        ].
        recoveredBlock301Step = 312 ifTrue: [
            recoveredBlock301Stack2 := (recoveredBlock301Stack2) size.
            recoveredBlock301PC := 314.
        ].
        recoveredBlock301Step = 314 ifTrue: [
            recoveredBlock301Stack3 := 1.
            recoveredBlock301PC := 316.
        ].
        recoveredBlock301Step = 316 ifTrue: [
            recoveredBlock301Stack2 := (recoveredBlock301Stack2) > (recoveredBlock301Stack3).
            recoveredBlock301PC := 317.
        ].
        recoveredBlock301Step = 317 ifTrue: [
            (recoveredBlock301Stack2) ifTrue: [recoveredBlock301PC := 320] ifFalse: [recoveredBlock301PC := 446].
        ].
        recoveredBlock301Step = 320 ifTrue: [
            recoveredBlock301PC := 321.
        ].
        recoveredBlock301Step = 321 ifTrue: [
            recoveredBlock301Stack1 := ''.
            recoveredBlock301PC := 323.
        ].
        recoveredBlock301Step = 323 ifTrue: [
            recoveredBlock301Local3 := recoveredBlock301Stack1.
            recoveredBlock301PC := 326.
        ].
        recoveredBlock301Step = 326 ifTrue: [
            recoveredBlock301Stack1 := OrderedCollection.
            recoveredBlock301PC := 328.
        ].
        recoveredBlock301Step = 328 ifTrue: [
            recoveredBlock301Stack1 := (recoveredBlock301Stack1) new.
            recoveredBlock301PC := 329.
        ].
        recoveredBlock301Step = 329 ifTrue: [
            recoveredBlock301Local1 := recoveredBlock301Stack1.
            recoveredBlock301PC := 332.
        ].
        recoveredBlock301Step = 332 ifTrue: [
            recoveredBlock301Stack1 := OrderedCollection.
            recoveredBlock301PC := 334.
        ].
        recoveredBlock301Step = 334 ifTrue: [
            recoveredBlock301Stack1 := (recoveredBlock301Stack1) new.
            recoveredBlock301PC := 335.
        ].
        recoveredBlock301Step = 335 ifTrue: [
            recoveredBlock301Local2 := recoveredBlock301Stack1.
            recoveredBlock301PC := 338.
        ].
        recoveredBlock301Step = 338 ifTrue: [
            recoveredBlock301Stack1 := recoveredBlock301Arg2.
            recoveredBlock301PC := 341.
        ].
        recoveredBlock301Step = 341 ifTrue: [
            recoveredBlock301Stack2 := [:block2811cf8cArg1 :block2811cf8cArg2 | 
    | block2811cf8cValue0 block2811cf8cValue1 block2811cf8cValue2 block2811cf8cValue3 block2811cf8cValue4 |
    block2811cf8cValue0 := block2811cf8cArg1.
    block2811cf8cValue1 := (block2811cf8cValue0) errLabel.
    block2811cf8cValue2 := block2811cf8cArg2.
    block2811cf8cValue3 := (block2811cf8cValue2) errLabel.
    block2811cf8cValue4 := (block2811cf8cValue1) < (block2811cf8cValue3).
    block2811cf8cValue4
].
            recoveredBlock301PC := 343.
        ].
        recoveredBlock301Step = 343 ifTrue: [
            recoveredBlock301PC := 354.
        ].
        recoveredBlock301Step = 354 ifTrue: [
            recoveredBlock301Stack1 := (recoveredBlock301Stack1) asSortedCollection: (recoveredBlock301Stack2).
            recoveredBlock301PC := 356.
        ].
        recoveredBlock301Step = 356 ifTrue: [
            recoveredBlock301Stack2 := [:recoveredBlock301Block356Arg1 | 
    | recoveredBlock301Block356Value0 recoveredBlock301Block356Value1 recoveredBlock301Block356Value2 recoveredBlock301Block356Value3 recoveredBlock301Block356Value4 recoveredBlock301Block356Value5 recoveredBlock301Block356Value6 recoveredBlock301Block356Value7 recoveredBlock301Block356Value8 recoveredBlock301Block356Value9 recoveredBlock301Block356Value10 |
    recoveredBlock301Block356Value0 := recoveredBlock301Local3.
    recoveredBlock301Block356Value1 := recoveredBlock301Block356Arg1.
    recoveredBlock301Block356Value2 := (recoveredBlock301Block356Value1) errLabel.
    recoveredBlock301Block356Value3 := (recoveredBlock301Block356Value0) , (recoveredBlock301Block356Value2).
    recoveredBlock301Local3 := recoveredBlock301Block356Value3.
    recoveredBlock301Block356Value4 := recoveredBlock301Local1.
    recoveredBlock301Block356Value5 := recoveredBlock301Block356Arg1.
    recoveredBlock301Block356Value6 := (recoveredBlock301Block356Value5) errLabel.
    (recoveredBlock301Block356Value4) add: (recoveredBlock301Block356Value6).
    recoveredBlock301Block356Value7 := recoveredBlock301Local2.
    recoveredBlock301Block356Value8 := recoveredBlock301Block356Arg1.
    recoveredBlock301Block356Value9 := (recoveredBlock301Block356Value8) source.
    recoveredBlock301Block356Value10 := (recoveredBlock301Block356Value7) add: (recoveredBlock301Block356Value9).
    recoveredBlock301Block356Value10
].
            recoveredBlock301PC := 390.
        ].
        recoveredBlock301Step = 390 ifTrue: [
            recoveredBlock301Stack3 := [
    | recoveredBlock301Block390Value0 recoveredBlock301Block390Value1 recoveredBlock301Block390Value2 |
    recoveredBlock301Block390Value0 := recoveredBlock301Local3.
    recoveredBlock301Block390Value1 := (recoveredBlock301Block390Value0) , (', ').
    recoveredBlock301Block390Value2 := recoveredBlock301Block390Value1.
    recoveredBlock301Local3 := recoveredBlock301Block390Value2.
    recoveredBlock301Block390Value1
].
            recoveredBlock301PC := 408.
        ].
        recoveredBlock301Step = 408 ifTrue: [
            (recoveredBlock301Stack1) do: (recoveredBlock301Stack2) andBetweenDo: (recoveredBlock301Stack3).
            recoveredBlock301PC := 410.
        ].
        recoveredBlock301Step = 410 ifTrue: [
            recoveredBlock301Stack1 := self.
            recoveredBlock301PC := 411.
        ].
        recoveredBlock301Step = 411 ifTrue: [
            recoveredBlock301Stack2 := 289.
            recoveredBlock301PC := 414.
        ].
        recoveredBlock301Step = 414 ifTrue: [
            recoveredBlock301Stack3 := recoveredBlock301Arg1.
            recoveredBlock301PC := 417.
        ].
        recoveredBlock301Step = 417 ifTrue: [
            recoveredBlock301Stack4 := recoveredBlock301Local3.
            recoveredBlock301PC := 420.
        ].
        recoveredBlock301Step = 420 ifTrue: [
            recoveredBlock301Stack5 := self.
            recoveredBlock301PC := 421.
        ].
        recoveredBlock301Step = 421 ifTrue: [
            recoveredBlock301Stack5 := (recoveredBlock301Stack5) source.
            recoveredBlock301PC := 423.
        ].
        recoveredBlock301Step = 423 ifTrue: [
            recoveredBlock301Stack6 := recoveredBlock301Local2.
            recoveredBlock301PC := 426.
        ].
        recoveredBlock301Step = 426 ifTrue: [
            recoveredBlock301Stack7 := recoveredBlock301Local1.
            recoveredBlock301PC := 429.
        ].
        recoveredBlock301Step = 429 ifTrue: [
            recoveredBlock301Stack5 := (recoveredBlock301Stack5) createMultiSource: (recoveredBlock301Stack6) labels: (recoveredBlock301Stack7).
            recoveredBlock301PC := 431.
        ].
        recoveredBlock301Step = 431 ifTrue: [
            recoveredBlock301Stack1 := (recoveredBlock301Stack1) mdlSemErrNo: (recoveredBlock301Stack2) with: (recoveredBlock301Stack3) with: (recoveredBlock301Stack4) source: (recoveredBlock301Stack5).
            recoveredBlock301PC := 434.
        ].
        recoveredBlock301Step = 434 ifTrue: [
            recoveredBlock301Stack2 := nil.
            recoveredBlock301PC := 435.
        ].
        recoveredBlock301Step = 435 ifTrue: [
            recoveredBlock301Stack3 := recoveredBlock301Stack2.
            recoveredBlock301PC := 436.
        ].
        recoveredBlock301Step = 436 ifTrue: [
            recoveredBlock301Local3 := recoveredBlock301Stack3.
            recoveredBlock301PC := 439.
        ].
        recoveredBlock301Step = 439 ifTrue: [
            recoveredBlock301Stack3 := recoveredBlock301Stack2.
            recoveredBlock301PC := 440.
        ].
        recoveredBlock301Step = 440 ifTrue: [
            recoveredBlock301Local2 := recoveredBlock301Stack3.
            recoveredBlock301PC := 443.
        ].
        recoveredBlock301Step = 443 ifTrue: [
            recoveredBlock301Local1 := recoveredBlock301Stack2.
            recoveredBlock301PC := 446.
        ].
        recoveredBlock301Step = 446 ifTrue: [
            recoveredBlock301Result := recoveredBlock301Stack1.
            recoveredBlock301Done := true.
        ].
    ].
    recoveredBlock301Result
].
            recoveredPC := 447.
        ].
        recoveredStep = 447 ifTrue: [
            (recoveredStack0) keysAndValuesDo: (recoveredStack1).
            recoveredPC := 449.
        ].
        recoveredStep = 449 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 450.
        ].
        recoveredStep = 450 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 453.
        ].
        recoveredStep = 453 ifTrue: [
            (recoveredStack0) analyseIRVWriteMacros: (recoveredStack1).
            recoveredPC := 455.
        ].
        recoveredStep = 455 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 456.
        ].
        recoveredStep = 456 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

