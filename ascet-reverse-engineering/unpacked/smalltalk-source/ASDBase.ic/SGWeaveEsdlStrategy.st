"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200345d4; bytecode file offset 0x934580"
!SGWeaveEsdlStrategy methodsFor: 'recovered'!
sourceStream
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) currentStream.
    recoveredValue1 := (recoveredValue0) asESDLCodeStream.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20048a94; bytecode file offset 0x945358"
!SGWeaveEsdlStrategy methodsFor: 'recovered'!
disableOptimizedCode
    optimizedCode := false.
    ^self
! !

"ASDBase.ic method 0x2004a9d0; bytecode file offset 0x94729c"
!SGWeaveEsdlStrategy methodsFor: 'recovered'!
enableOptimizedCode
    optimizedCode := true.
    ^self
! !

"ASDBase.ic method 0x20051c18; bytecode file offset 0x94f0e0"
!SGWeaveEsdlStrategy methodsFor: 'recovered'!
currentStream
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := (recoveredValue0) sourceStream.
    recoveredValue2 := (recoveredValue1) asXmlCodeStream.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2006ba80; bytecode file offset 0x96873c"
!SGWeaveEsdlStrategy methodsFor: 'recovered'!
isOptimizedCode
    | recoveredValue0 |
    recoveredValue0 := optimizedCode.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20084a80; bytecode file offset 0x981ca4"
!SGWeaveEsdlStrategy methodsFor: 'recovered'!
caseStmnt: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) caseStmntExprPart: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x20085b4c; bytecode file offset 0x982408"
!SGWeaveEsdlStrategy methodsFor: 'recovered'!
beginStmnt: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) sourceStream.
    (recoveredValue0) reset.
    ^self
! !

"ASDBase.ic method 0x200a8440; bytecode file offset 0x9a4d3c"
!SGWeaveEsdlStrategy methodsFor: 'recovered'!
beginBlockStmnt: recoveredArg1
    (self) startSourceTag.
    (self) beginBlockStmnt.
    ^self
! !

"ASDBase.ic method 0x200a8450; bytecode file offset 0x9a4d3c"
!SGWeaveEsdlStrategy methodsFor: 'recovered'!
beginMethodBody: recoveredArg1
    (self) startSourceTag.
    (self) beginBlockStmnt.
    ^self
! !

"ASDBase.ic method 0x200b52a8; bytecode file offset 0x9b1ce4"
!SGWeaveEsdlStrategy methodsFor: 'recovered'!
beginBlockStmnt
    | recoveredValue0 |
    recoveredValue0 := (self) sourceStream.
    (recoveredValue0) openCompoundStmnt.
    (self) endSourceTag.
    ^self
! !

"ASDBase.ic method 0x200bb830; bytecode file offset 0x9b823c"
!SGWeaveEsdlStrategy methodsFor: 'recovered'!
beginSwitchStmnt: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) switchStmntExprPart: (recoveredValue0).
    (self) beginBlockStmnt.
    ^self
! !

"ASDBase.ic method 0x200bb8a0; bytecode file offset 0x9b823c"
!SGWeaveEsdlStrategy methodsFor: 'recovered'!
ifThenStmnt: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) ifStmntExprPart: (recoveredValue0).
    (self) endSourceTag.
    ^self
! !

"ASDBase.ic method 0x200bb8d0; bytecode file offset 0x9b823c"
!SGWeaveEsdlStrategy methodsFor: 'recovered'!
beginForStmnt: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) forStmntConditionPart: (recoveredValue0).
    (self) beginBlockStmnt.
    ^self
! !

"ASDBase.ic method 0x200bb8f0; bytecode file offset 0x9b823c"
!SGWeaveEsdlStrategy methodsFor: 'recovered'!
beginWhileStmnt: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) whileStmntExprPart: (recoveredValue0).
    (self) beginBlockStmnt.
    ^self
! !

"ASDBase.ic method 0x200bb9ac; bytecode file offset 0x9b8278"
!SGWeaveEsdlStrategy methodsFor: 'recovered'!
beginIfThenStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) ifStmntExprPart: (recoveredValue0).
    (self) beginBlockStmnt.
    recoveredValue1 := recoveredArg1.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200d66a8; bytecode file offset 0x9d3134"
!SGWeaveEsdlStrategy methodsFor: 'recovered'!
initialize
    super initialize.
    (self) disableOptimizedCode.
    ^self
! !

"ASDBase.ic method 0x200ea3d4; bytecode file offset 0x9e6c94"
!SGWeaveEsdlStrategy methodsFor: 'recovered'!
caseStmntExprPart: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    super caseStmntExprPart: (recoveredValue0).
    (self) endSourceTag.
    ^self
! !

"ASDBase.ic method 0x200f6ba0; bytecode file offset 0x9f3464"
!SGWeaveEsdlStrategy methodsFor: 'recovered'!
endBlockStmnt
    | recoveredValue0 |
    (self) startSourceTag.
    recoveredValue0 := (self) sourceStream.
    (recoveredValue0) closeCompoundStmnt.
    (self) endSourceTag.
    ^self
! !

"ASDBase.ic method 0x2010e14c; bytecode file offset 0xa0aa10"
!SGWeaveEsdlStrategy methodsFor: 'recovered'!
defaultStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) beginStmnt: (recoveredValue0).
    recoveredValue1 := (self) sourceStream.
    (recoveredValue1) defaultOp.
    (self) endSourceTag.
    ^self
! !

"ASDBase.ic method 0x20132dac; bytecode file offset 0xa2f6a8"
!SGWeaveEsdlStrategy methodsFor: 'recovered'!
mdlClass: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) sortedMethods.
    recoveredValue2 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := (self) visitMdlNode: (recoveredBlock6Value0).
    recoveredBlock6Value1
].
    (recoveredValue1) do: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x201c9368; bytecode file offset 0xac5c30"
!SGWeaveEsdlStrategy methodsFor: 'recovered'!
startSourceTag
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOptimizedCode.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentStream.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) closeTagTargetCode.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) openTagSourceOptimized.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentStream.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) closeTagTargetCode.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) openTagSourceCode.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201c93a0; bytecode file offset 0xac5c68"
!SGWeaveEsdlStrategy methodsFor: 'recovered'!
endSourceTag
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOptimizedCode.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentStream.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) closeTagSourceOptimized.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) openTagTargetCode.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentStream.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) closeTagSourceCode.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) openTagTargetCode.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201e78c8; bytecode file offset 0xae4198"
!SGWeaveEsdlStrategy methodsFor: 'recovered'!
endStmnt: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            super endStmnt: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) etasCodeGenHalt.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) source.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 27] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) source.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) sourceStream.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) contents.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) esdlRepresentation: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201ef638; bytecode file offset 0xaebf0c"
!SGWeaveEsdlStrategy methodsFor: 'recovered'!
visitAsOptimizedStmnt: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    (self) enableOptimizedCode.
    (self) startSourceTag.
    recoveredValue0 := SGEsdlStrategy.
    recoveredValue1 := (self) sourceStream.
    recoveredValue2 := (recoveredValue0) createOn: (recoveredValue1).
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredLocal2.
    recoveredValue5 := (recoveredValue3) mdlAcceptNodeVisitor: (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    (self) endSourceTag.
    (self) disableOptimizedCode.
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

