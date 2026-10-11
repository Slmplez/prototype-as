"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20067a54; bytecode file offset 0x9646f8"
!SGMdPrintOnTransformation methodsFor: 'recovered'!
stream
    | recoveredValue0 |
    recoveredValue0 := stream.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200956f8; bytecode file offset 0x991fb4"
!SGMdPrintOnTransformation methodsFor: 'recovered'!
logicNode: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) stream.
    (recoveredValue0) printOn: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20095f40; bytecode file offset 0x992bec"
!SGMdPrintOnTransformation methodsFor: 'recovered'!
parmAssign: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) rightChild.
    (self) visitMdlNode: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200aae50; bytecode file offset 0x9a7774"
!SGMdPrintOnTransformation methodsFor: 'recovered'!
autosarRteStatus: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) stream.
    (recoveredValue0) nextPutAll: ('rteStatus').
    ^self
! !

"ASDBase.ic method 0x200abb6c; bytecode file offset 0x9a85bc"
!SGMdPrintOnTransformation methodsFor: 'recovered'!
ansiCExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) stream.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) template.
    (recoveredValue0) nextPutAll: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200bd6cc; bytecode file offset 0x9b9f90"
!SGMdPrintOnTransformation methodsFor: 'recovered'!
literal: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) stream.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) value.
    recoveredValue3 := (recoveredValue2) asString.
    (recoveredValue0) nextPutAll: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x200c819c; bytecode file offset 0x9c4a54"
!SGMdPrintOnTransformation methodsFor: 'recovered'!
mdNode: recoveredArg1 printOn: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg2.
    stream := recoveredValue0.
    recoveredValue1 := recoveredArg1.
    (self) visitMdlNode: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200ea5b4; bytecode file offset 0x9e6ea8"
!SGMdPrintOnTransformation methodsFor: 'recovered'!
breakStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) stream.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) nextPutAll: ('break;').
    (recoveredValue0) cr.
    ^self
! !

"ASDBase.ic method 0x200ea5e4; bytecode file offset 0x9e6ea8"
!SGMdPrintOnTransformation methodsFor: 'recovered'!
exitStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) stream.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) nextPutAll: ('return;').
    (recoveredValue0) cr.
    ^self
! !

"ASDBase.ic method 0x2010f1ac; bytecode file offset 0xa0ba70"
!SGMdPrintOnTransformation methodsFor: 'recovered'!
mdlAutosarMapping: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    super mdlAutosarMapping: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) stream.
    (recoveredValue1) printMappingOn: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20132dc0; bytecode file offset 0xa2f6a8"
!SGMdPrintOnTransformation methodsFor: 'recovered'!
externBlock: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) code.
    recoveredValue2 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := (self) visitMdlNode: (recoveredBlock6Value0).
    recoveredBlock6Value1
].
    (recoveredValue1) do: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20154998; bytecode file offset 0xa51260"
!SGMdPrintOnTransformation methodsFor: 'recovered'!
exprStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) exprChild.
    (self) visitMdlNode: (recoveredValue1).
    recoveredValue2 := (self) stream.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) nextPut: ($;).
    (recoveredValue2) cr.
    ^self
! !

"ASDBase.ic method 0x2015518c; bytecode file offset 0xa51a58"
!SGMdPrintOnTransformation methodsFor: 'recovered'!
defaultStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) stream.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) nextPutAll: ('default:').
    (recoveredValue0) cr.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) child.
    (self) visitMdlNode: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20176350; bytecode file offset 0xa72c1c"
!SGMdPrintOnTransformation methodsFor: 'recovered'!
assignExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) variable.
    (self) visitMdlNode: (recoveredValue1).
    recoveredValue2 := (self) stream.
    (recoveredValue2) nextPutAll: (' = ').
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) rightChild.
    (self) visitMdlNode: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x201949e4; bytecode file offset 0xa912b0"
!SGMdPrintOnTransformation methodsFor: 'recovered'!
fieldAccess: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) expr.
    (self) visitMdlNode: (recoveredValue1).
    recoveredValue2 := (self) stream.
    (recoveredValue2) nextPut: ($.).
    recoveredValue3 := recoveredArg1.
    super fieldAccess: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2019541c; bytecode file offset 0xa91d08"
!SGMdPrintOnTransformation methodsFor: 'recovered'!
mdlRedundantVerifyExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) stream.
    (recoveredValue0) nextPutAll: ('verify(').
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) identifier.
    (self) visitMdlNode: (recoveredValue2).
    recoveredValue3 := (self) stream.
    (recoveredValue3) nextPut: ($)).
    ^self
! !

