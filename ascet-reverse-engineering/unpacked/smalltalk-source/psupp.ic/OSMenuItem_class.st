"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000aa28; bytecode file offset 0x15e390"
!OSMenuItem class methodsFor: 'recovered'!
foreground
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OS.
    recoveredValue1 := ColorMenutext.
    recoveredValue2 := (recoveredValue0) getSysColor: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2000aa3c; bytecode file offset 0x15e390"
!OSMenuItem class methodsFor: 'recovered'!
background
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OS.
    recoveredValue1 := ColorMenu.
    recoveredValue2 := (recoveredValue0) getSysColor: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2002bd50; bytecode file offset 0x17f5fc"
!OSMenuItem class methodsFor: 'recovered'!
checkExtent
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := OS.
    recoveredValue1 := (recoveredValue0) getMenuCheckMarkDimensions.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (recoveredValue3) bitShift: (-16).
    recoveredValue5 := (65535) @ (recoveredValue4).
    recoveredValue6 := (recoveredValue2) bitAnd: (recoveredValue5).
    ^recoveredValue6
! !

