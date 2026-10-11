"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20096480; bytecode file offset 0x992d7c"
!EtasToolAPISetting class methodsFor: 'recovered'!
createMaximumBitLengthFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) createFor: (recoveredValue0).
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) initMaximumBitLength.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20096490; bytecode file offset 0x992d7c"
!EtasToolAPISetting class methodsFor: 'recovered'!
createCodeGenerationPathFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) createFor: (recoveredValue0).
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) initCodeGenerationPath.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20096b40; bytecode file offset 0x9937fc"
!EtasToolAPISetting class methodsFor: 'recovered'!
createFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) codeGenerator: (recoveredValue2).
    ^recoveredValue0
! !