"ASDBase.ic method 0x201a6608; bytecode file offset 0xaa2ed8"
!SGMdPrintOnTransformation methodsFor: 'recovered'!
choiceExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) literal.
    (self) visitMdlNode: (recoveredValue1).
    recoveredValue2 := (self) stream.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) nextPutAll: (' : ').
    (recoveredValue2) cr.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) exprChild.
    (self) visitMdlNode: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x201a6f38; bytecode file offset 0xaa3808"
!SGMdPrintOnTransformation methodsFor: 'recovered'!
returnStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) stream.
    (recoveredValue0) nextPutAll: ('return ').
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) child.
    (self) visitMdlNode: (recoveredValue2).
    recoveredValue3 := (self) stream.
    recoveredValue4 := recoveredValue3.
    (recoveredValue4) nextPutAll: (';').
    (recoveredValue3) cr.
    ^self
! !

"ASDBase.ic method 0x201da930; bytecode file offset 0xad7248"
!SGMdPrintOnTransformation methodsFor: 'recovered'!
switchStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) stream.
    (recoveredValue0) nextPutAll: ('switch (').
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) exprChild.
    (self) visitMdlNode: (recoveredValue2).
    recoveredValue3 := (self) stream.
    (recoveredValue3) nextPutAll: (') ').
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) stmntChild.
    (self) visitMdlNode: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x201da954; bytecode file offset 0xad7248"
!SGMdPrintOnTransformation methodsFor: 'recovered'!
ifThenStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) stream.
    (recoveredValue0) nextPutAll: ('if (').
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) exprChild.
    (self) visitMdlNode: (recoveredValue2).
    recoveredValue3 := (self) stream.
    (recoveredValue3) nextPutAll: (') ').
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) trueChild.
    (self) visitMdlNode: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x201da978; bytecode file offset 0xad7248"
!SGMdPrintOnTransformation methodsFor: 'recovered'!
whileStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) stream.
    (recoveredValue0) nextPutAll: ('while (').
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) exprChild.
    (self) visitMdlNode: (recoveredValue2).
    recoveredValue3 := (self) stream.
    (recoveredValue3) nextPutAll: (') ').
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) stmntChild.
    (self) visitMdlNode: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x201e7e2c; bytecode file offset 0xae4700"
!SGMdPrintOnTransformation methodsFor: 'recovered'!
implCast: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) stream.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) variable.
    recoveredValue4 := (recoveredValue3) errLabel.
    (recoveredValue1) nextPutAll: (recoveredValue4).
    (recoveredValue0) nextPutAll: ('(').
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) rightChild.
    (self) visitMdlNode: (recoveredValue6).
    recoveredValue7 := (self) stream.
    (recoveredValue7) nextPutAll: (')').
    ^self
! !

"ASDBase.ic method 0x20202a30; bytecode file offset 0xaff304"
!SGMdPrintOnTransformation methodsFor: 'recovered'!
caseStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) stream.
    (recoveredValue0) nextPutAll: ('case ').
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) literal.
    (self) visitMdlNode: (recoveredValue2).
    recoveredValue3 := (self) stream.
    recoveredValue4 := recoveredValue3.
    (recoveredValue4) nextPutAll: (' : ').
    (recoveredValue3) cr.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) child.
    (self) visitMdlNode: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x2023eb80; bytecode file offset 0xb3b450"
!SGMdPrintOnTransformation methodsFor: 'recovered'!
identifier: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) accessChain.
    recoveredValue2 := (recoveredValue1) reverse.
    recoveredValue3 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 |
    recoveredBlock7Value0 := (self) stream.
    recoveredBlock7Value1 := recoveredBlock7Arg1.
    recoveredBlock7Value2 := (recoveredBlock7Value1) errLabel.
    recoveredBlock7Value3 := (recoveredBlock7Value0) nextPutAll: (recoveredBlock7Value2).
    recoveredBlock7Value3
].
    recoveredValue4 := [
    | recoveredBlock20Value0 recoveredBlock20Value1 |
    recoveredBlock20Value0 := (self) stream.
    recoveredBlock20Value1 := (recoveredBlock20Value0) nextPut: ($.).
    recoveredBlock20Value1
].
    (recoveredValue2) do: (recoveredValue3) separatedBy: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20256880; bytecode file offset 0xb53158"
!SGMdPrintOnTransformation methodsFor: 'recovered'!
methodBody: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            super methodBody: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) method.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) errLabel.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) stream.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := ' ('.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) method.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) errLabel.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := ')'.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20256964; bytecode file offset 0xb53240"
!SGMdPrintOnTransformation methodsFor: 'recovered'!
autosarRTECallWithErrorBlock: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) stream.
    (recoveredValue0) nextPutAll: ('([').
    recoveredValue1 := recoveredArg1.
    super autosarRTECallWithErrorBlock: (recoveredValue1).
    recoveredValue2 := (self) stream.
    (recoveredValue2) nextPutAll: ('] onErrorDo: ').
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) errorBlock.
    (self) visitMdlNode: (recoveredValue4).
    recoveredValue5 := (self) stream.
    recoveredValue6 := recoveredValue5.
    (recoveredValue6) nextPutAll: (')').
    (recoveredValue5) cr.
    ^self
