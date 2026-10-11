"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20008300; bytecode file offset 0x908be4"
!ASAP2Blob methodsFor: 'recovered'!
startAddress
    | recoveredValue0 |
    recoveredValue0 := (self) address.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2003c29c; bytecode file offset 0x938b78"
!ASAP2Blob methodsFor: 'recovered'!
getFrom: recoveredArg1 parent: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getFrom: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004b880; bytecode file offset 0x948384"
!ASAP2Blob methodsFor: 'recovered'!
bytes
    | recoveredValue0 |
    recoveredValue0 := (self) at: (4).
    ^recoveredValue0
! !

"ASDBase.ic method 0x20073620; bytecode file offset 0x970b34"
!ASAP2Blob methodsFor: 'recovered'!
base
    ^nil
! !

"ASDBase.ic method 0x20076e1c; bytecode file offset 0x9757c8"
!ASAP2Blob methodsFor: 'recovered'!
isValid
    ^true
! !

"ASDBase.ic method 0x2007845c; bytecode file offset 0x9757c8"
!ASAP2Blob methodsFor: 'recovered'!
isV10
    ^true
! !

"ASDBase.ic method 0x200a6668; bytecode file offset 0x9a2f38"
!ASAP2Blob methodsFor: 'recovered'!
bytes: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (4) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200fd7a4; bytecode file offset 0x9fa1f4"
!ASAP2Blob methodsFor: 'recovered'!
getVersion: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) skipComment: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) getInteger: (recoveredValue1).
    (self) version: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20144570; bytecode file offset 0xa40e44"
!ASAP2Blob methodsFor: 'recovered'!
putAddressIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    (self) putSeparatorIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) address.
    (self) putIn: (recoveredValue1) hex: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (self) putSeparatorIn: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x201d76ac; bytecode file offset 0xad3f74"
!ASAP2Blob methodsFor: 'recovered'!
baseString
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) base.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 11] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := '-'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := #('INTERN' 'EXTERN').
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) base.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock16Value0 recoveredBlock16Value1 |
    recoveredBlock16Value0 := (self) base.
    recoveredBlock16Value1 := (recoveredBlock16Value0) printString.
    recoveredBlock16Value1
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2023506c; bytecode file offset 0xb3196c"
!ASAP2Blob methodsFor: 'recovered'!
putIn: recoveredArg1 byteOrder: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) byteOrder.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 33] ifFalse: [recoveredPC := 8].
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
            recoveredStack1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := (recoveredStack3) byteOrder.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) putIn: (recoveredStack2) string: (recoveredStack3).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) putSeparatorIn: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

