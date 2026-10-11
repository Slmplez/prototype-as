"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20029e24; bytecode file offset 0x934580"
!SGPaneController methodsFor: 'recovered'!
isInConnectMode
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) currentMode.
    recoveredValue1 := (recoveredValue0) isInConnectMode.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002ad84; bytecode file offset 0x934580"
!SGPaneController methodsFor: 'recovered'!
font
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) initializeServer.
    recoveredValue1 := (recoveredValue0) font.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200321c4; bytecode file offset 0x934580"
!SGPaneController methodsFor: 'recovered'!
getFont
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) initializeServer.
    recoveredValue1 := (recoveredValue0) font.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003873c; bytecode file offset 0x935c54"
!SGPaneController methodsFor: 'recovered'!
resetSequenceCallsFor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) resetSequenceCalls.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004918c; bytecode file offset 0x945a50"
!SGPaneController methodsFor: 'recovered'!
resetMemento
    memento := nil.
    ^self
! !

"ASDBase.ic method 0x20064484; bytecode file offset 0x961970"
!SGPaneController methodsFor: 'recovered'!
toggleConnect
    | recoveredValue0 |
    recoveredValue0 := (self) currentMode.
    (recoveredValue0) toggleConnect.
    ^self
! !

"ASDBase.ic method 0x2006f9c0; bytecode file offset 0x96c42c"
!SGPaneController methodsFor: 'recovered'!
mementoEnabled
    | recoveredValue0 |
    recoveredValue0 := mementoEnabled.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20070290; bytecode file offset 0x96cb7c"
!SGPaneController methodsFor: 'recovered'!
connecting
    | recoveredValue0 |
    recoveredValue0 := connecting.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20098db4; bytecode file offset 0x995850"
!SGPaneController methodsFor: 'recovered'!
font: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) initializeServer.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) font: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200b7d2c; bytecode file offset 0x9b46dc"
!SGPaneController methodsFor: 'recovered'!
copyLayoutGO: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := Array.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) with: (recoveredValue1).
    (self) layoutBuffer: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200c6134; bytecode file offset 0x9c29e8"
!SGPaneController methodsFor: 'recovered'!
mementoEnabled: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    mementoEnabled := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d5074; bytecode file offset 0x9d193c"
!SGPaneController methodsFor: 'recovered'!
layoutBuffer
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) bufferDictionary.
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue1) at: ('layoutBuffer') ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200dab5c; bytecode file offset 0x9d7420"
!SGPaneController methodsFor: 'recovered'!
layoutBuffer: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) bufferDictionary.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) at: ('layoutBuffer') put: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200e8bb0; bytecode file offset 0x9e546c"
!SGPaneController methodsFor: 'recovered'!
connecting: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    connecting := recoveredValue0.
    recoveredValue1 := recoveredArg1.
    (self) broadcast: ('updateConnectToolbar:') with: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200ee730; bytecode file offset 0x9eafec"
!SGPaneController methodsFor: 'recovered'!
pasteBuffer
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) currentDeltaValue.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := (self) pasteBufferBasicDisplay: (true) delta: (recoveredValue1) setModify: (true).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200f7e0c; bytecode file offset 0x9f4e38"
!SGPaneController methodsFor: 'recovered'!
selectedBlockIDs
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedBlocks.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c5310Arg1 | 
    | block280c5310Value0 block280c5310Value1 |
    block280c5310Value0 := block280c5310Arg1.
    block280c5310Value1 := (block280c5310Value0) identifier.
    block280c5310Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200f9100; bytecode file offset 0x9f59bc"
!SGPaneController methodsFor: 'recovered'!
close
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) actualHierarchy.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) actualHierarchy.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) controller: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200fc150; bytecode file offset 0x9f8a10"
!SGPaneController methodsFor: 'recovered'!
fitsForModifiedValue: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('hw') == ('wb_sifting').
    recoveredValue1 := (recoveredValue0) == ('call_70184').
    recoveredValue2 := recoveredArg1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20113208; bytecode file offset 0xa0fac4"
!SGPaneController methodsFor: 'recovered'!
doWithoutMemento: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    (self) mementoEnabled: (false).
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) value.
    recoveredLocal1 := recoveredValue1.
    (self) mementoEnabled: (true).
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2011a528; bytecode file offset 0xa16dec"
!SGPaneController methodsFor: 'recovered'!
informBuildingIsFinished
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) connecting.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 11].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) connect.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) owner.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) informBuildingIsFinished.
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

"ASDBase.ic method 0x2011be74; bytecode file offset 0xa18738"
!SGPaneController methodsFor: 'recovered'!
buildHierarchy
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedGOs.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) addHierarchyGO.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) buildHierarchyWithSelectedGOs: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2011bea0; bytecode file offset 0xa18764"
!SGPaneController methodsFor: 'recovered'!
buildStatementBlock
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedGOs.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) addStatementBlockGO.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) buildHierarchyWithSelectedGOs: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201441cc; bytecode file offset 0xa40a8c"
!SGPaneController methodsFor: 'recovered'!
graphicsModified: recoveredArg1
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
            (recoveredStack1) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) createMementoBuildNewIdentifiers: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            super graphicsModified: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2014e944; bytecode file offset 0xa4b210"
!SGPaneController methodsFor: 'recovered'!
cutSelected
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) selectedGOs.
    recoveredValue1 := ASDCopyPasteBuffer.
    recoveredValue2 := (recoveredValue1) cutActionType.
    (self) copyObjects: (recoveredValue0) actionType: (recoveredValue2).
    (self) removeSelectedGOs.
    (self) graphicsModified: (true).
    ^self
! !

"ASDBase.ic method 0x20159808; bytecode file offset 0xa56118"
!SGPaneController methodsFor: 'recovered'!
addCommentGO
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) initializeServer.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) initComment.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
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
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) newBuildGO: (recoveredStack1).
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

"ASDBase.ic method 0x20159844; bytecode file offset 0xa56118"
!SGPaneController methodsFor: 'recovered'!
addJunction
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) initializeServer.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) initJunction.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
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
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) newBuildGO: (recoveredStack1).
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

"ASDBase.ic method 0x2015ab34; bytecode file offset 0xa57408"
!SGPaneController methodsFor: 'recovered'!
addSelf: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) initializeServer.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) initSelf: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
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
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) newBuildGO: (recoveredStack1).
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

"ASDBase.ic method 0x2015ab48; bytecode file offset 0xa57408"
!SGPaneController methodsFor: 'recovered'!
addInstVar: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) initializeServer.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) initInstVar: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
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
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) newBuildGO: (recoveredStack1).
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

"ASDBase.ic method 0x2017afdc; bytecode file offset 0xa778a0"
!SGPaneController methodsFor: 'recovered'!
addState
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) initializeServer.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) stateLabels.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) initState: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) newBuildGO: (recoveredStack1).
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

"ASDBase.ic method 0x2017d7a0; bytecode file offset 0xa7a060"
!SGPaneController methodsFor: 'recovered'!
addOperator: recoveredArg1 arguments: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) initializeServer.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) initOperator: (recoveredStack1) arguments: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) newBuildGO: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2019ba1c; bytecode file offset 0xa982e0"
!SGPaneController methodsFor: 'recovered'!
addLiteral: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) initializeServer.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) initLiteral.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
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
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) literalString: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) newBuildGO: (recoveredStack1).
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

"ASDBase.ic method 0x201a00d0; bytecode file offset 0xa9c998"
!SGPaneController methodsFor: 'recovered'!
initializeServer
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := initializeServer.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := SGInitializeServer.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) owner.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) datamodelManager.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForDatamodelManager: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack2) initWithController: (recoveredStack3).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            initializeServer := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := initializeServer.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201b2888; bytecode file offset 0xaaf150"
!SGPaneController methodsFor: 'recovered'!
removeElementGOsAliasName: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := currentMode.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) abortBuilding.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) allElementGOsAliasName: (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := [:block280d4190Arg1 | 
    | block280d4190Value0 block280d4190Value1 block280d4190Value2 |
    block280d4190Value0 := block280d4190Arg1.
    block280d4190Value1 := block280d4190Arg1.
    block280d4190Value2 := (block280d4190Value0) removeGO: (block280d4190Value1) display: (true).
    block280d4190Value2
].
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201ca908; bytecode file offset 0xac71d8"
!SGPaneController methodsFor: 'recovered'!
initialize
    | recoveredValue0 |
    super initialize.
    recoveredValue0 := ('Kk') == ('Call_60730').
    (self) connecting: (false).
    (self) mementoEnabled: (true).
    (self) resetMemento.
    ^self
! !

"ASDBase.ic method 0x201ddce8; bytecode file offset 0xada5b0"
!SGPaneController methodsFor: 'recovered'!
pasteSelected
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) pasteBuffer.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
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
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentMode.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) defaultState.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) setSelectStateWithGOs: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201eb98c; bytecode file offset 0xae8250"
!SGPaneController methodsFor: 'recovered'!
mementoStream
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := memento.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := ReadWriteStream.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            memento := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := memento.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20215c7c; bytecode file offset 0xb12548"
!SGPaneController methodsFor: 'recovered'!
addProcedureParameter: recoveredArg1 atPosition: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) initializeServer.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) initProcedureParameter: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
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
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := OS.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := VkShift.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) getKeyState: (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack4 := true.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) addGO: (recoveredStack1) insertInLine: (recoveredStack2) atPosition: (recoveredStack3) display: (recoveredStack4).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20274518; bytecode file offset 0xb70df0"
!SGPaneController methodsFor: 'recovered'!
addHierarchyGO
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) initializeServer.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) actualHierarchy.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) initHierarchyParent: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) basicGraphObject.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) label.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) actualHierarchy.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) hierarchyLabelsLocal.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) uniqueStringFor: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) basicGraphObject.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) changeActualName: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) newBuildGO: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2027742c; bytecode file offset 0xb73d08"
!SGPaneController methodsFor: 'recovered'!
newBuildGO: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) basicGraphObject.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isConnectionGO.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 27] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) raster.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isActive.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) getPosition.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 27] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) raster.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) fitToRaster: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) graphicObjects.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) manager: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) updateDrawingOrder.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) buildGO: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202914cc; bytecode file offset 0xb8dda0"
!SGPaneController methodsFor: 'recovered'!
connect
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'wb_sifting'.
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
            recoveredStack1 := actualHierarchy.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) connecting: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) initializeServer.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) initConnection.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 41] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := actualHierarchy.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) contents.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) setManager: (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) newBuildGO: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20294590; bytecode file offset 0xb90e60"
!SGPaneController methodsFor: 'recovered'!
getDefaultTriggerMethod
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := owner.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) datamodelManager.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) specification.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) methods.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := owner.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectedMethod.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202af88c; bytecode file offset 0xbac168"
!SGPaneController methodsFor: 'recovered'!
addSwitch: recoveredArg1 arguments: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) initializeServer.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) initSwitch: (recoveredStack1) arguments: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) actualHierarchy.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) isStatementBlockWrapperGO.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) setManager: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) sequenceCalls.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := [:block280e48d0Arg1 | 
    | block280e48d0Value0 block280e48d0Value1 |
    block280e48d0Value0 := block280e48d0Arg1.
    block280e48d0Value1 := (block280e48d0Value0) createPinForStatementBlock.
    block280e48d0Value1
].
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 40.
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
            (recoveredStack0) newBuildGO: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202b1704; bytecode file offset 0xbadfc4"
!SGPaneController methodsFor: 'recovered'!
undoRedoPossible: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) mementoStream.
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
            recoveredStack0 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) position.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 30 ifTrue: [
            recoveredPC := 44.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20340344; bytecode file offset 0xc3cc30"
!SGPaneController methodsFor: 'recovered'!
addStatementBlockGO
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) initializeServer.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) actualHierarchy.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) initStatementBlockParent: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) basicGraphObject.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) label.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) allHierarchies.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := [:block280ede04Arg1 | 
    | block280ede04Value0 block280ede04Value1 |
    block280ede04Value0 := block280ede04Arg1.
    block280ede04Value1 := (block280ede04Value0) isStatementBlockWrapperGO.
    block280ede04Value1
].
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := [:block280ede28Arg1 | 
    | block280ede28Value0 block280ede28Value1 |
    block280ede28Value0 := block280ede28Arg1.
    block280ede28Value1 := (block280ede28Value0) label.
    block280ede28Value1
].
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) uniqueStringFor: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) basicGraphObject.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) changeActualName: (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) newBuildGO: (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2034dd68; bytecode file offset 0xc4a660"
!SGPaneController methodsFor: 'recovered'!
selectedGO: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getBDEController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) userInterface.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSimulationView.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) basicGraphObject.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) viewAsLine.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) basicGraphObject.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) connectedBlocks.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := [:block280eec5cArg1 | 
    | block280eec5cValue0 block280eec5cValue1 block280eec5cValue2 |
    block280eec5cValue0 := block280eec5cArg1.
    block280eec5cValue1 := (block280eec5cValue0) basicGraphObject.
    block280eec5cValue2 := (block280eec5cValue1) viewAsLine.
    block280eec5cValue2
].
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) anySatisfy: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) | (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := 'CAUTION: Element shown in "As Line" view could be affected!!'.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) isConnectedElementsActive.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) basicGraphObject.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) menuBrowseConnectedElements.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            super selectedGO: (recoveredStack1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2037bbcc; bytecode file offset 0xc784c0"
!SGPaneController methodsFor: 'recovered'!
pasteLayoutGO: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1) changeStarted.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) layoutBuffer.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) someElement.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) getPosition.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) size: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) lineStyle.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) deepCopy.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) lineStyle: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) frameGO.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) frameGO.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) areaStyle.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) deepCopy.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) areaStyle: (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) updateDynamicStateConnectors.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) moveTo: (recoveredStack1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) giveRedisplayRects.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0) displayRectsSetModified: (recoveredStack1).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203e76cc; bytecode file offset 0xce3fb8"
!SGPaneController methodsFor: 'recovered'!
updateSequenceCallsForMethod: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Array.
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
            recoveredStack0 := (recoveredStack0) sequenceCalls.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 recoveredBlock11Value4 |
    recoveredBlock11Value0 := recoveredBlock11Arg1.
    recoveredBlock11Value1 := (recoveredBlock11Value0) editedAlias.
    recoveredBlock11Value2 := recoveredArg1.
    recoveredBlock11Value3 := (recoveredBlock11Value2) aliasName.
    recoveredBlock11Value4 := (recoveredBlock11Value1) = (recoveredBlock11Value3).
    recoveredBlock11Value4
].
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := [:recoveredBlock45Arg1 | 
    | recoveredBlock45Value0 recoveredBlock45Value1 recoveredBlock45Value2 recoveredBlock45Value3 recoveredBlock45Value4 recoveredBlock45Value5 recoveredBlock45Value6 recoveredBlock45Value7 recoveredBlock45Value8 recoveredBlock45Value9 recoveredBlock45Value10 |
    recoveredBlock45Value0 := recoveredBlock45Arg1.
    (recoveredBlock45Value0) changeStarted.
    recoveredBlock45Value1 := recoveredBlock45Arg1.
    recoveredBlock45Value2 := recoveredBlock45Arg1.
    recoveredBlock45Value3 := (recoveredBlock45Value2) editedNo.
    recoveredBlock45Value4 := recoveredArg1.
    recoveredBlock45Value5 := (recoveredBlock45Value4) aliasName.
    (recoveredBlock45Value1) updateSeqNo: (recoveredBlock45Value3) seqAlias: (recoveredBlock45Value5).
    recoveredBlock45Value6 := recoveredLocal1.
    recoveredBlock45Value7 := recoveredBlock45Arg1.
    recoveredBlock45Value8 := (recoveredBlock45Value7) giveRedisplayRects.
    recoveredBlock45Value9 := (recoveredBlock45Value6) , (recoveredBlock45Value8).
    recoveredBlock45Value10 := recoveredBlock45Value9.
    recoveredLocal1 := recoveredBlock45Value10.
    recoveredBlock45Value9
].
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack0) displayRectsSetModified: (recoveredStack1).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2041e584; bytecode file offset 0xd1ae88"
!SGPaneController methodsFor: 'recovered'!
addElement: recoveredArg1 insertInLine: recoveredArg2 atPosition: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) normalMode.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) isAliasForSelf.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) initializeServer.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClass.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) initSelf: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) initializeServer.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) initInstVar: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) label.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := 'ASCET_DEVELOPERS'.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSGBoolean.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) owner.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) userInterface.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) credits.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack4 := true.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) addGO: (recoveredStack1) insertInLine: (recoveredStack2) atPosition: (recoveredStack3) display: (recoveredStack4).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := 'Muzaffar'.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := 'Call_62408'.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := (recoveredStack0) widget.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack0) resetMotionInformation.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack0) updateIntersectingBlocksFor: (recoveredStack1).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := (recoveredStack1) frame.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack0) displayOneRect: (recoveredStack1).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2041e7a8; bytecode file offset 0xd1b0ac"
!SGPaneController methodsFor: 'recovered'!
addGO: recoveredArg1 insertInLine: recoveredArg2 atPosition: recoveredArg3 display: recoveredArg4
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) capturedPosition.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) widget.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := Association.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := (recoveredStack3) visibleFrame.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack4 := (recoveredStack4) capturedPosition.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) key: (recoveredStack3) value: (recoveredStack4).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) motionInformationPlacing: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) widget.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := Association.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := (recoveredStack3) logicFrame.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack4 := (recoveredStack4) capturedPosition.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := (recoveredStack2) key: (recoveredStack3) value: (recoveredStack4).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) motionInformationScrolling: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) widget.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) limitPoint: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredPC := 49.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := 'Call_73091'.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := 100.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := (recoveredStack3) widget.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack3 := (recoveredStack3) zoomingFactor.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := (recoveredStack2) / (recoveredStack3).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) rounded.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack1) moveTo: (recoveredStack2).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := (recoveredStack2) raster.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack1) fitToRaster: (recoveredStack2).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) graphicObjects.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack3 := recoveredArg4.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := (recoveredStack0) addOrReplaceGO: (recoveredStack1) insertInLine: (recoveredStack2) display: (recoveredStack3).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 94].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack0) redraw.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204201b4; bytecode file offset 0xd1caa8"
!SGPaneController methodsFor: 'recovered'!
undoRedo: recoveredArg1 datamodelManager: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) mementoStream.
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
            recoveredStack0 := (recoveredStack0) position.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := false.
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
            recoveredStack0 := (recoveredStack0) + (-2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredPC := 48.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            super undoRedo: (recoveredStack1) datamodelManager: (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) position: (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) next.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 93] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack0) restoreDatamodelManager: (recoveredStack1) paneCtrl: (recoveredStack2).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := 'Call_48347'.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) owner.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectedCategory.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack0) updateGOVisibility: (recoveredStack1).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            super graphicsModified: (recoveredStack1).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack0) updateIntersectingBlocks.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack0) redraw.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204207f0; bytecode file offset 0xd1d0cc"
