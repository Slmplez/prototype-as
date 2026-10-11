"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20007fc4; bytecode file offset 0x908be4"
!TGCompilerTool class methodsFor: 'recovered'!
availableCompilerTools
    | recoveredValue0 |
    recoveredValue0 := (self) instances.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20008678; bytecode file offset 0x908be4"
!TGCompilerTool class methodsFor: 'recovered'!
availableCompilerToolLabels
    | recoveredValue0 |
    recoveredValue0 := (self) availableDeclarationLabels.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20076b64; bytecode file offset 0x9757c8"
!TGCompilerTool class methodsFor: 'recovered'!
isGeneric
    ^true
! !

"ASDBase.ic method 0x20086a40; bytecode file offset 0x98376c"
!TGCompilerTool class methodsFor: 'recovered'!
availableCompilerTool: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) availableDeclarationIdentifier: (recoveredValue0) ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200b1e1c; bytecode file offset 0x9ae708"
!TGCompilerTool class methodsFor: 'recovered'!
compilerToolType
    | recoveredValue0 |
    recoveredValue0 := ('Kli') == ('WHAT9370').
    ^nil
! !

"ASDBase.ic method 0x200b7bd8; bytecode file offset 0x9b44c0"
!TGCompilerTool class methodsFor: 'recovered'!
alreadyAvailableInstance: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := TGCompilerTool.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) availableCompilerTool: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200e5dec; bytecode file offset 0x9e26b0"
!TGCompilerTool class methodsFor: 'recovered'!
createInternalDeclarations
    | recoveredValue0 |
    super createInternalDeclarations.
    recoveredValue0 := TGNoCompilerTool.
    (recoveredValue0) create.
    ^self
! !

"ASDBase.ic method 0x2024c63c; bytecode file offset 0xb48f00"
!TGCompilerTool class methodsFor: 'recovered'!
collectAvailableCompilerTools: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) instances.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 |
    recoveredBlock5Value0 := recoveredArg1.
    recoveredBlock5Value1 := recoveredBlock5Arg1.
    recoveredBlock5Value2 := (recoveredBlock5Value1) compilerToolType.
    recoveredBlock5Value3 := [
    | recoveredBlock5Block19Value0 |
    recoveredBlock5Block19Value0 := recoveredBlock5Arg1.
    recoveredBlock5Block19Value0
].
    recoveredBlock5Value4 := (recoveredBlock5Value0) at: (recoveredBlock5Value2) ifAbsentPut: (recoveredBlock5Value3).
    recoveredBlock5Value4
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

