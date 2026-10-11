"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"eshell.ic method 0x20000198; bytecode file offset 0x4204"
!CwWidget methodsFor: 'recovered'!
isEmbeddedShellDecorations
    ^false
! !

"eshell.ic method 0x20000330; bytecode file offset 0x43a4"
!CwWidget methodsFor: 'recovered'!
createEmbeddedShell: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := CwEmbeddedShell.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

