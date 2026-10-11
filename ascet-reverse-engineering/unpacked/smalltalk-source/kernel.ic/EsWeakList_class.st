"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"kernel.ic method 0x20002fd4; bytecode file offset 0x4dff8"
!EsWeakList class methodsFor: 'recovered'!
removeToBeFinalized: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) systemWeakList.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) removeToBeFinalized: (recoveredValue1).
    ^recoveredValue2
! !

"kernel.ic method 0x20005e30; bytecode file offset 0x50d54"
!EsWeakList class methodsFor: 'recovered'!
addToBeFinalized: recoveredArg1 action: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) systemWeakList.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) addToBeFinalized: (recoveredValue1) action: (recoveredValue2).
    ^recoveredValue3
! !

"kernel.ic method 0x20006820; bytecode file offset 0x51738"
!EsWeakList class methodsFor: 'recovered'!
new: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := super new.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) initialize: (recoveredValue1).
    ^recoveredValue2
! !

"kernel.ic method 0x2000cf40; bytecode file offset 0x57e50"
!EsWeakList class methodsFor: 'recovered'!
systemWeakList
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := systemWeakList.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := 1024.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            systemWeakList := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := systemWeakList.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

