"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200030c0; bytecode file offset 0x8ffcfc"
!SGMdScoopIxFunctionGenerator class methodsFor: 'recovered'!
resetCurrent
    ^self
! !

"ASDBase.ic method 0x20037c64; bytecode file offset 0x934580"
!SGMdScoopIxFunctionGenerator class methodsFor: 'recovered'!
create
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initialize.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200abfec; bytecode file offset 0x9a894c"
!SGMdScoopIxFunctionGenerator class methodsFor: 'recovered'!
create: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initialize.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) settings: (recoveredValue3).
    ^recoveredValue1
! !

"ASDBase.ic method 0x201db828; bytecode file offset 0xad80e8"
!SGMdScoopIxFunctionGenerator class methodsFor: 'recovered'!
selectScoopIxGeneratorClass: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) allSubclasses.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredArg1.
    recoveredBlock5Value2 := (recoveredBlock5Value0) matchesVersion: (recoveredBlock5Value1).
    recoveredBlock5Value2
].
    recoveredValue2 := [
    self
].
    recoveredValue3 := (recoveredValue0) detect: (recoveredValue1) ifNone: (recoveredValue2).
    ^recoveredValue3
! !

