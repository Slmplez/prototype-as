"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200425a0; bytecode file offset 0x93eeb8"
!SGSelectorPortGO methodsFor: 'recovered'!
sequenceVisibility
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := callGO.
    recoveredValue1 := (recoveredValue0) isVisible.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20042600; bytecode file offset 0x93eeb8"
!SGSelectorPortGO methodsFor: 'recovered'!
logicSequenceDescription
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := callGO.
    recoveredValue1 := (recoveredValue0) logicSequenceDescription.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004f818; bytecode file offset 0x94d048"
!SGSelectorPortGO methodsFor: 'recovered'!
repositionDependent
    (self) repositionSequenceCall.
    ^self
! !

"ASDBase.ic method 0x2005e1b8; bytecode file offset 0x95aa7c"
!SGSelectorPortGO methodsFor: 'recovered'!
showHideCallGO
    | recoveredValue0 |
    recoveredValue0 := callGO.
    (recoveredValue0) showHideCallGO.
    ^self
! !

"ASDBase.ic method 0x2005e1c4; bytecode file offset 0x95aa7c"
!SGSelectorPortGO methodsFor: 'recovered'!
menuRepositionCallGO
    | recoveredValue0 |
    recoveredValue0 := callGO.
    (recoveredValue0) menuRepositionCallGO.
    ^self
! !

"ASDBase.ic method 0x2006e770; bytecode file offset 0x96b41c"
!SGSelectorPortGO methodsFor: 'recovered'!
inputs
    | recoveredValue0 |
    recoveredValue0 := interfaceGOs.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006fb58; bytecode file offset 0x96c42c"
!SGSelectorPortGO methodsFor: 'recovered'!
getSGCallGO
    | recoveredValue0 |
    recoveredValue0 := callGO.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200749e4; bytecode file offset 0x9757c8"
!SGSelectorPortGO methodsFor: 'recovered'!
isSelectorPort
    ^true
! !

"ASDBase.ic method 0x2008bc20; bytecode file offset 0x9884d8"
!SGSelectorPortGO methodsFor: 'recovered'!
repositionSequenceCall
    | recoveredValue0 |
    recoveredValue0 := callGO.
    (recoveredValue0) repositionForPort: (self).
    ^self
! !

"ASDBase.ic method 0x200969b4; bytecode file offset 0x9932f0"
!SGSelectorPortGO methodsFor: 'recovered'!
showUnconnectedPorts: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super showUnconnectedPorts: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200c6024; bytecode file offset 0x9c29e8"
!SGSelectorPortGO methodsFor: 'recovered'!
setSGCallGO: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    callGO := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200dd598; bytecode file offset 0x9d9e50"
!SGSelectorPortGO methodsFor: 'recovered'!
updateSequenceWith: recoveredArg1 addSeqCallId: recoveredArg2 datamodelManager: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := callGO.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    (recoveredValue0) sequenceDescription: (recoveredValue1) updateSeqCallId: (recoveredValue2) datamodelManager: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x200e174c; bytecode file offset 0x9de00c"
!SGSelectorPortGO methodsFor: 'recovered'!
sequenceDescription
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('Muzaffar') = ('EHI_68062').
    recoveredValue1 := callGO.
    recoveredValue2 := (recoveredValue1) sequenceDescription.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200e6500; bytecode file offset 0x9e2e24"
!SGSelectorPortGO methodsFor: 'recovered'!
updateFontFormalNames
    | recoveredValue0 |
    super updateFontFormalNames.
    recoveredValue0 := (self) getSGCallGO.
    (recoveredValue0) updateFontFormalNames.
    ^self
! !

"ASDBase.ic method 0x200e93c0; bytecode file offset 0x9e5c80"
!SGSelectorPortGO methodsFor: 'recovered'!
addSequenceEntryTo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) methodAliasName.
    recoveredValue2 := callGO.
    recoveredValue3 := (recoveredValue2) sequenceDescription.
    (recoveredValue0) at: (recoveredValue1) put: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x200fc270; bytecode file offset 0x9f8b2c"
!SGSelectorPortGO methodsFor: 'recovered'!
hasUnusedSeqCallVisitedConns: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) getSGCallGO.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) getSGCallGO.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isUnused.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x200ff58c; bytecode file offset 0x9fbe48"
!SGSelectorPortGO methodsFor: 'recovered'!
addSequenceCallTo: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getSGCallGO.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) getSGCallGO.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2010f020; bytecode file offset 0xa0b8e0"
!SGSelectorPortGO methodsFor: 'recovered'!
userVisibility: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    super userVisibility: (recoveredValue0).
    recoveredValue1 := (self) getSGCallGO.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) userVisibility: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20125798; bytecode file offset 0xa22058"
