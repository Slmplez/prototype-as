"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"lib.ic method 0x200027dc; bytecode file offset 0x3e814"
!EmConfigurationMapLineupEntry class methodsFor: 'recovered'!
defaultLength
    ^4
! !

"lib.ic method 0x200034f0; bytecode file offset 0x3f528"
!EmConfigurationMapLineupEntry class methodsFor: 'recovered'!
forExpression: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) forExpression: (recoveredValue0) requiredMaps: (#()).
    ^recoveredValue1
! !

"lib.ic method 0x2000c53c; bytecode file offset 0x48578"
!EmConfigurationMapLineupEntry class methodsFor: 'recovered'!
forExpression: recoveredArg1 requiredMaps: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) spaceFor: (recoveredValue0).
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (self) spaceFor: (recoveredValue2).
    recoveredValue4 := (recoveredValue1) + (recoveredValue3).
    recoveredValue5 := (self) new: (recoveredValue4).
    recoveredValue6 := recoveredValue5.
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := recoveredValue5.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := (recoveredValue8) allocatedLength.
    (recoveredValue7) usedLength: (recoveredValue9).
    recoveredValue10 := recoveredValue5.
    recoveredValue11 := recoveredArg1.
    (recoveredValue10) expression: (recoveredValue11).
    recoveredValue12 := recoveredValue5.
    recoveredValue13 := recoveredArg2.
    (recoveredValue12) initializeRequiredMapsSize: (recoveredValue13).
    recoveredValue14 := recoveredValue5.
    recoveredValue15 := recoveredArg2.
    (recoveredValue14) requiredMaps: (recoveredValue15).
    ^recoveredValue5
! !

"lib.ic method 0x2001e84c; bytecode file offset 0x5a8a8"
!EmConfigurationMapLineupEntry class methodsFor: 'recovered'!
spaceFor: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'PR'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := '1FX81O0'.
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isString.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) containsByteCharacters.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredPC := 52.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1) stopIfNotWordString: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) byteSize.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := 4.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := 65535.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 69].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := MxEMc122.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack1) fatalError: (recoveredStack2).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredPC := 108.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := [:recoveredBlock80Arg1 | 
    | recoveredBlock80Value0 recoveredBlock80Value1 recoveredBlock80Value2 recoveredBlock80Value3 recoveredBlock80Value4 recoveredBlock80Value5 recoveredBlock80Value6 recoveredBlock80Value7 recoveredBlock80Value8 |
    recoveredBlock80Value0 := recoveredLocal1.
    recoveredBlock80Value1 := recoveredBlock80Arg1.
    recoveredBlock80Value2 := (recoveredBlock80Value1) key.
    recoveredBlock80Value3 := (self) spaceFor: (recoveredBlock80Value2).
    recoveredBlock80Value4 := (recoveredBlock80Value0) + (recoveredBlock80Value3).
    recoveredBlock80Value5 := EmTimeStamp.
    recoveredBlock80Value6 := (recoveredBlock80Value5) fixedLength.
    recoveredBlock80Value7 := (recoveredBlock80Value4) + (recoveredBlock80Value6).
    recoveredBlock80Value8 := recoveredBlock80Value7.
    recoveredLocal1 := recoveredBlock80Value8.
    recoveredBlock80Value7
].
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

