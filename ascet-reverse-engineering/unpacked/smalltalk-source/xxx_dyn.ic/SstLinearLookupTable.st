"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x200038fc; bytecode file offset 0x649e8"
!SstLinearLookupTable methodsFor: 'recovered'!
size
    | recoveredValue0 |
    recoveredValue0 := elementCount.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20003938; bytecode file offset 0x64bac"
!SstLinearLookupTable methodsFor: 'recovered'!
keysAndValues
    | recoveredValue0 |
    recoveredValue0 := keysAndValues.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20004798; bytecode file offset 0x6592c"
!SstLinearLookupTable methodsFor: 'recovered'!
sstIsImmutable
    ^true
! !

"xxx_dyn.ic method 0x2000c278; bytecode file offset 0x6d344"
!SstLinearLookupTable methodsFor: 'recovered'!
initialize: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    elementCount := 0.
    recoveredValue0 := Array.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) * (2).
    recoveredValue3 := (recoveredValue0) new: (recoveredValue2).
    keysAndValues := recoveredValue3.
    ^self
! !

"xxx_dyn.ic method 0x20014d74; bytecode file offset 0x75e44"
!SstLinearLookupTable methodsFor: 'recovered'!
keysDo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := elementCount.
    recoveredValue1 := (recoveredValue0) * (2).
    recoveredValue2 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 recoveredBlock13Value3 recoveredBlock13Value4 |
    recoveredBlock13Value0 := recoveredArg1.
    recoveredBlock13Value1 := keysAndValues.
    recoveredBlock13Value2 := recoveredBlock13Arg1.
    recoveredBlock13Value3 := (recoveredBlock13Value1) at: (recoveredBlock13Value2).
    recoveredBlock13Value4 := (recoveredBlock13Value0) value: (recoveredBlock13Value3).
    recoveredBlock13Value4
].
    (1) to: (recoveredValue1) by: (2) do: (recoveredValue2).
    ^self
! !

"xxx_dyn.ic method 0x20014dac; bytecode file offset 0x75e7c"
!SstLinearLookupTable methodsFor: 'recovered'!
do: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := elementCount.
    recoveredValue1 := (recoveredValue0) * (2).
    recoveredValue2 := (recoveredValue1) + (1).
    recoveredValue3 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 recoveredBlock14Value3 recoveredBlock14Value4 |
    recoveredBlock14Value0 := recoveredArg1.
    recoveredBlock14Value1 := keysAndValues.
    recoveredBlock14Value2 := recoveredBlock14Arg1.
    recoveredBlock14Value3 := (recoveredBlock14Value1) at: (recoveredBlock14Value2).
    recoveredBlock14Value4 := (recoveredBlock14Value0) value: (recoveredBlock14Value3).
    recoveredBlock14Value4
].
    (2) to: (recoveredValue2) by: (2) do: (recoveredValue3).
    ^self
! !

