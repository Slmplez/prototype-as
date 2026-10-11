"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000d5cc; bytecode file offset 0x90a4b8"
!SGSmReturnFreeOutlinedMethodTransformation methodsFor: 'recovered'!
specialCallStmnt: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000d5d4; bytecode file offset 0x90a4b8"
!SGSmReturnFreeOutlinedMethodTransformation methodsFor: 'recovered'!
exprStmnt: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000d70c; bytecode file offset 0x90a4b8"
!SGSmReturnFreeOutlinedMethodTransformation methodsFor: 'recovered'!
breakStmnt: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000d9e4; bytecode file offset 0x90a4b8"
!SGSmReturnFreeOutlinedMethodTransformation methodsFor: 'recovered'!
exitStmnt: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000d9ec; bytecode file offset 0x90a4b8"
!SGSmReturnFreeOutlinedMethodTransformation methodsFor: 'recovered'!
emptyStmnt: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200345c4; bytecode file offset 0x934580"
!SGSmReturnFreeOutlinedMethodTransformation methodsFor: 'recovered'!
returnValueName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) misraCompliance.
    recoveredValue1 := (recoveredValue0) returnValueName.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20040d44; bytecode file offset 0x93d83c"
!SGSmReturnFreeOutlinedMethodTransformation methodsFor: 'recovered'!
mdlBuilder
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := misraCompliance.
    recoveredValue1 := (recoveredValue0) mdlBuilder.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200672cc; bytecode file offset 0x9646f8"
!SGSmReturnFreeOutlinedMethodTransformation methodsFor: 'recovered'!
misraCompliance
    | recoveredValue0 |
    recoveredValue0 := misraCompliance.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200bf2c0; bytecode file offset 0x9bc0b4"
!SGSmReturnFreeOutlinedMethodTransformation methodsFor: 'recovered'!
misraCompliance: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    misraCompliance := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d8b04; bytecode file offset 0x9d53d8"
!SGSmReturnFreeOutlinedMethodTransformation methodsFor: 'recovered'!
method: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) child.
    recoveredValue3 := (self) visitMdlNode: (recoveredValue2).
    (recoveredValue0) child: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x200d8b18; bytecode file offset 0x9d53d8"
!SGSmReturnFreeOutlinedMethodTransformation methodsFor: 'recovered'!
blockStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) children.
    recoveredValue3 := (self) visitList: (recoveredValue2).
    (recoveredValue0) children: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x200d9540; bytecode file offset 0x9d5e64"
!SGSmReturnFreeOutlinedMethodTransformation methodsFor: 'recovered'!
switchStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) stmntChild.
    recoveredValue3 := (recoveredValue2) mdlAcceptNodeVisitor: (self).
    (recoveredValue0) stmntChild: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x200d9554; bytecode file offset 0x9d5e64"
!SGSmReturnFreeOutlinedMethodTransformation methodsFor: 'recovered'!
caseStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) child.
    recoveredValue3 := (recoveredValue2) mdlAcceptNodeVisitor: (self).
    (recoveredValue0) child: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x200d9568; bytecode file offset 0x9d5e64"
!SGSmReturnFreeOutlinedMethodTransformation methodsFor: 'recovered'!
ifThenStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) trueChild.
    recoveredValue3 := (recoveredValue2) mdlAcceptNodeVisitor: (self).
    (recoveredValue0) trueChild: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x200d957c; bytecode file offset 0x9d5e64"
!SGSmReturnFreeOutlinedMethodTransformation methodsFor: 'recovered'!
whileStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) stmntChild.
    recoveredValue3 := (recoveredValue2) mdlAcceptNodeVisitor: (self).
    (recoveredValue0) stmntChild: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x200d9590; bytecode file offset 0x9d5e64"
!SGSmReturnFreeOutlinedMethodTransformation methodsFor: 'recovered'!
forStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) stmntChild.
    recoveredValue3 := (recoveredValue2) mdlAcceptNodeVisitor: (self).
    (recoveredValue0) stmntChild: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x200d95a4; bytecode file offset 0x9d5e64"
!SGSmReturnFreeOutlinedMethodTransformation methodsFor: 'recovered'!
defaultStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) child.
    recoveredValue3 := (recoveredValue2) mdlAcceptNodeVisitor: (self).
    (recoveredValue0) child: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x201543c4; bytecode file offset 0xa50c8c"
!SGSmReturnFreeOutlinedMethodTransformation methodsFor: 'recovered'!
ifThenElseStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) trueChild.
    recoveredValue3 := (recoveredValue2) mdlAcceptNodeVisitor: (self).
    (recoveredValue0) trueChild: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) falseChild.
    recoveredValue7 := (recoveredValue6) mdlAcceptNodeVisitor: (self).
    (recoveredValue4) falseChild: (recoveredValue7).
    recoveredValue8 := recoveredArg1.
    ^recoveredValue8
! !