! !

"ASDBase.ic method 0x20261e14; bytecode file offset 0xb5e6e8"
!SGMdPrintOnTransformation methodsFor: 'recovered'!
blockStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) stream.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) nextPutAll: ('{').
    (recoveredValue0) cr.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) children.
    recoveredValue4 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Value0 recoveredBlock15Value1 |
    recoveredBlock15Value0 := recoveredBlock15Arg1.
    recoveredBlock15Value1 := (self) visitMdlNode: (recoveredBlock15Value0).
    recoveredBlock15Value1
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := (self) stream.
    recoveredValue6 := recoveredValue5.
    (recoveredValue6) nextPutAll: ('}').
    (recoveredValue5) cr.
    ^self
! !

"ASDBase.ic method 0x2026d24c; bytecode file offset 0xb69b24"
!SGMdPrintOnTransformation methodsFor: 'recovered'!
ifThenElseStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) stream.
    (recoveredValue0) nextPutAll: ('if (').
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) exprChild.
    (self) visitMdlNode: (recoveredValue2).
    recoveredValue3 := (self) stream.
    (recoveredValue3) nextPutAll: (') ').
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) trueChild.
    (self) visitMdlNode: (recoveredValue5).
    recoveredValue6 := (self) stream.
    (recoveredValue6) nextPutAll: (' else ').
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue7) falseChild.
    (self) visitMdlNode: (recoveredValue8).
    ^self
! !

"ASDBase.ic method 0x2028eebc; bytecode file offset 0xb8b790"
!SGMdPrintOnTransformation methodsFor: 'recovered'!
commaExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) stream.
    (recoveredValue0) nextPutAll: ('(').
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) children.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 |
    recoveredBlock11Value0 := recoveredBlock11Arg1.
    recoveredBlock11Value1 := (self) visitMdlNode: (recoveredBlock11Value0).
    recoveredBlock11Value1
].
    recoveredValue4 := [
    | recoveredBlock22Value0 recoveredBlock22Value1 |
    recoveredBlock22Value0 := (self) stream.
    recoveredBlock22Value1 := (recoveredBlock22Value0) nextPutAll: (', ').
    recoveredBlock22Value1
].
    (recoveredValue2) do: (recoveredValue3) andBetweenDo: (recoveredValue4).
    recoveredValue5 := (self) stream.
    (recoveredValue5) nextPutAll: (')').
    ^self
! !

"ASDBase.ic method 0x202aa2b8; bytecode file offset 0xba6b8c"
!SGMdPrintOnTransformation methodsFor: 'recovered'!
enumValue: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := (self) stream.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) mdlClass.
    recoveredValue4 := (recoveredValue3) mdlLabel.
    (recoveredValue1) nextPutAll: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    (recoveredValue5) nextPut: ($.).
    recoveredValue6 := recoveredValue0.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue7) label.
    (recoveredValue6) nextPutAll: (recoveredValue8).
    recoveredValue9 := recoveredValue0.
    (recoveredValue9) nextPut: ($().
    recoveredValue10 := recoveredValue0.
    recoveredValue11 := recoveredArg1.
    recoveredValue12 := (recoveredValue11) value.
    recoveredValue13 := (recoveredValue12) asString.
    (recoveredValue10) nextPutAll: (recoveredValue13).
    (recoveredValue0) nextPut: ($)).
    ^self
! !

"ASDBase.ic method 0x202b4a30; bytecode file offset 0xbb130c"
!SGMdPrintOnTransformation methodsFor: 'recovered'!
betweenAndExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := (self) stream.
    (recoveredValue0) nextPut: ($().
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) exprChild.
    (self) visitMdlNode: (recoveredValue2).
    recoveredValue3 := (self) stream.
    (recoveredValue3) nextPutAll: ('.between(').
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) leftChild.
    (self) visitMdlNode: (recoveredValue5).
    recoveredValue6 := (self) stream.
    (recoveredValue6) nextPutAll: (', ').
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue7) rightChild.
    (self) visitMdlNode: (recoveredValue8).
    recoveredValue9 := (self) stream.
    (recoveredValue9) nextPutAll: ('))').
    ^self
! !

