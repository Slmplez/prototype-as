"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"kernel.ic method 0x20001250; bytecode file offset 0x4c160"
!OSPtr class methodsFor: 'recovered'!
"VM primitive/special entry 0x9b; native fast path not reconstructed; fallback bytecodes follow."
privateCalloc: recoveredArg1 reftype: recoveredArg2
    | recoveredValue0 |
    recoveredValue0 := (self) primitiveFailed.
    ^recoveredValue0
! !

"kernel.ic method 0x20004410; bytecode file offset 0x4f32c"
!OSPtr class methodsFor: 'recovered'!
defaultIndirection
    ^1
! !

"kernel.ic method 0x20008670; bytecode file offset 0x535b4"
!OSPtr class methodsFor: 'recovered'!
address: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := EsReftypePointer.
    recoveredValue2 := (self) reference: (recoveredValue0) reftype: (recoveredValue1) offset: (0).
    ^recoveredValue2
! !

"kernel.ic method 0x20008680; bytecode file offset 0x535b4"
!OSPtr class methodsFor: 'recovered'!
reference: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := EsReftypeStruct.
    recoveredValue2 := (self) reference: (recoveredValue0) reftype: (recoveredValue1) offset: (0).
    ^recoveredValue2
! !

"kernel.ic method 0x200090b0; bytecode file offset 0x53fe4"
!OSPtr class methodsFor: 'recovered'!
null
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := EsReftypePointer.
    recoveredValue1 := (self) reference: (0) reftype: (recoveredValue0) offset: (0).
    ^recoveredValue1
! !

"kernel.ic method 0x2000ab94; bytecode file offset 0x55ab0"
!OSPtr class methodsFor: 'recovered'!
new
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ByteArray.
    recoveredValue1 := fixedSize.
    recoveredValue2 := (recoveredValue0) new: (recoveredValue1).
    recoveredValue3 := EsReftypeStruct.
    recoveredValue4 := (self) reference: (recoveredValue2) reftype: (recoveredValue3) offset: (0).
    ^recoveredValue4
! !

"kernel.ic method 0x2000c43c; bytecode file offset 0x57354"
!OSPtr class methodsFor: 'recovered'!
calloc
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := fixedSize.
    recoveredValue1 := EsReftypePointer.
    recoveredValue2 := (self) privateCalloc: (recoveredValue0) reftype: (recoveredValue1).
    recoveredValue3 := EsReftypePointer.
    recoveredValue4 := (self) reference: (recoveredValue2) reftype: (recoveredValue3) offset: (0).
    ^recoveredValue4
! !

"kernel.ic method 0x2000c518; bytecode file offset 0x57434"
!OSPtr class methodsFor: 'recovered'!
new: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := ByteArray.
    recoveredValue1 := fixedSize.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) * (recoveredValue2).
    recoveredValue4 := (recoveredValue0) new: (recoveredValue3).
    recoveredValue5 := EsReftypeStruct.
    recoveredValue6 := (self) reference: (recoveredValue4) reftype: (recoveredValue5) offset: (0).
    ^recoveredValue6
! !

"kernel.ic method 0x2000da30; bytecode file offset 0x58948"
!OSPtr class methodsFor: 'recovered'!
calloc: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := fixedSize.
    recoveredValue2 := (recoveredValue0) * (recoveredValue1).
    recoveredValue3 := EsReftypePointer.
    recoveredValue4 := (self) privateCalloc: (recoveredValue2) reftype: (recoveredValue3).
    recoveredValue5 := EsReftypePointer.
    recoveredValue6 := (self) reference: (recoveredValue4) reftype: (recoveredValue5) offset: (0).
    ^recoveredValue6
! !

"kernel.ic method 0x20010df8; bytecode file offset 0x5bd1c"
!OSPtr class methodsFor: 'recovered'!
castFrom: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) reference.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) isImmediate.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := EsReftypePointer.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) reftype.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := (recoveredStack3) offset.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) reference: (recoveredStack1) reftype: (recoveredStack2) offset: (recoveredStack3).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

