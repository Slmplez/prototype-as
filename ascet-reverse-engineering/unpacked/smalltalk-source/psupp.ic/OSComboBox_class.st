"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20000530; bytecode file offset 0x153f24"
!OSComboBox class methodsFor: 'recovered'!
windowProc
    | recoveredValue0 |
    recoveredValue0 := ComboBoxProc.
    ^recoveredValue0
! !

"psupp.ic method 0x2000065c; bytecode file offset 0x153f24"
!OSComboBox class methodsFor: 'recovered'!
windowClass
    | recoveredValue0 |
    recoveredValue0 := ComboBoxClass.
    ^recoveredValue0
! !

"psupp.ic method 0x20028b60; bytecode file offset 0x17c45c"
!OSComboBox class methodsFor: 'recovered'!
arrowExtent
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := OS.
    recoveredValue1 := SmCxvscroll.
    recoveredValue2 := (recoveredValue0) getSystemMetrics: (recoveredValue1).
    recoveredValue3 := OS.
    recoveredValue4 := SmCyvscroll.
    recoveredValue5 := (recoveredValue3) getSystemMetrics: (recoveredValue4).
    recoveredValue6 := (recoveredValue2) @ (recoveredValue5).
    ^recoveredValue6
! !

"psupp.ic method 0x20028ef0; bytecode file offset 0x17c78c"
!OSComboBox class methodsFor: 'recovered'!
initializeAfterLoad
    CbidList := 1000.
    CbidEdit := 1001.
    ^self
! !

"psupp.ic method 0x2002bebc; bytecode file offset 0x17f7c8"
!OSComboBox class methodsFor: 'recovered'!
background
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Is95Shell.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := OS.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := ColorWindow.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) getSysColor: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := super background.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"psupp.ic method 0x2002fc90; bytecode file offset 0x1835a0"
!OSComboBox class methodsFor: 'recovered'!
initializeWindowProc
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := HInstanceNull.
    recoveredValue1 := ('COMBOBOX') asPSZ.
    recoveredValue2 := recoveredValue1.
    ComboBoxClass := recoveredValue2.
    recoveredValue3 := OSWndclass.
    recoveredValue4 := (recoveredValue3) new.
    recoveredValue5 := recoveredValue4.
    recoveredLocal1 := recoveredValue5.
    (recoveredValue0) getClassInfo: (recoveredValue1) lpwc: (recoveredValue4).
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (recoveredValue6) lpfnWndProc.
    ComboBoxProc := recoveredValue7.
    ^self
! !

