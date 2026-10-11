"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2003d0a8; bytecode file offset 0x93bf94"
!SGMdAbstractMappingCollector methodsFor: 'recovered'!
mdlBuilder
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGMdBuilder.
    recoveredValue1 := (recoveredValue0) currentMdlBuilder.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20131ad4; bytecode file offset 0xa2e3f8"
!SGMdAbstractMappingCollector methodsFor: 'recovered'!
sortedErrLabels: recoveredArg1
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
            recoveredStack2 := [:block280caf08Arg1 :block280caf08Arg2 | 
    | block280caf08Value0 block280caf08Value1 block280caf08Value2 block280caf08Value3 block280caf08Value4 |
    block280caf08Value0 := block280caf08Arg1.
    block280caf08Value1 := (block280caf08Value0) errLabel.
    block280caf08Value2 := block280caf08Arg2.
    block280caf08Value3 := (block280caf08Value2) errLabel.
    block280caf08Value4 := (block280caf08Value1) < (block280caf08Value3).
    block280caf08Value4
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20132cb8; bytecode file offset 0xa2f578"
!SGMdAbstractMappingCollector methodsFor: 'recovered'!
isValidMappingMultipleTargets: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 'can not be mapped from more than one element'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201a30b8; bytecode file offset 0xa9f980"
!SGMdAbstractMappingCollector methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    super initialize.
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    map := recoveredValue1.
    recoveredValue2 := LookupTable.
    recoveredValue3 := (recoveredValue2) new.
    multipleSources := recoveredValue3.
    recoveredValue4 := LookupTable.
    recoveredValue5 := (recoveredValue4) new.
    multipleTargets := recoveredValue5.
    ^self
! !

"ASDBase.ic method 0x202c6a04; bytecode file offset 0xbc32d8"
!SGMdAbstractMappingCollector methodsFor: 'recovered'!
addMapping: recoveredArg1 name: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := multipleSources.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := [
    | block280e56e0Value0 block280e56e0Value1 |
    block280e56e0Value0 := OrderedCollection.
    block280e56e0Value1 := (block280e56e0Value0) new.
    block280e56e0Value1
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsentPut: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasTarget.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 47].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := multipleTargets.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) instancePathTarget.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := [
    | block280e5704Value0 block280e5704Value1 |
    block280e5704Value0 := OrderedCollection.
    block280e5704Value1 := (block280e5704Value0) new.
    block280e5704Value1
].
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsentPut: (recoveredStack3).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20497094; bytecode file offset 0xd9398c"
!SGMdAbstractMappingCollector methodsFor: 'recovered'!
isValidMappingMultipleSources: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := map.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) first.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) instancePathSource.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) asCollection.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := [:block28103bd0Arg1 | 
    | block28103bd0Value0 block28103bd0Value1 |
    block28103bd0Value0 := block28103bd0Arg1.
    block28103bd0Value1 := (block28103bd0Value0) isMdInternalMapping.
    block28103bd0Value1
].
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 51].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := 'must be mapped at most once to an inter-runnable variable'.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) asCollection.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := [:block28103bf4Arg1 | 
    | block28103bf4Stack0 block28103bf4Stack1 block28103bf4Stack2 block28103bf4Stack3 block28103bf4PC block28103bf4Step block28103bf4Done block28103bf4Result |
    block28103bf4Stack0 := self.
    block28103bf4PC := 4.
    block28103bf4Done := false.
    [block28103bf4Done not] whileTrue: [
        block28103bf4Step := block28103bf4PC.
        block28103bf4Step = 4 ifTrue: [
            block28103bf4Stack1 := false.
            block28103bf4PC := 5.
        ].
        block28103bf4Step = 5 ifTrue: [
            block28103bf4Stack2 := block28103bf4Arg1.
            block28103bf4PC := 6.
        ].
        block28103bf4Step = 6 ifTrue: [
            block28103bf4Stack2 := (block28103bf4Stack2) isMdExternalMapping.
            block28103bf4PC := 8.
        ].
        block28103bf4Step = 8 ifTrue: [
            (block28103bf4Stack2) ifTrue: [block28103bf4PC := 12] ifFalse: [block28103bf4PC := 16].
        ].
        block28103bf4Step = 12 ifTrue: [
            block28103bf4PC := 13.
        ].
        block28103bf4Step = 13 ifTrue: [
            block28103bf4Stack1 := block28103bf4Arg1.
            block28103bf4PC := 14.
        ].
        block28103bf4Step = 14 ifTrue: [
            block28103bf4Stack1 := (block28103bf4Stack1) isMdlProvidePort.
            block28103bf4PC := 16.
        ].
        block28103bf4Step = 16 ifTrue: [
            block28103bf4Result := block28103bf4Stack1.
            block28103bf4Done := true.
        ].
    ].
    block28103bf4Result
].
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) asCollection.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := [:block28103c18Arg1 | 
    | block28103c18Stack0 block28103c18Stack1 block28103c18Stack2 block28103c18Stack3 block28103c18PC block28103c18Step block28103c18Done block28103c18Result |
    block28103c18Stack0 := self.
    block28103c18PC := 4.
    block28103c18Done := false.
    [block28103c18Done not] whileTrue: [
        block28103c18Step := block28103c18PC.
        block28103c18Step = 4 ifTrue: [
            block28103c18Stack1 := false.
            block28103c18PC := 5.
        ].
        block28103c18Step = 5 ifTrue: [
            block28103c18Stack2 := block28103c18Arg1.
            block28103c18PC := 6.
        ].
        block28103c18Step = 6 ifTrue: [
            block28103c18Stack2 := (block28103c18Stack2) isMdExternalMapping.
            block28103c18PC := 8.
        ].
        block28103c18Step = 8 ifTrue: [
            (block28103c18Stack2) ifTrue: [block28103c18PC := 12] ifFalse: [block28103c18PC := 16].
        ].
        block28103c18Step = 12 ifTrue: [
            block28103c18PC := 13.
        ].
        block28103c18Step = 13 ifTrue: [
            block28103c18Stack1 := block28103c18Arg1.
            block28103c18PC := 14.
        ].
        block28103c18Step = 14 ifTrue: [
            block28103c18Stack1 := (block28103c18Stack1) isMdlRequirePort.
            block28103c18PC := 16.
        ].
        block28103c18Step = 16 ifTrue: [
            block28103c18Result := block28103c18Stack1.
            block28103c18Done := true.
        ].
    ].
    block28103c18Result
].
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 110] ifFalse: [recoveredPC := 113].
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := 'must be mapped at most once when the target is a require port'.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 120] ifFalse: [recoveredPC := 131].
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 128] ifFalse: [recoveredPC := 131].
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := 'can not be mapped to both a require and a provide port'.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x205bb770; bytecode file offset 0xeb8090"
!SGMdAbstractMappingCollector methodsFor: 'recovered'!
analyseMappings: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := map.
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
            (recoveredBlock6Stack2 == nil) ifTrue: [recoveredBlock6PC := 23] ifFalse: [recoveredBlock6PC := 18].
        ].
        recoveredBlock6Step = 18 ifTrue: [
            recoveredBlock6PC := 19.
        ].
        recoveredBlock6Step = 19 ifTrue: [
            recoveredBlock6Stack1 := self.
            recoveredBlock6PC := 20.
        ].
        recoveredBlock6Step = 20 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) mdlBuilder.
            recoveredBlock6PC := 21.
        ].
        recoveredBlock6Step = 21 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Arg1.
            recoveredBlock6PC := 22.
        ].
        recoveredBlock6Step = 22 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) analyseMapping: (recoveredBlock6Stack2).
            recoveredBlock6PC := 23.
        ].
        recoveredBlock6Step = 23 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack1.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := multipleSources.
    recoveredValue3 := [:recoveredBlock28Arg1 :recoveredBlock28Arg2 | 
    | recoveredBlock28Local1 recoveredBlock28Local2 recoveredBlock28Local3 recoveredBlock28Stack0 recoveredBlock28Stack1 recoveredBlock28Stack2 recoveredBlock28Stack3 recoveredBlock28Stack4 recoveredBlock28Stack5 recoveredBlock28Stack6 recoveredBlock28Stack7 recoveredBlock28Stack8 recoveredBlock28PC recoveredBlock28Step recoveredBlock28Done recoveredBlock28Result |
    recoveredBlock28Stack0 := self.
    recoveredBlock28PC := 34.
    recoveredBlock28Done := false.
    [recoveredBlock28Done not] whileTrue: [
        recoveredBlock28Step := recoveredBlock28PC.
        recoveredBlock28Step = 34 ifTrue: [
            recoveredBlock28Stack1 := nil.
            recoveredBlock28PC := 35.
        ].
        recoveredBlock28Step = 35 ifTrue: [
            recoveredBlock28Stack2 := self.
            recoveredBlock28PC := 36.
        ].
        recoveredBlock28Step = 36 ifTrue: [
            recoveredBlock28Stack3 := recoveredBlock28Arg2.
            recoveredBlock28PC := 39.
        ].
        recoveredBlock28Step = 39 ifTrue: [
            recoveredBlock28Stack2 := (recoveredBlock28Stack2) isValidMappingMultipleSources: (recoveredBlock28Stack3).
            recoveredBlock28PC := 40.
        ].
        recoveredBlock28Step = 40 ifTrue: [
            recoveredBlock28Stack3 := recoveredBlock28Stack2.
            recoveredBlock28PC := 41.
        ].
        recoveredBlock28Step = 41 ifTrue: [
            recoveredLocal1 := recoveredBlock28Stack3.
            recoveredBlock28PC := 44.
        ].
        recoveredBlock28Step = 44 ifTrue: [
            recoveredBlock28Stack2 := (recoveredBlock28Stack2) isEmpty.
            recoveredBlock28PC := 46.
        ].
        recoveredBlock28Step = 46 ifTrue: [
            (recoveredBlock28Stack2) ifTrue: [recoveredBlock28PC := 169] ifFalse: [recoveredBlock28PC := 50].
        ].
        recoveredBlock28Step = 50 ifTrue: [
            recoveredBlock28PC := 51.
        ].
        recoveredBlock28Step = 51 ifTrue: [
            recoveredBlock28Stack1 := ''.
            recoveredBlock28PC := 53.
        ].
        recoveredBlock28Step = 53 ifTrue: [
            recoveredBlock28Local3 := recoveredBlock28Stack1.
            recoveredBlock28PC := 56.
        ].
        recoveredBlock28Step = 56 ifTrue: [
            recoveredBlock28Stack1 := OrderedCollection.
            recoveredBlock28PC := 58.
        ].
        recoveredBlock28Step = 58 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) new.
            recoveredBlock28PC := 60.
        ].
        recoveredBlock28Step = 60 ifTrue: [
            recoveredBlock28Local1 := recoveredBlock28Stack1.
            recoveredBlock28PC := 63.
        ].
        recoveredBlock28Step = 63 ifTrue: [
            recoveredBlock28Stack1 := OrderedCollection.
            recoveredBlock28PC := 65.
        ].
        recoveredBlock28Step = 65 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) new.
            recoveredBlock28PC := 67.
        ].
        recoveredBlock28Step = 67 ifTrue: [
            recoveredBlock28Local2 := recoveredBlock28Stack1.
            recoveredBlock28PC := 70.
        ].
        recoveredBlock28Step = 70 ifTrue: [
            recoveredBlock28Stack1 := recoveredBlock28Arg2.
            recoveredBlock28PC := 73.
        ].
        recoveredBlock28Step = 73 ifTrue: [
            recoveredBlock28Stack2 := [:recoveredBlock28Block73Arg1 | 
    | recoveredBlock28Block73Value0 recoveredBlock28Block73Value1 recoveredBlock28Block73Value2 recoveredBlock28Block73Value3 recoveredBlock28Block73Value4 recoveredBlock28Block73Value5 recoveredBlock28Block73Value6 recoveredBlock28Block73Value7 recoveredBlock28Block73Value8 recoveredBlock28Block73Value9 recoveredBlock28Block73Value10 |
    recoveredBlock28Block73Value0 := recoveredBlock28Local3.
    recoveredBlock28Block73Value1 := recoveredBlock28Block73Arg1.
    recoveredBlock28Block73Value2 := (recoveredBlock28Block73Value1) instancePathTarget.
    recoveredBlock28Block73Value3 := (recoveredBlock28Block73Value0) , (recoveredBlock28Block73Value2).
    recoveredBlock28Local3 := recoveredBlock28Block73Value3.
    recoveredBlock28Block73Value4 := recoveredBlock28Local1.
    recoveredBlock28Block73Value5 := recoveredBlock28Block73Arg1.
    recoveredBlock28Block73Value6 := (recoveredBlock28Block73Value5) instancePathTarget.
    (recoveredBlock28Block73Value4) add: (recoveredBlock28Block73Value6).
    recoveredBlock28Block73Value7 := recoveredBlock28Local2.
    recoveredBlock28Block73Value8 := recoveredBlock28Block73Arg1.
    recoveredBlock28Block73Value9 := (recoveredBlock28Block73Value8) source.
    recoveredBlock28Block73Value10 := (recoveredBlock28Block73Value7) add: (recoveredBlock28Block73Value9).
    recoveredBlock28Block73Value10
].
            recoveredBlock28PC := 108.
        ].
        recoveredBlock28Step = 108 ifTrue: [
            recoveredBlock28Stack3 := [
    | recoveredBlock28Block108Value0 recoveredBlock28Block108Value1 recoveredBlock28Block108Value2 |
    recoveredBlock28Block108Value0 := recoveredBlock28Local3.
    recoveredBlock28Block108Value1 := (recoveredBlock28Block108Value0) , (', ').
    recoveredBlock28Block108Value2 := recoveredBlock28Block108Value1.
    recoveredBlock28Local3 := recoveredBlock28Block108Value2.
    recoveredBlock28Block108Value1
].
            recoveredBlock28PC := 126.
        ].
        recoveredBlock28Step = 126 ifTrue: [
            (recoveredBlock28Stack1) do: (recoveredBlock28Stack2) andBetweenDo: (recoveredBlock28Stack3).
            recoveredBlock28PC := 128.
        ].
        recoveredBlock28Step = 128 ifTrue: [
            recoveredBlock28Stack1 := recoveredArg1.
            recoveredBlock28PC := 131.
        ].
        recoveredBlock28Step = 131 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) errorHandler.
            recoveredBlock28PC := 133.
        ].
        recoveredBlock28Step = 133 ifTrue: [
            recoveredBlock28Stack2 := 23.
            recoveredBlock28PC := 135.
        ].
        recoveredBlock28Step = 135 ifTrue: [
            recoveredBlock28Stack3 := Array.
            recoveredBlock28PC := 137.
        ].
        recoveredBlock28Step = 137 ifTrue: [
            recoveredBlock28Stack4 := recoveredBlock28Arg1.
            recoveredBlock28PC := 140.
        ].
        recoveredBlock28Step = 140 ifTrue: [
            recoveredBlock28Stack5 := 'to'.
            recoveredBlock28PC := 142.
        ].
        recoveredBlock28Step = 142 ifTrue: [
            recoveredBlock28Stack6 := recoveredBlock28Local3.
            recoveredBlock28PC := 145.
        ].
        recoveredBlock28Step = 145 ifTrue: [
            recoveredBlock28Stack7 := recoveredLocal1.
            recoveredBlock28PC := 148.
        ].
        recoveredBlock28Step = 148 ifTrue: [
            recoveredBlock28Stack3 := (recoveredBlock28Stack3) with: (recoveredBlock28Stack4) with: (recoveredBlock28Stack5) with: (recoveredBlock28Stack6) with: (recoveredBlock28Stack7).
            recoveredBlock28PC := 151.
        ].
        recoveredBlock28Step = 151 ifTrue: [
            recoveredBlock28Stack4 := 'Lm'.
            recoveredBlock28PC := 153.
        ].
        recoveredBlock28Step = 153 ifTrue: [
            recoveredBlock28Stack5 := recoveredArg1.
            recoveredBlock28PC := 156.
        ].
        recoveredBlock28Step = 156 ifTrue: [
            recoveredBlock28Stack5 := (recoveredBlock28Stack5) componentSource.
            recoveredBlock28PC := 158.
        ].
        recoveredBlock28Step = 158 ifTrue: [
            recoveredBlock28Stack6 := recoveredBlock28Local2.
            recoveredBlock28PC := 161.
        ].
        recoveredBlock28Step = 161 ifTrue: [
            recoveredBlock28Stack7 := recoveredBlock28Local1.
            recoveredBlock28PC := 164.
        ].
        recoveredBlock28Step = 164 ifTrue: [
            recoveredBlock28Stack5 := (recoveredBlock28Stack5) createMultiSource: (recoveredBlock28Stack6) labels: (recoveredBlock28Stack7).
            recoveredBlock28PC := 166.
        ].
        recoveredBlock28Step = 166 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) semErrorNo: (recoveredBlock28Stack2) args: (recoveredBlock28Stack3) category: (recoveredBlock28Stack4) source: (recoveredBlock28Stack5).
            recoveredBlock28PC := 169.
        ].
        recoveredBlock28Step = 169 ifTrue: [
            recoveredBlock28Result := recoveredBlock28Stack1.
            recoveredBlock28Done := true.
        ].
    ].
    recoveredBlock28Result
].
    (recoveredValue2) keysAndValuesDo: (recoveredValue3).
    recoveredValue4 := multipleTargets.
    recoveredValue5 := [:recoveredBlock174Arg1 :recoveredBlock174Arg2 | 
    | recoveredBlock174Local1 recoveredBlock174Local2 recoveredBlock174Local3 recoveredBlock174Stack0 recoveredBlock174Stack1 recoveredBlock174Stack2 recoveredBlock174Stack3 recoveredBlock174Stack4 recoveredBlock174Stack5 recoveredBlock174Stack6 recoveredBlock174Stack7 recoveredBlock174Stack8 recoveredBlock174PC recoveredBlock174Step recoveredBlock174Done recoveredBlock174Result |
    recoveredBlock174Stack0 := self.
    recoveredBlock174PC := 180.
    recoveredBlock174Done := false.
    [recoveredBlock174Done not] whileTrue: [
        recoveredBlock174Step := recoveredBlock174PC.
        recoveredBlock174Step = 180 ifTrue: [
            recoveredBlock174Stack1 := nil.
            recoveredBlock174PC := 181.
        ].
        recoveredBlock174Step = 181 ifTrue: [
            recoveredBlock174Stack2 := self.
            recoveredBlock174PC := 182.
        ].
        recoveredBlock174Step = 182 ifTrue: [
            recoveredBlock174Stack3 := recoveredBlock174Arg2.
            recoveredBlock174PC := 185.
        ].
        recoveredBlock174Step = 185 ifTrue: [
            recoveredBlock174Stack2 := (recoveredBlock174Stack2) isValidMappingMultipleTargets: (recoveredBlock174Stack3).
            recoveredBlock174PC := 187.
        ].
        recoveredBlock174Step = 187 ifTrue: [
            recoveredBlock174Stack3 := recoveredBlock174Stack2.
            recoveredBlock174PC := 188.
        ].
        recoveredBlock174Step = 188 ifTrue: [
            recoveredLocal1 := recoveredBlock174Stack3.
            recoveredBlock174PC := 191.
        ].
        recoveredBlock174Step = 191 ifTrue: [
            recoveredBlock174Stack2 := (recoveredBlock174Stack2) isEmpty.
            recoveredBlock174PC := 193.
        ].
        recoveredBlock174Step = 193 ifTrue: [
            (recoveredBlock174Stack2) ifTrue: [recoveredBlock174PC := 317] ifFalse: [recoveredBlock174PC := 196].
        ].
        recoveredBlock174Step = 196 ifTrue: [
            recoveredBlock174PC := 197.
        ].
        recoveredBlock174Step = 197 ifTrue: [
            recoveredBlock174Stack1 := ''.
            recoveredBlock174PC := 199.
        ].
        recoveredBlock174Step = 199 ifTrue: [
            recoveredBlock174Local3 := recoveredBlock174Stack1.
            recoveredBlock174PC := 202.
        ].
        recoveredBlock174Step = 202 ifTrue: [
            recoveredBlock174Stack1 := OrderedCollection.
            recoveredBlock174PC := 204.
        ].
        recoveredBlock174Step = 204 ifTrue: [
            recoveredBlock174Stack1 := (recoveredBlock174Stack1) new.
            recoveredBlock174PC := 206.
        ].
        recoveredBlock174Step = 206 ifTrue: [
            recoveredBlock174Local1 := recoveredBlock174Stack1.
            recoveredBlock174PC := 209.
        ].
        recoveredBlock174Step = 209 ifTrue: [
            recoveredBlock174Stack1 := OrderedCollection.
            recoveredBlock174PC := 211.
        ].
        recoveredBlock174Step = 211 ifTrue: [
            recoveredBlock174Stack1 := (recoveredBlock174Stack1) new.
            recoveredBlock174PC := 213.
        ].
        recoveredBlock174Step = 213 ifTrue: [
            recoveredBlock174Local2 := recoveredBlock174Stack1.
            recoveredBlock174PC := 216.
        ].
        recoveredBlock174Step = 216 ifTrue: [
            recoveredBlock174Stack1 := self.
            recoveredBlock174PC := 217.
        ].
        recoveredBlock174Step = 217 ifTrue: [
            recoveredBlock174Stack2 := recoveredBlock174Arg2.
            recoveredBlock174PC := 220.
        ].
        recoveredBlock174Step = 220 ifTrue: [
            recoveredBlock174Stack1 := (recoveredBlock174Stack1) sortedErrLabels: (recoveredBlock174Stack2).
            recoveredBlock174PC := 222.
        ].
        recoveredBlock174Step = 222 ifTrue: [
            recoveredBlock174Stack2 := [:recoveredBlock174Block222Arg1 | 
    | recoveredBlock174Block222Value0 recoveredBlock174Block222Value1 recoveredBlock174Block222Value2 recoveredBlock174Block222Value3 recoveredBlock174Block222Value4 recoveredBlock174Block222Value5 recoveredBlock174Block222Value6 recoveredBlock174Block222Value7 recoveredBlock174Block222Value8 recoveredBlock174Block222Value9 recoveredBlock174Block222Value10 |
    recoveredBlock174Block222Value0 := recoveredBlock174Local3.
    recoveredBlock174Block222Value1 := recoveredBlock174Block222Arg1.
    recoveredBlock174Block222Value2 := (recoveredBlock174Block222Value1) instancePathSource.
    recoveredBlock174Block222Value3 := (recoveredBlock174Block222Value0) , (recoveredBlock174Block222Value2).
    recoveredBlock174Local3 := recoveredBlock174Block222Value3.
    recoveredBlock174Block222Value4 := recoveredBlock174Local1.
    recoveredBlock174Block222Value5 := recoveredBlock174Block222Arg1.
    recoveredBlock174Block222Value6 := (recoveredBlock174Block222Value5) instancePathSource.
    (recoveredBlock174Block222Value4) add: (recoveredBlock174Block222Value6).
    recoveredBlock174Block222Value7 := recoveredBlock174Local2.
    recoveredBlock174Block222Value8 := recoveredBlock174Block222Arg1.
    recoveredBlock174Block222Value9 := (recoveredBlock174Block222Value8) source.
    recoveredBlock174Block222Value10 := (recoveredBlock174Block222Value7) add: (recoveredBlock174Block222Value9).
    recoveredBlock174Block222Value10
].
            recoveredBlock174PC := 256.
        ].
        recoveredBlock174Step = 256 ifTrue: [
            recoveredBlock174Stack3 := [
    | recoveredBlock174Block256Value0 recoveredBlock174Block256Value1 recoveredBlock174Block256Value2 |
    recoveredBlock174Block256Value0 := recoveredBlock174Local3.
    recoveredBlock174Block256Value1 := (recoveredBlock174Block256Value0) , (', ').
    recoveredBlock174Block256Value2 := recoveredBlock174Block256Value1.
    recoveredBlock174Local3 := recoveredBlock174Block256Value2.
    recoveredBlock174Block256Value1
].
            recoveredBlock174PC := 274.
        ].
        recoveredBlock174Step = 274 ifTrue: [
            (recoveredBlock174Stack1) do: (recoveredBlock174Stack2) andBetweenDo: (recoveredBlock174Stack3).
            recoveredBlock174PC := 276.
        ].
        recoveredBlock174Step = 276 ifTrue: [
            recoveredBlock174Stack1 := recoveredArg1.
            recoveredBlock174PC := 279.
        ].
        recoveredBlock174Step = 279 ifTrue: [
            recoveredBlock174Stack1 := (recoveredBlock174Stack1) errorHandler.
            recoveredBlock174PC := 281.
        ].
        recoveredBlock174Step = 281 ifTrue: [
            recoveredBlock174Stack2 := 23.
            recoveredBlock174PC := 283.
        ].
        recoveredBlock174Step = 283 ifTrue: [
            recoveredBlock174Stack3 := Array.
            recoveredBlock174PC := 285.
        ].
        recoveredBlock174Step = 285 ifTrue: [
            recoveredBlock174Stack4 := recoveredBlock174Arg1.
            recoveredBlock174PC := 288.
        ].
        recoveredBlock174Step = 288 ifTrue: [
            recoveredBlock174Stack5 := 'from'.
            recoveredBlock174PC := 290.
        ].
        recoveredBlock174Step = 290 ifTrue: [
            recoveredBlock174Stack6 := recoveredBlock174Local3.
            recoveredBlock174PC := 293.
        ].
        recoveredBlock174Step = 293 ifTrue: [
            recoveredBlock174Stack7 := recoveredLocal1.
            recoveredBlock174PC := 296.
        ].
        recoveredBlock174Step = 296 ifTrue: [
            recoveredBlock174Stack3 := (recoveredBlock174Stack3) with: (recoveredBlock174Stack4) with: (recoveredBlock174Stack5) with: (recoveredBlock174Stack6) with: (recoveredBlock174Stack7).
            recoveredBlock174PC := 299.
        ].
        recoveredBlock174Step = 299 ifTrue: [
            recoveredBlock174Stack4 := 'Lm'.
            recoveredBlock174PC := 301.
        ].
        recoveredBlock174Step = 301 ifTrue: [
            recoveredBlock174Stack5 := recoveredArg1.
            recoveredBlock174PC := 304.
        ].
        recoveredBlock174Step = 304 ifTrue: [
            recoveredBlock174Stack5 := (recoveredBlock174Stack5) componentSource.
            recoveredBlock174PC := 306.
        ].
        recoveredBlock174Step = 306 ifTrue: [
            recoveredBlock174Stack6 := recoveredBlock174Local2.
            recoveredBlock174PC := 309.
        ].
        recoveredBlock174Step = 309 ifTrue: [
            recoveredBlock174Stack7 := recoveredBlock174Local1.
            recoveredBlock174PC := 312.
        ].
        recoveredBlock174Step = 312 ifTrue: [
            recoveredBlock174Stack5 := (recoveredBlock174Stack5) createMultiSource: (recoveredBlock174Stack6) labels: (recoveredBlock174Stack7).
            recoveredBlock174PC := 314.
        ].
        recoveredBlock174Step = 314 ifTrue: [
            recoveredBlock174Stack1 := (recoveredBlock174Stack1) semErrorNo: (recoveredBlock174Stack2) args: (recoveredBlock174Stack3) category: (recoveredBlock174Stack4) source: (recoveredBlock174Stack5).
            recoveredBlock174PC := 317.
        ].
        recoveredBlock174Step = 317 ifTrue: [
            recoveredBlock174Result := recoveredBlock174Stack1.
            recoveredBlock174Done := true.
        ].
    ].
    recoveredBlock174Result
].
    (recoveredValue4) keysAndValuesDo: (recoveredValue5).
    ^self
! !

