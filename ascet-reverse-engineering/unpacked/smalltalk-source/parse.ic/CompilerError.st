"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"parse.ic method 0x2000073c; bytecode file offset 0x15d94"
!CompilerError methodsFor: 'recovered'!
abort
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := owner.
    recoveredValue1 := (recoveredValue0) abort: (self).
    ^recoveredValue1
! !

"parse.ic method 0x2000092c; bytecode file offset 0x15f90"
!CompilerError methodsFor: 'recovered'!
context
    | recoveredValue0 |
    recoveredValue0 := context.
    ^recoveredValue0
! !

"parse.ic method 0x20000970; bytecode file offset 0x15fcc"
!CompilerError methodsFor: 'recovered'!
sourceString
    | recoveredValue0 |
    recoveredValue0 := sourceString.
    ^recoveredValue0
! !

"parse.ic method 0x2000098c; bytecode file offset 0x16000"
!CompilerError methodsFor: 'recovered'!
message
    | recoveredValue0 |
    recoveredValue0 := message.
    ^recoveredValue0
! !

"parse.ic method 0x200009c8; bytecode file offset 0x16024"
!CompilerError methodsFor: 'recovered'!
startPosition
    | recoveredValue0 |
    recoveredValue0 := startPosition.
    ^recoveredValue0
! !

"parse.ic method 0x200009ec; bytecode file offset 0x16048"
!CompilerError methodsFor: 'recovered'!
stopPosition
    | recoveredValue0 |
    recoveredValue0 := stopPosition.
    ^recoveredValue0
! !

"parse.ic method 0x20000a08; bytecode file offset 0x16064"
!CompilerError methodsFor: 'recovered'!
severity
    | recoveredValue0 |
    recoveredValue0 := severity.
    ^recoveredValue0
! !

"parse.ic method 0x2000118c; bytecode file offset 0x167e0"
!CompilerError methodsFor: 'recovered'!
isFatal
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := severity.
    recoveredValue1 := (recoveredValue0) == (0).
    ^recoveredValue1
! !

"parse.ic method 0x20001998; bytecode file offset 0x16ff4"
!CompilerError methodsFor: 'recovered'!
sourceString: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    sourceString := recoveredValue0.
    ^self
! !

"parse.ic method 0x200019f0; bytecode file offset 0x17054"
!CompilerError methodsFor: 'recovered'!
startPosition: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    startPosition := recoveredValue0.
    ^self
! !

"parse.ic method 0x20001a1c; bytecode file offset 0x17070"
!CompilerError methodsFor: 'recovered'!
stopPosition: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    stopPosition := recoveredValue0.
    ^self
! !

"parse.ic method 0x20001a38; bytecode file offset 0x1708c"
!CompilerError methodsFor: 'recovered'!
severity: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    severity := recoveredValue0.
    ^self
! !

"parse.ic method 0x20002f40; bytecode file offset 0x185a0"
!CompilerError methodsFor: 'recovered'!
handleWith: recoveredArg1
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
            (recoveredStack1) handle: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) isFatal.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := owner.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) abort: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"parse.ic method 0x20003abc; bytecode file offset 0x19110"
!CompilerError methodsFor: 'recovered'!
compilerError: recoveredArg1 at: recoveredArg2 in: recoveredArg3 class: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg4.
    context := recoveredValue0.
    recoveredValue1 := recoveredArg3.
    sourceString := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    message := recoveredValue2.
    recoveredValue3 := recoveredArg2.
    startPosition := recoveredValue3.
    stopPosition := nil.
    severity := 0.
    ^self
! !

"parse.ic method 0x20004220; bytecode file offset 0x19874"
!CompilerError methodsFor: 'recovered'!
compilerError: recoveredArg1 at: recoveredArg2 in: recoveredArg3 class: recoveredArg4 for: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg4.
    context := recoveredValue0.
    recoveredValue1 := recoveredArg3.
    sourceString := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    message := recoveredValue2.
    recoveredValue3 := recoveredArg2.
    startPosition := recoveredValue3.
    stopPosition := nil.
    severity := 0.
    recoveredValue4 := recoveredArg5.
    owner := recoveredValue4.
    ^self
! !

