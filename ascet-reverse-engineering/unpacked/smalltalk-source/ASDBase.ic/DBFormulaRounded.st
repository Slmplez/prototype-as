"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2003885c; bytecode file offset 0x935c54"
!DBFormulaRounded methodsFor: 'recovered'!
calculateInvers: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) asNumber.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20069ed8; bytecode file offset 0x966bdc"
!DBFormulaRounded methodsFor: 'recovered'!
postDigits
    | recoveredValue0 |
    recoveredValue0 := postDigits.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006a3fc; bytecode file offset 0x967a18"
!DBFormulaRounded methodsFor: 'recovered'!
maxDigits
    | recoveredValue0 |
    recoveredValue0 := maxDigits.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20083350; bytecode file offset 0x97fc08"
!DBFormulaRounded methodsFor: 'recovered'!
calculate: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := postDigits.
    recoveredValue2 := (recoveredValue0) printRounded: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200c0f98; bytecode file offset 0x9bdf14"
!DBFormulaRounded methodsFor: 'recovered'!
postDigits: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    postDigits := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c1764; bytecode file offset 0x9beac8"
!DBFormulaRounded methodsFor: 'recovered'!
maxDigits: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    maxDigits := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x201cd2e4; bytecode file offset 0xac9bac"
!DBFormulaRounded methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) cr.
    (recoveredValue1) nextPutAll: ('postDigits : ').
    recoveredValue3 := postDigits.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) printOn: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    (recoveredValue5) cr.
    ^self
! !

