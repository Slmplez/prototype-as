"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"extwid.ic method 0x20001a80; bytecode file offset 0x52848"
!EwToolBarFsmEdge class methodsFor: 'recovered'!
debug: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    Debug := recoveredValue0.
    ^self
! !

"extwid.ic method 0x20009614; bytecode file offset 0x5a3dc"
!EwToolBarFsmEdge class methodsFor: 'recovered'!
debug
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Debug.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            Debug := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := Debug.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"extwid.ic method 0x20010e3c; bytecode file offset 0x61c18"
!EwToolBarFsmEdge class methodsFor: 'recovered'!
from: recoveredArg1 to: recoveredArg2 ref: recoveredArg3 condition: recoveredArg4 action: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := super new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) from: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg2.
    (recoveredValue3) to: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := recoveredArg4.
    (recoveredValue5) condition: (recoveredValue6).
    recoveredValue7 := recoveredArg5.
    recoveredValue8 := (recoveredValue0) action: (recoveredValue7).
    ^recoveredValue8
! !