"xxx_dyn.ic method 0x2001b34c; bytecode file offset 0x7c41c"
!SstLinearLookupTable methodsFor: 'recovered'!
at: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := elementCount.
    recoveredValue1 := (recoveredValue0) * (2).
    recoveredValue2 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Stack0 recoveredBlock13Stack1 recoveredBlock13Stack2 recoveredBlock13Stack3 recoveredBlock13Stack4 recoveredBlock13PC recoveredBlock13Step recoveredBlock13Done recoveredBlock13Result |
    recoveredBlock13Stack0 := self.
    recoveredBlock13PC := 20.
    recoveredBlock13Done := false.
    [recoveredBlock13Done not] whileTrue: [
        recoveredBlock13Step := recoveredBlock13PC.
        recoveredBlock13Step = 20 ifTrue: [
            recoveredBlock13Stack1 := nil.
            recoveredBlock13PC := 21.
        ].
        recoveredBlock13Step = 21 ifTrue: [
            recoveredBlock13Stack2 := keysAndValues.
            recoveredBlock13PC := 23.
        ].
        recoveredBlock13Step = 23 ifTrue: [
            recoveredBlock13Stack3 := recoveredBlock13Arg1.
            recoveredBlock13PC := 24.
        ].
        recoveredBlock13Step = 24 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) at: (recoveredBlock13Stack3).
            recoveredBlock13PC := 25.
        ].
        recoveredBlock13Step = 25 ifTrue: [
            recoveredBlock13Stack3 := recoveredArg1.
            recoveredBlock13PC := 28.
        ].
        recoveredBlock13Step = 28 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) = (recoveredBlock13Stack3).
            recoveredBlock13PC := 29.
        ].
        recoveredBlock13Step = 29 ifTrue: [
            (recoveredBlock13Stack2) ifTrue: [recoveredBlock13PC := 32] ifFalse: [recoveredBlock13PC := 39].
        ].
        recoveredBlock13Step = 32 ifTrue: [
            recoveredBlock13PC := 33.
        ].
        recoveredBlock13Step = 33 ifTrue: [
            recoveredBlock13Stack1 := keysAndValues.
            recoveredBlock13PC := 35.
        ].
        recoveredBlock13Step = 35 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 36.
        ].
        recoveredBlock13Step = 36 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) + (1).
            recoveredBlock13PC := 37.
        ].
        recoveredBlock13Step = 37 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) at: (recoveredBlock13Stack2).
            recoveredBlock13PC := 38.
        ].
        recoveredBlock13Step = 38 ifTrue: [
            ^recoveredBlock13Stack1
        ].
        recoveredBlock13Step = 39 ifTrue: [
            recoveredBlock13Result := recoveredBlock13Stack1.
            recoveredBlock13Done := true.
        ].
    ].
    recoveredBlock13Result
].
    (1) to: (recoveredValue1) by: (2) do: (recoveredValue2).
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue3) value.
    ^recoveredValue4
! !

