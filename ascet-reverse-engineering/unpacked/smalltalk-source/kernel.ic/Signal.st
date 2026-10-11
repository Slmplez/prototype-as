"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"kernel.ic method 0x20000324; bytecode file offset 0x4b474"
!Signal methodsFor: 'recovered'!
messageText
    | recoveredValue0 |
    recoveredValue0 := (self) argument.
    ^recoveredValue0
! !

"kernel.ic method 0x200004b0; bytecode file offset 0x4b474"
!Signal methodsFor: 'recovered'!
pass
    | recoveredValue0 |
    recoveredValue0 := (self) signal.
    ^recoveredValue0
! !

"kernel.ic method 0x20001ab8; bytecode file offset 0x4c9c8"
!Signal methodsFor: 'recovered'!
resume
    | recoveredValue0 |
    recoveredValue0 := (self) resume: (nil).
    ^recoveredValue0
! !

"kernel.ic method 0x20001ea0; bytecode file offset 0x4ce64"
!Signal methodsFor: 'recovered'!
isResumable
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) exception.
    recoveredValue1 := (recoveredValue0) resumable.
    ^recoveredValue1
! !

"kernel.ic method 0x20002208; bytecode file offset 0x4d118"
!Signal methodsFor: 'recovered'!
resume: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) resumeWith: (recoveredValue0).
    ^recoveredValue1
! !

"kernel.ic method 0x200024f0; bytecode file offset 0x4d424"
!Signal methodsFor: 'recovered'!
description
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := exception.
    recoveredValue1 := (recoveredValue0) description.
    ^recoveredValue1
! !

"kernel.ic method 0x200035c0; bytecode file offset 0x4e4e8"
!Signal methodsFor: 'recovered'!
return
    (self) return: (nil).
    ^self
! !

"kernel.ic method 0x20003c88; bytecode file offset 0x4ec04"
!Signal methodsFor: 'recovered'!
exception
    | recoveredValue0 |
    recoveredValue0 := exception.
    ^recoveredValue0
! !

"kernel.ic method 0x20004c28; bytecode file offset 0x4fb74"
!Signal methodsFor: 'recovered'!
return: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) exitWith: (recoveredValue0).
    ^self
! !

"kernel.ic method 0x20004c34; bytecode file offset 0x4fb74"
!Signal methodsFor: 'recovered'!
evaluateDefaultHandler: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) evaluate: (recoveredValue0).
    ^self
! !

"kernel.ic method 0x20006ca4; bytecode file offset 0x51bb8"
!Signal methodsFor: 'recovered'!
signal
    | recoveredValue0 |
    recoveredValue0 := signalBlock.
    (recoveredValue0) value.
    (self) errorInExecution.
    ^self
! !

"kernel.ic method 0x20007014; bytecode file offset 0x51f40"
!Signal methodsFor: 'recovered'!
signalWith: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := Array.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) with: (recoveredValue1).
    (self) signalWithArguments: (recoveredValue2).
    ^self
! !

"kernel.ic method 0x20007028; bytecode file offset 0x51f40"
!Signal methodsFor: 'recovered'!
messageText: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := Array.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) with: (recoveredValue1).
    (self) arguments: (recoveredValue2).
    ^self
! !

"kernel.ic method 0x2000735c; bytecode file offset 0x52270"
!Signal methodsFor: 'recovered'!
signalWithArguments: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) arguments: (recoveredValue0).
    (self) signal.
    ^self
! !

"kernel.ic method 0x200075f4; bytecode file offset 0x52538"
!Signal methodsFor: 'recovered'!
exception: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    exception := recoveredValue0.
    ^self
! !

"kernel.ic method 0x20007730; bytecode file offset 0x52654"
!Signal methodsFor: 'recovered'!
arguments: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    arguments := recoveredValue0.
    ^self
! !

"kernel.ic method 0x200078d0; bytecode file offset 0x5280c"
!Signal methodsFor: 'recovered'!
exitBlock: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    exitBlock := recoveredValue0.
    ^self
! !

"kernel.ic method 0x20007954; bytecode file offset 0x52860"
!Signal methodsFor: 'recovered'!
resumeBlock: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    resumeBlock := recoveredValue0.
    ^self
