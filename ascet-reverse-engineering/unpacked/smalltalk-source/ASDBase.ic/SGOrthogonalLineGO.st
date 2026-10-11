"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200147cc; bytecode file offset 0x912098"
!SGOrthogonalLineGO methodsFor: 'recovered'!
apiClass
    | recoveredValue0 |
    recoveredValue0 := EtasAPIBlockDiagramConnection.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20017c54; bytecode file offset 0x92209c"
!SGOrthogonalLineGO methodsFor: 'recovered'!
visualCallBackImage
    ^'GraphicsConnection'
! !

"ASDBase.ic method 0x200475ac; bytecode file offset 0x9451f8"
!SGOrthogonalLineGO methodsFor: 'recovered'!
getFreePositionForImplCast
    | recoveredValue0 |
    recoveredValue0 := (self) getFreePositionForBlock: ('the implementation cast').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2005bb4c; bytecode file offset 0x958548"
!SGOrthogonalLineGO methodsFor: 'recovered'!
isImplCastAllowed
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGImplementationCastGO.
    recoveredValue1 := (recoveredValue0) allowedToAddOnConnection: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200e61e8; bytecode file offset 0x9e2abc"
!SGOrthogonalLineGO methodsFor: 'recovered'!
initialize
    super initialize.
    (self) commentLine: (false).
    ^self
! !

"ASDBase.ic method 0x200f2e7c; bytecode file offset 0x9ef738"
!SGOrthogonalLineGO methodsFor: 'recovered'!
isVisible
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) viewVanish.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) viewVisibility.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isNil.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202493dc; bytecode file offset 0xb45cc8"
!SGOrthogonalLineGO methodsFor: 'recovered'!
pointA
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) cornerPoints.
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
            recoveredStack0 := (recoveredStack0) getPosition.
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
            recoveredStack0 := (recoveredStack0) cornerPoints.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) cornerPoints.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) // (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) max: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock25Value0 |
    recoveredBlock25Value0 := (self) getPosition.
    recoveredBlock25Value0
].
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2025754c; bytecode file offset 0xb53e0c"
!SGOrthogonalLineGO methodsFor: 'recovered'!
lineStyle: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            super lineStyle: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := lineColl.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := lineColl.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := [:recoveredBlock22Arg1 | 
    | recoveredBlock22Value0 recoveredBlock22Value1 recoveredBlock22Value2 |
    recoveredBlock22Value0 := recoveredBlock22Arg1.
    recoveredBlock22Value1 := recoveredArg1.
    recoveredBlock22Value2 := (recoveredBlock22Value0) lineStyle: (recoveredBlock22Value1).
    recoveredBlock22Value2
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
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2028db40; bytecode file offset 0xb8a414"
!SGOrthogonalLineGO methodsFor: 'recovered'!
unHighlightGODisplay: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'call_323376'.
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
            recoveredStack1 := lineStyleNoHighlight.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 |
    recoveredBlock12Value0 := recoveredBlock12Arg1.
    (self) lineStyle: (recoveredBlock12Value0).
    lineStyleNoHighlight := nil.
    nil
].
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) manager.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) controller.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := (recoveredStack2) giveRedisplayRects.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) displayRects: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202ad20c; bytecode file offset 0xba9ae4"
!SGOrthogonalLineGO methodsFor: 'recovered'!
menuImplementationCastAdd
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ('Kk') = ('Call_54100').
    recoveredValue1 := (self) getBDEController.
    recoveredValue2 := (recoveredValue1) datamodelManager.
    recoveredValue3 := (recoveredValue2) sgClass.
    recoveredValue4 := [
    | recoveredBlock14Stack0 recoveredBlock14Stack1 recoveredBlock14Stack2 recoveredBlock14Stack3 recoveredBlock14PC recoveredBlock14Step recoveredBlock14Done recoveredBlock14Result |
    recoveredBlock14Stack0 := self.
    recoveredBlock14PC := 20.
    recoveredBlock14Done := false.
    [recoveredBlock14Done not] whileTrue: [
        recoveredBlock14Step := recoveredBlock14PC.
        recoveredBlock14Step = 20 ifTrue: [
            recoveredBlock14Stack0 := (recoveredBlock14Stack0) getFreePositionForImplCast.
            recoveredBlock14PC := 22.
        ].
        recoveredBlock14Step = 22 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Stack0.
            recoveredBlock14PC := 23.
        ].
        recoveredBlock14Step = 23 ifTrue: [
            recoveredLocal1 := recoveredBlock14Stack1.
            recoveredBlock14PC := 26.
        ].
        recoveredBlock14Step = 26 ifTrue: [
            (recoveredBlock14Stack0 ~~ nil) ifTrue: [recoveredBlock14PC := 32] ifFalse: [recoveredBlock14PC := 30].
        ].
        recoveredBlock14Step = 30 ifTrue: [
            recoveredBlock14Stack0 := nil.
            recoveredBlock14PC := 31.
        ].
        recoveredBlock14Step = 31 ifTrue: [
            ^recoveredBlock14Stack0
        ].
        recoveredBlock14Step = 32 ifTrue: [
            recoveredBlock14Stack0 := self.
            recoveredBlock14PC := 33.
        ].
        recoveredBlock14Step = 33 ifTrue: [
            recoveredBlock14Stack1 := recoveredLocal1.
            recoveredBlock14PC := 36.
        ].
        recoveredBlock14Step = 36 ifTrue: [
            recoveredBlock14Stack2 := 'impl_cast'.
            recoveredBlock14PC := 38.
        ].
        recoveredBlock14Step = 38 ifTrue: [
            recoveredBlock14Stack0 := (recoveredBlock14Stack0) insertImplCastAt: (recoveredBlock14Stack1) defaultName: (recoveredBlock14Stack2).
            recoveredBlock14PC := 40.
        ].
        recoveredBlock14Step = 40 ifTrue: [
            recoveredBlock14Result := recoveredBlock14Stack0.
            recoveredBlock14Done := true.
        ].
    ].
    recoveredBlock14Result
].
    (recoveredValue3) suspendObserving: (recoveredValue4) notify: (true).
    ^self
! !

"ASDBase.ic method 0x202c6ab4; bytecode file offset 0xbc3384"
!SGOrthogonalLineGO methodsFor: 'recovered'!
insertImplCastAt: recoveredArg1 defaultName: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Muzaffar'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_65573'.
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
            recoveredStack1 := connectionWrapper.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) startGO.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := connectionWrapper.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) endGO.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) isImplCastAllowed.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := super createImplementationCastElement: (recoveredStack1) aT: (recoveredStack2) defaultName: (recoveredStack3).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202dd760; bytecode file offset 0xbda030"
!SGOrthogonalLineGO methodsFor: 'recovered'!
insertImplCast: recoveredArg1 aT: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Muzaffar'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_65573'.
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
            recoveredStack1 := connectionWrapper.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) startGO.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := connectionWrapper.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) endGO.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) isImplCastAllowed.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := super createImplementationCastElement: (recoveredStack1) aT: (recoveredStack2) defaultName: (recoveredStack3).
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
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203112a0; bytecode file offset 0xc0db8c"
!SGOrthogonalLineGO methodsFor: 'recovered'!
promptListItems: recoveredArg1 selectedItem: recoveredArg2 title: recoveredArg3 messageString: recoveredArg4 printBlock: recoveredArg5 withParent: recoveredArg6
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 |
    recoveredValue0 := ('Muzaffar') == ('Call_65573').
    recoveredValue1 := OrderedCollection.
    recoveredValue2 := (recoveredValue1) new.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredArg2.
    (recoveredValue3) add: (recoveredValue4).
    recoveredValue5 := CwListPrompter.
    recoveredValue6 := (recoveredValue5) new.
    recoveredValue7 := recoveredValue6.
    recoveredValue8 := recoveredArg5.
    (recoveredValue7) printBlock: (recoveredValue8).
    recoveredValue9 := recoveredValue6.
    recoveredValue10 := recoveredArg1.
    (recoveredValue9) items: (recoveredValue10).
    recoveredValue11 := recoveredValue6.
    (recoveredValue11) selectionPolicy: (0).
    recoveredValue12 := recoveredValue6.
    recoveredValue13 := recoveredLocal1.
    (recoveredValue12) selectedItems: (recoveredValue13).
    recoveredValue14 := recoveredValue6.
    recoveredValue15 := recoveredArg3.
    (recoveredValue14) title: (recoveredValue15).
    recoveredValue16 := recoveredValue6.
    recoveredValue17 := recoveredArg4.
    (recoveredValue16) messageString: (recoveredValue17).
    recoveredValue18 := recoveredValue6.
    recoveredValue19 := recoveredArg6.
    (recoveredValue18) parent: (recoveredValue19).
    recoveredValue20 := (recoveredValue6) promptWithEtasFonts.
    ^recoveredValue20
! !

"ASDBase.ic method 0x20321334; bytecode file offset 0xc1dbfc"
!SGOrthogonalLineGO methodsFor: 'recovered'!
hasUnusedSeqCallVisitedConns: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
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
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := connectionWrapper.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := connectionWrapper.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) resultGO.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := connectionWrapper.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) argumentGO.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := (recoveredStack2) hasUnusedSeqCallVisitedConns: (recoveredStack3).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 57] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasUnusedSeqCallVisitedConns: (recoveredStack2).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20336554; bytecode file offset 0xc32e40"
!SGOrthogonalLineGO methodsFor: 'recovered'!
highlightGODisplay: recoveredArg1
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
            recoveredStack2 := 'call_323376'.
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
            recoveredStack1 := lineStyleNoHighlight.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 45] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) lineStyle.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            lineStyleNoHighlight := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) lineStyle.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) copy.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := ClrSelect.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) color: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := ConnectionLineStyle.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := (recoveredStack2) width.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) width: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) lineStyle: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) manager.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) controller.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := (recoveredStack2) giveRedisplayRects.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) displayRects: (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20360b04; bytecode file offset 0xc5d3d0"
!SGOrthogonalLineGO methodsFor: 'recovered'!
connectionPointFor: recoveredArg1 with: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) graphObject.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) getPointedGOFor: (recoveredStack1).
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
            recoveredStack0 := connectionWrapper.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) startGO.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) getPosition.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) connectionPointFor: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := connectionWrapper.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) endGO.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) getPosition.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) connectionPointFor: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20396638; bytecode file offset 0xc92f28"
