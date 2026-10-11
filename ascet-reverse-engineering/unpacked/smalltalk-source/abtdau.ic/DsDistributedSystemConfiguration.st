"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtdau.ic method 0x2000019c; bytecode file offset 0xf53c"
!DsDistributedSystemConfiguration methodsFor: 'recovered'!
version
    ^'4.0'
! !

"abtdau.ic method 0x200001e0; bytecode file offset 0xf5d4"
!DsDistributedSystemConfiguration methodsFor: 'recovered'!
allObjectSpaces
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) localSpace.
    recoveredValue1 := (recoveredValue0) allObjectSpaces.
    ^recoveredValue1
! !

"abtdau.ic method 0x20000220; bytecode file offset 0xf5d4"
!DsDistributedSystemConfiguration methodsFor: 'recovered'!
allObjectSpaceNames
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) localSpace.
    recoveredValue1 := (recoveredValue0) allObjectSpaceNames.
    ^recoveredValue1
! !

"abtdau.ic method 0x20000260; bytecode file offset 0xf5d4"
!DsDistributedSystemConfiguration methodsFor: 'recovered'!
collecting
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) localSpace.
    recoveredValue1 := (recoveredValue0) collecting.
    ^recoveredValue1
! !

"abtdau.ic method 0x200004d8; bytecode file offset 0xf87c"
!DsDistributedSystemConfiguration methodsFor: 'recovered'!
logicalProcessForProcess: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) localSpace.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) logicalProcessForProcess: (recoveredValue1).
    ^recoveredValue2
! !

"abtdau.ic method 0x200004f8; bytecode file offset 0xf87c"
!DsDistributedSystemConfiguration methodsFor: 'recovered'!
interruptThreadForProcess: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) localSpace.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) interruptThreadForProcess: (recoveredValue1).
    ^recoveredValue2
! !

"abtdau.ic method 0x20000508; bytecode file offset 0xf87c"
!DsDistributedSystemConfiguration methodsFor: 'recovered'!
objectSpaceWithName: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) localSpace.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) objectSpaceWithName: (recoveredValue1).
    ^recoveredValue2
! !

"abtdau.ic method 0x2000098c; bytecode file offset 0xfd00"
!DsDistributedSystemConfiguration methodsFor: 'recovered'!
dsNonDistributedUnitOfWork
    ^nil
! !

"abtdau.ic method 0x20000ab8; bytecode file offset 0xfe30"
!DsDistributedSystemConfiguration methodsFor: 'recovered'!
dsAllObjectSpaces
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ExceptionalEvent.
    recoveredValue1 := (self) dsLocalSpace.
    recoveredValue2 := (recoveredValue0) with: (recoveredValue1).
    ^recoveredValue2
! !

"abtdau.ic method 0x20000f0c; bytecode file offset 0x10290"
!DsDistributedSystemConfiguration methodsFor: 'recovered'!
dsSetDistributionEnabled: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    distributionEnabled := recoveredValue0.
    ^self
! !

"abtdau.ic method 0x20000f14; bytecode file offset 0x10290"
!DsDistributedSystemConfiguration methodsFor: 'recovered'!
distributionEnabled: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    distributionEnabled := recoveredValue0.
    ^self
! !

"abtdau.ic method 0x200018a4; bytecode file offset 0x10c20"
!DsDistributedSystemConfiguration methodsFor: 'recovered'!
distributedUnitOfWork
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) distributionEnabled.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) localSpace.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) distributedUnitOfWork.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) dsNonDistributedUnitOfWork.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"abtdau.ic method 0x20001a8c; bytecode file offset 0x10e04"
!DsDistributedSystemConfiguration methodsFor: 'recovered'!
classInUiObjectSpace: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) distributionEnabled.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) localSpace.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) classInUiObjectSpace: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"abtdau.ic method 0x20001dd0; bytecode file offset 0x11148"
!DsDistributedSystemConfiguration methodsFor: 'recovered'!
dsSetLocalSpace: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := localObjectSpace.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := localObjectSpace.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := DsDummyLocalObjectSpace.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) become: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            localObjectSpace := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"abtdau.ic method 0x20001f94; bytecode file offset 0x11308"
!DsDistributedSystemConfiguration methodsFor: 'recovered'!
localSpace
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := localObjectSpace.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := DsLocalObjectSpace.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) newDummy.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            localObjectSpace := recoveredStack2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := localObjectSpace.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"abtdau.ic method 0x20002510; bytecode file offset 0x11884"
!DsDistributedSystemConfiguration methodsFor: 'recovered'!
distributionEnabled
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := distributionEnabled.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            distributionEnabled := recoveredStack2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 29.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) localSpace.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) isDummy.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 29] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := distributionEnabled.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

