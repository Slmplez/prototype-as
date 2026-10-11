"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2005d318; bytecode file offset 0x959d74"
!RBGDUManagerGO methodsFor: 'recovered'!
coordinatesRect
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := controller.
    recoveredValue1 := (recoveredValue0) widget.
    recoveredValue2 := (recoveredValue1) coordinatesRect.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20066184; bytecode file offset 0x963428"
!RBGDUManagerGO methodsFor: 'recovered'!
getController
    | recoveredValue0 |
    recoveredValue0 := controller.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20066f64; bytecode file offset 0x9646f8"
!RBGDUManagerGO methodsFor: 'recovered'!
getChildren
    | recoveredValue0 |
    recoveredValue0 := children.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200a2e18; bytecode file offset 0x99f6d4"
!RBGDUManagerGO methodsFor: 'recovered'!
displayGO: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := controller.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) frame.
    (recoveredValue0) displayOneRect: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200d7318; bytecode file offset 0x9d3bd4"
!RBGDUManagerGO methodsFor: 'recovered'!
initWithController: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    children := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    controller := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x20115648; bytecode file offset 0xa11f08"
!RBGDUManagerGO methodsFor: 'recovered'!
getAllGridGraphs
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := children.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280c6b40Arg1 | 
    | block280c6b40Value0 block280c6b40Value1 |
    block280c6b40Value0 := block280c6b40Arg1.
    block280c6b40Value1 := (block280c6b40Value0) isAxisGridGraph.
    block280c6b40Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20129170; bytecode file offset 0xa25a34"
!RBGDUManagerGO methodsFor: 'recovered'!
getAllSignalGraphs
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := children.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280c94e0Arg1 | 
    | block280c94e0Value0 block280c94e0Value1 block280c94e0Value2 |
    block280c94e0Value0 := block280c94e0Arg1.
    block280c94e0Value1 := (block280c94e0Value0) graphObject.
    block280c94e0Value2 := (block280c94e0Value1) isSignalGraphObject.
    block280c94e0Value2
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20135b68; bytecode file offset 0xa32424"
!RBGDUManagerGO methodsFor: 'recovered'!
setColor: recoveredArg1 gO: recoveredArg2 display: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) lineColor: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) displayGO: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2018790c; bytecode file offset 0xa841d4"
!RBGDUManagerGO methodsFor: 'recovered'!
addFirstGO: recoveredArg1 display: recoveredArg2
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
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) manager: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) addFirst: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) widget.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) displayOn: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201caff0; bytecode file offset 0xac78d4"
!RBGDUManagerGO methodsFor: 'recovered'!
getBDEController
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ('Rnz') == ('EHI_80726').
    recoveredValue1 := (self) getController.
    recoveredValue2 := [
    ^nil
].
    (recoveredValue1) ifNil: (recoveredValue2).
    recoveredValue3 := (self) getController.
    recoveredValue4 := (recoveredValue3) getBDEController.
    ^recoveredValue4
! !

"ASDBase.ic method 0x2024be7c; bytecode file offset 0xb4873c"
!RBGDUManagerGO methodsFor: 'recovered'!
getGridGraphForChannel: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := children.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6Stack3 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            recoveredBlock6Stack1 := false.
            recoveredBlock6PC := 13.
        ].
        recoveredBlock6Step = 13 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Arg1.
            recoveredBlock6PC := 14.
        ].
        recoveredBlock6Step = 14 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) isAxisGridGraph.
            recoveredBlock6PC := 15.
        ].
        recoveredBlock6Step = 15 ifTrue: [
            (recoveredBlock6Stack2) ifTrue: [recoveredBlock6PC := 18] ifFalse: [recoveredBlock6PC := 25].
        ].
        recoveredBlock6Step = 18 ifTrue: [
            recoveredBlock6PC := 19.
        ].
        recoveredBlock6Step = 19 ifTrue: [
            recoveredBlock6Stack1 := recoveredBlock6Arg1.
            recoveredBlock6PC := 20.
        ].
        recoveredBlock6Step = 20 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) getChannel.
            recoveredBlock6PC := 21.
        ].
        recoveredBlock6Step = 21 ifTrue: [
            recoveredBlock6Stack2 := recoveredArg1.
            recoveredBlock6PC := 24.
        ].
        recoveredBlock6Step = 24 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) = (recoveredBlock6Stack2).
            recoveredBlock6PC := 25.
        ].
        recoveredBlock6Step = 25 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack1.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
    recoveredValue2 := [
    ^nil
].
    recoveredValue3 := (recoveredValue0) detect: (recoveredValue1) ifNone: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2034f22c; bytecode file offset 0xc4bb20"
