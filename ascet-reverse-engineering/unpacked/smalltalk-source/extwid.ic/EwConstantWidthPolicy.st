"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"extwid.ic method 0x20007938; bytecode file offset 0x58708"
!EwConstantWidthPolicy methodsFor: 'recovered'!
addedPage: recoveredArg1 pages: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) tab.
    recoveredValue2 := (self) width.
    (recoveredValue1) width: (recoveredValue2).
    ^false
! !

"extwid.ic method 0x2000add4; bytecode file offset 0x5bba4"
!EwConstantWidthPolicy methodsFor: 'recovered'!
changedTabWidth: recoveredArg1 pages: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) width: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) maxWidth: (recoveredValue1).
    recoveredValue2 := recoveredArg2.
    (self) initializeTabSizes: (recoveredValue2).
    ^true
! !

"extwid.ic method 0x20011284; bytecode file offset 0x6205c"
!EwConstantWidthPolicy methodsFor: 'recovered'!
initializeTabSizes: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) width.
    (self) maxWidth: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [:recoveredBlock9Arg1 | 
    | recoveredBlock9Value0 recoveredBlock9Value1 recoveredBlock9Value2 recoveredBlock9Value3 |
    recoveredBlock9Value0 := recoveredBlock9Arg1.
    recoveredBlock9Value1 := (recoveredBlock9Value0) tab.
    recoveredBlock9Value2 := (self) width.
    recoveredBlock9Value3 := (recoveredBlock9Value1) width: (recoveredBlock9Value2).
    recoveredBlock9Value3
].
    (recoveredValue1) do: (recoveredValue2).
    ^self
! !

