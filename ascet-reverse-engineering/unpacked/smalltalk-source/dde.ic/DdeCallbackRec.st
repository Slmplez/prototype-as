"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"dde.ic method 0x200000e4; bytecode file offset 0x63cc"
!DdeCallbackRec methodsFor: 'recovered'!
receiver
    | recoveredValue0 |
    recoveredValue0 := receiver.
    ^recoveredValue0
! !

"dde.ic method 0x20000148; bytecode file offset 0x6408"
!DdeCallbackRec methodsFor: 'recovered'!
selector
    | recoveredValue0 |
    recoveredValue0 := selector.
    ^recoveredValue0
! !

"dde.ic method 0x2000016c; bytecode file offset 0x642c"
!DdeCallbackRec methodsFor: 'recovered'!
clientData
    | recoveredValue0 |
    recoveredValue0 := clientData.
    ^recoveredValue0
! !

"dde.ic method 0x2000052c; bytecode file offset 0x67fc"
!DdeCallbackRec methodsFor: 'recovered'!
receiver: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    receiver := recoveredValue0.
    ^self
! !

"dde.ic method 0x20000570; bytecode file offset 0x6830"
!DdeCallbackRec methodsFor: 'recovered'!
selector: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    selector := recoveredValue0.
    ^self
! !

"dde.ic method 0x20000584; bytecode file offset 0x6844"
!DdeCallbackRec methodsFor: 'recovered'!
clientData: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    clientData := recoveredValue0.
    ^self
! !

"dde.ic method 0x2000073c; bytecode file offset 0x6a00"
!DdeCallbackRec methodsFor: 'recovered'!
send
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := receiver.
    recoveredValue1 := selector.
    recoveredValue2 := clientData.
    recoveredValue3 := (recoveredValue0) perform: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

"dde.ic method 0x200007f4; bytecode file offset 0x6ab4"
!DdeCallbackRec methodsFor: 'recovered'!
receiver: recoveredArg1 selector: recoveredArg2 clientData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    receiver := recoveredValue0.
    recoveredValue1 := recoveredArg2.
    selector := recoveredValue1.
    recoveredValue2 := recoveredArg3.
    clientData := recoveredValue2.
    ^self
! !

"dde.ic method 0x20000834; bytecode file offset 0x6af8"
!DdeCallbackRec methodsFor: 'recovered'!
hash
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := receiver.
    recoveredValue1 := (recoveredValue0) hash.
    recoveredValue2 := selector.
    recoveredValue3 := (recoveredValue2) hash.
    recoveredValue4 := (recoveredValue1) + (recoveredValue3).
    recoveredValue5 := clientData.
    recoveredValue6 := (recoveredValue5) hash.
    recoveredValue7 := (recoveredValue4) + (recoveredValue6).
    ^recoveredValue7
! !

"dde.ic method 0x20000d24; bytecode file offset 0x6ff0"
!DdeCallbackRec methodsFor: 'recovered'!
callWith: recoveredArg1 callData: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := receiver.
    recoveredValue1 := selector.
    recoveredValue2 := Array.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := clientData.
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4) with: (recoveredValue5).
    recoveredValue7 := (recoveredValue0) perform: (recoveredValue1) withArguments: (recoveredValue6).
    ^recoveredValue7
! !

"dde.ic method 0x20001638; bytecode file offset 0x7908"
!DdeCallbackRec methodsFor: 'recovered'!
= recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := (recoveredStack3) class.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := receiver.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := (recoveredStack3) receiver.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := selector.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := (recoveredStack3) selector.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) clientData.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := (recoveredStack2) clientData.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

