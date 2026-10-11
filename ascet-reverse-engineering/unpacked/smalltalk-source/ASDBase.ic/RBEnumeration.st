"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200081e0; bytecode file offset 0x908be4"
!RBEnumeration methodsFor: 'recovered'!
defaultPhysType
    | recoveredValue0 |
    recoveredValue0 := (self) copy.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000b408; bytecode file offset 0x908be4"
!RBEnumeration methodsFor: 'recovered'!
getDefaultValue
    | recoveredValue0 |
    recoveredValue0 := (self) createData.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20018074; bytecode file offset 0x92209c"
!RBEnumeration methodsFor: 'recovered'!
label
    ^'enum'
! !

"ASDBase.ic method 0x200263e0; bytecode file offset 0x923928"
!RBEnumeration methodsFor: 'recovered'!
dataElementEditType
    ^'KW'
! !

"ASDBase.ic method 0x2002c6e4; bytecode file offset 0x934580"
!RBEnumeration methodsFor: 'recovered'!
createData
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) values.
    recoveredValue1 := (recoveredValue0) first.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20038e74; bytecode file offset 0x935c54"
!RBEnumeration methodsFor: 'recovered'!
convert: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) asString.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003a6b8; bytecode file offset 0x938608"
!RBEnumeration methodsFor: 'recovered'!
dbXmlDeepCopy: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) dbXmlGenericDeepCopy: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003cd18; bytecode file offset 0x93bf94"
!RBEnumeration methodsFor: 'recovered'!
defaultImplType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := RBInt32Unsigned.
    recoveredValue1 := (recoveredValue0) createDefault.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200668bc; bytecode file offset 0x963428"
!RBEnumeration methodsFor: 'recovered'!
values
    | recoveredValue0 |
    recoveredValue0 := values.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007e88c; bytecode file offset 0x97c330"
!RBEnumeration methodsFor: 'recovered'!
isStringType
    ^false
! !

"ASDBase.ic method 0x2009c6c8; bytecode file offset 0x998fec"
!RBEnumeration methodsFor: 'recovered'!
createFormula
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := RBFormulaEnum.
    recoveredValue1 := (recoveredValue0) createDefault.
    recoveredValue2 := (self) values.
    recoveredValue3 := (recoveredValue1) valueTable: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200be734; bytecode file offset 0x9bb178"
!RBEnumeration methodsFor: 'recovered'!
values: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    values := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200e01b4; bytecode file offset 0x9dca7c"
!RBEnumeration methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Array.
    recoveredValue1 := ASDDisplayStrings.
    recoveredValue2 := (recoveredValue1) undefinedString.
    recoveredValue3 := (recoveredValue0) with: (recoveredValue2).
    (self) values: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20236534; bytecode file offset 0xb32e14"
!RBEnumeration methodsFor: 'recovered'!
createDataElement
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := RBDataEnumeration.
    recoveredValue1 := (recoveredValue0) createDefault.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := (self) createFormula.
    (recoveredValue3) formula: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := (self) defaultPhysType.
    (recoveredValue5) setPhysType: (recoveredValue6).
    recoveredValue7 := (self) defaultImplType.
    (recoveredValue2) setImplType: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := (recoveredValue8) description.
    recoveredValue10 := (self) dataElementEditType.
    (recoveredValue9) type: (recoveredValue10).
    recoveredValue11 := recoveredLocal1.
    ^recoveredValue11
! !