!RBGDUManagerGO methodsFor: 'recovered'!
getRBXAxisGraph
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := children.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280eececArg1 | 
    | block280eececValue0 block280eececValue1 |
    block280eececValue0 := block280eececArg1.
    block280eececValue1 := (block280eececValue0) isXAxisGraph.
    block280eececValue1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := children.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := [:block280eed10Arg1 | 
    | block280eed10Stack0 block280eed10Stack1 block280eed10Stack2 block280eed10Stack3 block280eed10PC block280eed10Step block280eed10Done block280eed10Result |
    block280eed10Stack0 := self.
    block280eed10PC := 4.
    block280eed10Done := false.
    [block280eed10Done not] whileTrue: [
        block280eed10Step := block280eed10PC.
        block280eed10Step = 4 ifTrue: [
            block280eed10Stack1 := false.
            block280eed10PC := 5.
        ].
        block280eed10Step = 5 ifTrue: [
            block280eed10Stack2 := block280eed10Arg1.
            block280eed10PC := 6.
        ].
        block280eed10Step = 6 ifTrue: [
            block280eed10Stack2 := (block280eed10Stack2) isSensitiveWrapper.
            block280eed10PC := 8.
        ].
        block280eed10Step = 8 ifTrue: [
            (block280eed10Stack2) ifTrue: [block280eed10PC := 12] ifFalse: [block280eed10PC := 17].
        ].
        block280eed10Step = 12 ifTrue: [
            block280eed10PC := 13.
        ].
        block280eed10Step = 13 ifTrue: [
            block280eed10Stack1 := block280eed10Arg1.
            block280eed10PC := 14.
        ].
        block280eed10Step = 14 ifTrue: [
            block280eed10Stack1 := (block280eed10Stack1) graphObject.
            block280eed10PC := 16.
        ].
        block280eed10Step = 16 ifTrue: [
            block280eed10Stack1 := (block280eed10Stack1) isXAxisGraph.
            block280eed10PC := 17.
        ].
        block280eed10Step = 17 ifTrue: [
            block280eed10Result := block280eed10Stack1.
            block280eed10Done := true.
        ].
    ].
    block280eed10Result
].
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) graphObject.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2034f250; bytecode file offset 0xc4bb20"
!RBGDUManagerGO methodsFor: 'recovered'!
getSomeRBWAxisGraph
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := children.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280eed34Arg1 | 
    | block280eed34Value0 block280eed34Value1 |
    block280eed34Value0 := block280eed34Arg1.
    block280eed34Value1 := (block280eed34Value0) isWAxisGraph.
    block280eed34Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := children.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := [:block280eed58Arg1 | 
    | block280eed58Stack0 block280eed58Stack1 block280eed58Stack2 block280eed58Stack3 block280eed58PC block280eed58Step block280eed58Done block280eed58Result |
    block280eed58Stack0 := self.
    block280eed58PC := 4.
    block280eed58Done := false.
    [block280eed58Done not] whileTrue: [
        block280eed58Step := block280eed58PC.
        block280eed58Step = 4 ifTrue: [
            block280eed58Stack1 := false.
            block280eed58PC := 5.
        ].
        block280eed58Step = 5 ifTrue: [
            block280eed58Stack2 := block280eed58Arg1.
            block280eed58PC := 6.
        ].
        block280eed58Step = 6 ifTrue: [
            block280eed58Stack2 := (block280eed58Stack2) isSensitiveWrapper.
            block280eed58PC := 8.
        ].
        block280eed58Step = 8 ifTrue: [
            (block280eed58Stack2) ifTrue: [block280eed58PC := 12] ifFalse: [block280eed58PC := 17].
        ].
        block280eed58Step = 12 ifTrue: [
            block280eed58PC := 13.
        ].
        block280eed58Step = 13 ifTrue: [
            block280eed58Stack1 := block280eed58Arg1.
            block280eed58PC := 14.
        ].
        block280eed58Step = 14 ifTrue: [
            block280eed58Stack1 := (block280eed58Stack1) graphObject.
            block280eed58PC := 16.
        ].
        block280eed58Step = 16 ifTrue: [
            block280eed58Stack1 := (block280eed58Stack1) isWAxisGraph.
            block280eed58PC := 17.
        ].
        block280eed58Step = 17 ifTrue: [
            block280eed58Result := block280eed58Stack1.
            block280eed58Done := true.
        ].
    ].
    block280eed58Result
].
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) graphObject.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

