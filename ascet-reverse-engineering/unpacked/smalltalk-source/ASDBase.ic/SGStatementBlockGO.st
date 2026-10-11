"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20000e18; bytecode file offset 0x8ffcfc"
!SGStatementBlockGO methodsFor: 'recovered'!
getStatementBlock
    ^self
! !

"ASDBase.ic method 0x20022d18; bytecode file offset 0x92209c"
!SGStatementBlockGO methodsFor: 'recovered'!
renameHierarchyLabel
    ^'~Rename Statement Block'
! !

"ASDBase.ic method 0x20076df4; bytecode file offset 0x9757c8"
!SGStatementBlockGO methodsFor: 'recovered'!
connNamesVisible
    ^true
! !

"ASDBase.ic method 0x200783bc; bytecode file offset 0x9757c8"
!SGStatementBlockGO methodsFor: 'recovered'!
isStatementBlockGO
    ^true
! !

"ASDBase.ic method 0x20150a48; bytecode file offset 0xa4d308"
!SGStatementBlockGO methodsFor: 'recovered'!
visualCallBackImage
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) hierarchyMGO.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := super visualCallBackImage.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) hierarchyMGO.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) visualCallBackImage.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2017b798; bytecode file offset 0xa780a4"
!SGStatementBlockGO methodsFor: 'recovered'!
storageObject
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := super storageObject.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := (self) buildSequencesDictionary.
    (recoveredValue1) sequences: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (self) buildSelectorPortDictionary.
    (recoveredValue3) selectorPorts: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x201aac14; bytecode file offset 0xaa74e4"
!SGStatementBlockGO methodsFor: 'recovered'!
getMenu
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := super getMenu.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRuntime.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 'addCall'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := ' -> Debug: Christines Call Creator (CCC)'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) add: (recoveredStack1) label: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201f29a8; bytecode file offset 0xaef278"
!SGStatementBlockGO methodsFor: 'recovered'!
changeActualName
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := super changeActualName.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) hierarchyMGO.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) sequenceCalls.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := [:block280d7ee0Arg1 | 
    | block280d7ee0Value0 block280d7ee0Value1 |
    block280d7ee0Value0 := block280d7ee0Arg1.
    block280d7ee0Value1 := (block280d7ee0Value0) updateLabelGOWithDisplay.
    block280d7ee0Value1
].
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20226100; bytecode file offset 0xb229ec"
!SGStatementBlockGO methodsFor: 'recovered'!
getSGCallGO
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceGOs.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280dc338Arg1 | 
    | block280dc338Value0 block280dc338Value1 |
    block280dc338Value0 := block280dc338Arg1.
    block280dc338Value1 := (block280dc338Value0) isSelectorPort.
    block280dc338Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := [:block280dc35cArg1 | 
    | block280dc35cValue0 block280dc35cValue1 |
    block280dc35cValue0 := block280dc35cArg1.
    block280dc35cValue1 := (block280dc35cValue0) getSGCallGO.
    block280dc35cValue1
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := [
    ^nil
].
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifOne: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2022b30c; bytecode file offset 0xb27be0"
!SGStatementBlockGO methodsFor: 'recovered'!
getExternalConnnector
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceGOs.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280dcba8Arg1 | 
    | block280dcba8Value0 block280dcba8Value1 |
    block280dcba8Value0 := block280dcba8Arg1.
    block280dcba8Value1 := (block280dcba8Value0) isSelectorPort.
    block280dcba8Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) getSGCallGO.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceElementGO.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceElementGO.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) externalConnectorGO.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202555c4; bytecode file offset 0xb51e9c"
