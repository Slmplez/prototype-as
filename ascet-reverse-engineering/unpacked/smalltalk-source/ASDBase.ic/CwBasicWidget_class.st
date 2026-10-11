"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20022514; bytecode file offset 0x92209c"
!CwBasicWidget class methodsFor: 'recovered'!
abtEventMasks
    ^#(8192 256 512 1024 4 8 64 1 2 32768)
! !

"ASDBase.ic method 0x2009b81c; bytecode file offset 0x998128"
!CwBasicWidget class methodsFor: 'recovered'!
widgetWithFocus
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := CwBasicWidget.
    recoveredValue1 := OSWidget.
    recoveredValue2 := (recoveredValue1) focusWidget.
    recoveredValue3 := (recoveredValue0) osToCwWidget: (recoveredValue2).
    ^recoveredValue3
! !

