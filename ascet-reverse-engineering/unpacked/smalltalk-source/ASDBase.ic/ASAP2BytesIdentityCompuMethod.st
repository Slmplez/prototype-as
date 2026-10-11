"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20003580; bytecode file offset 0x90206c"
!ASAP2BytesIdentityCompuMethod methodsFor: 'recovered'!
coeffs: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x2000d3a4; bytecode file offset 0x909e08"
!ASAP2BytesIdentityCompuMethod methodsFor: 'recovered'!
isChangeToBitMaskPossible: recoveredArg1
    ^true
! !

"ASDBase.ic method 0x2000d5f4; bytecode file offset 0x90a4b8"
!ASAP2BytesIdentityCompuMethod methodsFor: 'recovered'!
appliedToNumber: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000da4c; bytecode file offset 0x90a4b8"
!ASAP2BytesIdentityCompuMethod methodsFor: 'recovered'!
appliedInverseToNumber: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20022304; bytecode file offset 0x92209c"
!ASAP2BytesIdentityCompuMethod methodsFor: 'recovered'!
parameterValues
    ^#()
! !

"ASDBase.ic method 0x20026f38; bytecode file offset 0x923928"
!ASAP2BytesIdentityCompuMethod methodsFor: 'recovered'!
coeffs
    ^#(0 1 0 0 0 1)
! !

"ASDBase.ic method 0x2004c1b4; bytecode file offset 0x948b80"
!ASAP2BytesIdentityCompuMethod methodsFor: 'recovered'!
refUnit
    | recoveredValue0 |
    recoveredValue0 := (self) at: (6).
    ^recoveredValue0
! !

"ASDBase.ic method 0x20052aa0; bytecode file offset 0x9505d0"
!ASAP2BytesIdentityCompuMethod methodsFor: 'recovered'!
c0: recoveredArg1
    (self) etasDevHalt.
    ^self
! !

"ASDBase.ic method 0x200533e8; bytecode file offset 0x9505d0"
!ASAP2BytesIdentityCompuMethod methodsFor: 'recovered'!
c1: recoveredArg1
    (self) etasDevHalt.
    ^self
! !

"ASDBase.ic method 0x200537a8; bytecode file offset 0x9505d0"
!ASAP2BytesIdentityCompuMethod methodsFor: 'recovered'!
d0: recoveredArg1
    (self) etasDevHalt.
    ^self
! !

"ASDBase.ic method 0x20053a6c; bytecode file offset 0x9505d0"
!ASAP2BytesIdentityCompuMethod methodsFor: 'recovered'!
d1: recoveredArg1
    (self) etasDevHalt.
    ^self
! !

"ASDBase.ic method 0x20071b54; bytecode file offset 0x96e578"
!ASAP2BytesIdentityCompuMethod methodsFor: 'recovered'!
offset
    ^0
! !

"ASDBase.ic method 0x20072388; bytecode file offset 0x96ee04"
!ASAP2BytesIdentityCompuMethod methodsFor: 'recovered'!
scale
    ^1
! !

"ASDBase.ic method 0x20073600; bytecode file offset 0x970b34"
!ASAP2BytesIdentityCompuMethod methodsFor: 'recovered'!
implPole
    ^nil
! !

"ASDBase.ic method 0x20073958; bytecode file offset 0x970b34"
!ASAP2BytesIdentityCompuMethod methodsFor: 'recovered'!
physPole
    ^nil
! !

"ASDBase.ic method 0x20075b8c; bytecode file offset 0x9757c8"
!ASAP2BytesIdentityCompuMethod methodsFor: 'recovered'!
isIdentity
    ^true
! !

"ASDBase.ic method 0x20076b1c; bytecode file offset 0x9757c8"
!ASAP2BytesIdentityCompuMethod methodsFor: 'recovered'!
isLinearAndInvertible
    ^true
! !

"ASDBase.ic method 0x20077f5c; bytecode file offset 0x9757c8"
!ASAP2BytesIdentityCompuMethod methodsFor: 'recovered'!
isIdentityFormula
    ^true
! !

"ASDBase.ic method 0x20078b04; bytecode file offset 0x9757c8"
!ASAP2BytesIdentityCompuMethod methodsFor: 'recovered'!
hasInverse
    ^true
! !

"ASDBase.ic method 0x2007ab6c; bytecode file offset 0x97c330"
!ASAP2BytesIdentityCompuMethod methodsFor: 'recovered'!
isHyperbolicFormula
    ^false
! !

"ASDBase.ic method 0x2007d65c; bytecode file offset 0x97c330"
!ASAP2BytesIdentityCompuMethod methodsFor: 'recovered'!
isLinearRational
    ^false
! !

"ASDBase.ic method 0x200865dc; bytecode file offset 0x982e98"
!ASAP2BytesIdentityCompuMethod methodsFor: 'recovered'!
createArrayAccessor: recoveredArg1 parent: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := DBIdentityFormulaItemArrayC.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) create: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20094924; bytecode file offset 0x9913f0"
!ASAP2BytesIdentityCompuMethod methodsFor: 'recovered'!
printFormInverseOn: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) nextPutAll: ('phys = hex').
    ^self
! !

"ASDBase.ic method 0x200a6cc8; bytecode file offset 0x9a3694"
!ASAP2BytesIdentityCompuMethod methodsFor: 'recovered'!
refUnit: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (6) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x2010d9f8; bytecode file offset 0xa0a2c0"
!ASAP2BytesIdentityCompuMethod methodsFor: 'recovered'!
printFormForChannelCalibrationOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := SCSensor.
    recoveredValue2 := (recoveredValue1) , (' = ').
    recoveredValue3 := SCPhys.
    recoveredValue4 := (recoveredValue2) , (recoveredValue3).
    (recoveredValue0) nextPutAll: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x2010eb8c; bytecode file offset 0xa0b454"
!ASAP2BytesIdentityCompuMethod methodsFor: 'recovered'!
significantDigitsNeededIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) left.
    recoveredValue2 := (recoveredValue1) asFloat.
    recoveredValue3 := (recoveredValue2) scale.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) right.
    recoveredValue6 := (recoveredValue5) asFloat.
    recoveredValue7 := (recoveredValue6) scale.
    recoveredValue8 := (recoveredValue3) max: (recoveredValue7).
    recoveredValue9 := (recoveredValue8) + (1).
    ^recoveredValue9
! !

"ASDBase.ic method 0x20144038; bytecode file offset 0xa40900"
!ASAP2BytesIdentityCompuMethod methodsFor: 'recovered'!
printFormOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := SCPhys.
    recoveredValue2 := ('f(') , (recoveredValue1).
    recoveredValue3 := (recoveredValue2) , (') = ').
    recoveredValue4 := SCPhys.
    recoveredValue5 := (recoveredValue3) , (recoveredValue4).
    (recoveredValue0) nextPutAll: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x201dd188; bytecode file offset 0xad9a5c"
!ASAP2BytesIdentityCompuMethod methodsFor: 'recovered'!
asLinearCompuMethod
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := ASAP2BytesLinearCompuMethod.
    recoveredValue1 := (recoveredValue0) createDefaultFrom: (self).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (self) name.
    (recoveredValue2) name: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (self) unit.
    (recoveredValue4) unit: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (self) bytes.
    (recoveredValue6) bytes: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    ^recoveredValue8
! !

