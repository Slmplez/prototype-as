"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20001468; bytecode file offset 0x8ffcfc"
!SGMdPseudoBuilder methodsFor: 'recovered'!
asMdlInlineBuilder
    ^self
! !

"ASDBase.ic method 0x200016b8; bytecode file offset 0x8ffcfc"
!SGMdPseudoBuilder methodsFor: 'recovered'!
asMdlMacroBuilder
    ^self
! !

"ASDBase.ic method 0x2004df94; bytecode file offset 0x94d048"
!SGMdPseudoBuilder methodsFor: 'recovered'!
baseInitialize
    (self) resetBodyCode.
    ^self
! !

"ASDBase.ic method 0x2004f1b8; bytecode file offset 0x94d048"
!SGMdPseudoBuilder methodsFor: 'recovered'!
reset
    (self) baseInitialize.
    ^self
! !

"ASDBase.ic method 0x200501b4; bytecode file offset 0x94d048"
!SGMdPseudoBuilder methodsFor: 'recovered'!
resetForBaseDecl
    (self) baseInitialize.
    ^self
! !

"ASDBase.ic method 0x20052e9c; bytecode file offset 0x9505d0"
!SGMdPseudoBuilder methodsFor: 'recovered'!
inline: recoveredArg1
    (self) etasCodeGenHalt.
    ^self
! !

"ASDBase.ic method 0x2005b010; bytecode file offset 0x957a6c"
!SGMdPseudoBuilder methodsFor: 'recovered'!
inlineDecl: recoveredArg1 return: recoveredArg2 implementation: recoveredArg3
    (self) etasCodeGenHalt.
    ^self
! !

"ASDBase.ic method 0x2005d1d8; bytecode file offset 0x959af0"
!SGMdPseudoBuilder methodsFor: 'recovered'!
public
    | recoveredValue0 |
    recoveredValue0 := builder.
    (recoveredValue0) public.
    ^self
! !

"ASDBase.ic method 0x2005d214; bytecode file offset 0x959af0"
!SGMdPseudoBuilder methodsFor: 'recovered'!
endBaseClassDecl
    | recoveredValue0 |
    recoveredValue0 := builder.
    (recoveredValue0) endBaseClassDecl.
    ^self
! !

"ASDBase.ic method 0x2005d220; bytecode file offset 0x959af0"
!SGMdPseudoBuilder methodsFor: 'recovered'!
private
    | recoveredValue0 |
    recoveredValue0 := builder.
    (recoveredValue0) private.
    ^self
! !

"ASDBase.ic method 0x20066674; bytecode file offset 0x963428"
!SGMdPseudoBuilder methodsFor: 'recovered'!
builder
    | recoveredValue0 |
    recoveredValue0 := builder.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006767c; bytecode file offset 0x9646f8"
!SGMdPseudoBuilder methodsFor: 'recovered'!
bodyCode
    | recoveredValue0 |
    recoveredValue0 := bodyCode.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20089668; bytecode file offset 0x985fa4"
!SGMdPseudoBuilder methodsFor: 'recovered'!
resetBodyCode
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    bodyCode := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x200924f0; bytecode file offset 0x98ef64"
!SGMdPseudoBuilder methodsFor: 'recovered'!
buildInEnumDecl: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := builder.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) enumDecl: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200ac698; bytecode file offset 0x9a8ff8"
!SGMdPseudoBuilder methodsFor: 'recovered'!
parmDecl: recoveredArg1 class: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := builder.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) parmDecl: (recoveredValue1) class: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200be40c; bytecode file offset 0x9bb178"
!SGMdPseudoBuilder methodsFor: 'recovered'!
builder: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    builder := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d6770; bytecode file offset 0x9d3134"
!SGMdPseudoBuilder methodsFor: 'recovered'!
initialize
    super initialize.
    (self) baseInitialize.
    ^self
! !

