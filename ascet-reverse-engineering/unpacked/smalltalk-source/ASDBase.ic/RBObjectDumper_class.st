"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200133b0; bytecode file offset 0x912098"
!RBObjectDumper class methodsFor: 'recovered'!
RBDBUnlinkInstancesOfClasses
    | recoveredValue0 |
    recoveredValue0 := RBDBUnlinkInstancesOfClasses.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20013e6c; bytecode file offset 0x912098"
!RBObjectDumper class methodsFor: 'recovered'!
RBDBUnlinkFromClasses
    | recoveredValue0 |
    recoveredValue0 := RBDBUnlinkFromClasses.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20014cd0; bytecode file offset 0x912098"
!RBObjectDumper class methodsFor: 'recovered'!
RBDBUnlinkInstVars
    | recoveredValue0 |
    recoveredValue0 := RBDBUnlinkInstVars.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20082e14; bytecode file offset 0x97f714"
!RBObjectDumper class methodsFor: 'recovered'!
RBDBUnlinkInstancesOfClasses: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    RBDBUnlinkInstancesOfClasses := recoveredValue1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200d9210; bytecode file offset 0x9d5b4c"
!RBObjectDumper class methodsFor: 'recovered'!
initializeUnLinking: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) unLinkNonSwapClasses: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) unLinkVarsFromAllClasses: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200e2410; bytecode file offset 0x9dece4"
!RBObjectDumper class methodsFor: 'recovered'!
resetClass
    RBDBUnlinkFromClasses := nil.
    RBDBUnlinkInstancesOfClasses := nil.
    RBDBUnlinkInstVars := nil.
    ^self
! !

"ASDBase.ic method 0x2011511c; bytecode file offset 0xa119dc"
!RBObjectDumper class methodsFor: 'recovered'!
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

