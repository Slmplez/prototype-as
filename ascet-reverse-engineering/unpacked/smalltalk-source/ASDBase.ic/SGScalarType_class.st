"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20152d84; bytecode file offset 0xa4f660"
!SGScalarType class methodsFor: 'recovered'!
stringPoolGet: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Pool.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := StringPool.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            Pool := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := Pool.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) get: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202d7294; bytecode file offset 0xbd3b74"
!SGScalarType class methodsFor: 'recovered'!
possibleTypes
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := SGReal.
    recoveredValue4 := (recoveredValue3) createDefault.
    (recoveredValue2) add: (recoveredValue4).
    recoveredValue5 := recoveredValue1.
    recoveredValue6 := SGSignedInteger.
    recoveredValue7 := (recoveredValue6) createDefault.
    (recoveredValue5) add: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := SGUnsignedInteger.
    recoveredValue10 := (recoveredValue9) createDefault.
    (recoveredValue8) add: (recoveredValue10).
    recoveredValue11 := recoveredValue1.
    recoveredValue12 := SGLimitedInteger.
    recoveredValue13 := (recoveredValue12) createDefault.
    (recoveredValue11) add: (recoveredValue13).
    recoveredValue14 := recoveredValue1.
    recoveredValue15 := SGWrapAroundInteger.
    recoveredValue16 := (recoveredValue15) createDefault.
    (recoveredValue14) add: (recoveredValue16).
    recoveredValue17 := recoveredValue1.
    recoveredValue18 := SGBoolean.
    recoveredValue19 := (recoveredValue18) createDefault.
    (recoveredValue17) add: (recoveredValue19).
    recoveredValue20 := recoveredValue1.
    recoveredValue21 := SGEnumeration.
    recoveredValue22 := (recoveredValue21) createDefault.
    (recoveredValue20) add: (recoveredValue22).
    ^recoveredValue1
! !

