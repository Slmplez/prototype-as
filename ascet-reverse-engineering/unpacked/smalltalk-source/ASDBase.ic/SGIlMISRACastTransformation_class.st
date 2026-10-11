"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000df50; bytecode file offset 0x90ab8c"
!SGIlMISRACastTransformation class methodsFor: 'recovered'!
createForCodeGenerator: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) create.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20014364; bytecode file offset 0x912098"
!SGIlMISRACastTransformation class methodsFor: 'recovered'!
defaultArithServiceTransformation
    | recoveredValue0 |
    recoveredValue0 := SGIlRBDGSArithServiceCastingTransformation.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001a0e4; bytecode file offset 0x92209c"
!SGIlMISRACastTransformation class methodsFor: 'recovered'!
label
    ^'MISRA'
! !

"ASDBase.ic method 0x2002381c; bytecode file offset 0x92209c"
!SGIlMISRACastTransformation class methodsFor: 'recovered'!
optionString
    ^'MISRA compliant'
! !

"ASDBase.ic method 0x200782ec; bytecode file offset 0x9757c8"
!SGIlMISRACastTransformation class methodsFor: 'recovered'!
isReleased
    ^true
! !

"ASDBase.ic method 0x200961d0; bytecode file offset 0x992bec"
!SGIlMISRACastTransformation class methodsFor: 'recovered'!
checkRestrictions: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) target.
    (self) check16Or32Bit: (recoveredValue1).
    ^self
! !

