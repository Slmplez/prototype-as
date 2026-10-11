"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001be54; bytecode file offset 0x92209c"
!SgmlSupport class methodsFor: 'recovered'!
packagerKnownSymbols
    ^#('AttributeNotDeclared' 'AttriubteIsFixed' 'BLOCKS' 'CURRENT' 'EndTagRequired' 'EndTagWithoutStartTag' 'FIXED' 'IdAlreadyUsed' 'Inadmissible' 'InvalidRoot' 'LEAF' 'MissingMinimizationFlag' 'TagNotAllowed' 'TagRequired' 'UnknownParameterEntity' 'WrongDeclaration')
! !

"ASDBase.ic method 0x2004f2e4; bytecode file offset 0x94d048"
!SgmlSupport class methodsFor: 'recovered'!
failedRemove
    (self) loaded.
    ^self
! !

"ASDBase.ic method 0x200733c8; bytecode file offset 0x970b34"
!SgmlSupport class methodsFor: 'recovered'!
dtd
    ^nil
! !

"ASDBase.ic method 0x2008840c; bytecode file offset 0x984cf8"
!SgmlSupport class methodsFor: 'recovered'!
removing
    | recoveredValue0 |
    recoveredValue0 := SgmlEntitySet.
    (recoveredValue0) deregisterEntitySetsOwnedBy: (self).
    ^self
! !

"ASDBase.ic method 0x2025ea20; bytecode file offset 0xb5b300"
!SgmlSupport class methodsFor: 'recovered'!
loaded
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := SgmlDTD.
    (recoveredValue0) initialize.
    recoveredValue1 := SgmlEntitySet.
    (recoveredValue1) initialize.
    recoveredValue2 := SgmlParser.
    (recoveredValue2) initialize.
    recoveredValue3 := SgmlEntitySet.
    recoveredValue4 := recoveredValue3.
    (recoveredValue4) deregisterEntitySetsOwnedBy: (self).
    recoveredValue5 := SgmlEntitySet.
    recoveredValue6 := Smalltalk.
    recoveredValue7 := (recoveredValue6) at: ('SgmlConstants').
    recoveredValue8 := (recoveredValue5) fromPoolDictionary: (recoveredValue7) name: ('SGML') owner: (self).
    (recoveredValue3) registerEntitySet: (recoveredValue8).
    ^self
! !

