"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2004de2c; bytecode file offset 0x94d048"
!SGCgAbstractArrayDimension methodsFor: 'recovered'!
sizeLabel
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x200538ec; bytecode file offset 0x9505d0"
!SGCgAbstractArrayDimension methodsFor: 'recovered'!
convertCgDimensionWith: recoveredArg1
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20059bc0; bytecode file offset 0x9566ac"
!SGCgAbstractArrayDimension methodsFor: 'recovered'!
isCgTypeAssignmentCompatibleTo: recoveredArg1 generator: recoveredArg2
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20059cb0; bytecode file offset 0x9566ac"
!SGCgAbstractArrayDimension methodsFor: 'recovered'!
isCgTypeCompatibleTo: recoveredArg1 generator: recoveredArg2
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2005b3c8; bytecode file offset 0x957cb0"
!SGCgAbstractArrayDimension methodsFor: 'recovered'!
checkVariantSizeRestrictions: recoveredArg1 reason: recoveredArg2 on: recoveredArg3 source: recoveredArg4
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2005b9dc; bytecode file offset 0x958548"
!SGCgAbstractArrayDimension methodsFor: 'recovered'!
dimensions
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) with: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20066774; bytecode file offset 0x963428"
!SGCgAbstractArrayDimension methodsFor: 'recovered'!
indexType
    | recoveredValue0 |
    recoveredValue0 := indexType.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006768c; bytecode file offset 0x9646f8"
!SGCgAbstractArrayDimension methodsFor: 'recovered'!
specialCallName
    | recoveredValue0 |
    recoveredValue0 := specialCallName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007c364; bytecode file offset 0x97c330"
!SGCgAbstractArrayDimension methodsFor: 'recovered'!
isCgFixedDimension
    ^false
! !

"ASDBase.ic method 0x2007cd54; bytecode file offset 0x97c330"
!SGCgAbstractArrayDimension methodsFor: 'recovered'!
isCgVariantDimension
    ^false
! !

"ASDBase.ic method 0x2007e93c; bytecode file offset 0x97c330"
!SGCgAbstractArrayDimension methodsFor: 'recovered'!
isCgMixedDimension
    ^false
! !

"ASDBase.ic method 0x2007efec; bytecode file offset 0x97c330"
!SGCgAbstractArrayDimension methodsFor: 'recovered'!
isCgVariableDimension
    ^false
! !

"ASDBase.ic method 0x2008878c; bytecode file offset 0x985628"
!SGCgAbstractArrayDimension methodsFor: 'recovered'!
asCgVariableDimension
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGCgTypeFactory.
    recoveredValue1 := (self) specialCallName.
    recoveredValue2 := (recoveredValue0) variableArrayDimension: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200d21b4; bytecode file offset 0x9ceaf0"
!SGCgAbstractArrayDimension methodsFor: 'recovered'!
errLabel
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) sizeLabel.
    recoveredValue1 := ('[') , (recoveredValue0).
    recoveredValue2 := (recoveredValue1) , (']').
    ^recoveredValue2
! !

"ASDBase.ic method 0x20111200; bytecode file offset 0xa0dabc"
!SGCgAbstractArrayDimension methodsFor: 'recovered'!
initialize: recoveredArg1 specialCallName: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    super initialize.
    recoveredValue0 := recoveredArg1.
    indexType := recoveredValue0.
    recoveredValue1 := recoveredArg2.
    specialCallName := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x2015798c; bytecode file offset 0xa54254"
!SGCgAbstractArrayDimension methodsFor: 'recovered'!
compileTimeRestriction: recoveredArg1 block: recoveredArg2 onWarningDo: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := SGMdCompileTimeRestriction.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg2.
    (recoveredValue2) generatorBlock: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) errorMsgBlock: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := recoveredArg3.
    (recoveredValue6) onWarningDo: (recoveredValue7).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20184ab8; bytecode file offset 0xa81378"
!SGCgAbstractArrayDimension methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) nextPut: ($[).
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := (self) sizeLabel.
    (recoveredValue2) nextPutAll: (recoveredValue3).
    (recoveredValue0) nextPut: ($]).
    ^self
! !

