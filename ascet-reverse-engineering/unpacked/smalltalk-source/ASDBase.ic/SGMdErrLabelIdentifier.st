"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2005619c; bytecode file offset 0x952a9c"
!SGMdErrLabelIdentifier methodsFor: 'recovered'!
mdlAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) mdlErrLabelIdentifier: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006a404; bytecode file offset 0x967a18"
!SGMdErrLabelIdentifier methodsFor: 'recovered'!
mdlClass
    | recoveredValue0 |
    recoveredValue0 := mdlClass.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006b550; bytecode file offset 0x96873c"
!SGMdErrLabelIdentifier methodsFor: 'recovered'!
errLabel
    | recoveredValue0 |
    recoveredValue0 := errLabel.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006c114; bytecode file offset 0x9692b0"
!SGMdErrLabelIdentifier methodsFor: 'recovered'!
baseDecl
    | recoveredValue0 |
    recoveredValue0 := baseDecl.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c1d74; bytecode file offset 0x9beac8"
!SGMdErrLabelIdentifier methodsFor: 'recovered'!
mdlClass: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    mdlClass := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2598; bytecode file offset 0x9bf474"
!SGMdErrLabelIdentifier methodsFor: 'recovered'!
errLabel: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    errLabel := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c3404; bytecode file offset 0x9bfde0"
!SGMdErrLabelIdentifier methodsFor: 'recovered'!
baseDecl: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    baseDecl := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200dea44; bytecode file offset 0x9db320"
!SGMdErrLabelIdentifier methodsFor: 'recovered'!
mdlSemInvalidInitValue: recoveredArg1 physInterval: recoveredArg2 errLabel: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) baseDecl.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    (recoveredValue0) mdlSemInvalidInitValue: (recoveredValue1) physInterval: (recoveredValue2) errLabel: (recoveredValue3).
    ^self
! !

