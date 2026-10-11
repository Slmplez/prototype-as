"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000824c; bytecode file offset 0x908be4"
!SGStatementBlockWrapperGO methodsFor: 'recovered'!
getStatementBlock
    | recoveredValue0 |
    recoveredValue0 := (self) graphObject.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20020294; bytecode file offset 0x92209c"
!SGStatementBlockWrapperGO methodsFor: 'recovered'!
resolveHierarchyLabel
    ^'R~esolve Statement Block'
! !

"ASDBase.ic method 0x20026050; bytecode file offset 0x923928"
!SGStatementBlockWrapperGO methodsFor: 'recovered'!
visualCallBackImage
    ^'GraphicsStatementBlock'
! !

"ASDBase.ic method 0x20076a3c; bytecode file offset 0x9757c8"
!SGStatementBlockWrapperGO methodsFor: 'recovered'!
isStatementBlockWrapperGO
    ^true
! !

"ASDBase.ic method 0x2009bd6c; bytecode file offset 0x998660"
!SGStatementBlockWrapperGO methodsFor: 'recovered'!
methodCalls
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Array.
    recoveredValue1 := (self) basicGraphObject.
    recoveredValue2 := (recoveredValue1) getSGCallGO.
    recoveredValue3 := (recoveredValue0) with: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200aa740; bytecode file offset 0x9a7000"
!SGStatementBlockWrapperGO methodsFor: 'recovered'!
substituteArgumentConnector: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) manager.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) asStatementBlockCallArgumentCollector.
    (recoveredValue1) setExternalConnectorGO: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x201620b0; bytecode file offset 0xa5e980"
!SGStatementBlockWrapperGO methodsFor: 'recovered'!
hierarchyLabelsLocal
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) graphObject.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) manager.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) allHierarchies.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := [:block280ce454Arg1 | 
    | block280ce454Value0 block280ce454Value1 |
    block280ce454Value0 := block280ce454Arg1.
    block280ce454Value1 := (block280ce454Value0) label.
    block280ce454Value1
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20173b68; bytecode file offset 0xa70434"
!SGStatementBlockWrapperGO methodsFor: 'recovered'!
methodCallsCurrentLevel
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) basicGraphObject.
    recoveredValue1 := (recoveredValue0) getSGCallGO.
    recoveredValue2 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := Array.
    recoveredBlock6Value1 := recoveredBlock6Arg1.
    recoveredBlock6Value2 := (recoveredBlock6Value0) with: (recoveredBlock6Value1).
    ^recoveredBlock6Value2
].
    (recoveredValue1) ifNotNil: (recoveredValue2).
    ^#()
! !

