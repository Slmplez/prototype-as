"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20006f20; bytecode file offset 0x908be4"
!ASDScalarImplReference methodsFor: 'recovered'!
scalarImplValue
    | recoveredValue0 |
    recoveredValue0 := (self) redundantScalarImplValues.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20067544; bytecode file offset 0x9646f8"
!ASDScalarImplReference methodsFor: 'recovered'!
implTypeName
    | recoveredValue0 |
    recoveredValue0 := implTypeName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20068a0c; bytecode file offset 0x965b90"
!ASDScalarImplReference methodsFor: 'recovered'!
redundantScalarImplValues
    | recoveredValue0 |
    recoveredValue0 := redundantScalarImplValues.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200bef78; bytecode file offset 0x9bc0b4"
!ASDScalarImplReference methodsFor: 'recovered'!
implTypeName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    implTypeName := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c07ac; bytecode file offset 0x9bd228"
!ASDScalarImplReference methodsFor: 'recovered'!
redundantScalarImplValues: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    redundantScalarImplValues := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x201da038; bytecode file offset 0xad6904"
!ASDScalarImplReference methodsFor: 'recovered'!
updateDataElement: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) extraImplInfo.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) setImplementationType.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) extraImplInfo.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) implTypeName.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) referencedImplTypeName: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) redundantScalarImplValues.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) redundantScalarImplValues.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) updateDataElement: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

