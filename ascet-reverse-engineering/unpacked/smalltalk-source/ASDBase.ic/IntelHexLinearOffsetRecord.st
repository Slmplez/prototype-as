"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2007604c; bytecode file offset 0x9757c8"
!IntelHexLinearOffsetRecord methodsFor: 'recovered'!
isSegmentRecord
    ^true
! !

"ASDBase.ic method 0x200a04e4; bytecode file offset 0x99cdb0"
!IntelHexLinearOffsetRecord methodsFor: 'recovered'!
segmentAddress
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) hexWordAt: (9).
    recoveredValue1 := (recoveredValue0) << (16).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2016cda0; bytecode file offset 0xa69684"
!IntelHexLinearOffsetRecord methodsFor: 'recovered'!
addTo: recoveredArg1 in: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) segmentAddress.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := [
    | block280ce8b0Value0 block280ce8b0Value1 |
    block280ce8b0Value0 := OrderedCollection.
    block280ce8b0Value1 := (block280ce8b0Value0) new.
    block280ce8b0Value1
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsentPut: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

