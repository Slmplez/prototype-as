"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2004aee4; bytecode file offset 0x947a60"
!ASAP2KWP2000V30Baudrate methodsFor: 'recovered'!
baudrateIdentifier
    | recoveredValue0 |
    recoveredValue0 := (self) at: (1).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004b2f4; bytecode file offset 0x947d20"
!ASAP2KWP2000V30Baudrate methodsFor: 'recovered'!
bdParameter
    | recoveredValue0 |
    recoveredValue0 := (self) at: (2).
    ^recoveredValue0
! !

"ASDBase.ic method 0x20084630; bytecode file offset 0x981ca4"
!ASAP2KWP2000V30Baudrate methodsFor: 'recovered'!
putParameterIn: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) putBaudrateIdentifier: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a4808; bytecode file offset 0x9a1ad4"
!ASAP2KWP2000V30Baudrate methodsFor: 'recovered'!
getBaudrateIdentifier: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getInteger: (recoveredValue0).
    (self) baudrateIdentifier: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a4db8; bytecode file offset 0x9a1ad4"
!ASAP2KWP2000V30Baudrate methodsFor: 'recovered'!
getBdParameter: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getIntegerList: (recoveredValue0).
    (self) bdParameter: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a5e6c; bytecode file offset 0x9a27f0"
!ASAP2KWP2000V30Baudrate methodsFor: 'recovered'!
baudrateIdentifier: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (1) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a5fcc; bytecode file offset 0x9a2a28"
!ASAP2KWP2000V30Baudrate methodsFor: 'recovered'!
bdParameter: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (2) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200d6d34; bytecode file offset 0x9d3600"
!ASAP2KWP2000V30Baudrate methodsFor: 'recovered'!
getFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) getBaudrateIdentifier: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) parse: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200fb14c; bytecode file offset 0x9f7ee4"
!ASAP2KWP2000V30Baudrate methodsFor: 'recovered'!
putBaudrateIdentifier: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) putNewLineIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) baudrateIdentifier.
    (self) putIn: (recoveredValue1) hex: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20157334; bytecode file offset 0xa53bf4"
!ASAP2KWP2000V30Baudrate methodsFor: 'recovered'!
putIn: recoveredArg1 bdParameter: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) bdParameter.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 8].
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
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) bdParameter.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) putIn: (recoveredStack1) integerListHex: (recoveredStack2).
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

