"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20012750; bytecode file offset 0x912098"
!OldRBObjectDumper class methodsFor: 'recovered'!
RBDBUnlinkInstVars
    | recoveredValue0 |
    recoveredValue0 := RBDBUnlinkInstVars.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200127d4; bytecode file offset 0x912098"
!OldRBObjectDumper class methodsFor: 'recovered'!
RBDBUnlinkInstancesOfClasses
    | recoveredValue0 |
    recoveredValue0 := RBDBUnlinkInstancesOfClasses.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20013c50; bytecode file offset 0x912098"
!OldRBObjectDumper class methodsFor: 'recovered'!
RBDBUnlinkFromClasses
    | recoveredValue0 |
    recoveredValue0 := RBDBUnlinkFromClasses.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200d9130; bytecode file offset 0x9d5b4c"
!OldRBObjectDumper class methodsFor: 'recovered'!
initializeUnLinking: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) unLinkNonSwapClasses: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) unLinkVarsFromAllClasses: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200e2424; bytecode file offset 0x9dece4"
!OldRBObjectDumper class methodsFor: 'recovered'!
resetClass
    RBDBUnlinkFromClasses := nil.
    RBDBUnlinkInstancesOfClasses := nil.
    RBDBUnlinkInstVars := nil.
    ^self
! !

