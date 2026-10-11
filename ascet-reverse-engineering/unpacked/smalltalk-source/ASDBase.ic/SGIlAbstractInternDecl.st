"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20055f38; bytecode file offset 0x952a9c"
!SGIlAbstractInternDecl methodsFor: 'recovered'!
ileAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) abstractInternDecl: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20069508; bytecode file offset 0x966bdc"
!SGIlAbstractInternDecl methodsFor: 'recovered'!
ileLabel
    | recoveredValue0 |
    recoveredValue0 := ileLabel.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006aad4; bytecode file offset 0x967a18"
!SGIlAbstractInternDecl methodsFor: 'recovered'!
type
    | recoveredValue0 |
    recoveredValue0 := type.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006b400; bytecode file offset 0x96873c"
!SGIlAbstractInternDecl methodsFor: 'recovered'!
scope
    | recoveredValue0 |
    recoveredValue0 := scope.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20179ee4; bytecode file offset 0xa767b0"
!SGIlAbstractInternDecl methodsFor: 'recovered'!
initializeSource: recoveredArg1 genName: recoveredArg2 label: recoveredArg3 type: recoveredArg4 scope: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg3.
    ileLabel := recoveredValue0.
    recoveredValue1 := recoveredArg4.
    type := recoveredValue1.
    recoveredValue2 := recoveredArg5.
    scope := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    super initializeSource: (recoveredValue3) genName: (recoveredValue4).
    ^self
! !

