"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200086cc; bytecode file offset 0x908be4"
!AbtUnaryAndKeywordDirectedMessage methodsFor: 'recovered'!
abrSend
    | recoveredValue0 |
    recoveredValue0 := (self) send.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2003c2c0; bytecode file offset 0x938b78"
!AbtUnaryAndKeywordDirectedMessage methodsFor: 'recovered'!
abrSendWith: recoveredArg1 with: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) abrSendWith: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003c3b8; bytecode file offset 0x938c88"
!AbtUnaryAndKeywordDirectedMessage methodsFor: 'recovered'!
abrSendWith: recoveredArg1 with: recoveredArg2 with: recoveredArg3
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) abrSendWith: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003c4a0; bytecode file offset 0x938d64"
!AbtUnaryAndKeywordDirectedMessage methodsFor: 'recovered'!
abrSendWith: recoveredArg1 with: recoveredArg2 with: recoveredArg3 with: recoveredArg4
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) abrSendWith: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20066a94; bytecode file offset 0x963428"
!AbtUnaryAndKeywordDirectedMessage methodsFor: 'recovered'!
receiver
    | recoveredValue0 |
    recoveredValue0 := receiver.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2008a1a8; bytecode file offset 0x986a78"
!AbtUnaryAndKeywordDirectedMessage methodsFor: 'recovered'!
send
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := receiver.
    recoveredValue1 := unarySelector.
    recoveredValue2 := (recoveredValue0) perform: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200944a0; bytecode file offset 0x990d58"
!AbtUnaryAndKeywordDirectedMessage methodsFor: 'recovered'!
sendTo: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := unarySelector.
    (recoveredValue0) perform: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200b8190; bytecode file offset 0x9b4a48"
!AbtUnaryAndKeywordDirectedMessage methodsFor: 'recovered'!
abrSendWith: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := receiver.
    recoveredValue1 := keywordSelector.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue0) perform: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200c06fc; bytecode file offset 0x9bd228"
!AbtUnaryAndKeywordDirectedMessage methodsFor: 'recovered'!
keywordSelector: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    keywordSelector := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200ecf00; bytecode file offset 0x9e97b4"
!AbtUnaryAndKeywordDirectedMessage methodsFor: 'recovered'!
receiver: recoveredArg1 unarySelector: recoveredArg2 keywordSelector: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    receiver := recoveredValue0.
    recoveredValue1 := recoveredArg2.
    unarySelector := recoveredValue1.
    recoveredValue2 := recoveredArg3.
    keywordSelector := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x201855e4; bytecode file offset 0xa81ea8"
!AbtUnaryAndKeywordDirectedMessage methodsFor: 'recovered'!
abrSendWithArguments: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) first.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) abrSendWith: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) abrSend.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20352da8; bytecode file offset 0xc4f67c"
!AbtUnaryAndKeywordDirectedMessage methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) name.
    (recoveredValue0) nextPutAll: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredValue3.
    (recoveredValue4) space.
    (recoveredValue3) nextPut: ($().
    recoveredValue5 := receiver.
    recoveredValue6 := recoveredArg1.
    (recoveredValue5) printOn: (recoveredValue6).
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := recoveredValue7.
    (recoveredValue8) nextPut: ($,).
    (recoveredValue7) nextPutAll: (' (0) ').
    recoveredValue9 := unarySelector.
    recoveredValue10 := recoveredArg1.
    (recoveredValue9) printOn: (recoveredValue10).
    recoveredValue11 := recoveredArg1.
    recoveredValue12 := recoveredValue11.
    (recoveredValue12) nextPut: ($,).
    (recoveredValue11) nextPutAll: (' (1) ').
    recoveredValue13 := keywordSelector.
    recoveredValue14 := recoveredArg1.
    (recoveredValue13) printOn: (recoveredValue14).
    recoveredValue15 := recoveredArg1.
    (recoveredValue15) nextPut: ($)).
    ^self
! !

