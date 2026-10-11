"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001f7c0; bytecode file offset 0x92209c"
!SGSimDummyDevice methodsFor: 'recovered'!
name
    ^'ASD-SMTDummyDevice'
! !

"ASDBase.ic method 0x20074a5c; bytecode file offset 0x9757c8"
!SGSimDummyDevice methodsFor: 'recovered'!
canRemoveIndividualMeasureData
    ^true
! !

"ASDBase.ic method 0x20074e14; bytecode file offset 0x9757c8"
!SGSimDummyDevice methodsFor: 'recovered'!
startAcquisition
    ^true
! !

"ASDBase.ic method 0x20075e5c; bytecode file offset 0x9757c8"
!SGSimDummyDevice methodsFor: 'recovered'!
canStoreDataDuringAcquisition
    ^true
! !

"ASDBase.ic method 0x20077eac; bytecode file offset 0x9757c8"
!SGSimDummyDevice methodsFor: 'recovered'!
canAddRemoveDataDuringAcquisition
    ^true
! !

"ASDBase.ic method 0x200782dc; bytecode file offset 0x9757c8"
!SGSimDummyDevice methodsFor: 'recovered'!
configAcquisition
    ^true
! !

"ASDBase.ic method 0x200782f4; bytecode file offset 0x9757c8"
!SGSimDummyDevice methodsFor: 'recovered'!
stopAcquisition
    ^true
! !

"ASDBase.ic method 0x20079754; bytecode file offset 0x97c330"
!SGSimDummyDevice methodsFor: 'recovered'!
canSupplyOnlineDLLData
    ^false
! !

"ASDBase.ic method 0x2007b7d4; bytecode file offset 0x97c330"
!SGSimDummyDevice methodsFor: 'recovered'!
usesCommonChannelGroups
    ^false
! !

"ASDBase.ic method 0x200a89b4; bytecode file offset 0x9a5268"
!SGSimDummyDevice methodsFor: 'recovered'!
newSimTimeStamp: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    time := recoveredValue0.
    newData := true.
    ^self
! !

"ASDBase.ic method 0x2011cb64; bytecode file offset 0xa19420"
!SGSimDummyDevice methodsFor: 'recovered'!
initialize
    super initialize.
    time := 0.
    newData := false.
    ^self
! !

"ASDBase.ic method 0x20130840; bytecode file offset 0xa2d0fc"
!SGSimDummyDevice methodsFor: 'recovered'!
nextImplTimeStampForGroup: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := newData.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            newData := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := time.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20130848; bytecode file offset 0xa2d0fc"
!SGSimDummyDevice methodsFor: 'recovered'!
nextImplTimeStepForGroup: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := newData.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            newData := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := time.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