!SGOrthogonalLineGO methodsFor: 'recovered'!
getMenu
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Muzaffar'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_65573'.
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
            recoveredStack0 := (recoveredStack0) getViewsMenu.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
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
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) addSingleLine.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := 'displayBringToFront'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := 'Bring To Front'.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack4 := (recoveredStack4) isDrawingOrderPossible.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) add: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := 'displaySendToBack'.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := 'Send To Back'.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack4 := (recoveredStack4) isDrawingOrderPossible.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) add: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) addSingleLine.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := 'menuExistingImplementationcastAdd'.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack3 := '~Add Implementation Cast'.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack4 := [
    | recoveredBlock53Value0 |
    recoveredBlock53Value0 := (self) isImplCastAllowed.
    recoveredBlock53Value0
].
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack1) add: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack1) addLine.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack0) appendConnectedElementsMenu: (recoveredStack1).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203b7e38; bytecode file offset 0xcb4710"
!SGOrthogonalLineGO methodsFor: 'recovered'!
menuBrowseGetConnectedElements
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := (self) connectedBlocks.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Stack0 recoveredBlock11Stack1 recoveredBlock11Stack2 recoveredBlock11Stack3 recoveredBlock11PC recoveredBlock11Step recoveredBlock11Done recoveredBlock11Result |
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
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) basicGraphObject.
            recoveredBlock11PC := 21.
        ].
        recoveredBlock11Step = 21 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) isMemoryBlock.
            recoveredBlock11PC := 23.
        ].
        recoveredBlock11Step = 23 ifTrue: [
            (recoveredBlock11Stack2) ifTrue: [recoveredBlock11PC := 26] ifFalse: [recoveredBlock11PC := 33].
        ].
        recoveredBlock11Step = 26 ifTrue: [
            recoveredBlock11PC := 27.
        ].
        recoveredBlock11Step = 27 ifTrue: [
            recoveredBlock11Stack1 := recoveredLocal2.
            recoveredBlock11PC := 30.
        ].
        recoveredBlock11Step = 30 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 31.
        ].
        recoveredBlock11Step = 31 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) add: (recoveredBlock11Stack2).
            recoveredBlock11PC := 33.
        ].
        recoveredBlock11Step = 33 ifTrue: [
            recoveredBlock11Result := recoveredBlock11Stack1.
            recoveredBlock11Done := true.
        ].
    ].
    recoveredBlock11Result
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := OrderedCollection.
    recoveredValue5 := (recoveredValue4) new.
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredLocal2.
    recoveredValue7 := [:recoveredBlock45Arg1 | 
    | recoveredBlock45Local1 recoveredBlock45Stack0 recoveredBlock45Stack1 recoveredBlock45Stack2 recoveredBlock45Stack3 recoveredBlock45Stack4 recoveredBlock45PC recoveredBlock45Step recoveredBlock45Done recoveredBlock45Result |
    recoveredBlock45Stack0 := self.
    recoveredBlock45PC := 52.
    recoveredBlock45Done := false.
    [recoveredBlock45Done not] whileTrue: [
        recoveredBlock45Step := recoveredBlock45PC.
        recoveredBlock45Step = 52 ifTrue: [
            recoveredBlock45Stack1 := recoveredBlock45Arg1.
            recoveredBlock45PC := 53.
        ].
        recoveredBlock45Step = 53 ifTrue: [
            recoveredBlock45Stack1 := (recoveredBlock45Stack1) element.
            recoveredBlock45PC := 55.
        ].
        recoveredBlock45Step = 55 ifTrue: [
            recoveredBlock45Local1 := recoveredBlock45Stack1.
            recoveredBlock45PC := 56.
        ].
        recoveredBlock45Step = 56 ifTrue: [
            recoveredBlock45Stack1 := nil.
            recoveredBlock45PC := 57.
        ].
        recoveredBlock45Step = 57 ifTrue: [
            recoveredBlock45Stack2 := recoveredLocal1.
            recoveredBlock45PC := 60.
        ].
        recoveredBlock45Step = 60 ifTrue: [
            recoveredBlock45Stack3 := recoveredBlock45Local1.
            recoveredBlock45PC := 61.
        ].
        recoveredBlock45Step = 61 ifTrue: [
            recoveredBlock45Stack2 := (recoveredBlock45Stack2) includes: (recoveredBlock45Stack3).
            recoveredBlock45PC := 63.
        ].
        recoveredBlock45Step = 63 ifTrue: [
            (recoveredBlock45Stack2) ifTrue: [recoveredBlock45PC := 73] ifFalse: [recoveredBlock45PC := 66].
        ].
        recoveredBlock45Step = 66 ifTrue: [
            recoveredBlock45PC := 67.
        ].
        recoveredBlock45Step = 67 ifTrue: [
            recoveredBlock45Stack1 := recoveredLocal1.
            recoveredBlock45PC := 70.
        ].
        recoveredBlock45Step = 70 ifTrue: [
            recoveredBlock45Stack2 := recoveredBlock45Local1.
            recoveredBlock45PC := 71.
        ].
        recoveredBlock45Step = 71 ifTrue: [
            recoveredBlock45Stack1 := (recoveredBlock45Stack1) add: (recoveredBlock45Stack2).
            recoveredBlock45PC := 73.
        ].
        recoveredBlock45Step = 73 ifTrue: [
            recoveredBlock45Result := recoveredBlock45Stack1.
            recoveredBlock45Done := true.
        ].
    ].
    recoveredBlock45Result
].
    (recoveredValue6) do: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    ^recoveredValue8
! !

"ASDBase.ic method 0x20413fe0; bytecode file offset 0xd108cc"
!SGOrthogonalLineGO methodsFor: 'recovered'!
getFreePositionForBlock: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) lineColl.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280fb628Arg1 | 
    | block280fb628Value0 block280fb628Value1 block280fb628Value2 |
    block280fb628Value0 := block280fb628Arg1.
    block280fb628Value1 := (block280fb628Value0) isVertikal.
    block280fb628Value2 := (block280fb628Value1) not.
    block280fb628Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) getPosition.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 59.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := [:block280fb64cArg1 :block280fb64cArg2 | 
    | block280fb64cValue0 block280fb64cValue1 block280fb64cValue2 block280fb64cValue3 block280fb64cValue4 |
    block280fb64cValue0 := block280fb64cArg1.
    block280fb64cValue1 := (block280fb64cValue0) length.
    block280fb64cValue2 := block280fb64cArg2.
    block280fb64cValue3 := (block280fb64cValue2) length.
    block280fb64cValue4 := (block280fb64cValue1) > (block280fb64cValue3).
    block280fb64cValue4
].
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) getPosition.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := connectionWrapper.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) startGO.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredLocal4 := recoveredStack1.
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
            recoveredStack0 := connectionWrapper.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := (recoveredStack0) endGO.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := 'hw'.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := 'new_gui_features'.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204f37b8; bytecode file offset 0xdf00d8"
