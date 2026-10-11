"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20008168; bytecode file offset 0x908be4"
!SGIlAbstractDecl methodsFor: 'recovered'!
ileLabel
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000902c; bytecode file offset 0x908be4"
!SGIlAbstractDecl methodsFor: 'recovered'!
ileElementKey
    | recoveredValue0 |
    recoveredValue0 := (self) ileLabel.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20009bfc; bytecode file offset 0x908be4"
!SGIlAbstractDecl methodsFor: 'recovered'!
type
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20009e0c; bytecode file offset 0x908be4"
!SGIlAbstractDecl methodsFor: 'recovered'!
ileSortLabel
    | recoveredValue0 |
    recoveredValue0 := (self) genName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000b324; bytecode file offset 0x908be4"
!SGIlAbstractDecl methodsFor: 'recovered'!
representsIleMessageDecl
    | recoveredValue0 |
    recoveredValue0 := (self) isIleMessageDecl.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200559b0; bytecode file offset 0x952a9c"
!SGIlAbstractDecl methodsFor: 'recovered'!
ileAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) abstractDecl: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20069264; bytecode file offset 0x965b90"
!SGIlAbstractDecl methodsFor: 'recovered'!
genName
    | recoveredValue0 |
    recoveredValue0 := genName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007ad74; bytecode file offset 0x97c330"
!SGIlAbstractDecl methodsFor: 'recovered'!
isIleRunnableDecl
    ^false
! !

"ASDBase.ic method 0x2007c1dc; bytecode file offset 0x97c330"
!SGIlAbstractDecl methodsFor: 'recovered'!
isIleProcessDecl
    ^false
! !

"ASDBase.ic method 0x2007cbbc; bytecode file offset 0x97c330"
!SGIlAbstractDecl methodsFor: 'recovered'!
isIleMessageDecl
    ^false
! !

"ASDBase.ic method 0x2007cca4; bytecode file offset 0x97c330"
!SGIlAbstractDecl methodsFor: 'recovered'!
isIleModelElementDecl
    ^false
! !

"ASDBase.ic method 0x2007e474; bytecode file offset 0x97c330"
!SGIlAbstractDecl methodsFor: 'recovered'!
isIleAdditionalDecl
    ^false
! !

"ASDBase.ic method 0x2007f144; bytecode file offset 0x97c330"
!SGIlAbstractDecl methodsFor: 'recovered'!
isIleSysConstDecl
    ^false
! !

"ASDBase.ic method 0x2007f84c; bytecode file offset 0x97c330"
!SGIlAbstractDecl methodsFor: 'recovered'!
isIleNoDecl
    ^false
! !

"ASDBase.ic method 0x2007f96c; bytecode file offset 0x97c330"
!SGIlAbstractDecl methodsFor: 'recovered'!
isIleExternDecl
    ^false
! !

"ASDBase.ic method 0x200eb74c; bytecode file offset 0x9e8038"
!SGIlAbstractDecl methodsFor: 'recovered'!
initializeSource: recoveredArg1 genName: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg2.
    genName := recoveredValue0.
    recoveredValue1 := recoveredArg1.
    super initializeSource: (recoveredValue1).
    ^self
! !

