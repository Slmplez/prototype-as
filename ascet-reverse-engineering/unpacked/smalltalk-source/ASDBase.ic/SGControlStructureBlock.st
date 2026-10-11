"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000710c; bytecode file offset 0x908be4"
!SGControlStructureBlock methodsFor: 'recovered'!
scopeName
    | recoveredValue0 |
    recoveredValue0 := (self) errLabel.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200355f4; bytecode file offset 0x934580"
!SGControlStructureBlock methodsFor: 'recovered'!
interfaceConditions
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) conditionPort.
    recoveredValue1 := (recoveredValue0) interfaceElements.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005d820; bytecode file offset 0x95a15c"
!SGControlStructureBlock methodsFor: 'recovered'!
interfaceArguments
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := interface.
    recoveredValue1 := (recoveredValue0) first.
    recoveredValue2 := (recoveredValue1) interfaceArguments.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2006bdb8; bytecode file offset 0x96873c"
!SGControlStructureBlock methodsFor: 'recovered'!
conditionPort
    | recoveredValue0 |
    recoveredValue0 := conditionPort.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007582c; bytecode file offset 0x9757c8"
!SGControlStructureBlock methodsFor: 'recovered'!
isBdlControlBlock
    ^true
! !

"ASDBase.ic method 0x200cbb30; bytecode file offset 0x9c83f4"
!SGControlStructureBlock methodsFor: 'recovered'!
interfaceReturns
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := Array.
    recoveredValue1 := interface.
    recoveredValue2 := (recoveredValue1) first.
    recoveredValue3 := (recoveredValue2) interfaceElements.
    recoveredValue4 := (recoveredValue3) first.
    recoveredValue5 := (recoveredValue0) with: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x201a4014; bytecode file offset 0xaa08d0"
!SGControlStructureBlock methodsFor: 'recovered'!
fileInActivate: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := conditionPort.
    (recoveredValue0) block: (self).
    recoveredValue1 := interface.
    recoveredValue2 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 |
    recoveredBlock11Value0 := recoveredBlock11Arg1.
    recoveredBlock11Value1 := (recoveredBlock11Value0) block: (self).
    recoveredBlock11Value1
].
    (recoveredValue1) do: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x201a7f88; bytecode file offset 0xaa4844"
!SGControlStructureBlock methodsFor: 'recovered'!
fileInActivate: recoveredArg1 in: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := conditionPort.
    (recoveredValue0) block: (self).
    recoveredValue1 := interface.
    recoveredValue2 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 |
    recoveredBlock11Value0 := recoveredBlock11Arg1.
    recoveredBlock11Value1 := (recoveredBlock11Value0) block: (self).
    recoveredBlock11Value1
].
    (recoveredValue1) do: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20321820; bytecode file offset 0xc1e0f0"
