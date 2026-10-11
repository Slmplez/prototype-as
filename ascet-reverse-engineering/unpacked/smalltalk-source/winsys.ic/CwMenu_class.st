"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x20001d70; bytecode file offset 0x7e054"
!CwMenu class methodsFor: 'recovered'!
createPulldownOnDemand: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    CreatePulldownOnDemand := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20001db8; bytecode file offset 0x7e054"
!CwMenu class methodsFor: 'recovered'!
createPopupOnDemand: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    CreatePopupOnDemand := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20005560; bytecode file offset 0x81844"
!CwMenu class methodsFor: 'recovered'!
new
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super new.
    recoveredValue1 := (recoveredValue0) initialize.
    ^recoveredValue1
! !

"winsys.ic method 0x2000be18; bytecode file offset 0x87fdc"
!CwMenu class methodsFor: 'recovered'!
createPulldownOnDemand
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CreatePulldownOnDemand.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := CreatePulldownOnDemand.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"winsys.ic method 0x2000be38; bytecode file offset 0x87ffc"
!CwMenu class methodsFor: 'recovered'!
createPopupOnDemand
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CreatePopupOnDemand.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := CreatePopupOnDemand.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

