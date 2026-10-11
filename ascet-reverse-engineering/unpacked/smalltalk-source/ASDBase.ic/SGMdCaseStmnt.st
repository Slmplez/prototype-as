"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20033d84; bytecode file offset 0x934580"
!SGMdCaseStmnt methodsFor: 'recovered'!
switchExpr
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) switchStmnt.
    recoveredValue1 := (recoveredValue0) exprChild.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20054d8c; bytecode file offset 0x952a9c"
!SGMdCaseStmnt methodsFor: 'recovered'!
mdlAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) caseStmnt: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006ce00; bytecode file offset 0x969c04"
!SGMdCaseStmnt methodsFor: 'recovered'!
literal
    | recoveredValue0 |
    recoveredValue0 := literal.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d474; bytecode file offset 0x96a390"
!SGMdCaseStmnt methodsFor: 'recovered'!
switchStmnt
    | recoveredValue0 |
    recoveredValue0 := switchStmnt.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200758dc; bytecode file offset 0x9757c8"
!SGMdCaseStmnt methodsFor: 'recovered'!
isMdlCaseStmnt
    ^true
! !

"ASDBase.ic method 0x20079edc; bytecode file offset 0x97c330"
!SGMdCaseStmnt methodsFor: 'recovered'!
isMdlDefaultStmnt
    ^false
! !

"ASDBase.ic method 0x2009f57c; bytecode file offset 0x99c9e0"
!SGMdCaseStmnt methodsFor: 'recovered'!
semAnaCovertCaseLiteralToUdisc
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) literal.
    recoveredValue1 := (recoveredValue0) convertEnumToNumExpr.
    (self) literal: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200c3b08; bytecode file offset 0x9c058c"
!SGMdCaseStmnt methodsFor: 'recovered'!
literal: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    literal := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c3dcc; bytecode file offset 0x9c0bf0"
!SGMdCaseStmnt methodsFor: 'recovered'!
switchStmnt: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    switchStmnt := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x201180e4; bytecode file offset 0xa14a44"
!SGMdCaseStmnt methodsFor: 'recovered'!
needsIntegerCode
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) switchStmnt.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) needsIntegerCode.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) literal.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) needsIntegerCode.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201e6a0c; bytecode file offset 0xae32dc"
!SGMdCaseStmnt methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) nextPutAll: ('case ').
    recoveredValue1 := (self) literal.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) printOn: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredValue3.
    (recoveredValue4) nextPutAll: (' : ').
    (recoveredValue3) cr.
    recoveredValue5 := (self) child.
    recoveredValue6 := recoveredArg1.
    (recoveredValue5) printOn: (recoveredValue6).
    ^self
! !

