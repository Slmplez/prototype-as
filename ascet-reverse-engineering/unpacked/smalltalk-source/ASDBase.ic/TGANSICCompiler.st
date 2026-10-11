"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20030564; bytecode file offset 0x934580"
!TGANSICCompiler methodsFor: 'recovered'!
oldCompilerToolLabel
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) oldCompilerToolLabel.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20173808; bytecode file offset 0xa70108"
!TGANSICCompiler methodsFor: 'recovered'!
getPostBuildCommand
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) declaration.
    recoveredValue1 := [
    | recoveredBlock5Value0 |
    recoveredBlock5Value0 := (self) unknownPrePostCommand.
    ^recoveredBlock5Value0
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := super getPostBuildCommand.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20173824; bytecode file offset 0xa70108"
!TGANSICCompiler methodsFor: 'recovered'!
label
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) declaration.
    recoveredValue1 := [
    | recoveredBlock5Value0 |
    recoveredBlock5Value0 := (self) unknownLabel.
    ^recoveredBlock5Value0
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := super label.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20173840; bytecode file offset 0xa70108"
!TGANSICCompiler methodsFor: 'recovered'!
getPreBuildCommand
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) declaration.
    recoveredValue1 := [
    | recoveredBlock5Value0 |
    recoveredBlock5Value0 := (self) unknownPrePostCommand.
    ^recoveredBlock5Value0
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := super getPreBuildCommand.
    ^recoveredValue2
! !

"ASDBase.ic method 0x201ce3d0; bytecode file offset 0xacacb4"
!TGANSICCompiler methodsFor: 'recovered'!
checkForCompilerDeclaration: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) declaration.
    recoveredValue1 := [
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredArg1.
    recoveredBlock5Value1 := (self) errLabelDeclarationCategory.
    recoveredBlock5Value2 := (self) compilerToolType.
    (recoveredBlock5Value0) value: (recoveredBlock5Value1) value: (recoveredBlock5Value2).
    ^false
].
    (recoveredValue0) ifNil: (recoveredValue1).
    ^true
! !