!SGOrthogonalLineGO methodsFor: 'recovered'!
menuExistingImplementationcastAdd
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ('Muzaffar') == ('Call_65573').
    recoveredValue1 := (self) getBDEController.
    recoveredValue2 := (recoveredValue1) datamodelManager.
    recoveredValue3 := (recoveredValue2) sgClass.
    recoveredValue4 := [
    | recoveredBlock14Stack0 recoveredBlock14Stack1 recoveredBlock14Stack2 recoveredBlock14Stack3 recoveredBlock14Stack4 recoveredBlock14Stack5 recoveredBlock14Stack6 recoveredBlock14Stack7 recoveredBlock14PC recoveredBlock14Step recoveredBlock14Done recoveredBlock14Result |
    recoveredBlock14Stack0 := self.
    recoveredBlock14PC := 20.
    recoveredBlock14Done := false.
    [recoveredBlock14Done not] whileTrue: [
        recoveredBlock14Step := recoveredBlock14PC.
        recoveredBlock14Step = 20 ifTrue: [
            recoveredBlock14Stack0 := (recoveredBlock14Stack0) getFreePositionForImplCast.
            recoveredBlock14PC := 22.
        ].
        recoveredBlock14Step = 22 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Stack0.
            recoveredBlock14PC := 23.
        ].
        recoveredBlock14Step = 23 ifTrue: [
            recoveredLocal3 := recoveredBlock14Stack1.
            recoveredBlock14PC := 26.
        ].
        recoveredBlock14Step = 26 ifTrue: [
            (recoveredBlock14Stack0 ~~ nil) ifTrue: [recoveredBlock14PC := 32] ifFalse: [recoveredBlock14PC := 30].
        ].
        recoveredBlock14Step = 30 ifTrue: [
            recoveredBlock14Stack0 := nil.
            recoveredBlock14PC := 31.
        ].
        recoveredBlock14Step = 31 ifTrue: [
            ^recoveredBlock14Stack0
        ].
        recoveredBlock14Step = 32 ifTrue: [
            recoveredBlock14Stack0 := self.
            recoveredBlock14PC := 33.
        ].
        recoveredBlock14Step = 33 ifTrue: [
            recoveredBlock14Stack0 := (recoveredBlock14Stack0) getBDEController.
            recoveredBlock14PC := 34.
        ].
        recoveredBlock14Step = 34 ifTrue: [
            recoveredBlock14Stack0 := (recoveredBlock14Stack0) item.
            recoveredBlock14PC := 36.
        ].
        recoveredBlock14Step = 36 ifTrue: [
            recoveredBlock14Stack0 := (recoveredBlock14Stack0) implementationCasts.
            recoveredBlock14PC := 38.
        ].
        recoveredBlock14Step = 38 ifTrue: [
            recoveredBlock14Stack1 := [:block28109a08Arg1 :block28109a08Arg2 | 
    | block28109a08Value0 block28109a08Value1 block28109a08Value2 block28109a08Value3 block28109a08Value4 |
    block28109a08Value0 := block28109a08Arg1.
    block28109a08Value1 := (block28109a08Value0) elementName.
    block28109a08Value2 := block28109a08Arg2.
    block28109a08Value3 := (block28109a08Value2) elementName.
    block28109a08Value4 := (block28109a08Value1) < (block28109a08Value3).
    block28109a08Value4
].
            recoveredBlock14PC := 40.
        ].
        recoveredBlock14Step = 40 ifTrue: [
            recoveredBlock14PC := 52.
        ].
        recoveredBlock14Step = 52 ifTrue: [
            recoveredBlock14Stack0 := (recoveredBlock14Stack0) asSortedCollection: (recoveredBlock14Stack1).
            recoveredBlock14PC := 54.
        ].
        recoveredBlock14Step = 54 ifTrue: [
            recoveredBlock14Stack0 := (recoveredBlock14Stack0) asOrderedCollection.
            recoveredBlock14PC := 56.
        ].
        recoveredBlock14Step = 56 ifTrue: [
            recoveredLocal1 := recoveredBlock14Stack0.
            recoveredBlock14PC := 59.
        ].
        recoveredBlock14Step = 59 ifTrue: [
            recoveredBlock14Stack0 := recoveredLocal1.
            recoveredBlock14PC := 62.
        ].
        recoveredBlock14Step = 62 ifTrue: [
            (recoveredBlock14Stack0 ~~ nil) ifTrue: [recoveredBlock14PC := 78] ifFalse: [recoveredBlock14PC := 66].
        ].
        recoveredBlock14Step = 66 ifTrue: [
            recoveredBlock14Stack0 := OrderedCollection.
            recoveredBlock14PC := 68.
        ].
        recoveredBlock14Step = 68 ifTrue: [
            recoveredBlock14Stack1 := '< new implementation cast >'.
            recoveredBlock14PC := 70.
        ].
        recoveredBlock14Step = 70 ifTrue: [
            recoveredBlock14Stack0 := (recoveredBlock14Stack0) with: (recoveredBlock14Stack1).
            recoveredBlock14PC := 72.
        ].
        recoveredBlock14Step = 72 ifTrue: [
            recoveredLocal1 := recoveredBlock14Stack0.
            recoveredBlock14PC := 75.
        ].
        recoveredBlock14Step = 75 ifTrue: [
            recoveredBlock14PC := 85.
        ].
        recoveredBlock14Step = 78 ifTrue: [
            recoveredBlock14Stack0 := recoveredLocal1.
            recoveredBlock14PC := 81.
        ].
        recoveredBlock14Step = 81 ifTrue: [
            recoveredBlock14Stack1 := '< new implementation cast >'.
            recoveredBlock14PC := 83.
        ].
        recoveredBlock14Step = 83 ifTrue: [
            (recoveredBlock14Stack0) addFirst: (recoveredBlock14Stack1).
            recoveredBlock14PC := 85.
        ].
        recoveredBlock14Step = 85 ifTrue: [
            recoveredBlock14Stack0 := self.
            recoveredBlock14PC := 86.
        ].
        recoveredBlock14Step = 86 ifTrue: [
            recoveredBlock14Stack1 := recoveredLocal1.
            recoveredBlock14PC := 89.
        ].
        recoveredBlock14Step = 89 ifTrue: [
            recoveredBlock14Stack2 := recoveredLocal1.
            recoveredBlock14PC := 92.
        ].
        recoveredBlock14Step = 92 ifTrue: [
            recoveredBlock14Stack3 := 1.
            recoveredBlock14PC := 94.
        ].
        recoveredBlock14Step = 94 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) at: (recoveredBlock14Stack3).
            recoveredBlock14PC := 96.
        ].
        recoveredBlock14Step = 96 ifTrue: [
            recoveredBlock14Stack3 := 'Adding an implementation Cast'.
            recoveredBlock14PC := 98.
        ].
        recoveredBlock14Step = 98 ifTrue: [
            recoveredBlock14Stack4 := 'Specify implementation cast'.
            recoveredBlock14PC := 100.
        ].
        recoveredBlock14Step = 100 ifTrue: [
            recoveredBlock14Stack5 := [:block28109a2cArg1 | 
    | block28109a2cStack0 block28109a2cStack1 block28109a2cStack2 block28109a2cPC block28109a2cStep block28109a2cDone block28109a2cResult |
    block28109a2cStack0 := self.
    block28109a2cPC := 4.
    block28109a2cDone := false.
    [block28109a2cDone not] whileTrue: [
        block28109a2cStep := block28109a2cPC.
        block28109a2cStep = 4 ifTrue: [
            block28109a2cStack1 := block28109a2cArg1.
            block28109a2cPC := 5.
        ].
        block28109a2cStep = 5 ifTrue: [
            block28109a2cStack1 := (block28109a2cStack1) isString.
            block28109a2cPC := 7.
        ].
        block28109a2cStep = 7 ifTrue: [
            (block28109a2cStack1) ifTrue: [block28109a2cPC := 10] ifFalse: [block28109a2cPC := 14].
        ].
        block28109a2cStep = 10 ifTrue: [
            block28109a2cStack1 := block28109a2cArg1.
            block28109a2cPC := 11.
        ].
        block28109a2cStep = 11 ifTrue: [
            block28109a2cPC := 17.
        ].
        block28109a2cStep = 14 ifTrue: [
            block28109a2cStack1 := block28109a2cArg1.
            block28109a2cPC := 15.
        ].
        block28109a2cStep = 15 ifTrue: [
            block28109a2cStack1 := (block28109a2cStack1) elementName.
            block28109a2cPC := 17.
        ].
        block28109a2cStep = 17 ifTrue: [
            block28109a2cResult := block28109a2cStack1.
            block28109a2cDone := true.
        ].
    ].
    block28109a2cResult
].
            recoveredBlock14PC := 102.
        ].
        recoveredBlock14Step = 102 ifTrue: [
            recoveredBlock14PC := 120.
        ].
        recoveredBlock14Step = 120 ifTrue: [
            recoveredBlock14Stack6 := self.
            recoveredBlock14PC := 121.
        ].
        recoveredBlock14Step = 121 ifTrue: [
            recoveredBlock14Stack6 := (recoveredBlock14Stack6) getBDEController.
            recoveredBlock14PC := 122.
        ].
        recoveredBlock14Step = 122 ifTrue: [
            recoveredBlock14Stack6 := (recoveredBlock14Stack6) userInterface.
            recoveredBlock14PC := 124.
        ].
        recoveredBlock14Step = 124 ifTrue: [
            recoveredBlock14Stack6 := (recoveredBlock14Stack6) shell.
            recoveredBlock14PC := 126.
        ].
        recoveredBlock14Step = 126 ifTrue: [
            recoveredBlock14Stack0 := (recoveredBlock14Stack0) promptListItems: (recoveredBlock14Stack1) selectedItem: (recoveredBlock14Stack2) title: (recoveredBlock14Stack3) messageString: (recoveredBlock14Stack4) printBlock: (recoveredBlock14Stack5) withParent: (recoveredBlock14Stack6).
            recoveredBlock14PC := 129.
        ].
        recoveredBlock14Step = 129 ifTrue: [
            recoveredLocal2 := recoveredBlock14Stack0.
            recoveredBlock14PC := 132.
        ].
        recoveredBlock14Step = 132 ifTrue: [
            recoveredBlock14Stack0 := recoveredLocal2.
            recoveredBlock14PC := 135.
        ].
        recoveredBlock14Step = 135 ifTrue: [
            (recoveredBlock14Stack0 ~~ nil) ifTrue: [recoveredBlock14PC := 140] ifFalse: [recoveredBlock14PC := 138].
        ].
        recoveredBlock14Step = 138 ifTrue: [
            recoveredBlock14Stack0 := nil.
            recoveredBlock14PC := 139.
        ].
        recoveredBlock14Step = 139 ifTrue: [
            ^recoveredBlock14Stack0
        ].
        recoveredBlock14Step = 140 ifTrue: [
            recoveredBlock14Stack0 := recoveredLocal2.
            recoveredBlock14PC := 143.
        ].
        recoveredBlock14Step = 143 ifTrue: [
            recoveredBlock14Stack1 := '< new implementation cast >'.
            recoveredBlock14PC := 145.
        ].
        recoveredBlock14Step = 145 ifTrue: [
            recoveredBlock14Stack0 := (recoveredBlock14Stack0) = (recoveredBlock14Stack1).
            recoveredBlock14PC := 146.
        ].
        recoveredBlock14Step = 146 ifTrue: [
            (recoveredBlock14Stack0) ifTrue: [recoveredBlock14PC := 150] ifFalse: [recoveredBlock14PC := 155].
        ].
        recoveredBlock14Step = 150 ifTrue: [
            recoveredBlock14Stack0 := self.
            recoveredBlock14PC := 151.
        ].
        recoveredBlock14Step = 151 ifTrue: [
            (recoveredBlock14Stack0) menuImplementationCastAdd.
            recoveredBlock14PC := 153.
        ].
        recoveredBlock14Step = 153 ifTrue: [
            recoveredBlock14Stack0 := nil.
            recoveredBlock14PC := 154.
        ].
        recoveredBlock14Step = 154 ifTrue: [
            ^recoveredBlock14Stack0
        ].
        recoveredBlock14Step = 155 ifTrue: [
            recoveredBlock14Stack0 := self.
            recoveredBlock14PC := 156.
        ].
        recoveredBlock14Step = 156 ifTrue: [
            recoveredBlock14Stack1 := recoveredLocal2.
            recoveredBlock14PC := 159.
        ].
        recoveredBlock14Step = 159 ifTrue: [
            recoveredBlock14Stack2 := recoveredLocal3.
            recoveredBlock14PC := 162.
        ].
        recoveredBlock14Step = 162 ifTrue: [
            recoveredBlock14Stack0 := (recoveredBlock14Stack0) insertImplCast: (recoveredBlock14Stack1) aT: (recoveredBlock14Stack2).
            recoveredBlock14PC := 164.
        ].
        recoveredBlock14Step = 164 ifTrue: [
            recoveredBlock14Result := recoveredBlock14Stack0.
            recoveredBlock14Done := true.
        ].
    ].
    recoveredBlock14Result
].
    (recoveredValue3) suspendObserving: (recoveredValue4) notify: (true).
    ^self
