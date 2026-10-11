"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtdau.ic method 0x20000048; bytecode file offset 0xf3ec"
!Object methodsFor: 'recovered'!
dsInLocalSpace
    ^self
! !

"abtdau.ic method 0x20000078; bytecode file offset 0xf3ec"
!Object methodsFor: 'recovered'!
abtAsNormalizedTopicID
    ^self
! !

"abtdau.ic method 0x200002d4; bytecode file offset 0xf648"
!Object methodsFor: 'recovered'!
abtInImageRestore
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := AbtCwBaseAdditionsApp.
    recoveredValue1 := (recoveredValue0) abtInImageRestore.
    ^recoveredValue1
! !

"abtdau.ic method 0x200004c0; bytecode file offset 0xf834"
!Object methodsFor: 'recovered'!
dsPerformWithLocalResult: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) perform: (recoveredValue0).
    recoveredValue2 := (recoveredValue1) dsInLocalSpace.
    ^recoveredValue2
! !

"abtdau.ic method 0x20000bec; bytecode file offset 0xff70"
!Object methodsFor: 'recovered'!
dsPerformWithLocalResult: recoveredArg1 with: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) perform: (recoveredValue0) with: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) dsInLocalSpace.
    ^recoveredValue3
! !

"abtdau.ic method 0x20000bfc; bytecode file offset 0xff70"
!Object methodsFor: 'recovered'!
dsPerformWithLocalResult: recoveredArg1 withArguments: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) perform: (recoveredValue0) withArguments: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) dsInLocalSpace.
    ^recoveredValue3
! !

"abtdau.ic method 0x200011f8; bytecode file offset 0x1056c"
!Object methodsFor: 'recovered'!
dsPerformWithLocalResult: recoveredArg1 with: recoveredArg2 with: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (self) perform: (recoveredValue0) with: (recoveredValue1) with: (recoveredValue2).
    recoveredValue4 := (recoveredValue3) dsInLocalSpace.
    ^recoveredValue4
! !

"abtdau.ic method 0x20001334; bytecode file offset 0x106a8"
!Object methodsFor: 'recovered'!
dsPerformWithLocalResult: recoveredArg1 with: recoveredArg2 with: recoveredArg3 with: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg4.
    recoveredValue4 := (self) perform: (recoveredValue0) with: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3).
    recoveredValue5 := (recoveredValue4) dsInLocalSpace.
    ^recoveredValue5
! !

"abtdau.ic method 0x2000216c; bytecode file offset 0x114f4"
!Object methodsFor: 'recovered'!
dsSpace
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := DsDistributedSystem.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) distributionEnabled.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := EsMethodArray.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) activeProcess.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) dsParentProcess.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) dsLocalSpace.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := DsDistributedSystem.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) localSpace.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

