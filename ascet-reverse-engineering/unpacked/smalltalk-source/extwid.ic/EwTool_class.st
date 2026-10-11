"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"extwid.ic method 0x20001828; bytecode file offset 0x526c8"
!EwTool class methodsFor: 'recovered'!
initializeClass
    (self) initializeFsm.
    ^self
! !

"extwid.ic method 0x20006ff4; bytecode file offset 0x57e08"
!EwTool class methodsFor: 'recovered'!
fsm: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    fsm := recoveredValue0.
    ^self
! !

"extwid.ic method 0x20009754; bytecode file offset 0x5a51c"
!EwTool class methodsFor: 'recovered'!
fsm
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := fsm.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) initializeFsm.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := fsm.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"extwid.ic method 0x2000a448; bytecode file offset 0x5b214"
!EwTool class methodsFor: 'recovered'!
sortBlock
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:block280053d0Arg1 :block280053d0Arg2 | 
    | block280053d0Value0 block280053d0Value1 block280053d0Value2 block280053d0Value3 block280053d0Value4 |
    block280053d0Value0 := block280053d0Arg1.
    block280053d0Value1 := (block280053d0Value0) name.
    block280053d0Value2 := block280053d0Arg2.
    block280053d0Value3 := (block280053d0Value2) name.
    block280053d0Value4 := (block280053d0Value1) < (block280053d0Value3).
    block280053d0Value4
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"extwid.ic method 0x2000af64; bytecode file offset 0x5bd3c"
!EwTool class methodsFor: 'recovered'!
initialize
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EwTool.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) withAllSubclasses.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [:block28005514Arg1 | 
    | block28005514Value0 block28005514Value1 |
    block28005514Value0 := block28005514Arg1.
    block28005514Value1 := (block28005514Value0) initializeClass.
    block28005514Value1
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"extwid.ic method 0x2000c920; bytecode file offset 0x5d6f4"
!EwTool class methodsFor: 'recovered'!
createTool: recoveredArg1 parent: recoveredArg2 argBlock: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) asString.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := recoveredArg3.
    (recoveredValue0) name: (recoveredValue3) parent: (recoveredValue4) argBlock: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    (recoveredValue6) initializeAfterCreate.
    recoveredValue7 := recoveredLocal1.
    ^recoveredValue7
! !

"extwid.ic method 0x2000e538; bytecode file offset 0x5f314"
!EwTool class methodsFor: 'recovered'!
removing
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) withAllSubclasses.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280055ecArg1 | 
    | block280055ecValue0 block280055ecValue1 |
    block280055ecValue0 := block280055ecArg1.
    block280055ecValue1 := (block280055ecValue0) fsm: (nil).
    block280055ecValue1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := EwButtonDrawPolicy.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) removing.
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

