"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20054990; bytecode file offset 0x952a9c"
!SGMdAscetTempVarDecl methodsFor: 'recovered'!
mdlAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) mdlAscetTempVarDecl: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006e730; bytecode file offset 0x96b41c"
!SGMdAscetTempVarDecl methodsFor: 'recovered'!
errLabel
    | recoveredValue0 |
    recoveredValue0 := errLabel.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006ef24; bytecode file offset 0x96b8a0"
!SGMdAscetTempVarDecl methodsFor: 'recovered'!
ileTempIdentifier
    | recoveredValue0 |
    recoveredValue0 := ileTempIdentifier.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20076bdc; bytecode file offset 0x9757c8"
!SGMdAscetTempVarDecl methodsFor: 'recovered'!
isMdlAscetTempVar
    ^true
! !

"ASDBase.ic method 0x200c4fc8; bytecode file offset 0x9c1afc"
!SGMdAscetTempVarDecl methodsFor: 'recovered'!
errLabel: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    errLabel := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c52d0; bytecode file offset 0x9c1f64"
!SGMdAscetTempVarDecl methodsFor: 'recovered'!
ileTempIdentifier: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ileTempIdentifier := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d57b4; bytecode file offset 0x9d2090"
!SGMdAscetTempVarDecl methodsFor: 'recovered'!
deepCopy
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := super deepCopy.
    recoveredValue1 := (self) attributes.
    recoveredValue2 := (recoveredValue1) deepCopy.
    recoveredValue3 := (recoveredValue0) attributes: (recoveredValue2).
    ^recoveredValue3
! !

