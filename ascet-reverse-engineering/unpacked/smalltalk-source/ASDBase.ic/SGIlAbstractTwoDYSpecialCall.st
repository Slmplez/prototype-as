"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2005589c; bytecode file offset 0x952a9c"
!SGIlAbstractTwoDYSpecialCall methodsFor: 'recovered'!
ileAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) abstractTwoDYSpecialCall: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20293404; bytecode file offset 0xb8fcec"
!SGIlAbstractTwoDYSpecialCall methodsFor: 'recovered'!
addServiceArgs: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) receiver.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) type.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := super addServiceArgs: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := 'fmst'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := (recoveredStack3) isStatic.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack4 := (recoveredStack4) yDistribution.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack4 := (recoveredStack4) maxSize.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack4 := (recoveredStack4) asInterval.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := (recoveredStack3) createImplTypeFromInterval: (recoveredStack4).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := (recoveredStack3) getDisplayLabel.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := ''.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