!SGControlStructureBlock methodsFor: 'recovered'!
initialize: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            super initialize.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := SGControlStructureBlockPort.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := 0.
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
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 37.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) addResult.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredPC := 37.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) addArgument.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack0) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 20] ifFalse: [recoveredLocal1 := nil. recoveredPC := 51]] ifFalse: [recoveredPC := 41].
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 49] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) addPort: (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203a8728; bytecode file offset 0xca5010"
!SGControlStructureBlock methodsFor: 'recovered'!
bdlPrereqDataflow
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) conditionPort.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceElements.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := [:block280f4ef0Arg1 | 
    | block280f4ef0Stack0 block280f4ef0Stack1 block280f4ef0Stack2 block280f4ef0Stack3 block280f4ef0Stack4 block280f4ef0PC block280f4ef0Step block280f4ef0Done block280f4ef0Result |
    block280f4ef0Stack0 := self.
    block280f4ef0PC := 4.
    block280f4ef0Done := false.
    [block280f4ef0Done not] whileTrue: [
        block280f4ef0Step := block280f4ef0PC.
        block280f4ef0Step = 4 ifTrue: [
            block280f4ef0Stack1 := block280f4ef0Arg1.
            block280f4ef0PC := 5.
        ].
        block280f4ef0Step = 5 ifTrue: [
            block280f4ef0Stack2 := OrderedCollection.
            block280f4ef0PC := 7.
        ].
        block280f4ef0Step = 7 ifTrue: [
            block280f4ef0Stack2 := (block280f4ef0Stack2) new.
            block280f4ef0PC := 9.
        ].
        block280f4ef0Step = 9 ifTrue: [
            block280f4ef0Stack3 := [:block280f4f14Arg1 :block280f4f14Arg2 :block280f4f14Arg3 :block280f4f14Arg4 | 
    | block280f4f14Stack0 block280f4f14Stack1 block280f4f14Stack2 block280f4f14Stack3 block280f4f14Stack4 block280f4f14PC block280f4f14Step block280f4f14Done block280f4f14Result |
    block280f4f14Stack0 := self.
    block280f4f14PC := 4.
    block280f4f14Done := false.
    [block280f4f14Done not] whileTrue: [
        block280f4f14Step := block280f4f14PC.
        block280f4f14Step = 4 ifTrue: [
            block280f4f14Stack1 := block280f4f14Arg1.
            block280f4f14PC := 5.
        ].
        block280f4f14Step = 5 ifTrue: [
            (block280f4f14Stack1) ifTrue: [block280f4f14PC := 8] ifFalse: [block280f4f14PC := 14].
        ].
        block280f4f14Step = 8 ifTrue: [
            block280f4f14Stack1 := block280f4f14Arg2.
            block280f4f14PC := 9.
        ].
        block280f4f14Step = 9 ifTrue: [
            block280f4f14Stack2 := 5.
            block280f4f14PC := 11.
        ].
        block280f4f14Step = 11 ifTrue: [
            block280f4f14Stack3 := block280f4f14Arg4.
            block280f4f14PC := 12.
        ].
        block280f4f14Step = 12 ifTrue: [
            (block280f4f14Stack1) bdlSyntaxErrNo: (block280f4f14Stack2) with: (block280f4f14Stack3).
            block280f4f14PC := 14.
        ].
        block280f4f14Step = 14 ifTrue: [
            block280f4f14Stack1 := nil.
            block280f4f14PC := 15.
        ].
        block280f4f14Step = 15 ifTrue: [
            block280f4f14Result := block280f4f14Stack1.
            block280f4f14Done := true.
        ].
    ].
    block280f4f14Result
].
            block280f4ef0PC := 11.
        ].
        block280f4ef0Step = 11 ifTrue: [
            block280f4ef0PC := 26.
        ].
        block280f4ef0Step = 26 ifTrue: [
            block280f4ef0Stack1 := (block280f4ef0Stack1) bdlPrereqArgument: (block280f4ef0Stack2) ifFail: (block280f4ef0Stack3).
            block280f4ef0PC := 28.
        ].
        block280f4ef0Step = 28 ifTrue: [
            block280f4ef0Result := block280f4ef0Stack1.
            block280f4ef0Done := true.
        ].
    ].
    block280f4ef0Result
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) interfaceArguments.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := [:block280f4f38Arg1 | 
    | block280f4f38Stack0 block280f4f38Stack1 block280f4f38Stack2 block280f4f38Stack3 block280f4f38Stack4 block280f4f38PC block280f4f38Step block280f4f38Done block280f4f38Result |
    block280f4f38Stack0 := self.
    block280f4f38PC := 4.
    block280f4f38Done := false.
    [block280f4f38Done not] whileTrue: [
        block280f4f38Step := block280f4f38PC.
        block280f4f38Step = 4 ifTrue: [
            block280f4f38Stack1 := block280f4f38Arg1.
            block280f4f38PC := 5.
        ].
        block280f4f38Step = 5 ifTrue: [
            block280f4f38Stack2 := OrderedCollection.
            block280f4f38PC := 7.
        ].
        block280f4f38Step = 7 ifTrue: [
            block280f4f38Stack2 := (block280f4f38Stack2) new.
            block280f4f38PC := 9.
        ].
        block280f4f38Step = 9 ifTrue: [
            block280f4f38Stack3 := [:block280f4f5cArg1 :block280f4f5cArg2 :block280f4f5cArg3 :block280f4f5cArg4 | 
    | block280f4f5cStack0 block280f4f5cStack1 block280f4f5cStack2 block280f4f5cStack3 block280f4f5cStack4 block280f4f5cPC block280f4f5cStep block280f4f5cDone block280f4f5cResult |
    block280f4f5cStack0 := self.
    block280f4f5cPC := 4.
    block280f4f5cDone := false.
    [block280f4f5cDone not] whileTrue: [
        block280f4f5cStep := block280f4f5cPC.
        block280f4f5cStep = 4 ifTrue: [
            block280f4f5cStack1 := block280f4f5cArg1.
            block280f4f5cPC := 5.
        ].
        block280f4f5cStep = 5 ifTrue: [
            (block280f4f5cStack1) ifTrue: [block280f4f5cPC := 8] ifFalse: [block280f4f5cPC := 14].
        ].
        block280f4f5cStep = 8 ifTrue: [
            block280f4f5cStack1 := block280f4f5cArg2.
            block280f4f5cPC := 9.
        ].
        block280f4f5cStep = 9 ifTrue: [
            block280f4f5cStack2 := 5.
            block280f4f5cPC := 11.
        ].
        block280f4f5cStep = 11 ifTrue: [
            block280f4f5cStack3 := block280f4f5cArg4.
            block280f4f5cPC := 12.
        ].
        block280f4f5cStep = 12 ifTrue: [
            (block280f4f5cStack1) bdlSyntaxErrNo: (block280f4f5cStack2) with: (block280f4f5cStack3).
            block280f4f5cPC := 14.
        ].
        block280f4f5cStep = 14 ifTrue: [
            block280f4f5cStack1 := nil.
            block280f4f5cPC := 15.
        ].
        block280f4f5cStep = 15 ifTrue: [
            block280f4f5cResult := block280f4f5cStack1.
            block280f4f5cDone := true.
        ].
    ].
    block280f4f5cResult
].
            block280f4f38PC := 11.
        ].
        block280f4f38Step = 11 ifTrue: [
            block280f4f38PC := 26.
        ].
        block280f4f38Step = 26 ifTrue: [
            block280f4f38Stack1 := (block280f4f38Stack1) bdlPrereqArgument: (block280f4f38Stack2) ifFail: (block280f4f38Stack3).
            block280f4f38PC := 28.
        ].
        block280f4f38Step = 28 ifTrue: [
            block280f4f38Result := block280f4f38Stack1.
            block280f4f38Done := true.
        ].
    ].
    block280f4f38Result
].
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

