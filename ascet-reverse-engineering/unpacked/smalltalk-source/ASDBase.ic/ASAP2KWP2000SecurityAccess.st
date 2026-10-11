"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2004aff8; bytecode file offset 0x947a60"
!ASAP2KWP2000SecurityAccess methodsFor: 'recovered'!
accessMode
    | recoveredValue0 |
    recoveredValue0 := (self) at: (1).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004b300; bytecode file offset 0x947d20"
!ASAP2KWP2000SecurityAccess methodsFor: 'recovered'!
seedAndKeyCalculation
    | recoveredValue0 |
    recoveredValue0 := (self) at: (2).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004b488; bytecode file offset 0x947ec0"
!ASAP2KWP2000SecurityAccess methodsFor: 'recovered'!
delayTime
    | recoveredValue0 |
    recoveredValue0 := (self) at: (3).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004baa8; bytecode file offset 0x948384"
!ASAP2KWP2000SecurityAccess methodsFor: 'recovered'!
seedKey
    | recoveredValue0 |
    recoveredValue0 := (self) at: (4).
    ^recoveredValue0
! !

"ASDBase.ic method 0x20084ab0; bytecode file offset 0x981ca4"
!ASAP2KWP2000SecurityAccess methodsFor: 'recovered'!
addSeedKey: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) seedKey: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a4958; bytecode file offset 0x9a1ad4"
!ASAP2KWP2000SecurityAccess methodsFor: 'recovered'!
getDelayTime: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getInteger: (recoveredValue0).
    (self) delayTime: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a4e08; bytecode file offset 0x9a1ad4"
!ASAP2KWP2000SecurityAccess methodsFor: 'recovered'!
getAccessMode: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getInteger: (recoveredValue0).
    (self) accessMode: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a4f48; bytecode file offset 0x9a1ad4"
!ASAP2KWP2000SecurityAccess methodsFor: 'recovered'!
getSeedKey: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getString: (recoveredValue0).
    (self) seedKey: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a50f8; bytecode file offset 0x9a1ad4"
!ASAP2KWP2000SecurityAccess methodsFor: 'recovered'!
getSeedAndKeyCalculation: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getInteger: (recoveredValue0).
    (self) seedAndKeyCalculation: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a5e54; bytecode file offset 0x9a27f0"
!ASAP2KWP2000SecurityAccess methodsFor: 'recovered'!
accessMode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (1) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a6128; bytecode file offset 0x9a2a28"
!ASAP2KWP2000SecurityAccess methodsFor: 'recovered'!
seedAndKeyCalculation: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (2) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a62cc; bytecode file offset 0x9a2b84"
!ASAP2KWP2000SecurityAccess methodsFor: 'recovered'!
delayTime: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (3) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a6614; bytecode file offset 0x9a2f38"
!ASAP2KWP2000SecurityAccess methodsFor: 'recovered'!
seedKey: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (4) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200fb228; bytecode file offset 0x9f7ee4"
!ASAP2KWP2000SecurityAccess methodsFor: 'recovered'!
putSeedAndKeyCalculationIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) putSeparatorIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) seedAndKeyCalculation.
    (self) putIn: (recoveredValue1) hex: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200fb41c; bytecode file offset 0x9f7ee4"
!ASAP2KWP2000SecurityAccess methodsFor: 'recovered'!
putDelayTimeIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) putSeparatorIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) delayTime.
    (self) putIn: (recoveredValue1) integer: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200fb534; bytecode file offset 0x9f7ee4"
!ASAP2KWP2000SecurityAccess methodsFor: 'recovered'!
putAccessModeIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) putSeparatorIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) accessMode.
    (self) putIn: (recoveredValue1) hex: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20163b58; bytecode file offset 0xa605cc"
!ASAP2KWP2000SecurityAccess methodsFor: 'recovered'!
putParameterIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    (self) putNewLineIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) putAccessModeIn: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (self) putSeedAndKeyCalculationIn: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (self) putDelayTimeIn: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20163d50; bytecode file offset 0xa60614"
!ASAP2KWP2000SecurityAccess methodsFor: 'recovered'!
getFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    (self) getAccessMode: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) getSeedAndKeyCalculation: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (self) getDelayTime: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (self) parse: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x201e9dc4; bytecode file offset 0xae6830"
!ASAP2KWP2000SecurityAccess methodsFor: 'recovered'!
putIn: recoveredArg1 seedKey: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) seedKey.
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
            recoveredStack2 := (recoveredStack2) seedKey.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) putIn: (recoveredStack1) quotedString: (recoveredStack2).
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