! !

"ASDBase.ic method 0x20534f40; bytecode file offset 0xe31814"
!SGOrthogonalLineGO methodsFor: 'recovered'!
displayArcPoint1: recoveredArg1 point2: recoveredArg2 on: recoveredArg3 vertical: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
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
            recoveredStack1 := 0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) @ (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) @ (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := 5760.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := (recoveredStack2) x.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) abs.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := (recoveredStack2) y.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := (recoveredStack3) y.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := (recoveredStack2) abs.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) @ (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := (recoveredStack2) x.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 126].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := (recoveredStack2) y.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredPC := 95.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := 11520.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredPC := 123.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := (recoveredStack2) y.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := (recoveredStack1) @ (recoveredStack2).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 112] ifFalse: [recoveredPC := 118].
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := 17280.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredPC := 123.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := 5760.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredPC := 183.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack2 := (recoveredStack2) y.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 136] ifFalse: [recoveredPC := 164].
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack2 := (recoveredStack2) y.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := (recoveredStack1) @ (recoveredStack2).
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 150] ifFalse: [recoveredPC := 158].
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := 5760.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredPC := 161.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := 17280.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredPC := 183.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 172] ifFalse: [recoveredPC := 180].
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack1 := 11520.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredPC := 183.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack1 := (recoveredStack1) window.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack2 := (recoveredStack2) gc.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack3 := (recoveredStack3) x.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack4 := (recoveredStack4) y.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack5 := recoveredLocal4.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack5 := (recoveredStack5) x.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack6 := recoveredLocal4.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack6 := (recoveredStack6) y.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack7 := recoveredLocal2.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack8 := recoveredLocal1.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            (recoveredStack1) drawArc: (recoveredStack2) x: (recoveredStack3) y: (recoveredStack4) width: (recoveredStack5) height: (recoveredStack6) angle1: (recoveredStack7) angle2: (recoveredStack8).
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2059b6a4; bytecode file offset 0xe97f80"
!SGOrthogonalLineGO methodsFor: 'recovered'!
buildLogic: recoveredArg1 for: recoveredArg2 startConnectionPoint: recoveredArg3 endConnectionPoint: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCommentLine.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
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
            recoveredStack0 := false.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) owner.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) owner.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) isArgumentPin.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) isResultPin.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMissingPin.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := 'Connection not possible'.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) error: (recoveredStack1).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) isArgumentPin.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) isResultPin.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMissingPin.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := 'Connection not possible'.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) error: (recoveredStack1).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := (recoveredStack0) isResultPin.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 92] ifFalse: [recoveredPC := 118].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMissingPin.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 118] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) isArgumentPin.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 118] ifFalse: [recoveredPC := 106].
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMissingPin.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 118] ifFalse: [recoveredPC := 112].
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := 'Connection not possible'.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := (recoveredStack0) error: (recoveredStack1).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := (recoveredStack0) isResultPin.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 124] ifFalse: [recoveredPC := 156].
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMissingPin.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 156] ifFalse: [recoveredPC := 130].
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := (recoveredStack0) isArgumentPin.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 144] ifFalse: [recoveredPC := 136].
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMissingPin.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 144] ifFalse: [recoveredPC := 150].
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredPC := 156.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := 'Connection not possible'.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack0 := (recoveredStack0) error: (recoveredStack1).
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack0 := (recoveredStack0) isArgumentPin.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 162] ifFalse: [recoveredPC := 188].
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMissingPin.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 188] ifFalse: [recoveredPC := 168].
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := (recoveredStack0) isResultPin.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 188] ifFalse: [recoveredPC := 174].
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMissingPin.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 188] ifFalse: [recoveredPC := 182].
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack1 := 'Connection not possible'.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack0 := (recoveredStack0) error: (recoveredStack1).
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack0 := (recoveredStack0) isArgumentPin.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 194] ifFalse: [recoveredPC := 226].
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMissingPin.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 226] ifFalse: [recoveredPC := 202].
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack0 := (recoveredStack0) isResultPin.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 214] ifFalse: [recoveredPC := 208].
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMissingPin.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 214] ifFalse: [recoveredPC := 220].
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredPC := 226.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack1 := 'Connection not possible'.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack0 := (recoveredStack0) error: (recoveredStack1).
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 230] ifFalse: [recoveredPC := 242].
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack0 := (recoveredStack0) identifier.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack0 := (recoveredStack0) identifier.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredPC := 251.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack0 := (recoveredStack0) identifier.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack0 := (recoveredStack0) identifier.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMissingPin.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 264] ifFalse: [recoveredPC := 258].
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMissingPin.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 264] ifFalse: [recoveredPC := 276].
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            (recoveredStack0) reportMissingPin: (recoveredStack1) with: (recoveredStack2) hierarchy: (recoveredStack3).
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredPC := 285.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            (recoveredStack0) connect: (recoveredStack1) with: (recoveredStack2) hierarchy: (recoveredStack3).
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205adc38; bytecode file offset 0xeaa57c"
!SGOrthogonalLineGO methodsFor: 'recovered'!
displayOn: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ConnectionRadius.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) isVisible.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) gc.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) lineStyle.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 45] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := RBLineStyle.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDefault.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) lineStyle: (recoveredStack1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) setGC: (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := Set.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) connectionWrapper.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) startGO.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) connectionPoints.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) addAll: (recoveredStack1).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) connectionWrapper.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := (recoveredStack1) endGO.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) connectionPoints.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0) addAll: (recoveredStack1).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) lineColl.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := (recoveredStack0) copy.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := [:recoveredBlock93Arg1 :recoveredBlock93Arg2 | 
    | recoveredBlock93Local1 recoveredBlock93Local2 recoveredBlock93Local3 recoveredBlock93Stack0 recoveredBlock93Stack1 recoveredBlock93Stack2 recoveredBlock93Stack3 recoveredBlock93Stack4 recoveredBlock93Stack5 recoveredBlock93Stack6 recoveredBlock93Stack7 recoveredBlock93Stack8 recoveredBlock93PC recoveredBlock93Step recoveredBlock93Done recoveredBlock93Result |
    recoveredBlock93Stack0 := self.
    recoveredBlock93PC := 100.
    recoveredBlock93Done := false.
    [recoveredBlock93Done not] whileTrue: [
        recoveredBlock93Step := recoveredBlock93PC.
        recoveredBlock93Step = 100 ifTrue: [
            recoveredBlock93Stack1 := recoveredLocal8.
            recoveredBlock93PC := 103.
        ].
        recoveredBlock93Step = 103 ifTrue: [
            recoveredBlock93Stack2 := recoveredBlock93Arg2.
            recoveredBlock93PC := 104.
        ].
        recoveredBlock93Step = 104 ifTrue: [
            recoveredBlock93Stack2 := (recoveredBlock93Stack2) + (-1).
            recoveredBlock93PC := 105.
        ].
        recoveredBlock93Step = 105 ifTrue: [
            recoveredBlock93Stack3 := [].
            recoveredBlock93PC := 107.
        ].
        recoveredBlock93Step = 107 ifTrue: [
            recoveredBlock93Stack1 := (recoveredBlock93Stack1) at: (recoveredBlock93Stack2) ifAbsent: (recoveredBlock93Stack3).
            recoveredBlock93PC := 109.
        ].
        recoveredBlock93Step = 109 ifTrue: [
            recoveredBlock93Local3 := recoveredBlock93Stack1.
            recoveredBlock93PC := 110.
        ].
        recoveredBlock93Step = 110 ifTrue: [
            recoveredBlock93Stack1 := recoveredBlock93Arg1.
            recoveredBlock93PC := 112.
        ].
        recoveredBlock93Step = 112 ifTrue: [
            recoveredBlock93Stack2 := recoveredBlock93Local3.
            recoveredBlock93PC := 113.
        ].
        recoveredBlock93Step = 113 ifTrue: [
            recoveredBlock93Stack3 := recoveredLocal8.
            recoveredBlock93PC := 116.
        ].
        recoveredBlock93Step = 116 ifTrue: [
            recoveredBlock93Stack4 := recoveredBlock93Arg2.
            recoveredBlock93PC := 117.
        ].
        recoveredBlock93Step = 117 ifTrue: [
            recoveredBlock93Stack4 := (recoveredBlock93Stack4) + (1).
            recoveredBlock93PC := 118.
        ].
        recoveredBlock93Step = 118 ifTrue: [
            recoveredBlock93Stack5 := [].
            recoveredBlock93PC := 120.
        ].
        recoveredBlock93Step = 120 ifTrue: [
            recoveredBlock93Stack3 := (recoveredBlock93Stack3) at: (recoveredBlock93Stack4) ifAbsent: (recoveredBlock93Stack5).
            recoveredBlock93PC := 122.
        ].
        recoveredBlock93Step = 122 ifTrue: [
            recoveredBlock93Stack4 := recoveredLocal1.
            recoveredBlock93PC := 125.
        ].
        recoveredBlock93Step = 125 ifTrue: [
            recoveredBlock93Stack5 := [:block28116830Arg1 | 
    | block28116830Value0 |
    block28116830Value0 := block28116830Arg1.
    block28116830Value0
].
            recoveredBlock93PC := 127.
        ].
        recoveredBlock93Step = 127 ifTrue: [
            recoveredBlock93PC := 132.
        ].
        recoveredBlock93Step = 132 ifTrue: [
            recoveredBlock93Stack6 := recoveredLocal2.
            recoveredBlock93PC := 135.
        ].
        recoveredBlock93Step = 135 ifTrue: [
            recoveredBlock93Stack1 := (recoveredBlock93Stack1) getPointsForRoundedConnectionLinePredecessor: (recoveredBlock93Stack2) successor: (recoveredBlock93Stack3) radius: (recoveredBlock93Stack4) correctByFactor: (recoveredBlock93Stack5) connectionPoints: (recoveredBlock93Stack6).
            recoveredBlock93PC := 138.
        ].
        recoveredBlock93Step = 138 ifTrue: [
            recoveredBlock93Local2 := recoveredBlock93Stack1.
            recoveredBlock93PC := 139.
        ].
        recoveredBlock93Step = 139 ifTrue: [
            recoveredBlock93Stack1 := recoveredBlock93Arg1.
            recoveredBlock93PC := 141.
        ].
        recoveredBlock93Step = 141 ifTrue: [
            recoveredBlock93Stack2 := recoveredBlock93Local3.
            recoveredBlock93PC := 142.
        ].
        recoveredBlock93Step = 142 ifTrue: [
            recoveredBlock93Stack3 := recoveredLocal8.
            recoveredBlock93PC := 145.
        ].
        recoveredBlock93Step = 145 ifTrue: [
            recoveredBlock93Stack4 := recoveredBlock93Arg2.
            recoveredBlock93PC := 146.
        ].
        recoveredBlock93Step = 146 ifTrue: [
            recoveredBlock93Stack4 := (recoveredBlock93Stack4) + (1).
            recoveredBlock93PC := 147.
        ].
        recoveredBlock93Step = 147 ifTrue: [
            recoveredBlock93Stack5 := [].
            recoveredBlock93PC := 149.
        ].
        recoveredBlock93Step = 149 ifTrue: [
            recoveredBlock93Stack3 := (recoveredBlock93Stack3) at: (recoveredBlock93Stack4) ifAbsent: (recoveredBlock93Stack5).
            recoveredBlock93PC := 151.
        ].
        recoveredBlock93Step = 151 ifTrue: [
            recoveredBlock93Stack4 := recoveredLocal1.
            recoveredBlock93PC := 154.
        ].
        recoveredBlock93Step = 154 ifTrue: [
            recoveredBlock93Stack5 := [:block28116854Arg1 | 
    | block28116854Value0 block28116854Value1 |
    block28116854Value0 := block28116854Arg1.
    block28116854Value1 := (block28116854Value0) * (2).
    block28116854Value1
].
            recoveredBlock93PC := 156.
        ].
        recoveredBlock93Step = 156 ifTrue: [
            recoveredBlock93PC := 165.
        ].
        recoveredBlock93Step = 165 ifTrue: [
            recoveredBlock93Stack6 := recoveredLocal2.
            recoveredBlock93PC := 168.
        ].
        recoveredBlock93Step = 168 ifTrue: [
            recoveredBlock93Stack1 := (recoveredBlock93Stack1) getPointsForRoundedConnectionLinePredecessor: (recoveredBlock93Stack2) successor: (recoveredBlock93Stack3) radius: (recoveredBlock93Stack4) correctByFactor: (recoveredBlock93Stack5) connectionPoints: (recoveredBlock93Stack6).
            recoveredBlock93PC := 171.
        ].
        recoveredBlock93Step = 171 ifTrue: [
            recoveredBlock93Local1 := recoveredBlock93Stack1.
            recoveredBlock93PC := 172.
        ].
        recoveredBlock93Step = 172 ifTrue: [
            recoveredBlock93Stack1 := recoveredArg1.
            recoveredBlock93PC := 175.
        ].
        recoveredBlock93Step = 175 ifTrue: [
            recoveredBlock93Stack1 := (recoveredBlock93Stack1) window.
            recoveredBlock93PC := 177.
        ].
        recoveredBlock93Step = 177 ifTrue: [
            recoveredBlock93Stack2 := recoveredLocal6.
            recoveredBlock93PC := 180.
        ].
        recoveredBlock93Step = 180 ifTrue: [
            recoveredBlock93Stack3 := recoveredBlock93Local2.
            recoveredBlock93PC := 181.
        ].
        recoveredBlock93Step = 181 ifTrue: [
            recoveredBlock93Stack4 := 1.
            recoveredBlock93PC := 183.
        ].
        recoveredBlock93Step = 183 ifTrue: [
            recoveredBlock93Stack3 := (recoveredBlock93Stack3) at: (recoveredBlock93Stack4).
            recoveredBlock93PC := 185.
        ].
        recoveredBlock93Step = 185 ifTrue: [
            recoveredBlock93Stack3 := (recoveredBlock93Stack3) x.
            recoveredBlock93PC := 187.
        ].
        recoveredBlock93Step = 187 ifTrue: [
            recoveredBlock93Stack4 := recoveredBlock93Local2.
            recoveredBlock93PC := 188.
        ].
        recoveredBlock93Step = 188 ifTrue: [
            recoveredBlock93Stack5 := 1.
            recoveredBlock93PC := 190.
        ].
        recoveredBlock93Step = 190 ifTrue: [
            recoveredBlock93Stack4 := (recoveredBlock93Stack4) at: (recoveredBlock93Stack5).
            recoveredBlock93PC := 192.
        ].
        recoveredBlock93Step = 192 ifTrue: [
            recoveredBlock93Stack4 := (recoveredBlock93Stack4) y.
            recoveredBlock93PC := 194.
        ].
        recoveredBlock93Step = 194 ifTrue: [
            recoveredBlock93Stack5 := recoveredBlock93Local2.
            recoveredBlock93PC := 195.
        ].
        recoveredBlock93Step = 195 ifTrue: [
            recoveredBlock93Stack6 := 2.
            recoveredBlock93PC := 197.
        ].
        recoveredBlock93Step = 197 ifTrue: [
            recoveredBlock93Stack5 := (recoveredBlock93Stack5) at: (recoveredBlock93Stack6).
            recoveredBlock93PC := 199.
        ].
        recoveredBlock93Step = 199 ifTrue: [
            recoveredBlock93Stack5 := (recoveredBlock93Stack5) x.
            recoveredBlock93PC := 201.
        ].
        recoveredBlock93Step = 201 ifTrue: [
            recoveredBlock93Stack6 := recoveredBlock93Local2.
            recoveredBlock93PC := 202.
        ].
        recoveredBlock93Step = 202 ifTrue: [
            recoveredBlock93Stack7 := 2.
            recoveredBlock93PC := 204.
        ].
        recoveredBlock93Step = 204 ifTrue: [
            recoveredBlock93Stack6 := (recoveredBlock93Stack6) at: (recoveredBlock93Stack7).
            recoveredBlock93PC := 206.
        ].
        recoveredBlock93Step = 206 ifTrue: [
            recoveredBlock93Stack6 := (recoveredBlock93Stack6) y.
            recoveredBlock93PC := 208.
        ].
        recoveredBlock93Step = 208 ifTrue: [
            (recoveredBlock93Stack1) drawLine: (recoveredBlock93Stack2) x1: (recoveredBlock93Stack3) y1: (recoveredBlock93Stack4) x2: (recoveredBlock93Stack5) y2: (recoveredBlock93Stack6).
            recoveredBlock93PC := 211.
        ].
        recoveredBlock93Step = 211 ifTrue: [
            recoveredBlock93Stack1 := recoveredBlock93Local3.
            recoveredBlock93PC := 212.
        ].
        recoveredBlock93Step = 212 ifTrue: [
            (recoveredBlock93Stack1 == nil) ifTrue: [recoveredBlock93PC := 241] ifFalse: [recoveredBlock93PC := 216].
        ].
        recoveredBlock93Step = 216 ifTrue: [
            recoveredBlock93Stack1 := recoveredLocal7.
            recoveredBlock93PC := 219.
        ].
        recoveredBlock93Step = 219 ifTrue: [
            (recoveredBlock93Stack1 == nil) ifTrue: [recoveredBlock93PC := 241] ifFalse: [recoveredBlock93PC := 222].
        ].
        recoveredBlock93Step = 222 ifTrue: [
            recoveredBlock93Stack1 := self.
            recoveredBlock93PC := 223.
        ].
        recoveredBlock93Step = 223 ifTrue: [
            recoveredBlock93Stack2 := recoveredLocal7.
            recoveredBlock93PC := 226.
        ].
        recoveredBlock93Step = 226 ifTrue: [
            recoveredBlock93Stack3 := recoveredBlock93Local1.
            recoveredBlock93PC := 227.
        ].
        recoveredBlock93Step = 227 ifTrue: [
            recoveredBlock93Stack4 := 1.
            recoveredBlock93PC := 229.
        ].
        recoveredBlock93Step = 229 ifTrue: [
            recoveredBlock93Stack3 := (recoveredBlock93Stack3) at: (recoveredBlock93Stack4).
            recoveredBlock93PC := 231.
        ].
        recoveredBlock93Step = 231 ifTrue: [
            recoveredBlock93Stack4 := recoveredArg1.
            recoveredBlock93PC := 234.
        ].
        recoveredBlock93Step = 234 ifTrue: [
            recoveredBlock93Stack5 := recoveredBlock93Arg1.
            recoveredBlock93PC := 236.
        ].
        recoveredBlock93Step = 236 ifTrue: [
            recoveredBlock93Stack5 := (recoveredBlock93Stack5) isVertikal.
            recoveredBlock93PC := 238.
        ].
        recoveredBlock93Step = 238 ifTrue: [
            (recoveredBlock93Stack1) displayArcPoint1: (recoveredBlock93Stack2) point2: (recoveredBlock93Stack3) on: (recoveredBlock93Stack4) vertical: (recoveredBlock93Stack5).
            recoveredBlock93PC := 241.
        ].
        recoveredBlock93Step = 241 ifTrue: [
            recoveredBlock93Stack1 := recoveredBlock93Local1.
            recoveredBlock93PC := 242.
        ].
        recoveredBlock93Step = 242 ifTrue: [
            recoveredBlock93Stack2 := 2.
            recoveredBlock93PC := 244.
        ].
        recoveredBlock93Step = 244 ifTrue: [
            recoveredBlock93Stack1 := (recoveredBlock93Stack1) at: (recoveredBlock93Stack2).
            recoveredBlock93PC := 246.
        ].
        recoveredBlock93Step = 246 ifTrue: [
            recoveredBlock93Stack2 := recoveredBlock93Stack1.
            recoveredBlock93PC := 247.
        ].
        recoveredBlock93Step = 247 ifTrue: [
            recoveredLocal7 := recoveredBlock93Stack2.
            recoveredBlock93PC := 250.
        ].
        recoveredBlock93Step = 250 ifTrue: [
            recoveredBlock93Result := recoveredBlock93Stack1.
            recoveredBlock93Done := true.
        ].
    ].
    recoveredBlock93Result
].
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            (recoveredStack0) doWithIndex: (recoveredStack1).
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack0 := 'hw'.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack1 := 'call_2008402718'.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack0 := (recoveredStack0) last.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack0 := (recoveredStack0) length.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack1 := PinDistance.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 278] ifFalse: [recoveredPC := 304].
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 290] ifFalse: [recoveredPC := 304].
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2065752c; bytecode file offset 0xf53ebc"
!SGOrthogonalLineGO methodsFor: 'recovered'!
updateLineStyleDatamodelManager: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredLocal14 recoveredLocal15 recoveredLocal16 recoveredLocal17 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := connectionWrapper.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := 'No Conn Wrapper initializied...'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) error: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := connectionWrapper.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) resultGO.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal17 := recoveredStack2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := connectionWrapper.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) argumentGO.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal16 := recoveredStack2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMissingPin.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMissingPin.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := InvalidConnectorConnectionLineStyle.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack1) lineStyle: (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredPC := 877.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) typeID.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) typeID.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := recoveredLocal16.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := (recoveredStack2) typeID.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack1) dynamicTypeID: (recoveredStack2) datamodelManager: (recoveredStack3).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := (recoveredStack1) typeID.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 98] ifFalse: [recoveredPC := 118].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := (recoveredStack1) typeID.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 108] ifFalse: [recoveredPC := 118].
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := recoveredLocal17.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack2 := (recoveredStack2) typeID.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack1) dynamicTypeID: (recoveredStack2) datamodelManager: (recoveredStack3).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := ConnectionLineStyle.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack2 := (recoveredStack2) copy.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            (recoveredStack1) lineStyle: (recoveredStack2).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack1) commentLine: (recoveredStack2).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClass.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := (recoveredStack1) isProject.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 138] ifFalse: [recoveredPC := 221].
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack2 := [:block28123f10Arg1 | 
    | block28123f10Value0 block28123f10Value1 block28123f10Value2 block28123f10Value3 block28123f10Value4 block28123f10Value5 |
    block28123f10Value0 := block28123f10Arg1.
    block28123f10Value1 := (block28123f10Value0) isModule.
    block28123f10Value2 := block28123f10Arg1.
    block28123f10Value3 := (block28123f10Value2) ownerSGClass.
    block28123f10Value4 := (block28123f10Value3) isProject.
    block28123f10Value5 := (block28123f10Value1) & (block28123f10Value4).
    block28123f10Value5
].
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := (recoveredStack1) checkBlockForElement: (recoveredStack2) datamodelManager: (recoveredStack3).
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 164] ifFalse: [recoveredPC := 221].
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack2 := [:block28123f34Arg1 | 
    | block28123f34Value0 block28123f34Value1 block28123f34Value2 block28123f34Value3 block28123f34Value4 block28123f34Value5 |
    block28123f34Value0 := block28123f34Arg1.
    block28123f34Value1 := (block28123f34Value0) isModule.
    block28123f34Value2 := block28123f34Arg1.
    block28123f34Value3 := (block28123f34Value2) ownerSGClass.
    block28123f34Value4 := (block28123f34Value3) isProject.
    block28123f34Value5 := (block28123f34Value1) & (block28123f34Value4).
    block28123f34Value5
].
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack1 := (recoveredStack1) checkBlockForElement: (recoveredStack2) datamodelManager: (recoveredStack3).
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 190] ifFalse: [recoveredPC := 221].
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            (recoveredStack1) commentLine: (recoveredStack2).
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack1 := (recoveredStack1) connectorName.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack2 := recoveredLocal16.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack2 := (recoveredStack2) connectorName.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 206] ifFalse: [recoveredPC := 214].
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack2 := ConnectionLineStyle.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            (recoveredStack1) lineStyle: (recoveredStack2).
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredPC := 219.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack2 := InvalidConnectionLineStyle.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            (recoveredStack1) lineStyle: (recoveredStack2).
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack1 := 'Shikhar'.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack2 := 'Call_25757'.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack1 := (recoveredStack1) isBoolControl.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredLocal15 := recoveredStack1.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack1 := (recoveredStack1) isBoolControl.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredLocal14 := recoveredStack1.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack1 := (recoveredStack1) isBoolData.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredLocal13 := recoveredStack1.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack1 := (recoveredStack1) isBoolData.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredLocal12 := recoveredStack1.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack1 := (recoveredStack1) isComplexData.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack1 := (recoveredStack1) isComplexData.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack1 := (recoveredStack1) isComplex.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack1 := (recoveredStack1) isComplex.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack2 := recoveredLocal17.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack2 := (recoveredStack2) getHierarchyWrapper.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack2 := (recoveredStack2) isStatementBlockWrapperGO.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 282] ifFalse: [recoveredPC := 301].
        ].
        recoveredStep = 282 ifTrue: [
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack2 := recoveredLocal17.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack2 := (recoveredStack2) manager.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack2 := (recoveredStack2) isHierarchyBlockInterface.
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 301] ifFalse: [recoveredPC := 294].
        ].
        recoveredStep = 294 ifTrue: [
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack1 := (recoveredStack1) manager.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack1 := (recoveredStack1) isInternalBlockInterface.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack2 := recoveredLocal16.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack2 := (recoveredStack2) getHierarchyWrapper.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack2 := (recoveredStack2) isStatementBlockWrapperGO.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 314] ifFalse: [recoveredPC := 321].
        ].
        recoveredStep = 314 ifTrue: [
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack1 := (recoveredStack1) manager.
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack1 := (recoveredStack1) isInternalBlockInterface.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack1 := (recoveredStack1) owner.
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            recoveredStack1 := (recoveredStack1) getBlock.
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            recoveredStack1 := (recoveredStack1) isStatementBlockGO.
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack1 := (recoveredStack1) getBlock.
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            recoveredStack1 := (recoveredStack1) isStatementBlockGO.
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClass.
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCTClass.
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 417] ifFalse: [recoveredPC := 350].
        ].
        recoveredStep = 350 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClass.
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            recoveredStack1 := (recoveredStack1) isProject.
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 417] ifFalse: [recoveredPC := 360].
        ].
        recoveredStep = 360 ifTrue: [
            recoveredStack1 := Set.
            recoveredPC := 362.
        ].
        recoveredStep = 362 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 364.
        ].
        recoveredStep = 364 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasUnusedSeqCallVisitedConns: (recoveredStack2).
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 372] ifFalse: [recoveredPC := 415].
        ].
        recoveredStep = 372 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 374.
        ].
        recoveredStep = 374 ifTrue: [
            recoveredStack2 := recoveredLocal12.
            recoveredPC := 376.
        ].
        recoveredStep = 376 ifTrue: [
            recoveredStack1 := (recoveredStack1) & (recoveredStack2).
            recoveredPC := 378.
        ].
        recoveredStep = 378 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 382] ifFalse: [recoveredPC := 390].
        ].
        recoveredStep = 382 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 383.
        ].
        recoveredStep = 383 ifTrue: [
            recoveredStack2 := BoolCommentDataLineStyle.
            recoveredPC := 385.
        ].
        recoveredStep = 385 ifTrue: [
            (recoveredStack1) lineStyle: (recoveredStack2).
            recoveredPC := 387.
        ].
        recoveredStep = 387 ifTrue: [
            recoveredPC := 413.
        ].
        recoveredStep = 390 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            recoveredStack2 := recoveredLocal14.
            recoveredPC := 394.
        ].
        recoveredStep = 394 ifTrue: [
            recoveredStack1 := (recoveredStack1) & (recoveredStack2).
            recoveredPC := 396.
        ].
        recoveredStep = 396 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 400] ifFalse: [recoveredPC := 408].
        ].
        recoveredStep = 400 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 401.
        ].
        recoveredStep = 401 ifTrue: [
            recoveredStack2 := BoolCommentControlLineStyle.
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            (recoveredStack1) lineStyle: (recoveredStack2).
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            recoveredPC := 413.
        ].
        recoveredStep = 408 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 409.
        ].
        recoveredStep = 409 ifTrue: [
            recoveredStack2 := CommentConnectionLineStyle.
            recoveredPC := 411.
        ].
        recoveredStep = 411 ifTrue: [
            (recoveredStack1) lineStyle: (recoveredStack2).
            recoveredPC := 413.
        ].
        recoveredStep = 413 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 414.
        ].
        recoveredStep = 414 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 415 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 416.
        ].
        recoveredStep = 416 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 417.
        ].
        recoveredStep = 417 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 419.
        ].
        recoveredStep = 419 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEnumData.
            recoveredPC := 421.
        ].
        recoveredStep = 421 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 423.
        ].
        recoveredStep = 423 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 425.
        ].
        recoveredStep = 425 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEnumData.
            recoveredPC := 427.
        ].
        recoveredStep = 427 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 429.
        ].
        recoveredStep = 429 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 431.
        ].
        recoveredStep = 431 ifTrue: [
            recoveredStack2 := recoveredLocal10.
            recoveredPC := 433.
        ].
        recoveredStep = 433 ifTrue: [
            recoveredStack1 := (recoveredStack1) & (recoveredStack2).
            recoveredPC := 435.
        ].
        recoveredStep = 435 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 438] ifFalse: [recoveredPC := 440].
        ].
        recoveredStep = 438 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 439.
        ].
        recoveredStep = 439 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 440 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 442.
        ].
        recoveredStep = 442 ifTrue: [
            recoveredStack2 := recoveredLocal12.
            recoveredPC := 444.
        ].
        recoveredStep = 444 ifTrue: [
            recoveredStack2 := (recoveredStack2) not.
            recoveredPC := 445.
        ].
        recoveredStep = 445 ifTrue: [
            recoveredStack1 := (recoveredStack1) & (recoveredStack2).
            recoveredPC := 447.
        ].
        recoveredStep = 447 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 450] ifFalse: [recoveredPC := 452].
        ].
        recoveredStep = 450 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 451.
        ].
        recoveredStep = 451 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 452 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 454.
        ].
        recoveredStep = 454 ifTrue: [
            recoveredStack2 := recoveredLocal12.
            recoveredPC := 456.
        ].
        recoveredStep = 456 ifTrue: [
            recoveredStack1 := (recoveredStack1) & (recoveredStack2).
            recoveredPC := 458.
        ].
        recoveredStep = 458 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 462] ifFalse: [recoveredPC := 469].
        ].
        recoveredStep = 462 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 463.
        ].
        recoveredStep = 463 ifTrue: [
            recoveredStack2 := InvalidConnectionLineStyle.
            recoveredPC := 465.
        ].
        recoveredStep = 465 ifTrue: [
            (recoveredStack1) lineStyle: (recoveredStack2).
            recoveredPC := 467.
        ].
        recoveredStep = 467 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 468.
        ].
        recoveredStep = 468 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 469 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 471.
        ].
        recoveredStep = 471 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 472.
        ].
        recoveredStep = 472 ifTrue: [
            recoveredStack2 := recoveredLocal10.
            recoveredPC := 474.
        ].
        recoveredStep = 474 ifTrue: [
            recoveredStack1 := (recoveredStack1) & (recoveredStack2).
            recoveredPC := 476.
        ].
        recoveredStep = 476 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 480] ifFalse: [recoveredPC := 527].
        ].
        recoveredStep = 480 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 482.
        ].
        recoveredStep = 482 ifTrue: [
            recoveredStack2 := 'Call_52382'.
            recoveredPC := 484.
        ].
        recoveredStep = 484 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 485.
        ].
        recoveredStep = 485 ifTrue: [
            recoveredPC := 486.
        ].
        recoveredStep = 486 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 488.
        ].
        recoveredStep = 488 ifTrue: [
            recoveredStack1 := (recoveredStack1) getBasicBlock.
            recoveredPC := 490.
        ].
        recoveredStep = 490 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSGOperatorSwitchGO.
            recoveredPC := 492.
        ].
        recoveredStep = 492 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 506] ifFalse: [recoveredPC := 496].
        ].
        recoveredStep = 496 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 498.
        ].
        recoveredStep = 498 ifTrue: [
            recoveredStack1 := (recoveredStack1) getBasicBlock.
            recoveredPC := 500.
        ].
        recoveredStep = 500 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSGControlGO.
            recoveredPC := 502.
        ].
        recoveredStep = 502 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 506] ifFalse: [recoveredPC := 520].
        ].
        recoveredStep = 506 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 508.
        ].
        recoveredStep = 508 ifTrue: [
            recoveredStack2 := recoveredLocal17.
            recoveredPC := 510.
        ].
        recoveredStep = 510 ifTrue: [
            recoveredStack2 := (recoveredStack2) typeID.
            recoveredPC := 512.
        ].
        recoveredStep = 512 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 514.
        ].
        recoveredStep = 514 ifTrue: [
            (recoveredStack1) dynamicTypeID: (recoveredStack2) datamodelManager: (recoveredStack3).
            recoveredPC := 516.
        ].
        recoveredStep = 516 ifTrue: [
            recoveredPC := 525.
        ].
        recoveredStep = 520 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 521.
        ].
        recoveredStep = 521 ifTrue: [
            recoveredStack2 := InvalidConnectionLineStyle.
            recoveredPC := 523.
        ].
        recoveredStep = 523 ifTrue: [
            (recoveredStack1) lineStyle: (recoveredStack2).
            recoveredPC := 525.
        ].
        recoveredStep = 525 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 526.
        ].
        recoveredStep = 526 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 527 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 529.
        ].
        recoveredStep = 529 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 531.
        ].
        recoveredStep = 531 ifTrue: [
            recoveredStack1 := (recoveredStack1) & (recoveredStack2).
            recoveredPC := 533.
        ].
        recoveredStep = 533 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 546] ifFalse: [recoveredPC := 536].
        ].
        recoveredStep = 536 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 538.
        ].
        recoveredStep = 538 ifTrue: [
            recoveredStack2 := recoveredLocal9.
            recoveredPC := 540.
        ].
        recoveredStep = 540 ifTrue: [
            recoveredStack1 := (recoveredStack1) & (recoveredStack2).
            recoveredPC := 542.
        ].
        recoveredStep = 542 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 546] ifFalse: [recoveredPC := 553].
        ].
        recoveredStep = 546 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 547.
        ].
        recoveredStep = 547 ifTrue: [
            recoveredStack2 := InvalidConnectionLineStyle.
            recoveredPC := 549.
        ].
        recoveredStep = 549 ifTrue: [
            (recoveredStack1) lineStyle: (recoveredStack2).
            recoveredPC := 551.
        ].
        recoveredStep = 551 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 552.
        ].
        recoveredStep = 552 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 553 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 555.
        ].
        recoveredStep = 555 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 557.
        ].
        recoveredStep = 557 ifTrue: [
            recoveredStack1 := (recoveredStack1) & (recoveredStack2).
            recoveredPC := 559.
        ].
        recoveredStep = 559 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 572] ifFalse: [recoveredPC := 562].
        ].
        recoveredStep = 562 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 564.
        ].
        recoveredStep = 564 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 566.
        ].
        recoveredStep = 566 ifTrue: [
            recoveredStack1 := (recoveredStack1) & (recoveredStack2).
            recoveredPC := 568.
        ].
        recoveredStep = 568 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 572] ifFalse: [recoveredPC := 579].
        ].
        recoveredStep = 572 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 573.
        ].
        recoveredStep = 573 ifTrue: [
            recoveredStack2 := InvalidConnectionLineStyle.
            recoveredPC := 575.
        ].
        recoveredStep = 575 ifTrue: [
            (recoveredStack1) lineStyle: (recoveredStack2).
            recoveredPC := 577.
        ].
        recoveredStep = 577 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 578.
        ].
        recoveredStep = 578 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 579 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 581.
        ].
        recoveredStep = 581 ifTrue: [
            recoveredStack2 := recoveredLocal14.
            recoveredPC := 583.
        ].
        recoveredStep = 583 ifTrue: [
            recoveredStack1 := (recoveredStack1) & (recoveredStack2).
            recoveredPC := 585.
        ].
        recoveredStep = 585 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 588] ifFalse: [recoveredPC := 595].
        ].
        recoveredStep = 588 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 589.
        ].
        recoveredStep = 589 ifTrue: [
            recoveredStack2 := BoolControlLineStyle.
            recoveredPC := 591.
        ].
        recoveredStep = 591 ifTrue: [
            (recoveredStack1) lineStyle: (recoveredStack2).
            recoveredPC := 593.
        ].
        recoveredStep = 593 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 594.
        ].
        recoveredStep = 594 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 595 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 597.
        ].
        recoveredStep = 597 ifTrue: [
            recoveredStack2 := recoveredLocal12.
            recoveredPC := 599.
        ].
        recoveredStep = 599 ifTrue: [
            recoveredStack1 := (recoveredStack1) & (recoveredStack2).
            recoveredPC := 601.
        ].
        recoveredStep = 601 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 604] ifFalse: [recoveredPC := 611].
        ].
        recoveredStep = 604 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 605.
        ].
        recoveredStep = 605 ifTrue: [
            recoveredStack2 := BoolDataLineStyle.
            recoveredPC := 607.
        ].
        recoveredStep = 607 ifTrue: [
            (recoveredStack1) lineStyle: (recoveredStack2).
            recoveredPC := 609.
        ].
        recoveredStep = 609 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 610.
        ].
        recoveredStep = 610 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 611 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 613.
        ].
        recoveredStep = 613 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 646] ifFalse: [recoveredPC := 616].
        ].
        recoveredStep = 616 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 618.
        ].
        recoveredStep = 618 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 646] ifFalse: [recoveredPC := 622].
        ].
        recoveredStep = 622 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 624.
        ].
        recoveredStep = 624 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 646] ifFalse: [recoveredPC := 628].
        ].
        recoveredStep = 628 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 630.
        ].
        recoveredStep = 630 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 646] ifFalse: [recoveredPC := 634].
        ].
        recoveredStep = 634 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 636.
        ].
        recoveredStep = 636 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 646] ifFalse: [recoveredPC := 640].
        ].
        recoveredStep = 640 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 642.
        ].
        recoveredStep = 642 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 646] ifFalse: [recoveredPC := 653].
        ].
        recoveredStep = 646 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 647.
        ].
        recoveredStep = 647 ifTrue: [
            recoveredStack2 := InvalidConnectionLineStyle.
            recoveredPC := 649.
        ].
        recoveredStep = 649 ifTrue: [
            (recoveredStack1) lineStyle: (recoveredStack2).
            recoveredPC := 651.
        ].
        recoveredStep = 651 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 652.
        ].
        recoveredStep = 652 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 653 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 655.
        ].
        recoveredStep = 655 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 658] ifFalse: [recoveredPC := 662].
        ].
        recoveredStep = 658 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 659.
        ].
        recoveredStep = 659 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 662] ifFalse: [recoveredPC := 672].
        ].
        recoveredStep = 662 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 664.
        ].
        recoveredStep = 664 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 679] ifFalse: [recoveredPC := 668].
        ].
        recoveredStep = 668 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 669.
        ].
        recoveredStep = 669 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 672] ifFalse: [recoveredPC := 679].
        ].
        recoveredStep = 672 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 673.
        ].
        recoveredStep = 673 ifTrue: [
            recoveredStack2 := InvalidConnectionLineStyle.
            recoveredPC := 675.
        ].
        recoveredStep = 675 ifTrue: [
            (recoveredStack1) lineStyle: (recoveredStack2).
            recoveredPC := 677.
        ].
        recoveredStep = 677 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 678.
        ].
        recoveredStep = 678 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 679 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 681.
        ].
        recoveredStep = 681 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 684] ifFalse: [recoveredPC := 777].
        ].
        recoveredStep = 684 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 685.
        ].
        recoveredStep = 685 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 688] ifFalse: [recoveredPC := 777].
        ].
        recoveredStep = 688 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 690.
        ].
        recoveredStep = 690 ifTrue: [
            recoveredStack1 := (recoveredStack1) manager.
            recoveredPC := 692.
        ].
        recoveredStep = 692 ifTrue: [
            recoveredStack1 := (recoveredStack1) isGetSetMethod.
            recoveredPC := 694.
        ].
        recoveredStep = 694 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 698] ifFalse: [recoveredPC := 757].
        ].
        recoveredStep = 698 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 700.
        ].
        recoveredStep = 700 ifTrue: [
            recoveredStack1 := (recoveredStack1) manager.
            recoveredPC := 702.
        ].
        recoveredStep = 702 ifTrue: [
            recoveredStack1 := (recoveredStack1) isGetSetMethod.
            recoveredPC := 704.
        ].
        recoveredStep = 704 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 708] ifFalse: [recoveredPC := 757].
        ].
        recoveredStep = 708 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 710.
        ].
        recoveredStep = 710 ifTrue: [
            recoveredStack1 := (recoveredStack1) getBasicBlock.
            recoveredPC := 712.
        ].
        recoveredStep = 712 ifTrue: [
            recoveredStack1 := (recoveredStack1) element.
            recoveredPC := 714.
        ].
        recoveredStep = 714 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 757] ifFalse: [recoveredPC := 718].
        ].
        recoveredStep = 718 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 720.
        ].
        recoveredStep = 720 ifTrue: [
            recoveredStack1 := (recoveredStack1) getBasicBlock.
            recoveredPC := 722.
        ].
        recoveredStep = 722 ifTrue: [
            recoveredStack1 := (recoveredStack1) element.
            recoveredPC := 724.
        ].
        recoveredStep = 724 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 757] ifFalse: [recoveredPC := 728].
        ].
        recoveredStep = 728 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 730.
        ].
        recoveredStep = 730 ifTrue: [
            recoveredStack1 := (recoveredStack1) getBasicBlock.
            recoveredPC := 732.
        ].
        recoveredStep = 732 ifTrue: [
            recoveredStack1 := (recoveredStack1) element.
            recoveredPC := 734.
        ].
        recoveredStep = 734 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClassKey.
            recoveredPC := 736.
        ].
        recoveredStep = 736 ifTrue: [
            recoveredStack2 := recoveredLocal17.
            recoveredPC := 738.
        ].
        recoveredStep = 738 ifTrue: [
            recoveredStack2 := (recoveredStack2) getBasicBlock.
            recoveredPC := 740.
        ].
        recoveredStep = 740 ifTrue: [
            recoveredStack2 := (recoveredStack2) element.
            recoveredPC := 742.
        ].
        recoveredStep = 742 ifTrue: [
            recoveredStack2 := (recoveredStack2) sgClassKey.
            recoveredPC := 744.
        ].
        recoveredStep = 744 ifTrue: [
            recoveredStack1 := (recoveredStack1) sameType: (recoveredStack2).
            recoveredPC := 746.
        ].
        recoveredStep = 746 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 757] ifFalse: [recoveredPC := 750].
        ].
        recoveredStep = 750 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 751.
        ].
        recoveredStep = 751 ifTrue: [
            recoveredStack2 := InvalidConnectionLineStyle.
            recoveredPC := 753.
        ].
        recoveredStep = 753 ifTrue: [
            (recoveredStack1) lineStyle: (recoveredStack2).
            recoveredPC := 755.
        ].
        recoveredStep = 755 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 756.
        ].
        recoveredStep = 756 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 757 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 759.
        ].
        recoveredStep = 759 ifTrue: [
            recoveredStack1 := (recoveredStack1) typeID.
            recoveredPC := 761.
        ].
        recoveredStep = 761 ifTrue: [
            recoveredStack2 := recoveredLocal16.
            recoveredPC := 763.
        ].
        recoveredStep = 763 ifTrue: [
            recoveredStack2 := (recoveredStack2) typeID.
            recoveredPC := 765.
        ].
        recoveredStep = 765 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 766.
        ].
        recoveredStep = 766 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 777] ifFalse: [recoveredPC := 770].
        ].
        recoveredStep = 770 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 771.
        ].
        recoveredStep = 771 ifTrue: [
            recoveredStack2 := InvalidConnectionLineStyle.
            recoveredPC := 773.
        ].
        recoveredStep = 773 ifTrue: [
            (recoveredStack1) lineStyle: (recoveredStack2).
            recoveredPC := 775.
        ].
        recoveredStep = 775 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 776.
        ].
        recoveredStep = 776 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 777 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 778.
        ].
        recoveredStep = 778 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 782] ifFalse: [recoveredPC := 786].
        ].
        recoveredStep = 782 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 783.
        ].
        recoveredStep = 783 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 786] ifFalse: [recoveredPC := 794].
        ].
        recoveredStep = 786 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 787.
        ].
        recoveredStep = 787 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 801] ifFalse: [recoveredPC := 790].
        ].
        recoveredStep = 790 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 791.
        ].
        recoveredStep = 791 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 794] ifFalse: [recoveredPC := 801].
        ].
        recoveredStep = 794 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 795.
        ].
        recoveredStep = 795 ifTrue: [
            recoveredStack2 := InvalidConnectionLineStyle.
            recoveredPC := 797.
        ].
        recoveredStep = 797 ifTrue: [
            (recoveredStack1) lineStyle: (recoveredStack2).
            recoveredPC := 799.
        ].
        recoveredStep = 799 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 800.
        ].
        recoveredStep = 800 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 801 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 802.
        ].
        recoveredStep = 802 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 806] ifFalse: [recoveredPC := 877].
        ].
        recoveredStep = 806 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 807.
        ].
        recoveredStep = 807 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 810] ifFalse: [recoveredPC := 877].
        ].
        recoveredStep = 810 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 812.
        ].
        recoveredStep = 812 ifTrue: [
            recoveredStack1 := (recoveredStack1) manager.
            recoveredPC := 814.
        ].
        recoveredStep = 814 ifTrue: [
            recoveredStack1 := (recoveredStack1) isGetSetMethod.
            recoveredPC := 816.
        ].
        recoveredStep = 816 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 820] ifFalse: [recoveredPC := 877].
        ].
        recoveredStep = 820 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 822.
        ].
        recoveredStep = 822 ifTrue: [
            recoveredStack1 := (recoveredStack1) manager.
            recoveredPC := 824.
        ].
        recoveredStep = 824 ifTrue: [
            recoveredStack1 := (recoveredStack1) isGetSetMethod.
            recoveredPC := 826.
        ].
        recoveredStep = 826 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 830] ifFalse: [recoveredPC := 877].
        ].
        recoveredStep = 830 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 832.
        ].
        recoveredStep = 832 ifTrue: [
            recoveredStack1 := (recoveredStack1) getBlock.
            recoveredPC := 834.
        ].
        recoveredStep = 834 ifTrue: [
            recoveredStack1 := (recoveredStack1) element.
            recoveredPC := 836.
        ].
        recoveredStep = 836 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 877] ifFalse: [recoveredPC := 840].
        ].
        recoveredStep = 840 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 842.
        ].
        recoveredStep = 842 ifTrue: [
            recoveredStack1 := (recoveredStack1) getBlock.
            recoveredPC := 844.
        ].
        recoveredStep = 844 ifTrue: [
            recoveredStack1 := (recoveredStack1) element.
            recoveredPC := 846.
        ].
        recoveredStep = 846 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 877] ifFalse: [recoveredPC := 850].
        ].
        recoveredStep = 850 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 852.
        ].
        recoveredStep = 852 ifTrue: [
            recoveredStack1 := (recoveredStack1) getBlock.
            recoveredPC := 854.
        ].
        recoveredStep = 854 ifTrue: [
            recoveredStack1 := (recoveredStack1) element.
            recoveredPC := 856.
        ].
        recoveredStep = 856 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClassKey.
            recoveredPC := 858.
        ].
        recoveredStep = 858 ifTrue: [
            recoveredStack2 := recoveredLocal17.
            recoveredPC := 860.
        ].
        recoveredStep = 860 ifTrue: [
            recoveredStack2 := (recoveredStack2) getBlock.
            recoveredPC := 862.
        ].
        recoveredStep = 862 ifTrue: [
            recoveredStack2 := (recoveredStack2) element.
            recoveredPC := 864.
        ].
        recoveredStep = 864 ifTrue: [
            recoveredStack2 := (recoveredStack2) sgClassKey.
            recoveredPC := 866.
        ].
        recoveredStep = 866 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 867.
        ].
        recoveredStep = 867 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 877] ifFalse: [recoveredPC := 870].
        ].
        recoveredStep = 870 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 871.
        ].
        recoveredStep = 871 ifTrue: [
            recoveredStack2 := InvalidConnectionLineStyle.
            recoveredPC := 873.
        ].
        recoveredStep = 873 ifTrue: [
            (recoveredStack1) lineStyle: (recoveredStack2).
            recoveredPC := 875.
        ].
        recoveredStep = 875 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 876.
        ].
        recoveredStep = 876 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 877 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

