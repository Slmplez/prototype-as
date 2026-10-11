"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x200006f0; bytecode file offset 0x619a4"
!SstSharedQueue methodsFor: 'recovered'!
remove
    | recoveredValue0 |
    recoveredValue0 := (self) removeFirst.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20001c88; bytecode file offset 0x62d98"
!SstSharedQueue methodsFor: 'recovered'!
add: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) addLast: (recoveredValue0).
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x2000aeec; bytecode file offset 0x6bfc0"
!SstSharedQueue methodsFor: 'recovered'!
size: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    super size: (recoveredValue0).
    recoveredValue1 := Semaphore.
    recoveredValue2 := (recoveredValue1) new.
    readSync := recoveredValue2.
    ^self
! !

"xxx_dyn.ic method 0x2000b524; bytecode file offset 0x6c61c"
!SstSharedQueue methodsFor: 'recovered'!
size
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    | recoveredBlock4Value0 |
    recoveredBlock4Value0 := super size.
    recoveredBlock4Value0
].
    recoveredValue1 := (recoveredValue0) critical.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x2000b538; bytecode file offset 0x6c61c"
!SstSharedQueue methodsFor: 'recovered'!
isEmpty
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    | recoveredBlock4Value0 |
    recoveredBlock4Value0 := super isEmpty.
    recoveredBlock4Value0
].
    recoveredValue1 := (recoveredValue0) critical.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x2000b54c; bytecode file offset 0x6c61c"
!SstSharedQueue methodsFor: 'recovered'!
peek
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    | recoveredBlock4Value0 |
    recoveredBlock4Value0 := super peek.
    recoveredBlock4Value0
].
    recoveredValue1 := (recoveredValue0) critical.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x2000e040; bytecode file offset 0x6f110"
!SstSharedQueue methodsFor: 'recovered'!
do: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 |
    recoveredBlock4Value0 := recoveredArg1.
    recoveredBlock4Value1 := super do: (recoveredBlock4Value0).
    recoveredBlock4Value1
].
    (recoveredValue0) critical.
    ^self
! !

"xxx_dyn.ic method 0x200122a8; bytecode file offset 0x73394"
!SstSharedQueue methodsFor: 'recovered'!
addFirst: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 |
    recoveredBlock4Value0 := recoveredArg1.
    recoveredBlock4Value1 := super addFirst: (recoveredBlock4Value0).
    recoveredBlock4Value1
].
    (recoveredValue0) critical.
    recoveredValue1 := readSync.
    (recoveredValue1) signal.
    recoveredValue2 := recoveredArg1.
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x200122c0; bytecode file offset 0x73394"
!SstSharedQueue methodsFor: 'recovered'!
addLast: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 |
    recoveredBlock4Value0 := recoveredArg1.
    recoveredBlock4Value1 := super addLast: (recoveredBlock4Value0).
    recoveredBlock4Value1
].
    (recoveredValue0) critical.
    recoveredValue1 := readSync.
    (recoveredValue1) signal.
    recoveredValue2 := recoveredArg1.
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x20019b1c; bytecode file offset 0x7abf4"
!SstSharedQueue methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) nextPut: ($().
    recoveredValue1 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 |
    recoveredBlock12Value0 := recoveredBlock12Arg1.
    recoveredBlock12Value1 := recoveredArg1.
    (recoveredBlock12Value0) printOn: (recoveredBlock12Value1).
    recoveredBlock12Value2 := recoveredArg1.
    recoveredBlock12Value3 := (recoveredBlock12Value2) space.
    recoveredBlock12Value3
].
    super do: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (recoveredValue2) nextPut: ($)).
    ^self
! !

"xxx_dyn.ic method 0x20019d0c; bytecode file offset 0x7ade4"
!SstSharedQueue methodsFor: 'recovered'!
removeOrNil
    | recoveredLocal1 recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    | recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack0 := super isEmpty.
            recoveredBlock4PC := 14.
        ].
        recoveredBlock4Step = 14 ifTrue: [
            (recoveredBlock4Stack0) ifTrue: [recoveredBlock4PC := 18] ifFalse: [recoveredBlock4PC := 26].
        ].
        recoveredBlock4Step = 18 ifTrue: [
            recoveredBlock4Stack0 := nil.
            recoveredBlock4PC := 19.
        ].
        recoveredBlock4Step = 19 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Stack0.
            recoveredBlock4PC := 20.
        ].
        recoveredBlock4Step = 20 ifTrue: [
            recoveredLocal1 := recoveredBlock4Stack1.
            recoveredBlock4PC := 23.
        ].
        recoveredBlock4Step = 23 ifTrue: [
            recoveredBlock4PC := 37.
        ].
        recoveredBlock4Step = 26 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 27.
        ].
        recoveredBlock4Step = 27 ifTrue: [
            recoveredBlock4Stack0 := super removeFirst.
            recoveredBlock4PC := 31.
        ].
        recoveredBlock4Step = 31 ifTrue: [
            recoveredLocal1 := recoveredBlock4Stack0.
            recoveredBlock4PC := 34.
        ].
        recoveredBlock4Step = 34 ifTrue: [
            recoveredBlock4Stack0 := readSync.
            recoveredBlock4PC := 36.
        ].
        recoveredBlock4Step = 36 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) wait.
            recoveredBlock4PC := 37.
        ].
        recoveredBlock4Step = 37 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack0.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
    (recoveredValue0) critical.
    recoveredValue1 := recoveredLocal1.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x2001d0c0; bytecode file offset 0x7e1a0"
