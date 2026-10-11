"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000bbd0; bytecode file offset 0x908be4"
!SGIlAbstractFunctionDecl methodsFor: 'recovered'!
attributes
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2005547c; bytecode file offset 0x952a9c"
!SGIlAbstractFunctionDecl methodsFor: 'recovered'!
ileAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) abstractFunctionDecl: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006a198; bytecode file offset 0x966bdc"
!SGIlAbstractFunctionDecl methodsFor: 'recovered'!
ileLabel
    | recoveredValue0 |
    recoveredValue0 := ileLabel.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006ae84; bytecode file offset 0x967a18"
!SGIlAbstractFunctionDecl methodsFor: 'recovered'!
type
    | recoveredValue0 |
    recoveredValue0 := type.
    ^recoveredValue0
! !

"ASDBase.ic method 0x201366dc; bytecode file offset 0xa32fb8"
!SGIlAbstractFunctionDecl methodsFor: 'recovered'!
initializeSource: recoveredArg1 genName: recoveredArg2 label: recoveredArg3 type: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg3.
    ileLabel := recoveredValue0.
    recoveredValue1 := recoveredArg4.
    type := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    super initializeSource: (recoveredValue2) genName: (recoveredValue3).
    ^self
! !

