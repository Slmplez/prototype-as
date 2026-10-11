"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2002f2f4; bytecode file offset 0x934580"
!SGMdCompileTimeRestriction methodsFor: 'recovered'!
errorMsg
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) errorMsgBlock.
    recoveredValue1 := (recoveredValue0) value.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003de18; bytecode file offset 0x93bf94"
!SGMdCompileTimeRestriction methodsFor: 'recovered'!
mdlBuilder
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGMdBuilder.
    recoveredValue1 := (recoveredValue0) currentMdlBuilder.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200665fc; bytecode file offset 0x963428"
!SGMdCompileTimeRestriction methodsFor: 'recovered'!
generatorBlock
    | recoveredValue0 |
    recoveredValue0 := generatorBlock.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006781c; bytecode file offset 0x9646f8"
!SGMdCompileTimeRestriction methodsFor: 'recovered'!
errorMsgBlock
    | recoveredValue0 |
    recoveredValue0 := errorMsgBlock.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20068d4c; bytecode file offset 0x965b90"
!SGMdCompileTimeRestriction methodsFor: 'recovered'!
onWarningDo
    | recoveredValue0 |
    recoveredValue0 := onWarningDo.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006a754; bytecode file offset 0x967a18"
!SGMdCompileTimeRestriction methodsFor: 'recovered'!
mdlExpr
    | recoveredValue0 |
    recoveredValue0 := mdlExpr.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200be4bc; bytecode file offset 0x9bb178"
!SGMdCompileTimeRestriction methodsFor: 'recovered'!
generatorBlock: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    generatorBlock := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bf6d0; bytecode file offset 0x9bc0b4"
!SGMdCompileTimeRestriction methodsFor: 'recovered'!
errorMsgBlock: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    errorMsgBlock := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c05a4; bytecode file offset 0x9bd228"
!SGMdCompileTimeRestriction methodsFor: 'recovered'!
onWarningDo: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    onWarningDo := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c14a8; bytecode file offset 0x9bdf14"
!SGMdCompileTimeRestriction methodsFor: 'recovered'!
errorMsg: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    errorMsg := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x201097b4; bytecode file offset 0xa06078"
!SGMdCompileTimeRestriction methodsFor: 'recovered'!
generate
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) generatorBlock.
    recoveredValue1 := (self) mdlBuilder.
    (recoveredValue0) value: (recoveredValue1).
    recoveredValue2 := (self) mdlBuilder.
    recoveredValue3 := (recoveredValue2) popExpr.
    mdlExpr := recoveredValue3.
    ^self
! !

