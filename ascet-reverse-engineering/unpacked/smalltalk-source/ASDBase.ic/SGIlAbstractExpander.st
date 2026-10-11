"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20000850; bytecode file offset 0x8ffcfc"
!SGIlAbstractExpander methodsFor: 'recovered'!
forceIntecrioDefine
    ^self
! !

"ASDBase.ic method 0x200051b0; bytecode file offset 0x90206c"
!SGIlAbstractExpander methodsFor: 'recovered'!
ileMethodBody: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x2003cc58; bytecode file offset 0x93bf94"
!SGIlAbstractExpander methodsFor: 'recovered'!
errorHandler
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGCgErrorHandler.
    recoveredValue1 := (recoveredValue0) current.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006651c; bytecode file offset 0x963428"
!SGIlAbstractExpander methodsFor: 'recovered'!
componentAttributes
    | recoveredValue0 |
    recoveredValue0 := componentAttributes.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200678dc; bytecode file offset 0x9646f8"
!SGIlAbstractExpander methodsFor: 'recovered'!
cgType
    | recoveredValue0 |
    recoveredValue0 := cgType.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200680fc; bytecode file offset 0x965b90"
!SGIlAbstractExpander methodsFor: 'recovered'!
genContext
    | recoveredValue0 |
    recoveredValue0 := genContext.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2008fe20; bytecode file offset 0x98c6dc"
!SGIlAbstractExpander methodsFor: 'recovered'!
createWriteStream
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) createWriteStream: (500).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200a182c; bytecode file offset 0x99e114"
!SGIlAbstractExpander methodsFor: 'recovered'!
createPerlCodeStream
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) createWriteStream: (500).
    recoveredValue2 := (recoveredValue1) asPerlCodeStream.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200a1840; bytecode file offset 0x99e114"
!SGIlAbstractExpander methodsFor: 'recovered'!
createXmlCodeStream
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) createWriteStream: (500).
    recoveredValue2 := (recoveredValue1) asXmlCodeStream.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200a1854; bytecode file offset 0x99e114"
!SGIlAbstractExpander methodsFor: 'recovered'!
createAnsiCCodeStream
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) createWriteStream: (500).
    recoveredValue2 := (recoveredValue1) asAnsiCCodeStream.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200bdb3c; bytecode file offset 0x9bb178"
!SGIlAbstractExpander methodsFor: 'recovered'!
componentAttributes: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    componentAttributes := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bf580; bytecode file offset 0x9bc0b4"
!SGIlAbstractExpander methodsFor: 'recovered'!
cgType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    cgType := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c01f4; bytecode file offset 0x9bd228"
!SGIlAbstractExpander methodsFor: 'recovered'!
genContext: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    genContext := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200f9d0c; bytecode file offset 0x9f6678"
!SGIlAbstractExpander methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    recoveredValue0 := SGCgComponentAttributes.
    recoveredValue1 := (recoveredValue0) create.
    componentAttributes := recoveredValue1.
    ^self
! !

