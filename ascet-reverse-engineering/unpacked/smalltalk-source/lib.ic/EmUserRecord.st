"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"lib.ic method 0x2000167c; bytecode file offset 0x3d6ac"
!EmUserRecord methodsFor: 'recovered'!
fullName
    | recoveredValue0 |
    recoveredValue0 := (self) element: (1).
    ^recoveredValue0
! !

"lib.ic method 0x2000169c; bytecode file offset 0x3d6d8"
!EmUserRecord methodsFor: 'recovered'!
networkName
    | recoveredValue0 |
    recoveredValue0 := (self) element: (2).
    ^recoveredValue0
! !

"lib.ic method 0x20001f5c; bytecode file offset 0x3df98"
!EmUserRecord methodsFor: 'recovered'!
inheritedFieldsIndex
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) startPosition.
    recoveredValue1 := (recoveredValue0) + (12).
    ^recoveredValue1
! !

"lib.ic method 0x200027b8; bytecode file offset 0x3e7d8"
!EmUserRecord methodsFor: 'recovered'!
numberOfElements
    ^2
! !

"lib.ic method 0x20004be0; bytecode file offset 0x40c04"
!EmUserRecord methodsFor: 'recovered'!
replaceElement: recoveredArg1 with: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    (self) replaceElement: (recoveredValue0) with: (recoveredValue1) removeCachedSpace: (true).
    ^self
! !

"lib.ic method 0x20006d70; bytecode file offset 0x42d98"
!EmUserRecord methodsFor: 'recovered'!
fullName: recoveredArg1 networkName: recoveredArg2 ifNotAllowed: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg3.
    (self) userMustBeSupervisorTo: (209) ifNot: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (self) primFullName: (recoveredValue1) networkName: (recoveredValue2).
    ^recoveredValue3
! !

"lib.ic method 0x20007f68; bytecode file offset 0x43f94"
!EmUserRecord methodsFor: 'recovered'!
fullName: recoveredArg1 ifNotAllowed: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg2.
    (self) userMustBeSupervisorTo: (210) ifNot: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) replaceElement: (1) with: (recoveredValue1).
    recoveredValue2 := (self) insert.
    ^recoveredValue2
! !

"lib.ic method 0x2000a4e0; bytecode file offset 0x4651c"
!EmUserRecord methodsFor: 'recovered'!
userMustBeSupervisorTo: recoveredArg1 ifNot: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EmUser.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCurrentSupervisor.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := Array.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack5 := EmUser.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack5 := (recoveredStack5) currentID.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack4 := (recoveredStack4) userFullNameForLogging: (recoveredStack5).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) stopAndReport: (recoveredStack2) withParms: (recoveredStack3) exitUsing: (recoveredStack4).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2000c1d4; bytecode file offset 0x48210"
!EmUserRecord methodsFor: 'recovered'!
networkName: recoveredArg1 ifNotAllowed: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EmUser.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) current.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) networkName.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := 210.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) userMustBeSupervisorTo: (recoveredStack2) ifNot: (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) replaceElement: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) insert.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x200141f8; bytecode file offset 0x5024c"
!EmUserRecord methodsFor: 'recovered'!
primFullName: recoveredArg1 networkName: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 |
    recoveredValue0 := String.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) headerSize.
    recoveredValue3 := (self) class.
    recoveredValue4 := (recoveredValue3) defaultLength.
    recoveredValue5 := (recoveredValue2) + (recoveredValue4).
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) byteSize.
    recoveredValue8 := (recoveredValue5) + (recoveredValue7).
    recoveredValue9 := recoveredArg2.
    recoveredValue10 := (recoveredValue9) byteSize.
    recoveredValue11 := (recoveredValue8) + (recoveredValue10).
    recoveredValue12 := (recoveredValue0) new: (recoveredValue11).
    (self) collection: (recoveredValue12).
    recoveredValue13 := (self) endPosition.
    (self) initializeToUse: (recoveredValue13).
    recoveredValue14 := (self) startOfOffsets.
    recoveredValue15 := (self) class.
    recoveredValue16 := (recoveredValue15) defaultLength.
    (self) at: (recoveredValue14) putWord: (recoveredValue16).
    recoveredValue17 := recoveredArg1.
    (self) element: (1) is: (recoveredValue17).
    recoveredValue18 := recoveredArg2.
    (self) element: (2) is: (recoveredValue18).
    recoveredValue19 := (self) insert.
    ^recoveredValue19
! !

