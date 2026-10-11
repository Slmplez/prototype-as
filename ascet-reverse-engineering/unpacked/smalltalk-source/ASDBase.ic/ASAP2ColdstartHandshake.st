"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2004b130; bytecode file offset 0x947a60"
!ASAP2ColdstartHandshake methodsFor: 'recovered'!
coldstartPatternAddress
    | recoveredValue0 |
    recoveredValue0 := (self) at: (1).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004b270; bytecode file offset 0x947d20"
!ASAP2ColdstartHandshake methodsFor: 'recovered'!
waitPattern
    | recoveredValue0 |
    recoveredValue0 := (self) at: (2).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004b4c4; bytecode file offset 0x947ec0"
!ASAP2ColdstartHandshake methodsFor: 'recovered'!
readyPattern
    | recoveredValue0 |
    recoveredValue0 := (self) at: (3).
    ^recoveredValue0
! !

"ASDBase.ic method 0x20084264; bytecode file offset 0x981ca4"
!ASAP2ColdstartHandshake methodsFor: 'recovered'!
putParameterIn: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) putInColdStartPatternAddress: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a43e8; bytecode file offset 0x9a1ad4"
!ASAP2ColdstartHandshake methodsFor: 'recovered'!
getColdStartPatternAddress: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getInteger: (recoveredValue0).
    (self) coldstartPatternAddress: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a47e8; bytecode file offset 0x9a1ad4"
!ASAP2ColdstartHandshake methodsFor: 'recovered'!
getReadyPattern: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getIntegerList: (recoveredValue0).
    (self) readyPattern: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a4908; bytecode file offset 0x9a1ad4"
!ASAP2ColdstartHandshake methodsFor: 'recovered'!
getWaitPattern: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getIntegerList: (recoveredValue0).
    (self) waitPattern: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a5ec0; bytecode file offset 0x9a27f0"
!ASAP2ColdstartHandshake methodsFor: 'recovered'!
coldstartPatternAddress: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (1) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a6068; bytecode file offset 0x9a2a28"
!ASAP2ColdstartHandshake methodsFor: 'recovered'!
waitPattern: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (2) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a620c; bytecode file offset 0x9a2b84"
!ASAP2ColdstartHandshake methodsFor: 'recovered'!
readyPattern: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (3) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a9b64; bytecode file offset 0x9a6780"
!ASAP2ColdstartHandshake methodsFor: 'recovered'!
putInColdStartPatternAddress: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) coldstartPatternAddress.
    (self) putIn: (recoveredValue0) integer: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2011da10; bytecode file offset 0xa1a2f8"
!ASAP2ColdstartHandshake methodsFor: 'recovered'!
getFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) getShortBegin: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) getColdStartPatternAddress: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (self) parse: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x201e9b5c; bytecode file offset 0xae6830"
!ASAP2ColdstartHandshake methodsFor: 'recovered'!
putIn: recoveredArg1 readyPattern: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) readyPattern.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 27] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) putNewLineIn: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) putIn: (recoveredStack2) string: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) putSeparatorIn: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) readyPattern.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) putIn: (recoveredStack1) integerList: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201e9d8c; bytecode file offset 0xae6830"
!ASAP2ColdstartHandshake methodsFor: 'recovered'!
putIn: recoveredArg1 waitPattern: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) waitPattern.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 27] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) putNewLineIn: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) putIn: (recoveredStack2) string: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) putSeparatorIn: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) waitPattern.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) putIn: (recoveredStack1) integerList: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

