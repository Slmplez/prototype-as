"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20055020; bytecode file offset 0x952a9c"
!SGMdTempVarDecl methodsFor: 'recovered'!
mdlAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) mdlTempVarDecl: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2007788c; bytecode file offset 0x9757c8"
!SGMdTempVarDecl methodsFor: 'recovered'!
isMdlAssigned
    ^true
! !

"ASDBase.ic method 0x200789e4; bytecode file offset 0x9757c8"
!SGMdTempVarDecl methodsFor: 'recovered'!
isMdlTempVar
    ^true
! !

"ASDBase.ic method 0x200d22b4; bytecode file offset 0x9cebc0"
!SGMdTempVarDecl methodsFor: 'recovered'!
errLabel
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super errLabel.
    recoveredValue1 := ('temporary variable ') , (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200d57cc; bytecode file offset 0x9d2090"
!SGMdTempVarDecl methodsFor: 'recovered'!
deepCopy
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := super deepCopy.
    recoveredValue1 := (self) attributes.
    recoveredValue2 := (recoveredValue1) deepCopy.
    recoveredValue3 := (recoveredValue0) attributes: (recoveredValue2).
    ^recoveredValue3
! !

