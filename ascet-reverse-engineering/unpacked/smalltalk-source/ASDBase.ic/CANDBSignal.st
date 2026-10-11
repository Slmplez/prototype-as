"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20069e50; bytecode file offset 0x966bdc"
!CANDBSignal methodsFor: 'recovered'!
bitOffset
    | recoveredValue0 |
    recoveredValue0 := bitOffset.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006ab14; bytecode file offset 0x967a18"
!CANDBSignal methodsFor: 'recovered'!
numberOfBits
    | recoveredValue0 |
    recoveredValue0 := numberOfBits.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006ba18; bytecode file offset 0x96873c"
!CANDBSignal methodsFor: 'recovered'!
byteOrder
    | recoveredValue0 |
    recoveredValue0 := byteOrder.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006c50c; bytecode file offset 0x9692b0"
!CANDBSignal methodsFor: 'recovered'!
dataType
    | recoveredValue0 |
    recoveredValue0 := dataType.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006cb98; bytecode file offset 0x969c04"
!CANDBSignal methodsFor: 'recovered'!
formula
    | recoveredValue0 |
    recoveredValue0 := formula.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d924; bytecode file offset 0x96a390"
!CANDBSignal methodsFor: 'recovered'!
interval
    | recoveredValue0 |
    recoveredValue0 := interval.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006de38; bytecode file offset 0x96a9dc"
!CANDBSignal methodsFor: 'recovered'!
unit
    | recoveredValue0 |
    recoveredValue0 := unit.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006ea10; bytecode file offset 0x96b41c"
!CANDBSignal methodsFor: 'recovered'!
receiver
    | recoveredValue0 |
    recoveredValue0 := receiver.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20090aa4; bytecode file offset 0x98d360"
!CANDBSignal methodsFor: 'recovered'!
messageLength
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) parent.
    recoveredValue1 := (recoveredValue0) numberOfBytes.
    recoveredValue2 := (recoveredValue1) * (8).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200b7cc8; bytecode file offset 0x9b4588"
!CANDBSignal methodsFor: 'recovered'!
getByteOrder: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ETASByteOrder.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) nextOrNil.
    recoveredValue3 := (recoveredValue0) fromCharacter: (recoveredValue2).
    byteOrder := recoveredValue3.
    ^self
! !

"ASDBase.ic method 0x200c1150; bytecode file offset 0x9bdf14"
!CANDBSignal methodsFor: 'recovered'!
bitOffset: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    bitOffset := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c181c; bytecode file offset 0x9beac8"
!CANDBSignal methodsFor: 'recovered'!
numberOfBits: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    numberOfBits := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c28c0; bytecode file offset 0x9bf474"
!CANDBSignal methodsFor: 'recovered'!
byteOrder: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    byteOrder := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2eec; bytecode file offset 0x9bfde0"
!CANDBSignal methodsFor: 'recovered'!
dataType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    dataType := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c3b30; bytecode file offset 0x9c058c"
!CANDBSignal methodsFor: 'recovered'!
formula: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    formula := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c3f9c; bytecode file offset 0x9c0bf0"
!CANDBSignal methodsFor: 'recovered'!
interval: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    interval := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4840; bytecode file offset 0x9c11bc"
!CANDBSignal methodsFor: 'recovered'!
unit: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    unit := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5240; bytecode file offset 0x9c1afc"
!CANDBSignal methodsFor: 'recovered'!
receiver: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    receiver := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200e81b4; bytecode file offset 0x9e4a74"
!CANDBSignal methodsFor: 'recovered'!
getNumberOfBits: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) numberOfBits.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) getInteger: (recoveredValue1).
    recoveredValue3 := (recoveredValue0) + (recoveredValue2).
    (self) numberOfBits: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x200e980c; bytecode file offset 0x9e60c8"
!CANDBSignal methodsFor: 'recovered'!
getBitOffset: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) skipSeparators: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) getInteger: (recoveredValue1).
    bitOffset := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200e982c; bytecode file offset 0x9e60e8"
!CANDBSignal methodsFor: 'recovered'!
getUnit: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) skipSeparators: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) getString: (recoveredValue1).
    unit := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200ea0fc; bytecode file offset 0x9e69b8"
!CANDBSignal methodsFor: 'recovered'!
getName: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getString: (recoveredValue0).
    name := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    (self) skipSeparators: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200fa8c0; bytecode file offset 0x9f71d0"
!CANDBSignal methodsFor: 'recovered'!
initialize
    super initialize.
    (self) numberOfBits: (0).
    ^self
! !

"ASDBase.ic method 0x200fbbd4; bytecode file offset 0x9f8494"
!CANDBSignal methodsFor: 'recovered'!
getInterval: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := CANDBInterval.
    recoveredValue1 := (recoveredValue0) create.
    interval := recoveredValue1.
    recoveredValue2 := interval.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) getFrom: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20144804; bytecode file offset 0xa410c8"
!CANDBSignal methodsFor: 'recovered'!
getReceiver: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    (self) skipSeparators: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) lineDelimiter.
    recoveredValue4 := (recoveredValue1) upToOneOff: (recoveredValue3).
    recoveredValue5 := (recoveredValue4) allSubStrings: ($,).
    receiver := recoveredValue5.
    ^self
! !

"ASDBase.ic method 0x20152e60; bytecode file offset 0xa4f724"
!CANDBSignal methodsFor: 'recovered'!
getFormula: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := CANDBFormula.
    recoveredValue1 := (recoveredValue0) create.
    formula := recoveredValue1.
    recoveredValue2 := formula.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) getFrom: (recoveredValue3).
    recoveredValue4 := formula.
    (recoveredValue4) parent: (self).
    ^self
! !

"ASDBase.ic method 0x20249fc4; bytecode file offset 0xb469d8"
!CANDBSignal methodsFor: 'recovered'!
getDescriptionFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    (self) getBitOffset: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) getNumberOfBits: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (self) getByteOrder: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (self) getDataType: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    (self) getFormula: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    (self) getInterval: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    (self) getUnit: (recoveredValue6).
    recoveredValue7 := recoveredArg1.
    (self) getReceiver: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x20254fa0; bytecode file offset 0xb5185c"
!CANDBSignal methodsFor: 'recovered'!
getDataType: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) getNumberOfBits: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) nextOrNil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) nextOrNil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            dataType := recoveredStack2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := $-.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 37] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := dataType.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := $+.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 37] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2033f984; bytecode file offset 0xc3c258"
!CANDBSignal methodsFor: 'recovered'!
getFrom: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) getName: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) peek.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := $m.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := CANDBMultiplexSignal.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := parent.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) create: (recoveredStack1) parent: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredPC := 56.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := $M.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := CANDBModeSignal.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := parent.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) create: (recoveredStack1) parent: (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) next.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredPC := 56.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) getDescriptionFrom: (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204bb948; bytecode file offset 0xdb820c"
!CANDBSignal methodsFor: 'recovered'!
normalizeEntries
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 |
    ^nil
! !

