"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x2000a2d8; bytecode file offset 0x864a0"
!CwOverrideShell methodsFor: 'recovered'!
initializeResources
    super initializeResources.
    xmNborderWidth := 1.
    ^self
! !

"winsys.ic method 0x2000c4f0; bytecode file offset 0x886c4"
!CwOverrideShell methodsFor: 'recovered'!
osWidgetStyle
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := super osWidgetStyle.
    recoveredValue1 := OSxDIALOG.
    recoveredValue2 := OSxONTOP.
    recoveredValue3 := (recoveredValue1) bitOr: (recoveredValue2).
    recoveredValue4 := (recoveredValue0) bitOr: (recoveredValue3).
    ^recoveredValue4
! !

