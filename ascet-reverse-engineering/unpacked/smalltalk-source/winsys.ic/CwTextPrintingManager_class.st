"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x200007dc; bytecode file offset 0x7cc7c"
!CwTextPrintingManager class methodsFor: 'recovered'!
defaultMarginLeft
    | recoveredValue0 |
    recoveredValue0 := DefaultMarginLeft.
    ^recoveredValue0
! !

"winsys.ic method 0x200008b4; bytecode file offset 0x7cc7c"
!CwTextPrintingManager class methodsFor: 'recovered'!
defaultMarginRight
    | recoveredValue0 |
    recoveredValue0 := DefaultMarginRight.
    ^recoveredValue0
! !

"winsys.ic method 0x20000a10; bytecode file offset 0x7cc7c"
!CwTextPrintingManager class methodsFor: 'recovered'!
defaultMarginBottom
    | recoveredValue0 |
    recoveredValue0 := DefaultMarginBottom.
    ^recoveredValue0
! !

"winsys.ic method 0x20000a28; bytecode file offset 0x7cc7c"
!CwTextPrintingManager class methodsFor: 'recovered'!
defaultMarginTop
    | recoveredValue0 |
    recoveredValue0 := DefaultMarginTop.
    ^recoveredValue0
! !

"winsys.ic method 0x20001d58; bytecode file offset 0x7e054"
!CwTextPrintingManager class methodsFor: 'recovered'!
defaultMarginTop: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    DefaultMarginTop := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20001d88; bytecode file offset 0x7e054"
!CwTextPrintingManager class methodsFor: 'recovered'!
defaultMarginRight: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    DefaultMarginRight := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20001de8; bytecode file offset 0x7e054"
!CwTextPrintingManager class methodsFor: 'recovered'!
defaultMarginLeft: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    DefaultMarginLeft := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20001e78; bytecode file offset 0x7e054"
!CwTextPrintingManager class methodsFor: 'recovered'!
defaultMarginBottom: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    DefaultMarginBottom := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20005600; bytecode file offset 0x81844"
!CwTextPrintingManager class methodsFor: 'recovered'!
new
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super new.
    recoveredValue1 := (recoveredValue0) initialize.
    ^recoveredValue1
! !

"winsys.ic method 0x2001f2d8; bytecode file offset 0x9b4b0"
!CwTextPrintingManager class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := DefaultMarginTop.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (Fraction) numerator: (5) denominator: (16).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            DefaultMarginTop := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := DefaultMarginBottom.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (Fraction) numerator: (5) denominator: (16).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            DefaultMarginBottom := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := DefaultMarginLeft.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (Fraction) numerator: (1) denominator: (2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            DefaultMarginLeft := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := DefaultMarginRight.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (Fraction) numerator: (1) denominator: (2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            DefaultMarginRight := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