"xxx_dyn.ic method 0x20025b90; bytecode file offset 0x86c6c"
!SstLinearLookupTable methodsFor: 'recovered'!
removeKey: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := elementCount.
    recoveredValue1 := (recoveredValue0) * (2).
    recoveredValue2 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Stack0 recoveredBlock13Stack1 recoveredBlock13Stack2 recoveredBlock13Stack3 recoveredBlock13Stack4 recoveredBlock13Stack5 recoveredBlock13Stack6 recoveredBlock13Stack7 recoveredBlock13PC recoveredBlock13Step recoveredBlock13Done recoveredBlock13Result |
    recoveredBlock13Stack0 := self.
    recoveredBlock13PC := 20.
    recoveredBlock13Done := false.
    [recoveredBlock13Done not] whileTrue: [
        recoveredBlock13Step := recoveredBlock13PC.
        recoveredBlock13Step = 20 ifTrue: [
            recoveredBlock13Stack1 := nil.
            recoveredBlock13PC := 21.
        ].
        recoveredBlock13Step = 21 ifTrue: [
            recoveredBlock13Stack2 := keysAndValues.
            recoveredBlock13PC := 23.
        ].
        recoveredBlock13Step = 23 ifTrue: [
            recoveredBlock13Stack3 := recoveredBlock13Arg1.
            recoveredBlock13PC := 24.
        ].
        recoveredBlock13Step = 24 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) at: (recoveredBlock13Stack3).
            recoveredBlock13PC := 25.
        ].
        recoveredBlock13Step = 25 ifTrue: [
            recoveredBlock13Stack3 := recoveredArg1.
            recoveredBlock13PC := 28.
        ].
        recoveredBlock13Step = 28 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) = (recoveredBlock13Stack3).
            recoveredBlock13PC := 29.
        ].
        recoveredBlock13Step = 29 ifTrue: [
            (recoveredBlock13Stack2) ifTrue: [recoveredBlock13PC := 32] ifFalse: [recoveredBlock13PC := 83].
        ].
        recoveredBlock13Step = 32 ifTrue: [
            recoveredBlock13PC := 33.
        ].
        recoveredBlock13Step = 33 ifTrue: [
            recoveredBlock13Stack1 := keysAndValues.
            recoveredBlock13PC := 35.
        ].
        recoveredBlock13Step = 35 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 36.
        ].
        recoveredBlock13Step = 36 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) + (1).
            recoveredBlock13PC := 37.
        ].
        recoveredBlock13Step = 37 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) at: (recoveredBlock13Stack2).
            recoveredBlock13PC := 38.
        ].
        recoveredBlock13Step = 38 ifTrue: [
            recoveredLocal1 := recoveredBlock13Stack1.
            recoveredBlock13PC := 41.
        ].
        recoveredBlock13Step = 41 ifTrue: [
            recoveredBlock13Stack1 := keysAndValues.
            recoveredBlock13PC := 43.
        ].
        recoveredBlock13Step = 43 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 44.
        ].
        recoveredBlock13Step = 44 ifTrue: [
            recoveredBlock13Stack3 := keysAndValues.
            recoveredBlock13PC := 46.
        ].
        recoveredBlock13Step = 46 ifTrue: [
            recoveredBlock13Stack3 := (recoveredBlock13Stack3) size.
            recoveredBlock13PC := 47.
        ].
        recoveredBlock13Step = 47 ifTrue: [
            recoveredBlock13Stack3 := (recoveredBlock13Stack3) + (-2).
            recoveredBlock13PC := 48.
        ].
        recoveredBlock13Step = 48 ifTrue: [
            recoveredBlock13Stack4 := keysAndValues.
            recoveredBlock13PC := 50.
        ].
        recoveredBlock13Step = 50 ifTrue: [
            recoveredBlock13Stack5 := recoveredBlock13Arg1.
            recoveredBlock13PC := 51.
        ].
        recoveredBlock13Step = 51 ifTrue: [
            recoveredBlock13Stack6 := 2.
            recoveredBlock13PC := 53.
        ].
        recoveredBlock13Step = 53 ifTrue: [
            recoveredBlock13Stack5 := (recoveredBlock13Stack5) + (recoveredBlock13Stack6).
            recoveredBlock13PC := 54.
        ].
        recoveredBlock13Step = 54 ifTrue: [
            (recoveredBlock13Stack1) replaceFrom: (recoveredBlock13Stack2) to: (recoveredBlock13Stack3) with: (recoveredBlock13Stack4) startingAt: (recoveredBlock13Stack5).
            recoveredBlock13PC := 57.
        ].
        recoveredBlock13Step = 57 ifTrue: [
            recoveredBlock13Stack1 := keysAndValues.
            recoveredBlock13PC := 59.
        ].
        recoveredBlock13Step = 59 ifTrue: [
            recoveredBlock13Stack2 := keysAndValues.
            recoveredBlock13PC := 61.
        ].
        recoveredBlock13Step = 61 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) size.
            recoveredBlock13PC := 62.
        ].
        recoveredBlock13Step = 62 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) + (-1).
            recoveredBlock13PC := 63.
        ].
        recoveredBlock13Step = 63 ifTrue: [
            recoveredBlock13Stack3 := nil.
            recoveredBlock13PC := 64.
        ].
        recoveredBlock13Step = 64 ifTrue: [
            (recoveredBlock13Stack1) at: (recoveredBlock13Stack2) put: (recoveredBlock13Stack3).
            recoveredBlock13PC := 66.
        ].
        recoveredBlock13Step = 66 ifTrue: [
            recoveredBlock13Stack1 := keysAndValues.
            recoveredBlock13PC := 68.
        ].
        recoveredBlock13Step = 68 ifTrue: [
            recoveredBlock13Stack2 := keysAndValues.
            recoveredBlock13PC := 70.
        ].
        recoveredBlock13Step = 70 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) size.
            recoveredBlock13PC := 71.
        ].
        recoveredBlock13Step = 71 ifTrue: [
            recoveredBlock13Stack3 := nil.
            recoveredBlock13PC := 72.
        ].
        recoveredBlock13Step = 72 ifTrue: [
            (recoveredBlock13Stack1) at: (recoveredBlock13Stack2) put: (recoveredBlock13Stack3).
            recoveredBlock13PC := 74.
        ].
        recoveredBlock13Step = 74 ifTrue: [
            recoveredBlock13Stack1 := elementCount.
            recoveredBlock13PC := 76.
        ].
        recoveredBlock13Step = 76 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) + (-1).
            recoveredBlock13PC := 77.
        ].
        recoveredBlock13Step = 77 ifTrue: [
            elementCount := recoveredBlock13Stack1.
            recoveredBlock13PC := 79.
        ].
        recoveredBlock13Step = 79 ifTrue: [
            recoveredBlock13Stack1 := recoveredLocal1.
            recoveredBlock13PC := 82.
        ].
        recoveredBlock13Step = 82 ifTrue: [
            ^recoveredBlock13Stack1
        ].
        recoveredBlock13Step = 83 ifTrue: [
            recoveredBlock13Result := recoveredBlock13Stack1.
            recoveredBlock13Done := true.
        ].
    ].
    recoveredBlock13Result
].
    (1) to: (recoveredValue1) by: (2) do: (recoveredValue2).
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue3) value.
    ^recoveredValue4
