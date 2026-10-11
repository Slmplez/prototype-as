"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20007c88; bytecode file offset 0x908be4"
!EtasFloatFormatter class methodsFor: 'recovered'!
formatString
    | recoveredValue0 |
    recoveredValue0 := (self) stringRepresentation.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004ea98; bytecode file offset 0x94d048"
!EtasFloatFormatter class methodsFor: 'recovered'!
stringRepresentation
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20059ad0; bytecode file offset 0x9566ac"
!EtasFloatFormatter class methodsFor: 'recovered'!
floatToAscii: recoveredArg1 significantDigits: recoveredArg2
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2005b238; bytecode file offset 0x957afc"
!EtasFloatFormatter class methodsFor: 'recovered'!
evaluateDigits: recoveredArg1 maxDigits: recoveredArg2 postDigits: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := (recoveredValue0) max: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005b3b0; bytecode file offset 0x957cb0"
!EtasFloatFormatter class methodsFor: 'recovered'!
floatToAscii: recoveredArg1 significantDigits: recoveredArg2 on: recoveredArg3 floatSeparator: recoveredArg4
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20101f60; bytecode file offset 0x9fe81c"
!EtasFloatFormatter class methodsFor: 'recovered'!
floatToAscii: recoveredArg1 maxDigits: recoveredArg2 postDigits: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (self) evaluateDigits: (recoveredValue1) maxDigits: (recoveredValue2) postDigits: (recoveredValue3).
    recoveredValue5 := (self) floatToAscii: (recoveredValue0) significantDigits: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x2013298c; bytecode file offset 0xa2f248"
!EtasFloatFormatter class methodsFor: 'recovered'!
handleScaleInfinity: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isInfinite.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 308.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) scale.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201585b8; bytecode file offset 0xa54e74"
!EtasFloatFormatter class methodsFor: 'recovered'!
floatToAscii: recoveredArg1 maxDigits: recoveredArg2 postDigits: recoveredArg3 on: recoveredArg4 floatSeparator: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (self) evaluateDigits: (recoveredValue1) maxDigits: (recoveredValue2) postDigits: (recoveredValue3).
    recoveredValue5 := recoveredArg4.
    recoveredValue6 := recoveredArg5.
    recoveredValue7 := (self) floatToAscii: (recoveredValue0) significantDigits: (recoveredValue4) on: (recoveredValue5) floatSeparator: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x2024af70; bytecode file offset 0xb4783c"
!EtasFloatFormatter class methodsFor: 'recovered'!
handleInfinity: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isInfinite.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := DBF8Item.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) maxRange.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := DBF8Item.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) maxRangeNeg.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) isNaN.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 35].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := #[0 0 0 0 0 0 0 0].
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

