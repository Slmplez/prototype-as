"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200d61bc; bytecode file offset 0x9d3134"
!SGTopCodeBlock methodsFor: 'recovered'!
analyzeSyntax
    super analyze.
    (self) analyzeSyntaxForComponent.
    ^self
! !

"ASDBase.ic method 0x200d6248; bytecode file offset 0x9d3134"
!SGTopCodeBlock methodsFor: 'recovered'!
analyze
    super analyze.
    (self) analyzeComponent.
    ^self
! !

"ASDBase.ic method 0x201241c0; bytecode file offset 0xa20a94"
!SGTopCodeBlock methodsFor: 'recovered'!
sequencing: recoveredArg1 onBlocks: recoveredArg2 useInfo: recoveredArg3 monitorStream: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg4.
    recoveredValue4 := super sequencing: (recoveredValue0) onBlocks: (recoveredValue1) useInfo: (recoveredValue2) monitorStream: (recoveredValue3).
    recoveredValue5 := recoveredArg3.
    (recoveredValue4) autoNumberingComponentUseNumberInfo: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x20177e58; bytecode file offset 0xa7490c"
!SGTopCodeBlock methodsFor: 'recovered'!
collectCharacteristicValuesIn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) children.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredArg1.
    recoveredBlock5Value2 := (recoveredBlock5Value0) collectCharacteristicValuesIn: (recoveredBlock5Value1).
    recoveredBlock5Value2
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

