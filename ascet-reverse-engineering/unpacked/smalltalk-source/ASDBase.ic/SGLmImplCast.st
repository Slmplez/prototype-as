"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20002448; bytecode file offset 0x8ffcfc"
!SGLmImplCast methodsFor: 'recovered'!
mdlInstVarInit
    ^self
! !

"ASDBase.ic method 0x200026e0; bytecode file offset 0x8ffcfc"
!SGLmImplCast methodsFor: 'recovered'!
mdlCodeSyntax
    ^self
! !

"ASDBase.ic method 0x200040a0; bytecode file offset 0x90206c"
!SGLmImplCast methodsFor: 'recovered'!
buildMdlImplInfoCaching: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x2007955c; bytecode file offset 0x97c330"
!SGLmImplCast methodsFor: 'recovered'!
isRead
    ^false
! !

"ASDBase.ic method 0x2007a2fc; bytecode file offset 0x97c330"
!SGLmImplCast methodsFor: 'recovered'!
isIn
    ^false
! !

"ASDBase.ic method 0x2007a694; bytecode file offset 0x97c330"
!SGLmImplCast methodsFor: 'recovered'!
isOut
    ^false
! !

"ASDBase.ic method 0x2007bedc; bytecode file offset 0x97c330"
!SGLmImplCast methodsFor: 'recovered'!
isRedundantData
    ^false
! !

"ASDBase.ic method 0x2007d5e4; bytecode file offset 0x97c330"
!SGLmImplCast methodsFor: 'recovered'!
isWrite
    ^false
! !

"ASDBase.ic method 0x201b2da4; bytecode file offset 0xaaf678"
!SGLmImplCast methodsFor: 'recovered'!
mdlInstVarDecl: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    (self) mdlVarAttributes.
    (self) buildMdlDeclSource.
    recoveredValue0 := (self) mdlBuilder.
    recoveredValue1 := (self) checkedModelName.
    recoveredValue2 := (self) mdlClassType.
    recoveredValue3 := (self) mdlImplementation.
    recoveredValue4 := (self) createType: (recoveredValue2) implementation: (recoveredValue3).
    (recoveredValue0) implCastDecl: (recoveredValue1) class: (recoveredValue4).
    ^self
! !