"extwid.ic method 0x200306f0; bytecode file offset 0x81500"
!EwTool class methodsFor: 'recovered'!
initializeFsm
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EwToolBarFsm.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'idle'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) withInitialState: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := 'idle'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack4 := 'visited'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack5 := 1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack6 := [:block28005d84Arg1 :block28005d84Arg2 | 
    | block28005d84Stack0 block28005d84Stack1 block28005d84Stack2 block28005d84Stack3 block28005d84Stack4 block28005d84PC block28005d84Step block28005d84Done block28005d84Result |
    block28005d84Stack0 := self.
    block28005d84PC := 4.
    block28005d84Done := false.
    [block28005d84Done not] whileTrue: [
        block28005d84Step := block28005d84PC.
        block28005d84Step = 4 ifTrue: [
            block28005d84Stack1 := false.
            block28005d84PC := 5.
        ].
        block28005d84Step = 5 ifTrue: [
            block28005d84Stack2 := block28005d84Arg2.
            block28005d84PC := 6.
        ].
        block28005d84Step = 6 ifTrue: [
            block28005d84Stack2 := (block28005d84Stack2) isOkToNotify.
            block28005d84PC := 8.
        ].
        block28005d84Step = 8 ifTrue: [
            (block28005d84Stack2) ifTrue: [block28005d84PC := 12] ifFalse: [block28005d84PC := 31].
        ].
        block28005d84Step = 12 ifTrue: [
            block28005d84PC := 13.
        ].
        block28005d84Step = 13 ifTrue: [
            block28005d84Stack1 := false.
            block28005d84PC := 14.
        ].
        block28005d84Step = 14 ifTrue: [
            block28005d84Stack2 := block28005d84Arg1.
            block28005d84PC := 15.
        ].
        block28005d84Step = 15 ifTrue: [
            block28005d84Stack2 := (block28005d84Stack2) type.
            block28005d84PC := 17.
        ].
        block28005d84Step = 17 ifTrue: [
            block28005d84Stack3 := MotionNotify.
            block28005d84PC := 19.
        ].
        block28005d84Step = 19 ifTrue: [
            block28005d84Stack2 := (block28005d84Stack2) = (block28005d84Stack3).
            block28005d84PC := 20.
        ].
        block28005d84Step = 20 ifTrue: [
            (block28005d84Stack2) ifTrue: [block28005d84PC := 24] ifFalse: [block28005d84PC := 31].
        ].
        block28005d84Step = 24 ifTrue: [
            block28005d84PC := 25.
        ].
        block28005d84Step = 25 ifTrue: [
            block28005d84Stack1 := block28005d84Arg2.
            block28005d84PC := 26.
        ].
        block28005d84Step = 26 ifTrue: [
            block28005d84Stack2 := block28005d84Arg1.
            block28005d84PC := 27.
        ].
        block28005d84Step = 27 ifTrue: [
            block28005d84Stack2 := (block28005d84Stack2) point.
            block28005d84PC := 29.
        ].
        block28005d84Step = 29 ifTrue: [
            block28005d84Stack1 := (block28005d84Stack1) containsPoint: (block28005d84Stack2).
            block28005d84PC := 31.
        ].
        block28005d84Step = 31 ifTrue: [
            block28005d84Result := block28005d84Stack1.
            block28005d84Done := true.
        ].
    ].
    block28005d84Result
].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack7 := [:block28005da8Arg1 :block28005da8Arg2 | 
    | block28005da8Value0 block28005da8Value1 block28005da8Value2 block28005da8Value3 block28005da8Value4 block28005da8Value5 |
    block28005da8Value0 := block28005da8Arg2.
    block28005da8Value1 := block28005da8Value0.
    (block28005da8Value1) wantAllEvents: (true).
    block28005da8Value2 := block28005da8Value0.
    block28005da8Value3 := block28005da8Arg2.
    (block28005da8Value2) wantsEventsFirst: (block28005da8Value3).
    block28005da8Value4 := block28005da8Arg1.
    block28005da8Value5 := (block28005da8Value0) callEnterNotifyCallback: (block28005da8Value4).
    block28005da8Value5
].
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack2) addEdgeFrom: (recoveredStack3) to: (recoveredStack4) ref: (recoveredStack5) condition: (recoveredStack6) action: (recoveredStack7).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack3 := 'visited'.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack4 := 'idle'.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack5 := 2.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack6 := [:block28005dccArg1 :block28005dccArg2 | 
    | block28005dccStack0 block28005dccStack1 block28005dccStack2 block28005dccStack3 block28005dccStack4 block28005dccPC block28005dccStep block28005dccDone block28005dccResult |
    block28005dccStack0 := self.
    block28005dccPC := 4.
    block28005dccDone := false.
    [block28005dccDone not] whileTrue: [
        block28005dccStep := block28005dccPC.
        block28005dccStep = 4 ifTrue: [
            block28005dccStack1 := false.
            block28005dccPC := 5.
        ].
        block28005dccStep = 5 ifTrue: [
            block28005dccStack2 := block28005dccArg2.
            block28005dccPC := 6.
        ].
        block28005dccStep = 6 ifTrue: [
            block28005dccStack2 := (block28005dccStack2) isOkToNotify.
            block28005dccPC := 8.
        ].
        block28005dccStep = 8 ifTrue: [
            (block28005dccStack2) ifTrue: [block28005dccPC := 12] ifFalse: [block28005dccPC := 32].
        ].
        block28005dccStep = 12 ifTrue: [
            block28005dccPC := 13.
        ].
        block28005dccStep = 13 ifTrue: [
            block28005dccStack1 := false.
            block28005dccPC := 14.
        ].
        block28005dccStep = 14 ifTrue: [
            block28005dccStack2 := block28005dccArg1.
            block28005dccPC := 15.
        ].
        block28005dccStep = 15 ifTrue: [
            block28005dccStack2 := (block28005dccStack2) type.
            block28005dccPC := 17.
        ].
        block28005dccStep = 17 ifTrue: [
            block28005dccStack3 := MotionNotify.
            block28005dccPC := 19.
        ].
        block28005dccStep = 19 ifTrue: [
            block28005dccStack2 := (block28005dccStack2) = (block28005dccStack3).
            block28005dccPC := 20.
        ].
        block28005dccStep = 20 ifTrue: [
            (block28005dccStack2) ifTrue: [block28005dccPC := 24] ifFalse: [block28005dccPC := 32].
        ].
        block28005dccStep = 24 ifTrue: [
            block28005dccPC := 25.
        ].
        block28005dccStep = 25 ifTrue: [
            block28005dccStack1 := block28005dccArg2.
            block28005dccPC := 26.
        ].
        block28005dccStep = 26 ifTrue: [
            block28005dccStack2 := block28005dccArg1.
            block28005dccPC := 27.
        ].
        block28005dccStep = 27 ifTrue: [
            block28005dccStack2 := (block28005dccStack2) point.
            block28005dccPC := 29.
        ].
        block28005dccStep = 29 ifTrue: [
            block28005dccStack1 := (block28005dccStack1) containsPoint: (block28005dccStack2).
            block28005dccPC := 31.
        ].
        block28005dccStep = 31 ifTrue: [
            block28005dccStack1 := (block28005dccStack1) not.
            block28005dccPC := 32.
        ].
        block28005dccStep = 32 ifTrue: [
            block28005dccResult := block28005dccStack1.
            block28005dccDone := true.
        ].
    ].
    block28005dccResult
].
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack7 := [:block28005df0Arg1 :block28005df0Arg2 | 
    | block28005df0Value0 block28005df0Value1 block28005df0Value2 block28005df0Value3 block28005df0Value4 |
    block28005df0Value0 := block28005df0Arg2.
    block28005df0Value1 := block28005df0Value0.
    (block28005df0Value1) wantAllEvents: (false).
    block28005df0Value2 := block28005df0Value0.
    (block28005df0Value2) wantsEventsFirst: (nil).
    block28005df0Value3 := block28005df0Arg1.
    block28005df0Value4 := (block28005df0Value0) callLeaveNotifyCallback: (block28005df0Value3).
    block28005df0Value4
].
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            (recoveredStack2) addEdgeFrom: (recoveredStack3) to: (recoveredStack4) ref: (recoveredStack5) condition: (recoveredStack6) action: (recoveredStack7).
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            (recoveredStack0) fsm: (recoveredStack1).
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

