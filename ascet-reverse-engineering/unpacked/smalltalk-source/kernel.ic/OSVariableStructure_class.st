"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"kernel.ic method 0x200042a8; bytecode file offset 0x4f1bc"
!OSVariableStructure class methodsFor: 'recovered'!
variableSize
    | recoveredValue0 |
    recoveredValue0 := variableSize.
    ^recoveredValue0
! !

"kernel.ic method 0x20007b64; bytecode file offset 0x52a78"
!OSVariableStructure class methodsFor: 'recovered'!
variableSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    variableSize := recoveredValue0.
    ^self
! !

"kernel.ic method 0x2000e634; bytecode file offset 0x59554"
!OSVariableStructure class methodsFor: 'recovered'!
newVariable: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := ByteArray.
    recoveredValue1 := fixedSize.
    recoveredValue2 := (self) variableSize.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue2) * (recoveredValue3).
    recoveredValue5 := (recoveredValue1) + (recoveredValue4).
    recoveredValue6 := (recoveredValue0) new: (recoveredValue5).
    recoveredValue7 := EsReftypeStruct.
    recoveredValue8 := (self) reference: (recoveredValue6) reftype: (recoveredValue7) offset: (0).
    ^recoveredValue8
! !

"kernel.ic method 0x2000f704; bytecode file offset 0x5a620"
!OSVariableStructure class methodsFor: 'recovered'!
callocVariable: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := fixedSize.
    recoveredValue1 := (self) variableSize.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) * (recoveredValue2).
    recoveredValue4 := (recoveredValue0) + (recoveredValue3).
    recoveredValue5 := EsReftypePointer.
    recoveredValue6 := (self) privateCalloc: (recoveredValue4) reftype: (recoveredValue5).
    recoveredValue7 := EsReftypePointer.
    recoveredValue8 := (self) reference: (recoveredValue6) reftype: (recoveredValue7) offset: (0).
    ^recoveredValue8
! !

"kernel.ic method 0x20010b2c; bytecode file offset 0x5ba50"
!OSVariableStructure class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'PTR'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := '8473'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            super initializeAfterLoad.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) variableSize.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 25] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) variableSize: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