! !

"xxx_dyn.ic method 0x200267fc; bytecode file offset 0x878d4"
!SstLinearLookupTable methodsFor: 'recovered'!
at: recoveredArg1 put: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := elementCount.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack4 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Stack0 recoveredBlock13Stack1 recoveredBlock13Stack2 recoveredBlock13Stack3 recoveredBlock13Stack4 recoveredBlock13PC recoveredBlock13Step recoveredBlock13Done recoveredBlock13Result |
    recoveredBlock13Stack0 := self.
    recoveredBlock13PC := 20.
    recoveredBlock13Done := false.
    [recoveredBlock13Done not] whileTrue: [
        recoveredBlock13Step := recoveredBlock13PC.
        recoveredBlock13Step = 20 ifTrue: [
            recoveredBlock13Stack1 := nil.
            recoveredBlock13PC := 21.
        ].
        recoveredBlock13Step = 21 ifTrue: [
            recoveredBlock13Stack2 := keysAndValues.
            recoveredBlock13PC := 23.
        ].
        recoveredBlock13Step = 23 ifTrue: [
            recoveredBlock13Stack3 := recoveredBlock13Arg1.
            recoveredBlock13PC := 24.
        ].
        recoveredBlock13Step = 24 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) at: (recoveredBlock13Stack3).
            recoveredBlock13PC := 25.
        ].
        recoveredBlock13Step = 25 ifTrue: [
            recoveredBlock13Stack3 := recoveredArg1.
            recoveredBlock13PC := 28.
        ].
        recoveredBlock13Step = 28 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) = (recoveredBlock13Stack3).
            recoveredBlock13PC := 29.
        ].
        recoveredBlock13Step = 29 ifTrue: [
            (recoveredBlock13Stack2) ifTrue: [recoveredBlock13PC := 32] ifFalse: [recoveredBlock13PC := 43].
        ].
        recoveredBlock13Step = 32 ifTrue: [
            recoveredBlock13PC := 33.
        ].
        recoveredBlock13Step = 33 ifTrue: [
            recoveredBlock13Stack1 := keysAndValues.
            recoveredBlock13PC := 35.
        ].
        recoveredBlock13Step = 35 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 36.
        ].
        recoveredBlock13Step = 36 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) + (1).
            recoveredBlock13PC := 37.
        ].
        recoveredBlock13Step = 37 ifTrue: [
            recoveredBlock13Stack3 := recoveredArg2.
            recoveredBlock13PC := 40.
        ].
        recoveredBlock13Step = 40 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) at: (recoveredBlock13Stack2) put: (recoveredBlock13Stack3).
            recoveredBlock13PC := 42.
        ].
        recoveredBlock13Step = 42 ifTrue: [
            ^recoveredBlock13Stack1
        ].
        recoveredBlock13Step = 43 ifTrue: [
            recoveredBlock13Result := recoveredBlock13Stack1.
            recoveredBlock13Done := true.
        ].
    ].
    recoveredBlock13Result
].
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) to: (recoveredStack2) by: (recoveredStack3) do: (recoveredStack4).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := elementCount.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            elementCount := recoveredStack1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := keysAndValues.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := elementCount.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := keysAndValues.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := 6.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyAndGrowBy: (recoveredStack2).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            keysAndValues := recoveredStack1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := keysAndValues.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (-1).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := keysAndValues.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