!SGStatementBlockGO methodsFor: 'recovered'!
changeActualName: recoveredArg1
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
            recoveredStack2 := actualNameGO.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) text.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            super changeActualName: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) hierarchyMGO.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) sequenceCalls.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := [:block280df3bcArg1 | 
    | block280df3bcValue0 block280df3bcValue1 |
    block280df3bcValue0 := block280df3bcArg1.
    block280df3bcValue1 := (block280df3bcValue0) updateLabelGOWithDisplay.
    block280df3bcValue1
].
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202a4a4c; bytecode file offset 0xba1320"
!SGStatementBlockGO methodsFor: 'recovered'!
sequenceCalls
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
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
            recoveredStack1 := interfaceGOs.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := [:block280e3f64Arg1 | 
    | block280e3f64Value0 block280e3f64Value1 |
    block280e3f64Value0 := block280e3f64Arg1.
    block280e3f64Value1 := (block280e3f64Value0) isSelectorPort.
    block280e3f64Value1
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := [:recoveredBlock23Arg1 | 
    | recoveredBlock23Value0 recoveredBlock23Value1 recoveredBlock23Value2 |
    recoveredBlock23Value0 := recoveredBlock23Arg1.
    recoveredBlock23Value1 := recoveredLocal1.
    recoveredBlock23Value2 := (recoveredBlock23Value0) addSequenceCallTo: (recoveredBlock23Value1).
    recoveredBlock23Value2
].
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) asArray.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202b70ac; bytecode file offset 0xbb397c"
!SGStatementBlockGO methodsFor: 'recovered'!
interfaceElementGOs
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) interfaceGOs.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Stack0 recoveredBlock11Stack1 recoveredBlock11Stack2 recoveredBlock11Stack3 recoveredBlock11PC recoveredBlock11Step recoveredBlock11Done recoveredBlock11Result |
    recoveredBlock11Stack0 := self.
    recoveredBlock11PC := 18.
    recoveredBlock11Done := false.
    [recoveredBlock11Done not] whileTrue: [
        recoveredBlock11Step := recoveredBlock11PC.
        recoveredBlock11Step = 18 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Arg1.
            recoveredBlock11PC := 19.
        ].
        recoveredBlock11Step = 19 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) isSelectorPort.
            recoveredBlock11PC := 20.
        ].
        recoveredBlock11Step = 20 ifTrue: [
            (recoveredBlock11Stack1) ifTrue: [recoveredBlock11PC := 24] ifFalse: [recoveredBlock11PC := 34].
        ].
        recoveredBlock11Step = 24 ifTrue: [
            recoveredBlock11Stack1 := recoveredLocal1.
            recoveredBlock11PC := 27.
        ].
        recoveredBlock11Step = 27 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 28.
        ].
        recoveredBlock11Step = 28 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) interfaceGOs.
            recoveredBlock11PC := 29.
        ].
        recoveredBlock11Step = 29 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) addAll: (recoveredBlock11Stack2).
            recoveredBlock11PC := 31.
        ].
        recoveredBlock11Step = 31 ifTrue: [
            recoveredBlock11PC := 40.
        ].
        recoveredBlock11Step = 34 ifTrue: [
            recoveredBlock11Stack1 := recoveredLocal1.
            recoveredBlock11PC := 37.
        ].
        recoveredBlock11Step = 37 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 38.
        ].
        recoveredBlock11Step = 38 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) add: (recoveredBlock11Stack2).
            recoveredBlock11PC := 40.
        ].
        recoveredBlock11Step = 40 ifTrue: [
            recoveredBlock11Result := recoveredBlock11Stack1.
            recoveredBlock11Done := true.
        ].
    ].
    recoveredBlock11Result
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x202f725c; bytecode file offset 0xbf3b38"
!SGStatementBlockGO methodsFor: 'recovered'!
addCall
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceGOs.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) createSelectorPortGO.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceGOs.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := [:block280e8b30Arg1 | 
    | block280e8b30Value0 block280e8b30Value1 |
    block280e8b30Value0 := block280e8b30Arg1.
    block280e8b30Value1 := (block280e8b30Value0) connNameVisible: (false).
    block280e8b30Value1
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) frame.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) displayOneRectSetModified: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) frame.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) displayOneRectSetModified: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) getSGCallGO.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) frame.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) displayOneRectSetModified: (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202f7784; bytecode file offset 0xbf4060"
!SGStatementBlockGO methodsFor: 'recovered'!
buildSelectorPortDictionary
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) interfaceGOs.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Stack0 recoveredBlock11Stack1 recoveredBlock11Stack2 recoveredBlock11Stack3 recoveredBlock11Stack4 recoveredBlock11PC recoveredBlock11Step recoveredBlock11Done recoveredBlock11Result |
    recoveredBlock11Stack0 := self.
    recoveredBlock11PC := 18.
    recoveredBlock11Done := false.
    [recoveredBlock11Done not] whileTrue: [
        recoveredBlock11Step := recoveredBlock11PC.
        recoveredBlock11Step = 18 ifTrue: [
            recoveredBlock11Stack1 := nil.
            recoveredBlock11PC := 19.
        ].
        recoveredBlock11Step = 19 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 20.
        ].
        recoveredBlock11Step = 20 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) isSelectorPort.
            recoveredBlock11PC := 21.
        ].
        recoveredBlock11Step = 21 ifTrue: [
            (recoveredBlock11Stack2) ifTrue: [recoveredBlock11PC := 24] ifFalse: [recoveredBlock11PC := 46].
        ].
        recoveredBlock11Step = 24 ifTrue: [
            recoveredBlock11PC := 25.
        ].
        recoveredBlock11Step = 25 ifTrue: [
            recoveredBlock11Stack1 := recoveredLocal1.
            recoveredBlock11PC := 28.
        ].
        recoveredBlock11Step = 28 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 29.
        ].
        recoveredBlock11Step = 29 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) methodAliasName.
            recoveredBlock11PC := 31.
        ].
        recoveredBlock11Step = 31 ifTrue: [
            recoveredBlock11Stack3 := [].
            recoveredBlock11PC := 33.
        ].
        recoveredBlock11Step = 33 ifTrue: [
            (recoveredBlock11Stack1) removeKey: (recoveredBlock11Stack2) ifAbsent: (recoveredBlock11Stack3).
            recoveredBlock11PC := 35.
        ].
        recoveredBlock11Step = 35 ifTrue: [
            recoveredBlock11Stack1 := recoveredLocal1.
            recoveredBlock11PC := 38.
        ].
        recoveredBlock11Step = 38 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 39.
        ].
        recoveredBlock11Step = 39 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) methodAliasName.
            recoveredBlock11PC := 41.
        ].
        recoveredBlock11Step = 41 ifTrue: [
            recoveredBlock11Stack3 := recoveredBlock11Arg1.
            recoveredBlock11PC := 42.
        ].
        recoveredBlock11Step = 42 ifTrue: [
            recoveredBlock11Stack3 := (recoveredBlock11Stack3) buildPinDictionary.
            recoveredBlock11PC := 44.
        ].
        recoveredBlock11Step = 44 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) at: (recoveredBlock11Stack2) put: (recoveredBlock11Stack3).
            recoveredBlock11PC := 46.
        ].
        recoveredBlock11Step = 46 ifTrue: [
            recoveredBlock11Result := recoveredBlock11Stack1.
            recoveredBlock11Done := true.
        ].
    ].
    recoveredBlock11Result
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x203546dc; bytecode file offset 0xc50fc4"
!SGStatementBlockGO methodsFor: 'recovered'!
bigFrame
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceGOs.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280ef82cArg1 | 
    | block280ef82cStack0 block280ef82cStack1 block280ef82cStack2 block280ef82cStack3 block280ef82cPC block280ef82cStep block280ef82cDone block280ef82cResult |
    block280ef82cStack0 := self.
    block280ef82cPC := 4.
    block280ef82cDone := false.
    [block280ef82cDone not] whileTrue: [
        block280ef82cStep := block280ef82cPC.
        block280ef82cStep = 4 ifTrue: [
            block280ef82cStack1 := false.
            block280ef82cPC := 5.
        ].
        block280ef82cStep = 5 ifTrue: [
            block280ef82cStack2 := block280ef82cArg1.
            block280ef82cPC := 6.
        ].
        block280ef82cStep = 6 ifTrue: [
            block280ef82cStack2 := (block280ef82cStack2) isVisible.
            block280ef82cPC := 7.
        ].
        block280ef82cStep = 7 ifTrue: [
            (block280ef82cStack2) ifTrue: [block280ef82cPC := 10] ifFalse: [block280ef82cPC := 14].
        ].
        block280ef82cStep = 10 ifTrue: [
            block280ef82cPC := 11.
        ].
        block280ef82cStep = 11 ifTrue: [
            block280ef82cStack1 := block280ef82cArg1.
            block280ef82cPC := 12.
        ].
        block280ef82cStep = 12 ifTrue: [
            block280ef82cStack1 := (block280ef82cStack1) getManager.
            block280ef82cPC := 13.
        ].
        block280ef82cStep = 13 ifTrue: [
            block280ef82cStack1 := (block280ef82cStack1) isVisible.
            block280ef82cPC := 14.
        ].
        block280ef82cStep = 14 ifTrue: [
            block280ef82cResult := block280ef82cStack1.
            block280ef82cDone := true.
        ].
    ].
    block280ef82cResult
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := [:block280ef850Arg1 | 
    | block280ef850Value0 block280ef850Value1 |
    block280ef850Value0 := block280ef850Arg1.
    block280ef850Value1 := (block280ef850Value0) frame.
    block280ef850Value1
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) frameGO.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) frame.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := PinLength.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) expandBy: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyWith: (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := actualNameGO.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) frame.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyWith: (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) enclosingRectOf: (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := PinLength.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) expandBy: (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203680c0; bytecode file offset 0xc649b8"
!SGStatementBlockGO methodsFor: 'recovered'!
createSelectorPortGO
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := DefaultLineStyle.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) deepCopy.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := SGAliasMethod.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := SGReservedNames.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) executeMethod.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) createWithName: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := SGSelectorPortGO.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) initForSGClassGO: (recoveredStack2) lineStyle: (recoveredStack3).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) initWithMethod: (recoveredStack2) for: (recoveredStack3).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := SGCallGO.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := (recoveredStack2) createForPortGO: (recoveredStack3) lineStyle: (recoveredStack4).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack4 := recoveredLocal5.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack4 := (recoveredStack4) isRunnable.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack4) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := (recoveredStack3) ownerSGClass.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := (recoveredStack3) isContinuousTimeClass.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := (recoveredStack3) not.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := (recoveredStack2) modelVisibility: (recoveredStack3).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack1) setSGCallGO: (recoveredStack2).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2048c424; bytecode file offset 0xd88d24"
!SGStatementBlockGO methodsFor: 'recovered'!
buildPinDictionary
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
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
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceGOs.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := [:block28103120Arg1 | 
    | block28103120Value0 block28103120Value1 block28103120Value2 |
    block28103120Value0 := block28103120Arg1.
    block28103120Value1 := (block28103120Value0) isSelectorPort.
    block28103120Value2 := (block28103120Value1) not.
    block28103120Value2
].
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := [:recoveredBlock23Arg1 | 
    | recoveredBlock23Value0 recoveredBlock23Value1 recoveredBlock23Value2 recoveredBlock23Value3 recoveredBlock23Value4 recoveredBlock23Value5 recoveredBlock23Value6 recoveredBlock23Value7 recoveredBlock23Value8 recoveredBlock23Value9 recoveredBlock23Value10 recoveredBlock23Value11 recoveredBlock23Value12 recoveredBlock23Value13 recoveredBlock23Value14 recoveredBlock23Value15 recoveredBlock23Value16 recoveredBlock23Value17 recoveredBlock23Value18 recoveredBlock23Value19 recoveredBlock23Value20 recoveredBlock23Value21 recoveredBlock23Value22 recoveredBlock23Value23 recoveredBlock23Value24 recoveredBlock23Value25 recoveredBlock23Value26 recoveredBlock23Value27 recoveredBlock23Value28 recoveredBlock23Value29 |
    recoveredBlock23Value0 := Array.
    recoveredBlock23Value1 := (recoveredBlock23Value0) new: (7).
    recoveredLocal1 := recoveredBlock23Value1.
    recoveredBlock23Value2 := recoveredLocal1.
    recoveredBlock23Value3 := recoveredBlock23Arg1.
    recoveredBlock23Value4 := (recoveredBlock23Value3) identifier.
    (recoveredBlock23Value2) at: (1) put: (recoveredBlock23Value4).
    recoveredBlock23Value5 := recoveredLocal1.
    recoveredBlock23Value6 := recoveredBlock23Arg1.
    recoveredBlock23Value7 := (recoveredBlock23Value6) hasResultPin.
    (recoveredBlock23Value5) at: (2) put: (recoveredBlock23Value7).
    recoveredBlock23Value8 := recoveredLocal1.
    recoveredBlock23Value9 := recoveredBlock23Arg1.
    recoveredBlock23Value10 := (recoveredBlock23Value9) getDirection.
    (recoveredBlock23Value8) at: (3) put: (recoveredBlock23Value10).
    recoveredBlock23Value11 := recoveredLocal1.
    recoveredBlock23Value12 := recoveredBlock23Arg1.
    recoveredBlock23Value13 := (recoveredBlock23Value12) getPosition.
    (recoveredBlock23Value11) at: (4) put: (recoveredBlock23Value13).
    recoveredBlock23Value14 := recoveredLocal1.
    recoveredBlock23Value15 := recoveredBlock23Arg1.
    recoveredBlock23Value16 := (recoveredBlock23Value15) isVisible.
    (recoveredBlock23Value14) at: (5) put: (recoveredBlock23Value16).
    recoveredBlock23Value17 := recoveredLocal1.
    recoveredBlock23Value18 := recoveredBlock23Arg1.
    recoveredBlock23Value19 := (recoveredBlock23Value18) getConnectorNameGO.
    recoveredBlock23Value20 := (recoveredBlock23Value19) isVisible.
    (recoveredBlock23Value17) at: (6) put: (recoveredBlock23Value20).
    recoveredBlock23Value21 := recoveredLocal1.
    recoveredBlock23Value22 := recoveredBlock23Arg1.
    recoveredBlock23Value23 := (recoveredBlock23Value22) externalConnectorGO.
    recoveredBlock23Value24 := (recoveredBlock23Value23) hasTempVar.
    (recoveredBlock23Value21) at: (7) put: (recoveredBlock23Value24).
    recoveredBlock23Value25 := recoveredLocal2.
    recoveredBlock23Value26 := recoveredBlock23Arg1.
    recoveredBlock23Value27 := (recoveredBlock23Value26) connectorName.
    recoveredBlock23Value28 := recoveredLocal1.
    recoveredBlock23Value29 := (recoveredBlock23Value25) at: (recoveredBlock23Value27) put: (recoveredBlock23Value28).
    recoveredBlock23Value29
].
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204ca884; bytecode file offset 0xdc718c"
!SGStatementBlockGO methodsFor: 'recovered'!
buildLogicBasic: recoveredArg1 for: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 |
    recoveredValue0 := Array.
    recoveredValue1 := SGAliasMethod.
    recoveredValue2 := SGReservedNames.
    recoveredValue3 := (recoveredValue2) executeMethod.
    recoveredValue4 := (recoveredValue1) createWithName: (recoveredValue3).
    recoveredValue5 := (recoveredValue0) with: (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (self) getName.
    recoveredValue8 := (self) identifier.
    recoveredValue9 := recoveredArg2.
    recoveredValue10 := (recoveredValue6) statementBlockBlock: (recoveredValue7) iD: (recoveredValue8) hierarchy: (recoveredValue9).
    recoveredLocal2 := recoveredValue10.
    recoveredValue11 := recoveredLocal2.
    recoveredValue12 := recoveredLocal1.
    (recoveredValue11) setMethods: (recoveredValue12).
    recoveredValue13 := recoveredArg1.
    recoveredValue14 := recoveredLocal2.
    recoveredValue15 := recoveredLocal1.
    recoveredValue16 := recoveredArg2.
    (self) buildInterfaceLogic: (recoveredValue13) block: (recoveredValue14) methods: (recoveredValue15) for: (recoveredValue16).
    recoveredValue17 := (self) interfaceElementGOs.
    recoveredValue18 := [:recoveredBlock62Arg1 | 
    | recoveredBlock62Stack0 recoveredBlock62Stack1 recoveredBlock62Stack2 recoveredBlock62Stack3 recoveredBlock62Stack4 recoveredBlock62Stack5 recoveredBlock62Stack6 recoveredBlock62Stack7 recoveredBlock62Stack8 recoveredBlock62PC recoveredBlock62Step recoveredBlock62Done recoveredBlock62Result |
    recoveredBlock62Stack0 := self.
    recoveredBlock62PC := 68.
    recoveredBlock62Done := false.
    [recoveredBlock62Done not] whileTrue: [
        recoveredBlock62Step := recoveredBlock62PC.
        recoveredBlock62Step = 68 ifTrue: [
            recoveredBlock62Stack1 := nil.
            recoveredBlock62PC := 69.
        ].
        recoveredBlock62Step = 69 ifTrue: [
            recoveredBlock62Stack2 := recoveredBlock62Arg1.
            recoveredBlock62PC := 70.
        ].
        recoveredBlock62Step = 70 ifTrue: [
            recoveredBlock62Stack2 := (recoveredBlock62Stack2) isHierarchyBlockInterface.
            recoveredBlock62PC := 72.
        ].
        recoveredBlock62Step = 72 ifTrue: [
            (recoveredBlock62Stack2) ifTrue: [recoveredBlock62PC := 76] ifFalse: [recoveredBlock62PC := 146].
        ].
        recoveredBlock62Step = 76 ifTrue: [
            recoveredBlock62PC := 77.
        ].
        recoveredBlock62Step = 77 ifTrue: [
            recoveredBlock62Stack1 := nil.
            recoveredBlock62PC := 78.
        ].
        recoveredBlock62Step = 78 ifTrue: [
            recoveredBlock62Stack2 := recoveredBlock62Arg1.
            recoveredBlock62PC := 79.
        ].
        recoveredBlock62Step = 79 ifTrue: [
            recoveredBlock62Stack2 := (recoveredBlock62Stack2) internalConnectorGO.
            recoveredBlock62PC := 81.
        ].
        recoveredBlock62Step = 81 ifTrue: [
            (recoveredBlock62Stack2 == nil) ifTrue: [recoveredBlock62PC := 146] ifFalse: [recoveredBlock62PC := 84].
        ].
        recoveredBlock62Step = 84 ifTrue: [
            recoveredBlock62PC := 85.
        ].
        recoveredBlock62Step = 85 ifTrue: [
            recoveredBlock62Stack1 := recoveredBlock62Arg1.
            recoveredBlock62PC := 86.
        ].
        recoveredBlock62Step = 86 ifTrue: [
            recoveredBlock62Stack1 := (recoveredBlock62Stack1) hasArgumentPin.
            recoveredBlock62PC := 88.
        ].
        recoveredBlock62Step = 88 ifTrue: [
            (recoveredBlock62Stack1) ifTrue: [recoveredBlock62PC := 92] ifFalse: [recoveredBlock62PC := 118].
        ].
        recoveredBlock62Step = 92 ifTrue: [
            recoveredBlock62Stack1 := recoveredArg1.
            recoveredBlock62PC := 95.
        ].
        recoveredBlock62Step = 95 ifTrue: [
            recoveredBlock62Stack2 := recoveredBlock62Arg1.
            recoveredBlock62PC := 96.
        ].
        recoveredBlock62Step = 96 ifTrue: [
            recoveredBlock62Stack2 := (recoveredBlock62Stack2) connectorName.
            recoveredBlock62PC := 98.
        ].
        recoveredBlock62Step = 98 ifTrue: [
            recoveredBlock62Stack3 := recoveredBlock62Arg1.
            recoveredBlock62PC := 99.
        ].
        recoveredBlock62Step = 99 ifTrue: [
            recoveredBlock62Stack3 := (recoveredBlock62Stack3) identifier.
            recoveredBlock62PC := 101.
        ].
        recoveredBlock62Step = 101 ifTrue: [
            recoveredBlock62Stack4 := recoveredBlock62Arg1.
            recoveredBlock62PC := 102.
        ].
        recoveredBlock62Step = 102 ifTrue: [
            recoveredBlock62Stack4 := (recoveredBlock62Stack4) internalConnectorGO.
            recoveredBlock62PC := 104.
        ].
        recoveredBlock62Step = 104 ifTrue: [
            recoveredBlock62Stack4 := (recoveredBlock62Stack4) identifier.
            recoveredBlock62PC := 106.
        ].
        recoveredBlock62Step = 106 ifTrue: [
            recoveredBlock62Stack5 := recoveredLocal2.
            recoveredBlock62PC := 109.
        ].
        recoveredBlock62Step = 109 ifTrue: [
            recoveredBlock62Stack6 := recoveredArg2.
            recoveredBlock62PC := 112.
        ].
        recoveredBlock62Step = 112 ifTrue: [
            recoveredBlock62Stack1 := (recoveredBlock62Stack1) inputOfHierarchy: (recoveredBlock62Stack2) externalPinID: (recoveredBlock62Stack3) internalPinID: (recoveredBlock62Stack4) ofBlock: (recoveredBlock62Stack5) hierarchy: (recoveredBlock62Stack6).
            recoveredBlock62PC := 115.
        ].
        recoveredBlock62Step = 115 ifTrue: [
            recoveredBlock62PC := 146.
        ].
        recoveredBlock62Step = 118 ifTrue: [
            recoveredBlock62Stack1 := recoveredArg1.
            recoveredBlock62PC := 121.
        ].
        recoveredBlock62Step = 121 ifTrue: [
            recoveredBlock62Stack2 := recoveredBlock62Arg1.
            recoveredBlock62PC := 122.
        ].
        recoveredBlock62Step = 122 ifTrue: [
            recoveredBlock62Stack2 := (recoveredBlock62Stack2) connectorName.
            recoveredBlock62PC := 124.
        ].
        recoveredBlock62Step = 124 ifTrue: [
            recoveredBlock62Stack3 := recoveredBlock62Arg1.
            recoveredBlock62PC := 125.
        ].
        recoveredBlock62Step = 125 ifTrue: [
            recoveredBlock62Stack3 := (recoveredBlock62Stack3) identifier.
            recoveredBlock62PC := 127.
        ].
        recoveredBlock62Step = 127 ifTrue: [
            recoveredBlock62Stack4 := recoveredBlock62Arg1.
            recoveredBlock62PC := 128.
        ].
        recoveredBlock62Step = 128 ifTrue: [
            recoveredBlock62Stack4 := (recoveredBlock62Stack4) internalConnectorGO.
            recoveredBlock62PC := 130.
        ].
        recoveredBlock62Step = 130 ifTrue: [
            recoveredBlock62Stack4 := (recoveredBlock62Stack4) identifier.
            recoveredBlock62PC := 132.
        ].
        recoveredBlock62Step = 132 ifTrue: [
            recoveredBlock62Stack5 := recoveredLocal2.
            recoveredBlock62PC := 135.
        ].
        recoveredBlock62Step = 135 ifTrue: [
            recoveredBlock62Stack6 := recoveredBlock62Arg1.
            recoveredBlock62PC := 136.
        ].
        recoveredBlock62Step = 136 ifTrue: [
            recoveredBlock62Stack6 := (recoveredBlock62Stack6) externalConnectorGO.
            recoveredBlock62PC := 138.
        ].
        recoveredBlock62Step = 138 ifTrue: [
            recoveredBlock62Stack6 := (recoveredBlock62Stack6) hasTempVar.
            recoveredBlock62PC := 140.
        ].
        recoveredBlock62Step = 140 ifTrue: [
            recoveredBlock62Stack7 := recoveredArg2.
            recoveredBlock62PC := 143.
        ].
        recoveredBlock62Step = 143 ifTrue: [
            recoveredBlock62Stack1 := (recoveredBlock62Stack1) outputOfHierarchy: (recoveredBlock62Stack2) externalPinID: (recoveredBlock62Stack3) internalPinID: (recoveredBlock62Stack4) ofBlock: (recoveredBlock62Stack5) tempVar: (recoveredBlock62Stack6) hierarchy: (recoveredBlock62Stack7).
            recoveredBlock62PC := 146.
        ].
        recoveredBlock62Step = 146 ifTrue: [
            recoveredBlock62Result := recoveredBlock62Stack1.
            recoveredBlock62Done := true.
        ].
    ].
    recoveredBlock62Result
].
    (recoveredValue17) do: (recoveredValue18).
    recoveredValue19 := recoveredLocal2.
    ^recoveredValue19
! !