! !

"kernel.ic method 0x20007980; bytecode file offset 0x528a4"
!Signal methodsFor: 'recovered'!
signalBlock: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    signalBlock := recoveredValue0.
    ^self
! !

"kernel.ic method 0x200079cc; bytecode file offset 0x528d8"
!Signal methodsFor: 'recovered'!
retryBlock: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    retryBlock := recoveredValue0.
    ^self
! !

"kernel.ic method 0x2000810c; bytecode file offset 0x53024"
!Signal methodsFor: 'recovered'!
errorInExecution
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := NlsCatKRN.
    recoveredValue1 := (recoveredValue0) indexedMsg: (3).
    (self) error: (recoveredValue1).
    ^self
! !

"kernel.ic method 0x20009424; bytecode file offset 0x54330"
!Signal methodsFor: 'recovered'!
handler: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := handler.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            handler := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x20009624; bytecode file offset 0x5453c"
!Signal methodsFor: 'recovered'!
signalWith: recoveredArg1 with: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Array.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) with: (recoveredValue1) with: (recoveredValue2).
    (self) signalWithArguments: (recoveredValue3).
    ^self
! !

"kernel.ic method 0x20009b9c; bytecode file offset 0x54aac"
!Signal methodsFor: 'recovered'!
resumable
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) isResumable.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := resumeBlock.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) notNil.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"kernel.ic method 0x20009f44; bytecode file offset 0x54e5c"
!Signal methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) nextPutAll: ('Signal on ').
    recoveredValue1 := exception.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) printOn: (recoveredValue2).
    ^self
! !

"kernel.ic method 0x2000a3e0; bytecode file offset 0x552f0"
!Signal methodsFor: 'recovered'!
arguments
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := arguments.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := arguments.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"kernel.ic method 0x2000acf0; bytecode file offset 0x55c10"
!Signal methodsFor: 'recovered'!
handlesByDefault
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Processor.
    recoveredValue1 := (recoveredValue0) activeProcess.
    recoveredValue2 := handler.
    (recoveredValue1) errorHandler: (recoveredValue2).
    recoveredValue3 := (self) exception.
    (recoveredValue3) applyDefaultHandler: (self).
    ^self
! !

"kernel.ic method 0x2000b714; bytecode file offset 0x5662c"
!Signal methodsFor: 'recovered'!
handler: recoveredArg1 exit: recoveredArg2 retry: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) handler: (recoveredValue0).
    recoveredValue1 := recoveredArg2.
    (self) exitBlock: (recoveredValue1).
    recoveredValue2 := recoveredArg3.
    (self) retryBlock: (recoveredValue2).
    ^self
! !

"kernel.ic method 0x2000e48c; bytecode file offset 0x593a0"
!Signal methodsFor: 'recovered'!
argument
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := arguments.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := arguments.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := arguments.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"kernel.ic method 0x2000ed40; bytecode file offset 0x59c5c"
!Signal methodsFor: 'recovered'!
retry
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := retryBlock.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := MxKRN20.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) error: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := retryBlock.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) value.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) errorInExecution.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x20011f44; bytecode file offset 0x5ce68"
!Signal methodsFor: 'recovered'!
evaluate: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := [
    ^self
].
    (self) signalBlock: (recoveredValue0).
    recoveredValue1 := Association.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) value: (self).
    recoveredValue4 := (recoveredValue1) key: ('resume') value: (recoveredValue3).
    (self) resumeWith: (recoveredValue4).
    ^self
! !

"kernel.ic method 0x20012f9c; bytecode file offset 0x5dec4"
!Signal methodsFor: 'recovered'!
exitWith: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := exitBlock.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := MxKRN18.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) error: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := Processor.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) activeProcess.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := handler.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) errorHandler: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := exitBlock.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) errorInExecution.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x200130b4; bytecode file offset 0x5dfe0"
!Signal methodsFor: 'recovered'!
resumeWith: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) resumable.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := MxKRN19.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) error: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := Processor.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) activeProcess.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := handler.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) errorHandler: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := resumeBlock.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) errorInExecution.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

