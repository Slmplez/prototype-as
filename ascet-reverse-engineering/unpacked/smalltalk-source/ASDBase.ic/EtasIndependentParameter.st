"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2006a62c; bytecode file offset 0x967a18"
!EtasIndependentParameter methodsFor: 'recovered'!
oldValue
    | recoveredValue0 |
    recoveredValue0 := oldValue.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2008f9a8; bytecode file offset 0x98c27c"
!EtasIndependentParameter methodsFor: 'recovered'!
hasChangedItsValue
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) newValue.
    recoveredValue1 := (self) oldValue.
    recoveredValue2 := (recoveredValue0) isEqualTo: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) not.
    ^recoveredValue3
! !

"ASDBase.ic method 0x2009fb80; bytecode file offset 0x99c9e0"
!EtasIndependentParameter methodsFor: 'recovered'!
updateOldValue
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) newValue.
    recoveredValue1 := (recoveredValue0) deepCopyValuesSetAccessToNil.
    (self) oldValue: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200c1d54; bytecode file offset 0x9beac8"
!EtasIndependentParameter methodsFor: 'recovered'!
oldValue: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    oldValue := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20145ac4; bytecode file offset 0xa42388"
!EtasIndependentParameter methodsFor: 'recovered'!
newValue: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            super newValue: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) oldValue.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) updateOldValue.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201ae618; bytecode file offset 0xaaaedc"
!EtasIndependentParameter methodsFor: 'recovered'!
newValue
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := newValue.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            super newValue.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) oldValue.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) updateOldValue.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := newValue.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

