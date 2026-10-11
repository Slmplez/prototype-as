"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20007f04; bytecode file offset 0x908be4"
!ASAP2FNCValues methodsFor: 'recovered'!
value
    | recoveredValue0 |
    recoveredValue0 := (self) position.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004b6a0; bytecode file offset 0x948384"
!ASAP2FNCValues methodsFor: 'recovered'!
position
    | recoveredValue0 |
    recoveredValue0 := (self) at: (4).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004bc84; bytecode file offset 0x94877c"
!ASAP2FNCValues methodsFor: 'recovered'!
dataType
    | recoveredValue0 |
    recoveredValue0 := (self) at: (5).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004bfd4; bytecode file offset 0x948b80"
!ASAP2FNCValues methodsFor: 'recovered'!
indexMode
    | recoveredValue0 |
    recoveredValue0 := (self) at: (6).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004c33c; bytecode file offset 0x948e28"
!ASAP2FNCValues methodsFor: 'recovered'!
addressType
    | recoveredValue0 |
    recoveredValue0 := (self) at: (7).
    ^recoveredValue0
! !

"ASDBase.ic method 0x20060c7c; bytecode file offset 0x95d978"
!ASAP2FNCValues methodsFor: 'recovered'!
isAlternateWithY
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) indexMode.
    recoveredValue1 := (recoveredValue0) = ('ALTERNATE_WITH_Y').
    ^recoveredValue1
! !

"ASDBase.ic method 0x20060f0c; bytecode file offset 0x95d978"
!ASAP2FNCValues methodsFor: 'recovered'!
isRowDir
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) indexMode.
    recoveredValue1 := (recoveredValue0) = ('ROW_DIR').
    ^recoveredValue1
! !

"ASDBase.ic method 0x20060f4c; bytecode file offset 0x95d978"
!ASAP2FNCValues methodsFor: 'recovered'!
isAlternateWithX
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) indexMode.
    recoveredValue1 := (recoveredValue0) = ('ALTERNATE_WITH_X').
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006106c; bytecode file offset 0x95d978"
!ASAP2FNCValues methodsFor: 'recovered'!
isAlternateCurve
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) indexMode.
    recoveredValue1 := (recoveredValue0) = ('ALTERNATE_CURVE').
    ^recoveredValue1
! !

"ASDBase.ic method 0x20084c18; bytecode file offset 0x981ca4"
!ASAP2FNCValues methodsFor: 'recovered'!
value: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) position: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x2009ab98; bytecode file offset 0x99744c"
!ASAP2FNCValues methodsFor: 'recovered'!
byteSizeForXSize: recoveredArg1 ySize: recoveredArg2 dataTypeSize: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) * (recoveredValue1).
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue2) * (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200a6320; bytecode file offset 0x9a2f38"
!ASAP2FNCValues methodsFor: 'recovered'!
position: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (4) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a6698; bytecode file offset 0x9a32e0"
!ASAP2FNCValues methodsFor: 'recovered'!
dataType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (5) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a6b54; bytecode file offset 0x9a3694"
!ASAP2FNCValues methodsFor: 'recovered'!
indexMode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (6) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a6ef0; bytecode file offset 0x9a391c"
!ASAP2FNCValues methodsFor: 'recovered'!
addressType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (7) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x2026bd0c; bytecode file offset 0xb685e4"
!ASAP2FNCValues methodsFor: 'recovered'!
getFncValues: recoveredArg1
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
            (recoveredStack1) getPosition: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) getDataType: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) getIndexMode: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) getAddressType: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := #('COLUMN_DIR' 'ROW_DIR' 'ALTERNATE_WITH_X' 'ALTERNATE_WITH_Y').
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexMode.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := SCASAP2INVALIDFNCINDEXMODE.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) indexMode.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) logWarning: (recoveredStack1) word: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2030c1ec; bytecode file offset 0xc08ac4"
!ASAP2FNCValues methodsFor: 'recovered'!
putIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := recoveredArg1.
    (self) putNewLineIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) putKeyWordIn: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) position.
    (self) putIn: (recoveredValue2) integer: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    (self) putSeparatorIn: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (self) dataType.
    (self) putIn: (recoveredValue5) string: (recoveredValue6).
    recoveredValue7 := recoveredArg1.
    (self) putSeparatorIn: (recoveredValue7).
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := (self) indexMode.
    (self) putIn: (recoveredValue8) string: (recoveredValue9).
    recoveredValue10 := recoveredArg1.
    (self) putSeparatorIn: (recoveredValue10).
    recoveredValue11 := recoveredArg1.
    recoveredValue12 := (self) addressType.
    (self) putIn: (recoveredValue11) string: (recoveredValue12).
    recoveredValue13 := recoveredArg1.
    (self) putSeparatorIn: (recoveredValue13).
    ^self
! !