!SGPaneController methodsFor: 'recovered'!
updateElementGOsAliasName: recoveredArg1 datamodelManager: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) allElementGOsAliasName: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Stack0 recoveredBlock14Stack1 recoveredBlock14Stack2 recoveredBlock14Stack3 recoveredBlock14Stack4 recoveredBlock14Stack5 recoveredBlock14PC recoveredBlock14Step recoveredBlock14Done recoveredBlock14Result |
    recoveredBlock14Stack0 := self.
    recoveredBlock14PC := 20.
    recoveredBlock14Done := false.
    [recoveredBlock14Done not] whileTrue: [
        recoveredBlock14Step := recoveredBlock14PC.
        recoveredBlock14Step = 20 ifTrue: [
            recoveredBlock14Stack1 := nil.
            recoveredBlock14PC := 21.
        ].
        recoveredBlock14Step = 21 ifTrue: [
            recoveredBlock14Stack2 := owner.
            recoveredBlock14PC := 23.
        ].
        recoveredBlock14Step = 23 ifTrue: [
            recoveredBlock14Stack3 := recoveredBlock14Arg1.
            recoveredBlock14PC := 24.
        ].
        recoveredBlock14Step = 24 ifTrue: [
            recoveredBlock14Stack3 := (recoveredBlock14Stack3) aliasName.
            recoveredBlock14PC := 25.
        ].
        recoveredBlock14Step = 25 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) elementAliasName: (recoveredBlock14Stack3).
            recoveredBlock14PC := 27.
        ].
        recoveredBlock14Step = 27 ifTrue: [
            recoveredBlock14Stack3 := recoveredBlock14Stack2.
            recoveredBlock14PC := 28.
        ].
        recoveredBlock14Step = 28 ifTrue: [
            recoveredLocal2 := recoveredBlock14Stack3.
            recoveredBlock14PC := 31.
        ].
        recoveredBlock14Step = 31 ifTrue: [
            (recoveredBlock14Stack2 == nil) ifTrue: [recoveredBlock14PC := 65] ifFalse: [recoveredBlock14PC := 34].
        ].
        recoveredBlock14Step = 34 ifTrue: [
            recoveredBlock14PC := 35.
        ].
        recoveredBlock14Step = 35 ifTrue: [
            recoveredBlock14Stack1 := nil.
            recoveredBlock14PC := 36.
        ].
        recoveredBlock14Step = 36 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Arg1.
            recoveredBlock14PC := 37.
        ].
        recoveredBlock14Step = 37 ifTrue: [
            recoveredBlock14Stack3 := recoveredLocal2.
            recoveredBlock14PC := 40.
        ].
        recoveredBlock14Step = 40 ifTrue: [
            recoveredBlock14Stack4 := recoveredArg2.
            recoveredBlock14PC := 43.
        ].
        recoveredBlock14Step = 43 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) updateGOForElement: (recoveredBlock14Stack3) datamodelManager: (recoveredBlock14Stack4).
            recoveredBlock14PC := 45.
        ].
        recoveredBlock14Step = 45 ifTrue: [
            recoveredBlock14Stack3 := recoveredBlock14Stack2.
            recoveredBlock14PC := 46.
        ].
        recoveredBlock14Step = 46 ifTrue: [
            recoveredLocal3 := recoveredBlock14Stack3.
            recoveredBlock14PC := 49.
        ].
        recoveredBlock14Step = 49 ifTrue: [
            (recoveredBlock14Stack2 == nil) ifTrue: [recoveredBlock14PC := 65] ifFalse: [recoveredBlock14PC := 52].
        ].
        recoveredBlock14Step = 52 ifTrue: [
            recoveredBlock14PC := 53.
        ].
        recoveredBlock14Step = 53 ifTrue: [
            recoveredBlock14Stack1 := recoveredLocal4.
            recoveredBlock14PC := 56.
        ].
        recoveredBlock14Step = 56 ifTrue: [
            recoveredBlock14Stack2 := recoveredLocal3.
            recoveredBlock14PC := 59.
        ].
        recoveredBlock14Step = 59 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) , (recoveredBlock14Stack2).
            recoveredBlock14PC := 61.
        ].
        recoveredBlock14Step = 61 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Stack1.
            recoveredBlock14PC := 62.
        ].
        recoveredBlock14Step = 62 ifTrue: [
            recoveredLocal4 := recoveredBlock14Stack2.
            recoveredBlock14PC := 65.
        ].
        recoveredBlock14Step = 65 ifTrue: [
            recoveredBlock14Result := recoveredBlock14Stack1.
            recoveredBlock14Done := true.
        ].
    ].
    recoveredBlock14Result
].
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := owner.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) elementAliasName: (recoveredStack1).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 99] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentMode.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack0) updateGOForElement: (recoveredStack1) datamodelManager: (recoveredStack2).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack0) displayRects: (recoveredStack1).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204888b8; bytecode file offset 0xd851a8"
!SGPaneController methodsFor: 'recovered'!
selectedGOsGraphicObjects
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := Set.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) selectedGOs.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Local1 recoveredBlock11Local2 recoveredBlock11Stack0 recoveredBlock11Stack1 recoveredBlock11Stack2 recoveredBlock11Stack3 recoveredBlock11Stack4 recoveredBlock11PC recoveredBlock11Step recoveredBlock11Done recoveredBlock11Result |
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
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) basicGraphObject.
            recoveredBlock11PC := 20.
        ].
        recoveredBlock11Step = 20 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) isConnectionGO.
            recoveredBlock11PC := 22.
        ].
        recoveredBlock11Step = 22 ifTrue: [
            (recoveredBlock11Stack1) ifTrue: [recoveredBlock11PC := 26] ifFalse: [recoveredBlock11PC := 104].
        ].
        recoveredBlock11Step = 26 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Arg1.
            recoveredBlock11PC := 27.
        ].
        recoveredBlock11Step = 27 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) graphObject.
            recoveredBlock11PC := 29.
        ].
        recoveredBlock11Step = 29 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) startGO.
            recoveredBlock11PC := 31.
        ].
        recoveredBlock11Step = 31 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) getBasicBlock.
            recoveredBlock11PC := 33.
        ].
        recoveredBlock11Step = 33 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Stack1.
            recoveredBlock11PC := 34.
        ].
        recoveredBlock11Step = 34 ifTrue: [
            recoveredBlock11Local2 := recoveredBlock11Stack2.
            recoveredBlock11PC := 35.
        ].
        recoveredBlock11Step = 35 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) isSGHierarchyGO.
            recoveredBlock11PC := 37.
        ].
        recoveredBlock11Step = 37 ifTrue: [
            (recoveredBlock11Stack1) ifTrue: [recoveredBlock11PC := 40] ifFalse: [recoveredBlock11PC := 44].
        ].
        recoveredBlock11Step = 40 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Local2.
            recoveredBlock11PC := 41.
        ].
        recoveredBlock11Step = 41 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) hierarchyMGO.
            recoveredBlock11PC := 43.
        ].
        recoveredBlock11Step = 43 ifTrue: [
            recoveredBlock11Local2 := recoveredBlock11Stack1.
            recoveredBlock11PC := 44.
        ].
        recoveredBlock11Step = 44 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Arg1.
            recoveredBlock11PC := 45.
        ].
        recoveredBlock11Step = 45 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) graphObject.
            recoveredBlock11PC := 47.
        ].
        recoveredBlock11Step = 47 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) endGO.
            recoveredBlock11PC := 49.
        ].
        recoveredBlock11Step = 49 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) getBasicBlock.
            recoveredBlock11PC := 51.
        ].
        recoveredBlock11Step = 51 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Stack1.
            recoveredBlock11PC := 52.
        ].
        recoveredBlock11Step = 52 ifTrue: [
            recoveredBlock11Local1 := recoveredBlock11Stack2.
            recoveredBlock11PC := 53.
        ].
        recoveredBlock11Step = 53 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) isSGHierarchyGO.
            recoveredBlock11PC := 55.
        ].
        recoveredBlock11Step = 55 ifTrue: [
            (recoveredBlock11Stack1) ifTrue: [recoveredBlock11PC := 58] ifFalse: [recoveredBlock11PC := 62].
        ].
        recoveredBlock11Step = 58 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Local1.
            recoveredBlock11PC := 59.
        ].
        recoveredBlock11Step = 59 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) hierarchyMGO.
            recoveredBlock11PC := 61.
        ].
        recoveredBlock11Step = 61 ifTrue: [
            recoveredBlock11Local1 := recoveredBlock11Stack1.
            recoveredBlock11PC := 62.
        ].
        recoveredBlock11Step = 62 ifTrue: [
            recoveredBlock11Stack1 := nil.
            recoveredBlock11PC := 63.
        ].
        recoveredBlock11Step = 63 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Local2.
            recoveredBlock11PC := 64.
        ].
        recoveredBlock11Step = 64 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) basicGraphObject.
            recoveredBlock11PC := 65.
        ].
        recoveredBlock11Step = 65 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) isInOutPortGO.
            recoveredBlock11PC := 67.
        ].
        recoveredBlock11Step = 67 ifTrue: [
            (recoveredBlock11Stack2) ifTrue: [recoveredBlock11PC := 97] ifFalse: [recoveredBlock11PC := 70].
        ].
        recoveredBlock11Step = 70 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Local1.
            recoveredBlock11PC := 71.
        ].
        recoveredBlock11Step = 71 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) basicGraphObject.
            recoveredBlock11PC := 72.
        ].
        recoveredBlock11Step = 72 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) isInOutPortGO.
            recoveredBlock11PC := 74.
        ].
        recoveredBlock11Step = 74 ifTrue: [
            (recoveredBlock11Stack2) ifTrue: [recoveredBlock11PC := 97] ifFalse: [recoveredBlock11PC := 78].
        ].
        recoveredBlock11Step = 78 ifTrue: [
            recoveredBlock11PC := 79.
        ].
        recoveredBlock11Step = 79 ifTrue: [
            recoveredBlock11Stack1 := recoveredLocal1.
            recoveredBlock11PC := 82.
        ].
        recoveredBlock11Step = 82 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 83.
        ].
        recoveredBlock11Step = 83 ifTrue: [
            (recoveredBlock11Stack1) add: (recoveredBlock11Stack2).
            recoveredBlock11PC := 85.
        ].
        recoveredBlock11Step = 85 ifTrue: [
            recoveredBlock11Stack1 := recoveredLocal1.
            recoveredBlock11PC := 88.
        ].
        recoveredBlock11Step = 88 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Local2.
            recoveredBlock11PC := 89.
        ].
        recoveredBlock11Step = 89 ifTrue: [
            (recoveredBlock11Stack1) add: (recoveredBlock11Stack2).
            recoveredBlock11PC := 91.
        ].
        recoveredBlock11Step = 91 ifTrue: [
            recoveredBlock11Stack1 := recoveredLocal1.
            recoveredBlock11PC := 94.
        ].
        recoveredBlock11Step = 94 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Local1.
            recoveredBlock11PC := 95.
        ].
        recoveredBlock11Step = 95 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) add: (recoveredBlock11Stack2).
            recoveredBlock11PC := 97.
        ].
        recoveredBlock11Step = 97 ifTrue: [
            recoveredBlock11Stack2 := nil.
            recoveredBlock11PC := 98.
        ].
        recoveredBlock11Step = 98 ifTrue: [
            recoveredBlock11Stack3 := recoveredBlock11Stack2.
            recoveredBlock11PC := 99.
        ].
        recoveredBlock11Step = 99 ifTrue: [
            recoveredBlock11Local2 := recoveredBlock11Stack3.
            recoveredBlock11PC := 100.
        ].
        recoveredBlock11Step = 100 ifTrue: [
            recoveredBlock11Local1 := recoveredBlock11Stack2.
            recoveredBlock11PC := 101.
        ].
        recoveredBlock11Step = 101 ifTrue: [
            recoveredBlock11PC := 121.
        ].
        recoveredBlock11Step = 104 ifTrue: [
            recoveredBlock11Stack1 := nil.
            recoveredBlock11PC := 105.
        ].
        recoveredBlock11Step = 105 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 106.
        ].
        recoveredBlock11Step = 106 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) basicGraphObject.
            recoveredBlock11PC := 107.
        ].
        recoveredBlock11Step = 107 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) isInOutPortGO.
            recoveredBlock11PC := 109.
        ].
        recoveredBlock11Step = 109 ifTrue: [
            (recoveredBlock11Stack2) ifTrue: [recoveredBlock11PC := 121] ifFalse: [recoveredBlock11PC := 112].
        ].
        recoveredBlock11Step = 112 ifTrue: [
            recoveredBlock11PC := 113.
        ].
        recoveredBlock11Step = 113 ifTrue: [
            recoveredBlock11Stack1 := recoveredLocal1.
            recoveredBlock11PC := 116.
        ].
        recoveredBlock11Step = 116 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 117.
        ].
        recoveredBlock11Step = 117 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) graphObject.
            recoveredBlock11PC := 119.
        ].
        recoveredBlock11Step = 119 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) add: (recoveredBlock11Stack2).
            recoveredBlock11PC := 121.
        ].
        recoveredBlock11Step = 121 ifTrue: [
            recoveredBlock11Result := recoveredBlock11Stack1.
            recoveredBlock11Done := true.
        ].
    ].
    recoveredBlock11Result
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue4) asOrderedCollection.
    ^recoveredValue5
! !

