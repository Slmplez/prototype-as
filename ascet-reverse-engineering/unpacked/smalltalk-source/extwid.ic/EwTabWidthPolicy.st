"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"extwid.ic method 0x20000684; bytecode file offset 0x51458"
!EwTabWidthPolicy methodsFor: 'recovered'!
removedPage: recoveredArg1 pages: recoveredArg2
    ^false
! !

"extwid.ic method 0x2000068c; bytecode file offset 0x51458"
!EwTabWidthPolicy methodsFor: 'recovered'!
addedPage: recoveredArg1 pages: recoveredArg2
    ^false
! !

"extwid.ic method 0x20000694; bytecode file offset 0x51458"
!EwTabWidthPolicy methodsFor: 'recovered'!
changedPage: recoveredArg1 pages: recoveredArg2
    ^false
! !

"extwid.ic method 0x20001048; bytecode file offset 0x52154"
!EwTabWidthPolicy methodsFor: 'recovered'!
policyConstant
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) policyConstant.
    ^recoveredValue1
! !

"extwid.ic method 0x20001a3c; bytecode file offset 0x52834"
!EwTabWidthPolicy methodsFor: 'recovered'!
initializeTabSizes: recoveredArg1
    (self) subclassResponsibility.
    ^self
! !

"extwid.ic method 0x2000272c; bytecode file offset 0x534f0"
!EwTabWidthPolicy methodsFor: 'recovered'!
notebook
    | recoveredValue0 |
    recoveredValue0 := notebook.
    ^recoveredValue0
! !

"extwid.ic method 0x200027b4; bytecode file offset 0x53678"
!EwTabWidthPolicy methodsFor: 'recovered'!
width
    | recoveredValue0 |
    recoveredValue0 := width.
    ^recoveredValue0
! !

"extwid.ic method 0x200029fc; bytecode file offset 0x53810"
!EwTabWidthPolicy methodsFor: 'recovered'!
maxWidth
    | recoveredValue0 |
    recoveredValue0 := maxWidth.
    ^recoveredValue0
! !

"extwid.ic method 0x20002b0c; bytecode file offset 0x53998"
!EwTabWidthPolicy methodsFor: 'recovered'!
tabsPerRow
    | recoveredValue0 |
    recoveredValue0 := tabsPerRow.
    ^recoveredValue0
! !

"extwid.ic method 0x200046c4; bytecode file offset 0x55498"
!EwTabWidthPolicy methodsFor: 'recovered'!
changedTabsPerRow: recoveredArg1 pages: recoveredArg2
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) tabsPerRow: (recoveredValue0).
    ^false
! !

"extwid.ic method 0x200046d0; bytecode file offset 0x55498"
!EwTabWidthPolicy methodsFor: 'recovered'!
changedTabWidth: recoveredArg1 pages: recoveredArg2
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) width: (recoveredValue0).
    ^false
! !

"extwid.ic method 0x200062b8; bytecode file offset 0x5710c"
!EwTabWidthPolicy methodsFor: 'recovered'!
notebook: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    notebook := recoveredValue0.
    ^self
! !

"extwid.ic method 0x200063c8; bytecode file offset 0x57284"
!EwTabWidthPolicy methodsFor: 'recovered'!
width: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    width := recoveredValue0.
    ^self
! !

"extwid.ic method 0x200065b8; bytecode file offset 0x57404"
!EwTabWidthPolicy methodsFor: 'recovered'!
maxWidth: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    maxWidth := recoveredValue0.
    ^self
! !

"extwid.ic method 0x2000665c; bytecode file offset 0x57568"
!EwTabWidthPolicy methodsFor: 'recovered'!
tabsPerRow: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    tabsPerRow := recoveredValue0.
    ^self
! !

"extwid.ic method 0x2000c94c; bytecode file offset 0x5d71c"
!EwTabWidthPolicy methodsFor: 'recovered'!
initialize
    (self) maxWidth: (0).
    (self) width: (50).
    (self) tabsPerRow: (3).
    ^self
! !

"extwid.ic method 0x2000dc18; bytecode file offset 0x5e9f4"
!EwTabWidthPolicy methodsFor: 'recovered'!
initializeValuesFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) width.
    (self) width: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) tabsPerRow.
    (self) tabsPerRow: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) notebook.
    (self) notebook: (recoveredValue5).
    ^self
! !

"extwid.ic method 0x20010000; bytecode file offset 0x60dd4"
!EwTabWidthPolicy methodsFor: 'recovered'!
maxLabelWidth: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 :recoveredBlock7Arg2 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := (self) notebook.
    recoveredBlock7Value2 := recoveredBlock7Arg2.
    recoveredBlock7Value3 := (recoveredBlock7Value1) idealWidthOfTab: (recoveredBlock7Value2).
    recoveredBlock7Value4 := (recoveredBlock7Value0) max: (recoveredBlock7Value3).
    recoveredBlock7Value4
].
    recoveredValue2 := (recoveredValue0) inject: (0) into: (recoveredValue1).
    ^recoveredValue2
! !

