"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x200025e8; bytecode file offset 0x7e8a4"
!CwInputEvent methodsFor: 'recovered'!
point
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) x.
    recoveredValue1 := (self) y.
    recoveredValue2 := (recoveredValue0) @ (recoveredValue1).
    ^recoveredValue2
! !

"winsys.ic method 0x20002660; bytecode file offset 0x7e8a4"
!CwInputEvent methodsFor: 'recovered'!
pointRoot
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) xRoot.
    recoveredValue1 := (self) yRoot.
    recoveredValue2 := (recoveredValue0) @ (recoveredValue1).
    ^recoveredValue2
! !

"winsys.ic method 0x200031e0; bytecode file offset 0x7f418"
!CwInputEvent methodsFor: 'recovered'!
time
    | recoveredValue0 |
    recoveredValue0 := time.
    ^recoveredValue0
! !

"winsys.ic method 0x200033e8; bytecode file offset 0x7f5b8"
!CwInputEvent methodsFor: 'recovered'!
x
    | recoveredValue0 |
    recoveredValue0 := x.
    ^recoveredValue0
! !

"winsys.ic method 0x20003528; bytecode file offset 0x7f720"
!CwInputEvent methodsFor: 'recovered'!
y
    | recoveredValue0 |
    recoveredValue0 := y.
    ^recoveredValue0
! !

"winsys.ic method 0x20003698; bytecode file offset 0x7f878"
!CwInputEvent methodsFor: 'recovered'!
xRoot
    | recoveredValue0 |
    recoveredValue0 := xRoot.
    ^recoveredValue0
! !

"winsys.ic method 0x200037c0; bytecode file offset 0x7f9b8"
!CwInputEvent methodsFor: 'recovered'!
yRoot
    | recoveredValue0 |
    recoveredValue0 := yRoot.
    ^recoveredValue0
! !

"winsys.ic method 0x20003888; bytecode file offset 0x7fac0"
!CwInputEvent methodsFor: 'recovered'!
state
    | recoveredValue0 |
    recoveredValue0 := state.
    ^recoveredValue0
! !

"winsys.ic method 0x20006878; bytecode file offset 0x82a3c"
!CwInputEvent methodsFor: 'recovered'!
time: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    time := recoveredValue0.
    recoveredValue1 := recoveredArg1.
    LastEventTime := recoveredValue1.
    ^self
! !

"winsys.ic method 0x200079e0; bytecode file offset 0x83bb0"
!CwInputEvent methodsFor: 'recovered'!
x: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    x := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20007a30; bytecode file offset 0x83ce8"
!CwInputEvent methodsFor: 'recovered'!
y: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    y := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20007b60; bytecode file offset 0x83df0"
!CwInputEvent methodsFor: 'recovered'!
xRoot: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    xRoot := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20007d00; bytecode file offset 0x83ed0"
!CwInputEvent methodsFor: 'recovered'!
yRoot: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    yRoot := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20007d50; bytecode file offset 0x83f98"
!CwInputEvent methodsFor: 'recovered'!
state: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    state := recoveredValue0.
    ^self
! !

"winsys.ic method 0x2001f45c; bytecode file offset 0x9b650"
!CwInputEvent methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) printString.
    recoveredValue3 := (recoveredValue2) , ('[').
    recoveredValue4 := (self) x.
    recoveredValue5 := (recoveredValue4) printString.
    recoveredValue6 := (recoveredValue3) , (recoveredValue5).
    recoveredValue7 := (recoveredValue6) , (',').
    recoveredValue8 := (self) y.
    recoveredValue9 := (recoveredValue8) printString.
    recoveredValue10 := (recoveredValue7) , (recoveredValue9).
    recoveredValue11 := (recoveredValue10) , (']').
    recoveredValue12 := (recoveredValue11) , (' state=').
    recoveredValue13 := (self) stateString.
    recoveredValue14 := (recoveredValue12) , (recoveredValue13).
    recoveredValue15 := (recoveredValue14) , (' time=').
    recoveredValue16 := (self) time.
    recoveredValue17 := (recoveredValue16) printString.
    recoveredValue18 := (recoveredValue15) , (recoveredValue17).
    (recoveredValue0) nextPutAll: (recoveredValue18).
    ^self
! !

