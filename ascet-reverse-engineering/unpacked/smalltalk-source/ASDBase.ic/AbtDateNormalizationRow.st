"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20066b1c; bytecode file offset 0x963428"
!AbtDateNormalizationRow methodsFor: 'recovered'!
low
    | recoveredValue0 |
    recoveredValue0 := low.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200678c4; bytecode file offset 0x9646f8"
!AbtDateNormalizationRow methodsFor: 'recovered'!
high
    | recoveredValue0 |
    recoveredValue0 := high.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006835c; bytecode file offset 0x965b90"
!AbtDateNormalizationRow methodsFor: 'recovered'!
base
    | recoveredValue0 |
    recoveredValue0 := base.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200785c4; bytecode file offset 0x9757c8"
!AbtDateNormalizationRow methodsFor: 'recovered'!
abtIsDateNormalizationRow
    ^true
! !

"ASDBase.ic method 0x20083c18; bytecode file offset 0x9804dc"
!AbtDateNormalizationRow methodsFor: 'recovered'!
normalize: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) base.
    recoveredValue2 := (recoveredValue0) + (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200a9754; bytecode file offset 0x9a6010"
!AbtDateNormalizationRow methodsFor: 'recovered'!
covers: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) low.
    recoveredValue2 := (self) high.
    recoveredValue3 := (recoveredValue0) between: (recoveredValue1) and: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200be634; bytecode file offset 0x9bb178"
!AbtDateNormalizationRow methodsFor: 'recovered'!
low: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    low := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bf390; bytecode file offset 0x9bc0b4"
!AbtDateNormalizationRow methodsFor: 'recovered'!
high: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    high := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c063c; bytecode file offset 0x9bd228"
!AbtDateNormalizationRow methodsFor: 'recovered'!
base: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    base := recoveredValue0.
    ^self
! !

