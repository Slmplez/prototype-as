"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtdah.ic method 0x200000f0; bytecode file offset 0x10284"
!AbtForeignRecord methodsFor: 'recovered'!
bigEndianIntegerFormat
    | recoveredValue0 |
    recoveredValue0 := (self) bigEndian.
    ^recoveredValue0
! !

"abtdah.ic method 0x200005e0; bytecode file offset 0x10624"
!AbtForeignRecord methodsFor: 'recovered'!
bigEndianIntegerFormat: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) bigEndian: (recoveredValue0).
    ^recoveredValue1
! !

"abtdah.ic method 0x20001978; bytecode file offset 0x119a4"
!AbtForeignRecord methodsFor: 'recovered'!
byteOrder: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) = (2).
    (self) bigEndian: (recoveredValue1).
    ^self
! !

"abtdah.ic method 0x20002760; bytecode file offset 0x1278c"
!AbtForeignRecord methodsFor: 'recovered'!
byteOrder
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) bigEndian.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := 2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := 1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