"ASDBase.ic method 0x203786cc; bytecode file offset 0xc74fac"
!SGStatementBlockWrapperGO methodsFor: 'recovered'!
gOsForSeqCallTransforming
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) contents.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := [:block280f225cArg1 | 
    | block280f225cStack0 block280f225cStack1 block280f225cStack2 block280f225cStack3 block280f225cPC block280f225cStep block280f225cDone block280f225cResult |
    block280f225cStack0 := self.
    block280f225cPC := 4.
    block280f225cDone := false.
    [block280f225cDone not] whileTrue: [
        block280f225cStep := block280f225cPC.
        block280f225cStep = 4 ifTrue: [
            block280f225cStack1 := true.
            block280f225cPC := 5.
        ].
        block280f225cStep = 5 ifTrue: [
            block280f225cStack2 := block280f225cArg1.
            block280f225cPC := 6.
        ].
        block280f225cStep = 6 ifTrue: [
            block280f225cStack2 := (block280f225cStack2) isSGDataGO.
            block280f225cPC := 7.
        ].
        block280f225cStep = 7 ifTrue: [
            (block280f225cStack2) ifTrue: [block280f225cPC := 22] ifFalse: [block280f225cPC := 10].
        ].
        block280f225cStep = 10 ifTrue: [
            block280f225cPC := 11.
        ].
        block280f225cStep = 11 ifTrue: [
            block280f225cStack1 := true.
            block280f225cPC := 12.
        ].
        block280f225cStep = 12 ifTrue: [
            block280f225cStack2 := block280f225cArg1.
            block280f225cPC := 13.
        ].
        block280f225cStep = 13 ifTrue: [
            block280f225cStack2 := (block280f225cStack2) isSGControlGO.
            block280f225cPC := 15.
        ].
        block280f225cStep = 15 ifTrue: [
            (block280f225cStack2) ifTrue: [block280f225cPC := 22] ifFalse: [block280f225cPC := 18].
        ].
        block280f225cStep = 18 ifTrue: [
            block280f225cPC := 19.
        ].
        block280f225cStep = 19 ifTrue: [
            block280f225cStack1 := block280f225cArg1.
            block280f225cPC := 20.
        ].
        block280f225cStep = 20 ifTrue: [
            block280f225cStack1 := (block280f225cStack1) isSGCodeGO.
            block280f225cPC := 22.
        ].
        block280f225cStep = 22 ifTrue: [
            block280f225cResult := block280f225cStack1.
            block280f225cDone := true.
        ].
    ].
    block280f225cResult
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) contents.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := [:recoveredBlock39Arg1 | 
    | recoveredBlock39Stack0 recoveredBlock39Stack1 recoveredBlock39Stack2 recoveredBlock39Stack3 recoveredBlock39PC recoveredBlock39Step recoveredBlock39Done recoveredBlock39Result |
    recoveredBlock39Stack0 := self.
    recoveredBlock39PC := 46.
    recoveredBlock39Done := false.
    [recoveredBlock39Done not] whileTrue: [
        recoveredBlock39Step := recoveredBlock39PC.
        recoveredBlock39Step = 46 ifTrue: [
            recoveredBlock39Stack1 := nil.
            recoveredBlock39PC := 47.
        ].
        recoveredBlock39Step = 47 ifTrue: [
            recoveredBlock39Stack2 := recoveredBlock39Arg1.
            recoveredBlock39PC := 48.
        ].
        recoveredBlock39Step = 48 ifTrue: [
            recoveredBlock39Stack2 := (recoveredBlock39Stack2) isSGHierarchyWrapperGO.
            recoveredBlock39PC := 50.
        ].
        recoveredBlock39Step = 50 ifTrue: [
            (recoveredBlock39Stack2) ifTrue: [recoveredBlock39PC := 54] ifFalse: [recoveredBlock39PC := 63].
        ].
        recoveredBlock39Step = 54 ifTrue: [
            recoveredBlock39PC := 55.
        ].
        recoveredBlock39Step = 55 ifTrue: [
            recoveredBlock39Stack1 := recoveredLocal1.
            recoveredBlock39PC := 58.
        ].
        recoveredBlock39Step = 58 ifTrue: [
            recoveredBlock39Stack2 := recoveredBlock39Arg1.
            recoveredBlock39PC := 59.
        ].
        recoveredBlock39Step = 59 ifTrue: [
            recoveredBlock39Stack2 := (recoveredBlock39Stack2) allBlocks.
            recoveredBlock39PC := 61.
        ].
        recoveredBlock39Step = 61 ifTrue: [
            recoveredBlock39Stack1 := (recoveredBlock39Stack1) addAll: (recoveredBlock39Stack2).
            recoveredBlock39PC := 63.
        ].
        recoveredBlock39Step = 63 ifTrue: [
            recoveredBlock39Result := recoveredBlock39Stack1.
            recoveredBlock39Done := true.
        ].
    ].
    recoveredBlock39Result
].
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203b40bc; bytecode file offset 0xcb09b0"
!SGStatementBlockWrapperGO methodsFor: 'recovered'!
prepareCallsWhileMovedFromWrapper
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) gOsForSeqCallTransforming.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280f5db4Arg1 | 
    | block280f5db4Value0 block280f5db4Value1 |
    block280f5db4Value0 := block280f5db4Arg1.
    block280f5db4Value1 := (block280f5db4Value0) interfaceGOs.
    block280f5db4Value1
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
            recoveredStack1 := [:block280f5dd8Arg1 | 
    | block280f5dd8Stack0 block280f5dd8Stack1 block280f5dd8Stack2 block280f5dd8Stack3 block280f5dd8PC block280f5dd8Step block280f5dd8Done block280f5dd8Result |
    block280f5dd8Stack0 := self.
    block280f5dd8PC := 4.
    block280f5dd8Done := false.
    [block280f5dd8Done not] whileTrue: [
        block280f5dd8Step := block280f5dd8PC.
        block280f5dd8Step = 4 ifTrue: [
            block280f5dd8Stack1 := block280f5dd8Arg1.
            block280f5dd8PC := 5.
        ].
        block280f5dd8Step = 5 ifTrue: [
            block280f5dd8Stack2 := [:block280f5dfcArg1 | 
    | block280f5dfcLocal1 block280f5dfcStack0 block280f5dfcStack1 block280f5dfcStack2 block280f5dfcStack3 block280f5dfcPC block280f5dfcStep block280f5dfcDone block280f5dfcResult |
    block280f5dfcStack0 := self.
    block280f5dfcPC := 4.
    block280f5dfcDone := false.
    [block280f5dfcDone not] whileTrue: [
        block280f5dfcStep := block280f5dfcPC.
        block280f5dfcStep = 4 ifTrue: [
            block280f5dfcStack1 := nil.
            block280f5dfcPC := 5.
        ].
        block280f5dfcStep = 5 ifTrue: [
            block280f5dfcStack2 := block280f5dfcArg1.
            block280f5dfcPC := 6.
        ].
        block280f5dfcStep = 6 ifTrue: [
            block280f5dfcStack2 := (block280f5dfcStack2) isSelectorPort.
            block280f5dfcPC := 8.
        ].
        block280f5dfcStep = 8 ifTrue: [
            (block280f5dfcStack2) ifTrue: [block280f5dfcPC := 12] ifFalse: [block280f5dfcPC := 50].
        ].
        block280f5dfcStep = 12 ifTrue: [
            block280f5dfcStack2 := block280f5dfcArg1.
            block280f5dfcPC := 13.
        ].
        block280f5dfcStep = 13 ifTrue: [
            block280f5dfcStack2 := (block280f5dfcStack2) getSGCallGO.
            block280f5dfcPC := 15.
        ].
        block280f5dfcStep = 15 ifTrue: [
            block280f5dfcStack2 := (block280f5dfcStack2) interfaceElementGO.
            block280f5dfcPC := 17.
        ].
        block280f5dfcStep = 17 ifTrue: [
            (block280f5dfcStack2 == nil) ifTrue: [block280f5dfcPC := 50] ifFalse: [block280f5dfcPC := 20].
        ].
        block280f5dfcStep = 20 ifTrue: [
            block280f5dfcPC := 21.
        ].
        block280f5dfcStep = 21 ifTrue: [
            block280f5dfcStack1 := block280f5dfcArg1.
            block280f5dfcPC := 22.
        ].
        block280f5dfcStep = 22 ifTrue: [
            block280f5dfcStack1 := (block280f5dfcStack1) getSGCallGO.
            block280f5dfcPC := 24.
        ].
        block280f5dfcStep = 24 ifTrue: [
            block280f5dfcStack2 := false.
            block280f5dfcPC := 25.
        ].
        block280f5dfcStep = 25 ifTrue: [
            (block280f5dfcStack1) isInStatementBlock: (block280f5dfcStack2).
            block280f5dfcPC := 27.
        ].
        block280f5dfcStep = 27 ifTrue: [
            block280f5dfcStack1 := block280f5dfcArg1.
            block280f5dfcPC := 28.
        ].
        block280f5dfcStep = 28 ifTrue: [
            block280f5dfcStack1 := (block280f5dfcStack1) getSGCallGO.
            block280f5dfcPC := 30.
        ].
        block280f5dfcStep = 30 ifTrue: [
            block280f5dfcStack1 := (block280f5dfcStack1) interfaceElementGO.
            block280f5dfcPC := 32.
        ].
        block280f5dfcStep = 32 ifTrue: [
            block280f5dfcStack1 := (block280f5dfcStack1) externalConnectorGO.
            block280f5dfcPC := 34.
        ].
        block280f5dfcStep = 34 ifTrue: [
            block280f5dfcLocal1 := block280f5dfcStack1.
            block280f5dfcPC := 35.
        ].
        block280f5dfcStep = 35 ifTrue: [
            block280f5dfcStack1 := block280f5dfcLocal1.
            block280f5dfcPC := 36.
        ].
        block280f5dfcStep = 36 ifTrue: [
            block280f5dfcStack1 := (block280f5dfcStack1) manager.
            block280f5dfcPC := 38.
        ].
        block280f5dfcStep = 38 ifTrue: [
            block280f5dfcStack2 := block280f5dfcLocal1.
            block280f5dfcPC := 39.
        ].
        block280f5dfcStep = 39 ifTrue: [
            block280f5dfcStack2 := (block280f5dfcStack2) asCallArgumentCollector.
            block280f5dfcPC := 41.
        ].
        block280f5dfcStep = 41 ifTrue: [
            (block280f5dfcStack1) setExternalConnectorGO: (block280f5dfcStack2).
            block280f5dfcPC := 43.
        ].
        block280f5dfcStep = 43 ifTrue: [
            block280f5dfcStack1 := block280f5dfcArg1.
            block280f5dfcPC := 44.
        ].
        block280f5dfcStep = 44 ifTrue: [
            block280f5dfcStack1 := (block280f5dfcStack1) getSGCallGO.
            block280f5dfcPC := 46.
        ].
        block280f5dfcStep = 46 ifTrue: [
            block280f5dfcStack1 := (block280f5dfcStack1) updateLabelGOWithDisplay.
            block280f5dfcPC := 48.
        ].
        block280f5dfcStep = 48 ifTrue: [
            block280f5dfcStack2 := nil.
            block280f5dfcPC := 49.
        ].
        block280f5dfcStep = 49 ifTrue: [
            block280f5dfcLocal1 := block280f5dfcStack2.
            block280f5dfcPC := 50.
        ].
        block280f5dfcStep = 50 ifTrue: [
            block280f5dfcResult := block280f5dfcStack1.
            block280f5dfcDone := true.
        ].
    ].
    block280f5dfcResult
].
            block280f5dd8PC := 7.
        ].
        block280f5dd8Step = 7 ifTrue: [
            block280f5dd8PC := 57.
        ].
        block280f5dd8Step = 57 ifTrue: [
            block280f5dd8Stack1 := (block280f5dd8Stack1) do: (block280f5dd8Stack2).
            block280f5dd8PC := 59.
        ].
        block280f5dd8Step = 59 ifTrue: [
            block280f5dd8Result := block280f5dd8Stack1.
            block280f5dd8Done := true.
        ].
    ].
    block280f5dd8Result
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204555a0; bytecode file offset 0xd51ec0"
!SGStatementBlockWrapperGO methodsFor: 'recovered'!
resolveBlockHierarchy
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    super resolveBlockHierarchy.
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) controller.
    recoveredValue3 := [
    | recoveredBlock17Stack0 recoveredBlock17Stack1 recoveredBlock17Stack2 recoveredBlock17PC recoveredBlock17Step recoveredBlock17Done recoveredBlock17Result |
    recoveredBlock17Stack0 := self.
    recoveredBlock17PC := 24.
    recoveredBlock17Done := false.
    [recoveredBlock17Done not] whileTrue: [
        recoveredBlock17Step := recoveredBlock17PC.
        recoveredBlock17Step = 24 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) basicGraphObject.
            recoveredBlock17PC := 26.
        ].
        recoveredBlock17Step = 26 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) hierarchyMGO.
            recoveredBlock17PC := 28.
        ].
        recoveredBlock17Step = 28 ifTrue: [
            (recoveredBlock17Stack0) prepareCallsWhileMovedFromWrapper.
            recoveredBlock17PC := 30.
        ].
        recoveredBlock17Step = 30 ifTrue: [
            recoveredBlock17Stack0 := self.
            recoveredBlock17PC := 31.
        ].
        recoveredBlock17Step = 31 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) basicGraphObject.
            recoveredBlock17PC := 33.
        ].
        recoveredBlock17Step = 33 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) interfaceGOs.
            recoveredBlock17PC := 35.
        ].
        recoveredBlock17Step = 35 ifTrue: [
            recoveredBlock17Stack1 := [:block280ffa90Arg1 | 
    | block280ffa90Value0 block280ffa90Value1 |
    block280ffa90Value0 := block280ffa90Arg1.
    block280ffa90Value1 := (block280ffa90Value0) isSelectorPort.
    block280ffa90Value1
].
            recoveredBlock17PC := 37.
        ].
        recoveredBlock17Step = 37 ifTrue: [
            recoveredBlock17PC := 44.
        ].
        recoveredBlock17Step = 44 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) select: (recoveredBlock17Stack1).
            recoveredBlock17PC := 46.
        ].
        recoveredBlock17Step = 46 ifTrue: [
            recoveredBlock17Stack1 := [:block280ffab4Arg1 | 
    | block280ffab4Stack0 block280ffab4Stack1 block280ffab4Stack2 block280ffab4Stack3 block280ffab4Stack4 block280ffab4PC block280ffab4Step block280ffab4Done block280ffab4Result |
    block280ffab4Stack0 := self.
    block280ffab4PC := 4.
    block280ffab4Done := false.
    [block280ffab4Done not] whileTrue: [
        block280ffab4Step := block280ffab4PC.
        block280ffab4Step = 4 ifTrue: [
            block280ffab4Stack1 := nil.
            block280ffab4PC := 5.
        ].
        block280ffab4Step = 5 ifTrue: [
            block280ffab4Stack2 := block280ffab4Arg1.
            block280ffab4PC := 6.
        ].
        block280ffab4Step = 6 ifTrue: [
            block280ffab4Stack2 := (block280ffab4Stack2) getSGCallGO.
            block280ffab4PC := 8.
        ].
        block280ffab4Step = 8 ifTrue: [
            (block280ffab4Stack2 == nil) ifTrue: [block280ffab4PC := 28] ifFalse: [block280ffab4PC := 12].
        ].
        block280ffab4Step = 12 ifTrue: [
            block280ffab4Stack2 := 'execute'.
            block280ffab4PC := 14.
        ].
        block280ffab4Step = 14 ifTrue: [
            block280ffab4Stack3 := block280ffab4Arg1.
            block280ffab4PC := 15.
        ].
        block280ffab4Step = 15 ifTrue: [
            block280ffab4Stack3 := (block280ffab4Stack3) methodName.
            block280ffab4PC := 17.
        ].
        block280ffab4Step = 17 ifTrue: [
            block280ffab4Stack2 := (block280ffab4Stack2) equals: (block280ffab4Stack3).
            block280ffab4PC := 19.
        ].
        block280ffab4Step = 19 ifTrue: [
            (block280ffab4Stack2) ifTrue: [block280ffab4PC := 22] ifFalse: [block280ffab4PC := 28].
        ].
        block280ffab4Step = 22 ifTrue: [
            block280ffab4PC := 23.
        ].
        block280ffab4Step = 23 ifTrue: [
            block280ffab4Stack1 := block280ffab4Arg1.
            block280ffab4PC := 24.
        ].
        block280ffab4Step = 24 ifTrue: [
            block280ffab4Stack1 := (block280ffab4Stack1) getSGCallGO.
            block280ffab4PC := 26.
        ].
        block280ffab4Step = 26 ifTrue: [
            block280ffab4Stack1 := (block280ffab4Stack1) removeConnections.
            block280ffab4PC := 28.
        ].
        block280ffab4Step = 28 ifTrue: [
            block280ffab4Result := block280ffab4Stack1.
            block280ffab4Done := true.
        ].
    ].
    block280ffab4Result
].
            recoveredBlock17PC := 48.
        ].
        recoveredBlock17Step = 48 ifTrue: [
            recoveredBlock17PC := 77.
        ].
        recoveredBlock17Step = 77 ifTrue: [
            (recoveredBlock17Stack0) do: (recoveredBlock17Stack1).
            recoveredBlock17PC := 79.
        ].
        recoveredBlock17Step = 79 ifTrue: [
            recoveredBlock17Stack0 := recoveredLocal1.
            recoveredBlock17PC := 82.
        ].
        recoveredBlock17Step = 82 ifTrue: [
            recoveredBlock17Stack1 := self.
            recoveredBlock17PC := 83.
        ].
        recoveredBlock17Step = 83 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) graphObject.
            recoveredBlock17PC := 85.
        ].
        recoveredBlock17Step = 85 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) bigFrame.
            recoveredBlock17PC := 87.
        ].
        recoveredBlock17Step = 87 ifTrue: [
            (recoveredBlock17Stack0) add: (recoveredBlock17Stack1).
            recoveredBlock17PC := 89.
        ].
        recoveredBlock17Step = 89 ifTrue: [
            recoveredBlock17Stack0 := recoveredLocal1.
            recoveredBlock17PC := 92.
        ].
        recoveredBlock17Step = 92 ifTrue: [
            recoveredBlock17Stack1 := self.
            recoveredBlock17PC := 93.
        ].
        recoveredBlock17Step = 93 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) controller.
            recoveredBlock17PC := 95.
        ].
        recoveredBlock17Step = 95 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) updateConnectionLineStyle.
            recoveredBlock17PC := 97.
        ].
        recoveredBlock17Step = 97 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) addAll: (recoveredBlock17Stack1).
            recoveredBlock17PC := 99.
        ].
        recoveredBlock17Step = 99 ifTrue: [
            recoveredBlock17Result := recoveredBlock17Stack0.
            recoveredBlock17Done := true.
        ].
    ].
    recoveredBlock17Result
].
    (recoveredValue2) doWithoutMemento: (recoveredValue3).
    recoveredValue4 := (self) controller.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (self) enclosingRectOf: (recoveredValue5).
    (recoveredValue4) displayOneRectSetModified: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x204c0bdc; bytecode file offset 0xdbd4e4"
