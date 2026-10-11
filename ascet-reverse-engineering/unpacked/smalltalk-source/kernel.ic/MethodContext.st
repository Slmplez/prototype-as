"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"kernel.ic method 0x20000274; bytecode file offset 0x4b1b0"
!MethodContext methodsFor: 'recovered'!
methodContext
    ^self
! !

"kernel.ic method 0x20001b80; bytecode file offset 0x4ce64"
!MethodContext methodsFor: 'recovered'!
tempCount
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) method.
    recoveredValue1 := (recoveredValue0) tempCount.
    ^recoveredValue1
! !

"kernel.ic method 0x20001f30; bytecode file offset 0x4ce64"
!MethodContext methodsFor: 'recovered'!
argumentCount
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) method.
    recoveredValue1 := (recoveredValue0) argumentCount.
    ^recoveredValue1
! !

"kernel.ic method 0x200025cc; bytecode file offset 0x4d4d8"
!MethodContext methodsFor: 'recovered'!
hasReturned
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := creatingProcess.
    recoveredValue1 := (recoveredValue0) isNil.
    ^recoveredValue1
! !

"kernel.ic method 0x20004580; bytecode file offset 0x4f5c4"
!MethodContext methodsFor: 'recovered'!
receiverVisible
    ^true
! !

"kernel.ic method 0x20004718; bytecode file offset 0x4f794"
!MethodContext methodsFor: 'recovered'!
runsOnStack
    ^false
! !

"kernel.ic method 0x20004808; bytecode file offset 0x4f794"
!MethodContext methodsFor: 'recovered'!
parentVisible
    ^false
! !

"kernel.ic method 0x2000ced0; bytecode file offset 0x57de0"
!MethodContext methodsFor: 'recovered'!
unlinkDeadProcess
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := creatingProcess.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := creatingProcess.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDead.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            creatingProcess := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x2000e4b4; bytecode file offset 0x593d0"
!MethodContext methodsFor: 'recovered'!
method
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := method.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isInteger.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := method.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := EsCompactMethod.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := method.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack2) methodId: (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