!SGSelectorPortGO methodsFor: 'recovered'!
removeConnections
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := super removeConnections.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := callGO.
    recoveredValue3 := (recoveredValue2) removeConnections.
    (recoveredValue1) addAll: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x20151d3c; bytecode file offset 0xa4e5f8"
!SGSelectorPortGO methodsFor: 'recovered'!
changeStarted
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            super changeStarted.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := callGO.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := callGO.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) changeStarted.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20174474; bytecode file offset 0xa70d40"
!SGSelectorPortGO methodsFor: 'recovered'!
moveDelta: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := callGO.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := callGO.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) moveDelta: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            super moveDelta: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20174484; bytecode file offset 0xa70d40"
!SGSelectorPortGO methodsFor: 'recovered'!
displayOn: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := callGO.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := callGO.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) displayOn: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            super displayOn: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20191370; bytecode file offset 0xa8dc38"
!SGSelectorPortGO methodsFor: 'recovered'!
resetAllIdentifiers
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            super resetAllIdentifiers.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := callGO.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := [:block280d1c04Arg1 | 
    | block280d1c04Value0 block280d1c04Value1 |
    block280d1c04Value0 := block280d1c04Arg1.
    block280d1c04Value1 := (block280d1c04Value0) identifier: (nil).
    block280d1c04Value1
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

"ASDBase.ic method 0x201ac644; bytecode file offset 0xaa8f00"
!SGSelectorPortGO methodsFor: 'recovered'!
connectionPointFor: recoveredArg1 with: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := callGO.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) connectionPointFor: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := super connectionPointFor: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201b1e7c; bytecode file offset 0xaae760"
!SGSelectorPortGO methodsFor: 'recovered'!
isProcessPortGO
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceGOs.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280d4100Arg1 | 
    | block280d4100Value0 block280d4100Value1 block280d4100Value2 |
    block280d4100Value0 := block280d4100Arg1.
    block280d4100Value1 := (block280d4100Value0) externalConnectorGO.
    block280d4100Value2 := (block280d4100Value1) isProcessConnectorGO.
    block280d4100Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := [
    ^false
].
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201bdf90; bytecode file offset 0xaba850"
!SGSelectorPortGO methodsFor: 'recovered'!
addSequenceEntryNamesTo: recoveredArg1 withoutPosition: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := callGO.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) sequenceDescription.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 3.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) methodName.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201d82ac; bytecode file offset 0xad4b6c"
!SGSelectorPortGO methodsFor: 'recovered'!
getSelectFlag
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := interfaceGOs.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6Stack3 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            recoveredBlock6Stack1 := nil.
            recoveredBlock6PC := 13.
        ].
        recoveredBlock6Step = 13 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Arg1.
            recoveredBlock6PC := 14.
        ].
        recoveredBlock6Step = 14 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) basicGraphObject.
            recoveredBlock6PC := 15.
        ].
        recoveredBlock6Step = 15 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) getSelectFlag.
            recoveredBlock6PC := 16.
        ].
        recoveredBlock6Step = 16 ifTrue: [
            (recoveredBlock6Stack2) ifTrue: [recoveredBlock6PC := 23] ifFalse: [recoveredBlock6PC := 20].
        ].
        recoveredBlock6Step = 20 ifTrue: [
            recoveredBlock6PC := 21.
        ].
        recoveredBlock6Step = 21 ifTrue: [
            recoveredBlock6Stack1 := false.
            recoveredBlock6PC := 22.
        ].
        recoveredBlock6Step = 22 ifTrue: [
            ^recoveredBlock6Stack1
        ].
        recoveredBlock6Step = 23 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack1.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^true
! !

