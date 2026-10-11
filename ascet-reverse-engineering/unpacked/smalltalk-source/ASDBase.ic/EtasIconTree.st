"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2005ec0c; bytecode file offset 0x95b4c0"
!EtasIconTree methodsFor: 'recovered'!
clearTypeAheadReset
    resetTypeAhead := false.
    ^self
! !

"ASDBase.ic method 0x2005fd3c; bytecode file offset 0x95c5f0"
!EtasIconTree methodsFor: 'recovered'!
resetTypeAhead
    resetTypeAhead := true.
    ^self
! !

"ASDBase.ic method 0x200b1ea8; bytecode file offset 0x9ae7f4"
!EtasIconTree methodsFor: 'recovered'!
supportsTypeAhead
    | recoveredValue0 |
    recoveredValue0 := ('Rnz') == ('TypeAhead').
    ^true
! !

"ASDBase.ic method 0x200c5d1c; bytecode file offset 0x9c25d0"
!EtasIconTree methodsFor: 'recovered'!
checkCycles: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    checkCycles := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d9220; bytecode file offset 0x9d5b4c"
!EtasIconTree methodsFor: 'recovered'!
refreshAndRedrawAt: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) refreshAt: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) drawFullItemAt: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2010b554; bytecode file offset 0xa07e18"
!EtasIconTree methodsFor: 'recovered'!
initializeResources
    | recoveredValue0 recoveredValue1 |
    super initializeResources.
    recoveredValue0 := EtasBrowseSelectionMapper.
    recoveredValue1 := (recoveredValue0) on: (self).
    inputMapper := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x2013c3b4; bytecode file offset 0xa38c68"
!EtasIconTree methodsFor: 'recovered'!
isTypeAheadReset
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := resetTypeAhead.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := resetTypeAhead.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2015e300; bytecode file offset 0xa5abb4"
!EtasIconTree methodsFor: 'recovered'!
checkCycles
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := checkCycles.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            checkCycles := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := checkCycles.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2016d024; bytecode file offset 0xa698e8"
!EtasIconTree methodsFor: 'recovered'!
getChildrenFor: recoveredArg1 position: recoveredArg2
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
            recoveredStack0 := super getChildrenFor: (recoveredStack1) position: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) isBoolean.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) etasDevHalt.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2017d578; bytecode file offset 0xa79e34"
!EtasIconTree methodsFor: 'recovered'!
newNodeAt: recoveredArg1 top: recoveredArg2
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
            recoveredStack0 := (recoveredStack0) createNodeAt: (recoveredStack1) top: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recursionFlag.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 16].
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
            (recoveredStack0) addNewNode: (recoveredStack1).
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

"ASDBase.ic method 0x201a90e0; bytecode file offset 0xaa59a0"
!EtasIconTree methodsFor: 'recovered'!
losingFocus: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDestroyed.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := super losingFocus: (recoveredStack1) clientData: (recoveredStack2) callData: (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20267408; bytecode file offset 0xb63cec"
!EtasIconTree methodsFor: 'recovered'!
allVisibleItems
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) itemCount.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) getItemAt: (recoveredStack3).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack0) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 16] ifFalse: [recoveredLocal1 := nil. recoveredPC := 36]] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203328ac; bytecode file offset 0xc2f178"
!EtasIconTree methodsFor: 'recovered'!
refreshAndRedrawWithParentsAt: recoveredArg1
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
            recoveredStack0 := (recoveredStack0) visibleItemNodeAt: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 55.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) refreshAndRedrawAt: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) parentOfItem: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 53.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) isBoolean.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredPC := 53.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexOfItem: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) visibleItemNodeAt: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20371818; bytecode file offset 0xc6e0f0"
!EtasIconTree methodsFor: 'recovered'!
gettingFocus: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_70572'.
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
            recoveredStack1 := 'hw'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 'call_96671'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDestroyed.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDestroyed.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 44].
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
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 67] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDestroyed.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 67] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := super gettingFocus: (recoveredStack1) clientData: (recoveredStack2) callData: (recoveredStack3).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2039bb30; bytecode file offset 0xc98410"
!EtasIconTree methodsFor: 'recovered'!
selectionEventOnlyOn: recoveredArg1 commit: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := (recoveredStack3) itemCount.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) between: (recoveredStack2) and: (recoveredStack3).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) unhighlightAll.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) highlightIndex: (recoveredStack1) commit: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := 'Rnz'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := 'TypeAhead'.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) resetTypeAhead.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) isItemBeingEditted: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) resetSelectedIndexes.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack1) addSelectionIndex: (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) triggerSelectionCallback.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) verifySelectionProceed.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
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
            recoveredStack1 := recoveredStack0.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack1) resetSelectedIndexes.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack1) addSelectionIndex: (recoveredStack2).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0) triggerSelectionCallback.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203ae308; bytecode file offset 0xcaabd8"