!SGStatementBlockWrapperGO methodsFor: 'recovered'!
visualChildren
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) contents.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) children.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := [:block28106720Arg1 | 
    | block28106720Stack0 block28106720Stack1 block28106720Stack2 block28106720Stack3 block28106720PC block28106720Step block28106720Done block28106720Result |
    block28106720Stack0 := self.
    block28106720PC := 4.
    block28106720Done := false.
    [block28106720Done not] whileTrue: [
        block28106720Step := block28106720PC.
        block28106720Step = 4 ifTrue: [
            block28106720Stack1 := false.
            block28106720PC := 5.
        ].
        block28106720Step = 5 ifTrue: [
            block28106720Stack2 := block28106720Arg1.
            block28106720PC := 6.
        ].
        block28106720Step = 6 ifTrue: [
            block28106720Stack2 := (block28106720Stack2) isSGDataGO.
            block28106720PC := 8.
        ].
        block28106720Step = 8 ifTrue: [
            (block28106720Stack2) ifTrue: [block28106720PC := 12] ifFalse: [block28106720PC := 29].
        ].
        block28106720Step = 12 ifTrue: [
            block28106720PC := 13.
        ].
        block28106720Step = 13 ifTrue: [
            block28106720Stack1 := false.
            block28106720PC := 14.
        ].
        block28106720Step = 14 ifTrue: [
            block28106720Stack2 := block28106720Arg1.
            block28106720PC := 15.
        ].
        block28106720Step = 15 ifTrue: [
            block28106720Stack2 := (block28106720Stack2) getSGCallGO.
            block28106720PC := 17.
        ].
        block28106720Step = 17 ifTrue: [
            (block28106720Stack2 == nil) ifTrue: [block28106720PC := 29] ifFalse: [block28106720PC := 20].
        ].
        block28106720Step = 20 ifTrue: [
            block28106720PC := 21.
        ].
        block28106720Step = 21 ifTrue: [
            block28106720Stack1 := block28106720Arg1.
            block28106720PC := 22.
        ].
        block28106720Step = 22 ifTrue: [
            block28106720Stack1 := (block28106720Stack1) getSGCallGO.
            block28106720PC := 24.
        ].
        block28106720Step = 24 ifTrue: [
            block28106720Stack1 := (block28106720Stack1) seqNo.
            block28106720PC := 26.
        ].
        block28106720Step = 26 ifTrue: [
            block28106720Stack2 := 0.
            block28106720PC := 28.
        ].
        block28106720Step = 28 ifTrue: [
            block28106720Stack1 := (block28106720Stack1) ~= (block28106720Stack2).
            block28106720PC := 29.
        ].
        block28106720Step = 29 ifTrue: [
            block28106720Result := block28106720Stack1.
            block28106720Done := true.
        ].
    ].
    block28106720Result
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := (recoveredStack2) select: (recoveredStack3).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := [:block28106744Arg1 | 
    | block28106744Value0 block28106744Value1 |
    block28106744Value0 := block28106744Arg1.
    block28106744Value1 := (block28106744Value0) getSGCallGO.
    block28106744Value1
].
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := (recoveredStack2) collect: (recoveredStack3).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) addAll: (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := (recoveredStack2) contents.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := (recoveredStack2) children.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := [:block28106768Arg1 | 
    | block28106768Value0 block28106768Value1 |
    block28106768Value0 := block28106768Arg1.
    block28106768Value1 := (block28106768Value0) isSGControlGO.
    block28106768Value1
].
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := (recoveredStack2) select: (recoveredStack3).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack3 := [:block2810678cArg1 | 
    | block2810678cValue0 block2810678cValue1 |
    block2810678cValue0 := block2810678cArg1.
    block2810678cValue1 := (block2810678cValue0) getSGCallGO.
    block2810678cValue1
].
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := (recoveredStack2) collect: (recoveredStack3).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack1) addAll: (recoveredStack2).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := (recoveredStack2) contents.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := (recoveredStack2) children.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack3 := [:block281067b0Arg1 | 
    | block281067b0Stack0 block281067b0Stack1 block281067b0Stack2 block281067b0Stack3 block281067b0PC block281067b0Step block281067b0Done block281067b0Result |
    block281067b0Stack0 := self.
    block281067b0PC := 4.
    block281067b0Done := false.
    [block281067b0Done not] whileTrue: [
        block281067b0Step := block281067b0PC.
        block281067b0Step = 4 ifTrue: [
            block281067b0Stack1 := false.
            block281067b0PC := 5.
        ].
        block281067b0Step = 5 ifTrue: [
            block281067b0Stack2 := block281067b0Arg1.
            block281067b0PC := 6.
        ].
        block281067b0Step = 6 ifTrue: [
            block281067b0Stack2 := (block281067b0Stack2) isStatementBlockWrapperGO.
            block281067b0PC := 8.
        ].
        block281067b0Step = 8 ifTrue: [
            (block281067b0Stack2) ifTrue: [block281067b0PC := 16] ifFalse: [block281067b0PC := 12].
        ].
        block281067b0Step = 12 ifTrue: [
            block281067b0PC := 13.
        ].
        block281067b0Step = 13 ifTrue: [
            block281067b0Stack1 := block281067b0Arg1.
            block281067b0PC := 14.
        ].
        block281067b0Step = 14 ifTrue: [
            block281067b0Stack1 := (block281067b0Stack1) isSGHierarchyWrapperGO.
            block281067b0PC := 16.
        ].
        block281067b0Step = 16 ifTrue: [
            block281067b0Result := block281067b0Stack1.
            block281067b0Done := true.
        ].
    ].
    block281067b0Result
].
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := (recoveredStack2) select: (recoveredStack3).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack1) addAll: (recoveredStack2).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := (recoveredStack2) contents.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack2 := (recoveredStack2) children.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack3 := [:block281067d4Arg1 | 
    | block281067d4Value0 block281067d4Value1 |
    block281067d4Value0 := block281067d4Arg1.
    block281067d4Value1 := (block281067d4Value0) isStatementBlockWrapperGO.
    block281067d4Value1
].
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack2 := (recoveredStack2) select: (recoveredStack3).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack3 := [:block281067f8Arg1 | 
    | block281067f8Value0 block281067f8Value1 block281067f8Value2 |
    block281067f8Value0 := block281067f8Arg1.
    block281067f8Value1 := (block281067f8Value0) graphObject.
    block281067f8Value2 := (block281067f8Value1) getSGCallGO.
    block281067f8Value2
].
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack2 := (recoveredStack2) collect: (recoveredStack3).
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            (recoveredStack1) addAll: (recoveredStack2).
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x205ee7a0; bytecode file offset 0xeeb104"
!SGStatementBlockWrapperGO methodsFor: 'recovered'!
prepareCallsWhileMovedFrom: recoveredArg1 toOther: recoveredArg2 prepareCalls: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [:block2811b660Arg1 | 
    | block2811b660Value0 block2811b660Value1 block2811b660Value2 |
    block2811b660Value0 := block2811b660Arg1.
    block2811b660Value1 := (block2811b660Value0) at: (2).
    block2811b660Value2 := (block2811b660Value1) isCallConnector.
    block2811b660Value2
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := [:recoveredBlock30Arg1 | 
    | recoveredBlock30Local1 recoveredBlock30Local2 recoveredBlock30Local3 recoveredBlock30Local4 recoveredBlock30Local5 recoveredBlock30Stack0 recoveredBlock30Stack1 recoveredBlock30Stack2 recoveredBlock30Stack3 recoveredBlock30Stack4 recoveredBlock30Stack5 recoveredBlock30Stack6 recoveredBlock30PC recoveredBlock30Step recoveredBlock30Done recoveredBlock30Result |
    recoveredBlock30Stack0 := self.
    recoveredBlock30PC := 36.
    recoveredBlock30Done := false.
    [recoveredBlock30Done not] whileTrue: [
        recoveredBlock30Step := recoveredBlock30PC.
        recoveredBlock30Step = 36 ifTrue: [
            recoveredBlock30Stack1 := recoveredBlock30Arg1.
            recoveredBlock30PC := 38.
        ].
        recoveredBlock30Step = 38 ifTrue: [
            recoveredBlock30Stack2 := 1.
            recoveredBlock30PC := 40.
        ].
        recoveredBlock30Step = 40 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) at: (recoveredBlock30Stack2).
            recoveredBlock30PC := 41.
        ].
        recoveredBlock30Step = 41 ifTrue: [
            recoveredBlock30Local5 := recoveredBlock30Stack1.
            recoveredBlock30PC := 43.
        ].
        recoveredBlock30Step = 43 ifTrue: [
            recoveredBlock30Stack1 := recoveredBlock30Arg1.
            recoveredBlock30PC := 45.
        ].
        recoveredBlock30Step = 45 ifTrue: [
            recoveredBlock30Stack2 := 2.
            recoveredBlock30PC := 47.
        ].
        recoveredBlock30Step = 47 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) at: (recoveredBlock30Stack2).
            recoveredBlock30PC := 48.
        ].
        recoveredBlock30Step = 48 ifTrue: [
            recoveredBlock30Local4 := recoveredBlock30Stack1.
            recoveredBlock30PC := 49.
        ].
        recoveredBlock30Step = 49 ifTrue: [
            recoveredBlock30Stack1 := recoveredBlock30Arg1.
            recoveredBlock30PC := 51.
        ].
        recoveredBlock30Step = 51 ifTrue: [
            recoveredBlock30Stack2 := 3.
            recoveredBlock30PC := 53.
        ].
        recoveredBlock30Step = 53 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) at: (recoveredBlock30Stack2).
            recoveredBlock30PC := 54.
        ].
        recoveredBlock30Step = 54 ifTrue: [
            recoveredBlock30Local3 := recoveredBlock30Stack1.
            recoveredBlock30PC := 55.
        ].
        recoveredBlock30Step = 55 ifTrue: [
            recoveredBlock30Stack1 := recoveredLocal5.
            recoveredBlock30PC := 58.
        ].
        recoveredBlock30Step = 58 ifTrue: [
            (recoveredBlock30Stack1) ifTrue: [recoveredBlock30PC := 62] ifFalse: [recoveredBlock30PC := 158].
        ].
        recoveredBlock30Step = 62 ifTrue: [
            recoveredBlock30Stack1 := recoveredBlock30Local4.
            recoveredBlock30PC := 63.
        ].
        recoveredBlock30Step = 63 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) isCallConnector.
            recoveredBlock30PC := 64.
        ].
        recoveredBlock30Step = 64 ifTrue: [
            (recoveredBlock30Stack1) ifTrue: [recoveredBlock30PC := 68] ifFalse: [recoveredBlock30PC := 158].
        ].
        recoveredBlock30Step = 68 ifTrue: [
            recoveredBlock30Stack1 := recoveredBlock30Local3.
            recoveredBlock30PC := 69.
        ].
        recoveredBlock30Step = 69 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) connectionPoint.
            recoveredBlock30PC := 71.
        ].
        recoveredBlock30Step = 71 ifTrue: [
            recoveredBlock30Stack2 := recoveredBlock30Local5.
            recoveredBlock30PC := 73.
        ].
        recoveredBlock30Step = 73 ifTrue: [
            (recoveredBlock30Stack1) removeConnection: (recoveredBlock30Stack2).
            recoveredBlock30PC := 75.
        ].
        recoveredBlock30Step = 75 ifTrue: [
            recoveredBlock30Stack1 := recoveredArg1.
            recoveredBlock30PC := 78.
        ].
        recoveredBlock30Step = 78 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) contents.
            recoveredBlock30PC := 80.
        ].
        recoveredBlock30Step = 80 ifTrue: [
            recoveredBlock30Stack2 := recoveredBlock30Local5.
            recoveredBlock30PC := 82.
        ].
        recoveredBlock30Step = 82 ifTrue: [
            recoveredBlock30Stack3 := true.
            recoveredBlock30PC := 83.
        ].
        recoveredBlock30Step = 83 ifTrue: [
            (recoveredBlock30Stack1) removeGO: (recoveredBlock30Stack2) display: (recoveredBlock30Stack3).
            recoveredBlock30PC := 85.
        ].
        recoveredBlock30Step = 85 ifTrue: [
            recoveredBlock30Stack1 := self.
            recoveredBlock30PC := 86.
        ].
        recoveredBlock30Step = 86 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) graphObject.
            recoveredBlock30PC := 88.
        ].
        recoveredBlock30Step = 88 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) interfaceGOs.
            recoveredBlock30PC := 90.
        ].
        recoveredBlock30Step = 90 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) first.
            recoveredBlock30PC := 92.
        ].
        recoveredBlock30Step = 92 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) getSGCallGO.
            recoveredBlock30PC := 94.
        ].
        recoveredBlock30Step = 94 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) createPin.
            recoveredBlock30PC := 96.
        ].
        recoveredBlock30Step = 96 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) interfaceElementGO.
            recoveredBlock30PC := 98.
        ].
        recoveredBlock30Step = 98 ifTrue: [
            recoveredBlock30Local1 := recoveredBlock30Stack1.
            recoveredBlock30PC := 99.
        ].
        recoveredBlock30Step = 99 ifTrue: [
            recoveredBlock30Stack1 := SGConnectionWrapperGO.
            recoveredBlock30PC := 101.
        ].
        recoveredBlock30Step = 101 ifTrue: [
            recoveredBlock30Stack2 := SGOrthogonalLineGO.
            recoveredBlock30PC := 103.
        ].
        recoveredBlock30Step = 103 ifTrue: [
            recoveredBlock30Stack3 := ConnectionLineStyle.
            recoveredBlock30PC := 105.
        ].
        recoveredBlock30Step = 105 ifTrue: [
            recoveredBlock30Stack4 := nil.
            recoveredBlock30PC := 106.
        ].
        recoveredBlock30Step = 106 ifTrue: [
            recoveredBlock30Stack2 := (recoveredBlock30Stack2) createWithLineStyle: (recoveredBlock30Stack3) manager: (recoveredBlock30Stack4).
            recoveredBlock30PC := 108.
        ].
        recoveredBlock30Step = 108 ifTrue: [
            recoveredBlock30Stack3 := recoveredBlock30Local3.
            recoveredBlock30PC := 109.
        ].
        recoveredBlock30Step = 109 ifTrue: [
            recoveredBlock30Stack3 := (recoveredBlock30Stack3) connectionPoint.
            recoveredBlock30PC := 111.
        ].
        recoveredBlock30Step = 111 ifTrue: [
            recoveredBlock30Stack4 := recoveredBlock30Local1.
            recoveredBlock30PC := 112.
        ].
        recoveredBlock30Step = 112 ifTrue: [
            recoveredBlock30Stack4 := (recoveredBlock30Stack4) externalConnectorGO.
            recoveredBlock30PC := 114.
        ].
        recoveredBlock30Step = 114 ifTrue: [
            recoveredBlock30Stack4 := (recoveredBlock30Stack4) connectionPoint.
            recoveredBlock30PC := 116.
        ].
        recoveredBlock30Step = 116 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) createWith: (recoveredBlock30Stack2) startPoint: (recoveredBlock30Stack3) endPoint: (recoveredBlock30Stack4).
            recoveredBlock30PC := 119.
        ].
        recoveredBlock30Step = 119 ifTrue: [
            recoveredBlock30Local2 := recoveredBlock30Stack1.
            recoveredBlock30PC := 120.
        ].
        recoveredBlock30Step = 120 ifTrue: [
            recoveredBlock30Stack1 := recoveredArg1.
            recoveredBlock30PC := 123.
        ].
        recoveredBlock30Step = 123 ifTrue: [
            recoveredBlock30Stack2 := recoveredBlock30Local2.
            recoveredBlock30PC := 124.
        ].
        recoveredBlock30Step = 124 ifTrue: [
            recoveredBlock30Stack3 := false.
            recoveredBlock30PC := 125.
        ].
        recoveredBlock30Step = 125 ifTrue: [
            (recoveredBlock30Stack1) addChildGO: (recoveredBlock30Stack2) display: (recoveredBlock30Stack3).
            recoveredBlock30PC := 127.
        ].
        recoveredBlock30Step = 127 ifTrue: [
            recoveredBlock30Stack1 := recoveredBlock30Local4.
            recoveredBlock30PC := 128.
        ].
        recoveredBlock30Step = 128 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) owner.
            recoveredBlock30PC := 130.
        ].
        recoveredBlock30Step = 130 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) manager.
            recoveredBlock30PC := 132.
        ].
        recoveredBlock30Step = 132 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) manager.
            recoveredBlock30PC := 134.
        ].
        recoveredBlock30Step = 134 ifTrue: [
            recoveredBlock30Stack2 := [:block2811b684Arg1 | 
    | block2811b684Value0 block2811b684Value1 block2811b684Value2 |
    block2811b684Value0 := block2811b684Arg1.
    (block2811b684Value0) interfaceElementGO: (nil).
    block2811b684Value1 := block2811b684Arg1.
    block2811b684Value2 := (block2811b684Value1) moveToStatementBlock.
    block2811b684Value2
].
            recoveredBlock30PC := 136.
        ].
        recoveredBlock30Step = 136 ifTrue: [
            recoveredBlock30PC := 148.
        ].
        recoveredBlock30Step = 148 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) ifNotNil: (recoveredBlock30Stack2).
            recoveredBlock30PC := 150.
        ].
        recoveredBlock30Step = 150 ifTrue: [
            recoveredBlock30Stack2 := nil.
            recoveredBlock30PC := 151.
        ].
        recoveredBlock30Step = 151 ifTrue: [
            recoveredBlock30Stack3 := recoveredBlock30Stack2.
            recoveredBlock30PC := 152.
        ].
        recoveredBlock30Step = 152 ifTrue: [
            recoveredBlock30Local2 := recoveredBlock30Stack3.
            recoveredBlock30PC := 153.
        ].
        recoveredBlock30Step = 153 ifTrue: [
            recoveredBlock30Local1 := recoveredBlock30Stack2.
            recoveredBlock30PC := 154.
        ].
        recoveredBlock30Step = 154 ifTrue: [
            recoveredBlock30PC := 169.
        ].
        recoveredBlock30Step = 158 ifTrue: [
            recoveredBlock30Stack1 := recoveredArg1.
            recoveredBlock30PC := 161.
        ].
        recoveredBlock30Step = 161 ifTrue: [
            recoveredBlock30Stack2 := self.
            recoveredBlock30PC := 162.
        ].
        recoveredBlock30Step = 162 ifTrue: [
            recoveredBlock30Stack3 := recoveredBlock30Local5.
            recoveredBlock30PC := 164.
        ].
        recoveredBlock30Step = 164 ifTrue: [
            recoveredBlock30Stack4 := recoveredBlock30Local4.
            recoveredBlock30PC := 165.
        ].
        recoveredBlock30Step = 165 ifTrue: [
            recoveredBlock30Stack5 := recoveredBlock30Local3.
            recoveredBlock30PC := 166.
        ].
        recoveredBlock30Step = 166 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) addPortFor: (recoveredBlock30Stack2) conn: (recoveredBlock30Stack3) gOInside: (recoveredBlock30Stack4) gOOutside: (recoveredBlock30Stack5).
            recoveredBlock30PC := 169.
        ].
        recoveredBlock30Step = 169 ifTrue: [
            recoveredBlock30Result := recoveredBlock30Stack1.
            recoveredBlock30Done := true.
        ].
    ].
    recoveredBlock30Result
].
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack0 := (recoveredStack0) gOsForSeqCallTransforming.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack1 := [:recoveredBlock185Arg1 | 
    | recoveredBlock185Stack0 recoveredBlock185Stack1 recoveredBlock185Stack2 recoveredBlock185Stack3 recoveredBlock185PC recoveredBlock185Step recoveredBlock185Done recoveredBlock185Result |
    recoveredBlock185Stack0 := self.
    recoveredBlock185PC := 192.
    recoveredBlock185Done := false.
    [recoveredBlock185Done not] whileTrue: [
        recoveredBlock185Step := recoveredBlock185PC.
        recoveredBlock185Step = 192 ifTrue: [
            recoveredBlock185Stack1 := recoveredBlock185Arg1.
            recoveredBlock185PC := 195.
        ].
        recoveredBlock185Step = 195 ifTrue: [
            recoveredBlock185Stack1 := (recoveredBlock185Stack1) interfaceGOs.
            recoveredBlock185PC := 197.
        ].
        recoveredBlock185Step = 197 ifTrue: [
            recoveredBlock185Stack2 := [:block2811b6a8Arg1 | 
    | block2811b6a8Value0 block2811b6a8Value1 |
    block2811b6a8Value0 := block2811b6a8Arg1.
    block2811b6a8Value1 := (block2811b6a8Value0) isSelectorPort.
    block2811b6a8Value1
].
            recoveredBlock185PC := 199.
        ].
        recoveredBlock185Step = 199 ifTrue: [
            recoveredBlock185PC := 206.
        ].
        recoveredBlock185Step = 206 ifTrue: [
            recoveredBlock185Stack1 := (recoveredBlock185Stack1) select: (recoveredBlock185Stack2).
            recoveredBlock185PC := 207.
        ].
        recoveredBlock185Step = 207 ifTrue: [
            recoveredBlock185Stack2 := [:recoveredBlock185Block207Arg1 | 
    | recoveredBlock185Block207Stack0 recoveredBlock185Block207Stack1 recoveredBlock185Block207Stack2 recoveredBlock185Block207Stack3 recoveredBlock185Block207Stack4 recoveredBlock185Block207PC recoveredBlock185Block207Step recoveredBlock185Block207Done recoveredBlock185Block207Result |
    recoveredBlock185Block207Stack0 := nil.
    recoveredBlock185Block207PC := 214.
    recoveredBlock185Block207Done := false.
    [recoveredBlock185Block207Done not] whileTrue: [
        recoveredBlock185Block207Step := recoveredBlock185Block207PC.
        recoveredBlock185Block207Step = 214 ifTrue: [
            recoveredBlock185Block207Stack1 := nil.
            recoveredBlock185Block207PC := 215.
        ].
        recoveredBlock185Block207Step = 215 ifTrue: [
            recoveredBlock185Block207Stack2 := recoveredBlock185Block207Arg1.
            recoveredBlock185Block207PC := 216.
        ].
        recoveredBlock185Block207Step = 216 ifTrue: [
            recoveredBlock185Block207Stack2 := (recoveredBlock185Block207Stack2) getSGCallGO.
            recoveredBlock185Block207PC := 218.
        ].
        recoveredBlock185Block207Step = 218 ifTrue: [
            (recoveredBlock185Block207Stack2 == nil) ifTrue: [recoveredBlock185Block207PC := 331] ifFalse: [recoveredBlock185Block207PC := 222].
        ].
        recoveredBlock185Block207Step = 222 ifTrue: [
            recoveredBlock185Block207Stack2 := recoveredBlock185Block207Arg1.
            recoveredBlock185Block207PC := 223.
        ].
        recoveredBlock185Block207Step = 223 ifTrue: [
            recoveredBlock185Block207Stack2 := (recoveredBlock185Block207Stack2) getSGCallGO.
            recoveredBlock185Block207PC := 225.
        ].
        recoveredBlock185Block207Step = 225 ifTrue: [
            recoveredBlock185Block207Stack2 := (recoveredBlock185Block207Stack2) seqAlias.
            recoveredBlock185Block207PC := 227.
        ].
        recoveredBlock185Block207Step = 227 ifTrue: [
            (recoveredBlock185Block207Stack2 == nil) ifTrue: [recoveredBlock185Block207PC := 331] ifFalse: [recoveredBlock185Block207PC := 230].
        ].
        recoveredBlock185Block207Step = 230 ifTrue: [
            recoveredBlock185Block207PC := 231.
        ].
        recoveredBlock185Block207Step = 231 ifTrue: [
            recoveredBlock185Block207Stack1 := nil.
            recoveredBlock185Block207PC := 232.
        ].
        recoveredBlock185Block207Step = 232 ifTrue: [
            recoveredBlock185Block207Stack2 := recoveredArg3.
            recoveredBlock185Block207PC := 235.
        ].
        recoveredBlock185Block207Step = 235 ifTrue: [
            recoveredBlock185Block207Stack2 := (recoveredBlock185Block207Stack2) isEmpty.
            recoveredBlock185Block207PC := 237.
        ].
        recoveredBlock185Block207Step = 237 ifTrue: [
            (recoveredBlock185Block207Stack2) ifTrue: [recoveredBlock185Block207PC := 252] ifFalse: [recoveredBlock185Block207PC := 240].
        ].
        recoveredBlock185Block207Step = 240 ifTrue: [
            recoveredBlock185Block207Stack2 := recoveredArg3.
            recoveredBlock185Block207PC := 243.
        ].
        recoveredBlock185Block207Step = 243 ifTrue: [
            recoveredBlock185Block207Stack3 := recoveredBlock185Arg1.
            recoveredBlock185Block207PC := 246.
        ].
        recoveredBlock185Block207Step = 246 ifTrue: [
            recoveredBlock185Block207Stack2 := (recoveredBlock185Block207Stack2) includes: (recoveredBlock185Block207Stack3).
            recoveredBlock185Block207PC := 248.
        ].
        recoveredBlock185Block207Step = 248 ifTrue: [
            (recoveredBlock185Block207Stack2) ifTrue: [recoveredBlock185Block207PC := 252] ifFalse: [recoveredBlock185Block207PC := 331].
        ].
        recoveredBlock185Block207Step = 252 ifTrue: [
            recoveredBlock185Block207PC := 253.
        ].
        recoveredBlock185Block207Step = 253 ifTrue: [
            recoveredBlock185Block207Stack1 := recoveredBlock185Block207Arg1.
            recoveredBlock185Block207PC := 254.
        ].
        recoveredBlock185Block207Step = 254 ifTrue: [
            recoveredBlock185Block207Stack1 := (recoveredBlock185Block207Stack1) getSGCallGO.
            recoveredBlock185Block207PC := 256.
        ].
        recoveredBlock185Block207Step = 256 ifTrue: [
            recoveredBlock185Block207Stack1 := (recoveredBlock185Block207Stack1) seqNo.
            recoveredBlock185Block207PC := 258.
        ].
        recoveredBlock185Block207Step = 258 ifTrue: [
            recoveredLocal1 := recoveredBlock185Block207Stack1.
            recoveredBlock185Block207PC := 261.
        ].
        recoveredBlock185Block207Step = 261 ifTrue: [
            recoveredBlock185Block207Stack1 := recoveredLocal1.
            recoveredBlock185Block207PC := 264.
        ].
        recoveredBlock185Block207Step = 264 ifTrue: [
            (recoveredBlock185Block207Stack1 == nil) ifTrue: [recoveredBlock185Block207PC := 316] ifFalse: [recoveredBlock185Block207PC := 268].
        ].
        recoveredBlock185Block207Step = 268 ifTrue: [
            recoveredBlock185Block207Stack1 := recoveredLocal1.
            recoveredBlock185Block207PC := 271.
        ].
        recoveredBlock185Block207Step = 271 ifTrue: [
            recoveredBlock185Block207Stack2 := 0.
            recoveredBlock185Block207PC := 273.
        ].
        recoveredBlock185Block207Step = 273 ifTrue: [
            recoveredBlock185Block207Stack1 := (recoveredBlock185Block207Stack1) ~= (recoveredBlock185Block207Stack2).
            recoveredBlock185Block207PC := 274.
        ].
        recoveredBlock185Block207Step = 274 ifTrue: [
            (recoveredBlock185Block207Stack1) ifTrue: [recoveredBlock185Block207PC := 278] ifFalse: [recoveredBlock185Block207PC := 316].
        ].
        recoveredBlock185Block207Step = 278 ifTrue: [
            recoveredBlock185Block207Stack1 := recoveredLocal4.
            recoveredBlock185Block207PC := 281.
        ].
        recoveredBlock185Block207Step = 281 ifTrue: [
            (recoveredBlock185Block207Stack1 == nil) ifTrue: [recoveredBlock185Block207PC := 302] ifFalse: [recoveredBlock185Block207PC := 284].
        ].
        recoveredBlock185Block207Step = 284 ifTrue: [
            recoveredBlock185Block207Stack1 := recoveredLocal4.
            recoveredBlock185Block207PC := 287.
        ].
        recoveredBlock185Block207Step = 287 ifTrue: [
            (recoveredBlock185Block207Stack1 == nil) ifTrue: [recoveredBlock185Block207PC := 316] ifFalse: [recoveredBlock185Block207PC := 290].
        ].
        recoveredBlock185Block207Step = 290 ifTrue: [
            recoveredBlock185Block207Stack1 := recoveredLocal1.
            recoveredBlock185Block207PC := 293.
        ].
        recoveredBlock185Block207Step = 293 ifTrue: [
            recoveredBlock185Block207Stack2 := recoveredLocal4.
            recoveredBlock185Block207PC := 296.
        ].
        recoveredBlock185Block207Step = 296 ifTrue: [
            recoveredBlock185Block207Stack2 := (recoveredBlock185Block207Stack2) seqNo.
            recoveredBlock185Block207PC := 298.
        ].
        recoveredBlock185Block207Step = 298 ifTrue: [
            recoveredBlock185Block207Stack1 := (recoveredBlock185Block207Stack1) < (recoveredBlock185Block207Stack2).
            recoveredBlock185Block207PC := 299.
        ].
        recoveredBlock185Block207Step = 299 ifTrue: [
            (recoveredBlock185Block207Stack1) ifTrue: [recoveredBlock185Block207PC := 302] ifFalse: [recoveredBlock185Block207PC := 316].
        ].
        recoveredBlock185Block207Step = 302 ifTrue: [
            recoveredBlock185Block207Stack1 := recoveredBlock185Block207Arg1.
            recoveredBlock185Block207PC := 303.
        ].
        recoveredBlock185Block207Step = 303 ifTrue: [
            recoveredBlock185Block207Stack1 := (recoveredBlock185Block207Stack1) getSGCallGO.
            recoveredBlock185Block207PC := 305.
        ].
        recoveredBlock185Block207Step = 305 ifTrue: [
            recoveredLocal4 := recoveredBlock185Block207Stack1.
            recoveredBlock185Block207PC := 308.
        ].
        recoveredBlock185Block207Step = 308 ifTrue: [
            recoveredBlock185Block207Stack1 := recoveredLocal4.
            recoveredBlock185Block207PC := 311.
        ].
        recoveredBlock185Block207Step = 311 ifTrue: [
            recoveredBlock185Block207Stack1 := (recoveredBlock185Block207Stack1) seqAlias.
            recoveredBlock185Block207PC := 313.
        ].
        recoveredBlock185Block207Step = 313 ifTrue: [
            recoveredLocal3 := recoveredBlock185Block207Stack1.
            recoveredBlock185Block207PC := 316.
        ].
        recoveredBlock185Block207Step = 316 ifTrue: [
            recoveredBlock185Block207Stack1 := recoveredLocal2.
            recoveredBlock185Block207PC := 319.
        ].
        recoveredBlock185Block207Step = 319 ifTrue: [
            recoveredBlock185Block207Stack2 := recoveredBlock185Block207Arg1.
            recoveredBlock185Block207PC := 320.
        ].
        recoveredBlock185Block207Step = 320 ifTrue: [
            recoveredBlock185Block207Stack2 := (recoveredBlock185Block207Stack2) getSGCallGO.
            recoveredBlock185Block207PC := 322.
        ].
        recoveredBlock185Block207Step = 322 ifTrue: [
            recoveredBlock185Block207Stack2 := (recoveredBlock185Block207Stack2) seqAlias.
            recoveredBlock185Block207PC := 324.
        ].
        recoveredBlock185Block207Step = 324 ifTrue: [
            (recoveredBlock185Block207Stack1) add: (recoveredBlock185Block207Stack2).
            recoveredBlock185Block207PC := 326.
        ].
        recoveredBlock185Block207Step = 326 ifTrue: [
            recoveredBlock185Block207Stack1 := recoveredBlock185Block207Arg1.
            recoveredBlock185Block207PC := 327.
        ].
        recoveredBlock185Block207Step = 327 ifTrue: [
            recoveredBlock185Block207Stack1 := (recoveredBlock185Block207Stack1) getSGCallGO.
            recoveredBlock185Block207PC := 329.
        ].
        recoveredBlock185Block207Step = 329 ifTrue: [
            recoveredBlock185Block207Stack1 := (recoveredBlock185Block207Stack1) moveToStatementBlock.
            recoveredBlock185Block207PC := 331.
        ].
        recoveredBlock185Block207Step = 331 ifTrue: [
            recoveredBlock185Block207Result := recoveredBlock185Block207Stack1.
            recoveredBlock185Block207Done := true.
        ].
    ].
    recoveredBlock185Block207Result
].
            recoveredBlock185PC := 332.
        ].
        recoveredBlock185Step = 332 ifTrue: [
            recoveredBlock185Stack1 := (recoveredBlock185Stack1) do: (recoveredBlock185Stack2).
            recoveredBlock185PC := 334.
        ].
        recoveredBlock185Step = 334 ifTrue: [
            recoveredBlock185Result := recoveredBlock185Stack1.
            recoveredBlock185Done := true.
        ].
    ].
    recoveredBlock185Result
].
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSet.
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 350] ifFalse: [recoveredPC := 403].
        ].
        recoveredStep = 350 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 372] ifFalse: [recoveredPC := 356].
        ].
        recoveredStep = 356 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            recoveredStack0 := (recoveredStack0) graphObject.
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceGOs.
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            recoveredStack0 := (recoveredStack0) getSGCallGO.
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 368.
        ].
        recoveredStep = 368 ifTrue: [
            recoveredStack1 := (recoveredStack1) seqNo.
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            (recoveredStack0) seqNo: (recoveredStack1).
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 392] ifFalse: [recoveredPC := 378].
        ].
        recoveredStep = 378 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 379.
        ].
        recoveredStep = 379 ifTrue: [
            recoveredStack0 := (recoveredStack0) graphObject.
            recoveredPC := 381.
        ].
        recoveredStep = 381 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceGOs.
            recoveredPC := 383.
        ].
        recoveredStep = 383 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 385.
        ].
        recoveredStep = 385 ifTrue: [
            recoveredStack0 := (recoveredStack0) getSGCallGO.
            recoveredPC := 387.
        ].
        recoveredStep = 387 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 390.
        ].
        recoveredStep = 390 ifTrue: [
            (recoveredStack0) seqAlias: (recoveredStack1).
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 393.
        ].
        recoveredStep = 393 ifTrue: [
            recoveredStack0 := (recoveredStack0) graphObject.
            recoveredPC := 395.
        ].
        recoveredStep = 395 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceGOs.
            recoveredPC := 397.
        ].
        recoveredStep = 397 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 399.
        ].
        recoveredStep = 399 ifTrue: [
            recoveredStack0 := (recoveredStack0) getSGCallGO.
            recoveredPC := 401.
        ].
        recoveredStep = 401 ifTrue: [
            (recoveredStack0) updateLabelGOWithDisplay.
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 404.
        ].
        recoveredStep = 404 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