"ASDBase.ic method 0x201de72c; bytecode file offset 0xadaff4"
!SGSelectorPortGO methodsFor: 'recovered'!
getCopyForChangeDisplayGOs
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := super getCopyForChangeDisplayGOs.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := callGO.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := callGO.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) isVisible.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := callGO.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyForChangeDisplay.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201e22fc; bytecode file offset 0xadebc4"
!SGSelectorPortGO methodsFor: 'recovered'!
connectedGOs
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := callGO.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasPin.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := super connectedGOs.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := callGO.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) interfaceElementGO.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) connectedGOs.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := super connectedGOs.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2023f268; bytecode file offset 0xb3bb30"
!SGSelectorPortGO methodsFor: 'recovered'!
visible: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isVisible.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            super visible: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := DefaultSequenceVisibility.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) sequenceVisibility: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) sequenceVisibility: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20242ee8; bytecode file offset 0xb3f7b4"
!SGSelectorPortGO methodsFor: 'recovered'!
giveRedisplayRects
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := super giveRedisplayRects.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := 'hw'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := 'call_85701'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := callGO.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := callGO.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) isVisible.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := callGO.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) giveRedisplayRects.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) addAll: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202dd03c; bytecode file offset 0xbd98fc"
!SGSelectorPortGO methodsFor: 'recovered'!
getPointedGOFor: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isVisible.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := callGO.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := callGO.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) isVisible.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := callGO.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) getPointedGOFor: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := super getPointedGOFor: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202dd3d4; bytecode file offset 0xbd9c94"
!SGSelectorPortGO methodsFor: 'recovered'!
moveTo: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) getPosition.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := callGO.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 29] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := callGO.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := callGO.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) getPosition.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) moveTo: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := interfaceGOs.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := [:recoveredBlock31Arg1 | 
    | recoveredBlock31Value0 recoveredBlock31Value1 recoveredBlock31Value2 recoveredBlock31Value3 recoveredBlock31Value4 recoveredBlock31Value5 |
    recoveredBlock31Value0 := recoveredBlock31Arg1.
    recoveredBlock31Value1 := recoveredBlock31Arg1.
    recoveredBlock31Value2 := (recoveredBlock31Value1) getPosition.
    recoveredBlock31Value3 := recoveredLocal1.
    recoveredBlock31Value4 := (recoveredBlock31Value2) + (recoveredBlock31Value3).
    recoveredBlock31Value5 := (recoveredBlock31Value0) moveTo: (recoveredBlock31Value4).
    recoveredBlock31Value5
].
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202fe9fc; bytecode file offset 0xbfb2c4"
!SGSelectorPortGO methodsFor: 'recovered'!
sequenceVisibility: recoveredArg1 unused: recoveredArg2 used: recoveredArg3 method: recoveredArg4
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := callGO.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) editedAlias.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg4.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) aliasName.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 35].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := callGO.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) isUnused.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 35].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := callGO.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) visible: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 53].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := callGO.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) isUsed.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 53].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := callGO.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) visible: (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2034b75c; bytecode file offset 0xc48030"
!SGSelectorPortGO methodsFor: 'recovered'!
defaultSeqCallModelVisibility: recoveredArg1
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
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) ownerSGClass.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Stack0 recoveredBlock16Stack1 recoveredBlock16Stack2 recoveredBlock16Stack3 recoveredBlock16PC recoveredBlock16Step recoveredBlock16Done recoveredBlock16Result |
    recoveredBlock16Stack0 := self.
    recoveredBlock16PC := 22.
    recoveredBlock16Done := false.
    [recoveredBlock16Done not] whileTrue: [
        recoveredBlock16Step := recoveredBlock16PC.
        recoveredBlock16Step = 22 ifTrue: [
            recoveredBlock16Stack1 := recoveredBlock16Arg1.
            recoveredBlock16PC := 23.
        ].
        recoveredBlock16Step = 23 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) isCTClass.
            recoveredBlock16PC := 24.
        ].
        recoveredBlock16Step = 24 ifTrue: [
            (recoveredBlock16Stack1) ifTrue: [recoveredBlock16PC := 28] ifFalse: [recoveredBlock16PC := 30].
        ].
        recoveredBlock16Step = 28 ifTrue: [
            recoveredBlock16Stack1 := false.
            recoveredBlock16PC := 29.
        ].
        recoveredBlock16Step = 29 ifTrue: [
            ^recoveredBlock16Stack1
        ].
        recoveredBlock16Step = 30 ifTrue: [
            recoveredBlock16Stack1 := 'Kli'.
            recoveredBlock16PC := 32.
        ].
        recoveredBlock16Step = 32 ifTrue: [
            recoveredBlock16Stack2 := 'PROD78040'.
            recoveredBlock16PC := 34.
        ].
        recoveredBlock16Step = 34 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) == (recoveredBlock16Stack2).
            recoveredBlock16PC := 35.
        ].
        recoveredBlock16Step = 35 ifTrue: [
            recoveredBlock16PC := 36.
        ].
        recoveredBlock16Step = 36 ifTrue: [
            recoveredBlock16Stack1 := nil.
            recoveredBlock16PC := 37.
        ].
        recoveredBlock16Step = 37 ifTrue: [
            recoveredBlock16Stack2 := recoveredArg1.
            recoveredBlock16PC := 40.
        ].
        recoveredBlock16Step = 40 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) isProcess.
            recoveredBlock16PC := 42.
        ].
        recoveredBlock16Step = 42 ifTrue: [
            (recoveredBlock16Stack2) ifTrue: [recoveredBlock16PC := 46] ifFalse: [recoveredBlock16PC := 59].
        ].
        recoveredBlock16Step = 46 ifTrue: [
            recoveredBlock16PC := 47.
        ].
        recoveredBlock16Step = 47 ifTrue: [
            recoveredBlock16Stack1 := true.
            recoveredBlock16PC := 48.
        ].
        recoveredBlock16Step = 48 ifTrue: [
            recoveredBlock16Stack2 := recoveredBlock16Arg1.
            recoveredBlock16PC := 49.
        ].
        recoveredBlock16Step = 49 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) isAtomicSoftwareComponent.
            recoveredBlock16PC := 51.
        ].
        recoveredBlock16Step = 51 ifTrue: [
            (recoveredBlock16Stack2) ifTrue: [recoveredBlock16PC := 58] ifFalse: [recoveredBlock16PC := 54].
        ].
        recoveredBlock16Step = 54 ifTrue: [
            recoveredBlock16PC := 55.
        ].
        recoveredBlock16Step = 55 ifTrue: [
            recoveredBlock16Stack1 := recoveredBlock16Arg1.
            recoveredBlock16PC := 56.
        ].
        recoveredBlock16Step = 56 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) isModule.
            recoveredBlock16PC := 58.
        ].
        recoveredBlock16Step = 58 ifTrue: [
            ^recoveredBlock16Stack1
        ].
        recoveredBlock16Step = 59 ifTrue: [
            recoveredBlock16Result := recoveredBlock16Stack1.
            recoveredBlock16Done := true.
        ].
    ].
    recoveredBlock16Result
].
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20365964; bytecode file offset 0xc6223c"
!SGSelectorPortGO methodsFor: 'recovered'!
modelVisibility: recoveredArg1 method: recoveredArg2 element: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'call_2009405652'.
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
            recoveredStack2 := recoveredArg2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            super modelVisibility: (recoveredStack1) method: (recoveredStack2) element: (recoveredStack3).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) getSGCallGO.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 63].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := (recoveredStack2) defaultSeqCallModelVisibility: (recoveredStack3).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 63].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := 'call_2009405652'.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) ownerSGClass.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCTClass.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredPC := 61.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) modelVisibility: (recoveredStack1).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2036ae7c; bytecode file offset 0xc6775c"
