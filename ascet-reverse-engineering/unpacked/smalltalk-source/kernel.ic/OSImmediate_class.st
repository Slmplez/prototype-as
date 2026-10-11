"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"kernel.ic method 0x200043b8; bytecode file offset 0x4f2dc"
!OSImmediate class methodsFor: 'recovered'!
defaultIndirection
    ^0
! !

"kernel.ic method 0x20008690; bytecode file offset 0x535b4"
!OSImmediate class methodsFor: 'recovered'!
value: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := EsReftypeImmediate.
    recoveredValue2 := (self) reference: (recoveredValue0) reftype: (recoveredValue1) offset: (0).
    ^recoveredValue2
! !

"kernel.ic method 0x200086a0; bytecode file offset 0x535b4"
!OSImmediate class methodsFor: 'recovered'!
immediate: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := EsReftypeImmediate.
    recoveredValue2 := (self) reference: (recoveredValue0) reftype: (recoveredValue1) offset: (0).
    ^recoveredValue2
! !

"kernel.ic method 0x200090c0; bytecode file offset 0x53fe4"
!OSImmediate class methodsFor: 'recovered'!
new
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := EsReftypeImmediate.
    recoveredValue1 := (self) reference: (0) reftype: (recoveredValue0) offset: (0).
    ^recoveredValue1
! !

"kernel.ic method 0x200090d0; bytecode file offset 0x53fe4"
!OSImmediate class methodsFor: 'recovered'!
null
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := EsReftypeImmediate.
    recoveredValue1 := (self) reference: (0) reftype: (recoveredValue0) offset: (0).
    ^recoveredValue1
! !

"kernel.ic method 0x20009330; bytecode file offset 0x54244"
!OSImmediate class methodsFor: 'recovered'!
address: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSObjectPointer.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1) itemType: (self) indirectionLevel: (1).
    ^recoveredValue2
! !

"kernel.ic method 0x20009d4c; bytecode file offset 0x54c60"
!OSImmediate class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) fixedSize.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := 4.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) fixedSize: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x2000b524; bytecode file offset 0x56440"
!OSImmediate class methodsFor: 'recovered'!
castFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) reference.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) offset.
    recoveredValue4 := (recoveredValue1) + (recoveredValue3).
    recoveredValue5 := EsReftypeImmediate.
    recoveredValue6 := (self) reference: (recoveredValue4) reftype: (recoveredValue5) offset: (0).
    ^recoveredValue6
! !

