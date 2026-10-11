"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200685dc; bytecode file offset 0x965b90"
!SGIlCountTempIdentifierVisitor methodsFor: 'recovered'!
count
    | recoveredValue0 |
    recoveredValue0 := count.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20089714; bytecode file offset 0x986060"
!SGIlCountTempIdentifierVisitor methodsFor: 'recovered'!
resetCount
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    count := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x200d81c0; bytecode file offset 0x9d4a80"
!SGIlCountTempIdentifierVisitor methodsFor: 'recovered'!
countTempIdentifierIn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    (self) resetCount.
    recoveredValue0 := recoveredArg1.
    (self) visitNode: (recoveredValue0).
    recoveredValue1 := (self) count.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20113434; bytecode file offset 0xa0fcf4"
!SGIlCountTempIdentifierVisitor methodsFor: 'recovered'!
tempAssignIdentifier: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super tempAssignIdentifier: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    (self) incrementCount: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x202ca6a0; bytecode file offset 0xbc6f70"
!SGIlCountTempIdentifierVisitor methodsFor: 'recovered'!
incrementCount: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) count.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) tempAssign.
    recoveredValue3 := [
    | recoveredBlock9Value0 recoveredBlock9Value1 recoveredBlock9Value2 |
    recoveredBlock9Value0 := Array.
    recoveredBlock9Value1 := recoveredArg1.
    recoveredBlock9Value2 := (recoveredBlock9Value0) with: (0) with: (recoveredBlock9Value1).
    recoveredBlock9Value2
].
    recoveredValue4 := (recoveredValue0) at: (recoveredValue2) ifAbsentPut: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (recoveredValue6) at: (1).
    recoveredValue8 := (recoveredValue7) + (1).
    (recoveredValue5) at: (1) put: (recoveredValue8).
    ^self
! !