"ASDBase.ic method 0x2049e980; bytecode file offset 0xd9b26c"
!SGPaneController methodsFor: 'recovered'!
setSequenceCallsFor: recoveredArg1 methodName: recoveredArg2 aliasName: recoveredArg3 offset: recoveredArg4
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
            recoveredStack1 := (recoveredStack1) isSGHierarchyWrapperGO.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) children.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Value0 recoveredBlock16Value1 recoveredBlock16Value2 recoveredBlock16Value3 recoveredBlock16Value4 |
    recoveredBlock16Value0 := recoveredBlock16Arg1.
    recoveredBlock16Value1 := recoveredArg2.
    recoveredBlock16Value2 := recoveredArg3.
    recoveredBlock16Value3 := recoveredArg4.
    recoveredBlock16Value4 := (self) setSequenceCallsFor: (recoveredBlock16Value0) methodName: (recoveredBlock16Value1) aliasName: (recoveredBlock16Value2) offset: (recoveredBlock16Value3).
    recoveredBlock16Value4
].
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredPC := 136.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) basicGraphObject.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) isConnectionGO.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 130] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) element.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 130] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) element.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMethodElement.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 130].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := (recoveredStack1) sequenceCalls.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := [:recoveredBlock75Arg1 | 
    | recoveredBlock75Local1 recoveredBlock75Stack0 recoveredBlock75Stack1 recoveredBlock75Stack2 recoveredBlock75Stack3 recoveredBlock75Stack4 recoveredBlock75PC recoveredBlock75Step recoveredBlock75Done recoveredBlock75Result |
    recoveredBlock75Stack0 := self.
    recoveredBlock75PC := 82.
    recoveredBlock75Done := false.
    [recoveredBlock75Done not] whileTrue: [
        recoveredBlock75Step := recoveredBlock75PC.
        recoveredBlock75Step = 82 ifTrue: [
            recoveredBlock75Stack1 := nil.
            recoveredBlock75PC := 83.
        ].
        recoveredBlock75Step = 83 ifTrue: [
            recoveredBlock75Stack2 := recoveredBlock75Arg1.
            recoveredBlock75PC := 84.
        ].
        recoveredBlock75Step = 84 ifTrue: [
            recoveredBlock75Stack2 := (recoveredBlock75Stack2) description.
            recoveredBlock75PC := 86.
        ].
        recoveredBlock75Step = 86 ifTrue: [
            recoveredBlock75Stack3 := 2.
            recoveredBlock75PC := 88.
        ].
        recoveredBlock75Step = 88 ifTrue: [
            recoveredBlock75Stack2 := (recoveredBlock75Stack2) at: (recoveredBlock75Stack3).
            recoveredBlock75PC := 90.
        ].
        recoveredBlock75Step = 90 ifTrue: [
            recoveredBlock75Stack3 := 0.
            recoveredBlock75PC := 92.
        ].
        recoveredBlock75Step = 92 ifTrue: [
            recoveredBlock75Stack2 := (recoveredBlock75Stack2) = (recoveredBlock75Stack3).
            recoveredBlock75PC := 93.
        ].
        recoveredBlock75Step = 93 ifTrue: [
            (recoveredBlock75Stack2) ifTrue: [recoveredBlock75PC := 123] ifFalse: [recoveredBlock75PC := 96].
        ].
        recoveredBlock75Step = 96 ifTrue: [
            recoveredBlock75PC := 97.
        ].
        recoveredBlock75Step = 97 ifTrue: [
            recoveredBlock75Stack1 := recoveredBlock75Arg1.
            recoveredBlock75PC := 98.
        ].
        recoveredBlock75Step = 98 ifTrue: [
            recoveredBlock75Stack1 := (recoveredBlock75Stack1) description.
            recoveredBlock75PC := 100.
        ].
        recoveredBlock75Step = 100 ifTrue: [
            recoveredBlock75Stack2 := 2.
            recoveredBlock75PC := 102.
        ].
        recoveredBlock75Step = 102 ifTrue: [
            recoveredBlock75Stack1 := (recoveredBlock75Stack1) at: (recoveredBlock75Stack2).
            recoveredBlock75PC := 104.
        ].
        recoveredBlock75Step = 104 ifTrue: [
            recoveredBlock75Stack2 := recoveredArg4.
            recoveredBlock75PC := 107.
        ].
        recoveredBlock75Step = 107 ifTrue: [
            recoveredBlock75Stack1 := (recoveredBlock75Stack1) + (recoveredBlock75Stack2).
            recoveredBlock75PC := 108.
        ].
        recoveredBlock75Step = 108 ifTrue: [
            recoveredBlock75Local1 := recoveredBlock75Stack1.
            recoveredBlock75PC := 109.
        ].
        recoveredBlock75Step = 109 ifTrue: [
            recoveredBlock75Stack1 := recoveredBlock75Arg1.
            recoveredBlock75PC := 110.
        ].
        recoveredBlock75Step = 110 ifTrue: [
            recoveredBlock75Stack2 := recoveredBlock75Local1.
            recoveredBlock75PC := 111.
        ].
        recoveredBlock75Step = 111 ifTrue: [
            recoveredBlock75Stack3 := recoveredArg2.
            recoveredBlock75PC := 114.
        ].
        recoveredBlock75Step = 114 ifTrue: [
            (recoveredBlock75Stack1) updateLabelGONo: (recoveredBlock75Stack2) methodName: (recoveredBlock75Stack3).
            recoveredBlock75PC := 116.
        ].
        recoveredBlock75Step = 116 ifTrue: [
            recoveredBlock75Stack1 := recoveredBlock75Arg1.
            recoveredBlock75PC := 117.
        ].
        recoveredBlock75Step = 117 ifTrue: [
            recoveredBlock75Stack2 := recoveredBlock75Local1.
            recoveredBlock75PC := 118.
        ].
        recoveredBlock75Step = 118 ifTrue: [
            recoveredBlock75Stack3 := recoveredArg3.
            recoveredBlock75PC := 121.
        ].
        recoveredBlock75Step = 121 ifTrue: [
            recoveredBlock75Stack1 := (recoveredBlock75Stack1) updateBasicSeqNo: (recoveredBlock75Stack2) seqAlias: (recoveredBlock75Stack3).
            recoveredBlock75PC := 123.
        ].
        recoveredBlock75Step = 123 ifTrue: [
            recoveredBlock75Result := recoveredBlock75Stack1.
            recoveredBlock75Done := true.
        ].
    ].
    recoveredBlock75Result
].
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredPC := 136.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            (recoveredStack1) resetSequenceCallsFor: (recoveredStack2).
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2052fe2c; bytecode file offset 0xe2c740"
!SGPaneController methodsFor: 'recovered'!
createMementoBuildNewIdentifiers: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) actualHierarchy.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) mementoEnabled.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := MainController.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) asdBlockDiagramEditorOptions.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionUndoBufferSize.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := nil.
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
            recoveredStack0 := (recoveredStack0) mementoStream.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) truncate.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 135].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) owner.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) specification.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) specSourceOrNil.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredPC := 85.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) highestUsedGraphicalIdentifier.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) actualHierarchy.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := (recoveredStack0) topHierarchyGO.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) buildNewIdentifiersMaximumGraphicsIdentifier: (recoveredStack1).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) owner.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := (recoveredStack0) specification.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := (recoveredStack0) specSourceOrNil.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := [:recoveredBlock107Arg1 | 
    | recoveredBlock107Value0 recoveredBlock107Value1 recoveredBlock107Value2 |
    recoveredBlock107Value0 := recoveredBlock107Arg1.
    recoveredBlock107Value1 := recoveredLocal1.
    recoveredBlock107Value2 := (recoveredBlock107Value0) setHighestUsedGraphicalIdentifier: (recoveredBlock107Value1).
    recoveredBlock107Value2
].
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := SGMemento.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack2 := (recoveredStack2) actualHierarchy.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := (recoveredStack1) createFor: (recoveredStack2).
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            (recoveredStack0) nextPut: (recoveredStack1).
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack0 := (recoveredStack0) position.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 160] ifFalse: [recoveredPC := 193].
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack2 := (recoveredStack2) position.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyFrom: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            (recoveredStack1) reset.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            (recoveredStack1) truncate.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack0 := (recoveredStack0) owner.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack0 := (recoveredStack0) userInterface.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            (recoveredStack0) updateToolbarSensitive.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20531a38; bytecode file offset 0xe2e350"
!SGPaneController methodsFor: 'recovered'!
buildHierarchyWithSelectedGOs: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedGOsGraphicObjects.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) normalMode.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentMode.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) defaultState.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 174].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := SGStatementBlockSelector.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) sequenceCalls.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) createSequenceCalls: (recoveredStack1) selectedGOs: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) chooseGOsWithCalls.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkGOsWithCalls.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasIntersectionGOs.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 124].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) gOsWithCalls.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) keys.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedGOs.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := [:recoveredBlock85Arg1 | 
    | recoveredBlock85Stack0 recoveredBlock85Stack1 recoveredBlock85Stack2 recoveredBlock85Stack3 recoveredBlock85Stack4 recoveredBlock85PC recoveredBlock85Step recoveredBlock85Done recoveredBlock85Result |
    recoveredBlock85Stack0 := self.
    recoveredBlock85PC := 92.
    recoveredBlock85Done := false.
    [recoveredBlock85Done not] whileTrue: [
        recoveredBlock85Step := recoveredBlock85PC.
        recoveredBlock85Step = 92 ifTrue: [
            recoveredBlock85Stack1 := nil.
            recoveredBlock85PC := 93.
        ].
        recoveredBlock85Step = 93 ifTrue: [
            recoveredBlock85Stack2 := recoveredLocal1.
            recoveredBlock85PC := 96.
        ].
        recoveredBlock85Step = 96 ifTrue: [
            recoveredBlock85Stack3 := recoveredBlock85Arg1.
            recoveredBlock85PC := 97.
        ].
        recoveredBlock85Step = 97 ifTrue: [
            recoveredBlock85Stack2 := (recoveredBlock85Stack2) includes: (recoveredBlock85Stack3).
            recoveredBlock85PC := 99.
        ].
        recoveredBlock85Step = 99 ifTrue: [
            (recoveredBlock85Stack2) ifTrue: [recoveredBlock85PC := 102] ifFalse: [recoveredBlock85PC := 109].
        ].
        recoveredBlock85Step = 102 ifTrue: [
            recoveredBlock85PC := 103.
        ].
        recoveredBlock85Step = 103 ifTrue: [
            recoveredBlock85Stack1 := recoveredLocal4.
            recoveredBlock85PC := 106.
        ].
        recoveredBlock85Step = 106 ifTrue: [
            recoveredBlock85Stack2 := recoveredBlock85Arg1.
            recoveredBlock85PC := 107.
        ].
        recoveredBlock85Step = 107 ifTrue: [
            recoveredBlock85Stack1 := (recoveredBlock85Stack1) add: (recoveredBlock85Stack2).
            recoveredBlock85PC := 109.
        ].
        recoveredBlock85Step = 109 ifTrue: [
            recoveredBlock85Result := recoveredBlock85Stack1.
            recoveredBlock85Done := true.
        ].
    ].
    recoveredBlock85Result
].
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedGOs.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredPC := 153.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := (recoveredStack0) gOsWithCalls.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := (recoveredStack0) keys.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := (recoveredStack1) defineGOsWithoutCalls.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := (recoveredStack1) keys.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            (recoveredStack0) addAll: (recoveredStack1).
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := SGStatementBlockWrapperGO.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredPC := 180.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack0 := SGHierarchyWrapperGO.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack0 := (recoveredStack0) actualHierarchy.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            (recoveredStack0) buildSGHierarchyGOFor: (recoveredStack1) wrapperClass: (recoveredStack2) prepareCalls: (recoveredStack3).
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            (recoveredStack0) redraw.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20628958; bytecode file offset 0xf252b4"
!SGPaneController methodsFor: 'recovered'!
connectAutomatically
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) actualHierarchy.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) blockChildren.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Stack0 recoveredBlock12Stack1 recoveredBlock12Stack2 recoveredBlock12Stack3 recoveredBlock12Stack4 recoveredBlock12PC recoveredBlock12Step recoveredBlock12Done recoveredBlock12Result |
    recoveredBlock12Stack0 := self.
    recoveredBlock12PC := 18.
    recoveredBlock12Done := false.
    [recoveredBlock12Done not] whileTrue: [
        recoveredBlock12Step := recoveredBlock12PC.
        recoveredBlock12Step = 18 ifTrue: [
            recoveredBlock12Stack1 := nil.
            recoveredBlock12PC := 19.
        ].
        recoveredBlock12Step = 19 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Arg1.
            recoveredBlock12PC := 20.
        ].
        recoveredBlock12Step = 20 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) class.
            recoveredBlock12PC := 22.
        ].
        recoveredBlock12Step = 22 ifTrue: [
            recoveredBlock12Stack3 := SGHierarchyWrapperGO.
            recoveredBlock12PC := 24.
        ].
        recoveredBlock12Step = 24 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) equals: (recoveredBlock12Stack3).
            recoveredBlock12PC := 26.
        ].
        recoveredBlock12Step = 26 ifTrue: [
            (recoveredBlock12Stack2) ifTrue: [recoveredBlock12PC := 39] ifFalse: [recoveredBlock12PC := 30].
        ].
        recoveredBlock12Step = 30 ifTrue: [
            recoveredBlock12PC := 31.
        ].
        recoveredBlock12Step = 31 ifTrue: [
            recoveredBlock12Stack1 := recoveredLocal3.
            recoveredBlock12PC := 34.
        ].
        recoveredBlock12Step = 34 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Arg1.
            recoveredBlock12PC := 35.
        ].
        recoveredBlock12Step = 35 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) connectorGOs.
            recoveredBlock12PC := 37.
        ].
        recoveredBlock12Step = 37 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) addAll: (recoveredBlock12Stack2).
            recoveredBlock12PC := 39.
        ].
        recoveredBlock12Step = 39 ifTrue: [
            recoveredBlock12Result := recoveredBlock12Stack1.
            recoveredBlock12Done := true.
        ].
    ].
    recoveredBlock12Result
].
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := [:block2811f6c8Arg1 | 
    | block2811f6c8Stack0 block2811f6c8Stack1 block2811f6c8Stack2 block2811f6c8Stack3 block2811f6c8PC block2811f6c8Step block2811f6c8Done block2811f6c8Result |
    block2811f6c8Stack0 := self.
    block2811f6c8PC := 4.
    block2811f6c8Done := false.
    [block2811f6c8Done not] whileTrue: [
        block2811f6c8Step := block2811f6c8PC.
        block2811f6c8Step = 4 ifTrue: [
            block2811f6c8Stack1 := false.
            block2811f6c8PC := 5.
        ].
        block2811f6c8Step = 5 ifTrue: [
            block2811f6c8Stack2 := block2811f6c8Arg1.
            block2811f6c8PC := 6.
        ].
        block2811f6c8Step = 6 ifTrue: [
            block2811f6c8Stack2 := (block2811f6c8Stack2) basicGraphObject.
            block2811f6c8PC := 8.
        ].
        block2811f6c8Step = 8 ifTrue: [
            block2811f6c8Stack2 := (block2811f6c8Stack2) isResultConnector.
            block2811f6c8PC := 10.
        ].
        block2811f6c8Step = 10 ifTrue: [
            (block2811f6c8Stack2) ifTrue: [block2811f6c8PC := 14] ifFalse: [block2811f6c8PC := 20].
        ].
        block2811f6c8Step = 14 ifTrue: [
            block2811f6c8PC := 15.
        ].
        block2811f6c8Step = 15 ifTrue: [
            block2811f6c8Stack1 := block2811f6c8Arg1.
            block2811f6c8PC := 16.
        ].
        block2811f6c8Step = 16 ifTrue: [
            block2811f6c8Stack1 := (block2811f6c8Stack1) basicGraphObject.
            block2811f6c8PC := 18.
        ].
        block2811f6c8Step = 18 ifTrue: [
            block2811f6c8Stack1 := (block2811f6c8Stack1) isVisible.
            block2811f6c8PC := 20.
        ].
        block2811f6c8Step = 20 ifTrue: [
            block2811f6c8Result := block2811f6c8Stack1.
            block2811f6c8Done := true.
        ].
    ].
    block2811f6c8Result
].
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := [:block2811f6ecArg1 | 
    | block2811f6ecStack0 block2811f6ecStack1 block2811f6ecStack2 block2811f6ecStack3 block2811f6ecPC block2811f6ecStep block2811f6ecDone block2811f6ecResult |
    block2811f6ecStack0 := self.
    block2811f6ecPC := 4.
    block2811f6ecDone := false.
    [block2811f6ecDone not] whileTrue: [
        block2811f6ecStep := block2811f6ecPC.
        block2811f6ecStep = 4 ifTrue: [
            block2811f6ecStack1 := false.
            block2811f6ecPC := 5.
        ].
        block2811f6ecStep = 5 ifTrue: [
            block2811f6ecStack2 := block2811f6ecArg1.
            block2811f6ecPC := 6.
        ].
        block2811f6ecStep = 6 ifTrue: [
            block2811f6ecStack2 := (block2811f6ecStack2) basicGraphObject.
            block2811f6ecPC := 8.
        ].
        block2811f6ecStep = 8 ifTrue: [
            block2811f6ecStack2 := (block2811f6ecStack2) isArgumentConnector.
            block2811f6ecPC := 10.
        ].
        block2811f6ecStep = 10 ifTrue: [
            (block2811f6ecStack2) ifTrue: [block2811f6ecPC := 14] ifFalse: [block2811f6ecPC := 28].
        ].
        block2811f6ecStep = 14 ifTrue: [
            block2811f6ecStack2 := block2811f6ecArg1.
            block2811f6ecPC := 15.
        ].
        block2811f6ecStep = 15 ifTrue: [
            block2811f6ecStack2 := (block2811f6ecStack2) basicGraphObject.
            block2811f6ecPC := 17.
        ].
        block2811f6ecStep = 17 ifTrue: [
            block2811f6ecStack2 := (block2811f6ecStack2) isConnected.
            block2811f6ecPC := 19.
        ].
        block2811f6ecStep = 19 ifTrue: [
            (block2811f6ecStack2) ifTrue: [block2811f6ecPC := 28] ifFalse: [block2811f6ecPC := 22].
        ].
        block2811f6ecStep = 22 ifTrue: [
            block2811f6ecPC := 23.
        ].
        block2811f6ecStep = 23 ifTrue: [
            block2811f6ecStack1 := block2811f6ecArg1.
            block2811f6ecPC := 24.
        ].
        block2811f6ecStep = 24 ifTrue: [
            block2811f6ecStack1 := (block2811f6ecStack1) basicGraphObject.
            block2811f6ecPC := 26.
        ].
        block2811f6ecStep = 26 ifTrue: [
            block2811f6ecStack1 := (block2811f6ecStack1) isVisible.
            block2811f6ecPC := 28.
        ].
        block2811f6ecStep = 28 ifTrue: [
            block2811f6ecResult := block2811f6ecStack1.
            block2811f6ecDone := true.
        ].
    ].
    block2811f6ecResult
].
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := [:recoveredBlock113Arg1 | 
    | recoveredBlock113Local1 recoveredBlock113Local2 recoveredBlock113Local3 recoveredBlock113Local4 recoveredBlock113Local5 recoveredBlock113Stack0 recoveredBlock113Stack1 recoveredBlock113Stack2 recoveredBlock113Stack3 recoveredBlock113Stack4 recoveredBlock113Stack5 recoveredBlock113Stack6 recoveredBlock113Stack7 recoveredBlock113Stack8 recoveredBlock113Stack9 recoveredBlock113Stack10 recoveredBlock113Stack11 recoveredBlock113PC recoveredBlock113Step recoveredBlock113Done recoveredBlock113Result |
    recoveredBlock113Stack0 := self.
    recoveredBlock113PC := 120.
    recoveredBlock113Done := false.
    [recoveredBlock113Done not] whileTrue: [
        recoveredBlock113Step := recoveredBlock113PC.
        recoveredBlock113Step = 120 ifTrue: [
            recoveredBlock113Stack1 := recoveredBlock113Arg1.
            recoveredBlock113PC := 123.
        ].
        recoveredBlock113Step = 123 ifTrue: [
            recoveredBlock113Stack1 := (recoveredBlock113Stack1) getPosition.
            recoveredBlock113PC := 125.
        ].
        recoveredBlock113Step = 125 ifTrue: [
            recoveredBlock113Local4 := recoveredBlock113Stack1.
            recoveredBlock113PC := 128.
        ].
        recoveredBlock113Step = 128 ifTrue: [
            recoveredBlock113Stack1 := [
    | recoveredBlock113Block128Value0 recoveredBlock113Block128Value1 |
    recoveredBlock113Block128Value0 := recoveredBlock113Arg1.
    recoveredBlock113Block128Value1 := (recoveredBlock113Block128Value0) getDirection.
    recoveredBlock113Block128Value1
].
            recoveredBlock113PC := 140.
        ].
        recoveredBlock113Step = 140 ifTrue: [
            recoveredBlock113Stack2 := 'right'.
            recoveredBlock113PC := 142.
        ].
        recoveredBlock113Step = 142 ifTrue: [
            recoveredBlock113Stack3 := [
    | recoveredBlock113Block142Value0 recoveredBlock113Block142Value1 recoveredBlock113Block142Value2 recoveredBlock113Block142Value3 |
    recoveredBlock113Block142Value0 := recoveredLocal2.
    recoveredBlock113Block142Value1 := [:recoveredBlock113Block142Block151Arg1 | 
    | recoveredBlock113Block142Block151Stack0 recoveredBlock113Block142Block151Stack1 recoveredBlock113Block142Block151Stack2 recoveredBlock113Block142Block151Stack3 recoveredBlock113Block142Block151Stack4 recoveredBlock113Block142Block151PC recoveredBlock113Block142Block151Step recoveredBlock113Block142Block151Done recoveredBlock113Block142Block151Result |
    recoveredBlock113Block142Block151Stack0 := nil.
    recoveredBlock113Block142Block151PC := 158.
    recoveredBlock113Block142Block151Done := false.
    [recoveredBlock113Block142Block151Done not] whileTrue: [
        recoveredBlock113Block142Block151Step := recoveredBlock113Block142Block151PC.
        recoveredBlock113Block142Block151Step = 158 ifTrue: [
            recoveredBlock113Block142Block151Stack1 := false.
            recoveredBlock113Block142Block151PC := 159.
        ].
        recoveredBlock113Block142Block151Step = 159 ifTrue: [
            recoveredBlock113Block142Block151Stack2 := recoveredBlock113Block142Block151Arg1.
            recoveredBlock113Block142Block151PC := 160.
        ].
        recoveredBlock113Block142Block151Step = 160 ifTrue: [
            recoveredBlock113Block142Block151Stack2 := (recoveredBlock113Block142Block151Stack2) getPosition.
            recoveredBlock113Block142Block151PC := 162.
        ].
        recoveredBlock113Block142Block151Step = 162 ifTrue: [
            recoveredBlock113Block142Block151Stack2 := (recoveredBlock113Block142Block151Stack2) x.
            recoveredBlock113Block142Block151PC := 164.
        ].
        recoveredBlock113Block142Block151Step = 164 ifTrue: [
            recoveredBlock113Block142Block151Stack3 := recoveredBlock113Local4.
            recoveredBlock113Block142Block151PC := 167.
        ].
        recoveredBlock113Block142Block151Step = 167 ifTrue: [
            recoveredBlock113Block142Block151Stack3 := (recoveredBlock113Block142Block151Stack3) x.
            recoveredBlock113Block142Block151PC := 169.
        ].
        recoveredBlock113Block142Block151Step = 169 ifTrue: [
            recoveredBlock113Block142Block151Stack2 := (recoveredBlock113Block142Block151Stack2) < (recoveredBlock113Block142Block151Stack3).
            recoveredBlock113Block142Block151PC := 170.
        ].
        recoveredBlock113Block142Block151Step = 170 ifTrue: [
            (recoveredBlock113Block142Block151Stack2) ifTrue: [recoveredBlock113Block142Block151PC := 174] ifFalse: [recoveredBlock113Block142Block151PC := 199].
        ].
        recoveredBlock113Block142Block151Step = 174 ifTrue: [
            recoveredBlock113Block142Block151PC := 175.
        ].
        recoveredBlock113Block142Block151Step = 175 ifTrue: [
            recoveredBlock113Block142Block151Stack1 := true.
            recoveredBlock113Block142Block151PC := 176.
        ].
        recoveredBlock113Block142Block151Step = 176 ifTrue: [
            recoveredBlock113Block142Block151Stack2 := recoveredBlock113Arg1.
            recoveredBlock113Block142Block151PC := 179.
        ].
        recoveredBlock113Block142Block151Step = 179 ifTrue: [
            recoveredBlock113Block142Block151Stack2 := (recoveredBlock113Block142Block151Stack2) typeID.
            recoveredBlock113Block142Block151PC := 181.
        ].
        recoveredBlock113Block142Block151Step = 181 ifTrue: [
            recoveredBlock113Block142Block151Stack3 := 0.
            recoveredBlock113Block142Block151PC := 183.
        ].
        recoveredBlock113Block142Block151Step = 183 ifTrue: [
            recoveredBlock113Block142Block151Stack2 := (recoveredBlock113Block142Block151Stack2) equals: (recoveredBlock113Block142Block151Stack3).
            recoveredBlock113Block142Block151PC := 185.
        ].
        recoveredBlock113Block142Block151Step = 185 ifTrue: [
            (recoveredBlock113Block142Block151Stack2) ifTrue: [recoveredBlock113Block142Block151PC := 199] ifFalse: [recoveredBlock113Block142Block151PC := 188].
        ].
        recoveredBlock113Block142Block151Step = 188 ifTrue: [
            recoveredBlock113Block142Block151PC := 189.
        ].
        recoveredBlock113Block142Block151Step = 189 ifTrue: [
            recoveredBlock113Block142Block151Stack1 := recoveredBlock113Block142Block151Arg1.
            recoveredBlock113Block142Block151PC := 190.
        ].
        recoveredBlock113Block142Block151Step = 190 ifTrue: [
            recoveredBlock113Block142Block151Stack1 := (recoveredBlock113Block142Block151Stack1) typeID.
            recoveredBlock113Block142Block151PC := 192.
        ].
        recoveredBlock113Block142Block151Step = 192 ifTrue: [
            recoveredBlock113Block142Block151Stack2 := recoveredBlock113Arg1.
            recoveredBlock113Block142Block151PC := 195.
        ].
        recoveredBlock113Block142Block151Step = 195 ifTrue: [
            recoveredBlock113Block142Block151Stack2 := (recoveredBlock113Block142Block151Stack2) typeID.
            recoveredBlock113Block142Block151PC := 197.
        ].
        recoveredBlock113Block142Block151Step = 197 ifTrue: [
            recoveredBlock113Block142Block151Stack1 := (recoveredBlock113Block142Block151Stack1) equals: (recoveredBlock113Block142Block151Stack2).
            recoveredBlock113Block142Block151PC := 199.
        ].
        recoveredBlock113Block142Block151Step = 199 ifTrue: [
            recoveredBlock113Block142Block151Result := recoveredBlock113Block142Block151Stack1.
            recoveredBlock113Block142Block151Done := true.
        ].
    ].
    recoveredBlock113Block142Block151Result
].
    recoveredBlock113Block142Value2 := (recoveredBlock113Block142Value0) select: (recoveredBlock113Block142Value1).
    recoveredBlock113Block142Value3 := recoveredBlock113Block142Value2.
    recoveredBlock113Local5 := recoveredBlock113Block142Value3.
    recoveredBlock113Block142Value2
].
            recoveredBlock113PC := 207.
        ].
        recoveredBlock113Step = 207 ifTrue: [
            recoveredBlock113Stack4 := 'down'.
            recoveredBlock113PC := 209.
        ].
        recoveredBlock113Step = 209 ifTrue: [
            recoveredBlock113Stack5 := [
    | recoveredBlock113Block209Value0 recoveredBlock113Block209Value1 recoveredBlock113Block209Value2 recoveredBlock113Block209Value3 |
    recoveredBlock113Block209Value0 := recoveredLocal2.
    recoveredBlock113Block209Value1 := [:recoveredBlock113Block209Block219Arg1 | 
    | recoveredBlock113Block209Block219Stack0 recoveredBlock113Block209Block219Stack1 recoveredBlock113Block209Block219Stack2 recoveredBlock113Block209Block219Stack3 recoveredBlock113Block209Block219Stack4 recoveredBlock113Block209Block219PC recoveredBlock113Block209Block219Step recoveredBlock113Block209Block219Done recoveredBlock113Block209Block219Result |
    recoveredBlock113Block209Block219Stack0 := nil.
    recoveredBlock113Block209Block219PC := 226.
    recoveredBlock113Block209Block219Done := false.
    [recoveredBlock113Block209Block219Done not] whileTrue: [
        recoveredBlock113Block209Block219Step := recoveredBlock113Block209Block219PC.
        recoveredBlock113Block209Block219Step = 226 ifTrue: [
            recoveredBlock113Block209Block219Stack1 := false.
            recoveredBlock113Block209Block219PC := 227.
        ].
        recoveredBlock113Block209Block219Step = 227 ifTrue: [
            recoveredBlock113Block209Block219Stack2 := recoveredBlock113Block209Block219Arg1.
            recoveredBlock113Block209Block219PC := 228.
        ].
        recoveredBlock113Block209Block219Step = 228 ifTrue: [
            recoveredBlock113Block209Block219Stack2 := (recoveredBlock113Block209Block219Stack2) getPosition.
            recoveredBlock113Block209Block219PC := 230.
        ].
        recoveredBlock113Block209Block219Step = 230 ifTrue: [
            recoveredBlock113Block209Block219Stack2 := (recoveredBlock113Block209Block219Stack2) x.
            recoveredBlock113Block209Block219PC := 232.
        ].
        recoveredBlock113Block209Block219Step = 232 ifTrue: [
            recoveredBlock113Block209Block219Stack3 := recoveredBlock113Local4.
            recoveredBlock113Block209Block219PC := 235.
        ].
        recoveredBlock113Block209Block219Step = 235 ifTrue: [
            recoveredBlock113Block209Block219Stack3 := (recoveredBlock113Block209Block219Stack3) x.
            recoveredBlock113Block209Block219PC := 237.
        ].
        recoveredBlock113Block209Block219Step = 237 ifTrue: [
            recoveredBlock113Block209Block219Stack2 := (recoveredBlock113Block209Block219Stack2) < (recoveredBlock113Block209Block219Stack3).
            recoveredBlock113Block209Block219PC := 238.
        ].
        recoveredBlock113Block209Block219Step = 238 ifTrue: [
            (recoveredBlock113Block209Block219Stack2) ifTrue: [recoveredBlock113Block209Block219PC := 242] ifFalse: [recoveredBlock113Block209Block219PC := 267].
        ].
        recoveredBlock113Block209Block219Step = 242 ifTrue: [
            recoveredBlock113Block209Block219PC := 243.
        ].
        recoveredBlock113Block209Block219Step = 243 ifTrue: [
            recoveredBlock113Block209Block219Stack1 := true.
            recoveredBlock113Block209Block219PC := 244.
        ].
        recoveredBlock113Block209Block219Step = 244 ifTrue: [
            recoveredBlock113Block209Block219Stack2 := recoveredBlock113Arg1.
            recoveredBlock113Block209Block219PC := 247.
        ].
        recoveredBlock113Block209Block219Step = 247 ifTrue: [
            recoveredBlock113Block209Block219Stack2 := (recoveredBlock113Block209Block219Stack2) typeID.
            recoveredBlock113Block209Block219PC := 249.
        ].
        recoveredBlock113Block209Block219Step = 249 ifTrue: [
            recoveredBlock113Block209Block219Stack3 := 0.
            recoveredBlock113Block209Block219PC := 251.
        ].
        recoveredBlock113Block209Block219Step = 251 ifTrue: [
            recoveredBlock113Block209Block219Stack2 := (recoveredBlock113Block209Block219Stack2) equals: (recoveredBlock113Block209Block219Stack3).
            recoveredBlock113Block209Block219PC := 253.
        ].
        recoveredBlock113Block209Block219Step = 253 ifTrue: [
            (recoveredBlock113Block209Block219Stack2) ifTrue: [recoveredBlock113Block209Block219PC := 267] ifFalse: [recoveredBlock113Block209Block219PC := 256].
        ].
        recoveredBlock113Block209Block219Step = 256 ifTrue: [
            recoveredBlock113Block209Block219PC := 257.
        ].
        recoveredBlock113Block209Block219Step = 257 ifTrue: [
            recoveredBlock113Block209Block219Stack1 := recoveredBlock113Block209Block219Arg1.
            recoveredBlock113Block209Block219PC := 258.
        ].
        recoveredBlock113Block209Block219Step = 258 ifTrue: [
            recoveredBlock113Block209Block219Stack1 := (recoveredBlock113Block209Block219Stack1) typeID.
            recoveredBlock113Block209Block219PC := 260.
        ].
        recoveredBlock113Block209Block219Step = 260 ifTrue: [
            recoveredBlock113Block209Block219Stack2 := recoveredBlock113Arg1.
            recoveredBlock113Block209Block219PC := 263.
        ].
        recoveredBlock113Block209Block219Step = 263 ifTrue: [
            recoveredBlock113Block209Block219Stack2 := (recoveredBlock113Block209Block219Stack2) typeID.
            recoveredBlock113Block209Block219PC := 265.
        ].
        recoveredBlock113Block209Block219Step = 265 ifTrue: [
            recoveredBlock113Block209Block219Stack1 := (recoveredBlock113Block209Block219Stack1) equals: (recoveredBlock113Block209Block219Stack2).
            recoveredBlock113Block209Block219PC := 267.
        ].
        recoveredBlock113Block209Block219Step = 267 ifTrue: [
            recoveredBlock113Block209Block219Result := recoveredBlock113Block209Block219Stack1.
            recoveredBlock113Block209Block219Done := true.
        ].
    ].
    recoveredBlock113Block209Block219Result
].
    recoveredBlock113Block209Value2 := (recoveredBlock113Block209Value0) select: (recoveredBlock113Block209Value1).
    recoveredBlock113Block209Value3 := recoveredBlock113Block209Value2.
    recoveredBlock113Local5 := recoveredBlock113Block209Value3.
    recoveredBlock113Block209Value2
].
            recoveredBlock113PC := 275.
        ].
        recoveredBlock113Step = 275 ifTrue: [
            recoveredBlock113Stack6 := 'left'.
            recoveredBlock113PC := 277.
        ].
        recoveredBlock113Step = 277 ifTrue: [
            recoveredBlock113Stack7 := [
    | recoveredBlock113Block277Value0 recoveredBlock113Block277Value1 recoveredBlock113Block277Value2 recoveredBlock113Block277Value3 |
    recoveredBlock113Block277Value0 := recoveredLocal2.
    recoveredBlock113Block277Value1 := [:recoveredBlock113Block277Block287Arg1 | 
    | recoveredBlock113Block277Block287Stack0 recoveredBlock113Block277Block287Stack1 recoveredBlock113Block277Block287Stack2 recoveredBlock113Block277Block287Stack3 recoveredBlock113Block277Block287Stack4 recoveredBlock113Block277Block287PC recoveredBlock113Block277Block287Step recoveredBlock113Block277Block287Done recoveredBlock113Block277Block287Result |
    recoveredBlock113Block277Block287Stack0 := nil.
    recoveredBlock113Block277Block287PC := 294.
    recoveredBlock113Block277Block287Done := false.
    [recoveredBlock113Block277Block287Done not] whileTrue: [
        recoveredBlock113Block277Block287Step := recoveredBlock113Block277Block287PC.
        recoveredBlock113Block277Block287Step = 294 ifTrue: [
            recoveredBlock113Block277Block287Stack1 := false.
            recoveredBlock113Block277Block287PC := 295.
        ].
        recoveredBlock113Block277Block287Step = 295 ifTrue: [
            recoveredBlock113Block277Block287Stack2 := recoveredBlock113Block277Block287Arg1.
            recoveredBlock113Block277Block287PC := 296.
        ].
        recoveredBlock113Block277Block287Step = 296 ifTrue: [
            recoveredBlock113Block277Block287Stack2 := (recoveredBlock113Block277Block287Stack2) getPosition.
            recoveredBlock113Block277Block287PC := 298.
        ].
        recoveredBlock113Block277Block287Step = 298 ifTrue: [
            recoveredBlock113Block277Block287Stack2 := (recoveredBlock113Block277Block287Stack2) x.
            recoveredBlock113Block277Block287PC := 300.
        ].
        recoveredBlock113Block277Block287Step = 300 ifTrue: [
            recoveredBlock113Block277Block287Stack3 := recoveredBlock113Local4.
            recoveredBlock113Block277Block287PC := 303.
        ].
        recoveredBlock113Block277Block287Step = 303 ifTrue: [
            recoveredBlock113Block277Block287Stack3 := (recoveredBlock113Block277Block287Stack3) x.
            recoveredBlock113Block277Block287PC := 305.
        ].
        recoveredBlock113Block277Block287Step = 305 ifTrue: [
            recoveredBlock113Block277Block287Stack2 := (recoveredBlock113Block277Block287Stack2) > (recoveredBlock113Block277Block287Stack3).
            recoveredBlock113Block277Block287PC := 306.
        ].
        recoveredBlock113Block277Block287Step = 306 ifTrue: [
            (recoveredBlock113Block277Block287Stack2) ifTrue: [recoveredBlock113Block277Block287PC := 310] ifFalse: [recoveredBlock113Block277Block287PC := 335].
        ].
        recoveredBlock113Block277Block287Step = 310 ifTrue: [
            recoveredBlock113Block277Block287PC := 311.
        ].
        recoveredBlock113Block277Block287Step = 311 ifTrue: [
            recoveredBlock113Block277Block287Stack1 := true.
            recoveredBlock113Block277Block287PC := 312.
        ].
        recoveredBlock113Block277Block287Step = 312 ifTrue: [
            recoveredBlock113Block277Block287Stack2 := recoveredBlock113Arg1.
            recoveredBlock113Block277Block287PC := 315.
        ].
        recoveredBlock113Block277Block287Step = 315 ifTrue: [
            recoveredBlock113Block277Block287Stack2 := (recoveredBlock113Block277Block287Stack2) typeID.
            recoveredBlock113Block277Block287PC := 317.
        ].
        recoveredBlock113Block277Block287Step = 317 ifTrue: [
            recoveredBlock113Block277Block287Stack3 := 0.
            recoveredBlock113Block277Block287PC := 319.
        ].
        recoveredBlock113Block277Block287Step = 319 ifTrue: [
            recoveredBlock113Block277Block287Stack2 := (recoveredBlock113Block277Block287Stack2) equals: (recoveredBlock113Block277Block287Stack3).
            recoveredBlock113Block277Block287PC := 321.
        ].
        recoveredBlock113Block277Block287Step = 321 ifTrue: [
            (recoveredBlock113Block277Block287Stack2) ifTrue: [recoveredBlock113Block277Block287PC := 335] ifFalse: [recoveredBlock113Block277Block287PC := 324].
        ].
        recoveredBlock113Block277Block287Step = 324 ifTrue: [
            recoveredBlock113Block277Block287PC := 325.
        ].
        recoveredBlock113Block277Block287Step = 325 ifTrue: [
            recoveredBlock113Block277Block287Stack1 := recoveredBlock113Block277Block287Arg1.
            recoveredBlock113Block277Block287PC := 326.
        ].
        recoveredBlock113Block277Block287Step = 326 ifTrue: [
            recoveredBlock113Block277Block287Stack1 := (recoveredBlock113Block277Block287Stack1) typeID.
            recoveredBlock113Block277Block287PC := 328.
        ].
        recoveredBlock113Block277Block287Step = 328 ifTrue: [
            recoveredBlock113Block277Block287Stack2 := recoveredBlock113Arg1.
            recoveredBlock113Block277Block287PC := 331.
        ].
        recoveredBlock113Block277Block287Step = 331 ifTrue: [
            recoveredBlock113Block277Block287Stack2 := (recoveredBlock113Block277Block287Stack2) typeID.
            recoveredBlock113Block277Block287PC := 333.
        ].
        recoveredBlock113Block277Block287Step = 333 ifTrue: [
            recoveredBlock113Block277Block287Stack1 := (recoveredBlock113Block277Block287Stack1) equals: (recoveredBlock113Block277Block287Stack2).
            recoveredBlock113Block277Block287PC := 335.
        ].
        recoveredBlock113Block277Block287Step = 335 ifTrue: [
            recoveredBlock113Block277Block287Result := recoveredBlock113Block277Block287Stack1.
            recoveredBlock113Block277Block287Done := true.
        ].
    ].
    recoveredBlock113Block277Block287Result
].
    recoveredBlock113Block277Value2 := (recoveredBlock113Block277Value0) select: (recoveredBlock113Block277Value1).
    recoveredBlock113Block277Value3 := recoveredBlock113Block277Value2.
    recoveredBlock113Local5 := recoveredBlock113Block277Value3.
    recoveredBlock113Block277Value2
].
            recoveredBlock113PC := 343.
        ].
        recoveredBlock113Step = 343 ifTrue: [
            recoveredBlock113Stack8 := 'up'.
            recoveredBlock113PC := 345.
        ].
        recoveredBlock113Step = 345 ifTrue: [
            recoveredBlock113Stack9 := [
    | recoveredBlock113Block345Value0 recoveredBlock113Block345Value1 recoveredBlock113Block345Value2 recoveredBlock113Block345Value3 |
    recoveredBlock113Block345Value0 := recoveredLocal2.
    recoveredBlock113Block345Value1 := [:recoveredBlock113Block345Block355Arg1 | 
    | recoveredBlock113Block345Block355Stack0 recoveredBlock113Block345Block355Stack1 recoveredBlock113Block345Block355Stack2 recoveredBlock113Block345Block355Stack3 recoveredBlock113Block345Block355Stack4 recoveredBlock113Block345Block355PC recoveredBlock113Block345Block355Step recoveredBlock113Block345Block355Done recoveredBlock113Block345Block355Result |
    recoveredBlock113Block345Block355Stack0 := nil.
    recoveredBlock113Block345Block355PC := 362.
    recoveredBlock113Block345Block355Done := false.
    [recoveredBlock113Block345Block355Done not] whileTrue: [
        recoveredBlock113Block345Block355Step := recoveredBlock113Block345Block355PC.
        recoveredBlock113Block345Block355Step = 362 ifTrue: [
            recoveredBlock113Block345Block355Stack1 := false.
            recoveredBlock113Block345Block355PC := 363.
        ].
        recoveredBlock113Block345Block355Step = 363 ifTrue: [
            recoveredBlock113Block345Block355Stack2 := recoveredBlock113Block345Block355Arg1.
            recoveredBlock113Block345Block355PC := 364.
        ].
        recoveredBlock113Block345Block355Step = 364 ifTrue: [
            recoveredBlock113Block345Block355Stack2 := (recoveredBlock113Block345Block355Stack2) getPosition.
            recoveredBlock113Block345Block355PC := 366.
        ].
        recoveredBlock113Block345Block355Step = 366 ifTrue: [
            recoveredBlock113Block345Block355Stack2 := (recoveredBlock113Block345Block355Stack2) x.
            recoveredBlock113Block345Block355PC := 368.
        ].
        recoveredBlock113Block345Block355Step = 368 ifTrue: [
            recoveredBlock113Block345Block355Stack3 := recoveredBlock113Local4.
            recoveredBlock113Block345Block355PC := 371.
        ].
        recoveredBlock113Block345Block355Step = 371 ifTrue: [
            recoveredBlock113Block345Block355Stack3 := (recoveredBlock113Block345Block355Stack3) x.
            recoveredBlock113Block345Block355PC := 373.
        ].
        recoveredBlock113Block345Block355Step = 373 ifTrue: [
            recoveredBlock113Block345Block355Stack2 := (recoveredBlock113Block345Block355Stack2) < (recoveredBlock113Block345Block355Stack3).
            recoveredBlock113Block345Block355PC := 374.
        ].
        recoveredBlock113Block345Block355Step = 374 ifTrue: [
            (recoveredBlock113Block345Block355Stack2) ifTrue: [recoveredBlock113Block345Block355PC := 378] ifFalse: [recoveredBlock113Block345Block355PC := 403].
        ].
        recoveredBlock113Block345Block355Step = 378 ifTrue: [
            recoveredBlock113Block345Block355PC := 379.
        ].
        recoveredBlock113Block345Block355Step = 379 ifTrue: [
            recoveredBlock113Block345Block355Stack1 := true.
            recoveredBlock113Block345Block355PC := 380.
        ].
        recoveredBlock113Block345Block355Step = 380 ifTrue: [
            recoveredBlock113Block345Block355Stack2 := recoveredBlock113Arg1.
            recoveredBlock113Block345Block355PC := 383.
        ].
        recoveredBlock113Block345Block355Step = 383 ifTrue: [
            recoveredBlock113Block345Block355Stack2 := (recoveredBlock113Block345Block355Stack2) typeID.
            recoveredBlock113Block345Block355PC := 385.
        ].
        recoveredBlock113Block345Block355Step = 385 ifTrue: [
            recoveredBlock113Block345Block355Stack3 := 0.
            recoveredBlock113Block345Block355PC := 387.
        ].
        recoveredBlock113Block345Block355Step = 387 ifTrue: [
            recoveredBlock113Block345Block355Stack2 := (recoveredBlock113Block345Block355Stack2) equals: (recoveredBlock113Block345Block355Stack3).
            recoveredBlock113Block345Block355PC := 389.
        ].
        recoveredBlock113Block345Block355Step = 389 ifTrue: [
            (recoveredBlock113Block345Block355Stack2) ifTrue: [recoveredBlock113Block345Block355PC := 403] ifFalse: [recoveredBlock113Block345Block355PC := 392].
        ].
        recoveredBlock113Block345Block355Step = 392 ifTrue: [
            recoveredBlock113Block345Block355PC := 393.
        ].
        recoveredBlock113Block345Block355Step = 393 ifTrue: [
            recoveredBlock113Block345Block355Stack1 := recoveredBlock113Block345Block355Arg1.
            recoveredBlock113Block345Block355PC := 394.
        ].
        recoveredBlock113Block345Block355Step = 394 ifTrue: [
            recoveredBlock113Block345Block355Stack1 := (recoveredBlock113Block345Block355Stack1) typeID.
            recoveredBlock113Block345Block355PC := 396.
        ].
        recoveredBlock113Block345Block355Step = 396 ifTrue: [
            recoveredBlock113Block345Block355Stack2 := recoveredBlock113Arg1.
            recoveredBlock113Block345Block355PC := 399.
        ].
        recoveredBlock113Block345Block355Step = 399 ifTrue: [
            recoveredBlock113Block345Block355Stack2 := (recoveredBlock113Block345Block355Stack2) typeID.
            recoveredBlock113Block345Block355PC := 401.
        ].
        recoveredBlock113Block345Block355Step = 401 ifTrue: [
            recoveredBlock113Block345Block355Stack1 := (recoveredBlock113Block345Block355Stack1) equals: (recoveredBlock113Block345Block355Stack2).
            recoveredBlock113Block345Block355PC := 403.
        ].
        recoveredBlock113Block345Block355Step = 403 ifTrue: [
            recoveredBlock113Block345Block355Result := recoveredBlock113Block345Block355Stack1.
            recoveredBlock113Block345Block355Done := true.
        ].
    ].
    recoveredBlock113Block345Block355Result
].
    recoveredBlock113Block345Value2 := (recoveredBlock113Block345Value0) select: (recoveredBlock113Block345Value1).
    recoveredBlock113Block345Value3 := recoveredBlock113Block345Value2.
    recoveredBlock113Local5 := recoveredBlock113Block345Value3.
    recoveredBlock113Block345Value2
].
            recoveredBlock113PC := 411.
        ].
        recoveredBlock113Step = 411 ifTrue: [
            recoveredBlock113Stack10 := [
    | recoveredBlock113Block411Value0 recoveredBlock113Block411Value1 recoveredBlock113Block411Value2 |
    recoveredBlock113Block411Value0 := OrderedCollection.
    recoveredBlock113Block411Value1 := (recoveredBlock113Block411Value0) new.
    recoveredBlock113Block411Value2 := recoveredBlock113Block411Value1.
    recoveredBlock113Local5 := recoveredBlock113Block411Value2.
    recoveredBlock113Block411Value1
].
            recoveredBlock113PC := 426.
        ].
        recoveredBlock113Step = 426 ifTrue: [
            (recoveredBlock113Stack1) case: (recoveredBlock113Stack2) do: (recoveredBlock113Stack3) case: (recoveredBlock113Stack4) do: (recoveredBlock113Stack5) case: (recoveredBlock113Stack6) do: (recoveredBlock113Stack7) case: (recoveredBlock113Stack8) do: (recoveredBlock113Stack9) others: (recoveredBlock113Stack10).
            recoveredBlock113PC := 429.
        ].
        recoveredBlock113Step = 429 ifTrue: [
            recoveredBlock113Stack1 := nil.
            recoveredBlock113PC := 430.
        ].
        recoveredBlock113Step = 430 ifTrue: [
            recoveredBlock113Stack2 := recoveredBlock113Local5.
            recoveredBlock113PC := 433.
        ].
        recoveredBlock113Step = 433 ifTrue: [
            recoveredBlock113Stack2 := (recoveredBlock113Stack2) notEmpty.
            recoveredBlock113PC := 435.
        ].
        recoveredBlock113Step = 435 ifTrue: [
            (recoveredBlock113Stack2) ifTrue: [recoveredBlock113PC := 438] ifFalse: [recoveredBlock113PC := 567].
        ].
        recoveredBlock113Step = 438 ifTrue: [
            recoveredBlock113PC := 439.
        ].
        recoveredBlock113Step = 439 ifTrue: [
            recoveredBlock113Stack1 := recoveredBlock113Local5.
            recoveredBlock113PC := 442.
        ].
        recoveredBlock113Step = 442 ifTrue: [
            recoveredBlock113Stack1 := (recoveredBlock113Stack1) first.
            recoveredBlock113PC := 444.
        ].
        recoveredBlock113Step = 444 ifTrue: [
            recoveredBlock113Local2 := recoveredBlock113Stack1.
            recoveredBlock113PC := 447.
        ].
        recoveredBlock113Step = 447 ifTrue: [
            recoveredBlock113Stack1 := recoveredBlock113Local2.
            recoveredBlock113PC := 450.
        ].
        recoveredBlock113Step = 450 ifTrue: [
            recoveredBlock113Stack1 := (recoveredBlock113Stack1) getPosition.
            recoveredBlock113PC := 452.
        ].
        recoveredBlock113Step = 452 ifTrue: [
            recoveredBlock113Stack1 := (recoveredBlock113Stack1) y.
            recoveredBlock113PC := 454.
        ].
        recoveredBlock113Step = 454 ifTrue: [
            recoveredBlock113Stack2 := recoveredBlock113Arg1.
            recoveredBlock113PC := 457.
        ].
        recoveredBlock113Step = 457 ifTrue: [
            recoveredBlock113Stack2 := (recoveredBlock113Stack2) getPosition.
            recoveredBlock113PC := 459.
        ].
        recoveredBlock113Step = 459 ifTrue: [
            recoveredBlock113Stack2 := (recoveredBlock113Stack2) y.
            recoveredBlock113PC := 461.
        ].
        recoveredBlock113Step = 461 ifTrue: [
            recoveredBlock113Stack1 := (recoveredBlock113Stack1) - (recoveredBlock113Stack2).
            recoveredBlock113PC := 462.
        ].
        recoveredBlock113Step = 462 ifTrue: [
            recoveredBlock113Stack1 := (recoveredBlock113Stack1) abs.
            recoveredBlock113PC := 464.
        ].
        recoveredBlock113Step = 464 ifTrue: [
            recoveredBlock113Local3 := recoveredBlock113Stack1.
            recoveredBlock113PC := 467.
        ].
        recoveredBlock113Step = 467 ifTrue: [
            recoveredBlock113Stack1 := recoveredBlock113Local5.
            recoveredBlock113PC := 470.
        ].
        recoveredBlock113Step = 470 ifTrue: [
            recoveredBlock113Stack2 := [:recoveredBlock113Block470Arg1 | 
    | recoveredBlock113Block470Local1 recoveredBlock113Block470Stack0 recoveredBlock113Block470Stack1 recoveredBlock113Block470Stack2 recoveredBlock113Block470Stack3 recoveredBlock113Block470Stack4 recoveredBlock113Block470PC recoveredBlock113Block470Step recoveredBlock113Block470Done recoveredBlock113Block470Result |
    recoveredBlock113Block470Stack0 := nil.
    recoveredBlock113Block470PC := 476.
    recoveredBlock113Block470Done := false.
    [recoveredBlock113Block470Done not] whileTrue: [
        recoveredBlock113Block470Step := recoveredBlock113Block470PC.
        recoveredBlock113Block470Step = 476 ifTrue: [
            recoveredBlock113Block470Stack1 := nil.
            recoveredBlock113Block470PC := 477.
        ].
        recoveredBlock113Block470Step = 477 ifTrue: [
            recoveredBlock113Block470Stack2 := recoveredBlock113Block470Arg1.
            recoveredBlock113Block470PC := 478.
        ].
        recoveredBlock113Block470Step = 478 ifTrue: [
            recoveredBlock113Block470Stack2 := (recoveredBlock113Block470Stack2) getPosition.
            recoveredBlock113Block470PC := 480.
        ].
        recoveredBlock113Block470Step = 480 ifTrue: [
            recoveredBlock113Block470Stack2 := (recoveredBlock113Block470Stack2) y.
            recoveredBlock113Block470PC := 482.
        ].
        recoveredBlock113Block470Step = 482 ifTrue: [
            recoveredBlock113Block470Stack3 := recoveredBlock113Arg1.
            recoveredBlock113Block470PC := 485.
        ].
        recoveredBlock113Block470Step = 485 ifTrue: [
            recoveredBlock113Block470Stack3 := (recoveredBlock113Block470Stack3) getPosition.
            recoveredBlock113Block470PC := 487.
        ].
        recoveredBlock113Block470Step = 487 ifTrue: [
            recoveredBlock113Block470Stack3 := (recoveredBlock113Block470Stack3) y.
            recoveredBlock113Block470PC := 489.
        ].
        recoveredBlock113Block470Step = 489 ifTrue: [
            recoveredBlock113Block470Stack2 := (recoveredBlock113Block470Stack2) - (recoveredBlock113Block470Stack3).
            recoveredBlock113Block470PC := 490.
        ].
        recoveredBlock113Block470Step = 490 ifTrue: [
            recoveredBlock113Block470Stack2 := (recoveredBlock113Block470Stack2) abs.
            recoveredBlock113Block470PC := 492.
        ].
        recoveredBlock113Block470Step = 492 ifTrue: [
            recoveredBlock113Block470Stack3 := recoveredBlock113Block470Stack2.
            recoveredBlock113Block470PC := 493.
        ].
        recoveredBlock113Block470Step = 493 ifTrue: [
            recoveredBlock113Block470Local1 := recoveredBlock113Block470Stack3.
            recoveredBlock113Block470PC := 494.
        ].
        recoveredBlock113Block470Step = 494 ifTrue: [
            recoveredBlock113Block470Stack3 := recoveredBlock113Local3.
            recoveredBlock113Block470PC := 497.
        ].
        recoveredBlock113Block470Step = 497 ifTrue: [
            recoveredBlock113Block470Stack2 := (recoveredBlock113Block470Stack2) < (recoveredBlock113Block470Stack3).
            recoveredBlock113Block470PC := 498.
        ].
        recoveredBlock113Block470Step = 498 ifTrue: [
            (recoveredBlock113Block470Stack2) ifTrue: [recoveredBlock113Block470PC := 502] ifFalse: [recoveredBlock113Block470PC := 512].
        ].
        recoveredBlock113Block470Step = 502 ifTrue: [
            recoveredBlock113Block470PC := 503.
        ].
        recoveredBlock113Block470Step = 503 ifTrue: [
            recoveredBlock113Block470Stack1 := recoveredBlock113Block470Arg1.
            recoveredBlock113Block470PC := 504.
        ].
        recoveredBlock113Block470Step = 504 ifTrue: [
            recoveredBlock113Local2 := recoveredBlock113Block470Stack1.
            recoveredBlock113Block470PC := 507.
        ].
        recoveredBlock113Block470Step = 507 ifTrue: [
            recoveredBlock113Block470Stack1 := recoveredBlock113Block470Local1.
            recoveredBlock113Block470PC := 508.
        ].
        recoveredBlock113Block470Step = 508 ifTrue: [
            recoveredBlock113Block470Stack2 := recoveredBlock113Block470Stack1.
            recoveredBlock113Block470PC := 509.
        ].
        recoveredBlock113Block470Step = 509 ifTrue: [
            recoveredBlock113Local3 := recoveredBlock113Block470Stack2.
            recoveredBlock113Block470PC := 512.
        ].
        recoveredBlock113Block470Step = 512 ifTrue: [
            recoveredBlock113Block470Result := recoveredBlock113Block470Stack1.
            recoveredBlock113Block470Done := true.
        ].
    ].
    recoveredBlock113Block470Result
].
            recoveredBlock113PC := 513.
        ].
        recoveredBlock113Step = 513 ifTrue: [
            (recoveredBlock113Stack1) do: (recoveredBlock113Stack2).
            recoveredBlock113PC := 515.
        ].
        recoveredBlock113Step = 515 ifTrue: [
            recoveredBlock113Stack1 := SGConnectionWrapperGO.
            recoveredBlock113PC := 517.
        ].
        recoveredBlock113Step = 517 ifTrue: [
            recoveredBlock113Stack2 := SGOrthogonalLineGO.
            recoveredBlock113PC := 519.
        ].
        recoveredBlock113Step = 519 ifTrue: [
            recoveredBlock113Stack3 := ConnectionLineStyle.
            recoveredBlock113PC := 521.
        ].
        recoveredBlock113Step = 521 ifTrue: [
            recoveredBlock113Stack4 := nil.
            recoveredBlock113PC := 522.
        ].
        recoveredBlock113Step = 522 ifTrue: [
            recoveredBlock113Stack2 := (recoveredBlock113Stack2) createWithLineStyle: (recoveredBlock113Stack3) manager: (recoveredBlock113Stack4).
            recoveredBlock113PC := 524.
        ].
        recoveredBlock113Step = 524 ifTrue: [
            recoveredBlock113Stack3 := recoveredBlock113Local2.
            recoveredBlock113PC := 527.
        ].
        recoveredBlock113Step = 527 ifTrue: [
            recoveredBlock113Stack3 := (recoveredBlock113Stack3) connectionPoint.
            recoveredBlock113PC := 529.
        ].
        recoveredBlock113Step = 529 ifTrue: [
            recoveredBlock113Stack4 := recoveredBlock113Arg1.
            recoveredBlock113PC := 532.
        ].
        recoveredBlock113Step = 532 ifTrue: [
            recoveredBlock113Stack4 := (recoveredBlock113Stack4) connectionPoint.
            recoveredBlock113PC := 534.
        ].
        recoveredBlock113Step = 534 ifTrue: [
            recoveredBlock113Stack1 := (recoveredBlock113Stack1) createWith: (recoveredBlock113Stack2) startPoint: (recoveredBlock113Stack3) endPoint: (recoveredBlock113Stack4).
            recoveredBlock113PC := 537.
        ].
        recoveredBlock113Step = 537 ifTrue: [
            recoveredBlock113Local1 := recoveredBlock113Stack1.
            recoveredBlock113PC := 540.
        ].
        recoveredBlock113Step = 540 ifTrue: [
            recoveredBlock113Stack1 := self.
            recoveredBlock113PC := 541.
        ].
        recoveredBlock113Step = 541 ifTrue: [
            recoveredBlock113Stack1 := (recoveredBlock113Stack1) actualHierarchy.
            recoveredBlock113PC := 542.
        ].
        recoveredBlock113Step = 542 ifTrue: [
            recoveredBlock113Stack2 := recoveredBlock113Local1.
            recoveredBlock113PC := 545.
        ].
        recoveredBlock113Step = 545 ifTrue: [
            recoveredBlock113Stack3 := true.
            recoveredBlock113PC := 546.
        ].
        recoveredBlock113Step = 546 ifTrue: [
            recoveredBlock113Stack4 := false.
            recoveredBlock113PC := 547.
        ].
        recoveredBlock113Step = 547 ifTrue: [
            (recoveredBlock113Stack1) addChildGO: (recoveredBlock113Stack2) display: (recoveredBlock113Stack3) createMemento: (recoveredBlock113Stack4).
            recoveredBlock113PC := 550.
        ].
        recoveredBlock113Step = 550 ifTrue: [
            recoveredBlock113Stack1 := recoveredBlock113Local1.
            recoveredBlock113PC := 553.
        ].
        recoveredBlock113Step = 553 ifTrue: [
            recoveredBlock113Stack1 := (recoveredBlock113Stack1) updateLineStyle.
            recoveredBlock113PC := 555.
        ].
        recoveredBlock113Step = 555 ifTrue: [
            recoveredBlock113Stack2 := nil.
            recoveredBlock113PC := 556.
        ].
        recoveredBlock113Step = 556 ifTrue: [
            recoveredBlock113Stack3 := recoveredBlock113Stack2.
            recoveredBlock113PC := 557.
        ].
        recoveredBlock113Step = 557 ifTrue: [
            recoveredBlock113Local3 := recoveredBlock113Stack3.
            recoveredBlock113PC := 560.
        ].
        recoveredBlock113Step = 560 ifTrue: [
            recoveredBlock113Stack3 := recoveredBlock113Stack2.
            recoveredBlock113PC := 561.
        ].
        recoveredBlock113Step = 561 ifTrue: [
            recoveredBlock113Local2 := recoveredBlock113Stack3.
            recoveredBlock113PC := 564.
        ].
        recoveredBlock113Step = 564 ifTrue: [
            recoveredBlock113Local1 := recoveredBlock113Stack2.
            recoveredBlock113PC := 567.
        ].
        recoveredBlock113Step = 567 ifTrue: [
            recoveredBlock113Result := recoveredBlock113Stack1.
            recoveredBlock113Done := true.
        ].
    ].
    recoveredBlock113Result
].
            recoveredPC := 568.
        ].
        recoveredStep = 568 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 570.
        ].
        recoveredStep = 570 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 571.
        ].
        recoveredStep = 571 ifTrue: [
            recoveredStack0 := (recoveredStack0) owner.
            recoveredPC := 573.
        ].
        recoveredStep = 573 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 574.
        ].
        recoveredStep = 574 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 576.
        ].
        recoveredStep = 576 ifTrue: [
            (recoveredStack0) sequencingUseInfo: (recoveredStack1) startingWith: (recoveredStack2).
            recoveredPC := 578.
        ].
        recoveredStep = 578 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 579.
        ].
        recoveredStep = 579 ifTrue: [
            (recoveredStack0) redraw.
            recoveredPC := 581.
        ].
        recoveredStep = 581 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 582.
        ].
        recoveredStep = 582 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x206967c8; bytecode file offset 0xf932d0"
