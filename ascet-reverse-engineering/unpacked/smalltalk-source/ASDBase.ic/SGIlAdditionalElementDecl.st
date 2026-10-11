"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000a4e4; bytecode file offset 0x908be4"
!SGIlAdditionalElementDecl methodsFor: 'recovered'!
errLabel
    | recoveredValue0 |
    recoveredValue0 := (self) genName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20054ca8; bytecode file offset 0x952a9c"
!SGIlAdditionalElementDecl methodsFor: 'recovered'!
ileAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) additionalElementDecl: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006bebc; bytecode file offset 0x9692b0"
!SGIlAdditionalElementDecl methodsFor: 'recovered'!
initValue
    | recoveredValue0 |
    recoveredValue0 := initValue.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006ce78; bytecode file offset 0x969c04"
!SGIlAdditionalElementDecl methodsFor: 'recovered'!
attributes
    | recoveredValue0 |
    recoveredValue0 := attributes.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20076bf4; bytecode file offset 0x9757c8"
!SGIlAdditionalElementDecl methodsFor: 'recovered'!
isIleAdditionalDecl
    ^true
! !

"ASDBase.ic method 0x2007dec4; bytecode file offset 0x97c330"
!SGIlAdditionalElementDecl methodsFor: 'recovered'!
isMdlSystemConstant
    ^false
! !

"ASDBase.ic method 0x2007e86c; bytecode file offset 0x97c330"
!SGIlAdditionalElementDecl methodsFor: 'recovered'!
isMdlBlockVarDecl
    ^false
! !

"ASDBase.ic method 0x200d43b4; bytecode file offset 0x9d0c98"
!SGIlAdditionalElementDecl methodsFor: 'recovered'!
ileEccoKey
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := (self) ileLabel.
    recoveredValue2 := (self) scope.
    recoveredValue3 := (recoveredValue2) component.
    recoveredValue4 := (recoveredValue0) dbKeyForElement: (recoveredValue1) in: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x2013f3d8; bytecode file offset 0xa3bca4"
!SGIlAdditionalElementDecl methodsFor: 'recovered'!
ileReferenceType
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) type.
    recoveredValue1 := (self) attributes.
    recoveredValue2 := (recoveredValue1) isCgAttrRead.
    recoveredValue3 := (self) attributes.
    recoveredValue4 := (recoveredValue3) isCgAttrWrite.
    recoveredValue5 := (self) attributes.
    recoveredValue6 := (recoveredValue5) memoryClass.
    recoveredValue7 := (recoveredValue0) asCgReferenceRead: (recoveredValue2) write: (recoveredValue4) memClass: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x201987dc; bytecode file offset 0xa950b8"
!SGIlAdditionalElementDecl methodsFor: 'recovered'!
initializeSource: recoveredArg1 genName: recoveredArg2 label: recoveredArg3 type: recoveredArg4 scope: recoveredArg5 initValue: recoveredArg6 attributes: recoveredArg7
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg6.
    initValue := recoveredValue0.
    recoveredValue1 := recoveredArg7.
    attributes := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := recoveredArg4.
    recoveredValue6 := recoveredArg5.
    super initializeSource: (recoveredValue2) genName: (recoveredValue3) label: (recoveredValue4) type: (recoveredValue5) scope: (recoveredValue6).
    ^self
! !

