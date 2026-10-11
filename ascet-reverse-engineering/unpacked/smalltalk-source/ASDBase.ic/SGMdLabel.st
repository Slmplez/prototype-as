"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20055e18; bytecode file offset 0x952a9c"
!SGMdLabel methodsFor: 'recovered'!
mdlAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) mdlLabel: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20069aa0; bytecode file offset 0x966bdc"
!SGMdLabel methodsFor: 'recovered'!
mdlLabel
    | recoveredValue0 |
    recoveredValue0 := name.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069fd0; bytecode file offset 0x966bdc"
!SGMdLabel methodsFor: 'recovered'!
mdlName
    | recoveredValue0 |
    recoveredValue0 := name.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006a120; bytecode file offset 0x966bdc"
!SGMdLabel methodsFor: 'recovered'!
name
    | recoveredValue0 |
    recoveredValue0 := name.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007722c; bytecode file offset 0x9757c8"
!SGMdLabel methodsFor: 'recovered'!
isMdlLabel
    ^true
! !

"ASDBase.ic method 0x20078174; bytecode file offset 0x9757c8"
!SGMdLabel methodsFor: 'recovered'!
isMdlBlockVarDecl
    ^true
! !

"ASDBase.ic method 0x2009fcfc; bytecode file offset 0x99c9e0"
!SGMdLabel methodsFor: 'recovered'!
genIleTempDecl
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := (recoveredValue0) labelDecl.
    (self) name: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200c1500; bytecode file offset 0x9bdf14"
!SGMdLabel methodsFor: 'recovered'!
name: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    name := recoveredValue0.
    ^self
! !