"ASDBase.ic method 0x20115108; bytecode file offset 0xa119dc"
!OldRBObjectDumper class methodsFor: 'recovered'!
initClassVarsDone
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRuntime.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := RBDBUnlinkInstancesOfClasses.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) notNil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202206c8; bytecode file offset 0xb1cfb4"
!OldRBObjectDumper class methodsFor: 'recovered'!
unLinkNonSwapClasses: recoveredArg1
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
            recoveredStack2 := [:block280dbc30Arg1 | 
    | block280dbc30Stack0 block280dbc30Stack1 block280dbc30Stack2 block280dbc30PC block280dbc30Step block280dbc30Done block280dbc30Result |
    block280dbc30Stack0 := self.
    block280dbc30PC := 4.
    block280dbc30Done := false.
    [block280dbc30Done not] whileTrue: [
        block280dbc30Step := block280dbc30PC.
        block280dbc30Step = 4 ifTrue: [
            block280dbc30Stack1 := block280dbc30Arg1.
            block280dbc30PC := 5.
        ].
        block280dbc30Step = 5 ifTrue: [
            block280dbc30Stack1 := (block280dbc30Stack1) isClass.
            block280dbc30PC := 6.
        ].
        block280dbc30Step = 6 ifTrue: [
            (block280dbc30Stack1) ifTrue: [block280dbc30PC := 10] ifFalse: [block280dbc30PC := 16].
        ].
        block280dbc30Step = 10 ifTrue: [
            block280dbc30Stack1 := block280dbc30Arg1.
            block280dbc30PC := 11.
        ].
        block280dbc30Step = 11 ifTrue: [
            block280dbc30Stack1 := (block280dbc30Stack1) isSwap.
            block280dbc30PC := 12.
        ].
        block280dbc30Step = 12 ifTrue: [
            block280dbc30Stack1 := (block280dbc30Stack1) not.
            block280dbc30PC := 13.
        ].
        block280dbc30Step = 13 ifTrue: [
            block280dbc30PC := 17.
        ].
        block280dbc30Step = 16 ifTrue: [
            block280dbc30Stack1 := false.
            block280dbc30PC := 17.
        ].
        block280dbc30Step = 17 ifTrue: [
            block280dbc30Result := block280dbc30Stack1.
            block280dbc30Done := true.
        ].
    ].
    block280dbc30Result
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) asArray.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            RBDBUnlinkInstancesOfClasses := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2040abc4; bytecode file offset 0xd07588"
!OldRBObjectDumper class methodsFor: 'recovered'!
nilIndicesOf: recoveredArg1 from: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) isNilIndicesClass.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) nilIndices.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) allInstVarNames.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSet.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := SortedCollection.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := [:recoveredBlock54Arg1 | 
    | recoveredBlock54Stack0 recoveredBlock54Stack1 recoveredBlock54Stack2 recoveredBlock54Stack3 recoveredBlock54Stack4 recoveredBlock54PC recoveredBlock54Step recoveredBlock54Done recoveredBlock54Result |
    recoveredBlock54Stack0 := self.
    recoveredBlock54PC := 60.
    recoveredBlock54Done := false.
    [recoveredBlock54Done not] whileTrue: [
        recoveredBlock54Step := recoveredBlock54PC.
        recoveredBlock54Step = 60 ifTrue: [
            recoveredBlock54Stack1 := nil.
            recoveredBlock54PC := 61.
        ].
        recoveredBlock54Step = 61 ifTrue: [
            recoveredBlock54Stack2 := recoveredLocal4.
            recoveredBlock54PC := 64.
        ].
        recoveredBlock54Step = 64 ifTrue: [
            recoveredBlock54Stack3 := recoveredBlock54Arg1.
            recoveredBlock54PC := 65.
        ].
        recoveredBlock54Step = 65 ifTrue: [
            recoveredBlock54Stack2 := (recoveredBlock54Stack2) indexOf: (recoveredBlock54Stack3).
            recoveredBlock54PC := 67.
        ].
        recoveredBlock54Step = 67 ifTrue: [
            recoveredBlock54Stack3 := recoveredBlock54Stack2.
            recoveredBlock54PC := 68.
        ].
        recoveredBlock54Step = 68 ifTrue: [
            recoveredLocal1 := recoveredBlock54Stack3.
            recoveredBlock54PC := 71.
        ].
        recoveredBlock54Step = 71 ifTrue: [
            recoveredBlock54Stack3 := 0.
            recoveredBlock54PC := 73.
        ].
        recoveredBlock54Step = 73 ifTrue: [
            recoveredBlock54Stack2 := (recoveredBlock54Stack2) > (recoveredBlock54Stack3).
            recoveredBlock54PC := 74.
        ].
        recoveredBlock54Step = 74 ifTrue: [
            (recoveredBlock54Stack2) ifTrue: [recoveredBlock54PC := 78] ifFalse: [recoveredBlock54PC := 87].
        ].
        recoveredBlock54Step = 78 ifTrue: [
            recoveredBlock54PC := 79.
        ].
        recoveredBlock54Step = 79 ifTrue: [
            recoveredBlock54Stack1 := recoveredLocal2.
            recoveredBlock54PC := 82.
        ].
        recoveredBlock54Step = 82 ifTrue: [
            recoveredBlock54Stack2 := recoveredLocal1.
            recoveredBlock54PC := 85.
        ].
        recoveredBlock54Step = 85 ifTrue: [
            recoveredBlock54Stack1 := (recoveredBlock54Stack1) add: (recoveredBlock54Stack2).
            recoveredBlock54PC := 87.
        ].
        recoveredBlock54Step = 87 ifTrue: [
            recoveredBlock54Result := recoveredBlock54Stack1.
            recoveredBlock54Done := true.
        ].
    ].
    recoveredBlock54Result
].
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := (recoveredStack1) asArray.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20536e8c; bytecode file offset 0xe337ac"
!OldRBObjectDumper class methodsFor: 'recovered'!
unLinkVarsFromAllClasses: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 64.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := 64.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := [:block2810d9e0Arg1 | 
    | block2810d9e0Stack0 block2810d9e0Stack1 block2810d9e0Stack2 block2810d9e0Stack3 block2810d9e0PC block2810d9e0Step block2810d9e0Done block2810d9e0Result |
    block2810d9e0Stack0 := self.
    block2810d9e0PC := 4.
    block2810d9e0Done := false.
    [block2810d9e0Done not] whileTrue: [
        block2810d9e0Step := block2810d9e0PC.
        block2810d9e0Step = 4 ifTrue: [
            block2810d9e0Stack1 := true.
            block2810d9e0PC := 5.
        ].
        block2810d9e0Step = 5 ifTrue: [
            block2810d9e0Stack2 := block2810d9e0Arg1.
            block2810d9e0PC := 6.
        ].
        block2810d9e0Step = 6 ifTrue: [
            block2810d9e0Stack2 := (block2810d9e0Stack2) basicNew.
            block2810d9e0PC := 7.
        ].
        block2810d9e0Step = 7 ifTrue: [
            block2810d9e0Stack2 := (block2810d9e0Stack2) isErrorClass.
            block2810d9e0PC := 9.
        ].
        block2810d9e0Step = 9 ifTrue: [
            (block2810d9e0Stack2) ifTrue: [block2810d9e0PC := 17] ifFalse: [block2810d9e0PC := 12].
        ].
        block2810d9e0Step = 12 ifTrue: [
            block2810d9e0PC := 13.
        ].
        block2810d9e0Step = 13 ifTrue: [
            block2810d9e0Stack1 := block2810d9e0Arg1.
            block2810d9e0PC := 14.
        ].
        block2810d9e0Step = 14 ifTrue: [
            block2810d9e0Stack1 := (block2810d9e0Stack1) basicNew.
            block2810d9e0PC := 15.
        ].
        block2810d9e0Step = 15 ifTrue: [
            block2810d9e0Stack1 := (block2810d9e0Stack1) isTerminalClass.
            block2810d9e0PC := 17.
        ].
        block2810d9e0Step = 17 ifTrue: [
            block2810d9e0Result := block2810d9e0Stack1.
            block2810d9e0Done := true.
        ].
    ].
    block2810d9e0Result
].
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) reject: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := [:recoveredBlock54Arg1 | 
    | recoveredBlock54Stack0 recoveredBlock54Stack1 recoveredBlock54Stack2 recoveredBlock54Stack3 recoveredBlock54Stack4 recoveredBlock54PC recoveredBlock54Step recoveredBlock54Done recoveredBlock54Result |
    recoveredBlock54Stack0 := self.
    recoveredBlock54PC := 60.
    recoveredBlock54Done := false.
    [recoveredBlock54Done not] whileTrue: [
        recoveredBlock54Step := recoveredBlock54PC.
        recoveredBlock54Step = 60 ifTrue: [
            recoveredBlock54Stack1 := recoveredBlock54Arg1.
            recoveredBlock54PC := 61.
        ].
        recoveredBlock54Step = 61 ifTrue: [
            recoveredBlock54Stack1 := (recoveredBlock54Stack1) unLinkInstVarNames.
            recoveredBlock54PC := 63.
        ].
        recoveredBlock54Step = 63 ifTrue: [
            recoveredBlock54Stack2 := recoveredBlock54Stack1.
            recoveredBlock54PC := 64.
        ].
        recoveredBlock54Step = 64 ifTrue: [
            recoveredLocal4 := recoveredBlock54Stack2.
            recoveredBlock54PC := 67.
        ].
        recoveredBlock54Step = 67 ifTrue: [
            (recoveredBlock54Stack1 == nil) ifTrue: [recoveredBlock54PC := 154] ifFalse: [recoveredBlock54PC := 70].
        ].
        recoveredBlock54Step = 70 ifTrue: [
            recoveredBlock54Stack1 := recoveredLocal4.
            recoveredBlock54PC := 73.
        ].
        recoveredBlock54Step = 73 ifTrue: [
            recoveredBlock54Stack1 := (recoveredBlock54Stack1) notEmpty.
            recoveredBlock54PC := 75.
        ].
        recoveredBlock54Step = 75 ifTrue: [
            (recoveredBlock54Stack1) ifTrue: [recoveredBlock54PC := 78] ifFalse: [recoveredBlock54PC := 154].
        ].
        recoveredBlock54Step = 78 ifTrue: [
            recoveredBlock54Stack1 := self.
            recoveredBlock54PC := 79.
        ].
        recoveredBlock54Step = 79 ifTrue: [
            recoveredBlock54Stack2 := recoveredBlock54Arg1.
            recoveredBlock54PC := 80.
        ].
        recoveredBlock54Step = 80 ifTrue: [
            recoveredBlock54Stack2 := (recoveredBlock54Stack2) basicNew.
            recoveredBlock54PC := 81.
        ].
        recoveredBlock54Step = 81 ifTrue: [
            recoveredBlock54Stack3 := recoveredLocal4.
            recoveredBlock54PC := 84.
        ].
        recoveredBlock54Step = 84 ifTrue: [
            recoveredBlock54Stack1 := (recoveredBlock54Stack1) nilIndicesOf: (recoveredBlock54Stack2) from: (recoveredBlock54Stack3).
            recoveredBlock54PC := 86.
        ].
        recoveredBlock54Step = 86 ifTrue: [
            recoveredLocal2 := recoveredBlock54Stack1.
            recoveredBlock54PC := 89.
        ].
        recoveredBlock54Step = 89 ifTrue: [
            recoveredBlock54Stack1 := recoveredLocal2.
            recoveredBlock54PC := 92.
        ].
        recoveredBlock54Step = 92 ifTrue: [
            (recoveredBlock54Stack1 ~~ nil) ifTrue: [recoveredBlock54PC := 110] ifFalse: [recoveredBlock54PC := 96].
        ].
        recoveredBlock54Step = 96 ifTrue: [
            recoveredBlock54Stack1 := self.
            recoveredBlock54PC := 97.
        ].
        recoveredBlock54Step = 97 ifTrue: [
            recoveredBlock54Stack1 := (recoveredBlock54Stack1) library.
            recoveredBlock54PC := 99.
        ].
        recoveredBlock54Step = 99 ifTrue: [
            recoveredBlock54Stack2 := DBLinDeLinError.
            recoveredBlock54PC := 101.
        ].
        recoveredBlock54Step = 101 ifTrue: [
            recoveredBlock54Stack3 := 'nil array returned for nilVariables'.
            recoveredBlock54PC := 103.
        ].
        recoveredBlock54Step = 103 ifTrue: [
            recoveredBlock54Stack2 := (recoveredBlock54Stack2) createBasic: (recoveredBlock54Stack3).
            recoveredBlock54PC := 105.
        ].
        recoveredBlock54Step = 105 ifTrue: [
            (recoveredBlock54Stack1) showError: (recoveredBlock54Stack2).
            recoveredBlock54PC := 107.
        ].
        recoveredBlock54Step = 107 ifTrue: [
            recoveredBlock54PC := 140.
        ].
        recoveredBlock54Step = 110 ifTrue: [
            recoveredBlock54Stack1 := recoveredLocal2.
            recoveredBlock54PC := 113.
        ].
        recoveredBlock54Step = 113 ifTrue: [
            recoveredBlock54Stack1 := (recoveredBlock54Stack1) isEmpty.
            recoveredBlock54PC := 115.
        ].
        recoveredBlock54Step = 115 ifTrue: [
            (recoveredBlock54Stack1) ifTrue: [recoveredBlock54PC := 118] ifFalse: [recoveredBlock54PC := 140].
        ].
        recoveredBlock54Step = 118 ifTrue: [
            recoveredBlock54Stack1 := self.
            recoveredBlock54PC := 119.
        ].
        recoveredBlock54Step = 119 ifTrue: [
            recoveredBlock54Stack1 := (recoveredBlock54Stack1) library.
            recoveredBlock54PC := 121.
        ].
        recoveredBlock54Step = 121 ifTrue: [
            recoveredBlock54Stack2 := DBLinDeLinError.
            recoveredBlock54PC := 123.
        ].
        recoveredBlock54Step = 123 ifTrue: [
            recoveredBlock54Stack3 := 'shouldNotUseEmptyArray'.
            recoveredBlock54PC := 125.
        ].
        recoveredBlock54Step = 125 ifTrue: [
            recoveredBlock54Stack2 := (recoveredBlock54Stack2) createBasic: (recoveredBlock54Stack3).
            recoveredBlock54PC := 127.
        ].
        recoveredBlock54Step = 127 ifTrue: [
            (recoveredBlock54Stack1) showInternalError: (recoveredBlock54Stack2).
            recoveredBlock54PC := 129.
        ].
        recoveredBlock54Step = 129 ifTrue: [
            recoveredBlock54Stack1 := self.
            recoveredBlock54PC := 130.
        ].
        recoveredBlock54Step = 130 ifTrue: [
            recoveredBlock54Stack2 := recoveredBlock54Arg1.
            recoveredBlock54PC := 131.
        ].
        recoveredBlock54Step = 131 ifTrue: [
            recoveredBlock54Stack2 := (recoveredBlock54Stack2) basicNew.
            recoveredBlock54PC := 132.
        ].
        recoveredBlock54Step = 132 ifTrue: [
            recoveredBlock54Stack3 := recoveredLocal4.
            recoveredBlock54PC := 135.
        ].
        recoveredBlock54Step = 135 ifTrue: [
            recoveredBlock54Stack1 := (recoveredBlock54Stack1) nilIndicesOf: (recoveredBlock54Stack2) from: (recoveredBlock54Stack3).
            recoveredBlock54PC := 137.
        ].
        recoveredBlock54Step = 137 ifTrue: [
            recoveredLocal2 := recoveredBlock54Stack1.
            recoveredBlock54PC := 140.
        ].
        recoveredBlock54Step = 140 ifTrue: [
            recoveredBlock54Stack1 := recoveredLocal3.
            recoveredBlock54PC := 143.
        ].
        recoveredBlock54Step = 143 ifTrue: [
            recoveredBlock54Stack2 := recoveredLocal2.
            recoveredBlock54PC := 146.
        ].
        recoveredBlock54Step = 146 ifTrue: [
            (recoveredBlock54Stack1) addLast: (recoveredBlock54Stack2).
            recoveredBlock54PC := 148.
        ].
        recoveredBlock54Step = 148 ifTrue: [
            recoveredBlock54Stack1 := recoveredLocal5.
            recoveredBlock54PC := 151.
        ].
        recoveredBlock54Step = 151 ifTrue: [
            recoveredBlock54Stack2 := recoveredBlock54Arg1.
            recoveredBlock54PC := 152.
        ].
        recoveredBlock54Step = 152 ifTrue: [
            (recoveredBlock54Stack1) addLast: (recoveredBlock54Stack2).
            recoveredBlock54PC := 154.
        ].
        recoveredBlock54Step = 154 ifTrue: [
            recoveredBlock54Stack1 := recoveredLocal5.
            recoveredBlock54PC := 157.
        ].
        recoveredBlock54Step = 157 ifTrue: [
            recoveredBlock54Stack1 := (recoveredBlock54Stack1) size.
            recoveredBlock54PC := 159.
        ].
        recoveredBlock54Step = 159 ifTrue: [
            recoveredBlock54Stack2 := recoveredLocal3.
            recoveredBlock54PC := 162.
        ].
        recoveredBlock54Step = 162 ifTrue: [
            recoveredBlock54Stack2 := (recoveredBlock54Stack2) size.
            recoveredBlock54PC := 164.
        ].
        recoveredBlock54Step = 164 ifTrue: [
            recoveredBlock54Stack1 := (recoveredBlock54Stack1) = (recoveredBlock54Stack2).
            recoveredBlock54PC := 165.
        ].
        recoveredBlock54Step = 165 ifTrue: [
            (recoveredBlock54Stack1) ifTrue: [recoveredBlock54PC := 179] ifFalse: [recoveredBlock54PC := 168].
        ].
        recoveredBlock54Step = 168 ifTrue: [
            recoveredBlock54Stack1 := self.
            recoveredBlock54PC := 169.
        ].
        recoveredBlock54Step = 169 ifTrue: [
            recoveredBlock54Stack1 := (recoveredBlock54Stack1) library.
            recoveredBlock54PC := 171.
        ].
        recoveredBlock54Step = 171 ifTrue: [
            recoveredBlock54Stack2 := DBLinDeLinError.
            recoveredBlock54PC := 173.
        ].
        recoveredBlock54Step = 173 ifTrue: [
            recoveredBlock54Stack3 := 'size mismatch'.
            recoveredBlock54PC := 175.
        ].
        recoveredBlock54Step = 175 ifTrue: [
            recoveredBlock54Stack2 := (recoveredBlock54Stack2) createBasic: (recoveredBlock54Stack3).
            recoveredBlock54PC := 177.
        ].
        recoveredBlock54Step = 177 ifTrue: [
            (recoveredBlock54Stack1) showError: (recoveredBlock54Stack2).
            recoveredBlock54PC := 179.
        ].
        recoveredBlock54Step = 179 ifTrue: [
            recoveredBlock54Stack1 := recoveredLocal3.
            recoveredBlock54PC := 182.
        ].
        recoveredBlock54Step = 182 ifTrue: [
            recoveredBlock54Stack1 := (recoveredBlock54Stack1) asArray.
            recoveredBlock54PC := 184.
        ].
        recoveredBlock54Step = 184 ifTrue: [
            RBDBUnlinkFromClasses := recoveredBlock54Stack1.
            recoveredBlock54PC := 186.
        ].
        recoveredBlock54Step = 186 ifTrue: [
            recoveredBlock54Stack1 := recoveredLocal5.
            recoveredBlock54PC := 189.
        ].
        recoveredBlock54Step = 189 ifTrue: [
            recoveredBlock54Stack1 := (recoveredBlock54Stack1) asArray.
            recoveredBlock54PC := 191.
        ].
        recoveredBlock54Step = 191 ifTrue: [
            recoveredBlock54Stack2 := recoveredBlock54Stack1.
            recoveredBlock54PC := 192.
        ].
        recoveredBlock54Step = 192 ifTrue: [
            RBDBUnlinkInstVars := recoveredBlock54Stack2.
            recoveredBlock54PC := 194.
        ].
        recoveredBlock54Step = 194 ifTrue: [
            recoveredBlock54Result := recoveredBlock54Stack1.
            recoveredBlock54Done := true.
        ].
    ].
    recoveredBlock54Result
].
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack2 := RBDBUnlinkFromClasses.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack3 := RBDBUnlinkInstVars.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