"winsys.ic method 0x2002ba38; bytecode file offset 0xa7c28"
!CwInputEvent methodsFor: 'recovered'!
stateString
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) state.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := '0'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := WriteStream.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) on: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := StateMaskNames.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := [:recoveredBlock30Arg1 | 
    | recoveredBlock30Stack0 recoveredBlock30Stack1 recoveredBlock30Stack2 recoveredBlock30Stack3 recoveredBlock30Stack4 recoveredBlock30PC recoveredBlock30Step recoveredBlock30Done recoveredBlock30Result |
    recoveredBlock30Stack0 := self.
    recoveredBlock30PC := 36.
    recoveredBlock30Done := false.
    [recoveredBlock30Done not] whileTrue: [
        recoveredBlock30Step := recoveredBlock30PC.
        recoveredBlock30Step = 36 ifTrue: [
            recoveredBlock30Stack1 := nil.
            recoveredBlock30PC := 37.
        ].
        recoveredBlock30Step = 37 ifTrue: [
            recoveredBlock30Stack2 := self.
            recoveredBlock30PC := 38.
        ].
        recoveredBlock30Step = 38 ifTrue: [
            recoveredBlock30Stack2 := (recoveredBlock30Stack2) state.
            recoveredBlock30PC := 39.
        ].
        recoveredBlock30Step = 39 ifTrue: [
            recoveredBlock30Stack3 := recoveredBlock30Arg1.
            recoveredBlock30PC := 40.
        ].
        recoveredBlock30Step = 40 ifTrue: [
            recoveredBlock30Stack2 := (recoveredBlock30Stack2) bitAnd: (recoveredBlock30Stack3).
            recoveredBlock30PC := 42.
        ].
        recoveredBlock30Step = 42 ifTrue: [
            recoveredBlock30Stack3 := recoveredBlock30Arg1.
            recoveredBlock30PC := 43.
        ].
        recoveredBlock30Step = 43 ifTrue: [
            recoveredBlock30Stack2 := (recoveredBlock30Stack2) = (recoveredBlock30Stack3).
            recoveredBlock30PC := 44.
        ].
        recoveredBlock30Step = 44 ifTrue: [
            (recoveredBlock30Stack2) ifTrue: [recoveredBlock30PC := 48] ifFalse: [recoveredBlock30PC := 78].
        ].
        recoveredBlock30Step = 48 ifTrue: [
            recoveredBlock30PC := 49.
        ].
        recoveredBlock30Step = 49 ifTrue: [
            recoveredBlock30Stack1 := recoveredLocal1.
            recoveredBlock30PC := 52.
        ].
        recoveredBlock30Step = 52 ifTrue: [
            (recoveredBlock30Stack1) ifTrue: [recoveredBlock30PC := 56] ifFalse: [recoveredBlock30PC := 63].
        ].
        recoveredBlock30Step = 56 ifTrue: [
            recoveredBlock30Stack1 := recoveredLocal2.
            recoveredBlock30PC := 59.
        ].
        recoveredBlock30Step = 59 ifTrue: [
            recoveredBlock30Stack2 := ' | '.
            recoveredBlock30PC := 61.
        ].
        recoveredBlock30Step = 61 ifTrue: [
            (recoveredBlock30Stack1) nextPutAll: (recoveredBlock30Stack2).
            recoveredBlock30PC := 63.
        ].
        recoveredBlock30Step = 63 ifTrue: [
            recoveredBlock30Stack1 := recoveredLocal2.
            recoveredBlock30PC := 66.
        ].
        recoveredBlock30Step = 66 ifTrue: [
            recoveredBlock30Stack2 := StateMaskNames.
            recoveredBlock30PC := 68.
        ].
        recoveredBlock30Step = 68 ifTrue: [
            recoveredBlock30Stack3 := recoveredBlock30Arg1.
            recoveredBlock30PC := 69.
        ].
        recoveredBlock30Step = 69 ifTrue: [
            recoveredBlock30Stack2 := (recoveredBlock30Stack2) at: (recoveredBlock30Stack3).
            recoveredBlock30PC := 71.
        ].
        recoveredBlock30Step = 71 ifTrue: [
            (recoveredBlock30Stack1) nextPutAll: (recoveredBlock30Stack2).
            recoveredBlock30PC := 73.
        ].
        recoveredBlock30Step = 73 ifTrue: [
            recoveredBlock30Stack1 := true.
            recoveredBlock30PC := 74.
        ].
        recoveredBlock30Step = 74 ifTrue: [
            recoveredBlock30Stack2 := recoveredBlock30Stack1.
            recoveredBlock30PC := 75.
        ].
        recoveredBlock30Step = 75 ifTrue: [
            recoveredLocal1 := recoveredBlock30Stack2.
            recoveredBlock30PC := 78.
        ].
        recoveredBlock30Step = 78 ifTrue: [
            recoveredBlock30Result := recoveredBlock30Stack1.
            recoveredBlock30Done := true.
        ].
    ].
    recoveredBlock30Result
].
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0) keysDo: (recoveredStack1).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) contents.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