!SGSelectorPortGO methodsFor: 'recovered'!
logicFrame
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := interfaceGOs.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280f12e4Arg1 | 
    | block280f12e4Value0 block280f12e4Value1 |
    block280f12e4Value0 := block280f12e4Arg1.
    block280f12e4Value1 := (block280f12e4Value0) logicFrame.
    block280f12e4Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := callGO.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := callGO.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) isVisible.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := callGO.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) getPosition.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := callGO.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) getPosition.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := 'call_84627'.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := callGO.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := (recoveredStack2) logicFrame.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) enclosingRectOf: (recoveredStack1).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204703e4; bytecode file offset 0xd6ccf8"
!SGSelectorPortGO methodsFor: 'recovered'!
getMenu
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getBDEController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCTContext.
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
            recoveredStack0 := super getMenu.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := callGO.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 107] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := callGO.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) modelVisibility.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 107].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := CwMenu.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultMenuClass.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) title: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) owner: (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := 'showHideCallGO'.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := '~Sequence Call'.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack4 := [
    | recoveredBlock58Value0 recoveredBlock58Value1 |
    recoveredBlock58Value0 := callGO.
    recoveredBlock58Value1 := (recoveredBlock58Value0) modelVisibility.
    recoveredBlock58Value1
].
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock69Value0 recoveredBlock69Value1 |
    recoveredBlock69Value0 := callGO.
    recoveredBlock69Value1 := (recoveredBlock69Value0) isVisible.
    recoveredBlock69Value1
].
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack1) add: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4) toggle: (recoveredStack5).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack1) addSingleLine.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := 'menuRepositionCallGO'.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack3 := 'Set Sequence Call to default position'.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack4 := [
    | recoveredBlock91Value0 recoveredBlock91Value1 |
    recoveredBlock91Value0 := callGO.
    recoveredBlock91Value1 := (recoveredBlock91Value0) modelVisibility.
    recoveredBlock91Value1
].
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack1) add: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRuntime.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 121] ifFalse: [recoveredPC := 114].
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := 'inspect'.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack2 := ' -> Debug: Inspect GO'.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack0) add: (recoveredStack1) label: (recoveredStack2).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x206027dc; bytecode file offset 0xeff16c"
!SGSelectorPortGO methodsFor: 'recovered'!
initWithMethod: recoveredArg1 for: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) lineStyle.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := DefaultLineStyle.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) deepCopy.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) lineStyle.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) initMethodInfo: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasArguments.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 280].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) frameGO.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) logicFrame.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) bottom.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := PinDistance.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) inStartVal.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := PinDistance.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) / (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) floor.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) arguments.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := (recoveredStack1) arguments.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := (recoveredStack1) / (recoveredStack2).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := (recoveredStack1) ceiling.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack0) growDown: (recoveredStack1).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := (recoveredStack0) inStartVal.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := (recoveredStack0) arguments.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := [:recoveredBlock113Arg1 | 
    | recoveredBlock113Stack0 recoveredBlock113Stack1 recoveredBlock113Stack2 recoveredBlock113Stack3 recoveredBlock113Stack4 recoveredBlock113Stack5 recoveredBlock113Stack6 recoveredBlock113PC recoveredBlock113Step recoveredBlock113Done recoveredBlock113Result |
    recoveredBlock113Stack0 := self.
    recoveredBlock113PC := 120.
    recoveredBlock113Done := false.
    [recoveredBlock113Done not] whileTrue: [
        recoveredBlock113Step := recoveredBlock113PC.
        recoveredBlock113Step = 120 ifTrue: [
            recoveredBlock113Stack1 := SGBlockInterfaceElementGO.
            recoveredBlock113PC := 122.
        ].
        recoveredBlock113Step = 122 ifTrue: [
            recoveredBlock113Stack2 := recoveredLocal4.
            recoveredBlock113PC := 125.
        ].
        recoveredBlock113Step = 125 ifTrue: [
            recoveredBlock113Stack3 := self.
            recoveredBlock113PC := 126.
        ].
        recoveredBlock113Step = 126 ifTrue: [
            recoveredBlock113Stack1 := (recoveredBlock113Stack1) createWithLineStyle: (recoveredBlock113Stack2) manager: (recoveredBlock113Stack3).
            recoveredBlock113PC := 128.
        ].
        recoveredBlock113Step = 128 ifTrue: [
            recoveredLocal7 := recoveredBlock113Stack1.
            recoveredBlock113PC := 131.
        ].
        recoveredBlock113Step = 131 ifTrue: [
            recoveredBlock113Stack1 := recoveredArg2.
            recoveredBlock113PC := 134.
        ].
        recoveredBlock113Step = 134 ifTrue: [
            recoveredBlock113Stack2 := recoveredLocal1.
            recoveredBlock113PC := 137.
        ].
        recoveredBlock113Step = 137 ifTrue: [
            recoveredBlock113Stack1 := (recoveredBlock113Stack1) inPortPosAndDir: (recoveredBlock113Stack2).
            recoveredBlock113PC := 139.
        ].
        recoveredBlock113Step = 139 ifTrue: [
            recoveredLocal5 := recoveredBlock113Stack1.
            recoveredBlock113PC := 142.
        ].
        recoveredBlock113Step = 142 ifTrue: [
            recoveredBlock113Stack1 := recoveredLocal5.
            recoveredBlock113PC := 145.
        ].
        recoveredBlock113Step = 145 ifTrue: [
            recoveredBlock113Stack2 := 1.
            recoveredBlock113PC := 147.
        ].
        recoveredBlock113Step = 147 ifTrue: [
            recoveredBlock113Stack1 := (recoveredBlock113Stack1) at: (recoveredBlock113Stack2).
            recoveredBlock113PC := 149.
        ].
        recoveredBlock113Step = 149 ifTrue: [
            recoveredLocal1 := recoveredBlock113Stack1.
            recoveredBlock113PC := 152.
        ].
        recoveredBlock113Step = 152 ifTrue: [
            recoveredBlock113Stack1 := recoveredLocal1.
            recoveredBlock113PC := 155.
        ].
        recoveredBlock113Step = 155 ifTrue: [
            recoveredBlock113Stack2 := PinDistance.
            recoveredBlock113PC := 157.
        ].
        recoveredBlock113Step = 157 ifTrue: [
            (recoveredBlock113Stack1) down: (recoveredBlock113Stack2).
            recoveredBlock113PC := 159.
        ].
        recoveredBlock113Step = 159 ifTrue: [
            recoveredBlock113Stack1 := SGArgumentConnectorGO.
            recoveredBlock113PC := 161.
        ].
        recoveredBlock113Step = 161 ifTrue: [
            recoveredBlock113Stack2 := recoveredLocal4.
            recoveredBlock113PC := 164.
        ].
        recoveredBlock113Step = 164 ifTrue: [
            recoveredBlock113Stack3 := recoveredLocal7.
            recoveredBlock113PC := 167.
        ].
        recoveredBlock113Step = 167 ifTrue: [
            recoveredBlock113Stack1 := (recoveredBlock113Stack1) createWithLineStyle: (recoveredBlock113Stack2) manager: (recoveredBlock113Stack3).
            recoveredBlock113PC := 169.
        ].
        recoveredBlock113Step = 169 ifTrue: [
            recoveredBlock113Stack2 := recoveredBlock113Stack1.
            recoveredBlock113PC := 170.
        ].
        recoveredBlock113Step = 170 ifTrue: [
            recoveredBlock113Stack3 := recoveredLocal5.
            recoveredBlock113PC := 173.
        ].
        recoveredBlock113Step = 173 ifTrue: [
            recoveredBlock113Stack4 := 1.
            recoveredBlock113PC := 175.
        ].
        recoveredBlock113Step = 175 ifTrue: [
            recoveredBlock113Stack3 := (recoveredBlock113Stack3) at: (recoveredBlock113Stack4).
            recoveredBlock113PC := 177.
        ].
        recoveredBlock113Step = 177 ifTrue: [
            recoveredBlock113Stack4 := recoveredLocal5.
            recoveredBlock113PC := 180.
        ].
        recoveredBlock113Step = 180 ifTrue: [
            recoveredBlock113Stack5 := 2.
            recoveredBlock113PC := 182.
        ].
        recoveredBlock113Step = 182 ifTrue: [
            recoveredBlock113Stack4 := (recoveredBlock113Stack4) at: (recoveredBlock113Stack5).
            recoveredBlock113PC := 184.
        ].
        recoveredBlock113Step = 184 ifTrue: [
            recoveredBlock113Stack5 := PinLength.
            recoveredBlock113PC := 186.
        ].
        recoveredBlock113Step = 186 ifTrue: [
            (recoveredBlock113Stack2) initAt: (recoveredBlock113Stack3) direction: (recoveredBlock113Stack4) length: (recoveredBlock113Stack5).
            recoveredBlock113PC := 189.
        ].
        recoveredBlock113Step = 189 ifTrue: [
            recoveredLocal6 := recoveredBlock113Stack1.
            recoveredBlock113PC := 192.
        ].
        recoveredBlock113Step = 192 ifTrue: [
            recoveredBlock113Stack1 := recoveredLocal6.
            recoveredBlock113PC := 195.
        ].
        recoveredBlock113Step = 195 ifTrue: [
            recoveredBlock113Stack2 := false.
            recoveredBlock113PC := 196.
        ].
        recoveredBlock113Step = 196 ifTrue: [
            recoveredBlock113Stack3 := recoveredArg1.
            recoveredBlock113PC := 199.
        ].
        recoveredBlock113Step = 199 ifTrue: [
            recoveredBlock113Stack3 := (recoveredBlock113Stack3) isGetSetMethodForElement.
            recoveredBlock113PC := 201.
        ].
        recoveredBlock113Step = 201 ifTrue: [
            (recoveredBlock113Stack3) ifTrue: [recoveredBlock113PC := 204] ifFalse: [recoveredBlock113PC := 217].
        ].
        recoveredBlock113Step = 204 ifTrue: [
            recoveredBlock113PC := 205.
        ].
        recoveredBlock113Step = 205 ifTrue: [
            recoveredBlock113Stack2 := recoveredArg1.
            recoveredBlock113PC := 208.
        ].
        recoveredBlock113Step = 208 ifTrue: [
            recoveredBlock113Stack2 := (recoveredBlock113Stack2) methodName.
            recoveredBlock113PC := 210.
        ].
        recoveredBlock113Step = 210 ifTrue: [
            recoveredBlock113Stack3 := SGReservedNames.
            recoveredBlock113PC := 212.
        ].
        recoveredBlock113Step = 212 ifTrue: [
            recoveredBlock113Stack3 := (recoveredBlock113Stack3) setMethod.
            recoveredBlock113PC := 214.
        ].
        recoveredBlock113Step = 214 ifTrue: [
            recoveredBlock113Stack2 := (recoveredBlock113Stack2) equals: (recoveredBlock113Stack3).
            recoveredBlock113PC := 216.
        ].
        recoveredBlock113Step = 216 ifTrue: [
            recoveredBlock113Stack2 := (recoveredBlock113Stack2) not.
            recoveredBlock113PC := 217.
        ].
        recoveredBlock113Step = 217 ifTrue: [
            (recoveredBlock113Stack1) setDirectAccess: (recoveredBlock113Stack2).
            recoveredBlock113PC := 219.
        ].
        recoveredBlock113Step = 219 ifTrue: [
            recoveredBlock113Stack1 := recoveredLocal6.
            recoveredBlock113PC := 222.
        ].
        recoveredBlock113Step = 222 ifTrue: [
            recoveredBlock113Stack2 := recoveredBlock113Arg1.
            recoveredBlock113PC := 223.
        ].
        recoveredBlock113Step = 223 ifTrue: [
            recoveredBlock113Stack2 := (recoveredBlock113Stack2) isIn.
            recoveredBlock113PC := 225.
        ].
        recoveredBlock113Step = 225 ifTrue: [
            (recoveredBlock113Stack1) setInArg: (recoveredBlock113Stack2).
            recoveredBlock113PC := 227.
        ].
        recoveredBlock113Step = 227 ifTrue: [
            recoveredBlock113Stack1 := recoveredLocal6.
            recoveredBlock113PC := 230.
        ].
        recoveredBlock113Step = 230 ifTrue: [
            recoveredBlock113Stack2 := recoveredBlock113Arg1.
            recoveredBlock113PC := 231.
        ].
        recoveredBlock113Step = 231 ifTrue: [
            recoveredBlock113Stack2 := (recoveredBlock113Stack2) isOut.
            recoveredBlock113PC := 233.
        ].
        recoveredBlock113Step = 233 ifTrue: [
            (recoveredBlock113Stack1) setOutArg: (recoveredBlock113Stack2).
            recoveredBlock113PC := 235.
        ].
        recoveredBlock113Step = 235 ifTrue: [
            recoveredBlock113Stack1 := recoveredLocal7.
            recoveredBlock113PC := 238.
        ].
        recoveredBlock113Step = 238 ifTrue: [
            recoveredBlock113Stack2 := recoveredBlock113Stack1.
            recoveredBlock113PC := 239.
        ].
        recoveredBlock113Step = 239 ifTrue: [
            recoveredBlock113Stack3 := recoveredBlock113Arg1.
            recoveredBlock113PC := 240.
        ].
        recoveredBlock113Step = 240 ifTrue: [
            recoveredBlock113Stack3 := (recoveredBlock113Stack3) typeID.
            recoveredBlock113PC := 242.
        ].
        recoveredBlock113Step = 242 ifTrue: [
            (recoveredBlock113Stack2) typeID: (recoveredBlock113Stack3).
            recoveredBlock113Stack2 := recoveredBlock113Stack1.
            recoveredBlock113PC := 245.
        ].
        recoveredBlock113Step = 245 ifTrue: [
            recoveredBlock113Stack3 := recoveredLocal6.
            recoveredBlock113PC := 248.
        ].
        recoveredBlock113Step = 248 ifTrue: [
            (recoveredBlock113Stack2) setExternalConnectorGO: (recoveredBlock113Stack3).
            recoveredBlock113Stack2 := recoveredBlock113Stack1.
            recoveredBlock113PC := 251.
        ].
        recoveredBlock113Step = 251 ifTrue: [
            recoveredBlock113Stack3 := recoveredBlock113Arg1.
            recoveredBlock113PC := 252.
        ].
        recoveredBlock113Step = 252 ifTrue: [
            recoveredBlock113Stack3 := (recoveredBlock113Stack3) elementName.
            recoveredBlock113PC := 254.
        ].
        recoveredBlock113Step = 254 ifTrue: [
            (recoveredBlock113Stack2) buildConnectorNameGO: (recoveredBlock113Stack3).
            recoveredBlock113PC := 256.
        ].
        recoveredBlock113Step = 256 ifTrue: [
            recoveredBlock113Stack2 := recoveredBlock113Arg1.
            recoveredBlock113PC := 257.
        ].
        recoveredBlock113Step = 257 ifTrue: [
            recoveredBlock113Stack2 := (recoveredBlock113Stack2) aliasName.
            recoveredBlock113PC := 259.
        ].
        recoveredBlock113Step = 259 ifTrue: [
            (recoveredBlock113Stack1) connectorAliasName: (recoveredBlock113Stack2).
            recoveredBlock113PC := 261.
        ].
        recoveredBlock113Step = 261 ifTrue: [
            recoveredBlock113Stack1 := recoveredLocal7.
            recoveredBlock113PC := 264.
        ].
        recoveredBlock113Step = 264 ifTrue: [
            recoveredBlock113Stack0 := (recoveredBlock113Stack0) addInterfaceGO: (recoveredBlock113Stack1).
            recoveredBlock113PC := 266.
        ].
        recoveredBlock113Step = 266 ifTrue: [
            recoveredBlock113Result := recoveredBlock113Stack0.
            recoveredBlock113Done := true.
        ].
    ].
    recoveredBlock113Result
].
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredPC := 421.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack0 := SGBlockInterfaceElementGO.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack0 := (recoveredStack0) createWithLineStyle: (recoveredStack1) manager: (recoveredStack2).
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack0 := (recoveredStack0) isProcess.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 308] ifFalse: [recoveredPC := 300].
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRunnable.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 308] ifFalse: [recoveredPC := 316].
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack0 := SGProcessSelectorConnectorGO.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredPC := 321.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack0 := SGSelectorConnectorGO.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredStack0 := (recoveredStack0) topPortPosAndDir.
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack0 := (recoveredStack0) createWithLineStyle: (recoveredStack1) manager: (recoveredStack2).
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            recoveredStack4 := 2.
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            recoveredStack4 := PinLength.
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            (recoveredStack1) initAt: (recoveredStack2) direction: (recoveredStack3) length: (recoveredStack4).
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            recoveredStack2 := (recoveredStack2) isGetSetMethodForElement.
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 376] ifFalse: [recoveredPC := 389].
        ].
        recoveredStep = 376 ifTrue: [
            recoveredPC := 377.
        ].
        recoveredStep = 377 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 380.
        ].
        recoveredStep = 380 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodName.
            recoveredPC := 382.
        ].
        recoveredStep = 382 ifTrue: [
            recoveredStack2 := SGReservedNames.
            recoveredPC := 384.
        ].
        recoveredStep = 384 ifTrue: [
            recoveredStack2 := (recoveredStack2) setMethod.
            recoveredPC := 386.
        ].
        recoveredStep = 386 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 388.
        ].
        recoveredStep = 388 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            (recoveredStack0) setDirectAccess: (recoveredStack1).
            recoveredPC := 391.
        ].
        recoveredStep = 391 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 394.
        ].
        recoveredStep = 394 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 395.
        ].
        recoveredStep = 395 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 398.
        ].
        recoveredStep = 398 ifTrue: [
            (recoveredStack1) setExternalConnectorGO: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 401.
        ].
        recoveredStep = 401 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 404.
        ].
        recoveredStep = 404 ifTrue: [
            recoveredStack2 := (recoveredStack2) methodName.
            recoveredPC := 406.
        ].
        recoveredStep = 406 ifTrue: [
            (recoveredStack1) buildConnectorNameGO: (recoveredStack2).
            recoveredPC := 408.
        ].
        recoveredStep = 408 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 411.
        ].
        recoveredStep = 411 ifTrue: [
            recoveredStack1 := (recoveredStack1) aliasName.
            recoveredPC := 413.
        ].
        recoveredStep = 413 ifTrue: [
            (recoveredStack0) connectorAliasName: (recoveredStack1).
            recoveredPC := 415.
        ].
        recoveredStep = 415 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 416.
        ].
        recoveredStep = 416 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 419.
        ].
        recoveredStep = 419 ifTrue: [
            (recoveredStack0) addInterfaceGO: (recoveredStack1).
            recoveredPC := 421.
        ].
        recoveredStep = 421 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 422.
        ].
        recoveredStep = 422 ifTrue: [
            recoveredStack1 := SGCallGO.
            recoveredPC := 424.
        ].
        recoveredStep = 424 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 425.
        ].
        recoveredStep = 425 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 428.
        ].
        recoveredStep = 428 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForPortGO: (recoveredStack2) lineStyle: (recoveredStack3).
            recoveredPC := 430.
        ].
        recoveredStep = 430 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 431.
        ].
        recoveredStep = 431 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 432.
        ].
        recoveredStep = 432 ifTrue: [
            (recoveredStack2) visible: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 435.
        ].
        recoveredStep = 435 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 436.
        ].
        recoveredStep = 436 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 439.
        ].
        recoveredStep = 439 ifTrue: [
            recoveredStack3 := (recoveredStack3) defaultSeqCallModelVisibility: (recoveredStack4).
            recoveredPC := 441.
        ].
        recoveredStep = 441 ifTrue: [
            (recoveredStack2) modelVisibility: (recoveredStack3).
            recoveredPC := 443.
        ].
        recoveredStep = 443 ifTrue: [
            (recoveredStack0) setSGCallGO: (recoveredStack1).
            recoveredPC := 445.
        ].
        recoveredStep = 445 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 446.
        ].
        recoveredStep = 446 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

