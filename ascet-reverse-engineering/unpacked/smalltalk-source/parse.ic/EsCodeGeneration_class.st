"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"parse.ic method 0x20000068; bytecode file offset 0x156c4"
!EsCodeGeneration class methodsFor: 'recovered'!
_PRAGMA_NlsCatESa
    ^self
! !

"parse.ic method 0x200001a0; bytecode file offset 0x15834"
!EsCodeGeneration class methodsFor: 'recovered'!
packagerKnownSymbols
    ^#('LOCAL' 'INSTVAR' 'CLASSVAR' 'GLOBAL' 'POOLVAR' 'MAGICTRUE' 'MAGICFALSE' 'MAGICNIL' 'MAGICSELF' 'MAGICSUPER' 'ASSOC')
! !

"parse.ic method 0x200006e4; bytecode file offset 0x15d44"
!EsCodeGeneration class methodsFor: 'recovered'!
packagerIncludeClasses
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := EsParseNode.
    recoveredValue1 := (recoveredValue0) withAllSubclasses.
    recoveredValue2 := (recoveredValue1) asArray.
    ^recoveredValue2
! !

"parse.ic method 0x200014ac; bytecode file offset 0x16b0c"
!EsCodeGeneration class methodsFor: 'recovered'!
localize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := NlsCatESa.
    recoveredValue1 := (self) defaultMessagesLocale.
    (recoveredValue0) relocalizeTo: (recoveredValue1).
    ^self
! !

"parse.ic method 0x200020b8; bytecode file offset 0x1771c"
!EsCodeGeneration class methodsFor: 'recovered'!
loaded
    | recoveredValue0 |
    (self) localize.
    recoveredValue0 := System.
    (recoveredValue0) byteCodeVersion: ('4.0').
    ^self
! !

