"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2004b784; bytecode file offset 0x948384"
!ASAP2XYAxisPoints methodsFor: 'recovered'!
position
    | recoveredValue0 |
    recoveredValue0 := (self) at: (4).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004bca8; bytecode file offset 0x94877c"
!ASAP2XYAxisPoints methodsFor: 'recovered'!
dataType
    | recoveredValue0 |
    recoveredValue0 := (self) at: (5).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004c0ac; bytecode file offset 0x948b80"
!ASAP2XYAxisPoints methodsFor: 'recovered'!
indexOrder
    | recoveredValue0 |
    recoveredValue0 := (self) at: (6).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004c390; bytecode file offset 0x948e28"
!ASAP2XYAxisPoints methodsFor: 'recovered'!
addressType
    | recoveredValue0 |
    recoveredValue0 := (self) at: (7).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200a62fc; bytecode file offset 0x9a2f38"
!ASAP2XYAxisPoints methodsFor: 'recovered'!
position: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (4) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a67d0; bytecode file offset 0x9a32e0"
!ASAP2XYAxisPoints methodsFor: 'recovered'!
dataType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (5) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a6d10; bytecode file offset 0x9a3694"
!ASAP2XYAxisPoints methodsFor: 'recovered'!
indexOrder: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (6) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a6efc; bytecode file offset 0x9a391c"
!ASAP2XYAxisPoints methodsFor: 'recovered'!
addressType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (7) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x202973c0; bytecode file offset 0xb93c9c"
!ASAP2XYAxisPoints methodsFor: 'recovered'!
getFrom: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) getShortBegin: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) getPosition: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) getDataType: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) getIndexOrder: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) getAddressType: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := #('INDEX_INCR' 'INDEX_DECR').
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexOrder.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := SCASAP2INVALIDAXISPTRINDEXMODE.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := (recoveredStack2) indexOrder.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) logWarning: (recoveredStack1) word: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2035a3c8; bytecode file offset 0xc56cac"
!ASAP2XYAxisPoints methodsFor: 'recovered'!
putIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 |
    recoveredValue0 := recoveredArg1.
    (self) putNewLineIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) class.
    recoveredValue4 := (recoveredValue3) keyWord.
    (recoveredValue2) nextPutAll: (recoveredValue4).
    (recoveredValue1) nextPut: ($ ).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (self) position.
    (self) putIn: (recoveredValue5) integer: (recoveredValue6).
    recoveredValue7 := recoveredArg1.
    (self) putSeparatorIn: (recoveredValue7).
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := (self) dataType.
    (self) putIn: (recoveredValue8) string: (recoveredValue9).
    recoveredValue10 := recoveredArg1.
    (self) putSeparatorIn: (recoveredValue10).
    recoveredValue11 := recoveredArg1.
    recoveredValue12 := (self) indexOrder.
    (self) putIn: (recoveredValue11) string: (recoveredValue12).
    recoveredValue13 := recoveredArg1.
    (self) putSeparatorIn: (recoveredValue13).
    recoveredValue14 := recoveredArg1.
    recoveredValue15 := (self) addressType.
    (self) putIn: (recoveredValue14) string: (recoveredValue15).
    recoveredValue16 := recoveredArg1.
    (self) putSeparatorIn: (recoveredValue16).
    ^self
! !