"ASDBase.ic method 0x202c6104; bytecode file offset 0xbc29dc"
!SGMdPrintOnTransformation methodsFor: 'recovered'!
muxExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := (self) stream.
    (recoveredValue0) nextPut: ($().
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) exprChild.
    (self) visitMdlNode: (recoveredValue2).
    recoveredValue3 := (self) stream.
    (recoveredValue3) nextPutAll: (' ? ').
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) leftChild.
    (self) visitMdlNode: (recoveredValue5).
    recoveredValue6 := (self) stream.
    (recoveredValue6) nextPutAll: (' : ').
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue7) rightChild.
    (self) visitMdlNode: (recoveredValue8).
    recoveredValue9 := (self) stream.
    (recoveredValue9) nextPut: ($)).
    ^self
! !

"ASDBase.ic method 0x202d9084; bytecode file offset 0xbd5958"
!SGMdPrintOnTransformation methodsFor: 'recovered'!
unaryLogicExpr: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) operator.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'not'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) stream.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := '!!'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) stream.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) operator.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) stream.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := $(.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) nextPut: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) child.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) visitMdlNode: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) stream.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := $).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) nextPut: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202fcdb8; bytecode file offset 0xbf968c"
!SGMdPrintOnTransformation methodsFor: 'recovered'!
indexedExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) exprChild.
    (self) visitMdlNode: (recoveredValue1).
    recoveredValue2 := (self) stream.
    (recoveredValue2) nextPut: ($[).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) indexChild.
    recoveredValue5 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Value0 recoveredBlock19Value1 |
    recoveredBlock19Value0 := recoveredBlock19Arg1.
    recoveredBlock19Value1 := (self) visitMdlNode: (recoveredBlock19Value0).
    recoveredBlock19Value1
].
    recoveredValue6 := [
    | recoveredBlock29Value0 recoveredBlock29Value1 |
    recoveredBlock29Value0 := (self) stream.
    recoveredBlock29Value1 := (recoveredBlock29Value0) nextPutAll: ('][').
    recoveredBlock29Value1
].
    (recoveredValue4) do: (recoveredValue5) separatedBy: (recoveredValue6).
    recoveredValue7 := (self) stream.
    (recoveredValue7) nextPut: ($]).
    ^self
! !

"ASDBase.ic method 0x20305b58; bytecode file offset 0xc02438"
!SGMdPrintOnTransformation methodsFor: 'recovered'!
multiplexExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := (self) stream.
    (recoveredValue0) nextPutAll: ('(').
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) switchExprChild.
    (self) visitMdlNode: (recoveredValue2).
    recoveredValue3 := (self) stream.
    (recoveredValue3) nextPutAll: (').case(').
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) choiceChildren.
    recoveredValue6 := [:recoveredBlock23Arg1 | 
    | recoveredBlock23Value0 recoveredBlock23Value1 recoveredBlock23Value2 |
    recoveredBlock23Value0 := recoveredBlock23Arg1.
    (self) visitMdlNode: (recoveredBlock23Value0).
    recoveredBlock23Value1 := (self) stream.
    recoveredBlock23Value2 := (recoveredBlock23Value1) nextPutAll: (', ').
    recoveredBlock23Value2
].
    (recoveredValue5) do: (recoveredValue6).
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue7) defaultExprChild.
    (self) visitMdlNode: (recoveredValue8).
    recoveredValue9 := (self) stream.
    (recoveredValue9) nextPutAll: (')').
    ^self
! !

