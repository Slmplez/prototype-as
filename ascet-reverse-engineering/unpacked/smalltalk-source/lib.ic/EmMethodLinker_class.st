"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"lib.ic method 0x2000338c; bytecode file offset 0x3f3cc"
!EmMethodLinker class methodsFor: 'recovered'!
literalTypeFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := LiteralMap.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) class.
    recoveredValue3 := (recoveredValue0) indexOf: (recoveredValue2).
    ^recoveredValue3
! !

"lib.ic method 0x2000d0f4; bytecode file offset 0x4912c"
!EmMethodLinker class methodsFor: 'recovered'!
addToLiteralMap: recoveredArg1 class: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := LiteralMap.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 27] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := 'Duplicate Literal Types...'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) error: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := LiteralMap.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20021b50; bytecode file offset 0x5dbc0"
!EmMethodLinker class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (18).
    recoveredValue2 := recoveredValue1.
    LiteralMap := recoveredValue2.
    recoveredValue3 := recoveredValue1.
    recoveredValue4 := SmallInteger.
    (recoveredValue3) at: (1) put: (recoveredValue4).
    recoveredValue5 := recoveredValue1.
    recoveredValue6 := LargeInteger.
    (recoveredValue5) at: (2) put: (recoveredValue6).
    recoveredValue7 := recoveredValue1.
    recoveredValue8 := Float.
    (recoveredValue7) at: (3) put: (recoveredValue8).
    recoveredValue9 := recoveredValue1.
    recoveredValue10 := Fraction.
    (recoveredValue9) at: (4) put: (recoveredValue10).
    recoveredValue11 := recoveredValue1.
    recoveredValue12 := Character.
    (recoveredValue11) at: (5) put: (recoveredValue12).
    recoveredValue13 := recoveredValue1.
    recoveredValue14 := Array.
    (recoveredValue13) at: (6) put: (recoveredValue14).
    recoveredValue15 := recoveredValue1.
    recoveredValue16 := ByteArray.
    (recoveredValue15) at: (7) put: (recoveredValue16).
    recoveredValue17 := recoveredValue1.
    recoveredValue18 := String.
    (recoveredValue17) at: (8) put: (recoveredValue18).
    recoveredValue19 := recoveredValue1.
    recoveredValue20 := Symbol.
    (recoveredValue19) at: (9) put: (recoveredValue20).
    recoveredValue21 := recoveredValue1.
    recoveredValue22 := False.
    (recoveredValue21) at: (10) put: (recoveredValue22).
    recoveredValue23 := recoveredValue1.
    recoveredValue24 := True.
    (recoveredValue23) at: (11) put: (recoveredValue24).
    recoveredValue25 := recoveredValue1.
    recoveredValue26 := UndefinedObject.
    (recoveredValue25) at: (12) put: (recoveredValue26).
    recoveredValue27 := recoveredValue1.
    recoveredValue28 := PlatformFunction.
    (recoveredValue27) at: (13) put: (recoveredValue28).
    recoveredValue29 := recoveredValue1.
    recoveredValue30 := EsEmptyBlock.
    (recoveredValue29) at: (14) put: (recoveredValue30).
    recoveredValue31 := recoveredValue1.
    recoveredValue32 := DBString.
    (recoveredValue31) at: (15) put: (recoveredValue32).
    recoveredValue33 := recoveredValue1.
    (recoveredValue33) at: (16) put: (nil).
    recoveredValue34 := recoveredValue1.
    recoveredValue35 := BlockContextTemplate.
    (recoveredValue34) at: (17) put: (recoveredValue35).
    recoveredValue36 := EsAtom.
    (recoveredValue1) at: (18) put: (recoveredValue36).
    ^self
! !

