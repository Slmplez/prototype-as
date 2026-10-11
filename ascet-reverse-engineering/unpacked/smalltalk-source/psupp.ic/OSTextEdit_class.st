"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20000100; bytecode file offset 0x153a14"
!OSTextEdit class methodsFor: 'recovered'!
releaseWindowProc
    ^self
! !

"psupp.ic method 0x20000488; bytecode file offset 0x153f24"
!OSTextEdit class methodsFor: 'recovered'!
lineDelimiter
    | recoveredValue0 |
    recoveredValue0 := Delimiter.
    ^recoveredValue0
! !

"psupp.ic method 0x2000059c; bytecode file offset 0x153f24"
!OSTextEdit class methodsFor: 'recovered'!
windowClass
    | recoveredValue0 |
    recoveredValue0 := TextEditClass.
    ^recoveredValue0
! !

"psupp.ic method 0x2000068c; bytecode file offset 0x153f24"
!OSTextEdit class methodsFor: 'recovered'!
windowProc
    | recoveredValue0 |
    recoveredValue0 := TextEditProc.
    ^recoveredValue0
! !

"psupp.ic method 0x2000a4ac; bytecode file offset 0x15e0d8"
!OSTextEdit class methodsFor: 'recovered'!
withDelimiter: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSWidget.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) withCrLf: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x200250fc; bytecode file offset 0x1789a4"
!OSTextEdit class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := String.
    recoveredValue1 := Cr.
    recoveredValue2 := Lf.
    recoveredValue3 := (recoveredValue0) with: (recoveredValue1) with: (recoveredValue2).
    Delimiter := recoveredValue3.
    ^self
! !

"psupp.ic method 0x2002befc; bytecode file offset 0x17f7c8"
!OSTextEdit class methodsFor: 'recovered'!
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

"psupp.ic method 0x20036700; bytecode file offset 0x189fc8"
!OSTextEdit class methodsFor: 'recovered'!
initializeWindowProc
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := IsWin95.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 32767.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            MaxLength := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := 2147483647.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            MaxLength := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := HInstanceNull.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := 'EDIT'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) asPSZ.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            TextEditClass := recoveredStack3.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := OSWndclass.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := (recoveredStack3) new.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal3 := recoveredStack4.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) getClassInfo: (recoveredStack2) lpwc: (recoveredStack3).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) lpfnWndProc.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            TextEditProc := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

