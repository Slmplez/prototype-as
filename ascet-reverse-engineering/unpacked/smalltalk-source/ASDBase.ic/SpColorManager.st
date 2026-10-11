"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200668fc; bytecode file offset 0x963428"
!SpColorManager methodsFor: 'recovered'!
colorTable
    | recoveredValue0 |
    recoveredValue0 := colorTable.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2008960c; bytecode file offset 0x985ef8"
!SpColorManager methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    colorTable := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x2020384c; bytecode file offset 0xb0011c"
!SpColorManager methodsFor: 'recovered'!
colorNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) colorTable.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    | recoveredBlock8Local1 recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 recoveredBlock8Value4 recoveredBlock8Value5 recoveredBlock8Value6 |
    recoveredBlock8Value0 := CgScreen.
    recoveredBlock8Value1 := (recoveredBlock8Value0) default.
    recoveredBlock8Value2 := recoveredArg1.
    recoveredBlock8Value3 := (recoveredBlock8Value1) lookupColor: (recoveredBlock8Value2).
    recoveredBlock8Local1 := recoveredBlock8Value3.
    recoveredBlock8Value4 := SpRGBColor.
    recoveredBlock8Value5 := recoveredBlock8Local1.
    recoveredBlock8Value6 := (recoveredBlock8Value4) from: (recoveredBlock8Value5).
    recoveredBlock8Value6
].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsentPut: (recoveredValue2).
    ^recoveredValue3
! !

