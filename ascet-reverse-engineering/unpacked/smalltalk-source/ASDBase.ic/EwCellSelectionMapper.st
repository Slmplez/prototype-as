"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20208b80; bytecode file offset 0xb05440"
!EwCellSelectionMapper methodsFor: 'recovered'!
extendSelectionFrom: recoveredArg1 to: recoveredArg2 commit: recoveredArg3 beginEdit: recoveredArg4
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) widget.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) createRectFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := recoveredArg4.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) extendSelectionEventWithin: (recoveredStack1) commit: (recoveredStack2) beginEdit: (recoveredStack3).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202344a4; bytecode file offset 0xb30d74"
!EwCellSelectionMapper methodsFor: 'recovered'!
createRectFrom: recoveredArg1 to: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 |
    recoveredValue0 := Rectangle.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) x.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue3) x.
    recoveredValue5 := (recoveredValue2) min: (recoveredValue4).
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) y.
    recoveredValue8 := recoveredArg2.
    recoveredValue9 := (recoveredValue8) y.
    recoveredValue10 := (recoveredValue7) min: (recoveredValue9).
    recoveredValue11 := (recoveredValue5) @ (recoveredValue10).
    recoveredValue12 := recoveredArg1.
    recoveredValue13 := (recoveredValue12) x.
    recoveredValue14 := recoveredArg2.
    recoveredValue15 := (recoveredValue14) x.
    recoveredValue16 := (recoveredValue13) max: (recoveredValue15).
    recoveredValue17 := recoveredArg1.
    recoveredValue18 := (recoveredValue17) y.
    recoveredValue19 := recoveredArg2.
    recoveredValue20 := (recoveredValue19) y.
    recoveredValue21 := (recoveredValue18) max: (recoveredValue20).
    recoveredValue22 := (recoveredValue16) @ (recoveredValue21).
    recoveredValue23 := (recoveredValue0) origin: (recoveredValue11) corner: (recoveredValue22).
    ^recoveredValue23
! !

