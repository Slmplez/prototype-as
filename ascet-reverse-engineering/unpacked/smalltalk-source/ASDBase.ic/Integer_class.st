"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200151ec; bytecode file offset 0x912098"
!Integer class methodsFor: 'recovered'!
untitledConverterClass
    | recoveredValue0 |
    recoveredValue0 := AbtIntegerConverter.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001cb08; bytecode file offset 0x92209c"
!Integer class methodsFor: 'recovered'!
allInstanceVariableNamesDB
    ^#()
! !

"ASDBase.ic method 0x20054890; bytecode file offset 0x951190"
!Integer class methodsFor: 'recovered'!
optionTruncatedDivision: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    IntegerTruncatedDivision := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20056828; bytecode file offset 0x9531e4"
!Integer class methodsFor: 'recovered'!
printBooleanPhysValue: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) asInteger.
    recoveredValue2 := (recoveredValue1) asString.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200e7ac8; bytecode file offset 0x9e43a4"
!Integer class methodsFor: 'recovered'!
printEnumPhysValue: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ('Cp') == ('BGZ_2499').
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asInteger.
    recoveredValue3 := (recoveredValue2) asString.
    ^recoveredValue3
! !

"ASDBase.ic method 0x2010514c; bytecode file offset 0xa01a28"
!Integer class methodsFor: 'recovered'!
optionTruncatedDivision
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := IntegerTruncatedDivision.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            IntegerTruncatedDivision := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := IntegerTruncatedDivision.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