"ASDBase.ic method 0x2039b328; bytecode file offset 0xc97c04"
!SGMdPrintOnTransformation methodsFor: 'recovered'!
methodCall: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) argReceiver.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) argReceiver.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) visitMdlNode: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) stream.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := $..
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) nextPut: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) stream.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodDecl.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) errLabel.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) stream.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := $(.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) nextPut: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) argChildren.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := [:recoveredBlock41Arg1 | 
    | recoveredBlock41Value0 recoveredBlock41Value1 |
    recoveredBlock41Value0 := recoveredBlock41Arg1.
    recoveredBlock41Value1 := (self) visitMdlNode: (recoveredBlock41Value0).
    recoveredBlock41Value1
].
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock51Value0 recoveredBlock51Value1 |
    recoveredBlock51Value0 := (self) stream.
    recoveredBlock51Value1 := (recoveredBlock51Value0) nextPutAll: (', ').
    recoveredBlock51Value1
].
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0) do: (recoveredStack1) separatedBy: (recoveredStack2).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) stream.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := $).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0) nextPut: (recoveredStack1).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20442084; bytecode file offset 0xd3e980"
!SGMdPrintOnTransformation methodsFor: 'recovered'!
binaryLogicExpr: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) stream.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := $(.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) nextPut: (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftChild.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) visitMdlNode: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) stream.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock19Value0 recoveredBlock19Value1 |
    recoveredBlock19Value0 := recoveredArg1.
    recoveredBlock19Value1 := (recoveredBlock19Value0) operator.
    recoveredBlock19Value1
].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := 'and'.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := [
    ' && '
].
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack4 := 'or'.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack5 := [
    ' || '
].
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack6 := [
    | recoveredBlock53Stack0 recoveredBlock53Stack1 recoveredBlock53Stack2 recoveredBlock53Stack3 recoveredBlock53PC recoveredBlock53Step recoveredBlock53Done recoveredBlock53Result |
    recoveredBlock53Stack0 := self.
    recoveredBlock53PC := 60.
    recoveredBlock53Done := false.
    [recoveredBlock53Done not] whileTrue: [
        recoveredBlock53Step := recoveredBlock53PC.
        recoveredBlock53Step = 60 ifTrue: [
            recoveredBlock53Stack1 := [
    false
].
            recoveredBlock53PC := 62.
        ].
        recoveredBlock53Step = 62 ifTrue: [
            recoveredBlock53PC := 68.
        ].
        recoveredBlock53Step = 68 ifTrue: [
            recoveredBlock53Stack2 := [
    | recoveredBlock53Block68Value0 recoveredBlock53Block68Value1 recoveredBlock53Block68Value2 |
    recoveredBlock53Block68Value0 := recoveredArg1.
    recoveredBlock53Block68Value1 := (recoveredBlock53Block68Value0) operator.
    recoveredBlock53Block68Value2 := ('Unknown operation ') , (recoveredBlock53Block68Value1).
    recoveredBlock53Block68Value2
].
            recoveredBlock53PC := 84.
        ].
        recoveredBlock53Step = 84 ifTrue: [
            (recoveredBlock53Stack0) ileAssert: (recoveredBlock53Stack1) message: (recoveredBlock53Stack2).
            recoveredBlock53PC := 86.
        ].
        recoveredBlock53Step = 86 ifTrue: [
            recoveredBlock53Stack0 := nil.
            recoveredBlock53PC := 87.
        ].
        recoveredBlock53Step = 87 ifTrue: [
            recoveredBlock53Result := recoveredBlock53Stack0.
            recoveredBlock53Done := true.
        ].
    ].
    recoveredBlock53Result
].
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := (recoveredStack1) case: (recoveredStack2) do: (recoveredStack3) case: (recoveredStack4) do: (recoveredStack5) others: (recoveredStack6).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightChild.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack0) visitMdlNode: (recoveredStack1).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := (recoveredStack0) stream.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := $).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack0) nextPut: (recoveredStack1).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20473738; bytecode file offset 0xd7002c"
!SGMdPrintOnTransformation methodsFor: 'recovered'!
autosarRTECall: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) stream.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := $_.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) nextPut: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) runnableEntity.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack2 ~~ nil) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) runnableEntity.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := (recoveredStack2) errLabel.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := '_'.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := (recoveredStack2) portName.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack2 ~~ nil) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredPC := 61.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := (recoveredStack2) portName.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := '_'.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := (recoveredStack2) dataElementName.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack2 ~~ nil) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredPC := 81.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := (recoveredStack2) dataElementName.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlLabel.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := $(.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack0) nextPut: (recoveredStack1).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) argChildren.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := [:recoveredBlock91Arg1 | 
    | recoveredBlock91Value0 recoveredBlock91Value1 |
    recoveredBlock91Value0 := recoveredBlock91Arg1.
    recoveredBlock91Value1 := (self) visitMdlNode: (recoveredBlock91Value0).
    recoveredBlock91Value1
].
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock102Value0 recoveredBlock102Value1 |
    recoveredBlock102Value0 := (self) stream.
    recoveredBlock102Value1 := (recoveredBlock102Value0) nextPutAll: (', ').
    recoveredBlock102Value1
].
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack0) do: (recoveredStack1) separatedBy: (recoveredStack2).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := (recoveredStack0) stream.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := $).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack0) nextPut: (recoveredStack1).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2049b098; bytecode file offset 0xd97990"
!SGMdPrintOnTransformation methodsFor: 'recovered'!
specialCall: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) receiver.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) receiver.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) visitMdlNode: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) stream.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := '.'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlName.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlLabel.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := 'arrayLength'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) stream.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := 'length'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredPC := 95.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlName.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlLabel.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := 'getAtOneD'.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) stream.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := 'getAt'.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredPC := 95.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlName.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlLabel.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := 'getAtTwoD'.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) stream.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := 'getAt'.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredPC := 95.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := (recoveredStack1) stream.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlName.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlLabel.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) stream.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := '('.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := [:recoveredBlock103Arg1 | 
    | recoveredBlock103Value0 recoveredBlock103Value1 |
    recoveredBlock103Value0 := recoveredBlock103Arg1.
    recoveredBlock103Value1 := (self) visitMdlNode: (recoveredBlock103Value0).
    recoveredBlock103Value1
].
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock113Value0 recoveredBlock113Value1 |
    recoveredBlock113Value0 := (self) stream.
    recoveredBlock113Value1 := (recoveredBlock113Value0) nextPutAll: (', ').
    recoveredBlock113Value1
].
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            (recoveredStack0) do: (recoveredStack1) separatedBy: (recoveredStack2).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := (recoveredStack0) stream.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := ')'.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204c08a4; bytecode file offset 0xdbd1d0"
!SGMdPrintOnTransformation methodsFor: 'recovered'!
binaryEqualityExpr: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredStack12 recoveredStack13 recoveredStack14 recoveredStack15 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) stream.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := $(.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) nextPut: (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftChild.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) visitMdlNode: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) stream.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock19Value0 recoveredBlock19Value1 |
    recoveredBlock19Value0 := recoveredArg1.
    recoveredBlock19Value1 := (recoveredBlock19Value0) operator.
    recoveredBlock19Value1
].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := 'eq'.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := [
    ' == '
].
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack4 := 'ne'.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack5 := [
    ' !!= '
].
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack6 := 'gt'.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack7 := [
    ' > '
].
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack8 := 'ge'.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack9 := [
    ' >= '
].
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack10 := 'lt'.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack11 := [
    ' < '
].
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack12 := 'le'.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack13 := [
    ' <= '
].
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack14 := [
    | recoveredBlock93Stack0 recoveredBlock93Stack1 recoveredBlock93Stack2 recoveredBlock93Stack3 recoveredBlock93PC recoveredBlock93Step recoveredBlock93Done recoveredBlock93Result |
    recoveredBlock93Stack0 := self.
    recoveredBlock93PC := 100.
    recoveredBlock93Done := false.
    [recoveredBlock93Done not] whileTrue: [
        recoveredBlock93Step := recoveredBlock93PC.
        recoveredBlock93Step = 100 ifTrue: [
            recoveredBlock93Stack1 := [
    false
].
            recoveredBlock93PC := 102.
        ].
        recoveredBlock93Step = 102 ifTrue: [
            recoveredBlock93PC := 108.
        ].
        recoveredBlock93Step = 108 ifTrue: [
            recoveredBlock93Stack2 := [
    | recoveredBlock93Block108Value0 recoveredBlock93Block108Value1 recoveredBlock93Block108Value2 |
    recoveredBlock93Block108Value0 := recoveredArg1.
    recoveredBlock93Block108Value1 := (recoveredBlock93Block108Value0) operator.
    recoveredBlock93Block108Value2 := ('Unknown operation ') , (recoveredBlock93Block108Value1).
    recoveredBlock93Block108Value2
].
            recoveredBlock93PC := 124.
        ].
        recoveredBlock93Step = 124 ifTrue: [
            (recoveredBlock93Stack0) ileAssert: (recoveredBlock93Stack1) message: (recoveredBlock93Stack2).
            recoveredBlock93PC := 126.
        ].
        recoveredBlock93Step = 126 ifTrue: [
            recoveredBlock93Stack0 := nil.
            recoveredBlock93PC := 127.
        ].
        recoveredBlock93Step = 127 ifTrue: [
            recoveredBlock93Result := recoveredBlock93Stack0.
            recoveredBlock93Done := true.
        ].
    ].
    recoveredBlock93Result
].
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := (recoveredStack1) case: (recoveredStack2) do: (recoveredStack3) case: (recoveredStack4) do: (recoveredStack5) case: (recoveredStack6) do: (recoveredStack7) case: (recoveredStack8) do: (recoveredStack9) case: (recoveredStack10) do: (recoveredStack11) case: (recoveredStack12) do: (recoveredStack13) others: (recoveredStack14).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightChild.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            (recoveredStack0) visitMdlNode: (recoveredStack1).
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := (recoveredStack0) stream.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := $).
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            (recoveredStack0) nextPut: (recoveredStack1).
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2053bb98; bytecode file offset 0xe384e8"
!SGMdPrintOnTransformation methodsFor: 'recovered'!
binaryArithmeticExpr: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredStack12 recoveredStack13 recoveredStack14 recoveredStack15 recoveredStack16 recoveredStack17 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) stream.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := $(.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) nextPut: (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftChild.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) visitMdlNode: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) stream.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock19Value0 recoveredBlock19Value1 |
    recoveredBlock19Value0 := recoveredArg1.
    recoveredBlock19Value1 := (recoveredBlock19Value0) operator.
    recoveredBlock19Value1
].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := 'add'.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := [
    ' + '
].
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack4 := 'sub'.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack5 := [
    ' - '
].
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack6 := 'mul'.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack7 := [
    ' * '
].
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack8 := 'div'.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack9 := [
    ' / '
].
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack10 := 'rem'.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack11 := [
    ' % '
].
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack12 := 'min'.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack13 := [
    '.min('
].
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack14 := 'max'.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack15 := [
    '.max('
].
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack16 := [
    | recoveredBlock103Stack0 recoveredBlock103Stack1 recoveredBlock103Stack2 recoveredBlock103Stack3 recoveredBlock103PC recoveredBlock103Step recoveredBlock103Done recoveredBlock103Result |
    recoveredBlock103Stack0 := self.
    recoveredBlock103PC := 110.
    recoveredBlock103Done := false.
    [recoveredBlock103Done not] whileTrue: [
        recoveredBlock103Step := recoveredBlock103PC.
        recoveredBlock103Step = 110 ifTrue: [
            recoveredBlock103Stack1 := [
    false
].
            recoveredBlock103PC := 112.
        ].
        recoveredBlock103Step = 112 ifTrue: [
            recoveredBlock103PC := 118.
        ].
        recoveredBlock103Step = 118 ifTrue: [
            recoveredBlock103Stack2 := [
    | recoveredBlock103Block118Value0 recoveredBlock103Block118Value1 recoveredBlock103Block118Value2 |
    recoveredBlock103Block118Value0 := recoveredArg1.
    recoveredBlock103Block118Value1 := (recoveredBlock103Block118Value0) operator.
    recoveredBlock103Block118Value2 := ('Unknown operation ') , (recoveredBlock103Block118Value1).
    recoveredBlock103Block118Value2
].
            recoveredBlock103PC := 134.
        ].
        recoveredBlock103Step = 134 ifTrue: [
            (recoveredBlock103Stack0) ileAssert: (recoveredBlock103Stack1) message: (recoveredBlock103Stack2).
            recoveredBlock103PC := 136.
        ].
        recoveredBlock103Step = 136 ifTrue: [
            recoveredBlock103Stack0 := nil.
            recoveredBlock103PC := 137.
        ].
        recoveredBlock103Step = 137 ifTrue: [
            recoveredBlock103Result := recoveredBlock103Stack0.
            recoveredBlock103Done := true.
        ].
    ].
    recoveredBlock103Result
].
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := (recoveredStack1) case: (recoveredStack2) do: (recoveredStack3) case: (recoveredStack4) do: (recoveredStack5) case: (recoveredStack6) do: (recoveredStack7) case: (recoveredStack8) do: (recoveredStack9) case: (recoveredStack10) do: (recoveredStack11) case: (recoveredStack12) do: (recoveredStack13) case: (recoveredStack14) do: (recoveredStack15) others: (recoveredStack16).
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightChild.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            (recoveredStack0) visitMdlNode: (recoveredStack1).
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := (recoveredStack0) stream.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock153Value0 recoveredBlock153Value1 |
    recoveredBlock153Value0 := recoveredArg1.
    recoveredBlock153Value1 := (recoveredBlock153Value0) operator.
    recoveredBlock153Value1
].
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack2 := 'min'.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack3 := [
    ')'
].
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack4 := 'max'.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack5 := [
    ')'
].
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack6 := [
    ''
].
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack1 := (recoveredStack1) case: (recoveredStack2) do: (recoveredStack3) case: (recoveredStack4) do: (recoveredStack5) others: (recoveredStack6).
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack0 := (recoveredStack0) stream.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack1 := $).
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            (recoveredStack0) nextPut: (recoveredStack1).
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20563c58; bytecode file offset 0xe60594"
!SGMdPrintOnTransformation methodsFor: 'recovered'!
unaryArithmeticExpr: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredStack12 recoveredStack13 recoveredStack14 recoveredStack15 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) stream.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := recoveredArg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) operator.
    recoveredBlock5Value1
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := 'neg'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := [
    '-'
].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack4 := 'abs'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack5 := [
    ''
].
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack6 := 'preInc'.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack7 := [
    '++'
].
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack8 := 'preDec'.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack9 := [
    '--'
].
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack10 := 'postInc'.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack11 := [
    ''
].
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack12 := 'postDec'.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack13 := [
    ''
].
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack14 := [
    | recoveredBlock77Stack0 recoveredBlock77Stack1 recoveredBlock77Stack2 recoveredBlock77Stack3 recoveredBlock77PC recoveredBlock77Step recoveredBlock77Done recoveredBlock77Result |
    recoveredBlock77Stack0 := self.
    recoveredBlock77PC := 84.
    recoveredBlock77Done := false.
    [recoveredBlock77Done not] whileTrue: [
        recoveredBlock77Step := recoveredBlock77PC.
        recoveredBlock77Step = 84 ifTrue: [
            recoveredBlock77Stack1 := [
    false
].
            recoveredBlock77PC := 86.
        ].
        recoveredBlock77Step = 86 ifTrue: [
            recoveredBlock77PC := 92.
        ].
        recoveredBlock77Step = 92 ifTrue: [
            recoveredBlock77Stack2 := [
    | recoveredBlock77Block92Value0 recoveredBlock77Block92Value1 recoveredBlock77Block92Value2 |
    recoveredBlock77Block92Value0 := recoveredArg1.
    recoveredBlock77Block92Value1 := (recoveredBlock77Block92Value0) operator.
    recoveredBlock77Block92Value2 := ('Unknown unary operator ') , (recoveredBlock77Block92Value1).
    recoveredBlock77Block92Value2
].
            recoveredBlock77PC := 107.
        ].
        recoveredBlock77Step = 107 ifTrue: [
            recoveredBlock77Stack0 := (recoveredBlock77Stack0) ileAssert: (recoveredBlock77Stack1) message: (recoveredBlock77Stack2).
            recoveredBlock77PC := 109.
        ].
        recoveredBlock77Step = 109 ifTrue: [
            recoveredBlock77Result := recoveredBlock77Stack0.
            recoveredBlock77Done := true.
        ].
    ].
    recoveredBlock77Result
].
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := (recoveredStack1) case: (recoveredStack2) do: (recoveredStack3) case: (recoveredStack4) do: (recoveredStack5) case: (recoveredStack6) do: (recoveredStack7) case: (recoveredStack8) do: (recoveredStack9) case: (recoveredStack10) do: (recoveredStack11) case: (recoveredStack12) do: (recoveredStack13) others: (recoveredStack14).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := (recoveredStack1) child.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack0) visitMdlNode: (recoveredStack1).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := (recoveredStack0) stream.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock125Value0 recoveredBlock125Value1 |
    recoveredBlock125Value0 := recoveredArg1.
    recoveredBlock125Value1 := (recoveredBlock125Value0) operator.
    recoveredBlock125Value1
].
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack2 := 'neg'.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack3 := [
    ''
].
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack4 := 'abs'.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack5 := [
    '.abs()'
].
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack6 := 'preInc'.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack7 := [
    ''
].
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack8 := 'preDec'.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack9 := [
    ''
].
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack10 := 'postInc'.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack11 := [
    '++'
].
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack12 := 'postDec'.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack13 := [
    '--'
].
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack14 := [
    | recoveredBlock197Stack0 recoveredBlock197Stack1 recoveredBlock197Stack2 recoveredBlock197Stack3 recoveredBlock197PC recoveredBlock197Step recoveredBlock197Done recoveredBlock197Result |
    recoveredBlock197Stack0 := self.
    recoveredBlock197PC := 204.
    recoveredBlock197Done := false.
    [recoveredBlock197Done not] whileTrue: [
        recoveredBlock197Step := recoveredBlock197PC.
        recoveredBlock197Step = 204 ifTrue: [
            recoveredBlock197Stack1 := [
    false
].
            recoveredBlock197PC := 206.
        ].
        recoveredBlock197Step = 206 ifTrue: [
            recoveredBlock197PC := 212.
        ].
        recoveredBlock197Step = 212 ifTrue: [
            recoveredBlock197Stack2 := [
    | recoveredBlock197Block212Value0 recoveredBlock197Block212Value1 recoveredBlock197Block212Value2 |
    recoveredBlock197Block212Value0 := recoveredArg1.
    recoveredBlock197Block212Value1 := (recoveredBlock197Block212Value0) operator.
    recoveredBlock197Block212Value2 := ('Unknown unary operator ') , (recoveredBlock197Block212Value1).
    recoveredBlock197Block212Value2
].
            recoveredBlock197PC := 227.
        ].
        recoveredBlock197Step = 227 ifTrue: [
            recoveredBlock197Stack0 := (recoveredBlock197Stack0) ileAssert: (recoveredBlock197Stack1) message: (recoveredBlock197Stack2).
            recoveredBlock197PC := 229.
        ].
        recoveredBlock197Step = 229 ifTrue: [
            recoveredBlock197Result := recoveredBlock197Stack0.
            recoveredBlock197Done := true.
        ].
    ].
    recoveredBlock197Result
].
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack1 := (recoveredStack1) case: (recoveredStack2) do: (recoveredStack3) case: (recoveredStack4) do: (recoveredStack5) case: (recoveredStack6) do: (recoveredStack7) case: (recoveredStack8) do: (recoveredStack9) case: (recoveredStack10) do: (recoveredStack11) case: (recoveredStack12) do: (recoveredStack13) others: (recoveredStack14).
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