"ASDBase.ic method 0x202206e8; bytecode file offset 0xb1cfb4"
!RBObjectDumper class methodsFor: 'recovered'!
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
            recoveredStack2 := [:block280dbc54Arg1 | 
    | block280dbc54Stack0 block280dbc54Stack1 block280dbc54Stack2 block280dbc54PC block280dbc54Step block280dbc54Done block280dbc54Result |
    block280dbc54Stack0 := self.
    block280dbc54PC := 4.
    block280dbc54Done := false.
    [block280dbc54Done not] whileTrue: [
        block280dbc54Step := block280dbc54PC.
        block280dbc54Step = 4 ifTrue: [
            block280dbc54Stack1 := block280dbc54Arg1.
            block280dbc54PC := 5.
        ].
        block280dbc54Step = 5 ifTrue: [
            block280dbc54Stack1 := (block280dbc54Stack1) isClass.
            block280dbc54PC := 6.
        ].
        block280dbc54Step = 6 ifTrue: [
            (block280dbc54Stack1) ifTrue: [block280dbc54PC := 10] ifFalse: [block280dbc54PC := 16].
        ].
        block280dbc54Step = 10 ifTrue: [
            block280dbc54Stack1 := block280dbc54Arg1.
            block280dbc54PC := 11.
        ].
        block280dbc54Step = 11 ifTrue: [
            block280dbc54Stack1 := (block280dbc54Stack1) isSwap.
            block280dbc54PC := 12.
        ].
        block280dbc54Step = 12 ifTrue: [
            block280dbc54Stack1 := (block280dbc54Stack1) not.
            block280dbc54PC := 13.
        ].
        block280dbc54Step = 13 ifTrue: [
            block280dbc54PC := 17.
        ].
        block280dbc54Step = 16 ifTrue: [
            block280dbc54Stack1 := false.
            block280dbc54PC := 17.
        ].
        block280dbc54Step = 17 ifTrue: [
            block280dbc54Result := block280dbc54Stack1.
            block280dbc54Done := true.
        ].
    ].
    block280dbc54Result
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

"ASDBase.ic method 0x2040ac6c; bytecode file offset 0xd07588"
!RBObjectDumper class methodsFor: 'recovered'!
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

"ASDBase.ic method 0x2053ff44; bytecode file offset 0xe3c85c"
!RBObjectDumper class methodsFor: 'recovered'!
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
            recoveredStack2 := [:block2810e370Arg1 | 
    | block2810e370Stack0 block2810e370Stack1 block2810e370Stack2 block2810e370Stack3 block2810e370PC block2810e370Step block2810e370Done block2810e370Result |
    block2810e370Stack0 := self.
    block2810e370PC := 4.
    block2810e370Done := false.
    [block2810e370Done not] whileTrue: [
        block2810e370Step := block2810e370PC.
        block2810e370Step = 4 ifTrue: [
            block2810e370Stack1 := true.
            block2810e370PC := 5.
        ].
        block2810e370Step = 5 ifTrue: [
            block2810e370Stack2 := block2810e370Arg1.
            block2810e370PC := 6.
        ].
        block2810e370Step = 6 ifTrue: [
            block2810e370Stack2 := (block2810e370Stack2) basicNew.
            block2810e370PC := 7.
        ].
        block2810e370Step = 7 ifTrue: [
            block2810e370Stack2 := (block2810e370Stack2) isErrorClass.
            block2810e370PC := 9.
        ].
        block2810e370Step = 9 ifTrue: [
            (block2810e370Stack2) ifTrue: [block2810e370PC := 17] ifFalse: [block2810e370PC := 12].
        ].
        block2810e370Step = 12 ifTrue: [
            block2810e370PC := 13.
        ].
        block2810e370Step = 13 ifTrue: [
            block2810e370Stack1 := block2810e370Arg1.
            block2810e370PC := 14.
        ].
        block2810e370Step = 14 ifTrue: [
            block2810e370Stack1 := (block2810e370Stack1) basicNew.
            block2810e370PC := 15.
        ].
        block2810e370Step = 15 ifTrue: [
            block2810e370Stack1 := (block2810e370Stack1) isTerminalClass.
            block2810e370PC := 17.
        ].
        block2810e370Step = 17 ifTrue: [
            block2810e370Result := block2810e370Stack1.
            block2810e370Done := true.
        ].
    ].
    block2810e370Result
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
            (recoveredBlock54Stack1 == nil) ifTrue: [recoveredBlock54PC := 158] ifFalse: [recoveredBlock54PC := 70].
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
            (recoveredBlock54Stack1) ifTrue: [recoveredBlock54PC := 78] ifFalse: [recoveredBlock54PC := 158].
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
            (recoveredBlock54Stack1 ~~ nil) ifTrue: [recoveredBlock54PC := 112] ifFalse: [recoveredBlock54PC := 96].
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
            (recoveredBlock54Stack1 == nil) ifTrue: [recoveredBlock54PC := 109] ifFalse: [recoveredBlock54PC := 102].
        ].
        recoveredBlock54Step = 102 ifTrue: [
            recoveredBlock54Stack1 := self.
            recoveredBlock54PC := 103.
        ].
        recoveredBlock54Step = 103 ifTrue: [
            recoveredBlock54Stack1 := (recoveredBlock54Stack1) library.
            recoveredBlock54PC := 105.
        ].
        recoveredBlock54Step = 105 ifTrue: [
            recoveredBlock54Stack2 := 'nil array returned for nilVariables'.
            recoveredBlock54PC := 107.
        ].
        recoveredBlock54Step = 107 ifTrue: [
            (recoveredBlock54Stack1) showError: (recoveredBlock54Stack2).
            recoveredBlock54PC := 109.
        ].
        recoveredBlock54Step = 109 ifTrue: [
            recoveredBlock54PC := 144.
        ].
        recoveredBlock54Step = 112 ifTrue: [
            recoveredBlock54Stack1 := recoveredLocal2.
            recoveredBlock54PC := 115.
        ].
        recoveredBlock54Step = 115 ifTrue: [
            recoveredBlock54Stack1 := (recoveredBlock54Stack1) isEmpty.
            recoveredBlock54PC := 117.
        ].
        recoveredBlock54Step = 117 ifTrue: [
            (recoveredBlock54Stack1) ifTrue: [recoveredBlock54PC := 120] ifFalse: [recoveredBlock54PC := 144].
        ].
        recoveredBlock54Step = 120 ifTrue: [
            recoveredBlock54Stack1 := self.
            recoveredBlock54PC := 121.
        ].
        recoveredBlock54Step = 121 ifTrue: [
            recoveredBlock54Stack1 := (recoveredBlock54Stack1) library.
            recoveredBlock54PC := 123.
        ].
        recoveredBlock54Step = 123 ifTrue: [
            (recoveredBlock54Stack1 == nil) ifTrue: [recoveredBlock54PC := 133] ifFalse: [recoveredBlock54PC := 126].
        ].
        recoveredBlock54Step = 126 ifTrue: [
            recoveredBlock54Stack1 := self.
            recoveredBlock54PC := 127.
        ].
        recoveredBlock54Step = 127 ifTrue: [
            recoveredBlock54Stack1 := (recoveredBlock54Stack1) library.
            recoveredBlock54PC := 129.
        ].
        recoveredBlock54Step = 129 ifTrue: [
            recoveredBlock54Stack2 := 'shouldNotUseEmptyArray'.
            recoveredBlock54PC := 131.
        ].
        recoveredBlock54Step = 131 ifTrue: [
            (recoveredBlock54Stack1) showInternalError: (recoveredBlock54Stack2).
            recoveredBlock54PC := 133.
        ].
        recoveredBlock54Step = 133 ifTrue: [
            recoveredBlock54Stack1 := self.
            recoveredBlock54PC := 134.
        ].
        recoveredBlock54Step = 134 ifTrue: [
            recoveredBlock54Stack2 := recoveredBlock54Arg1.
            recoveredBlock54PC := 135.
        ].
        recoveredBlock54Step = 135 ifTrue: [
            recoveredBlock54Stack2 := (recoveredBlock54Stack2) basicNew.
            recoveredBlock54PC := 136.
        ].
        recoveredBlock54Step = 136 ifTrue: [
            recoveredBlock54Stack3 := recoveredLocal4.
            recoveredBlock54PC := 139.
        ].
        recoveredBlock54Step = 139 ifTrue: [
            recoveredBlock54Stack1 := (recoveredBlock54Stack1) nilIndicesOf: (recoveredBlock54Stack2) from: (recoveredBlock54Stack3).
            recoveredBlock54PC := 141.
        ].
        recoveredBlock54Step = 141 ifTrue: [
            recoveredLocal2 := recoveredBlock54Stack1.
            recoveredBlock54PC := 144.
        ].
        recoveredBlock54Step = 144 ifTrue: [
            recoveredBlock54Stack1 := recoveredLocal3.
            recoveredBlock54PC := 147.
        ].
        recoveredBlock54Step = 147 ifTrue: [
            recoveredBlock54Stack2 := recoveredLocal2.
            recoveredBlock54PC := 150.
        ].
        recoveredBlock54Step = 150 ifTrue: [
            (recoveredBlock54Stack1) addLast: (recoveredBlock54Stack2).
            recoveredBlock54PC := 152.
        ].
        recoveredBlock54Step = 152 ifTrue: [
            recoveredBlock54Stack1 := recoveredLocal5.
            recoveredBlock54PC := 155.
        ].
        recoveredBlock54Step = 155 ifTrue: [
            recoveredBlock54Stack2 := recoveredBlock54Arg1.
            recoveredBlock54PC := 156.
        ].
        recoveredBlock54Step = 156 ifTrue: [
            (recoveredBlock54Stack1) addLast: (recoveredBlock54Stack2).
            recoveredBlock54PC := 158.
        ].
        recoveredBlock54Step = 158 ifTrue: [
            recoveredBlock54Stack1 := recoveredLocal5.
            recoveredBlock54PC := 161.
        ].
        recoveredBlock54Step = 161 ifTrue: [
            recoveredBlock54Stack1 := (recoveredBlock54Stack1) size.
            recoveredBlock54PC := 163.
        ].
        recoveredBlock54Step = 163 ifTrue: [
            recoveredBlock54Stack2 := recoveredLocal3.
            recoveredBlock54PC := 166.
        ].
        recoveredBlock54Step = 166 ifTrue: [
            recoveredBlock54Stack2 := (recoveredBlock54Stack2) size.
            recoveredBlock54PC := 168.
        ].
        recoveredBlock54Step = 168 ifTrue: [
            recoveredBlock54Stack1 := (recoveredBlock54Stack1) = (recoveredBlock54Stack2).
            recoveredBlock54PC := 169.
        ].
        recoveredBlock54Step = 169 ifTrue: [
            (recoveredBlock54Stack1) ifTrue: [recoveredBlock54PC := 185] ifFalse: [recoveredBlock54PC := 172].
        ].
        recoveredBlock54Step = 172 ifTrue: [
            recoveredBlock54Stack1 := self.
            recoveredBlock54PC := 173.
        ].
        recoveredBlock54Step = 173 ifTrue: [
            recoveredBlock54Stack1 := (recoveredBlock54Stack1) library.
            recoveredBlock54PC := 175.
        ].
        recoveredBlock54Step = 175 ifTrue: [
            (recoveredBlock54Stack1 == nil) ifTrue: [recoveredBlock54PC := 185] ifFalse: [recoveredBlock54PC := 178].
        ].
        recoveredBlock54Step = 178 ifTrue: [
            recoveredBlock54Stack1 := self.
            recoveredBlock54PC := 179.
        ].
        recoveredBlock54Step = 179 ifTrue: [
            recoveredBlock54Stack1 := (recoveredBlock54Stack1) library.
            recoveredBlock54PC := 181.
        ].
        recoveredBlock54Step = 181 ifTrue: [
            recoveredBlock54Stack2 := 'size mismatch'.
            recoveredBlock54PC := 183.
        ].
        recoveredBlock54Step = 183 ifTrue: [
            (recoveredBlock54Stack1) showError: (recoveredBlock54Stack2).
            recoveredBlock54PC := 185.
        ].
        recoveredBlock54Step = 185 ifTrue: [
            recoveredBlock54Stack1 := recoveredLocal3.
            recoveredBlock54PC := 188.
        ].
        recoveredBlock54Step = 188 ifTrue: [
            recoveredBlock54Stack1 := (recoveredBlock54Stack1) asArray.
            recoveredBlock54PC := 190.
        ].
        recoveredBlock54Step = 190 ifTrue: [
            RBDBUnlinkFromClasses := recoveredBlock54Stack1.
            recoveredBlock54PC := 192.
        ].
        recoveredBlock54Step = 192 ifTrue: [
            recoveredBlock54Stack1 := recoveredLocal5.
            recoveredBlock54PC := 195.
        ].
        recoveredBlock54Step = 195 ifTrue: [
            recoveredBlock54Stack1 := (recoveredBlock54Stack1) asArray.
            recoveredBlock54PC := 197.
        ].
        recoveredBlock54Step = 197 ifTrue: [
            recoveredBlock54Stack2 := recoveredBlock54Stack1.
            recoveredBlock54PC := 198.
        ].
        recoveredBlock54Step = 198 ifTrue: [
            RBDBUnlinkInstVars := recoveredBlock54Stack2.
            recoveredBlock54PC := 200.
        ].
        recoveredBlock54Step = 200 ifTrue: [
            recoveredBlock54Result := recoveredBlock54Stack1.
            recoveredBlock54Done := true.
        ].
    ].
    recoveredBlock54Result
].
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack2 := RBDBUnlinkFromClasses.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack3 := RBDBUnlinkInstVars.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