!SstSharedQueue methodsFor: 'recovered'!
remove: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := readSync.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) sstRetractSignal.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 |
    recoveredBlock12Value0 := recoveredArg1.
    recoveredBlock12Value1 := [].
    recoveredBlock12Value2 := super remove: (recoveredBlock12Value0) ifAbsent: (recoveredBlock12Value1).
    recoveredBlock12Value2
].
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) critical.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := readSync.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1) signal.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x2001ead4; bytecode file offset 0x7fbe0"
!SstSharedQueue methodsFor: 'recovered'!
removeFirst
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := readSync.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) wait.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock8Stack0 recoveredBlock8Stack1 recoveredBlock8Stack2 recoveredBlock8PC recoveredBlock8Step recoveredBlock8Done recoveredBlock8Result |
    recoveredBlock8Stack0 := self.
    recoveredBlock8PC := 14.
    recoveredBlock8Done := false.
    [recoveredBlock8Done not] whileTrue: [
        recoveredBlock8Step := recoveredBlock8PC.
        recoveredBlock8Step = 14 ifTrue: [
            recoveredBlock8Stack0 := super isEmpty.
            recoveredBlock8PC := 18.
        ].
        recoveredBlock8Step = 18 ifTrue: [
            recoveredBlock8Stack1 := recoveredBlock8Stack0.
            recoveredBlock8PC := 19.
        ].
        recoveredBlock8Step = 19 ifTrue: [
            recoveredLocal2 := recoveredBlock8Stack1.
            recoveredBlock8PC := 22.
        ].
        recoveredBlock8Step = 22 ifTrue: [
            (recoveredBlock8Stack0) ifTrue: [recoveredBlock8PC := 26] ifFalse: [recoveredBlock8PC := 30].
        ].
        recoveredBlock8Step = 26 ifTrue: [
            recoveredBlock8Stack0 := nil.
            recoveredBlock8PC := 27.
        ].
        recoveredBlock8Step = 27 ifTrue: [
            recoveredBlock8PC := 35.
        ].
        recoveredBlock8Step = 30 ifTrue: [
            recoveredBlock8Stack0 := self.
            recoveredBlock8PC := 31.
        ].
        recoveredBlock8Step = 31 ifTrue: [
            recoveredBlock8Stack0 := super removeFirst.
            recoveredBlock8PC := 35.
        ].
        recoveredBlock8Step = 35 ifTrue: [
            recoveredBlock8Result := recoveredBlock8Stack0.
            recoveredBlock8Done := true.
        ].
    ].
    recoveredBlock8Result
].
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) critical.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 57].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := NlsCatSSTG.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack3 := 10.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := (recoveredStack2) indexedMsg: (recoveredStack3).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack1) error: (recoveredStack2).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x2001eafc; bytecode file offset 0x7fbe0"
!SstSharedQueue methodsFor: 'recovered'!
removeLast
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := readSync.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) wait.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock8Stack0 recoveredBlock8Stack1 recoveredBlock8Stack2 recoveredBlock8PC recoveredBlock8Step recoveredBlock8Done recoveredBlock8Result |
    recoveredBlock8Stack0 := self.
    recoveredBlock8PC := 14.
    recoveredBlock8Done := false.
    [recoveredBlock8Done not] whileTrue: [
        recoveredBlock8Step := recoveredBlock8PC.
        recoveredBlock8Step = 14 ifTrue: [
            recoveredBlock8Stack0 := super isEmpty.
            recoveredBlock8PC := 18.
        ].
        recoveredBlock8Step = 18 ifTrue: [
            recoveredBlock8Stack1 := recoveredBlock8Stack0.
            recoveredBlock8PC := 19.
        ].
        recoveredBlock8Step = 19 ifTrue: [
            recoveredLocal2 := recoveredBlock8Stack1.
            recoveredBlock8PC := 22.
        ].
        recoveredBlock8Step = 22 ifTrue: [
            (recoveredBlock8Stack0) ifTrue: [recoveredBlock8PC := 26] ifFalse: [recoveredBlock8PC := 30].
        ].
        recoveredBlock8Step = 26 ifTrue: [
            recoveredBlock8Stack0 := nil.
            recoveredBlock8PC := 27.
        ].
        recoveredBlock8Step = 27 ifTrue: [
            recoveredBlock8PC := 35.
        ].
        recoveredBlock8Step = 30 ifTrue: [
            recoveredBlock8Stack0 := self.
            recoveredBlock8PC := 31.
        ].
        recoveredBlock8Step = 31 ifTrue: [
            recoveredBlock8Stack0 := super removeLast.
            recoveredBlock8PC := 35.
        ].
        recoveredBlock8Step = 35 ifTrue: [
            recoveredBlock8Result := recoveredBlock8Stack0.
            recoveredBlock8Done := true.
        ].
    ].
    recoveredBlock8Result
].
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) critical.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 57].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := NlsCatSSTG.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack3 := 10.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := (recoveredStack2) indexedMsg: (recoveredStack3).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack1) error: (recoveredStack2).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

