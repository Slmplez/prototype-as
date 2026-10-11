"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200004d0; bytecode file offset 0x153f24"
!OSTreeView class methodsFor: 'recovered'!
windowClass
    | recoveredValue0 |
    recoveredValue0 := TreeViewClass.
    ^recoveredValue0
! !

"psupp.ic method 0x20000614; bytecode file offset 0x153f24"
!OSTreeView class methodsFor: 'recovered'!
windowProc
    | recoveredValue0 |
    recoveredValue0 := TreeViewProc.
    ^recoveredValue0
! !

"psupp.ic method 0x2002f3c4; bytecode file offset 0x182d18"
!OSTreeView class methodsFor: 'recovered'!
initializeWindowProc
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := HInstanceNull.
    recoveredValue1 := WcTreeview.
    recoveredValue2 := recoveredValue1.
    TreeViewClass := recoveredValue2.
    recoveredValue3 := OSWndclass.
    recoveredValue4 := (recoveredValue3) new.
    recoveredValue5 := recoveredValue4.
    recoveredLocal1 := recoveredValue5.
    (recoveredValue0) getClassInfo: (recoveredValue1) lpwc: (recoveredValue4).
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (recoveredValue6) lpfnWndProc.
    TreeViewProc := recoveredValue7.
    ^self
! !

"psupp.ic method 0x2003074c; bytecode file offset 0x184000"
!OSTreeView class methodsFor: 'recovered'!
background
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'PR'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := '1E5XRRH'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := Is95Shell.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := OS.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := ColorWindow.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) getSysColor: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := super background.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

