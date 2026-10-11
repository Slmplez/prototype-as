"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2004bf38; bytecode file offset 0x948b80"
!ASAP2VirtualCharacteristic methodsFor: 'recovered'!
sgFormula
    | recoveredValue0 |
    recoveredValue0 := (self) at: (6).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200a6d70; bytecode file offset 0x9a3694"
!ASAP2VirtualCharacteristic methodsFor: 'recovered'!
sgFormula: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (6) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x2017cc8c; bytecode file offset 0xa79580"
!ASAP2VirtualCharacteristic methodsFor: 'recovered'!
emWriteObjectOn: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) sgFormula.
    recoveredLocal1 := recoveredValue0.
    (self) sgFormula: (nil).
    recoveredValue1 := recoveredArg1.
    super emWriteObjectOn: (recoveredValue1).
    recoveredValue2 := recoveredLocal1.
    (self) sgFormula: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2017ddf4; bytecode file offset 0xa7a6d0"
!ASAP2VirtualCharacteristic methodsFor: 'recovered'!
dumpSize
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) sgFormula.
    recoveredLocal2 := recoveredValue0.
    (self) sgFormula: (nil).
    recoveredValue1 := super dumpSize.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal2.
    (self) sgFormula: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