"parse.ic method 0x2000739c; bytecode file offset 0x1ca34"
!CompilerError methodsFor: 'recovered'!
compilerWarning: recoveredArg1 at: recoveredArg2 in: recoveredArg3 class: recoveredArg4 errorObject: recoveredArg5
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            context := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            sourceString := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            startPosition := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            stopPosition := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := (recoveredStack3) severity.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := (recoveredStack3) printString.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredArg5.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := [:block28002eecArg1 | 
    | block28002eecStack0 block28002eecStack1 block28002eecStack2 block28002eecPC block28002eecStep block28002eecDone block28002eecResult |
    block28002eecStack0 := self.
    block28002eecPC := 4.
    block28002eecDone := false.
    [block28002eecDone not] whileTrue: [
        block28002eecStep := block28002eecPC.
        block28002eecStep = 4 ifTrue: [
            block28002eecStack1 := block28002eecArg1.
            block28002eecPC := 5.
        ].
        block28002eecStep = 5 ifTrue: [
            block28002eecStack1 := (block28002eecStack1) isString.
            block28002eecPC := 7.
        ].
        block28002eecStep = 7 ifTrue: [
            (block28002eecStack1) ifTrue: [block28002eecPC := 10] ifFalse: [block28002eecPC := 14].
        ].
        block28002eecStep = 10 ifTrue: [
            block28002eecStack1 := block28002eecArg1.
            block28002eecPC := 11.
        ].
        block28002eecStep = 11 ifTrue: [
            block28002eecPC := 16.
        ].
        block28002eecStep = 14 ifTrue: [
            block28002eecStack1 := block28002eecArg1.
            block28002eecPC := 15.
        ].
        block28002eecStep = 15 ifTrue: [
            block28002eecStack1 := (block28002eecStack1) printString.
            block28002eecPC := 16.
        ].
        block28002eecStep = 16 ifTrue: [
            block28002eecResult := block28002eecStack1.
            block28002eecDone := true.
        ].
    ].
    block28002eecResult
].
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := (recoveredStack2) collect: (recoveredStack3).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) addAll: (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := ErrorMessages.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := [
    | block28002f10Value0 block28002f10Value1 |
    block28002f10Value0 := NlsCatESc.
    block28002f10Value1 := (block28002f10Value0) indexedMsg: (1).
    block28002f10Value1
].
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWithArguments: (recoveredStack2).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            message := recoveredStack1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack1) errorCode: (recoveredStack2).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := recoveredArg5.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0) errorObject: (recoveredStack1).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"parse.ic method 0x20007768; bytecode file offset 0x1cdec"
!CompilerError methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) startPosition.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := super printOn: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := severity.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack2 ~~ recoveredStack3) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := NlsCatESc.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := 46.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) indexedMsg: (recoveredStack3).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := NlsCatESc.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := 47.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := (recoveredStack2) indexedMsg: (recoveredStack3).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) cr.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := (recoveredStack2) sourceString.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack4 := (recoveredStack4) startPosition.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (-1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := (recoveredStack2) copyFrom: (recoveredStack3) to: (recoveredStack4).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := $".
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack1) nextPut: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := message.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := '" --> '.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) sourceString.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := (recoveredStack2) startPosition.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack3 := (recoveredStack3) sourceString.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"parse.ic method 0x200078a8; bytecode file offset 0x1cf40"
!CompilerError methodsFor: 'recovered'!
compilerWarning: recoveredArg1 at: recoveredArg2 in: recoveredArg3 class: recoveredArg4 errorObject: recoveredArg5 severity: recoveredArg6 for: recoveredArg7
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            context := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            sourceString := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            startPosition := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            stopPosition := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg6.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            severity := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := (recoveredStack3) severity.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := (recoveredStack3) printString.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredArg5.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := [:block28002f34Arg1 | 
    | block28002f34Stack0 block28002f34Stack1 block28002f34Stack2 block28002f34PC block28002f34Step block28002f34Done block28002f34Result |
    block28002f34Stack0 := self.
    block28002f34PC := 4.
    block28002f34Done := false.
    [block28002f34Done not] whileTrue: [
        block28002f34Step := block28002f34PC.
        block28002f34Step = 4 ifTrue: [
            block28002f34Stack1 := block28002f34Arg1.
            block28002f34PC := 5.
        ].
        block28002f34Step = 5 ifTrue: [
            block28002f34Stack1 := (block28002f34Stack1) isString.
            block28002f34PC := 7.
        ].
        block28002f34Step = 7 ifTrue: [
            (block28002f34Stack1) ifTrue: [block28002f34PC := 10] ifFalse: [block28002f34PC := 14].
        ].
        block28002f34Step = 10 ifTrue: [
            block28002f34Stack1 := block28002f34Arg1.
            block28002f34PC := 11.
        ].
        block28002f34Step = 11 ifTrue: [
            block28002f34PC := 16.
        ].
        block28002f34Step = 14 ifTrue: [
            block28002f34Stack1 := block28002f34Arg1.
            block28002f34PC := 15.
        ].
        block28002f34Step = 15 ifTrue: [
            block28002f34Stack1 := (block28002f34Stack1) printString.
            block28002f34PC := 16.
        ].
        block28002f34Step = 16 ifTrue: [
            block28002f34Result := block28002f34Stack1.
            block28002f34Done := true.
        ].
    ].
    block28002f34Result
].
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := (recoveredStack2) collect: (recoveredStack3).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack1) addAll: (recoveredStack2).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := ErrorMessages.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := [
    | block28002f58Value0 block28002f58Value1 |
    block28002f58Value0 := NlsCatESc.
    block28002f58Value1 := (block28002f58Value0) indexedMsg: (1).
    block28002f58Value1
].
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWithArguments: (recoveredStack2).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            message := recoveredStack1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack1) errorCode: (recoveredStack2).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := recoveredArg5.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack0) errorObject: (recoveredStack1).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := recoveredArg7.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            owner := recoveredStack0.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

