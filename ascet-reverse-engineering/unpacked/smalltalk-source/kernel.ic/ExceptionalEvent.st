"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"kernel.ic method 0x20000134; bytecode file offset 0x4b1b0"
!ExceptionalEvent methodsFor: 'recovered'!
exceptionalEvent
    ^self
! !

"kernel.ic method 0x20002178; bytecode file offset 0x4d118"
!ExceptionalEvent methodsFor: 'recovered'!
ancestorOf: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) handles: (recoveredValue0).
    ^recoveredValue1
! !

"kernel.ic method 0x20002654; bytecode file offset 0x4d578"
!ExceptionalEvent methodsFor: 'recovered'!
signal
    | recoveredValue0 |
    recoveredValue0 := (self) signalWithArguments: (#()).
    ^recoveredValue0
! !

"kernel.ic method 0x20003df4; bytecode file offset 0x4ed88"
!ExceptionalEvent methodsFor: 'recovered'!
parent
    | recoveredValue0 |
    recoveredValue0 := parent.
    ^recoveredValue0
! !

"kernel.ic method 0x20003ec8; bytecode file offset 0x4eebc"
!ExceptionalEvent methodsFor: 'recovered'!
resumable
    | recoveredValue0 |
    recoveredValue0 := resumable.
    ^recoveredValue0
! !

"kernel.ic method 0x20003fcc; bytecode file offset 0x4ef68"
!ExceptionalEvent methodsFor: 'recovered'!
defaultHandler
    | recoveredValue0 |
    recoveredValue0 := defaultHandler.
    ^recoveredValue0
! !

"kernel.ic method 0x20005790; bytecode file offset 0x506bc"
!ExceptionalEvent methodsFor: 'recovered'!
signalWith: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Array.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) with: (recoveredValue1).
    recoveredValue3 := (self) signalWithArguments: (recoveredValue2).
    ^recoveredValue3
! !

"kernel.ic method 0x20005dbc; bytecode file offset 0x50ccc"
!ExceptionalEvent methodsFor: 'recovered'!
handle: recoveredArg1 do: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue0) when: (self) do: (recoveredValue1).
    ^recoveredValue2
! !

"kernel.ic method 0x20006f70; bytecode file offset 0x51e88"
!ExceptionalEvent methodsFor: 'recovered'!
signalWithArguments: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Signal.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) for: (self) with: (recoveredValue1).
    recoveredValue3 := (self) signalFor: (recoveredValue2).
    ^recoveredValue3
! !

"kernel.ic method 0x20007090; bytecode file offset 0x51fbc"
!ExceptionalEvent methodsFor: 'recovered'!
| recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ExceptionalEventCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := (recoveredValue1) | (self).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue2) | (recoveredValue3).
    ^recoveredValue4
! !

"kernel.ic method 0x200070a4; bytecode file offset 0x51fbc"
!ExceptionalEvent methodsFor: 'recovered'!
, recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ExceptionSet.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := (recoveredValue1) , (self).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue2) , (recoveredValue3).
    ^recoveredValue4
! !

"kernel.ic method 0x20007544; bytecode file offset 0x52538"
!ExceptionalEvent methodsFor: 'recovered'!
description: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    description := recoveredValue0.
    ^self
! !

"kernel.ic method 0x200076c0; bytecode file offset 0x52654"
!ExceptionalEvent methodsFor: 'recovered'!
parent: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    parent := recoveredValue0.
    ^self
! !

"kernel.ic method 0x2000775c; bytecode file offset 0x52760"
!ExceptionalEvent methodsFor: 'recovered'!
resumable: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    resumable := recoveredValue0.
    ^self
! !

"kernel.ic method 0x200078b8; bytecode file offset 0x5280c"
!ExceptionalEvent methodsFor: 'recovered'!
defaultHandler: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    defaultHandler := recoveredValue0.
    ^self
! !

"kernel.ic method 0x20007c34; bytecode file offset 0x52b4c"
!ExceptionalEvent methodsFor: 'recovered'!
signalWith: recoveredArg1 with: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Array.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) with: (recoveredValue1) with: (recoveredValue2).
    recoveredValue4 := (self) signalWithArguments: (recoveredValue3).
    ^recoveredValue4
! !

"kernel.ic method 0x20009d94; bytecode file offset 0x54cb4"
!ExceptionalEvent methodsFor: 'recovered'!
newChild
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) basicNew.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) parent: (self).
    recoveredValue3 := (self) resumable.
    recoveredValue4 := (recoveredValue1) resumable: (recoveredValue3).
    ^recoveredValue4
! !

"kernel.ic method 0x20009ec0; bytecode file offset 0x54dd8"
!ExceptionalEvent methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) nextPutAll: ('Exception: ').
    recoveredValue2 := (self) description.
    (recoveredValue0) nextPutAll: (recoveredValue2).
    ^self
! !

"kernel.ic method 0x2000c230; bytecode file offset 0x57140"
!ExceptionalEvent methodsFor: 'recovered'!
description
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := description.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := MxKRN15.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := description.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"kernel.ic method 0x20010a60; bytecode file offset 0x5b970"
!ExceptionalEvent methodsFor: 'recovered'!
handles: recoveredArg1
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
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"kernel.ic method 0x2001cc84; bytecode file offset 0x67bb4"
!ExceptionalEvent methodsFor: 'recovered'!
signalFor: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    ^recoveredBlock7Value0
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) resumeBlock: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := Processor.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) activeProcess.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorHandler.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) applyDefaultHandler: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredPC := 48.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := NlsCatKRN.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := 3.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexedMsg: (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) error: (recoveredStack1).
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

"kernel.ic method 0x2001e174; bytecode file offset 0x690b4"
!ExceptionalEvent methodsFor: 'recovered'!
applyDefaultHandler: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultHandler.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultHandler.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) evaluateDefaultHandler: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := MxKRN14.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) description.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) error: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := Processor.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) activeProcess.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) argument.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) isString.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) argument.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredPC := 57.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) description.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := (recoveredStack2) resumable.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) reportError: (recoveredStack1) resumable: (recoveredStack2).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

