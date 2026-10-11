"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"extwid.ic method 0x2000269c; bytecode file offset 0x534f0"
!EwToolBarFsmEdge methodsFor: 'recovered'!
from
    | recoveredValue0 |
    recoveredValue0 := from.
    ^recoveredValue0
! !

"extwid.ic method 0x20002804; bytecode file offset 0x53678"
!EwToolBarFsmEdge methodsFor: 'recovered'!
to
    | recoveredValue0 |
    recoveredValue0 := to.
    ^recoveredValue0
! !

"extwid.ic method 0x200029e4; bytecode file offset 0x53810"
!EwToolBarFsmEdge methodsFor: 'recovered'!
condition
    | recoveredValue0 |
    recoveredValue0 := condition.
    ^recoveredValue0
! !

"extwid.ic method 0x20002ac4; bytecode file offset 0x53998"
!EwToolBarFsmEdge methodsFor: 'recovered'!
action
    | recoveredValue0 |
    recoveredValue0 := action.
    ^recoveredValue0
! !

"extwid.ic method 0x20005364; bytecode file offset 0x56150"
!EwToolBarFsmEdge methodsFor: 'recovered'!
firesWith: recoveredArg1 with: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) condition.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) value: (recoveredValue1) value: (recoveredValue2).
    ^recoveredValue3
! !

"extwid.ic method 0x200062d8; bytecode file offset 0x5710c"
!EwToolBarFsmEdge methodsFor: 'recovered'!
from: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    from := recoveredValue0.
    ^self
! !

"extwid.ic method 0x20006480; bytecode file offset 0x57284"
!EwToolBarFsmEdge methodsFor: 'recovered'!
to: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    to := recoveredValue0.
    ^self
! !

"extwid.ic method 0x20006510; bytecode file offset 0x57404"
!EwToolBarFsmEdge methodsFor: 'recovered'!
condition: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    condition := recoveredValue0.
    ^self
! !

"extwid.ic method 0x20006694; bytecode file offset 0x57568"
!EwToolBarFsmEdge methodsFor: 'recovered'!
action: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    action := recoveredValue0.
    ^self
! !

"extwid.ic method 0x20008c98; bytecode file offset 0x59a70"
!EwToolBarFsmEdge methodsFor: 'recovered'!
fromToString
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := MxEW6.
    recoveredValue1 := (self) from.
    recoveredValue2 := (recoveredValue1) printString.
    recoveredValue3 := (self) to.
    recoveredValue4 := (recoveredValue3) printString.
    recoveredValue5 := (recoveredValue0) bindWith: (recoveredValue2) with: (recoveredValue4).
    ^recoveredValue5
! !

"extwid.ic method 0x20009e84; bytecode file offset 0x5ac58"
!EwToolBarFsmEdge methodsFor: 'recovered'!
performActionWith: recoveredArg1 with: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) fromToString.
    (self) say: (recoveredValue0).
    recoveredValue1 := (self) action.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    (recoveredValue1) value: (recoveredValue2) value: (recoveredValue3).
    ^self
! !

"extwid.ic method 0x2000d210; bytecode file offset 0x5dfe8"
!EwToolBarFsmEdge methodsFor: 'recovered'!
say: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) debug.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := Transcript.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) show: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"extwid.ic method 0x20020d04; bytecode file offset 0x71afc"
!EwToolBarFsmEdge methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) from.
    recoveredValue3 := (recoveredValue2) printString.
    recoveredValue4 := ('From: ') , (recoveredValue3).
    (recoveredValue1) nextPutAll: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    (recoveredValue5) space.
    recoveredValue6 := recoveredValue0.
    recoveredValue7 := (self) to.
    recoveredValue8 := (recoveredValue7) printString.
    recoveredValue9 := ('To: ') , (recoveredValue8).
    (recoveredValue6) nextPutAll: (recoveredValue9).
    recoveredValue10 := recoveredValue0.
    (recoveredValue10) space.
    recoveredValue11 := recoveredValue0.
    (recoveredValue11) cr.
    recoveredValue12 := recoveredValue0.
    recoveredValue13 := (self) condition.
    recoveredValue14 := (recoveredValue13) printString.
    recoveredValue15 := ('  Condition: ') , (recoveredValue14).
    (recoveredValue12) nextPutAll: (recoveredValue15).
    recoveredValue16 := recoveredValue0.
    (recoveredValue16) cr.
    recoveredValue17 := recoveredValue0.
    recoveredValue18 := (self) action.
    recoveredValue19 := (recoveredValue18) printString.
    recoveredValue20 := ('  Action: ') , (recoveredValue19).
    (recoveredValue17) nextPutAll: (recoveredValue20).
    (recoveredValue0) cr.
    ^self
! !

