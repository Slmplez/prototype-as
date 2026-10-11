"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20119510; bytecode file offset 0xa15e64"
!AbtMiscSmalltalkParser class methodsFor: 'recovered'!
forDecimals
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) conformToSmalltalk.
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) parseSelector: ('getNumber').
    recoveredValue3 := recoveredValue0.
    (recoveredValue3) setCoerceDecimal.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2011952c; bytecode file offset 0xa15e64"
!AbtMiscSmalltalkParser class methodsFor: 'recovered'!
forNumbers
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) conformToSmalltalk.
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) parseSelector: ('getNumber').
    recoveredValue3 := recoveredValue0.
    (recoveredValue3) setCoerceAsis.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20119548; bytecode file offset 0xa15e64"
!AbtMiscSmalltalkParser class methodsFor: 'recovered'!
forFloats
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) conformToSmalltalk.
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) parseSelector: ('getFloat').
    recoveredValue3 := recoveredValue0.
    (recoveredValue3) setCoerceFloat.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20119564; bytecode file offset 0xa15e64"
!AbtMiscSmalltalkParser class methodsFor: 'recovered'!
forFractions
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) conformToSmalltalk.
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) parseSelector: ('getNumber').
    recoveredValue3 := recoveredValue0.
    (recoveredValue3) setCoerceFraction.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20119580; bytecode file offset 0xa15e64"
!AbtMiscSmalltalkParser class methodsFor: 'recovered'!
forTruncatedIntegers
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) conformToSmalltalk.
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) parseSelector: ('getNumber').
    recoveredValue3 := recoveredValue0.
    (recoveredValue3) setCoerceTruncated.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2011959c; bytecode file offset 0xa15e64"
!AbtMiscSmalltalkParser class methodsFor: 'recovered'!
forRoundedIntegers
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) conformToSmalltalk.
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) parseSelector: ('getNumber').
    recoveredValue3 := recoveredValue0.
    (recoveredValue3) setCoerceRounded.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20325208; bytecode file offset 0xc21ad8"
!AbtMiscSmalltalkParser class methodsFor: 'recovered'!
factorForScale: recoveredArg1 radix: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := 10.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := -20.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := 20.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) between: (recoveredStack2) and: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := Interval.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := -20.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := 20.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) from: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) asArray.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := [:block280ec0c4Arg1 | 
    | block280ec0c4Value0 block280ec0c4Value1 |
    block280ec0c4Value0 := block280ec0c4Arg1.
    block280ec0c4Value1 := (10) raisedToInteger: (block280ec0c4Value0).
    block280ec0c4Value1
].
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := 21.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredPC := 58.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) raisedToInteger: (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