"ASDBase.ic method 0x20192064; bytecode file offset 0xa8e938"
!SGSmReturnFreeOutlinedMethodTransformation methodsFor: 'recovered'!
asIfElse: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := SGMdIfElseStmnt.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) source.
    (recoveredValue2) source: (recoveredValue4).
    recoveredValue5 := recoveredValue1.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) trueChild.
    (recoveredValue5) trueChild: (recoveredValue7).
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := (recoveredValue8) exprChild.
    recoveredValue10 := (recoveredValue1) exprChild: (recoveredValue9).
    ^recoveredValue10
! !

"ASDBase.ic method 0x201e83c0; bytecode file offset 0xae4c8c"
!SGSmReturnFreeOutlinedMethodTransformation methodsFor: 'recovered'!
asBlockStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) mdlBuilder.
    (recoveredValue0) block.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 |
    recoveredBlock8Value0 := (self) mdlBuilder.
    recoveredBlock8Value1 := recoveredBlock8Arg1.
    recoveredBlock8Value2 := (recoveredBlock8Value0) pushStmnt: (recoveredBlock8Value1).
    recoveredBlock8Value2
].
    (recoveredValue1) do: (recoveredValue2).
    recoveredValue3 := (self) mdlBuilder.
    (recoveredValue3) endBlock.
    recoveredValue4 := (self) mdlBuilder.
    recoveredValue5 := (recoveredValue4) popStmnt.
    ^recoveredValue5
! !

"ASDBase.ic method 0x202d9320; bytecode file offset 0xbd5c00"
!SGSmReturnFreeOutlinedMethodTransformation methodsFor: 'recovered'!
returnStmnt: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) child.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlLiteral.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) child.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlBuilder.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := (recoveredStack3) returnValueName.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack2) id: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack2) literal: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack2) assign.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) endStmnt.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredPC := 46.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlBuilder.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := (recoveredStack3) returnValueName.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack2) id: (recoveredStack3).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) return.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlBuilder.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) popStmnt.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203224e8; bytecode file offset 0xc1edd8"
!SGSmReturnFreeOutlinedMethodTransformation methodsFor: 'recovered'!
methodBody: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 |
    recoveredValue0 := (self) returnValueName.
    recoveredLocal3 := recoveredValue0.
    recoveredValue1 := (self) mdlBuilder.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredLocal3.
    (recoveredValue2) blockVarDecl: (recoveredValue3) class: ('log').
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredLocal3.
    (recoveredValue4) id: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    (recoveredValue6) literal: (false).
    recoveredValue7 := recoveredValue1.
    (recoveredValue7) assign.
    (recoveredValue1) endStmnt.
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := (recoveredValue8) children.
    recoveredValue10 := (self) mdlBuilder.
    recoveredValue11 := (recoveredValue10) popStmnt.
    (recoveredValue9) addFirst: (recoveredValue11).
    recoveredValue12 := recoveredArg1.
    recoveredValue13 := (recoveredValue12) children.
    recoveredValue14 := (recoveredValue13) removeLast.
    recoveredLocal2 := recoveredValue14.
    recoveredValue15 := recoveredArg1.
    recoveredValue16 := (self) blockStmnt: (recoveredValue15).
    recoveredLocal1 := recoveredValue16.
    recoveredValue17 := recoveredArg1.
    recoveredValue18 := (recoveredValue17) children.
    recoveredValue19 := recoveredLocal2.
    recoveredValue20 := (self) visitMdlNode: (recoveredValue19).
    (recoveredValue18) add: (recoveredValue20).
    recoveredValue21 := recoveredLocal1.
    ^recoveredValue21
! !

