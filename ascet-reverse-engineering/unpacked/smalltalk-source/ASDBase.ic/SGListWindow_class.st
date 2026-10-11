"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2018d3e8; bytecode file offset 0xa89ca8"
!SGListWindow class methodsFor: 'recovered'!
closeCurrentWindow
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CurrentWindow.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := CurrentWindow.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDestroyed.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := CurrentWindow.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) close.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            CurrentWindow := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20197da0; bytecode file offset 0xa9466c"
!SGListWindow class methodsFor: 'recovered'!
createForOwner: recoveredArg1 title: recoveredArg2 items: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    (self) closeCurrentWindow.
    recoveredValue0 := (self) create.
    recoveredValue1 := recoveredValue0.
    CurrentWindow := recoveredValue1.
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := recoveredArg2.
    (recoveredValue2) title: (recoveredValue3).
    recoveredValue4 := recoveredValue0.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) owner: (recoveredValue5).
    recoveredValue6 := recoveredValue0.
    recoveredValue7 := recoveredArg3.
    (recoveredValue6) items: (recoveredValue7).
    ^recoveredValue0
! !

