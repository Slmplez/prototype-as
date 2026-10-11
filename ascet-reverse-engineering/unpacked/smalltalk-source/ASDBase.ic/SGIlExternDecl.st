"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20027db4; bytecode file offset 0x934580"
!SGIlExternDecl methodsFor: 'recovered'!
initValue
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) internDecl.
    recoveredValue1 := (recoveredValue0) initValue.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200294c4; bytecode file offset 0x934580"
!SGIlExternDecl methodsFor: 'recovered'!
ileLabel
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) internDecl.
    recoveredValue1 := (recoveredValue0) ileLabel.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20029ca4; bytecode file offset 0x934580"
!SGIlExternDecl methodsFor: 'recovered'!
scope
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) internDecl.
    recoveredValue1 := (recoveredValue0) scope.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002eec4; bytecode file offset 0x934580"
!SGIlExternDecl methodsFor: 'recovered'!
representsIleMessageDecl
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) internDecl.
    recoveredValue1 := (recoveredValue0) representsIleMessageDecl.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002ef04; bytecode file offset 0x934580"
!SGIlExternDecl methodsFor: 'recovered'!
errLabel
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) internDecl.
    recoveredValue1 := (recoveredValue0) ileLabel.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200305e4; bytecode file offset 0x934580"
!SGIlExternDecl methodsFor: 'recovered'!
type
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) internDecl.
    recoveredValue1 := (recoveredValue0) type.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20032434; bytecode file offset 0x934580"
!SGIlExternDecl methodsFor: 'recovered'!
attributes
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) internDecl.
    recoveredValue1 := (recoveredValue0) attributes.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20055c38; bytecode file offset 0x952a9c"
!SGIlExternDecl methodsFor: 'recovered'!
ileAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) externDecl: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200694b8; bytecode file offset 0x966bdc"
!SGIlExternDecl methodsFor: 'recovered'!
internDecl
    | recoveredValue0 |
    recoveredValue0 := internDecl.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20074cbc; bytecode file offset 0x9757c8"
!SGIlExternDecl methodsFor: 'recovered'!
isIleExternDecl
    ^true
! !

"ASDBase.ic method 0x20101bc0; bytecode file offset 0x9fe54c"
!SGIlExternDecl methodsFor: 'recovered'!
initializeSource: recoveredArg1 genName: recoveredArg2 internDecl: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg3.
    internDecl := recoveredValue0.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    super initializeSource: (recoveredValue1) genName: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2013f3b8; bytecode file offset 0xa3bca4"
!SGIlExternDecl methodsFor: 'recovered'!
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