"ASDBase.ic method 0x2036bd08; bytecode file offset 0xc685f4"
!SGSmReturnFreeOutlinedMethodTransformation methodsFor: 'recovered'!
withIfProtection: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlAssignExpr.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) variable.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) errLabel.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) returnValueName.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlBuilder.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := (recoveredStack2) returnValueName.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) id: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) not.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlBuilder.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) asBlockStmnt: (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) pushStmnt: (recoveredStack1).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlBuilder.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) if.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlBuilder.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) popStmnt.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) with: (recoveredStack1).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20456e04; bytecode file offset 0xd53734"
!SGSmReturnFreeOutlinedMethodTransformation methodsFor: 'recovered'!
transform: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 |
    recoveredLocal4 := '_ASCET_temporaryMethod'.
    recoveredValue0 := (self) mdlBuilder.
    (recoveredValue0) enableVirtualMethodCreation.
    recoveredValue1 := SGLmElement.
    recoveredValue2 := (recoveredValue1) lmBoolType.
    recoveredLocal3 := recoveredValue2.
    recoveredValue3 := (self) mdlBuilder.
    recoveredValue4 := recoveredValue3.
    (recoveredValue4) private.
    recoveredValue5 := recoveredValue3.
    (recoveredValue5) additionalFunction.
    recoveredValue6 := recoveredValue3.
    (recoveredValue6) generatedArgList.
    recoveredValue7 := recoveredLocal4.
    recoveredValue8 := SGCgTypeFactory.
    recoveredValue9 := recoveredLocal3.
    recoveredValue10 := recoveredLocal3.
    recoveredValue11 := (recoveredValue10) createDataElement.
    recoveredValue12 := (recoveredValue8) createType: (recoveredValue9) implementation: (recoveredValue11).
    (recoveredValue3) methodDecl: (recoveredValue7) class: (recoveredValue12).
    recoveredValue13 := (self) mdlBuilder.
    (recoveredValue13) endMethodDecl.
    recoveredValue14 := (self) mdlBuilder.
    recoveredValue15 := recoveredLocal4.
    (recoveredValue14) method: (recoveredValue15).
    recoveredValue16 := (self) mdlBuilder.
    (recoveredValue16) block.
    recoveredValue17 := recoveredArg1.
    recoveredValue18 := (self) visitMdlNode: (recoveredValue17).
    recoveredLocal2 := recoveredValue18.
    recoveredValue19 := (self) mdlBuilder.
    recoveredValue20 := recoveredValue19.
    (recoveredValue20) literal: (false).
    recoveredValue21 := recoveredValue19.
    (recoveredValue21) return.
    (recoveredValue19) endBlock.
    recoveredValue22 := (self) mdlBuilder.
    recoveredValue23 := (recoveredValue22) endMethod.
    recoveredLocal1 := recoveredValue23.
    recoveredValue24 := recoveredLocal1.
    recoveredValue25 := (recoveredValue24) declaration.
    recoveredValue26 := (recoveredValue25) mdlName.
    recoveredValue27 := (recoveredValue26) allMdlKeys.
    recoveredValue28 := [:recoveredBlock79Arg1 | 
    | recoveredBlock79Value0 recoveredBlock79Value1 recoveredBlock79Value2 recoveredBlock79Value3 recoveredBlock79Value4 recoveredBlock79Value5 recoveredBlock79Value6 |
    recoveredBlock79Value0 := (self) mdlBuilder.
    recoveredBlock79Value1 := (recoveredBlock79Value0) classInterface.
    recoveredBlock79Value2 := (self) mdlBuilder.
    recoveredBlock79Value3 := recoveredBlock79Arg1.
    recoveredBlock79Value4 := (recoveredBlock79Value2) keyForMethod: (recoveredBlock79Value3).
    recoveredBlock79Value5 := [].
    recoveredBlock79Value6 := (recoveredBlock79Value1) removeDecl: (recoveredBlock79Value4) ifFail: (recoveredBlock79Value5).
    recoveredBlock79Value6
].
    (recoveredValue27) do: (recoveredValue28).
    recoveredValue29 := recoveredLocal2.
    recoveredValue30 := (recoveredValue29) localVars.
    recoveredValue31 := recoveredLocal1.
    recoveredValue32 := (recoveredValue31) localVars.
    (recoveredValue30) addAll: (recoveredValue32).
    recoveredValue33 := (self) mdlBuilder.
    (recoveredValue33) disableVirtualMethodCreation.
    recoveredValue34 := recoveredLocal2.
    ^recoveredValue34
! !

"ASDBase.ic method 0x2054daa8; bytecode file offset 0xe4a3b0"
!SGSmReturnFreeOutlinedMethodTransformation methodsFor: 'recovered'!
visitList: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasReturnStmnt.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := (recoveredStack2) first.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 63].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack4 := (recoveredStack4) size.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := (recoveredStack2) copyFrom: (recoveredStack3) to: (recoveredStack4).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) visitList: (recoveredStack2).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack1) addAll: (recoveredStack2).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlIfStmnt.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 176].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) trueChild.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasMdlUnconditionalReturn.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 176].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := (recoveredStack2) first.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlAcceptNodeVisitor: (recoveredStack3).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIfElse: (recoveredStack2).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 104] ifFalse: [recoveredPC := 162].
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack4 := (recoveredStack4) size.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := (recoveredStack2) copyFrom: (recoveredStack3) to: (recoveredStack4).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := (recoveredStack1) visitList: (recoveredStack2).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 128] ifFalse: [recoveredPC := 152].
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlIfStmnt.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 144] ifFalse: [recoveredPC := 136].
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlIfElseStmnt.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 144] ifFalse: [recoveredPC := 152].
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack2 := (recoveredStack2) first.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            (recoveredStack1) falseChild: (recoveredStack2).
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredPC := 159.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack2 := (recoveredStack2) asBlockStmnt: (recoveredStack3).
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            (recoveredStack1) falseChild: (recoveredStack2).
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredPC := 170.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack3 := #().
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack2 := (recoveredStack2) asBlockStmnt: (recoveredStack3).
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            (recoveredStack1) falseChild: (recoveredStack2).
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack2 := (recoveredStack2) first.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlAcceptNodeVisitor: (recoveredStack3).
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 196] ifFalse: [recoveredPC := 218].
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack4 := (recoveredStack4) size.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack2 := (recoveredStack2) copyFrom: (recoveredStack3) to: (recoveredStack4).
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack1 := (recoveredStack1) visitList: (recoveredStack2).
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack2 := (recoveredStack2) withIfProtection: (recoveredStack3).
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            (recoveredStack1) addAll: (recoveredStack2).
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

