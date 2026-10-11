"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"lib.ic method 0x20000334; bytecode file offset 0x3c670"
!EmMethodEdition class methodsFor: 'recovered'!
decoder
    | recoveredValue0 |
    recoveredValue0 := Decoder.
    ^recoveredValue0
! !

"lib.ic method 0x200006fc; bytecode file offset 0x3c804"
!EmMethodEdition class methodsFor: 'recovered'!
extendedSourceKey
    ^'*EM-ExtendedSource'
! !

"lib.ic method 0x200012c8; bytecode file offset 0x3d2ec"
!EmMethodEdition class methodsFor: 'recovered'!
initialize
    LastReturned := nil.
    ^self
! !

"lib.ic method 0x200017ec; bytecode file offset 0x3d84c"
!EmMethodEdition class methodsFor: 'recovered'!
importSource: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ImportSource := recoveredValue0.
    ^self
! !

"lib.ic method 0x200017f8; bytecode file offset 0x3d84c"
!EmMethodEdition class methodsFor: 'recovered'!
decoder: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    Decoder := recoveredValue0.
    ^self
! !

"lib.ic method 0x20001810; bytecode file offset 0x3d84c"
!EmMethodEdition class methodsFor: 'recovered'!
linker: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    Linker := recoveredValue0.
    ^self
! !

"lib.ic method 0x20001ac0; bytecode file offset 0x3daf0"
!EmMethodEdition class methodsFor: 'recovered'!
importSource
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ImportSource.
    recoveredValue1 := (recoveredValue0) == (true).
    ^recoveredValue1
! !

"lib.ic method 0x20001c78; bytecode file offset 0x3dc9c"
!EmMethodEdition class methodsFor: 'recovered'!
initializeAfterLoad
    (self) importSource: (false).
    ^self
! !

"lib.ic method 0x20002b5c; bytecode file offset 0x3eb7c"
!EmMethodEdition class methodsFor: 'recovered'!
defaultLength
    ^44
! !

"lib.ic method 0x20002ca4; bytecode file offset 0x3ecc4"
!EmMethodEdition class methodsFor: 'recovered'!
tag
    ^4209
! !

"lib.ic method 0x200045dc; bytecode file offset 0x40608"
!EmMethodEdition class methodsFor: 'recovered'!
useLinker: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Linker.
    recoveredValue1 := (recoveredValue0) notNil.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) & (recoveredValue2).
    UseLinker := recoveredValue3.
    ^self
! !

"lib.ic method 0x200059f0; bytecode file offset 0x41a1c"
!EmMethodEdition class methodsFor: 'recovered'!
updating: recoveredArg1 from: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    LastReturned := nil.
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := super updating: (recoveredValue0) from: (recoveredValue1).
    ^recoveredValue2
! !

"lib.ic method 0x2000705c; bytecode file offset 0x43088"
!EmMethodEdition class methodsFor: 'recovered'!
useLinker
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := UseLinker.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := EmLibrary.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) usingGateway.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"lib.ic method 0x2000f1e4; bytecode file offset 0x4b228"
!EmMethodEdition class methodsFor: 'recovered'!
using: recoveredArg1 updateUsing: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EmLibrary.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) default.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) transactionBegin.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) updating: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) filePointer.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 33] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := EmLibrary.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := MxEMcsESa4.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) transactionProtocolError: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := EmLibrary.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) transactionEnd.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20015500; bytecode file offset 0x51548"
!EmMethodEdition class methodsFor: 'recovered'!
using: recoveredArg1 from: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := LastReturned.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 31] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := LastReturned.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) filePointer.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 31].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := LastReturned.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) library.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 31].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := LastReturned.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := super using: (recoveredStack1) from: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            LastReturned := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := EmLibrary.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) isGateway.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := LastReturned.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredPC := 58.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := LastReturned.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) cacheRecord.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

