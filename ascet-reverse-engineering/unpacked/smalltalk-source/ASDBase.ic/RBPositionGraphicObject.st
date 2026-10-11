"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000a700; bytecode file offset 0x908be4"
!RBPositionGraphicObject methodsFor: 'recovered'!
getPosition
    | recoveredValue0 |
    recoveredValue0 := (self) position.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20084c54; bytecode file offset 0x981ca4"
!RBPositionGraphicObject methodsFor: 'recovered'!
setPosition: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) position: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x20165960; bytecode file offset 0xa6221c"
!RBPositionGraphicObject methodsFor: 'recovered'!
moveTo: recoveredArg1
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
            recoveredStack2 := (recoveredStack2) position.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) position: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202cfbd4; bytecode file offset 0xbcc4ac"
!RBPositionGraphicObject methodsFor: 'recovered'!
position: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_71935'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRuntime.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 45] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) isPoint.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 45].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) isInteger.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 33] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) etasDevHalt.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) isInteger.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 45] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) etasDevHalt.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            position := recoveredStack1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2032aaac; bytecode file offset 0xc27388"
!RBPositionGraphicObject methodsFor: 'recovered'!
position
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ('Kli') == ('Call_71935').
    recoveredValue1 := position.
    recoveredValue2 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Stack0 recoveredBlock12Stack1 recoveredBlock12Stack2 recoveredBlock12Stack3 recoveredBlock12PC recoveredBlock12Step recoveredBlock12Done recoveredBlock12Result |
    recoveredBlock12Stack0 := self.
    recoveredBlock12PC := 18.
    recoveredBlock12Done := false.
    [recoveredBlock12Done not] whileTrue: [
        recoveredBlock12Step := recoveredBlock12PC.
        recoveredBlock12Step = 18 ifTrue: [
            recoveredBlock12Stack1 := recoveredBlock12Arg1.
            recoveredBlock12PC := 19.
        ].
        recoveredBlock12Step = 19 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) x.
            recoveredBlock12PC := 20.
        ].
        recoveredBlock12Step = 20 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) isInteger.
            recoveredBlock12PC := 21.
        ].
        recoveredBlock12Step = 21 ifTrue: [
            (recoveredBlock12Stack1) ifTrue: [recoveredBlock12PC := 34] ifFalse: [recoveredBlock12PC := 24].
        ].
        recoveredBlock12Step = 24 ifTrue: [
            recoveredBlock12Stack1 := recoveredBlock12Arg1.
            recoveredBlock12PC := 25.
        ].
        recoveredBlock12Step = 25 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Arg1.
            recoveredBlock12PC := 26.
        ].
        recoveredBlock12Step = 26 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) x.
            recoveredBlock12PC := 27.
        ].
        recoveredBlock12Step = 27 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) asInteger.
            recoveredBlock12PC := 29.
        ].
        recoveredBlock12Step = 29 ifTrue: [
            (recoveredBlock12Stack1) x: (recoveredBlock12Stack2).
            recoveredBlock12PC := 31.
        ].
        recoveredBlock12Step = 31 ifTrue: [
            recoveredBlock12Stack1 := self.
            recoveredBlock12PC := 32.
        ].
        recoveredBlock12Step = 32 ifTrue: [
            (recoveredBlock12Stack1) etasDevHalt.
            recoveredBlock12PC := 34.
        ].
        recoveredBlock12Step = 34 ifTrue: [
            recoveredBlock12Stack1 := nil.
            recoveredBlock12PC := 35.
        ].
        recoveredBlock12Step = 35 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Arg1.
            recoveredBlock12PC := 36.
        ].
        recoveredBlock12Step = 36 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) y.
            recoveredBlock12PC := 38.
        ].
        recoveredBlock12Step = 38 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) isInteger.
            recoveredBlock12PC := 39.
        ].
        recoveredBlock12Step = 39 ifTrue: [
            (recoveredBlock12Stack2) ifTrue: [recoveredBlock12PC := 54] ifFalse: [recoveredBlock12PC := 42].
        ].
        recoveredBlock12Step = 42 ifTrue: [
            recoveredBlock12PC := 43.
        ].
        recoveredBlock12Step = 43 ifTrue: [
            recoveredBlock12Stack1 := recoveredBlock12Arg1.
            recoveredBlock12PC := 44.
        ].
        recoveredBlock12Step = 44 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Arg1.
            recoveredBlock12PC := 45.
        ].
        recoveredBlock12Step = 45 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) y.
            recoveredBlock12PC := 47.
        ].
        recoveredBlock12Step = 47 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) asInteger.
            recoveredBlock12PC := 49.
        ].
        recoveredBlock12Step = 49 ifTrue: [
            (recoveredBlock12Stack1) y: (recoveredBlock12Stack2).
            recoveredBlock12PC := 51.
        ].
        recoveredBlock12Step = 51 ifTrue: [
            recoveredBlock12Stack1 := self.
            recoveredBlock12PC := 52.
        ].
        recoveredBlock12Step = 52 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) etasDevHalt.
            recoveredBlock12PC := 54.
        ].
        recoveredBlock12Step = 54 ifTrue: [
            recoveredBlock12Result := recoveredBlock12Stack1.
            recoveredBlock12Done := true.
        ].
    ].
    recoveredBlock12Result
].
    (recoveredValue1) ifNotNil: (recoveredValue2).
    recoveredValue3 := position.
    ^recoveredValue3
! !

