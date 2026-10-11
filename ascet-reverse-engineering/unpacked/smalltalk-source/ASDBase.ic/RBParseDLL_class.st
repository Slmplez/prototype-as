"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2004efc0; bytecode file offset 0x94d048"
!RBParseDLL class methodsFor: 'recovered'!
fileName
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x200aa46c; bytecode file offset 0x9a6d2c"
!RBParseDLL class methodsFor: 'recovered'!
createForController: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) initializeCallbackMessages: (recoveredValue0).
    recoveredValue1 := (self) new.
    recoveredValue2 := (recoveredValue1) initialize.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200f69b0; bytecode file offset 0x9f3278"
!RBParseDLL class methodsFor: 'recovered'!
closeDLL
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    (self) cleanupInstances.
    recoveredValue0 := PlatformLibrary.
    recoveredValue1 := (self) fileName.
    recoveredValue2 := (recoveredValue0) logicalName: (recoveredValue1).
    (recoveredValue2) close.
    ^self
! !

"ASDBase.ic method 0x202e9cb4; bytecode file offset 0xbe6584"
!RBParseDLL class methodsFor: 'recovered'!
cleanupInstances
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CallbackMessages.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 35] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := CallbackMessages.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := [:block280e7a74Arg1 | 
    | block280e7a74Stack0 block280e7a74Stack1 block280e7a74Stack2 block280e7a74Stack3 block280e7a74PC block280e7a74Step block280e7a74Done block280e7a74Result |
    block280e7a74Stack0 := self.
    block280e7a74PC := 4.
    block280e7a74Done := false.
    [block280e7a74Done not] whileTrue: [
        block280e7a74Step := block280e7a74PC.
        block280e7a74Step = 4 ifTrue: [
            block280e7a74Stack1 := nil.
            block280e7a74PC := 5.
        ].
        block280e7a74Step = 5 ifTrue: [
            block280e7a74Stack2 := block280e7a74Arg1.
            block280e7a74PC := 6.
        ].
        block280e7a74Step = 6 ifTrue: [
            (block280e7a74Stack2 == nil) ifTrue: [block280e7a74PC := 18] ifFalse: [block280e7a74PC := 10].
        ].
        block280e7a74Step = 10 ifTrue: [
            block280e7a74PC := 11.
        ].
        block280e7a74Step = 11 ifTrue: [
            block280e7a74Stack1 := block280e7a74Arg1.
            block280e7a74PC := 12.
        ].
        block280e7a74Step = 12 ifTrue: [
            block280e7a74Stack2 := nil.
            block280e7a74PC := 13.
        ].
        block280e7a74Step = 13 ifTrue: [
            (block280e7a74Stack1) receiver: (block280e7a74Stack2).
            block280e7a74PC := 15.
        ].
        block280e7a74Step = 15 ifTrue: [
            block280e7a74Stack1 := block280e7a74Arg1.
            block280e7a74PC := 16.
        ].
        block280e7a74Step = 16 ifTrue: [
            block280e7a74Stack2 := nil.
            block280e7a74PC := 17.
        ].
        block280e7a74Step = 17 ifTrue: [
            block280e7a74Stack1 := (block280e7a74Stack1) become: (block280e7a74Stack2).
            block280e7a74PC := 18.
        ].
        block280e7a74Step = 18 ifTrue: [
            block280e7a74Result := block280e7a74Stack1.
            block280e7a74Done := true.
        ].
    ].
    block280e7a74Result
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := CallbackParameter.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 45] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := CallbackParameter.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) atAllPut: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            CallbackMessages := recoveredStack1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            CallbackParameter := recoveredStack1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2034e050; bytecode file offset 0xc4a92c"
!RBParseDLL class methodsFor: 'recovered'!
initializeCallbackMessages: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CallbackMessages.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 16.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) makeFixed.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            CallbackMessages := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := 8.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) makeFixed.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            CallbackParameter := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) callbackMessages.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := [:recoveredBlock37Arg1 :recoveredBlock37Arg2 | 
    | recoveredBlock37Value0 recoveredBlock37Value1 recoveredBlock37Value2 recoveredBlock37Value3 recoveredBlock37Value4 recoveredBlock37Value5 recoveredBlock37Value6 recoveredBlock37Value7 |
    recoveredBlock37Value0 := CallbackMessages.
    recoveredBlock37Value1 := recoveredBlock37Arg2.
    recoveredBlock37Value2 := DirectedMessage.
    recoveredBlock37Value3 := recoveredBlock37Arg1.
    recoveredBlock37Value4 := CallbackParameter.
    recoveredBlock37Value5 := recoveredArg1.
    recoveredBlock37Value6 := (recoveredBlock37Value2) selector: (recoveredBlock37Value3) arguments: (recoveredBlock37Value4) receiver: (recoveredBlock37Value5).
    recoveredBlock37Value7 := (recoveredBlock37Value0) at: (recoveredBlock37Value1) put: (recoveredBlock37Value6).
    recoveredBlock37Value7
].
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack1) doWithIndex: (recoveredStack2).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

