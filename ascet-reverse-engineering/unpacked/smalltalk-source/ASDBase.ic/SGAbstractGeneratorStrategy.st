"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2002ed24; bytecode file offset 0x934580"
!SGAbstractGeneratorStrategy methodsFor: 'recovered'!
current
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) current.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20033474; bytecode file offset 0x934580"
!SGAbstractGeneratorStrategy methodsFor: 'recovered'!
importsTable
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) genContext.
    recoveredValue1 := (recoveredValue0) importsTable.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003d308; bytecode file offset 0x93bf94"
!SGAbstractGeneratorStrategy methodsFor: 'recovered'!
ileBuilder
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGIleBuilder.
    recoveredValue1 := (recoveredValue0) current.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003dc08; bytecode file offset 0x93bf94"
!SGAbstractGeneratorStrategy methodsFor: 'recovered'!
transformationFactory
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGIlTransformationFactory.
    recoveredValue1 := (recoveredValue0) current.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003e0d8; bytecode file offset 0x93bf94"
!SGAbstractGeneratorStrategy methodsFor: 'recovered'!
expansionFactory
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGIlExpansionFactory.
    recoveredValue1 := (recoveredValue0) current.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20066c7c; bytecode file offset 0x9646f8"
!SGAbstractGeneratorStrategy methodsFor: 'recovered'!
genContext
    | recoveredValue0 |
    recoveredValue0 := genContext.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200bf130; bytecode file offset 0x9bc0b4"
!SGAbstractGeneratorStrategy methodsFor: 'recovered'!
genContext: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    genContext := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200e91f4; bytecode file offset 0x9e5abc"
!SGAbstractGeneratorStrategy methodsFor: 'recovered'!
expression: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) class.
    recoveredValue3 := (recoveredValue2) name.
    recoveredValue4 := ('Unknown type of expression : ') , (recoveredValue3).
    (recoveredValue0) fatalExpect: (recoveredValue4).
    ^self
! !

