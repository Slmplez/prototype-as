"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000f5ec; bytecode file offset 0x90bef8"
!ASAP2BytesEtk methodsFor: 'recovered'!
addressFrom: recoveredArg1 base: recoveredArg2
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20023ce4; bytecode file offset 0x92209c"
!ASAP2BytesEtk methodsFor: 'recovered'!
name
    ^'ETK'
! !

"ASDBase.ic method 0x2017202c; bytecode file offset 0xa6e910"
!ASAP2BytesEtk methodsFor: 'recovered'!
addressFromIfData
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) kpBlob.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) dpBlob.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) subStrings.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) firstOrNil.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) asIntegerFromHex.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) kpBlob.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) subStrings.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) firstOrNil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) asIntegerFromHex.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202eae7c; bytecode file offset 0xbe7748"
!ASAP2BytesEtk methodsFor: 'recovered'!
isEXRAMRange
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) kpBlob.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) subStrings.
    recoveredBlock5Value2 := [:recoveredBlock5Block16Arg1 | 
    | recoveredBlock5Block16Stack0 recoveredBlock5Block16Stack1 recoveredBlock5Block16Stack2 recoveredBlock5Block16Stack3 recoveredBlock5Block16Stack4 recoveredBlock5Block16PC recoveredBlock5Block16Step recoveredBlock5Block16Done recoveredBlock5Block16Result |
    recoveredBlock5Block16Stack0 := self.
    recoveredBlock5Block16PC := 22.
    recoveredBlock5Block16Done := false.
    [recoveredBlock5Block16Done not] whileTrue: [
        recoveredBlock5Block16Step := recoveredBlock5Block16PC.
        recoveredBlock5Block16Step = 22 ifTrue: [
            recoveredBlock5Block16Stack1 := recoveredBlock5Block16Arg1.
            recoveredBlock5Block16PC := 23.
        ].
        recoveredBlock5Block16Step = 23 ifTrue: [
            recoveredBlock5Block16Stack2 := 'EXTERN'.
            recoveredBlock5Block16PC := 25.
        ].
        recoveredBlock5Block16Step = 25 ifTrue: [
            recoveredBlock5Block16Stack1 := (recoveredBlock5Block16Stack1) = (recoveredBlock5Block16Stack2).
            recoveredBlock5Block16PC := 26.
        ].
        recoveredBlock5Block16Step = 26 ifTrue: [
            (recoveredBlock5Block16Stack1) ifTrue: [recoveredBlock5Block16PC := 30] ifFalse: [recoveredBlock5Block16PC := 32].
        ].
        recoveredBlock5Block16Step = 30 ifTrue: [
            recoveredBlock5Block16Stack1 := true.
            recoveredBlock5Block16PC := 31.
        ].
        recoveredBlock5Block16Step = 31 ifTrue: [
            ^recoveredBlock5Block16Stack1
        ].
        recoveredBlock5Block16Step = 32 ifTrue: [
            recoveredBlock5Block16Stack1 := nil.
            recoveredBlock5Block16PC := 33.
        ].
        recoveredBlock5Block16Step = 33 ifTrue: [
            recoveredBlock5Block16Stack2 := recoveredBlock5Block16Arg1.
            recoveredBlock5Block16PC := 34.
        ].
        recoveredBlock5Block16Step = 34 ifTrue: [
            recoveredBlock5Block16Stack3 := '1'.
            recoveredBlock5Block16PC := 36.
        ].
        recoveredBlock5Block16Step = 36 ifTrue: [
            recoveredBlock5Block16Stack2 := (recoveredBlock5Block16Stack2) = (recoveredBlock5Block16Stack3).
            recoveredBlock5Block16PC := 37.
        ].
        recoveredBlock5Block16Step = 37 ifTrue: [
            (recoveredBlock5Block16Stack2) ifTrue: [recoveredBlock5Block16PC := 40] ifFalse: [recoveredBlock5Block16PC := 43].
        ].
        recoveredBlock5Block16Step = 40 ifTrue: [
            recoveredBlock5Block16PC := 41.
        ].
        recoveredBlock5Block16Step = 41 ifTrue: [
            recoveredBlock5Block16Stack1 := true.
            recoveredBlock5Block16PC := 42.
        ].
        recoveredBlock5Block16Step = 42 ifTrue: [
            ^recoveredBlock5Block16Stack1
        ].
        recoveredBlock5Block16Step = 43 ifTrue: [
            recoveredBlock5Block16Result := recoveredBlock5Block16Stack1.
            recoveredBlock5Block16Done := true.
        ].
    ].
    recoveredBlock5Block16Result
].
    (recoveredBlock5Value1) at: (2) ifPresent: (recoveredBlock5Value2).
    ^false
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^nil
! !

