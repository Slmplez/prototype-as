"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20004820; bytecode file offset 0x90206c"
!ASAP2DependentCharacteristic methodsFor: 'recovered'!
addToSpecificationModule: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20008948; bytecode file offset 0x908be4"
!ASAP2DependentCharacteristic methodsFor: 'recovered'!
shortNameDevice
    | recoveredValue0 |
    recoveredValue0 := (self) name.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20017030; bytecode file offset 0x92209c"
!ASAP2DependentCharacteristic methodsFor: 'recovered'!
iconString
    ^'ASAP2_FORMULAS'
! !

"ASDBase.ic method 0x2004c0dc; bytecode file offset 0x948b80"
!ASAP2DependentCharacteristic methodsFor: 'recovered'!
sgFormula
    | recoveredValue0 |
    recoveredValue0 := (self) at: (6).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007c434; bytecode file offset 0x97c330"
!ASAP2DependentCharacteristic methodsFor: 'recovered'!
isMeasureNode
    ^false
! !

"ASDBase.ic method 0x200a6d7c; bytecode file offset 0x9a3694"
!ASAP2DependentCharacteristic methodsFor: 'recovered'!
sgFormula: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (6) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x2017cc5c; bytecode file offset 0xa79580"
!ASAP2DependentCharacteristic methodsFor: 'recovered'!
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

"ASDBase.ic method 0x2017dddc; bytecode file offset 0xa7a6d0"
!ASAP2DependentCharacteristic methodsFor: 'recovered'!
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

