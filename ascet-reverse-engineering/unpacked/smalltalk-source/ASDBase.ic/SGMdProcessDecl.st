"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2002303c; bytecode file offset 0x92209c"
!SGMdProcessDecl methodsFor: 'recovered'!
errLabelKind
    ^'process'
! !

"ASDBase.ic method 0x20023a8c; bytecode file offset 0x92209c"
!SGMdProcessDecl methodsFor: 'recovered'!
sixPathKind
    ^'asd:process'
! !

"ASDBase.ic method 0x20024b0c; bytecode file offset 0x92209c"
!SGMdProcessDecl methodsFor: 'recovered'!
genSixVisibility
    ^'public'
! !

"ASDBase.ic method 0x20028d24; bytecode file offset 0x934580"
!SGMdProcessDecl methodsFor: 'recovered'!
isMdlMsgCopySendProcess
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) attributes.
    recoveredValue1 := (recoveredValue0) isCgAttrMsgCopySendProcess.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002e404; bytecode file offset 0x934580"
!SGMdProcessDecl methodsFor: 'recovered'!
isMdlMsgCopyReceiveProcess
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) attributes.
    recoveredValue1 := (recoveredValue0) isCgAttrMsgCopyReceiveProcess.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200379a4; bytecode file offset 0x934580"
!SGMdProcessDecl methodsFor: 'recovered'!
isMdlMsgCopyProcessDecl
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) attributes.
    recoveredValue1 := (recoveredValue0) isCgAttrMsgCopyProcess.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20055b60; bytecode file offset 0x952a9c"
!SGMdProcessDecl methodsFor: 'recovered'!
mdlAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) processDecl: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006f150; bytecode file offset 0x96bc1c"
!SGMdProcessDecl methodsFor: 'recovered'!
body
    | recoveredValue0 |
    recoveredValue0 := body.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20077154; bytecode file offset 0x9757c8"
!SGMdProcessDecl methodsFor: 'recovered'!
isMdlProcessDecl
    ^true
! !

"ASDBase.ic method 0x200b4294; bytecode file offset 0x9b0bd0"
!SGMdProcessDecl methodsFor: 'recovered'!
genSixCName
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := (self) mdlLabel.
    recoveredValue2 := (self) scope.
    recoveredValue3 := (recoveredValue0) genSixCNameForExecutable: (recoveredValue1) scope: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200c5754; bytecode file offset 0x9c22c8"
!SGMdProcessDecl methodsFor: 'recovered'!
body: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    body := recoveredValue0.
    ^self
! !

