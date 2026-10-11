"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001cc10; bytecode file offset 0x92209c"
!SGLmCCodeMethod methodsFor: 'recovered'!
specificationKind
    ^'C Code'
! !

"ASDBase.ic method 0x200338b4; bytecode file offset 0x934580"
!SGLmCCodeMethod methodsFor: 'recovered'!
ascetLinkCreateConfigForCGenMessage
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) logicManager.
    recoveredValue1 := (recoveredValue0) ascetLinkCreateConfigWithCodeVariantForCGenMessage.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004f38c; bytecode file offset 0x94d048"
!SGLmCCodeMethod methodsFor: 'recovered'!
buildMdlBodyForComponent
    (self) buildMdlBodyANSIC.
    ^self
! !

"ASDBase.ic method 0x20050a70; bytecode file offset 0x94d4ec"
!SGLmCCodeMethod methodsFor: 'recovered'!
preprocessedCode
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) logicManager.
    recoveredValue1 := (recoveredValue0) getPreprocessedCode: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006ea58; bytecode file offset 0x96b41c"
!SGLmCCodeMethod methodsFor: 'recovered'!
cppStartLine
    | recoveredValue0 |
    recoveredValue0 := cppStartLine.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c5008; bytecode file offset 0x9c1afc"
!SGLmCCodeMethod methodsFor: 'recovered'!
cppStartLine: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    cppStartLine := recoveredValue0.
    ^self
! !

