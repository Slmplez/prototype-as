"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x20000aa0; bytecode file offset 0x7cc7c"
!CwProgressBar methodsFor: 'recovered'!
osWidgetClass
    | recoveredValue0 |
    recoveredValue0 := OSProgressBar.
    ^recoveredValue0
! !

"winsys.ic method 0x20001268; bytecode file offset 0x7d460"
!CwProgressBar methodsFor: 'recovered'!
preferredExtent
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSProgressBar.
    recoveredValue1 := (recoveredValue0) hBarExtent.
    ^recoveredValue1
! !

"winsys.ic method 0x20001310; bytecode file offset 0x7d6c0"
!CwProgressBar methodsFor: 'recovered'!
maximum
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := osWidget.
    recoveredValue1 := (recoveredValue0) maximum.
    ^recoveredValue1
! !

"winsys.ic method 0x20001334; bytecode file offset 0x7d6c0"
!CwProgressBar methodsFor: 'recovered'!
value
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := osWidget.
    recoveredValue1 := (recoveredValue0) value.
    ^recoveredValue1
! !

"winsys.ic method 0x20001490; bytecode file offset 0x7d6c0"
!CwProgressBar methodsFor: 'recovered'!
minimum
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := osWidget.
    recoveredValue1 := (recoveredValue0) minimum.
    ^recoveredValue1
! !

"winsys.ic method 0x200106a4; bytecode file offset 0x8c89c"
!CwProgressBar methodsFor: 'recovered'!
minimum: recoveredArg1
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
            xmNminimum := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := cwDeferResourceUpdate.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 'updateProgressBar'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) deferUpdate: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) updateProgressBar.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x2001071c; bytecode file offset 0x8c8f4"
!CwProgressBar methodsFor: 'recovered'!
maximum: recoveredArg1
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
            xmNmaximum := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := cwDeferResourceUpdate.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 'updateProgressBar'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) deferUpdate: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) updateProgressBar.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x20010784; bytecode file offset 0x8c95c"
!CwProgressBar methodsFor: 'recovered'!
value: recoveredArg1
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
            xmNvalue := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := cwDeferResourceUpdate.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 'updateProgressBar'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) deferUpdate: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) updateProgressBar.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x200138f8; bytecode file offset 0x8fac0"
!CwProgressBar methodsFor: 'recovered'!
initializeResources
    super initializeResources.
    xmNvalue := 0.
    xmNminimum := 0.
    xmNmaximum := 100.
    xmNtraversalOn := false.
    ^self
! !

"winsys.ic method 0x2001f328; bytecode file offset 0x9b4fc"
!CwProgressBar methodsFor: 'recovered'!
updateProgressBar
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 |
    recoveredValue0 := xmNmaximum.
    recoveredValue1 := xmNminimum.
    recoveredValue2 := (recoveredValue0) max: (recoveredValue1).
    xmNmaximum := recoveredValue2.
    recoveredValue3 := xmNminimum.
    recoveredValue4 := xmNmaximum.
    recoveredValue5 := (recoveredValue3) min: (recoveredValue4).
    xmNminimum := recoveredValue5.
    recoveredValue6 := xmNvalue.
    recoveredValue7 := xmNminimum.
    recoveredValue8 := (recoveredValue6) max: (recoveredValue7).
    recoveredValue9 := xmNmaximum.
    recoveredValue10 := (recoveredValue8) min: (recoveredValue9).
    xmNvalue := recoveredValue10.
    recoveredValue11 := osWidget.
    recoveredValue12 := recoveredValue11.
    recoveredValue13 := xmNmaximum.
    (recoveredValue12) maximum: (recoveredValue13).
    recoveredValue14 := recoveredValue11.
    recoveredValue15 := xmNminimum.
    (recoveredValue14) minimum: (recoveredValue15).
    recoveredValue16 := xmNvalue.
    (recoveredValue11) value: (recoveredValue16).
    ^self
! !