!SGPaneController methodsFor: 'recovered'!
pasteBufferBasicDisplay: recoveredArg1 delta: recoveredArg2 setModify: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) normalMode.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) buffer.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) owner.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) isAtomicSoftwareComponent.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) owner.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) elementDictionary.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) keys.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkPasteElements: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) getBDEController.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentSpecification.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) specificationType.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) compatibleWithSpecificationType: (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 188] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := 'hw'.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := 'call_82614'.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) specificationType.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) type.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := (recoveredStack0) specificationTypeLabelForType: (recoveredStack1).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) firstCharacterIsVowel.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 104].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := 'an '.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredPC := 114.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := 'a '.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := (recoveredStack1) getBDEController.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentSpecification.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := (recoveredStack1) type.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := (recoveredStack0) specificationTypeLabelForType: (recoveredStack1).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := (recoveredStack0) firstCharacterIsVowel.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 136] ifFalse: [recoveredPC := 150].
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := 'an '.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredPC := 160.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := 'a '.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := 'It is not possible to paste from '.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack2 := ' into '.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack2 := '.'.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack1 := 'DET94563'.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack1 := 'Call_2008402802'.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack0 := recoveredLocal11.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack0 := (recoveredStack0) elementDictionary.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack0 := (recoveredStack0) keys.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack1 := [:block2812c100Arg1 | 
    | block2812c100Value0 block2812c100Value1 |
    block2812c100Value0 := block2812c100Arg1.
    block2812c100Value1 := (block2812c100Value0) isMethodElement.
    block2812c100Value1
].
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack2 := [:recoveredBlock220Arg1 | 
    | recoveredBlock220Stack0 recoveredBlock220Stack1 recoveredBlock220Stack2 recoveredBlock220Stack3 recoveredBlock220PC recoveredBlock220Step recoveredBlock220Done recoveredBlock220Result |
    recoveredBlock220Stack0 := self.
    recoveredBlock220PC := 226.
    recoveredBlock220Done := false.
    [recoveredBlock220Done not] whileTrue: [
        recoveredBlock220Step := recoveredBlock220PC.
        recoveredBlock220Step = 226 ifTrue: [
            recoveredBlock220Stack1 := 'hw'.
            recoveredBlock220PC := 228.
        ].
        recoveredBlock220Step = 228 ifTrue: [
            recoveredBlock220Stack2 := 'call_82538'.
            recoveredBlock220PC := 230.
        ].
        recoveredBlock220Step = 230 ifTrue: [
            recoveredBlock220Stack1 := (recoveredBlock220Stack1) == (recoveredBlock220Stack2).
            recoveredBlock220PC := 231.
        ].
        recoveredBlock220Step = 231 ifTrue: [
            recoveredBlock220PC := 232.
        ].
        recoveredBlock220Step = 232 ifTrue: [
            recoveredBlock220Stack1 := recoveredBlock220Arg1.
            recoveredBlock220PC := 233.
        ].
        recoveredBlock220Step = 233 ifTrue: [
            recoveredBlock220Stack2 := [:block2812c124Arg1 | 
    nil
].
            recoveredBlock220PC := 235.
        ].
        recoveredBlock220Step = 235 ifTrue: [
            recoveredBlock220PC := 240.
        ].
        recoveredBlock220Step = 240 ifTrue: [
            recoveredBlock220Stack1 := (recoveredBlock220Stack1) ownerIfUndefined: (recoveredBlock220Stack2).
            recoveredBlock220PC := 242.
        ].
        recoveredBlock220Step = 242 ifTrue: [
            recoveredBlock220Stack2 := [:recoveredBlock220Block242Arg1 | 
    | recoveredBlock220Block242Value0 recoveredBlock220Block242Value1 recoveredBlock220Block242Value2 recoveredBlock220Block242Value3 |
    recoveredBlock220Block242Value0 := recoveredBlock220Block242Arg1.
    recoveredBlock220Block242Value1 := (recoveredBlock220Block242Value0) owner.
    recoveredBlock220Block242Value2 := [:recoveredBlock220Block242Block250Arg1 | 
    | recoveredBlock220Block242Block250Stack0 recoveredBlock220Block242Block250Stack1 recoveredBlock220Block242Block250Stack2 recoveredBlock220Block242Block250Stack3 recoveredBlock220Block242Block250Stack4 recoveredBlock220Block242Block250PC recoveredBlock220Block242Block250Step recoveredBlock220Block242Block250Done recoveredBlock220Block242Block250Result |
    recoveredBlock220Block242Block250Stack0 := self.
    recoveredBlock220Block242Block250PC := 256.
    recoveredBlock220Block242Block250Done := false.
    [recoveredBlock220Block242Block250Done not] whileTrue: [
        recoveredBlock220Block242Block250Step := recoveredBlock220Block242Block250PC.
        recoveredBlock220Block242Block250Step = 256 ifTrue: [
            recoveredBlock220Block242Block250Stack1 := nil.
            recoveredBlock220Block242Block250PC := 257.
        ].
        recoveredBlock220Block242Block250Step = 257 ifTrue: [
            recoveredBlock220Block242Block250Stack2 := self.
            recoveredBlock220Block242Block250PC := 258.
        ].
        recoveredBlock220Block242Block250Step = 258 ifTrue: [
            recoveredBlock220Block242Block250Stack2 := (recoveredBlock220Block242Block250Stack2) getBDEController.
            recoveredBlock220Block242Block250PC := 260.
        ].
        recoveredBlock220Block242Block250Step = 260 ifTrue: [
            recoveredBlock220Block242Block250Stack2 := (recoveredBlock220Block242Block250Stack2) currentSpecification.
            recoveredBlock220Block242Block250PC := 262.
        ].
        recoveredBlock220Block242Block250Step = 262 ifTrue: [
            recoveredBlock220Block242Block250Stack3 := recoveredBlock220Block242Block250Arg1.
            recoveredBlock220Block242Block250PC := 263.
        ].
        recoveredBlock220Block242Block250Step = 263 ifTrue: [
            recoveredBlock220Block242Block250Stack2 := (recoveredBlock220Block242Block250Stack2) equals: (recoveredBlock220Block242Block250Stack3).
            recoveredBlock220Block242Block250PC := 265.
        ].
        recoveredBlock220Block242Block250Step = 265 ifTrue: [
            (recoveredBlock220Block242Block250Stack2) ifTrue: [recoveredBlock220Block242Block250PC := 274] ifFalse: [recoveredBlock220Block242Block250PC := 268].
        ].
        recoveredBlock220Block242Block250Step = 268 ifTrue: [
            recoveredBlock220Block242Block250PC := 269.
        ].
        recoveredBlock220Block242Block250Step = 269 ifTrue: [
            recoveredBlock220Block242Block250Stack1 := true.
            recoveredBlock220Block242Block250PC := 270.
        ].
        recoveredBlock220Block242Block250Step = 270 ifTrue: [
            recoveredBlock220Block242Block250Stack2 := recoveredBlock220Block242Block250Stack1.
            recoveredBlock220Block242Block250PC := 271.
        ].
        recoveredBlock220Block242Block250Step = 271 ifTrue: [
            recoveredLocal8 := recoveredBlock220Block242Block250Stack2.
            recoveredBlock220Block242Block250PC := 274.
        ].
        recoveredBlock220Block242Block250Step = 274 ifTrue: [
            recoveredBlock220Block242Block250Result := recoveredBlock220Block242Block250Stack1.
            recoveredBlock220Block242Block250Done := true.
        ].
    ].
    recoveredBlock220Block242Block250Result
].
    recoveredBlock220Block242Value3 := (recoveredBlock220Block242Value1) ifNotNil: (recoveredBlock220Block242Value2).
    recoveredBlock220Block242Value3
].
            recoveredBlock220PC := 278.
        ].
        recoveredBlock220Step = 278 ifTrue: [
            recoveredBlock220Stack1 := (recoveredBlock220Stack1) ifNotNil: (recoveredBlock220Stack2).
            recoveredBlock220PC := 280.
        ].
        recoveredBlock220Step = 280 ifTrue: [
            recoveredBlock220Result := recoveredBlock220Stack1.
            recoveredBlock220Done := true.
        ].
    ].
    recoveredBlock220Result
].
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            (recoveredStack0) detect: (recoveredStack1) ifOne: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack0 := ASDDuplicateAliasNamesTable.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack1 := 'Call_51906'.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack0 := recoveredLocal11.
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack0 := (recoveredStack0) elementDictionary.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack0 := (recoveredStack0) keys.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack0 := (recoveredStack0) anyElement.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack1 := [:recoveredBlock308Arg1 | 
    | recoveredBlock308Local1 recoveredBlock308Stack0 recoveredBlock308Stack1 recoveredBlock308Stack2 recoveredBlock308Stack3 recoveredBlock308Stack4 recoveredBlock308PC recoveredBlock308Step recoveredBlock308Done recoveredBlock308Result |
    recoveredBlock308Stack0 := self.
    recoveredBlock308PC := 314.
    recoveredBlock308Done := false.
    [recoveredBlock308Done not] whileTrue: [
        recoveredBlock308Step := recoveredBlock308PC.
        recoveredBlock308Step = 314 ifTrue: [
            recoveredBlock308Stack1 := 'hw'.
            recoveredBlock308PC := 316.
        ].
        recoveredBlock308Step = 316 ifTrue: [
            recoveredBlock308Stack2 := 'call_84264'.
            recoveredBlock308PC := 318.
        ].
        recoveredBlock308Step = 318 ifTrue: [
            recoveredBlock308Stack1 := (recoveredBlock308Stack1) == (recoveredBlock308Stack2).
            recoveredBlock308PC := 319.
        ].
        recoveredBlock308Step = 319 ifTrue: [
            recoveredBlock308PC := 320.
        ].
        recoveredBlock308Step = 320 ifTrue: [
            recoveredBlock308Stack1 := nil.
            recoveredBlock308PC := 321.
        ].
        recoveredBlock308Step = 321 ifTrue: [
            recoveredBlock308Stack2 := recoveredBlock308Arg1.
            recoveredBlock308PC := 324.
        ].
        recoveredBlock308Step = 324 ifTrue: [
            recoveredBlock308Stack2 := (recoveredBlock308Stack2) ownerSGClass.
            recoveredBlock308PC := 326.
        ].
        recoveredBlock308Step = 326 ifTrue: [
            recoveredBlock308Stack3 := self.
            recoveredBlock308PC := 327.
        ].
        recoveredBlock308Step = 327 ifTrue: [
            recoveredBlock308Stack3 := (recoveredBlock308Stack3) owner.
            recoveredBlock308PC := 328.
        ].
        recoveredBlock308Step = 328 ifTrue: [
            recoveredBlock308Stack3 := (recoveredBlock308Stack3) item.
            recoveredBlock308PC := 329.
        ].
        recoveredBlock308Step = 329 ifTrue: [
            recoveredBlock308Stack2 := (recoveredBlock308Stack2) = (recoveredBlock308Stack3).
            recoveredBlock308PC := 330.
        ].
        recoveredBlock308Step = 330 ifTrue: [
            (recoveredBlock308Stack2) ifTrue: [recoveredBlock308PC := 437] ifFalse: [recoveredBlock308PC := 334].
        ].
        recoveredBlock308Step = 334 ifTrue: [
            recoveredBlock308PC := 335.
        ].
        recoveredBlock308Step = 335 ifTrue: [
            recoveredBlock308Stack1 := OrderedCollection.
            recoveredBlock308PC := 337.
        ].
        recoveredBlock308Step = 337 ifTrue: [
            recoveredBlock308Stack1 := (recoveredBlock308Stack1) new.
            recoveredBlock308PC := 339.
        ].
        recoveredBlock308Step = 339 ifTrue: [
            recoveredBlock308Local1 := recoveredBlock308Stack1.
            recoveredBlock308PC := 342.
        ].
        recoveredBlock308Step = 342 ifTrue: [
            recoveredBlock308Stack1 := recoveredLocal11.
            recoveredBlock308PC := 345.
        ].
        recoveredBlock308Step = 345 ifTrue: [
            recoveredBlock308Stack1 := (recoveredBlock308Stack1) elementDictionary.
            recoveredBlock308PC := 347.
        ].
        recoveredBlock308Step = 347 ifTrue: [
            recoveredBlock308Stack1 := (recoveredBlock308Stack1) keys.
            recoveredBlock308PC := 349.
        ].
        recoveredBlock308Step = 349 ifTrue: [
            recoveredBlock308Stack2 := [:recoveredBlock308Block349Arg1 | 
    | recoveredBlock308Block349Value0 recoveredBlock308Block349Value1 recoveredBlock308Block349Value2 recoveredBlock308Block349Value3 recoveredBlock308Block349Value4 recoveredBlock308Block349Value5 |
    recoveredBlock308Block349Value0 := (self) getBDEController.
    recoveredBlock308Block349Value1 := (recoveredBlock308Block349Value0) item.
    recoveredBlock308Block349Value2 := (recoveredBlock308Block349Value1) allElements.
    recoveredBlock308Block349Value3 := [:recoveredBlock308Block349Block361Arg1 | 
    | recoveredBlock308Block349Block361Value0 recoveredBlock308Block349Block361Value1 recoveredBlock308Block349Block361Value2 recoveredBlock308Block349Block361Value3 recoveredBlock308Block349Block361Value4 |
    recoveredBlock308Block349Block361Value0 := recoveredBlock308Block349Arg1.
    recoveredBlock308Block349Block361Value1 := (recoveredBlock308Block349Block361Value0) aliasName.
    recoveredBlock308Block349Block361Value2 := recoveredBlock308Block349Block361Arg1.
    recoveredBlock308Block349Block361Value3 := (recoveredBlock308Block349Block361Value2) aliasName.
    recoveredBlock308Block349Block361Value4 := (recoveredBlock308Block349Block361Value1) equals: (recoveredBlock308Block349Block361Value3).
    recoveredBlock308Block349Block361Value4
].
    recoveredBlock308Block349Value4 := [:recoveredBlock308Block349Block379Arg1 | 
    | recoveredBlock308Block349Block379Value0 recoveredBlock308Block349Block379Value1 recoveredBlock308Block349Block379Value2 |
    recoveredBlock308Block349Block379Value0 := recoveredBlock308Local1.
    recoveredBlock308Block349Block379Value1 := recoveredBlock308Block349Arg1.
    recoveredBlock308Block349Block379Value2 := (recoveredBlock308Block349Block379Value0) add: (recoveredBlock308Block349Block379Value1).
    recoveredBlock308Block349Block379Value2
].
    recoveredBlock308Block349Value5 := (recoveredBlock308Block349Value2) detect: (recoveredBlock308Block349Value3) ifOne: (recoveredBlock308Block349Value4).
    recoveredBlock308Block349Value5
].
            recoveredBlock308PC := 398.
        ].
        recoveredBlock308Step = 398 ifTrue: [
            (recoveredBlock308Stack1) do: (recoveredBlock308Stack2).
            recoveredBlock308PC := 400.
        ].
        recoveredBlock308Step = 400 ifTrue: [
            recoveredBlock308Stack1 := recoveredBlock308Local1.
            recoveredBlock308PC := 403.
        ].
        recoveredBlock308Step = 403 ifTrue: [
            recoveredBlock308Stack1 := (recoveredBlock308Stack1) isEmpty.
            recoveredBlock308PC := 405.
        ].
        recoveredBlock308Step = 405 ifTrue: [
            (recoveredBlock308Stack1) ifTrue: [recoveredBlock308PC := 428] ifFalse: [recoveredBlock308PC := 408].
        ].
        recoveredBlock308Step = 408 ifTrue: [
            recoveredBlock308Stack1 := RBUserQuestion.
            recoveredBlock308PC := 410.
        ].
        recoveredBlock308Step = 410 ifTrue: [
            recoveredBlock308Stack2 := 'Some elements with the same OID already exist in this BDE.\Your pasted graphic may be altered to reflect the properties of the existing elements.\Do you want to paste them anyway?\ \Select <OK> to paste them anyway or <CANCEL> to abort the operation.'.
            recoveredBlock308PC := 412.
        ].
        recoveredBlock308Step = 412 ifTrue: [
            recoveredBlock308Stack2 := (recoveredBlock308Stack2) withCrs.
            recoveredBlock308PC := 414.
        ].
        recoveredBlock308Step = 414 ifTrue: [
            recoveredBlock308Stack1 := (recoveredBlock308Stack1) confirm: (recoveredBlock308Stack2).
            recoveredBlock308PC := 416.
        ].
        recoveredBlock308Step = 416 ifTrue: [
            recoveredBlock308Stack2 := recoveredBlock308Stack1.
            recoveredBlock308PC := 417.
        ].
        recoveredBlock308Step = 417 ifTrue: [
            (recoveredBlock308Stack2) cancelOk.
            recoveredBlock308PC := 421.
        ].
        recoveredBlock308Step = 421 ifTrue: [
            recoveredBlock308Stack1 := (recoveredBlock308Stack1) prompt.
            recoveredBlock308PC := 423.
        ].
        recoveredBlock308Step = 423 ifTrue: [
            (recoveredBlock308Stack1 ~~ nil) ifTrue: [recoveredBlock308PC := 428] ifFalse: [recoveredBlock308PC := 426].
        ].
        recoveredBlock308Step = 426 ifTrue: [
            recoveredBlock308Stack1 := nil.
            recoveredBlock308PC := 427.
        ].
        recoveredBlock308Step = 427 ifTrue: [
            ^recoveredBlock308Stack1
        ].
        recoveredBlock308Step = 428 ifTrue: [
            recoveredBlock308Stack1 := true.
            recoveredBlock308PC := 429.
        ].
        recoveredBlock308Step = 429 ifTrue: [
            recoveredBlock308Stack2 := recoveredBlock308Stack1.
            recoveredBlock308PC := 430.
        ].
        recoveredBlock308Step = 430 ifTrue: [
            recoveredLocal8 := recoveredBlock308Stack2.
            recoveredBlock308PC := 433.
        ].
        recoveredBlock308Step = 433 ifTrue: [
            recoveredBlock308Stack2 := nil.
            recoveredBlock308PC := 434.
        ].
        recoveredBlock308Step = 434 ifTrue: [
            recoveredBlock308Local1 := recoveredBlock308Stack2.
            recoveredBlock308PC := 437.
        ].
        recoveredBlock308Step = 437 ifTrue: [
            recoveredBlock308Result := recoveredBlock308Stack1.
            recoveredBlock308Done := true.
        ].
    ].
    recoveredBlock308Result
].
            recoveredPC := 438.
        ].
        recoveredStep = 438 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 440.
        ].
        recoveredStep = 440 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 443.
        ].
        recoveredStep = 443 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 446] ifFalse: [recoveredPC := 559].
        ].
        recoveredStep = 446 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 448.
        ].
        recoveredStep = 448 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 450.
        ].
        recoveredStep = 450 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 453.
        ].
        recoveredStep = 453 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 454.
        ].
        recoveredStep = 454 ifTrue: [
            recoveredStack0 := (recoveredStack0) getBDEController.
            recoveredPC := 456.
        ].
        recoveredStep = 456 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 459.
        ].
        recoveredStep = 459 ifTrue: [
            recoveredStack1 := (recoveredStack1) elementDictionary.
            recoveredPC := 461.
        ].
        recoveredStep = 461 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 462.
        ].
        recoveredStep = 462 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 465.
        ].
        recoveredStep = 465 ifTrue: [
            recoveredStack0 := (recoveredStack0) createInstVarsFor: (recoveredStack1) newInstVars: (recoveredStack2) replacementDictionary: (recoveredStack3).
            recoveredPC := 469.
        ].
        recoveredStep = 469 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 470.
        ].
        recoveredStep = 470 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 473.
        ].
        recoveredStep = 473 ifTrue: [
            recoveredStack1 := [
    ^nil
].
            recoveredPC := 482.
        ].
        recoveredStep = 482 ifTrue: [
            (recoveredStack0) ifNil: (recoveredStack1).
            recoveredPC := 487.
        ].
        recoveredStep = 487 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 490.
        ].
        recoveredStep = 490 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 493.
        ].
        recoveredStep = 493 ifTrue: [
            (recoveredStack0) addAll: (recoveredStack1).
            recoveredPC := 497.
        ].
        recoveredStep = 497 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 498.
        ].
        recoveredStep = 498 ifTrue: [
            recoveredStack0 := (recoveredStack0) getBDEController.
            recoveredPC := 500.
        ].
        recoveredStep = 500 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 503.
        ].
        recoveredStep = 503 ifTrue: [
            recoveredStack1 := (recoveredStack1) elementDictionary.
            recoveredPC := 505.
        ].
        recoveredStep = 505 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 506.
        ].
        recoveredStep = 506 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 509.
        ].
        recoveredStep = 509 ifTrue: [
            recoveredStack0 := (recoveredStack0) createMethodElementsFor: (recoveredStack1) newMethodElements: (recoveredStack2) replacementDictionary: (recoveredStack3).
            recoveredPC := 513.
        ].
        recoveredStep = 513 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 514.
        ].
        recoveredStep = 514 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 517.
        ].
        recoveredStep = 517 ifTrue: [
            recoveredStack1 := [
    ^nil
].
            recoveredPC := 526.
        ].
        recoveredStep = 526 ifTrue: [
            (recoveredStack0) ifNil: (recoveredStack1).
            recoveredPC := 531.
        ].
        recoveredStep = 531 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 534.
        ].
        recoveredStep = 534 ifTrue: [
            recoveredStack1 := [].
            recoveredPC := 536.
        ].
        recoveredStep = 536 ifTrue: [
            recoveredStack0 := (recoveredStack0) firstIfAbsent: (recoveredStack1).
            recoveredPC := 541.
        ].
        recoveredStep = 541 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 544.
        ].
        recoveredStep = 544 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 547.
        ].
        recoveredStep = 547 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 550.
        ].
        recoveredStep = 550 ifTrue: [
            (recoveredStack0) addAll: (recoveredStack1).
            recoveredPC := 555.
        ].
        recoveredStep = 555 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 556.
        ].
        recoveredStep = 556 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 559.
        ].
        recoveredStep = 559 ifTrue: [
            recoveredStack0 := recoveredLocal11.
            recoveredPC := 562.
        ].
        recoveredStep = 562 ifTrue: [
            recoveredStack0 := (recoveredStack0) graphicsModel.
            recoveredPC := 567.
        ].
        recoveredStep = 567 ifTrue: [
            recoveredStack0 := (recoveredStack0) deepCopy.
            recoveredPC := 571.
        ].
        recoveredStep = 571 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 574.
        ].
        recoveredStep = 574 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 577.
        ].
        recoveredStep = 577 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 580.
        ].
        recoveredStep = 580 ifTrue: [
            (recoveredStack0) prepareForPaste: (recoveredStack1).
            recoveredPC := 585.
        ].
        recoveredStep = 585 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 588.
        ].
        recoveredStep = 588 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 589.
        ].
        recoveredStep = 589 ifTrue: [
            recoveredStack1 := (recoveredStack1) getBDEController.
            recoveredPC := 591.
        ].
        recoveredStep = 591 ifTrue: [
            recoveredStack1 := (recoveredStack1) datamodelManager.
            recoveredPC := 595.
        ].
        recoveredStep = 595 ifTrue: [
            (recoveredStack0) removeMethodElementsNotAllowed: (recoveredStack1).
            recoveredPC := 599.
        ].
        recoveredStep = 599 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 602.
        ].
        recoveredStep = 602 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 606] ifFalse: [recoveredPC := 652].
        ].
        recoveredStep = 606 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 609.
        ].
        recoveredStep = 609 ifTrue: [
            recoveredStack1 := [:recoveredBlock609Arg1 | 
    | recoveredBlock609Local1 recoveredBlock609Stack0 recoveredBlock609Stack1 recoveredBlock609Stack2 recoveredBlock609Stack3 recoveredBlock609Stack4 recoveredBlock609PC recoveredBlock609Step recoveredBlock609Done recoveredBlock609Result |
    recoveredBlock609Stack0 := self.
    recoveredBlock609PC := 616.
    recoveredBlock609Done := false.
    [recoveredBlock609Done not] whileTrue: [
        recoveredBlock609Step := recoveredBlock609PC.
        recoveredBlock609Step = 616 ifTrue: [
            recoveredBlock609Stack1 := nil.
            recoveredBlock609PC := 617.
        ].
        recoveredBlock609Step = 617 ifTrue: [
            recoveredBlock609Stack2 := recoveredBlock609Arg1.
            recoveredBlock609PC := 618.
        ].
        recoveredBlock609Step = 618 ifTrue: [
            recoveredBlock609Stack3 := [:block2812c148Arg1 | 
    nil
].
            recoveredBlock609PC := 622.
        ].
        recoveredBlock609Step = 622 ifTrue: [
            recoveredBlock609PC := 628.
        ].
        recoveredBlock609Step = 628 ifTrue: [
            recoveredBlock609Stack2 := (recoveredBlock609Stack2) sgClassIfUndefined: (recoveredBlock609Stack3).
            recoveredBlock609PC := 633.
        ].
        recoveredBlock609Step = 633 ifTrue: [
            recoveredBlock609Stack3 := recoveredBlock609Stack2.
            recoveredBlock609PC := 634.
        ].
        recoveredBlock609Step = 634 ifTrue: [
            recoveredBlock609Local1 := recoveredBlock609Stack3.
            recoveredBlock609PC := 635.
        ].
        recoveredBlock609Step = 635 ifTrue: [
            (recoveredBlock609Stack2 == nil) ifTrue: [recoveredBlock609PC := 649] ifFalse: [recoveredBlock609PC := 638].
        ].
        recoveredBlock609Step = 638 ifTrue: [
            recoveredBlock609PC := 639.
        ].
        recoveredBlock609Step = 639 ifTrue: [
            recoveredBlock609Stack1 := recoveredBlock609Local1.
            recoveredBlock609PC := 640.
        ].
        recoveredBlock609Step = 640 ifTrue: [
            recoveredBlock609Stack2 := recoveredLocal6.
            recoveredBlock609PC := 643.
        ].
        recoveredBlock609Step = 643 ifTrue: [
            recoveredBlock609Stack3 := recoveredBlock609Local1.
            recoveredBlock609PC := 644.
        ].
        recoveredBlock609Step = 644 ifTrue: [
            recoveredBlock609Stack1 := (recoveredBlock609Stack1) replaceAliasNames: (recoveredBlock609Stack2) sgClass: (recoveredBlock609Stack3).
            recoveredBlock609PC := 649.
        ].
        recoveredBlock609Step = 649 ifTrue: [
            recoveredBlock609Result := recoveredBlock609Stack1.
            recoveredBlock609Done := true.
        ].
    ].
    recoveredBlock609Result
].
            recoveredPC := 650.
        ].
        recoveredStep = 650 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 652.
        ].
        recoveredStep = 652 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 655.
        ].
        recoveredStep = 655 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 656.
        ].
        recoveredStep = 656 ifTrue: [
            recoveredStack1 := (recoveredStack1) actualHierarchy.
            recoveredPC := 661.
        ].
        recoveredStep = 661 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 662.
        ].
        recoveredStep = 662 ifTrue: [
            recoveredStack2 := (recoveredStack2) getBDEController.
            recoveredPC := 664.
        ].
        recoveredStep = 664 ifTrue: [
            recoveredStack2 := (recoveredStack2) datamodelManager.
            recoveredPC := 669.
        ].
        recoveredStep = 669 ifTrue: [
            recoveredStack3 := SGIdentifierTableBuilder.
            recoveredPC := 672.
        ].
        recoveredStep = 672 ifTrue: [
            recoveredStack3 := (recoveredStack3) createWithNewTable.
            recoveredPC := 677.
        ].
        recoveredStep = 677 ifTrue: [
            recoveredStack0 := (recoveredStack0) graphicObjectFor: (recoveredStack1) datamodelManager: (recoveredStack2) tableBuilder: (recoveredStack3).
            recoveredPC := 681.
        ].
        recoveredStep = 681 ifTrue: [
            recoveredLocal12 := recoveredStack0.
            recoveredPC := 684.
        ].
        recoveredStep = 684 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 688.
        ].
        recoveredStep = 688 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 690.
        ].
        recoveredStep = 690 ifTrue: [
            recoveredLocal10 := recoveredStack0.
            recoveredPC := 693.
        ].
        recoveredStep = 693 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 695.
        ].
        recoveredStep = 695 ifTrue: [
            recoveredStack1 := 'Call_70211'.
            recoveredPC := 698.
        ].
        recoveredStep = 698 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 699.
        ].
        recoveredStep = 699 ifTrue: [
            recoveredPC := 700.
        ].
        recoveredStep = 700 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 703.
        ].
        recoveredStep = 703 ifTrue: [
            recoveredStack1 := [:block2812c16cArg1 | 
    | block2812c16cValue0 block2812c16cValue1 block2812c16cValue2 |
    block2812c16cValue0 := block2812c16cArg1.
    block2812c16cValue1 := (block2812c16cValue0) basicGraphObject.
    block2812c16cValue2 := (block2812c16cValue1) isConnectionGO.
    block2812c16cValue2
].
            recoveredPC := 706.
        ].
        recoveredStep = 706 ifTrue: [
            recoveredPC := 720.
        ].
        recoveredStep = 720 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 725.
        ].
        recoveredStep = 725 ifTrue: [
            recoveredStack1 := [:recoveredBlock725Arg1 | 
    | recoveredBlock725Value0 recoveredBlock725Value1 recoveredBlock725Value2 recoveredBlock725Value3 recoveredBlock725Value4 recoveredBlock725Value5 recoveredBlock725Value6 recoveredBlock725Value7 |
    recoveredBlock725Value0 := recoveredBlock725Arg1.
    (recoveredBlock725Value0) resetCustomerDataInfo.
    recoveredBlock725Value1 := recoveredBlock725Arg1.
    recoveredBlock725Value2 := recoveredArg2.
    (recoveredBlock725Value1) moveDelta: (recoveredBlock725Value2).
    recoveredBlock725Value3 := recoveredLocal10.
    recoveredBlock725Value4 := recoveredBlock725Arg1.
    recoveredBlock725Value5 := (recoveredBlock725Value4) giveRedisplayRects.
    recoveredBlock725Value6 := (recoveredBlock725Value3) , (recoveredBlock725Value5).
    recoveredBlock725Value7 := recoveredBlock725Value6.
    recoveredLocal10 := recoveredBlock725Value7.
    recoveredBlock725Value6
].
            recoveredPC := 760.
        ].
        recoveredStep = 760 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 762.
        ].
        recoveredStep = 762 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 765.
        ].
        recoveredStep = 765 ifTrue: [
            recoveredStack1 := [:block2812c190Arg1 | 
    | block2812c190Value0 block2812c190Value1 block2812c190Value2 block2812c190Value3 |
    block2812c190Value0 := block2812c190Arg1.
    block2812c190Value1 := (block2812c190Value0) basicGraphObject.
    block2812c190Value2 := (block2812c190Value1) isConnectionGO.
    block2812c190Value3 := (block2812c190Value2) not.
    block2812c190Value3
].
            recoveredPC := 768.
        ].
        recoveredStep = 768 ifTrue: [
            recoveredPC := 783.
        ].
        recoveredStep = 783 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 787.
        ].
        recoveredStep = 787 ifTrue: [
            recoveredStack1 := [:recoveredBlock787Arg1 | 
    | recoveredBlock787Value0 recoveredBlock787Value1 recoveredBlock787Value2 recoveredBlock787Value3 recoveredBlock787Value4 recoveredBlock787Value5 recoveredBlock787Value6 recoveredBlock787Value7 recoveredBlock787Value8 recoveredBlock787Value9 recoveredBlock787Value10 |
    recoveredBlock787Value0 := recoveredBlock787Arg1.
    (recoveredBlock787Value0) resetCustomerDataInfo.
    recoveredBlock787Value1 := recoveredBlock787Arg1.
    recoveredBlock787Value2 := recoveredArg2.
    (recoveredBlock787Value1) moveDelta: (recoveredBlock787Value2).
    recoveredBlock787Value3 := recoveredLocal10.
    recoveredBlock787Value4 := recoveredBlock787Arg1.
    recoveredBlock787Value5 := (recoveredBlock787Value4) giveRedisplayRects.
    recoveredBlock787Value6 := (recoveredBlock787Value3) , (recoveredBlock787Value5).
    recoveredLocal10 := recoveredBlock787Value6.
    recoveredBlock787Value7 := recoveredBlock787Arg1.
    recoveredBlock787Value8 := (self) controller.
    recoveredBlock787Value9 := (recoveredBlock787Value8) raster.
    recoveredBlock787Value10 := (recoveredBlock787Value7) fitToRaster: (recoveredBlock787Value9).
    recoveredBlock787Value10
].
            recoveredPC := 836.
        ].
        recoveredStep = 836 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 838.
        ].
        recoveredStep = 838 ifTrue: [
            recoveredStack0 := recoveredLocal11.
            recoveredPC := 841.
        ].
        recoveredStep = 841 ifTrue: [
            recoveredStack0 := (recoveredStack0) actionType.
            recoveredPC := 845.
        ].
        recoveredStep = 845 ifTrue: [
            recoveredStack1 := ASDCopyPasteBuffer.
            recoveredPC := 848.
        ].
        recoveredStep = 848 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyActionType.
            recoveredPC := 853.
        ].
        recoveredStep = 853 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 855.
        ].
        recoveredStep = 855 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 900] ifFalse: [recoveredPC := 858].
        ].
        recoveredStep = 858 ifTrue: [
            recoveredStack0 := recoveredLocal11.
            recoveredPC := 861.
        ].
        recoveredStep = 861 ifTrue: [
            recoveredStack0 := (recoveredStack0) specificationLabel.
            recoveredPC := 865.
        ].
        recoveredStep = 865 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 866.
        ].
        recoveredStep = 866 ifTrue: [
            recoveredStack1 := (recoveredStack1) getBDEController.
            recoveredPC := 868.
        ].
        recoveredStep = 868 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentSpecification.
            recoveredPC := 870.
        ].
        recoveredStep = 870 ifTrue: [
            recoveredStack1 := (recoveredStack1) specificationName.
            recoveredPC := 875.
        ].
        recoveredStep = 875 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 877.
        ].
        recoveredStep = 877 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 880] ifFalse: [recoveredPC := 900].
        ].
        recoveredStep = 880 ifTrue: [
            recoveredStack0 := recoveredLocal11.
            recoveredPC := 883.
        ].
        recoveredStep = 883 ifTrue: [
            recoveredStack0 := (recoveredStack0) itemLabel.
            recoveredPC := 887.
        ].
        recoveredStep = 887 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 888.
        ].
        recoveredStep = 888 ifTrue: [
            recoveredStack1 := (recoveredStack1) getBDEController.
            recoveredPC := 890.
        ].
        recoveredStep = 890 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 891.
        ].
        recoveredStep = 891 ifTrue: [
            recoveredStack1 := (recoveredStack1) label.
            recoveredPC := 895.
        ].
        recoveredStep = 895 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 897.
        ].
        recoveredStep = 897 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 1162] ifFalse: [recoveredPC := 900].
        ].
        recoveredStep = 900 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 903.
        ].
        recoveredStep = 903 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 907.
        ].
        recoveredStep = 907 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 910] ifFalse: [recoveredPC := 1032].
        ].
        recoveredStep = 910 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 913.
        ].
        recoveredStep = 913 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 1032] ifFalse: [recoveredPC := 916].
        ].
        recoveredStep = 916 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 917.
        ].
        recoveredStep = 917 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 920.
        ].
        recoveredStep = 920 ifTrue: [
            recoveredStack1 := (recoveredStack1) owner.
            recoveredPC := 921.
        ].
        recoveredStep = 921 ifTrue: [
            recoveredStack0 := (recoveredStack0) getLastFreeSeqNumForMethod: (recoveredStack1).
            recoveredPC := 925.
        ].
        recoveredStep = 925 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 928.
        ].
        recoveredStep = 928 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 930.
        ].
        recoveredStep = 930 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 932.
        ].
        recoveredStep = 932 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 935.
        ].
        recoveredStep = 935 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 938.
        ].
        recoveredStep = 938 ifTrue: [
            recoveredStack1 := [:recoveredBlock938Arg1 | 
    | recoveredBlock938Value0 recoveredBlock938Value1 recoveredBlock938Value2 recoveredBlock938Value3 |
    recoveredBlock938Value0 := recoveredBlock938Arg1.
    recoveredBlock938Value1 := (recoveredBlock938Value0) sequenceCalls.
    recoveredBlock938Value2 := [:recoveredBlock938Block949Arg1 | 
    | recoveredBlock938Block949Stack0 recoveredBlock938Block949Stack1 recoveredBlock938Block949Stack2 recoveredBlock938Block949Stack3 recoveredBlock938Block949Stack4 recoveredBlock938Block949PC recoveredBlock938Block949Step recoveredBlock938Block949Done recoveredBlock938Block949Result |
    recoveredBlock938Block949Stack0 := nil.
    recoveredBlock938Block949PC := 956.
    recoveredBlock938Block949Done := false.
    [recoveredBlock938Block949Done not] whileTrue: [
        recoveredBlock938Block949Step := recoveredBlock938Block949PC.
        recoveredBlock938Block949Step = 956 ifTrue: [
            recoveredBlock938Block949Stack1 := nil.
            recoveredBlock938Block949PC := 957.
        ].
        recoveredBlock938Block949Step = 957 ifTrue: [
            recoveredBlock938Block949Stack2 := recoveredBlock938Block949Arg1.
            recoveredBlock938Block949PC := 958.
        ].
        recoveredBlock938Block949Step = 958 ifTrue: [
            recoveredBlock938Block949Stack2 := (recoveredBlock938Block949Stack2) description.
            recoveredBlock938Block949PC := 963.
        ].
        recoveredBlock938Block949Step = 963 ifTrue: [
            recoveredBlock938Block949Stack3 := 2.
            recoveredBlock938Block949PC := 965.
        ].
        recoveredBlock938Block949Step = 965 ifTrue: [
            recoveredBlock938Block949Stack2 := (recoveredBlock938Block949Stack2) at: (recoveredBlock938Block949Stack3).
            recoveredBlock938Block949PC := 969.
        ].
        recoveredBlock938Block949Step = 969 ifTrue: [
            recoveredBlock938Block949Stack3 := 0.
            recoveredBlock938Block949PC := 971.
        ].
        recoveredBlock938Block949Step = 971 ifTrue: [
            recoveredBlock938Block949Stack2 := (recoveredBlock938Block949Stack2) ~= (recoveredBlock938Block949Stack3).
            recoveredBlock938Block949PC := 972.
        ].
        recoveredBlock938Block949Step = 972 ifTrue: [
            (recoveredBlock938Block949Stack2) ifTrue: [recoveredBlock938Block949PC := 976] ifFalse: [recoveredBlock938Block949PC := 993].
        ].
        recoveredBlock938Block949Step = 976 ifTrue: [
            recoveredBlock938Block949PC := 977.
        ].
        recoveredBlock938Block949Step = 977 ifTrue: [
            recoveredBlock938Block949Stack1 := recoveredLocal1.
            recoveredBlock938Block949PC := 980.
        ].
        recoveredBlock938Block949Step = 980 ifTrue: [
            recoveredBlock938Block949Stack2 := recoveredBlock938Block949Arg1.
            recoveredBlock938Block949PC := 981.
        ].
        recoveredBlock938Block949Step = 981 ifTrue: [
            recoveredBlock938Block949Stack2 := (recoveredBlock938Block949Stack2) description.
            recoveredBlock938Block949PC := 985.
        ].
        recoveredBlock938Block949Step = 985 ifTrue: [
            recoveredBlock938Block949Stack3 := 2.
            recoveredBlock938Block949PC := 987.
        ].
        recoveredBlock938Block949Step = 987 ifTrue: [
            recoveredBlock938Block949Stack2 := (recoveredBlock938Block949Stack2) at: (recoveredBlock938Block949Stack3).
            recoveredBlock938Block949PC := 991.
        ].
        recoveredBlock938Block949Step = 991 ifTrue: [
            recoveredBlock938Block949Stack1 := (recoveredBlock938Block949Stack1) add: (recoveredBlock938Block949Stack2).
            recoveredBlock938Block949PC := 993.
        ].
        recoveredBlock938Block949Step = 993 ifTrue: [
            recoveredBlock938Block949Result := recoveredBlock938Block949Stack1.
            recoveredBlock938Block949Done := true.
        ].
    ].
    recoveredBlock938Block949Result
].
    recoveredBlock938Value3 := (recoveredBlock938Value1) do: (recoveredBlock938Value2).
    recoveredBlock938Value3
].
            recoveredPC := 997.
        ].
        recoveredStep = 997 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 999.
        ].
        recoveredStep = 999 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 1002.
        ].
        recoveredStep = 1002 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection.
            recoveredPC := 1007.
        ].
        recoveredStep = 1007 ifTrue: [
            recoveredStack1 := [].
            recoveredPC := 1009.
        ].
        recoveredStep = 1009 ifTrue: [
            recoveredStack0 := (recoveredStack0) firstIfAbsent: (recoveredStack1).
            recoveredPC := 1013.
        ].
        recoveredStep = 1013 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 1016.
        ].
        recoveredStep = 1016 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 1019.
        ].
        recoveredStep = 1019 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 1032] ifFalse: [recoveredPC := 1022].
        ].
        recoveredStep = 1022 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 1025.
        ].
        recoveredStep = 1025 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 1028.
        ].
        recoveredStep = 1028 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 1029.
        ].
        recoveredStep = 1029 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 1032.
        ].
        recoveredStep = 1032 ifTrue: [
            recoveredStack0 := 'hw'.
            recoveredPC := 1034.
        ].
        recoveredStep = 1034 ifTrue: [
            recoveredStack1 := 'call_2007400848'.
            recoveredPC := 1038.
        ].
        recoveredStep = 1038 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 1039.
        ].
        recoveredStep = 1039 ifTrue: [
            recoveredPC := 1040.
        ].
        recoveredStep = 1040 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 1043.
        ].
        recoveredStep = 1043 ifTrue: [
            recoveredStack1 := [:recoveredBlock1043Arg1 | 
    | recoveredBlock1043Stack0 recoveredBlock1043Stack1 recoveredBlock1043Stack2 recoveredBlock1043Stack3 recoveredBlock1043Stack4 recoveredBlock1043Stack5 recoveredBlock1043Stack6 recoveredBlock1043PC recoveredBlock1043Step recoveredBlock1043Done recoveredBlock1043Result |
    recoveredBlock1043Stack0 := self.
    recoveredBlock1043PC := 1050.
    recoveredBlock1043Done := false.
    [recoveredBlock1043Done not] whileTrue: [
        recoveredBlock1043Step := recoveredBlock1043PC.
        recoveredBlock1043Step = 1050 ifTrue: [
            recoveredBlock1043Stack1 := recoveredBlock1043Arg1.
            recoveredBlock1043PC := 1051.
        ].
        recoveredBlock1043Step = 1051 ifTrue: [
            recoveredBlock1043Stack1 := (recoveredBlock1043Stack1) basicGraphObject.
            recoveredBlock1043PC := 1055.
        ].
        recoveredBlock1043Step = 1055 ifTrue: [
            recoveredBlock1043Stack1 := (recoveredBlock1043Stack1) isConnectionGO.
            recoveredBlock1043PC := 1059.
        ].
        recoveredBlock1043Step = 1059 ifTrue: [
            recoveredBlock1043Stack1 := (recoveredBlock1043Stack1) not.
            recoveredBlock1043PC := 1060.
        ].
        recoveredBlock1043Step = 1060 ifTrue: [
            recoveredBlock1043Stack2 := recoveredLocal4.
            recoveredBlock1043PC := 1063.
        ].
        recoveredBlock1043Step = 1063 ifTrue: [
            recoveredBlock1043Stack2 := (recoveredBlock1043Stack2) notNil.
            recoveredBlock1043PC := 1064.
        ].
        recoveredBlock1043Step = 1064 ifTrue: [
            recoveredBlock1043Stack1 := (recoveredBlock1043Stack1) & (recoveredBlock1043Stack2).
            recoveredBlock1043PC := 1069.
        ].
        recoveredBlock1043Step = 1069 ifTrue: [
            (recoveredBlock1043Stack1) ifTrue: [recoveredBlock1043PC := 1072] ifFalse: [recoveredBlock1043PC := 1100].
        ].
        recoveredBlock1043Step = 1072 ifTrue: [
            recoveredBlock1043Stack1 := self.
            recoveredBlock1043PC := 1073.
        ].
        recoveredBlock1043Step = 1073 ifTrue: [
            recoveredBlock1043Stack2 := recoveredBlock1043Arg1.
            recoveredBlock1043PC := 1074.
        ].
        recoveredBlock1043Step = 1074 ifTrue: [
            recoveredBlock1043Stack3 := recoveredLocal4.
            recoveredBlock1043PC := 1077.
        ].
        recoveredBlock1043Step = 1077 ifTrue: [
            recoveredBlock1043Stack3 := (recoveredBlock1043Stack3) owner.
            recoveredBlock1043PC := 1078.
        ].
        recoveredBlock1043Step = 1078 ifTrue: [
            recoveredBlock1043Stack3 := (recoveredBlock1043Stack3) methodName.
            recoveredBlock1043PC := 1083.
        ].
        recoveredBlock1043Step = 1083 ifTrue: [
            recoveredBlock1043Stack4 := recoveredLocal4.
            recoveredBlock1043PC := 1086.
        ].
        recoveredBlock1043Step = 1086 ifTrue: [
            recoveredBlock1043Stack4 := (recoveredBlock1043Stack4) owner.
            recoveredBlock1043PC := 1087.
        ].
        recoveredBlock1043Step = 1087 ifTrue: [
            recoveredBlock1043Stack4 := (recoveredBlock1043Stack4) aliasName.
            recoveredBlock1043PC := 1089.
        ].
        recoveredBlock1043Step = 1089 ifTrue: [
            recoveredBlock1043Stack5 := recoveredLocal3.
            recoveredBlock1043PC := 1092.
        ].
        recoveredBlock1043Step = 1092 ifTrue: [
            recoveredBlock1043Stack1 := (recoveredBlock1043Stack1) setSequenceCallsFor: (recoveredBlock1043Stack2) methodName: (recoveredBlock1043Stack3) aliasName: (recoveredBlock1043Stack4) offset: (recoveredBlock1043Stack5).
            recoveredBlock1043PC := 1097.
        ].
        recoveredBlock1043Step = 1097 ifTrue: [
            recoveredBlock1043PC := 1107.
        ].
        recoveredBlock1043Step = 1100 ifTrue: [
            recoveredBlock1043Stack1 := self.
            recoveredBlock1043PC := 1101.
        ].
        recoveredBlock1043Step = 1101 ifTrue: [
            recoveredBlock1043Stack2 := recoveredBlock1043Arg1.
            recoveredBlock1043PC := 1102.
        ].
        recoveredBlock1043Step = 1102 ifTrue: [
            recoveredBlock1043Stack1 := (recoveredBlock1043Stack1) resetSequenceCallsFor: (recoveredBlock1043Stack2).
            recoveredBlock1043PC := 1107.
        ].
        recoveredBlock1043Step = 1107 ifTrue: [
            recoveredBlock1043Result := recoveredBlock1043Stack1.
            recoveredBlock1043Done := true.
        ].
    ].
    recoveredBlock1043Result
].
            recoveredPC := 1108.
        ].
        recoveredStep = 1108 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 1110.
        ].
        recoveredStep = 1110 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 1113.
        ].
        recoveredStep = 1113 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 1147] ifFalse: [recoveredPC := 1116].
        ].
        recoveredStep = 1116 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 1117.
        ].
        recoveredStep = 1117 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 1120.
        ].
        recoveredStep = 1120 ifTrue: [
            recoveredStack1 := (recoveredStack1) owner.
            recoveredPC := 1121.
        ].
        recoveredStep = 1121 ifTrue: [
            recoveredStack0 := (recoveredStack0) getLastFreeSeqNumForMethod: (recoveredStack1).
            recoveredPC := 1125.
        ].
        recoveredStep = 1125 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 1126.
        ].
        recoveredStep = 1126 ifTrue: [
            recoveredStack1 := (recoveredStack1) step.
            recoveredPC := 1131.
        ].
        recoveredStep = 1131 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 1132.
        ].
        recoveredStep = 1132 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 1135.
        ].
        recoveredStep = 1135 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 1136.
        ].
        recoveredStep = 1136 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 1139.
        ].
        recoveredStep = 1139 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 1142.
        ].
        recoveredStep = 1142 ifTrue: [
            recoveredStack2 := (recoveredStack2) owner.
            recoveredPC := 1143.
        ].
        recoveredStep = 1143 ifTrue: [
            (recoveredStack0) lastUsedSequenceNumber: (recoveredStack1) forMethod: (recoveredStack2).
            recoveredPC := 1147.
        ].
        recoveredStep = 1147 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 1148.
        ].
        recoveredStep = 1148 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 1149.
        ].
        recoveredStep = 1149 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 1152.
        ].
        recoveredStep = 1152 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 1153.
        ].
        recoveredStep = 1153 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 1156.
        ].
        recoveredStep = 1156 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 1159.
        ].
        recoveredStep = 1159 ifTrue: [
            recoveredPC := 1177.
        ].
        recoveredStep = 1162 ifTrue: [
            recoveredStack0 := recoveredLocal11.
            recoveredPC := 1165.
        ].
        recoveredStep = 1165 ifTrue: [
            recoveredStack1 := ASDCopyPasteBuffer.
            recoveredPC := 1168.
        ].
        recoveredStep = 1168 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyActionType.
            recoveredPC := 1173.
        ].
        recoveredStep = 1173 ifTrue: [
            (recoveredStack0) actionType: (recoveredStack1).
            recoveredPC := 1177.
        ].
        recoveredStep = 1177 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 1179.
        ].
        recoveredStep = 1179 ifTrue: [
            recoveredStack1 := 'Call_71187'.
            recoveredPC := 1182.
        ].
        recoveredStep = 1182 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 1183.
        ].
        recoveredStep = 1183 ifTrue: [
            recoveredPC := 1184.
        ].
        recoveredStep = 1184 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 1187.
        ].
        recoveredStep = 1187 ifTrue: [
            recoveredStack1 := [:block2812c1b4Arg1 | 
    | block2812c1b4Stack0 block2812c1b4Stack1 block2812c1b4Stack2 block2812c1b4Stack3 block2812c1b4PC block2812c1b4Step block2812c1b4Done block2812c1b4Result |
    block2812c1b4Stack0 := self.
    block2812c1b4PC := 4.
    block2812c1b4Done := false.
    [block2812c1b4Done not] whileTrue: [
        block2812c1b4Step := block2812c1b4PC.
        block2812c1b4Step = 4 ifTrue: [
            block2812c1b4Stack1 := nil.
            block2812c1b4PC := 5.
        ].
        block2812c1b4Step = 5 ifTrue: [
            block2812c1b4Stack2 := block2812c1b4Arg1.
            block2812c1b4PC := 6.
        ].
        block2812c1b4Step = 6 ifTrue: [
            block2812c1b4Stack2 := (block2812c1b4Stack2) isGraphicObject.
            block2812c1b4PC := 11.
        ].
        block2812c1b4Step = 11 ifTrue: [
            (block2812c1b4Stack2) ifTrue: [block2812c1b4PC := 14] ifFalse: [block2812c1b4PC := 29].
        ].
        block2812c1b4Step = 14 ifTrue: [
            block2812c1b4PC := 15.
        ].
        block2812c1b4Step = 15 ifTrue: [
            block2812c1b4Stack1 := block2812c1b4Arg1.
            block2812c1b4PC := 16.
        ].
        block2812c1b4Step = 16 ifTrue: [
            block2812c1b4Stack2 := block2812c1b4Arg1.
            block2812c1b4PC := 17.
        ].
        block2812c1b4Step = 17 ifTrue: [
            block2812c1b4Stack2 := (block2812c1b4Stack2) specialViewInfo.
            block2812c1b4PC := 21.
        ].
        block2812c1b4Step = 21 ifTrue: [
            block2812c1b4Stack2 := (block2812c1b4Stack2) deepCopy.
            block2812c1b4PC := 25.
        ].
        block2812c1b4Step = 25 ifTrue: [
            block2812c1b4Stack1 := (block2812c1b4Stack1) specialViewInfo: (block2812c1b4Stack2).
            block2812c1b4PC := 29.
        ].
        block2812c1b4Step = 29 ifTrue: [
            block2812c1b4Result := block2812c1b4Stack1.
            block2812c1b4Done := true.
        ].
    ].
    block2812c1b4Result
].
            recoveredPC := 1190.
        ].
        recoveredStep = 1190 ifTrue: [
            recoveredPC := 1220.
        ].
        recoveredStep = 1220 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 1222.
        ].
        recoveredStep = 1222 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 1225.
        ].
        recoveredStep = 1225 ifTrue: [
            recoveredStack1 := [:block2812c1d8Arg1 | 
    | block2812c1d8Value0 block2812c1d8Value1 block2812c1d8Value2 |
    block2812c1d8Value0 := block2812c1d8Arg1.
    block2812c1d8Value1 := (block2812c1d8Value0) basicGraphObject.
    block2812c1d8Value2 := (block2812c1d8Value1) isStateBlock.
    block2812c1d8Value2
].
            recoveredPC := 1228.
        ].
        recoveredStep = 1228 ifTrue: [
            recoveredPC := 1242.
        ].
        recoveredStep = 1242 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 1247.
        ].
        recoveredStep = 1247 ifTrue: [
            recoveredLocal9 := recoveredStack0.
            recoveredPC := 1250.
        ].
        recoveredStep = 1250 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 1253.
        ].
        recoveredStep = 1253 ifTrue: [
            recoveredStack1 := [:recoveredBlock1253Arg1 | 
    | recoveredBlock1253Value0 recoveredBlock1253Value1 recoveredBlock1253Value2 recoveredBlock1253Value3 recoveredBlock1253Value4 |
    recoveredBlock1253Value0 := recoveredBlock1253Arg1.
    recoveredBlock1253Value1 := (recoveredBlock1253Value0) basicGraphObject.
    recoveredBlock1253Value2 := owner.
    recoveredBlock1253Value3 := (recoveredBlock1253Value2) datamodelManager.
    recoveredBlock1253Value4 := (recoveredBlock1253Value1) checkAndUpdateStatePrioWithManager: (recoveredBlock1253Value3).
    recoveredBlock1253Value4
].
            recoveredPC := 1276.
        ].
        recoveredStep = 1276 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 1278.
        ].
        recoveredStep = 1278 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 1281.
        ].
        recoveredStep = 1281 ifTrue: [
            recoveredStack1 := [:block2812c1fcArg1 | 
    | block2812c1fcValue0 block2812c1fcValue1 block2812c1fcValue2 |
    block2812c1fcValue0 := block2812c1fcArg1.
    block2812c1fcValue1 := (block2812c1fcValue0) basicGraphObject.
    block2812c1fcValue2 := (block2812c1fcValue1) isStatementBlockGO.
    block2812c1fcValue2
].
            recoveredPC := 1284.
        ].
        recoveredStep = 1284 ifTrue: [
            recoveredPC := 1298.
        ].
        recoveredStep = 1298 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 1303.
        ].
        recoveredStep = 1303 ifTrue: [
            recoveredStack1 := [:recoveredBlock1303Arg1 | 
    | recoveredBlock1303Stack0 recoveredBlock1303Stack1 recoveredBlock1303Stack2 recoveredBlock1303Stack3 recoveredBlock1303PC recoveredBlock1303Step recoveredBlock1303Done recoveredBlock1303Result |
    recoveredBlock1303Stack0 := self.
    recoveredBlock1303PC := 1310.
    recoveredBlock1303Done := false.
    [recoveredBlock1303Done not] whileTrue: [
        recoveredBlock1303Step := recoveredBlock1303PC.
        recoveredBlock1303Step = 1310 ifTrue: [
            recoveredBlock1303Stack1 := recoveredBlock1303Arg1.
            recoveredBlock1303PC := 1311.
        ].
        recoveredBlock1303Step = 1311 ifTrue: [
            recoveredBlock1303Stack1 := (recoveredBlock1303Stack1) basicGraphObject.
            recoveredBlock1303PC := 1315.
        ].
        recoveredBlock1303Step = 1315 ifTrue: [
            (recoveredBlock1303Stack1) checkAndUpdateLabel.
            recoveredBlock1303PC := 1319.
        ].
        recoveredBlock1303Step = 1319 ifTrue: [
            recoveredBlock1303Stack1 := nil.
            recoveredBlock1303PC := 1320.
        ].
        recoveredBlock1303Step = 1320 ifTrue: [
            recoveredBlock1303Stack2 := self.
            recoveredBlock1303PC := 1321.
        ].
        recoveredBlock1303Step = 1321 ifTrue: [
            recoveredBlock1303Stack2 := (recoveredBlock1303Stack2) getBDEController.
            recoveredBlock1303PC := 1323.
        ].
        recoveredBlock1303Step = 1323 ifTrue: [
            recoveredBlock1303Stack2 := (recoveredBlock1303Stack2) currentSpecification.
            recoveredBlock1303PC := 1325.
        ].
        recoveredBlock1303Step = 1325 ifTrue: [
            recoveredBlock1303Stack2 := (recoveredBlock1303Stack2) owner.
            recoveredBlock1303PC := 1326.
        ].
        recoveredBlock1303Step = 1326 ifTrue: [
            recoveredBlock1303Stack2 := (recoveredBlock1303Stack2) isCTClass.
            recoveredBlock1303PC := 1331.
        ].
        recoveredBlock1303Step = 1331 ifTrue: [
            (recoveredBlock1303Stack2) ifTrue: [recoveredBlock1303PC := 1334] ifFalse: [recoveredBlock1303PC := 1346].
        ].
        recoveredBlock1303Step = 1334 ifTrue: [
            recoveredBlock1303PC := 1335.
        ].
        recoveredBlock1303Step = 1335 ifTrue: [
            recoveredBlock1303Stack1 := RBUserInfo.
            recoveredBlock1303PC := 1337.
        ].
        recoveredBlock1303Step = 1337 ifTrue: [
            recoveredBlock1303Stack2 := 'It is not possible to paste a Statement Block to a CT Block.'.
            recoveredBlock1303PC := 1340.
        ].
        recoveredBlock1303Step = 1340 ifTrue: [
            recoveredBlock1303Stack1 := (recoveredBlock1303Stack1) message: (recoveredBlock1303Stack2).
            recoveredBlock1303PC := 1342.
        ].
        recoveredBlock1303Step = 1342 ifTrue: [
            (recoveredBlock1303Stack1) prompt.
            recoveredBlock1303PC := 1344.
        ].
        recoveredBlock1303Step = 1344 ifTrue: [
            recoveredBlock1303Stack1 := nil.
            recoveredBlock1303PC := 1345.
        ].
        recoveredBlock1303Step = 1345 ifTrue: [
            ^recoveredBlock1303Stack1
        ].
        recoveredBlock1303Step = 1346 ifTrue: [
            recoveredBlock1303Result := recoveredBlock1303Stack1.
            recoveredBlock1303Done := true.
        ].
    ].
    recoveredBlock1303Result
].
            recoveredPC := 1347.
        ].
        recoveredStep = 1347 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 1349.
        ].
        recoveredStep = 1349 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 1350.
        ].
        recoveredStep = 1350 ifTrue: [
            recoveredStack0 := (recoveredStack0) actualHierarchy.
            recoveredPC := 1355.
        ].
        recoveredStep = 1355 ifTrue: [
            recoveredStack0 := (recoveredStack0) isStatementBlockWrapperGO.
            recoveredPC := 1359.
        ].
        recoveredStep = 1359 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 1362] ifFalse: [recoveredPC := 1450].
        ].
        recoveredStep = 1362 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 1365.
        ].
        recoveredStep = 1365 ifTrue: [
            recoveredStack1 := [:block2812c220Arg1 | 
    | block2812c220Value0 block2812c220Value1 |
    block2812c220Value0 := block2812c220Arg1.
    block2812c220Value1 := (block2812c220Value0) isBlockGO.
    block2812c220Value1
].
            recoveredPC := 1368.
        ].
        recoveredStep = 1368 ifTrue: [
            recoveredPC := 1378.
        ].
        recoveredStep = 1378 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 1383.
        ].
        recoveredStep = 1383 ifTrue: [
            recoveredStack1 := [:block2812c244Arg1 | 
    | block2812c244Stack0 block2812c244Stack1 block2812c244Stack2 block2812c244Stack3 block2812c244PC block2812c244Step block2812c244Done block2812c244Result |
    block2812c244Stack0 := self.
    block2812c244PC := 4.
    block2812c244Done := false.
    [block2812c244Done not] whileTrue: [
        block2812c244Step := block2812c244PC.
        block2812c244Step = 4 ifTrue: [
            block2812c244Stack1 := block2812c244Arg1.
            block2812c244PC := 5.
        ].
        block2812c244Step = 5 ifTrue: [
            block2812c244Stack1 := (block2812c244Stack1) interfaceGOs.
            block2812c244PC := 9.
        ].
        block2812c244Step = 9 ifTrue: [
            block2812c244Stack2 := [:block2812c268Arg1 | 
    | block2812c268Value0 block2812c268Value1 |
    block2812c268Value0 := block2812c268Arg1.
    block2812c268Value1 := (block2812c268Value0) isSelectorPort.
    block2812c268Value1
].
            block2812c244PC := 12.
        ].
        block2812c244Step = 12 ifTrue: [
            block2812c244PC := 22.
        ].
        block2812c244Step = 22 ifTrue: [
            block2812c244Stack1 := (block2812c244Stack1) select: (block2812c244Stack2).
            block2812c244PC := 27.
        ].
        block2812c244Step = 27 ifTrue: [
            block2812c244Stack2 := [:block2812c28cArg1 | 
    | block2812c28cStack0 block2812c28cStack1 block2812c28cStack2 block2812c28cStack3 block2812c28cPC block2812c28cStep block2812c28cDone block2812c28cResult |
    block2812c28cStack0 := self.
    block2812c28cPC := 4.
    block2812c28cDone := false.
    [block2812c28cDone not] whileTrue: [
        block2812c28cStep := block2812c28cPC.
        block2812c28cStep = 4 ifTrue: [
            block2812c28cStack1 := nil.
            block2812c28cPC := 5.
        ].
        block2812c28cStep = 5 ifTrue: [
            block2812c28cStack2 := block2812c28cArg1.
            block2812c28cPC := 6.
        ].
        block2812c28cStep = 6 ifTrue: [
            block2812c28cStack2 := (block2812c28cStack2) getSGCallGO.
            block2812c28cPC := 11.
        ].
        block2812c28cStep = 11 ifTrue: [
            (block2812c28cStack2 == nil) ifTrue: [block2812c28cPC := 25] ifFalse: [block2812c28cPC := 14].
        ].
        block2812c28cStep = 14 ifTrue: [
            block2812c28cPC := 15.
        ].
        block2812c28cStep = 15 ifTrue: [
            block2812c28cStack1 := block2812c28cArg1.
            block2812c28cPC := 16.
        ].
        block2812c28cStep = 16 ifTrue: [
            block2812c28cStack1 := (block2812c28cStack1) getSGCallGO.
            block2812c28cPC := 21.
        ].
        block2812c28cStep = 21 ifTrue: [
            block2812c28cStack1 := (block2812c28cStack1) movePinInStatementBlock.
            block2812c28cPC := 25.
        ].
        block2812c28cStep = 25 ifTrue: [
            block2812c28cResult := block2812c28cStack1.
            block2812c28cDone := true.
        ].
    ].
    block2812c28cResult
].
            block2812c244PC := 30.
        ].
        block2812c244Step = 30 ifTrue: [
            block2812c244PC := 56.
        ].
        block2812c244Step = 56 ifTrue: [
            block2812c244Stack1 := (block2812c244Stack1) do: (block2812c244Stack2).
            block2812c244PC := 58.
        ].
        block2812c244Step = 58 ifTrue: [
            block2812c244Result := block2812c244Stack1.
            block2812c244Done := true.
        ].
    ].
    block2812c244Result
].
            recoveredPC := 1386.
        ].
        recoveredStep = 1386 ifTrue: [
            recoveredPC := 1445.
        ].
        recoveredStep = 1445 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 1447.
        ].
        recoveredStep = 1447 ifTrue: [
            recoveredPC := 1535.
        ].
        recoveredStep = 1450 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 1453.
        ].
        recoveredStep = 1453 ifTrue: [
            recoveredStack1 := [:block2812c2b0Arg1 | 
    | block2812c2b0Value0 block2812c2b0Value1 |
    block2812c2b0Value0 := block2812c2b0Arg1.
    block2812c2b0Value1 := (block2812c2b0Value0) isBlockGO.
    block2812c2b0Value1
].
            recoveredPC := 1456.
        ].
        recoveredStep = 1456 ifTrue: [
            recoveredPC := 1466.
        ].
        recoveredStep = 1466 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 1471.
        ].
        recoveredStep = 1471 ifTrue: [
            recoveredStack1 := [:block2812c2d4Arg1 | 
    | block2812c2d4Stack0 block2812c2d4Stack1 block2812c2d4Stack2 block2812c2d4Stack3 block2812c2d4PC block2812c2d4Step block2812c2d4Done block2812c2d4Result |
    block2812c2d4Stack0 := self.
    block2812c2d4PC := 4.
    block2812c2d4Done := false.
    [block2812c2d4Done not] whileTrue: [
        block2812c2d4Step := block2812c2d4PC.
        block2812c2d4Step = 4 ifTrue: [
            block2812c2d4Stack1 := block2812c2d4Arg1.
            block2812c2d4PC := 5.
        ].
        block2812c2d4Step = 5 ifTrue: [
            block2812c2d4Stack1 := (block2812c2d4Stack1) interfaceGOs.
            block2812c2d4PC := 9.
        ].
        block2812c2d4Step = 9 ifTrue: [
            block2812c2d4Stack2 := [:block2812c2f8Arg1 | 
    | block2812c2f8Value0 block2812c2f8Value1 |
    block2812c2f8Value0 := block2812c2f8Arg1.
    block2812c2f8Value1 := (block2812c2f8Value0) isSelectorPort.
    block2812c2f8Value1
].
            block2812c2d4PC := 12.
        ].
        block2812c2d4Step = 12 ifTrue: [
            block2812c2d4PC := 22.
        ].
        block2812c2d4Step = 22 ifTrue: [
            block2812c2d4Stack1 := (block2812c2d4Stack1) select: (block2812c2d4Stack2).
            block2812c2d4PC := 27.
        ].
        block2812c2d4Step = 27 ifTrue: [
            block2812c2d4Stack2 := [:block2812c31cArg1 | 
    | block2812c31cStack0 block2812c31cStack1 block2812c31cStack2 block2812c31cStack3 block2812c31cPC block2812c31cStep block2812c31cDone block2812c31cResult |
    block2812c31cStack0 := self.
    block2812c31cPC := 4.
    block2812c31cDone := false.
    [block2812c31cDone not] whileTrue: [
        block2812c31cStep := block2812c31cPC.
        block2812c31cStep = 4 ifTrue: [
            block2812c31cStack1 := nil.
            block2812c31cPC := 5.
        ].
        block2812c31cStep = 5 ifTrue: [
            block2812c31cStack2 := block2812c31cArg1.
            block2812c31cPC := 6.
        ].
        block2812c31cStep = 6 ifTrue: [
            block2812c31cStack2 := (block2812c31cStack2) getSGCallGO.
            block2812c31cPC := 11.
        ].
        block2812c31cStep = 11 ifTrue: [
            (block2812c31cStack2 == nil) ifTrue: [block2812c31cPC := 25] ifFalse: [block2812c31cPC := 14].
        ].
        block2812c31cStep = 14 ifTrue: [
            block2812c31cPC := 15.
        ].
        block2812c31cStep = 15 ifTrue: [
            block2812c31cStack1 := block2812c31cArg1.
            block2812c31cPC := 16.
        ].
        block2812c31cStep = 16 ifTrue: [
            block2812c31cStack1 := (block2812c31cStack1) getSGCallGO.
            block2812c31cPC := 21.
        ].
        block2812c31cStep = 21 ifTrue: [
            block2812c31cStack1 := (block2812c31cStack1) movePinOutStatementBlock.
            block2812c31cPC := 25.
        ].
        block2812c31cStep = 25 ifTrue: [
            block2812c31cResult := block2812c31cStack1.
            block2812c31cDone := true.
        ].
    ].
    block2812c31cResult
].
            block2812c2d4PC := 30.
        ].
        block2812c2d4Step = 30 ifTrue: [
            block2812c2d4PC := 56.
        ].
        block2812c2d4Step = 56 ifTrue: [
            block2812c2d4Stack1 := (block2812c2d4Stack1) do: (block2812c2d4Stack2).
            block2812c2d4PC := 58.
        ].
        block2812c2d4Step = 58 ifTrue: [
            block2812c2d4Result := block2812c2d4Stack1.
            block2812c2d4Done := true.
        ].
    ].
    block2812c2d4Result
].
            recoveredPC := 1474.
        ].
        recoveredStep = 1474 ifTrue: [
            recoveredPC := 1533.
        ].
        recoveredStep = 1533 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 1535.
        ].
        recoveredStep = 1535 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 1538.
        ].
        recoveredStep = 1538 ifTrue: [
            recoveredStack1 := [:block2812c340Arg1 | 
    | block2812c340Value0 block2812c340Value1 |
    block2812c340Value0 := block2812c340Arg1.
    block2812c340Value1 := (block2812c340Value0) isDrawingOrderPossible.
    block2812c340Value1
].
            recoveredPC := 1542.
        ].
        recoveredStep = 1542 ifTrue: [
            recoveredPC := 1552.
        ].
        recoveredStep = 1552 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 1557.
        ].
        recoveredStep = 1557 ifTrue: [
            recoveredStack1 := [:block2812c364Arg1 | 
    | block2812c364Value0 block2812c364Value1 |
    block2812c364Value0 := block2812c364Arg1.
    block2812c364Value1 := (block2812c364Value0) updateDrawingOrder.
    block2812c364Value1
].
            recoveredPC := 1560.
        ].
        recoveredStep = 1560 ifTrue: [
            recoveredPC := 1570.
        ].
        recoveredStep = 1570 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 1572.
        ].
        recoveredStep = 1572 ifTrue: [
            recoveredStack0 := 'hw'.
            recoveredPC := 1574.
        ].
        recoveredStep = 1574 ifTrue: [
            recoveredStack1 := 'call_84749'.
            recoveredPC := 1578.
        ].
        recoveredStep = 1578 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 1579.
        ].
        recoveredStep = 1579 ifTrue: [
            recoveredPC := 1580.
        ].
        recoveredStep = 1580 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 1581.
        ].
        recoveredStep = 1581 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 1584.
        ].
        recoveredStep = 1584 ifTrue: [
            recoveredStack2 := [:block2812c388Arg1 | 
    | block2812c388Value0 block2812c388Value1 block2812c388Value2 |
    block2812c388Value0 := block2812c388Arg1.
    block2812c388Value1 := (block2812c388Value0) basicGraphObject.
    block2812c388Value2 := (block2812c388Value1) isIntersectionGO.
    block2812c388Value2
].
            recoveredPC := 1588.
        ].
        recoveredStep = 1588 ifTrue: [
            recoveredPC := 1602.
        ].
        recoveredStep = 1602 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 1607.
        ].
        recoveredStep = 1607 ifTrue: [
            recoveredStack0 := (recoveredStack0) updateIntersectingBlocksForList: (recoveredStack1).
            recoveredPC := 1611.
        ].
        recoveredStep = 1611 ifTrue: [
            recoveredStack1 := [:recoveredBlock1611Arg1 | 
    | recoveredBlock1611Value0 recoveredBlock1611Value1 recoveredBlock1611Value2 recoveredBlock1611Value3 recoveredBlock1611Value4 |
    recoveredBlock1611Value0 := recoveredLocal10.
    recoveredBlock1611Value1 := recoveredBlock1611Arg1.
    recoveredBlock1611Value2 := (recoveredBlock1611Value1) frame.
    recoveredBlock1611Value3 := (recoveredBlock1611Value0) copyWith: (recoveredBlock1611Value2).
    recoveredBlock1611Value4 := recoveredBlock1611Value3.
    recoveredLocal10 := recoveredBlock1611Value4.
    recoveredBlock1611Value3
].
            recoveredPC := 1636.
        ].
        recoveredStep = 1636 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 1638.
        ].
        recoveredStep = 1638 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 1641.
        ].
        recoveredStep = 1641 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 1644] ifFalse: [recoveredPC := 1653].
        ].
        recoveredStep = 1644 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 1645.
        ].
        recoveredStep = 1645 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 1648.
        ].
        recoveredStep = 1648 ifTrue: [
            (recoveredStack0) displayRects: (recoveredStack1).
            recoveredPC := 1653.
        ].
        recoveredStep = 1653 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 1656.
        ].
        recoveredStep = 1656 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 1660] ifFalse: [recoveredPC := 1667].
        ].
        recoveredStep = 1660 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 1661.
        ].
        recoveredStep = 1661 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 1662.
        ].
        recoveredStep = 1662 ifTrue: [
            (recoveredStack0) graphicsModified: (recoveredStack1).
            recoveredPC := 1667.
        ].
        recoveredStep = 1667 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 1670.
        ].
        recoveredStep = 1670 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