!EtasIconTree methodsFor: 'recovered'!
createVisibleItemNodes
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) purgeVisibleItemNodes.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) topItemPosition.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) itemCount.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) usableHeight.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) verticalMargin.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recursionFlag := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 59.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) newNodeAt: (recoveredStack1) top: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) height.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) height.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 59].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) <= (recoveredStack1).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recursionFlag := recoveredStack0.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203dce78; bytecode file offset 0xcd9760"
!EtasIconTree methodsFor: 'recovered'!
selectItem: recoveredArg1 equalMethod: recoveredArg2 notify: recoveredArg3 matchCase: recoveredArg4
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := recoveredArg4.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexOfItem: (recoveredStack1) equalMethod: (recoveredStack2) matchCase: (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := '#'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
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
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) usingSingleItemSelection.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 47].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) deselectAllItems.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) cursorItem: (recoveredStack1) forceFullyVisible: (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) highlightIndex: (recoveredStack1) commit: (recoveredStack2).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := 'Rnz'.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := 'TypeAhead'.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) drawTextEmphasisForItemAt: (recoveredStack1) withEmphasisString: (recoveredStack2).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) inputMapper.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack0) anchor: (recoveredStack1).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 83].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0) triggerSelectionCallback.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204e181c; bytecode file offset 0xdde124"
!EtasIconTree methodsFor: 'recovered'!
expandAll
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkCycles.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            super expandAll.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) parentIsScrolledWindow.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock32Value0 recoveredBlock32Value1 recoveredBlock32Value2 |
    recoveredBlock32Value0 := recoveredLocal2.
    recoveredBlock32Value1 := [
    | recoveredBlock32Block41Local1 recoveredBlock32Block41Local2 recoveredBlock32Block41Local3 recoveredBlock32Block41Local4 recoveredBlock32Block41Local5 recoveredBlock32Block41Stack0 recoveredBlock32Block41Stack1 recoveredBlock32Block41Stack2 recoveredBlock32Block41Stack3 recoveredBlock32Block41Stack4 recoveredBlock32Block41PC recoveredBlock32Block41Step recoveredBlock32Block41Done recoveredBlock32Block41Result |
    recoveredBlock32Block41Stack0 := self.
    recoveredBlock32Block41PC := 48.
    recoveredBlock32Block41Done := false.
    [recoveredBlock32Block41Done not] whileTrue: [
        recoveredBlock32Block41Step := recoveredBlock32Block41PC.
        recoveredBlock32Block41Step = 48 ifTrue: [
            recoveredBlock32Block41Stack1 := 1.
            recoveredBlock32Block41PC := 50.
        ].
        recoveredBlock32Block41Step = 50 ifTrue: [
            recoveredBlock32Block41Local5 := recoveredBlock32Block41Stack1.
            recoveredBlock32Block41PC := 53.
        ].
        recoveredBlock32Block41Step = 53 ifTrue: [
            recoveredBlock32Block41PC := 122.
        ].
        recoveredBlock32Block41Step = 56 ifTrue: [
            recoveredBlock32Block41Stack1 := OrderedCollection.
            recoveredBlock32Block41PC := 58.
        ].
        recoveredBlock32Block41Step = 58 ifTrue: [
            recoveredBlock32Block41Stack1 := (recoveredBlock32Block41Stack1) new.
            recoveredBlock32Block41PC := 60.
        ].
        recoveredBlock32Block41Step = 60 ifTrue: [
            recoveredBlock32Block41Local1 := recoveredBlock32Block41Stack1.
            recoveredBlock32Block41PC := 63.
        ].
        recoveredBlock32Block41Step = 63 ifTrue: [
            recoveredBlock32Block41Stack1 := self.
            recoveredBlock32Block41PC := 64.
        ].
        recoveredBlock32Block41Step = 64 ifTrue: [
            recoveredBlock32Block41Stack1 := (recoveredBlock32Block41Stack1) hierarchy.
            recoveredBlock32Block41PC := 66.
        ].
        recoveredBlock32Block41Step = 66 ifTrue: [
            recoveredBlock32Block41Stack2 := recoveredBlock32Block41Local5.
            recoveredBlock32Block41PC := 69.
        ].
        recoveredBlock32Block41Step = 69 ifTrue: [
            recoveredBlock32Block41Stack3 := recoveredBlock32Block41Local1.
            recoveredBlock32Block41PC := 72.
        ].
        recoveredBlock32Block41Step = 72 ifTrue: [
            (recoveredBlock32Block41Stack1) parentsAndChildAt: (recoveredBlock32Block41Stack2) parentCollection: (recoveredBlock32Block41Stack3).
            recoveredBlock32Block41PC := 74.
        ].
        recoveredBlock32Block41Step = 74 ifTrue: [
            recoveredBlock32Block41Stack1 := recoveredBlock32Block41Local1.
            recoveredBlock32Block41PC := 77.
        ].
        recoveredBlock32Block41Step = 77 ifTrue: [
            recoveredBlock32Block41Stack1 := (recoveredBlock32Block41Stack1) removeLast.
            recoveredBlock32Block41PC := 79.
        ].
        recoveredBlock32Block41Step = 79 ifTrue: [
            recoveredBlock32Block41Local4 := recoveredBlock32Block41Stack1.
            recoveredBlock32Block41PC := 82.
        ].
        recoveredBlock32Block41Step = 82 ifTrue: [
            recoveredBlock32Block41Stack1 := recoveredBlock32Block41Local1.
            recoveredBlock32Block41PC := 85.
        ].
        recoveredBlock32Block41Step = 85 ifTrue: [
            recoveredBlock32Block41Stack2 := [:recoveredBlock32Block41Block85Arg1 | 
    | recoveredBlock32Block41Block85Value0 recoveredBlock32Block41Block85Value1 recoveredBlock32Block41Block85Value2 |
    recoveredBlock32Block41Block85Value0 := recoveredBlock32Block41Block85Arg1.
    recoveredBlock32Block41Block85Value1 := recoveredBlock32Block41Local4.
    recoveredBlock32Block41Block85Value2 := (recoveredBlock32Block41Block85Value0) isEqualToObject: (recoveredBlock32Block41Block85Value1).
    recoveredBlock32Block41Block85Value2
].
            recoveredBlock32Block41PC := 99.
        ].
        recoveredBlock32Block41Step = 99 ifTrue: [
            recoveredBlock32Block41Stack3 := [
    | recoveredBlock32Block41Block99Value0 recoveredBlock32Block41Block99Value1 |
    recoveredBlock32Block41Block99Value0 := recoveredBlock32Block41Local5.
    recoveredBlock32Block41Block99Value1 := (self) expandPos: (recoveredBlock32Block41Block99Value0) notify: (false).
    recoveredBlock32Block41Block99Value1
].
            recoveredBlock32Block41PC := 113.
        ].
        recoveredBlock32Block41Step = 113 ifTrue: [
            (recoveredBlock32Block41Stack1) detect: (recoveredBlock32Block41Stack2) ifNone: (recoveredBlock32Block41Stack3).
            recoveredBlock32Block41PC := 115.
        ].
        recoveredBlock32Block41Step = 115 ifTrue: [
            recoveredBlock32Block41Stack1 := recoveredBlock32Block41Local5.
            recoveredBlock32Block41PC := 118.
        ].
        recoveredBlock32Block41Step = 118 ifTrue: [
            recoveredBlock32Block41Stack1 := (recoveredBlock32Block41Stack1) + (1).
            recoveredBlock32Block41PC := 119.
        ].
        recoveredBlock32Block41Step = 119 ifTrue: [
            recoveredBlock32Block41Local5 := recoveredBlock32Block41Stack1.
            recoveredBlock32Block41PC := 122.
        ].
        recoveredBlock32Block41Step = 122 ifTrue: [
            recoveredBlock32Block41Stack1 := recoveredBlock32Block41Local5.
            recoveredBlock32Block41PC := 125.
        ].
        recoveredBlock32Block41Step = 125 ifTrue: [
            recoveredBlock32Block41Stack2 := self.
            recoveredBlock32Block41PC := 126.
        ].
        recoveredBlock32Block41Step = 126 ifTrue: [
            recoveredBlock32Block41Stack2 := (recoveredBlock32Block41Stack2) itemCount.
            recoveredBlock32Block41PC := 128.
        ].
        recoveredBlock32Block41Step = 128 ifTrue: [
            recoveredBlock32Block41Stack3 := ASDGeneralOptions.
            recoveredBlock32Block41PC := 130.
        ].
        recoveredBlock32Block41Step = 130 ifTrue: [
            recoveredBlock32Block41Stack3 := (recoveredBlock32Block41Stack3) instance.
            recoveredBlock32Block41PC := 132.
        ].
        recoveredBlock32Block41Step = 132 ifTrue: [
            recoveredBlock32Block41Stack3 := (recoveredBlock32Block41Stack3) optionMaxTreeExpandLevel.
            recoveredBlock32Block41PC := 134.
        ].
        recoveredBlock32Block41Step = 134 ifTrue: [
            recoveredBlock32Block41Stack2 := (recoveredBlock32Block41Stack2) min: (recoveredBlock32Block41Stack3).
            recoveredBlock32Block41PC := 136.
        ].
        recoveredBlock32Block41Step = 136 ifTrue: [
            recoveredBlock32Block41Stack1 := (recoveredBlock32Block41Stack1) <= (recoveredBlock32Block41Stack2).
            recoveredBlock32Block41PC := 137.
        ].
        recoveredBlock32Block41Step = 137 ifTrue: [
            (recoveredBlock32Block41Stack1) ifTrue: [recoveredBlock32Block41PC := 56] ifFalse: [recoveredBlock32Block41PC := 139].
        ].
        recoveredBlock32Block41Step = 139 ifTrue: [
            recoveredBlock32Block41Stack0 := (recoveredBlock32Block41Stack0) itemCount.
            recoveredBlock32Block41PC := 141.
        ].
        recoveredBlock32Block41Step = 141 ifTrue: [
            recoveredBlock32Block41Stack1 := ASDGeneralOptions.
            recoveredBlock32Block41PC := 143.
        ].
        recoveredBlock32Block41Step = 143 ifTrue: [
            recoveredBlock32Block41Stack1 := (recoveredBlock32Block41Stack1) instance.
            recoveredBlock32Block41PC := 145.
        ].
        recoveredBlock32Block41Step = 145 ifTrue: [
            recoveredBlock32Block41Stack1 := (recoveredBlock32Block41Stack1) optionMaxTreeExpandLevel.
            recoveredBlock32Block41PC := 147.
        ].
        recoveredBlock32Block41Step = 147 ifTrue: [
            recoveredBlock32Block41Stack0 := (recoveredBlock32Block41Stack0) <= (recoveredBlock32Block41Stack1).
            recoveredBlock32Block41PC := 148.
        ].
        recoveredBlock32Block41Step = 148 ifTrue: [
            recoveredBlock32Block41Stack1 := recoveredBlock32Block41Stack0.
            recoveredBlock32Block41PC := 149.
        ].
        recoveredBlock32Block41Step = 149 ifTrue: [
            recoveredLocal1 := recoveredBlock32Block41Stack1.
            recoveredBlock32Block41PC := 152.
        ].
        recoveredBlock32Block41Step = 152 ifTrue: [
            recoveredBlock32Block41Result := recoveredBlock32Block41Stack0.
            recoveredBlock32Block41Done := true.
        ].
    ].
    recoveredBlock32Block41Result
].
    recoveredBlock32Value2 := (recoveredBlock32Value0) deferRedraw: (recoveredBlock32Value1).
    recoveredBlock32Value2
].
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            (recoveredStack0) showBusyCursorWhile: (recoveredStack1).
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2050e604; bytecode file offset 0xe0af20"
!EtasIconTree methodsFor: 'recovered'!
expandAllWithProgressDialogForUserInterface: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkCycles.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            super expandAll.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) parentIsScrolledWindow.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := [:recoveredBlock33Arg1 | 
    | recoveredBlock33Value0 recoveredBlock33Value1 recoveredBlock33Value2 |
    recoveredBlock33Value0 := recoveredLocal2.
    recoveredBlock33Value1 := [
    | recoveredBlock33Block43Local1 recoveredBlock33Block43Local2 recoveredBlock33Block43Local3 recoveredBlock33Block43Local4 recoveredBlock33Block43Local5 recoveredBlock33Block43Stack0 recoveredBlock33Block43Stack1 recoveredBlock33Block43Stack2 recoveredBlock33Block43Stack3 recoveredBlock33Block43Stack4 recoveredBlock33Block43PC recoveredBlock33Block43Step recoveredBlock33Block43Done recoveredBlock33Block43Result |
    recoveredBlock33Block43Stack0 := self.
    recoveredBlock33Block43PC := 50.
    recoveredBlock33Block43Done := false.
    [recoveredBlock33Block43Done not] whileTrue: [
        recoveredBlock33Block43Step := recoveredBlock33Block43PC.
        recoveredBlock33Block43Step = 50 ifTrue: [
            recoveredBlock33Block43Stack1 := 1.
            recoveredBlock33Block43PC := 52.
        ].
        recoveredBlock33Block43Step = 52 ifTrue: [
            recoveredBlock33Block43Local5 := recoveredBlock33Block43Stack1.
            recoveredBlock33Block43PC := 55.
        ].
        recoveredBlock33Block43Step = 55 ifTrue: [
            recoveredBlock33Block43PC := 138.
        ].
        recoveredBlock33Block43Step = 58 ifTrue: [
            recoveredBlock33Block43Stack1 := recoveredBlock33Arg1.
            recoveredBlock33Block43PC := 61.
        ].
        recoveredBlock33Block43Step = 61 ifTrue: [
            recoveredBlock33Block43Stack2 := 'Expanding node '.
            recoveredBlock33Block43PC := 63.
        ].
        recoveredBlock33Block43Step = 63 ifTrue: [
            recoveredBlock33Block43Stack3 := recoveredBlock33Block43Local5.
            recoveredBlock33Block43PC := 66.
        ].
        recoveredBlock33Block43Step = 66 ifTrue: [
            recoveredBlock33Block43Stack3 := (recoveredBlock33Block43Stack3) asString.
            recoveredBlock33Block43PC := 68.
        ].
        recoveredBlock33Block43Step = 68 ifTrue: [
            recoveredBlock33Block43Stack2 := (recoveredBlock33Block43Stack2) , (recoveredBlock33Block43Stack3).
            recoveredBlock33Block43PC := 70.
        ].
        recoveredBlock33Block43Step = 70 ifTrue: [
            (recoveredBlock33Block43Stack1) messageString: (recoveredBlock33Block43Stack2).
            recoveredBlock33Block43PC := 72.
        ].
        recoveredBlock33Block43Step = 72 ifTrue: [
            recoveredBlock33Block43Stack1 := OrderedCollection.
            recoveredBlock33Block43PC := 74.
        ].
        recoveredBlock33Block43Step = 74 ifTrue: [
            recoveredBlock33Block43Stack1 := (recoveredBlock33Block43Stack1) new.
            recoveredBlock33Block43PC := 76.
        ].
        recoveredBlock33Block43Step = 76 ifTrue: [
            recoveredBlock33Block43Local1 := recoveredBlock33Block43Stack1.
            recoveredBlock33Block43PC := 79.
        ].
        recoveredBlock33Block43Step = 79 ifTrue: [
            recoveredBlock33Block43Stack1 := self.
            recoveredBlock33Block43PC := 80.
        ].
        recoveredBlock33Block43Step = 80 ifTrue: [
            recoveredBlock33Block43Stack1 := (recoveredBlock33Block43Stack1) hierarchy.
            recoveredBlock33Block43PC := 82.
        ].
        recoveredBlock33Block43Step = 82 ifTrue: [
            recoveredBlock33Block43Stack2 := recoveredBlock33Block43Local5.
            recoveredBlock33Block43PC := 85.
        ].
        recoveredBlock33Block43Step = 85 ifTrue: [
            recoveredBlock33Block43Stack3 := recoveredBlock33Block43Local1.
            recoveredBlock33Block43PC := 88.
        ].
        recoveredBlock33Block43Step = 88 ifTrue: [
            (recoveredBlock33Block43Stack1) parentsAndChildAt: (recoveredBlock33Block43Stack2) parentCollection: (recoveredBlock33Block43Stack3).
            recoveredBlock33Block43PC := 90.
        ].
        recoveredBlock33Block43Step = 90 ifTrue: [
            recoveredBlock33Block43Stack1 := recoveredBlock33Block43Local1.
            recoveredBlock33Block43PC := 93.
        ].
        recoveredBlock33Block43Step = 93 ifTrue: [
            recoveredBlock33Block43Stack1 := (recoveredBlock33Block43Stack1) removeLast.
            recoveredBlock33Block43PC := 95.
        ].
        recoveredBlock33Block43Step = 95 ifTrue: [
            recoveredBlock33Block43Local4 := recoveredBlock33Block43Stack1.
            recoveredBlock33Block43PC := 98.
        ].
        recoveredBlock33Block43Step = 98 ifTrue: [
            recoveredBlock33Block43Stack1 := recoveredBlock33Block43Local1.
            recoveredBlock33Block43PC := 101.
        ].
        recoveredBlock33Block43Step = 101 ifTrue: [
            recoveredBlock33Block43Stack2 := [:recoveredBlock33Block43Block101Arg1 | 
    | recoveredBlock33Block43Block101Value0 recoveredBlock33Block43Block101Value1 recoveredBlock33Block43Block101Value2 |
    recoveredBlock33Block43Block101Value0 := recoveredBlock33Block43Block101Arg1.
    recoveredBlock33Block43Block101Value1 := recoveredBlock33Block43Local4.
    recoveredBlock33Block43Block101Value2 := (recoveredBlock33Block43Block101Value0) isEqualToObject: (recoveredBlock33Block43Block101Value1).
    recoveredBlock33Block43Block101Value2
].
            recoveredBlock33Block43PC := 115.
        ].
        recoveredBlock33Block43Step = 115 ifTrue: [
            recoveredBlock33Block43Stack3 := [
    | recoveredBlock33Block43Block115Value0 recoveredBlock33Block43Block115Value1 |
    recoveredBlock33Block43Block115Value0 := recoveredBlock33Block43Local5.
    recoveredBlock33Block43Block115Value1 := (self) expandPos: (recoveredBlock33Block43Block115Value0) notify: (false).
    recoveredBlock33Block43Block115Value1
].
            recoveredBlock33Block43PC := 129.
        ].
        recoveredBlock33Block43Step = 129 ifTrue: [
            (recoveredBlock33Block43Stack1) detect: (recoveredBlock33Block43Stack2) ifNone: (recoveredBlock33Block43Stack3).
            recoveredBlock33Block43PC := 131.
        ].
        recoveredBlock33Block43Step = 131 ifTrue: [
            recoveredBlock33Block43Stack1 := recoveredBlock33Block43Local5.
            recoveredBlock33Block43PC := 134.
        ].
        recoveredBlock33Block43Step = 134 ifTrue: [
            recoveredBlock33Block43Stack1 := (recoveredBlock33Block43Stack1) + (1).
            recoveredBlock33Block43PC := 135.
        ].
        recoveredBlock33Block43Step = 135 ifTrue: [
            recoveredBlock33Block43Local5 := recoveredBlock33Block43Stack1.
            recoveredBlock33Block43PC := 138.
        ].
        recoveredBlock33Block43Step = 138 ifTrue: [
            recoveredBlock33Block43Stack1 := recoveredBlock33Block43Local5.
            recoveredBlock33Block43PC := 141.
        ].
        recoveredBlock33Block43Step = 141 ifTrue: [
            recoveredBlock33Block43Stack2 := self.
            recoveredBlock33Block43PC := 142.
        ].
        recoveredBlock33Block43Step = 142 ifTrue: [
            recoveredBlock33Block43Stack2 := (recoveredBlock33Block43Stack2) itemCount.
            recoveredBlock33Block43PC := 144.
        ].
        recoveredBlock33Block43Step = 144 ifTrue: [
            recoveredBlock33Block43Stack3 := ASDGeneralOptions.
            recoveredBlock33Block43PC := 146.
        ].
        recoveredBlock33Block43Step = 146 ifTrue: [
            recoveredBlock33Block43Stack3 := (recoveredBlock33Block43Stack3) instance.
            recoveredBlock33Block43PC := 148.
        ].
        recoveredBlock33Block43Step = 148 ifTrue: [
            recoveredBlock33Block43Stack3 := (recoveredBlock33Block43Stack3) optionMaxTreeExpandLevel.
            recoveredBlock33Block43PC := 150.
        ].
        recoveredBlock33Block43Step = 150 ifTrue: [
            recoveredBlock33Block43Stack2 := (recoveredBlock33Block43Stack2) min: (recoveredBlock33Block43Stack3).
            recoveredBlock33Block43PC := 152.
        ].
        recoveredBlock33Block43Step = 152 ifTrue: [
            recoveredBlock33Block43Stack1 := (recoveredBlock33Block43Stack1) <= (recoveredBlock33Block43Stack2).
            recoveredBlock33Block43PC := 153.
        ].
        recoveredBlock33Block43Step = 153 ifTrue: [
            (recoveredBlock33Block43Stack1) ifTrue: [recoveredBlock33Block43PC := 58] ifFalse: [recoveredBlock33Block43PC := 155].
        ].
        recoveredBlock33Block43Step = 155 ifTrue: [
            recoveredBlock33Block43Stack0 := (recoveredBlock33Block43Stack0) itemCount.
            recoveredBlock33Block43PC := 157.
        ].
        recoveredBlock33Block43Step = 157 ifTrue: [
            recoveredBlock33Block43Stack1 := ASDGeneralOptions.
            recoveredBlock33Block43PC := 159.
        ].
        recoveredBlock33Block43Step = 159 ifTrue: [
            recoveredBlock33Block43Stack1 := (recoveredBlock33Block43Stack1) instance.
            recoveredBlock33Block43PC := 161.
        ].
        recoveredBlock33Block43Step = 161 ifTrue: [
            recoveredBlock33Block43Stack1 := (recoveredBlock33Block43Stack1) optionMaxTreeExpandLevel.
            recoveredBlock33Block43PC := 163.
        ].
        recoveredBlock33Block43Step = 163 ifTrue: [
            recoveredBlock33Block43Stack0 := (recoveredBlock33Block43Stack0) <= (recoveredBlock33Block43Stack1).
            recoveredBlock33Block43PC := 164.
        ].
        recoveredBlock33Block43Step = 164 ifTrue: [
            recoveredBlock33Block43Stack1 := recoveredBlock33Block43Stack0.
            recoveredBlock33Block43PC := 165.
        ].
        recoveredBlock33Block43Step = 165 ifTrue: [
            recoveredLocal1 := recoveredBlock33Block43Stack1.
            recoveredBlock33Block43PC := 168.
        ].
        recoveredBlock33Block43Step = 168 ifTrue: [
            recoveredBlock33Block43Result := recoveredBlock33Block43Stack0.
            recoveredBlock33Block43Done := true.
        ].
    ].
    recoveredBlock33Block43Result
].
    recoveredBlock33Value2 := (recoveredBlock33Value0) deferRedraw: (recoveredBlock33Value1).
    recoveredBlock33Value2
].
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack2 := 'Expanding Tree ...'.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack4 := 'Expand Tree'.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            (recoveredStack0) execWithProgressDialog: (recoveredStack1) message: (recoveredStack2) showProgress: (recoveredStack3) title: (recoveredStack4).
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20510d34; bytecode file offset 0xe0d658"
!EtasIconTree methodsFor: 'recovered'!
drawTextEmphasisForItemAt: recoveredArg1 withEmphasisString: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Rnz'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'TypeAhead'.
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
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) visibleItemNodeAt: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) horizontalScrollOffset.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) negated.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal11 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) topYAt: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal10 := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) itemWidth.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal9 := recoveredStack0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) itemHeightAt: (recoveredStack1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) hierarchyPolicy.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) depth.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) widthAt: (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) rc.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) copy.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := recoveredLocal11.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack1) x: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := recoveredLocal10.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack1) y: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := recoveredLocal9.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack1) width: (recoveredStack2).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack0) height: (recoveredStack1).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := (recoveredStack0) label.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := (recoveredStack0) label.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := (recoveredStack0) >= (recoveredStack1).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 126].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := (recoveredStack0) label.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := (recoveredStack0) label.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyFrom: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := (recoveredStack0) ewWidthUsing: (recoveredStack1).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredPC := 133.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := (recoveredStack0) ewWidthUsing: (recoveredStack1).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack0 := (recoveredStack0) labelEmphasisBox.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack0 := (recoveredStack0) copy.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := 'hw'.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := 'TypeAhead'.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := (recoveredStack0) icon.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack0 := (recoveredStack0) ewWidthUsing: (recoveredStack1).
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack2 := 5.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack2 := (recoveredStack2) left.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack2 := recoveredLocal10.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack3 := (recoveredStack3) top.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack4 := (recoveredStack4) height.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            (recoveredStack0) drawInsertionEmphasisAtX: (recoveredStack1) y: (recoveredStack2) width: (recoveredStack3) height: (recoveredStack4).
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20516aec; bytecode file offset 0xe133e4"
!EtasIconTree methodsFor: 'recovered'!
recreateVisibleItemNodes
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            recoveredStack0 := (recoveredStack0) visibleItemNodes.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := [:recoveredBlock11Arg1 | 
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
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) itemIndex.
            recoveredBlock11PC := 21.
        ].
        recoveredBlock11Step = 21 ifTrue: [
            (recoveredBlock11Stack2 == nil) ifTrue: [recoveredBlock11PC := 33] ifFalse: [recoveredBlock11PC := 24].
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
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) itemIndex.
            recoveredBlock11PC := 30.
        ].
        recoveredBlock11Step = 30 ifTrue: [
            recoveredBlock11Stack3 := recoveredBlock11Arg1.
            recoveredBlock11PC := 31.
        ].
        recoveredBlock11Step = 31 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) at: (recoveredBlock11Stack2) put: (recoveredBlock11Stack3).
            recoveredBlock11PC := 33.
        ].
        recoveredBlock11Step = 33 ifTrue: [
            recoveredBlock11Result := recoveredBlock11Stack1.
            recoveredBlock11Done := true.
        ].
    ].
    recoveredBlock11Result
].
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
            (recoveredStack0) purgeVisibleItemNodes.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) topItemPosition.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) itemCount.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) usableHeight.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) verticalMargin.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recursionFlag := recoveredStack0.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredPC := 163.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 108] ifFalse: [recoveredPC := 92].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := (recoveredStack0) newNodeAt: (recoveredStack1) top: (recoveredStack2).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredPC := 122.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack0) top: (recoveredStack1).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack0) addNewNode: (recoveredStack1).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := (recoveredStack1) height.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := (recoveredStack1) height.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 156] ifFalse: [recoveredPC := 163].
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack0 := (recoveredStack0) <= (recoveredStack1).
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 174] ifFalse: [recoveredPC := 182].
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 182].
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recursionFlag := recoveredStack0.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205df078; bytecode file offset 0xedb97c"
!EtasIconTree methodsFor: 'recovered'!
expandRecursive: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredValue0 recoveredValue1 |
    recoveredValue0 := System.
    recoveredValue1 := [
    | recoveredBlock6Local1 recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6Stack3 recoveredBlock6Stack4 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            recoveredBlock6Stack1 := recoveredArg1.
            recoveredBlock6PC := 15.
        ].
        recoveredBlock6Step = 15 ifTrue: [
            recoveredLocal7 := recoveredBlock6Stack1.
            recoveredBlock6PC := 18.
        ].
        recoveredBlock6Step = 18 ifTrue: [
            recoveredBlock6Stack1 := recoveredArg1.
            recoveredBlock6PC := 21.
        ].
        recoveredBlock6Step = 21 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) getItemPos: (recoveredBlock6Stack1).
            recoveredBlock6PC := 22.
        ].
        recoveredBlock6Step = 22 ifTrue: [
            recoveredLocal8 := recoveredBlock6Stack0.
            recoveredBlock6PC := 25.
        ].
        recoveredBlock6Step = 25 ifTrue: [
            recoveredBlock6Stack0 := nil.
            recoveredBlock6PC := 26.
        ].
        recoveredBlock6Step = 26 ifTrue: [
            recoveredBlock6Stack1 := recoveredLocal8.
            recoveredBlock6PC := 29.
        ].
        recoveredBlock6Step = 29 ifTrue: [
            (recoveredBlock6Stack1 == nil) ifTrue: [recoveredBlock6PC := 367] ifFalse: [recoveredBlock6PC := 32].
        ].
        recoveredBlock6Step = 32 ifTrue: [
            recoveredBlock6Stack1 := self.
            recoveredBlock6PC := 33.
        ].
        recoveredBlock6Step = 33 ifTrue: [
            recoveredBlock6Stack2 := recoveredLocal8.
            recoveredBlock6PC := 36.
        ].
        recoveredBlock6Step = 36 ifTrue: [
            recoveredBlock6Stack3 := recoveredArg1.
            recoveredBlock6PC := 39.
        ].
        recoveredBlock6Step = 39 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) getChildrenFor: (recoveredBlock6Stack2) position: (recoveredBlock6Stack3).
            recoveredBlock6PC := 41.
        ].
        recoveredBlock6Step = 41 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) notEmpty.
            recoveredBlock6PC := 42.
        ].
        recoveredBlock6Step = 42 ifTrue: [
            (recoveredBlock6Stack1) ifTrue: [recoveredBlock6PC := 46] ifFalse: [recoveredBlock6PC := 367].
        ].
        recoveredBlock6Step = 46 ifTrue: [
            recoveredBlock6PC := 47.
        ].
        recoveredBlock6Step = 47 ifTrue: [
            recoveredBlock6Stack0 := self.
            recoveredBlock6PC := 48.
        ].
        recoveredBlock6Step = 48 ifTrue: [
            recoveredBlock6Stack1 := recoveredLocal8.
            recoveredBlock6PC := 51.
        ].
        recoveredBlock6Step = 51 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) parentOfItem: (recoveredBlock6Stack1).
            recoveredBlock6PC := 53.
        ].
        recoveredBlock6Step = 53 ifTrue: [
            recoveredLocal6 := recoveredBlock6Stack0.
            recoveredBlock6PC := 56.
        ].
        recoveredBlock6Step = 56 ifTrue: [
            recoveredBlock6PC := 239.
        ].
        recoveredBlock6Step = 60 ifTrue: [
            recoveredBlock6Stack0 := recoveredLocal6.
            recoveredBlock6PC := 63.
        ].
        recoveredBlock6Step = 63 ifTrue: [
            (recoveredBlock6Stack0 ~~ nil) ifTrue: [recoveredBlock6PC := 76] ifFalse: [recoveredBlock6PC := 66].
        ].
        recoveredBlock6Step = 66 ifTrue: [
            recoveredBlock6Stack0 := self.
            recoveredBlock6PC := 67.
        ].
        recoveredBlock6Step = 67 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) items.
            recoveredBlock6PC := 69.
        ].
        recoveredBlock6Step = 69 ifTrue: [
            recoveredLocal5 := recoveredBlock6Stack0.
            recoveredBlock6PC := 72.
        ].
        recoveredBlock6Step = 72 ifTrue: [
            recoveredBlock6PC := 91.
        ].
        recoveredBlock6Step = 76 ifTrue: [
            recoveredBlock6Stack0 := self.
            recoveredBlock6PC := 77.
        ].
        recoveredBlock6Step = 77 ifTrue: [
            recoveredBlock6Stack1 := recoveredLocal6.
            recoveredBlock6PC := 80.
        ].
        recoveredBlock6Step = 80 ifTrue: [
            recoveredBlock6Stack2 := self.
            recoveredBlock6PC := 81.
        ].
        recoveredBlock6Step = 81 ifTrue: [
            recoveredBlock6Stack3 := recoveredLocal6.
            recoveredBlock6PC := 84.
        ].
        recoveredBlock6Step = 84 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) indexOf: (recoveredBlock6Stack3).
            recoveredBlock6PC := 86.
        ].
        recoveredBlock6Step = 86 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) getChildrenFor: (recoveredBlock6Stack1) position: (recoveredBlock6Stack2).
            recoveredBlock6PC := 88.
        ].
        recoveredBlock6Step = 88 ifTrue: [
            recoveredLocal5 := recoveredBlock6Stack0.
            recoveredBlock6PC := 91.
        ].
        recoveredBlock6Step = 91 ifTrue: [
            recoveredBlock6Stack0 := recoveredLocal5.
            recoveredBlock6PC := 94.
        ].
        recoveredBlock6Step = 94 ifTrue: [
            recoveredBlock6Stack1 := [:recoveredBlock6Block94Arg1 :recoveredBlock6Block94Arg2 | 
    | recoveredBlock6Block94Stack0 recoveredBlock6Block94Stack1 recoveredBlock6Block94Stack2 recoveredBlock6Block94Stack3 recoveredBlock6Block94Stack4 recoveredBlock6Block94PC recoveredBlock6Block94Step recoveredBlock6Block94Done recoveredBlock6Block94Result |
    recoveredBlock6Block94Stack0 := nil.
    recoveredBlock6Block94PC := 100.
    recoveredBlock6Block94Done := false.
    [recoveredBlock6Block94Done not] whileTrue: [
        recoveredBlock6Block94Step := recoveredBlock6Block94PC.
        recoveredBlock6Block94Step = 100 ifTrue: [
            recoveredBlock6Block94Stack1 := nil.
            recoveredBlock6Block94PC := 101.
        ].
        recoveredBlock6Block94Step = 101 ifTrue: [
            recoveredBlock6Block94Stack2 := recoveredBlock6Block94Arg1.
            recoveredBlock6Block94PC := 102.
        ].
        recoveredBlock6Block94Step = 102 ifTrue: [
            recoveredBlock6Block94Stack3 := recoveredLocal8.
            recoveredBlock6Block94PC := 105.
        ].
        recoveredBlock6Block94Step = 105 ifTrue: [
            recoveredBlock6Block94Stack2 := (recoveredBlock6Block94Stack2) = (recoveredBlock6Block94Stack3).
            recoveredBlock6Block94PC := 106.
        ].
        recoveredBlock6Block94Step = 106 ifTrue: [
            (recoveredBlock6Block94Stack2) ifTrue: [recoveredBlock6Block94PC := 110] ifFalse: [recoveredBlock6Block94PC := 116].
        ].
        recoveredBlock6Block94Step = 110 ifTrue: [
            recoveredBlock6Block94PC := 111.
        ].
        recoveredBlock6Block94Step = 111 ifTrue: [
            recoveredBlock6Block94Stack1 := recoveredBlock6Block94Arg2.
            recoveredBlock6Block94PC := 112.
        ].
        recoveredBlock6Block94Step = 112 ifTrue: [
            recoveredBlock6Block94Stack2 := recoveredBlock6Block94Stack1.
            recoveredBlock6Block94PC := 113.
        ].
        recoveredBlock6Block94Step = 113 ifTrue: [
            recoveredLocal3 := recoveredBlock6Block94Stack2.
            recoveredBlock6Block94PC := 116.
        ].
        recoveredBlock6Block94Step = 116 ifTrue: [
            recoveredBlock6Block94Result := recoveredBlock6Block94Stack1.
            recoveredBlock6Block94Done := true.
        ].
    ].
    recoveredBlock6Block94Result
].
            recoveredBlock6PC := 117.
        ].
        recoveredBlock6Step = 117 ifTrue: [
            (recoveredBlock6Stack0) doWithIndex: (recoveredBlock6Stack1).
            recoveredBlock6PC := 119.
        ].
        recoveredBlock6Step = 119 ifTrue: [
            recoveredBlock6Stack0 := recoveredLocal3.
            recoveredBlock6PC := 122.
        ].
        recoveredBlock6Step = 122 ifTrue: [
            (recoveredBlock6Stack0 == nil) ifTrue: [recoveredBlock6PC := 162] ifFalse: [recoveredBlock6PC := 126].
        ].
        recoveredBlock6Step = 126 ifTrue: [
            recoveredBlock6Stack0 := recoveredLocal3.
            recoveredBlock6PC := 129.
        ].
        recoveredBlock6Step = 129 ifTrue: [
            recoveredBlock6Stack1 := recoveredLocal5.
            recoveredBlock6PC := 132.
        ].
        recoveredBlock6Step = 132 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) size.
            recoveredBlock6PC := 134.
        ].
        recoveredBlock6Step = 134 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) < (recoveredBlock6Stack1).
            recoveredBlock6PC := 135.
        ].
        recoveredBlock6Step = 135 ifTrue: [
            (recoveredBlock6Stack0) ifTrue: [recoveredBlock6PC := 138] ifFalse: [recoveredBlock6PC := 162].
        ].
        recoveredBlock6Step = 138 ifTrue: [
            recoveredBlock6Stack0 := recoveredLocal5.
            recoveredBlock6PC := 141.
        ].
        recoveredBlock6Step = 141 ifTrue: [
            recoveredBlock6Stack1 := recoveredLocal3.
            recoveredBlock6PC := 144.
        ].
        recoveredBlock6Step = 144 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) + (1).
            recoveredBlock6PC := 145.
        ].
        recoveredBlock6Step = 145 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) at: (recoveredBlock6Stack1).
            recoveredBlock6PC := 147.
        ].
        recoveredBlock6Step = 147 ifTrue: [
            recoveredLocal4 := recoveredBlock6Stack0.
            recoveredBlock6PC := 150.
        ].
        recoveredBlock6Step = 150 ifTrue: [
            recoveredBlock6Stack0 := self.
            recoveredBlock6PC := 151.
        ].
        recoveredBlock6Step = 151 ifTrue: [
            recoveredBlock6Stack1 := recoveredLocal4.
            recoveredBlock6PC := 154.
        ].
        recoveredBlock6Step = 154 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) indexOf: (recoveredBlock6Stack1).
            recoveredBlock6PC := 156.
        ].
        recoveredBlock6Step = 156 ifTrue: [
            recoveredLocal2 := recoveredBlock6Stack0.
            recoveredBlock6PC := 159.
        ].
        recoveredBlock6Step = 159 ifTrue: [
            recoveredBlock6PC := 239.
        ].
        recoveredBlock6Step = 162 ifTrue: [
            recoveredBlock6Stack0 := recoveredLocal6.
            recoveredBlock6PC := 165.
        ].
        recoveredBlock6Step = 165 ifTrue: [
            (recoveredBlock6Stack0 == nil) ifTrue: [recoveredBlock6PC := 183] ifFalse: [recoveredBlock6PC := 168].
        ].
        recoveredBlock6Step = 168 ifTrue: [
            recoveredBlock6Stack0 := recoveredLocal6.
            recoveredBlock6PC := 171.
        ].
        recoveredBlock6Step = 171 ifTrue: [
            recoveredLocal8 := recoveredBlock6Stack0.
            recoveredBlock6PC := 174.
        ].
        recoveredBlock6Step = 174 ifTrue: [
            recoveredBlock6Stack0 := self.
            recoveredBlock6PC := 175.
        ].
        recoveredBlock6Step = 175 ifTrue: [
            recoveredBlock6Stack1 := recoveredLocal8.
            recoveredBlock6PC := 178.
        ].
        recoveredBlock6Step = 178 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) parentOfItem: (recoveredBlock6Stack1).
            recoveredBlock6PC := 180.
        ].
        recoveredBlock6Step = 180 ifTrue: [
            recoveredLocal6 := recoveredBlock6Stack0.
            recoveredBlock6PC := 183.
        ].
        recoveredBlock6Step = 183 ifTrue: [
            recoveredBlock6Stack0 := recoveredLocal6.
            recoveredBlock6PC := 186.
        ].
        recoveredBlock6Step = 186 ifTrue: [
            (recoveredBlock6Stack0 ~~ nil) ifTrue: [recoveredBlock6PC := 239] ifFalse: [recoveredBlock6PC := 190].
        ].
        recoveredBlock6Step = 190 ifTrue: [
            recoveredBlock6Stack0 := self.
            recoveredBlock6PC := 191.
        ].
        recoveredBlock6Step = 191 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) items.
            recoveredBlock6PC := 193.
        ].
        recoveredBlock6Step = 193 ifTrue: [
            recoveredBlock6Stack1 := recoveredLocal8.
            recoveredBlock6PC := 196.
        ].
        recoveredBlock6Step = 196 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) indexOf: (recoveredBlock6Stack1).
            recoveredBlock6PC := 198.
        ].
        recoveredBlock6Step = 198 ifTrue: [
            recoveredBlock6Local1 := recoveredBlock6Stack0.
            recoveredBlock6PC := 199.
        ].
        recoveredBlock6Step = 199 ifTrue: [
            recoveredBlock6Stack0 := recoveredBlock6Local1.
            recoveredBlock6PC := 200.
        ].
        recoveredBlock6Step = 200 ifTrue: [
            recoveredBlock6Stack1 := self.
            recoveredBlock6PC := 201.
        ].
        recoveredBlock6Step = 201 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) items.
            recoveredBlock6PC := 203.
        ].
        recoveredBlock6Step = 203 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) size.
            recoveredBlock6PC := 205.
        ].
        recoveredBlock6Step = 205 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) < (recoveredBlock6Stack1).
            recoveredBlock6PC := 206.
        ].
        recoveredBlock6Step = 206 ifTrue: [
            (recoveredBlock6Stack0) ifTrue: [recoveredBlock6PC := 210] ifFalse: [recoveredBlock6PC := 232].
        ].
        recoveredBlock6Step = 210 ifTrue: [
            recoveredBlock6Stack0 := self.
            recoveredBlock6PC := 211.
        ].
        recoveredBlock6Step = 211 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) items.
            recoveredBlock6PC := 213.
        ].
        recoveredBlock6Step = 213 ifTrue: [
            recoveredBlock6Stack1 := recoveredBlock6Local1.
            recoveredBlock6PC := 214.
        ].
        recoveredBlock6Step = 214 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) + (1).
            recoveredBlock6PC := 215.
        ].
        recoveredBlock6Step = 215 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) at: (recoveredBlock6Stack1).
            recoveredBlock6PC := 217.
        ].
        recoveredBlock6Step = 217 ifTrue: [
            recoveredLocal4 := recoveredBlock6Stack0.
            recoveredBlock6PC := 220.
        ].
        recoveredBlock6Step = 220 ifTrue: [
            recoveredBlock6Stack0 := self.
            recoveredBlock6PC := 221.
        ].
        recoveredBlock6Step = 221 ifTrue: [
            recoveredBlock6Stack1 := recoveredLocal4.
            recoveredBlock6PC := 224.
        ].
        recoveredBlock6Step = 224 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) indexOf: (recoveredBlock6Stack1).
            recoveredBlock6PC := 226.
        ].
        recoveredBlock6Step = 226 ifTrue: [
            recoveredLocal2 := recoveredBlock6Stack0.
            recoveredBlock6PC := 229.
        ].
        recoveredBlock6Step = 229 ifTrue: [
            recoveredBlock6PC := 237.
        ].
        recoveredBlock6Step = 232 ifTrue: [
            recoveredBlock6Stack0 := -1.
            recoveredBlock6PC := 234.
        ].
        recoveredBlock6Step = 234 ifTrue: [
            recoveredLocal2 := recoveredBlock6Stack0.
            recoveredBlock6PC := 237.
        ].
        recoveredBlock6Step = 237 ifTrue: [
            recoveredBlock6Stack0 := nil.
            recoveredBlock6PC := 238.
        ].
        recoveredBlock6Step = 238 ifTrue: [
            recoveredBlock6Local1 := recoveredBlock6Stack0.
            recoveredBlock6PC := 239.
        ].
        recoveredBlock6Step = 239 ifTrue: [
            recoveredBlock6Stack0 := recoveredLocal2.
            recoveredBlock6PC := 242.
        ].
        recoveredBlock6Step = 242 ifTrue: [
            (recoveredBlock6Stack0 == nil) ifTrue: [recoveredBlock6PC := 60] ifFalse: [recoveredBlock6PC := 246].
        ].
        recoveredBlock6Step = 246 ifTrue: [
            recoveredBlock6Stack0 := self.
            recoveredBlock6PC := 247.
        ].
        recoveredBlock6Step = 247 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) parentIsScrolledWindow.
            recoveredBlock6PC := 249.
        ].
        recoveredBlock6Step = 249 ifTrue: [
            (recoveredBlock6Stack0) ifTrue: [recoveredBlock6PC := 252] ifFalse: [recoveredBlock6PC := 258].
        ].
        recoveredBlock6Step = 252 ifTrue: [
            recoveredBlock6Stack0 := self.
            recoveredBlock6PC := 253.
        ].
        recoveredBlock6Step = 253 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) parent.
            recoveredBlock6PC := 255.
        ].
        recoveredBlock6Step = 255 ifTrue: [
            recoveredBlock6PC := 259.
        ].
        recoveredBlock6Step = 258 ifTrue: [
            recoveredBlock6Stack0 := self.
            recoveredBlock6PC := 259.
        ].
        recoveredBlock6Step = 259 ifTrue: [
            recoveredLocal1 := recoveredBlock6Stack0.
            recoveredBlock6PC := 262.
        ].
        recoveredBlock6Step = 262 ifTrue: [
            recoveredBlock6Stack0 := recoveredLocal1.
            recoveredBlock6PC := 265.
        ].
        recoveredBlock6Step = 265 ifTrue: [
            recoveredBlock6Stack1 := [
    | recoveredBlock6Block265Local1 recoveredBlock6Block265Stack0 recoveredBlock6Block265Stack1 recoveredBlock6Block265Stack2 recoveredBlock6Block265Stack3 recoveredBlock6Block265Stack4 recoveredBlock6Block265PC recoveredBlock6Block265Step recoveredBlock6Block265Done recoveredBlock6Block265Result |
    recoveredBlock6Block265Stack0 := self.
    recoveredBlock6Block265PC := 272.
    recoveredBlock6Block265Done := false.
    [recoveredBlock6Block265Done not] whileTrue: [
        recoveredBlock6Block265Step := recoveredBlock6Block265PC.
        recoveredBlock6Block265Step = 272 ifTrue: [
            recoveredBlock6Block265Stack1 := recoveredLocal7.
            recoveredBlock6Block265PC := 275.
        ].
        recoveredBlock6Block265Step = 275 ifTrue: [
            recoveredBlock6Block265Local1 := recoveredBlock6Block265Stack1.
            recoveredBlock6Block265PC := 276.
        ].
        recoveredBlock6Block265Step = 276 ifTrue: [
            recoveredBlock6Block265PC := 349.
        ].
        recoveredBlock6Block265Step = 280 ifTrue: [
            recoveredBlock6Block265Stack1 := 'Kli'.
            recoveredBlock6Block265PC := 282.
        ].
        recoveredBlock6Block265Step = 282 ifTrue: [
            recoveredBlock6Block265Stack2 := 'Call_72839'.
            recoveredBlock6Block265PC := 284.
        ].
        recoveredBlock6Block265Step = 284 ifTrue: [
            recoveredBlock6Block265Stack1 := (recoveredBlock6Block265Stack1) == (recoveredBlock6Block265Stack2).
            recoveredBlock6Block265PC := 285.
        ].
        recoveredBlock6Block265Step = 285 ifTrue: [
            recoveredBlock6Block265PC := 286.
        ].
        recoveredBlock6Block265Step = 286 ifTrue: [
            recoveredBlock6Block265Stack1 := self.
            recoveredBlock6Block265PC := 287.
        ].
        recoveredBlock6Block265Step = 287 ifTrue: [
            recoveredBlock6Block265Stack1 := (recoveredBlock6Block265Stack1) hierarchy.
            recoveredBlock6Block265PC := 289.
        ].
        recoveredBlock6Block265Step = 289 ifTrue: [
            recoveredBlock6Block265Stack2 := self.
            recoveredBlock6Block265PC := 290.
        ].
        recoveredBlock6Block265Step = 290 ifTrue: [
            recoveredBlock6Block265Stack2 := (recoveredBlock6Block265Stack2) hierarchy.
            recoveredBlock6Block265PC := 292.
        ].
        recoveredBlock6Block265Step = 292 ifTrue: [
            recoveredBlock6Block265Stack3 := recoveredBlock6Block265Local1.
            recoveredBlock6Block265PC := 293.
        ].
        recoveredBlock6Block265Step = 293 ifTrue: [
            recoveredBlock6Block265Stack2 := (recoveredBlock6Block265Stack2) at: (recoveredBlock6Block265Stack3).
            recoveredBlock6Block265PC := 295.
        ].
        recoveredBlock6Block265Step = 295 ifTrue: [
            recoveredBlock6Block265Stack1 := (recoveredBlock6Block265Stack1) indexOfEqualItem: (recoveredBlock6Block265Stack2).
            recoveredBlock6Block265PC := 297.
        ].
        recoveredBlock6Block265Step = 297 ifTrue: [
            recoveredBlock6Block265Stack2 := recoveredBlock6Block265Local1.
            recoveredBlock6Block265PC := 298.
        ].
        recoveredBlock6Block265Step = 298 ifTrue: [
            recoveredBlock6Block265Stack1 := (recoveredBlock6Block265Stack1) < (recoveredBlock6Block265Stack2).
            recoveredBlock6Block265PC := 299.
        ].
        recoveredBlock6Block265Step = 299 ifTrue: [
            (recoveredBlock6Block265Stack1) ifTrue: [recoveredBlock6Block265PC := 302] ifFalse: [recoveredBlock6Block265PC := 308].
        ].
        recoveredBlock6Block265Step = 302 ifTrue: [
            recoveredBlock6Block265Stack1 := recoveredBlock6Block265Local1.
            recoveredBlock6Block265PC := 303.
        ].
        recoveredBlock6Block265Step = 303 ifTrue: [
            recoveredBlock6Block265Stack1 := (recoveredBlock6Block265Stack1) + (1).
            recoveredBlock6Block265PC := 304.
        ].
        recoveredBlock6Block265Step = 304 ifTrue: [
            recoveredBlock6Block265Local1 := recoveredBlock6Block265Stack1.
            recoveredBlock6Block265PC := 305.
        ].
        recoveredBlock6Block265Step = 305 ifTrue: [
            recoveredBlock6Block265PC := 349.
        ].
        recoveredBlock6Block265Step = 308 ifTrue: [
            recoveredBlock6Block265Stack1 := self.
            recoveredBlock6Block265PC := 309.
        ].
        recoveredBlock6Block265Step = 309 ifTrue: [
            recoveredBlock6Block265Stack2 := recoveredBlock6Block265Local1.
            recoveredBlock6Block265PC := 310.
        ].
        recoveredBlock6Block265Step = 310 ifTrue: [
            recoveredBlock6Block265Stack3 := false.
            recoveredBlock6Block265PC := 311.
        ].
        recoveredBlock6Block265Step = 311 ifTrue: [
            (recoveredBlock6Block265Stack1) expandPos: (recoveredBlock6Block265Stack2) notify: (recoveredBlock6Block265Stack3).
            recoveredBlock6Block265PC := 313.
        ].
        recoveredBlock6Block265Step = 313 ifTrue: [
            recoveredBlock6Block265Stack1 := recoveredBlock6Block265Local1.
            recoveredBlock6Block265PC := 314.
        ].
        recoveredBlock6Block265Step = 314 ifTrue: [
            recoveredBlock6Block265Stack1 := (recoveredBlock6Block265Stack1) + (1).
            recoveredBlock6Block265PC := 315.
        ].
        recoveredBlock6Block265Step = 315 ifTrue: [
            recoveredBlock6Block265Stack2 := recoveredBlock6Block265Stack1.
            recoveredBlock6Block265PC := 316.
        ].
        recoveredBlock6Block265Step = 316 ifTrue: [
            recoveredBlock6Block265Local1 := recoveredBlock6Block265Stack2.
            recoveredBlock6Block265PC := 317.
        ].
        recoveredBlock6Block265Step = 317 ifTrue: [
            recoveredBlock6Block265Stack2 := recoveredLocal2.
            recoveredBlock6Block265PC := 320.
        ].
        recoveredBlock6Block265Step = 320 ifTrue: [
            recoveredBlock6Block265Stack1 := (recoveredBlock6Block265Stack1) >= (recoveredBlock6Block265Stack2).
            recoveredBlock6Block265PC := 321.
        ].
        recoveredBlock6Block265Step = 321 ifTrue: [
            (recoveredBlock6Block265Stack1) ifTrue: [recoveredBlock6Block265PC := 324] ifFalse: [recoveredBlock6Block265PC := 349].
        ].
        recoveredBlock6Block265Step = 324 ifTrue: [
            recoveredBlock6Block265Stack1 := recoveredLocal4.
            recoveredBlock6Block265PC := 327.
        ].
        recoveredBlock6Block265Step = 327 ifTrue: [
            (recoveredBlock6Block265Stack1 == nil) ifTrue: [recoveredBlock6Block265PC := 342] ifFalse: [recoveredBlock6Block265PC := 330].
        ].
        recoveredBlock6Block265Step = 330 ifTrue: [
            recoveredBlock6Block265Stack1 := self.
            recoveredBlock6Block265PC := 331.
        ].
        recoveredBlock6Block265Step = 331 ifTrue: [
            recoveredBlock6Block265Stack2 := recoveredLocal4.
            recoveredBlock6Block265PC := 334.
        ].
        recoveredBlock6Block265Step = 334 ifTrue: [
            recoveredBlock6Block265Stack1 := (recoveredBlock6Block265Stack1) indexOf: (recoveredBlock6Block265Stack2).
            recoveredBlock6Block265PC := 336.
        ].
        recoveredBlock6Block265Step = 336 ifTrue: [
            recoveredLocal2 := recoveredBlock6Block265Stack1.
            recoveredBlock6Block265PC := 339.
        ].
        recoveredBlock6Block265Step = 339 ifTrue: [
            recoveredBlock6Block265PC := 349.
        ].
        recoveredBlock6Block265Step = 342 ifTrue: [
            recoveredBlock6Block265Stack1 := self.
            recoveredBlock6Block265PC := 343.
        ].
        recoveredBlock6Block265Step = 343 ifTrue: [
            recoveredBlock6Block265Stack1 := (recoveredBlock6Block265Stack1) itemCount.
            recoveredBlock6Block265PC := 345.
        ].
        recoveredBlock6Block265Step = 345 ifTrue: [
            recoveredBlock6Block265Stack1 := (recoveredBlock6Block265Stack1) + (1).
            recoveredBlock6Block265PC := 346.
        ].
        recoveredBlock6Block265Step = 346 ifTrue: [
            recoveredLocal2 := recoveredBlock6Block265Stack1.
            recoveredBlock6Block265PC := 349.
        ].
        recoveredBlock6Block265Step = 349 ifTrue: [
            recoveredBlock6Block265Stack1 := recoveredBlock6Block265Local1.
            recoveredBlock6Block265PC := 350.
        ].
        recoveredBlock6Block265Step = 350 ifTrue: [
            recoveredBlock6Block265Stack2 := recoveredLocal2.
            recoveredBlock6Block265PC := 353.
        ].
        recoveredBlock6Block265Step = 353 ifTrue: [
            recoveredBlock6Block265Stack1 := (recoveredBlock6Block265Stack1) < (recoveredBlock6Block265Stack2).
            recoveredBlock6Block265PC := 354.
        ].
        recoveredBlock6Block265Step = 354 ifTrue: [
            (recoveredBlock6Block265Stack1) ifTrue: [recoveredBlock6Block265PC := 280] ifFalse: [recoveredBlock6Block265PC := 356].
        ].
        recoveredBlock6Block265Step = 356 ifTrue: [
            recoveredBlock6Block265Stack1 := recoveredLocal2.
            recoveredBlock6Block265PC := 359.
        ].
        recoveredBlock6Block265Step = 359 ifTrue: [
            recoveredBlock6Block265Stack2 := -1.
            recoveredBlock6Block265PC := 361.
        ].
        recoveredBlock6Block265Step = 361 ifTrue: [
            (recoveredBlock6Block265Stack1 == recoveredBlock6Block265Stack2) ifTrue: [recoveredBlock6Block265PC := 280] ifFalse: [recoveredBlock6Block265PC := 363].
        ].
        recoveredBlock6Block265Step = 363 ifTrue: [
            recoveredBlock6Block265Stack1 := nil.
            recoveredBlock6Block265PC := 364.
        ].
        recoveredBlock6Block265Step = 364 ifTrue: [
            recoveredBlock6Block265Result := recoveredBlock6Block265Stack1.
            recoveredBlock6Block265Done := true.
        ].
    ].
    recoveredBlock6Block265Result
].
            recoveredBlock6PC := 365.
        ].
        recoveredBlock6Step = 365 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) deferRedraw: (recoveredBlock6Stack1).
            recoveredBlock6PC := 367.
        ].
        recoveredBlock6Step = 367 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack0.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
    (recoveredValue0) showBusyCursorWhile: (recoveredValue1).
    ^self
! !

