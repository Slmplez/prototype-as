"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20034e94; bytecode file offset 0x934580"
!ASDPrimitiveImplValue methodsFor: 'recovered'!
convertToASDV50Implementation
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) scalarImpl.
    recoveredValue1 := (recoveredValue0) convertToASDV50Implementation.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20065d0c; bytecode file offset 0x963428"
!ASDPrimitiveImplValue methodsFor: 'recovered'!
scalarImpl
    | recoveredValue0 |
    recoveredValue0 := scalarImpl.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006779c; bytecode file offset 0x9646f8"
!ASDPrimitiveImplValue methodsFor: 'recovered'!
scalarLimits
    | recoveredValue0 |
    recoveredValue0 := scalarLimits.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200bdac4; bytecode file offset 0x9bb178"
!ASDPrimitiveImplValue methodsFor: 'recovered'!
scalarImpl: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    scalarImpl := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200beda0; bytecode file offset 0x9bc0b4"
!ASDPrimitiveImplValue methodsFor: 'recovered'!
scalarLimits: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    scalarLimits := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20154968; bytecode file offset 0xa51230"
!ASDPrimitiveImplValue methodsFor: 'recovered'!
updateDataElement: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) extraImplInfo.
    (recoveredValue1) clearNoImplementation.
    recoveredValue2 := (self) scalarLimits.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) updateDataElement: (recoveredValue3).
    recoveredValue4 := (self) scalarImpl.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) updateDataElement: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    ^recoveredValue6
! !

