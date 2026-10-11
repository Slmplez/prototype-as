"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20006a88; bytecode file offset 0x908be4"
!SGMdManager class methodsFor: 'recovered'!
generator
    | recoveredValue0 |
    recoveredValue0 := (self) currentGeneratorStrategy.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2003d908; bytecode file offset 0x93bf94"
!SGMdManager class methodsFor: 'recovered'!
expander
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGIlExpander.
    recoveredValue1 := (recoveredValue0) current.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003d918; bytecode file offset 0x93bf94"
!SGMdManager class methodsFor: 'recovered'!
currentExpander
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGIlExpander.
    recoveredValue1 := (recoveredValue0) current.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003e098; bytecode file offset 0x93bf94"
!SGMdManager class methodsFor: 'recovered'!
createWriteStream
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGIlExpander.
    recoveredValue1 := (recoveredValue0) createWriteStream.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003ebd8; bytecode file offset 0x93bf94"
!SGMdManager class methodsFor: 'recovered'!
errorHandler
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGCgErrorHandler.
    recoveredValue1 := (recoveredValue0) current.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20051178; bytecode file offset 0x94f0e0"
!SGMdManager class methodsFor: 'recovered'!
create
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initialize.
    recoveredValue2 := (recoveredValue1) exDefaultHandler.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005c410; bytecode file offset 0x959680"
!SGMdManager class methodsFor: 'recovered'!
importList
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGMdBuilder.
    recoveredValue1 := (recoveredValue0) currentMdlBuilder.
    recoveredValue2 := (recoveredValue1) importList.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005c9b0; bytecode file offset 0x959680"
!SGMdManager class methodsFor: 'recovered'!
currentGeneratorStrategy
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGGeneratorFactory.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := (recoveredValue1) codeGeneratorStrategy.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200815a8; bytecode file offset 0x97e234"
!SGMdManager class methodsFor: 'recovered'!
createWriteStreamFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGIlExpander.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) createWriteStreamFrom: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200862d8; bytecode file offset 0x982e18"
!SGMdManager class methodsFor: 'recovered'!
createWithFatalsHandler: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initialize.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) exHandlerForFatals: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20091f90; bytecode file offset 0x98e9dc"
!SGMdManager class methodsFor: 'recovered'!
reservedNames: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGMdBuilder.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) reservedNames: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200ae768; bytecode file offset 0x9ab034"
!SGMdManager class methodsFor: 'recovered'!
checkECCOAPI: recoveredArg1 ifFail: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) generator.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (recoveredValue0) checkECCOAPI: (recoveredValue1) ifFail: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20246cdc; bytecode file offset 0xb435b4"
!SGMdManager class methodsFor: 'recovered'!
prepareCodeGeneration
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := SGMdBuilder.
    (recoveredValue0) prepareCodeGeneration.
    recoveredValue1 := SGIleBuilder.
    (recoveredValue1) prepareCodeGeneration.
    recoveredValue2 := SGIlOptimizationFactory.
    (recoveredValue2) prepareCodeGeneration.
    recoveredValue3 := SGMdScoopIxFunctionGenerator.
    (recoveredValue3) resetCurrent.
    recoveredValue4 := SGESDLCodeStream.
    (recoveredValue4) prepareCodeGeneration.
    recoveredValue5 := SGIlTransformationFactory.
    (recoveredValue5) prepareCodeGeneration.
    recoveredValue6 := SGIlExpansionFactory.
    (recoveredValue6) prepareCodeGeneration.
    recoveredValue7 := SGIlOptimizationFactory.
    (recoveredValue7) prepareCodeGeneration.
    ^self
! !

