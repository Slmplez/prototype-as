"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"lib.ic method 0x20001274; bytecode file offset 0x3d2a4"
!EmFixedDiskDictionary class methodsFor: 'recovered'!
initializeAfterLoad
    DoNotReadRegistry := false.
    ^self
! !

"lib.ic method 0x20001280; bytecode file offset 0x3d2a4"
!EmFixedDiskDictionary class methodsFor: 'recovered'!
transactionEnded
    DoNotReadRegistry := false.
    ^self
! !

"lib.ic method 0x200012fc; bytecode file offset 0x3d664"
!EmFixedDiskDictionary class methodsFor: 'recovered'!
recordRegistry
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) startOfRegistry.
    recoveredValue1 := (self) using: (recoveredValue0).
    ^recoveredValue1
! !

"lib.ic method 0x200013bc; bytecode file offset 0x3d664"
!EmFixedDiskDictionary class methodsFor: 'recovered'!
updateRecordRegistry
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) startOfRegistry.
    recoveredValue1 := (self) updating: (recoveredValue0).
    ^recoveredValue1
! !

"lib.ic method 0x20001b68; bytecode file offset 0x3db94"
!EmFixedDiskDictionary class methodsFor: 'recovered'!
startOfRegistry
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := EmLibrary.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (self) startOfRegistryIn: (recoveredValue1).
    ^recoveredValue2
! !

"lib.ic method 0x200029a0; bytecode file offset 0x3e9c8"
!EmFixedDiskDictionary class methodsFor: 'recovered'!
tag
    ^17
! !

"lib.ic method 0x20004eec; bytecode file offset 0x40f1c"
!EmFixedDiskDictionary class methodsFor: 'recovered'!
startOfRegistryIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := EmLibraryPointer.
    recoveredValue1 := EmLibraryHeader.
    recoveredValue2 := (recoveredValue1) fixedLength.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue0) fromNumber: (recoveredValue2) in: (recoveredValue3).
    ^recoveredValue4
! !

"lib.ic method 0x20005874; bytecode file offset 0x4189c"
!EmFixedDiskDictionary class methodsFor: 'recovered'!
createRegistryIn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) new: (1000).
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) insertInto: (recoveredValue1).
    ^self
! !

"lib.ic method 0x2000ef10; bytecode file offset 0x4af4c"
!EmFixedDiskDictionary class methodsFor: 'recovered'!
using: recoveredArg1 from: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) startOfRegistryIn: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) transactionInProgress.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := DoNotReadRegistry.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 29].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := MxEMcsESa5.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) transactionProtocolError: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            DoNotReadRegistry := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := super using: (recoveredStack1) from: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

