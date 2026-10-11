"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"extwid.ic method 0x20001c48; bytecode file offset 0x52a74"
!EwToolBarFsm methodsFor: 'recovered'!
addEdge: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) edges.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) add: (recoveredValue1).
    ^recoveredValue2
! !

"extwid.ic method 0x200028e4; bytecode file offset 0x53810"
!EwToolBarFsm methodsFor: 'recovered'!
initialState
    | recoveredValue0 |
    recoveredValue0 := initialState.
    ^recoveredValue0
! !

"extwid.ic method 0x20006160; bytecode file offset 0x56f28"
!EwToolBarFsm methodsFor: 'recovered'!
initialState: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    initialState := recoveredValue0.
    recoveredValue1 := recoveredArg1.
    (self) state: (recoveredValue1).
    ^self
! !

"extwid.ic method 0x20006408; bytecode file offset 0x57284"
!EwToolBarFsm methodsFor: 'recovered'!
state: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    state := recoveredValue0.
    ^self
! !

"extwid.ic method 0x2000a17c; bytecode file offset 0x5af44"
!EwToolBarFsm methodsFor: 'recovered'!
state
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := state.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) initialState.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            state := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := state.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"extwid.ic method 0x2000af94; bytecode file offset 0x5bd60"
!EwToolBarFsm methodsFor: 'recovered'!
edges
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := edges.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            edges := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := edges.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"extwid.ic method 0x2000c7cc; bytecode file offset 0x5d59c"
!EwToolBarFsm methodsFor: 'recovered'!
addEdgeFrom: recoveredArg1 to: recoveredArg2 ref: recoveredArg3 condition: recoveredArg4 action: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := EwToolBarFsmEdge.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := recoveredArg5.
    recoveredValue6 := (recoveredValue0) from: (recoveredValue1) to: (recoveredValue2) ref: (recoveredValue3) condition: (recoveredValue4) action: (recoveredValue5).
    (self) addEdge: (recoveredValue6).
    ^self
! !

"extwid.ic method 0x20016640; bytecode file offset 0x67418"
!EwToolBarFsm methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (recoveredValue1) cr.
    recoveredValue2 := (self) edges.
    recoveredValue3 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Value0 recoveredBlock18Value1 recoveredBlock18Value2 |
    recoveredBlock18Value0 := recoveredBlock18Arg1.
    recoveredBlock18Value1 := recoveredArg1.
    recoveredBlock18Value2 := (recoveredBlock18Value0) printOn: (recoveredBlock18Value1).
    recoveredBlock18Value2
].
    (recoveredValue2) do: (recoveredValue3).
    ^self
! !

"extwid.ic method 0x200212ec; bytecode file offset 0x720d0"
!EwToolBarFsm methodsFor: 'recovered'!
transitionWith: recoveredArg1 with: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) state.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := (self) edges.
    recoveredValue2 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Stack0 recoveredBlock10Stack1 recoveredBlock10Stack2 recoveredBlock10Stack3 recoveredBlock10Stack4 recoveredBlock10Stack5 recoveredBlock10PC recoveredBlock10Step recoveredBlock10Done recoveredBlock10Result |
    recoveredBlock10Stack0 := self.
    recoveredBlock10PC := 16.
    recoveredBlock10Done := false.
    [recoveredBlock10Done not] whileTrue: [
        recoveredBlock10Step := recoveredBlock10PC.
        recoveredBlock10Step = 16 ifTrue: [
            recoveredBlock10Stack1 := nil.
            recoveredBlock10PC := 17.
        ].
        recoveredBlock10Step = 17 ifTrue: [
            recoveredBlock10Stack2 := recoveredBlock10Arg1.
            recoveredBlock10PC := 18.
        ].
        recoveredBlock10Step = 18 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) from.
            recoveredBlock10PC := 19.
        ].
        recoveredBlock10Step = 19 ifTrue: [
            recoveredBlock10Stack3 := recoveredLocal1.
            recoveredBlock10PC := 22.
        ].
        recoveredBlock10Step = 22 ifTrue: [
            (recoveredBlock10Stack2 ~~ recoveredBlock10Stack3) ifTrue: [recoveredBlock10PC := 55] ifFalse: [recoveredBlock10PC := 26].
        ].
        recoveredBlock10Step = 26 ifTrue: [
            recoveredBlock10Stack2 := recoveredBlock10Arg1.
            recoveredBlock10PC := 27.
        ].
        recoveredBlock10Step = 27 ifTrue: [
            recoveredBlock10Stack3 := recoveredArg1.
            recoveredBlock10PC := 30.
        ].
        recoveredBlock10Step = 30 ifTrue: [
            recoveredBlock10Stack4 := recoveredArg2.
            recoveredBlock10PC := 33.
        ].
        recoveredBlock10Step = 33 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) firesWith: (recoveredBlock10Stack3) with: (recoveredBlock10Stack4).
            recoveredBlock10PC := 35.
        ].
        recoveredBlock10Step = 35 ifTrue: [
            (recoveredBlock10Stack2) ifTrue: [recoveredBlock10PC := 38] ifFalse: [recoveredBlock10PC := 55].
        ].
        recoveredBlock10Step = 38 ifTrue: [
            recoveredBlock10PC := 39.
        ].
        recoveredBlock10Step = 39 ifTrue: [
            recoveredBlock10Stack1 := recoveredBlock10Arg1.
            recoveredBlock10PC := 40.
        ].
        recoveredBlock10Step = 40 ifTrue: [
            recoveredBlock10Stack2 := recoveredArg1.
            recoveredBlock10PC := 43.
        ].
        recoveredBlock10Step = 43 ifTrue: [
            recoveredBlock10Stack3 := recoveredArg2.
            recoveredBlock10PC := 46.
        ].
        recoveredBlock10Step = 46 ifTrue: [
            (recoveredBlock10Stack1) performActionWith: (recoveredBlock10Stack2) with: (recoveredBlock10Stack3).
            recoveredBlock10PC := 48.
        ].
        recoveredBlock10Step = 48 ifTrue: [
            recoveredBlock10Stack1 := self.
            recoveredBlock10PC := 49.
        ].
        recoveredBlock10Step = 49 ifTrue: [
            recoveredBlock10Stack2 := recoveredBlock10Arg1.
            recoveredBlock10PC := 50.
        ].
        recoveredBlock10Step = 50 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) to.
            recoveredBlock10PC := 52.
        ].
        recoveredBlock10Step = 52 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) state: (recoveredBlock10Stack2).
            recoveredBlock10PC := 54.
        ].
        recoveredBlock10Step = 54 ifTrue: [
            ^recoveredBlock10Stack1
        ].
        recoveredBlock10Step = 55 ifTrue: [
            recoveredBlock10Result := recoveredBlock10Stack1.
            recoveredBlock10Done := true.
        ].
    ].
    recoveredBlock10Result
].
    (recoveredValue1) do: (recoveredValue2).
    ^self
! !

