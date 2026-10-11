"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDConvUtil_base.ic method 0x200004a0; bytecode file offset 0x9eec"
!SGGraphicsBlockDB methodsFor: 'recovered'!
resetOperatorImplementation
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) blocks.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block28000a58Arg1 | 
    | block28000a58Value0 block28000a58Value1 |
    block28000a58Value0 := block28000a58Arg1.
    block28000a58Value1 := (block28000a58Value0) resetOperatorImplementation.
    block28000a58Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDConvUtil_base.ic method 0x20000c98; bytecode file offset 0xa6ec"
!SGGraphicsBlockDB methodsFor: 'recovered'!
addReferencedOpAliasNamesToSet: recoveredArg1 pathDict: recoveredArg2 prePath: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) blocks.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 recoveredBlock5Value6 recoveredBlock5Value7 recoveredBlock5Value8 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredArg1.
    recoveredBlock5Value2 := recoveredArg2.
    recoveredBlock5Value3 := recoveredArg3.
    recoveredBlock5Value4 := graphicBlock.
    recoveredBlock5Value5 := (recoveredBlock5Value4) name.
    recoveredBlock5Value6 := (recoveredBlock5Value3) , (recoveredBlock5Value5).
    recoveredBlock5Value7 := (recoveredBlock5Value6) , ('\').
    recoveredBlock5Value8 := (recoveredBlock5Value0) addReferencedOpAliasNamesToSet: (recoveredBlock5Value1) pathDict: (recoveredBlock5Value2) prePath: (recoveredBlock5Value7).
    recoveredBlock5Value8
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    ^recoveredValue2
! !

"ASDConvUtil_base.ic method 0x200010b8; bytecode file offset 0xab04"
!SGGraphicsBlockDB methodsFor: 'recovered'!
convertToAnsiCReplaceString: recoveredArg1 monitor: recoveredArg2 dictionary: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    super convertToAnsiCReplaceString: (recoveredValue0) monitor: (recoveredValue1) dictionary: (recoveredValue2).
    recoveredValue3 := graphicBlock.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := recoveredArg3.
    (recoveredValue3) convertToAnsiCReplaceString: (recoveredValue4) monitor: (recoveredValue5) dictionary: (recoveredValue6).
    recoveredValue7 := (self) blocks.
    recoveredValue8 := [:recoveredBlock33Arg1 | 
    | recoveredBlock33Value0 recoveredBlock33Value1 recoveredBlock33Value2 recoveredBlock33Value3 recoveredBlock33Value4 |
    recoveredBlock33Value0 := recoveredBlock33Arg1.
    recoveredBlock33Value1 := recoveredArg1.
    recoveredBlock33Value2 := recoveredArg2.
    recoveredBlock33Value3 := recoveredArg3.
    recoveredBlock33Value4 := (recoveredBlock33Value0) convertToAnsiCReplaceString: (recoveredBlock33Value1) monitor: (recoveredBlock33Value2) dictionary: (recoveredBlock33Value3).
    recoveredBlock33Value4
].
    (recoveredValue7) do: (recoveredValue8).
    ^self
! !

