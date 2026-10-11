"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2005423c; bytecode file offset 0x951190"
!TobTBPushAndMenuButtonWidget class methodsFor: 'recovered'!
downArrowIcon: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    DownArrowIcon := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2010521c; bytecode file offset 0xa01b38"
!TobTBPushAndMenuButtonWidget class methodsFor: 'recovered'!
downArrowIcon
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := DownArrowIcon.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) initializeDownArrowIcon.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := DownArrowIcon.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20289980; bytecode file offset 0xb8625c"
!TobTBPushAndMenuButtonWidget class methodsFor: 'recovered'!
initializeDownArrowIcon
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredLocal1 := #[254 124 56 16].
    recoveredValue0 := CgIcon.
    recoveredValue1 := CgIndexedPalette.
    recoveredValue2 := Array.
    recoveredValue3 := CgRGBColor.
    recoveredValue4 := (recoveredValue3) black.
    recoveredValue5 := (recoveredValue2) with: (recoveredValue4).
    recoveredValue6 := (recoveredValue1) colors: (recoveredValue5).
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := (recoveredValue0) width: (8) height: (4) depth: (1) palette: (recoveredValue6) shapePad: (1) shapeData: (recoveredValue7) maskPad: (1) maskData: (recoveredValue8).
    recoveredLocal2 := recoveredValue9.
    recoveredValue10 := recoveredLocal2.
    (self) downArrowIcon: (recoveredValue10).
    ^self
! !

