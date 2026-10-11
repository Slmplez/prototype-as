"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"extwid.ic method 0x20002ee4; bytecode file offset 0x53da8"
!EwContainerListNode methodsFor: 'recovered'!
isInUse
    | recoveredValue0 |
    recoveredValue0 := isInUse.
    ^recoveredValue0
! !

"extwid.ic method 0x20005ac8; bytecode file offset 0x56894"
!EwContainerListNode methodsFor: 'recovered'!
drawInUseUsing: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) isSelected.
    (self) drawInUseUsing: (recoveredValue0) selected: (recoveredValue1).
    ^self
! !

"extwid.ic method 0x20006ab0; bytecode file offset 0x578dc"
!EwContainerListNode methodsFor: 'recovered'!
isInUse: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    isInUse := recoveredValue0.
    ^self
! !

"extwid.ic method 0x2000b6e4; bytecode file offset 0x5c4b8"
!EwContainerListNode methodsFor: 'recovered'!
drawInUseUsing: recoveredArg1 selected: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) widget.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) pixelSelectionForeground.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) setForeground: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) drawInUse.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"extwid.ic method 0x20014898; bytecode file offset 0x65684"
!EwContainerListNode methodsFor: 'recovered'!
drawSelectedUsing: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) widget.
    recoveredValue2 := (recoveredValue1) pixelSelectionBackground.
    (recoveredValue0) setForeground: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) drawable.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) gc.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue7) x.
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := (recoveredValue9) y.
    recoveredValue11 := recoveredArg1.
    recoveredValue12 := (recoveredValue11) width.
    recoveredValue13 := recoveredArg1.
    recoveredValue14 := (recoveredValue13) height.
    (recoveredValue4) fillRectangle: (recoveredValue6) x: (recoveredValue8) y: (recoveredValue10) width: (recoveredValue12) height: (recoveredValue14).
    ^self
! !

