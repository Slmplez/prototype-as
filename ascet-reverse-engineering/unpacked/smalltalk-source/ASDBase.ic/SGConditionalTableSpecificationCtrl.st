"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20001550; bytecode file offset 0x8ffcfc"
!SGConditionalTableSpecificationCtrl methodsFor: 'recovered'!
initMethods
    ^self
! !

"ASDBase.ic method 0x200017b0; bytecode file offset 0x8ffcfc"
!SGConditionalTableSpecificationCtrl methodsFor: 'recovered'!
initVariables
    ^self
! !

"ASDBase.ic method 0x20030e44; bytecode file offset 0x934580"
!SGConditionalTableSpecificationCtrl methodsFor: 'recovered'!
model
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) specification.
    recoveredValue1 := (recoveredValue0) conditionalTable.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20075b9c; bytecode file offset 0x9757c8"
!SGConditionalTableSpecificationCtrl methodsFor: 'recovered'!
windowCloseRequest
    ^true
! !

"ASDBase.ic method 0x20098614; bytecode file offset 0x995850"
!SGConditionalTableSpecificationCtrl methodsFor: 'recovered'!
model: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) specification.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) conditionalTable: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a0800; bytecode file offset 0x99d3ac"
!SGConditionalTableSpecificationCtrl methodsFor: 'recovered'!
createConditionalTable
    (self) createDefaultConditionalTable.
    (self) initConditionalTable.
    ^self
! !

"ASDBase.ic method 0x200a1060; bytecode file offset 0x99db8c"
!SGConditionalTableSpecificationCtrl methodsFor: 'recovered'!
initSpecificationName
    | recoveredValue0 |
    recoveredValue0 := (self) specification.
    (recoveredValue0) specificationName: ('ConditionalTable').
    ^self
! !

"ASDBase.ic method 0x200afe58; bytecode file offset 0x9ac794"
!SGConditionalTableSpecificationCtrl methodsFor: 'recovered'!
cantRenameTriggerDialog
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := RBUserInfo.
    recoveredValue1 := (recoveredValue0) message: ('The Trigger-method can not be renamed!!').
    (recoveredValue1) prompt.
    ^self
! !

"ASDBase.ic method 0x200afea0; bytecode file offset 0x9ac794"
!SGConditionalTableSpecificationCtrl methodsFor: 'recovered'!
cantDeleteTriggerDialog
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := RBUserInfo.
    recoveredValue1 := (recoveredValue0) message: ('The Trigger-method can not be deleted!!').
    (recoveredValue1) prompt.
    ^self
! !

"ASDBase.ic method 0x200e1c28; bytecode file offset 0x9de4fc"
!SGConditionalTableSpecificationCtrl methodsFor: 'recovered'!
save
    | recoveredValue0 |
    recoveredValue0 := ('Rnz') == ('EHI_81159').
    (self) createMethodCode.
    ^self
! !

"ASDBase.ic method 0x200e340c; bytecode file offset 0x9dfda8"
!SGConditionalTableSpecificationCtrl methodsFor: 'recovered'!
initConditionalTable
    (self) initSpecificationName.
    (self) initVariables.
    (self) initMethods.
    ^self
! !

"ASDBase.ic method 0x200fea60; bytecode file offset 0x9fb354"
!SGConditionalTableSpecificationCtrl methodsFor: 'recovered'!
update: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    super update: (recoveredValue0).
    recoveredValue1 := (self) model.
    (recoveredValue1) changed.
    ^self
! !

"ASDBase.ic method 0x20136c54; bytecode file offset 0xa3351c"
!SGConditionalTableSpecificationCtrl methodsFor: 'recovered'!
createDefaultConditionalTable
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ConditionalTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (self) item.
    (recoveredValue2) item: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    (self) model: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20161e7c; bytecode file offset 0xa5e74c"
!SGConditionalTableSpecificationCtrl methodsFor: 'recovered'!
getTriggerMethod
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) model.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) methods.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := [:block280ce40cArg1 | 
    | block280ce40cValue0 block280ce40cValue1 |
    block280ce40cValue0 := block280ce40cArg1.
    block280ce40cValue1 := (block280ce40cValue0) isMethodNamedTrigger.
    block280ce40cValue1
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201dbdb4; bytecode file offset 0xad8678"
!SGConditionalTableSpecificationCtrl methodsFor: 'recovered'!
renameSelectedMethod: recoveredArg1 to: recoveredArg2
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
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMethodNamedTrigger.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := super renameSelectedMethod: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) cantRenameTriggerDialog.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2023214c; bytecode file offset 0xb2ea18"
!SGConditionalTableSpecificationCtrl methodsFor: 'recovered'!
removeSelectedMethod
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) selectedMethod.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 13.
        ].
        recoveredBlock5Step = 13 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) isMethodNamedTrigger.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            (recoveredBlock5Stack1) ifTrue: [recoveredBlock5PC := 18] ifFalse: [recoveredBlock5PC := 24].
        ].
        recoveredBlock5Step = 18 ifTrue: [
            recoveredBlock5Stack1 := self.
            recoveredBlock5PC := 19.
        ].
        recoveredBlock5Step = 19 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) cantDeleteTriggerDialog.
            recoveredBlock5PC := 20.
        ].
        recoveredBlock5Step = 20 ifTrue: [
            recoveredBlock5PC := 30.
        ].
        recoveredBlock5Step = 24 ifTrue: [
            recoveredBlock5Stack1 := self.
            recoveredBlock5PC := 25.
        ].
        recoveredBlock5Step = 25 ifTrue: [
            recoveredBlock5Stack1 := super removeSelectedMethod.
            recoveredBlock5PC := 29.
        ].
        recoveredBlock5Step = 29 ifTrue: [
            ^recoveredBlock5Stack1
        ].
        recoveredBlock5Step = 30 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2037bc5c; bytecode file offset 0xc78548"
!SGConditionalTableSpecificationCtrl methodsFor: 'recovered'!
getTableRowFromCodeLine: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getTriggerMethod.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) procedureSourceStringMethod: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := String.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := Character.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := (recoveredStack2) cr.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := Character.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := (recoveredStack3) lf.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) asArrayOfSubstringsSeparatedBy: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := '/'.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) asArrayOfSubstringsSeparatedBy: (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (-1).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyFrom: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) asInteger.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2046fcd4; bytecode file offset 0xd6c5b8"
!SGConditionalTableSpecificationCtrl methodsFor: 'recovered'!
deleteElements: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := super deleteElements: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Value0 recoveredBlock19Value1 recoveredBlock19Value2 recoveredBlock19Value3 recoveredBlock19Value4 recoveredBlock19Value5 recoveredBlock19Value6 |
    recoveredBlock19Value0 := (self) model.
    recoveredBlock19Value1 := (recoveredBlock19Value0) conditionNames.
    recoveredBlock19Value2 := [:recoveredBlock19Block28Arg1 :recoveredBlock19Block28Arg2 | 
    | recoveredBlock19Block28Stack0 recoveredBlock19Block28Stack1 recoveredBlock19Block28Stack2 recoveredBlock19Block28Stack3 recoveredBlock19Block28Stack4 recoveredBlock19Block28PC recoveredBlock19Block28Step recoveredBlock19Block28Done recoveredBlock19Block28Result |
    recoveredBlock19Block28Stack0 := self.
    recoveredBlock19Block28PC := 34.
    recoveredBlock19Block28Done := false.
    [recoveredBlock19Block28Done not] whileTrue: [
        recoveredBlock19Block28Step := recoveredBlock19Block28PC.
        recoveredBlock19Block28Step = 34 ifTrue: [
            recoveredBlock19Block28Stack1 := nil.
            recoveredBlock19Block28PC := 35.
        ].
        recoveredBlock19Block28Step = 35 ifTrue: [
            recoveredBlock19Block28Stack2 := recoveredBlock19Block28Arg1.
            recoveredBlock19Block28PC := 36.
        ].
        recoveredBlock19Block28Step = 36 ifTrue: [
            (recoveredBlock19Block28Stack2 == nil) ifTrue: [recoveredBlock19Block28PC := 60] ifFalse: [recoveredBlock19Block28PC := 40].
        ].
        recoveredBlock19Block28Step = 40 ifTrue: [
            recoveredBlock19Block28PC := 41.
        ].
        recoveredBlock19Block28Step = 41 ifTrue: [
            recoveredBlock19Block28Stack1 := nil.
            recoveredBlock19Block28PC := 42.
        ].
        recoveredBlock19Block28Step = 42 ifTrue: [
            recoveredBlock19Block28Stack2 := recoveredBlock19Block28Arg1.
            recoveredBlock19Block28PC := 43.
        ].
        recoveredBlock19Block28Step = 43 ifTrue: [
            recoveredBlock19Block28Stack2 := (recoveredBlock19Block28Stack2) aliasName.
            recoveredBlock19Block28PC := 45.
        ].
        recoveredBlock19Block28Step = 45 ifTrue: [
            recoveredBlock19Block28Stack3 := recoveredBlock19Arg1.
            recoveredBlock19Block28PC := 48.
        ].
        recoveredBlock19Block28Step = 48 ifTrue: [
            recoveredBlock19Block28Stack3 := (recoveredBlock19Block28Stack3) aliasName.
            recoveredBlock19Block28PC := 50.
        ].
        recoveredBlock19Block28Step = 50 ifTrue: [
            recoveredBlock19Block28Stack2 := (recoveredBlock19Block28Stack2) = (recoveredBlock19Block28Stack3).
            recoveredBlock19Block28PC := 51.
        ].
        recoveredBlock19Block28Step = 51 ifTrue: [
            (recoveredBlock19Block28Stack2) ifTrue: [recoveredBlock19Block28PC := 54] ifFalse: [recoveredBlock19Block28PC := 60].
        ].
        recoveredBlock19Block28Step = 54 ifTrue: [
            recoveredBlock19Block28PC := 55.
        ].
        recoveredBlock19Block28Step = 55 ifTrue: [
            recoveredBlock19Block28Stack1 := self.
            recoveredBlock19Block28PC := 56.
        ].
        recoveredBlock19Block28Step = 56 ifTrue: [
            recoveredBlock19Block28Stack1 := (recoveredBlock19Block28Stack1) model.
            recoveredBlock19Block28PC := 57.
        ].
        recoveredBlock19Block28Step = 57 ifTrue: [
            recoveredBlock19Block28Stack2 := recoveredBlock19Block28Arg2.
            recoveredBlock19Block28PC := 58.
        ].
        recoveredBlock19Block28Step = 58 ifTrue: [
            recoveredBlock19Block28Stack1 := (recoveredBlock19Block28Stack1) removeConditionColumn: (recoveredBlock19Block28Stack2).
            recoveredBlock19Block28PC := 60.
        ].
        recoveredBlock19Block28Step = 60 ifTrue: [
            recoveredBlock19Block28Result := recoveredBlock19Block28Stack1.
            recoveredBlock19Block28Done := true.
        ].
    ].
    recoveredBlock19Block28Result
].
    (recoveredBlock19Value1) doWithIndex: (recoveredBlock19Value2).
    recoveredBlock19Value3 := (self) model.
    recoveredBlock19Value4 := (recoveredBlock19Value3) instructionNames.
    recoveredBlock19Value5 := [:recoveredBlock19Block67Arg1 :recoveredBlock19Block67Arg2 | 
    | recoveredBlock19Block67Stack0 recoveredBlock19Block67Stack1 recoveredBlock19Block67Stack2 recoveredBlock19Block67Stack3 recoveredBlock19Block67Stack4 recoveredBlock19Block67PC recoveredBlock19Block67Step recoveredBlock19Block67Done recoveredBlock19Block67Result |
    recoveredBlock19Block67Stack0 := self.
    recoveredBlock19Block67PC := 74.
    recoveredBlock19Block67Done := false.
    [recoveredBlock19Block67Done not] whileTrue: [
        recoveredBlock19Block67Step := recoveredBlock19Block67PC.
        recoveredBlock19Block67Step = 74 ifTrue: [
            recoveredBlock19Block67Stack1 := nil.
            recoveredBlock19Block67PC := 75.
        ].
        recoveredBlock19Block67Step = 75 ifTrue: [
            recoveredBlock19Block67Stack2 := recoveredBlock19Block67Arg1.
            recoveredBlock19Block67PC := 76.
        ].
        recoveredBlock19Block67Step = 76 ifTrue: [
            (recoveredBlock19Block67Stack2 == nil) ifTrue: [recoveredBlock19Block67PC := 111] ifFalse: [recoveredBlock19Block67PC := 80].
        ].
        recoveredBlock19Block67Step = 80 ifTrue: [
            recoveredBlock19Block67PC := 81.
        ].
        recoveredBlock19Block67Step = 81 ifTrue: [
            recoveredBlock19Block67Stack1 := nil.
            recoveredBlock19Block67PC := 82.
        ].
        recoveredBlock19Block67Step = 82 ifTrue: [
            recoveredBlock19Block67Stack2 := recoveredBlock19Block67Arg1.
            recoveredBlock19Block67PC := 83.
        ].
        recoveredBlock19Block67Step = 83 ifTrue: [
            recoveredBlock19Block67Stack3 := 'methods'.
            recoveredBlock19Block67PC := 85.
        ].
        recoveredBlock19Block67Step = 85 ifTrue: [
            recoveredBlock19Block67Stack2 := (recoveredBlock19Block67Stack2) = (recoveredBlock19Block67Stack3).
            recoveredBlock19Block67PC := 86.
        ].
        recoveredBlock19Block67Step = 86 ifTrue: [
            (recoveredBlock19Block67Stack2) ifTrue: [recoveredBlock19Block67PC := 111] ifFalse: [recoveredBlock19Block67PC := 90].
        ].
        recoveredBlock19Block67Step = 90 ifTrue: [
            recoveredBlock19Block67PC := 91.
        ].
        recoveredBlock19Block67Step = 91 ifTrue: [
            recoveredBlock19Block67Stack1 := nil.
            recoveredBlock19Block67PC := 92.
        ].
        recoveredBlock19Block67Step = 92 ifTrue: [
            recoveredBlock19Block67Stack2 := recoveredBlock19Block67Arg1.
            recoveredBlock19Block67PC := 93.
        ].
        recoveredBlock19Block67Step = 93 ifTrue: [
            recoveredBlock19Block67Stack2 := (recoveredBlock19Block67Stack2) aliasName.
            recoveredBlock19Block67PC := 95.
        ].
        recoveredBlock19Block67Step = 95 ifTrue: [
            recoveredBlock19Block67Stack3 := recoveredBlock19Arg1.
            recoveredBlock19Block67PC := 98.
        ].
        recoveredBlock19Block67Step = 98 ifTrue: [
            recoveredBlock19Block67Stack3 := (recoveredBlock19Block67Stack3) aliasName.
            recoveredBlock19Block67PC := 100.
        ].
        recoveredBlock19Block67Step = 100 ifTrue: [
            recoveredBlock19Block67Stack2 := (recoveredBlock19Block67Stack2) = (recoveredBlock19Block67Stack3).
            recoveredBlock19Block67PC := 101.
        ].
        recoveredBlock19Block67Step = 101 ifTrue: [
            (recoveredBlock19Block67Stack2) ifTrue: [recoveredBlock19Block67PC := 104] ifFalse: [recoveredBlock19Block67PC := 111].
        ].
        recoveredBlock19Block67Step = 104 ifTrue: [
            recoveredBlock19Block67PC := 105.
        ].
        recoveredBlock19Block67Step = 105 ifTrue: [
            recoveredBlock19Block67Stack1 := self.
            recoveredBlock19Block67PC := 106.
        ].
        recoveredBlock19Block67Step = 106 ifTrue: [
            recoveredBlock19Block67Stack1 := (recoveredBlock19Block67Stack1) model.
            recoveredBlock19Block67PC := 107.
        ].
        recoveredBlock19Block67Step = 107 ifTrue: [
            recoveredBlock19Block67Stack2 := recoveredBlock19Block67Arg2.
            recoveredBlock19Block67PC := 108.
        ].
        recoveredBlock19Block67Step = 108 ifTrue: [
            recoveredBlock19Block67Stack3 := true.
            recoveredBlock19Block67PC := 109.
        ].
        recoveredBlock19Block67Step = 109 ifTrue: [
            recoveredBlock19Block67Stack1 := (recoveredBlock19Block67Stack1) removeInstructionColumn: (recoveredBlock19Block67Stack2) notify: (recoveredBlock19Block67Stack3).
            recoveredBlock19Block67PC := 111.
        ].
        recoveredBlock19Block67Step = 111 ifTrue: [
            recoveredBlock19Block67Result := recoveredBlock19Block67Stack1.
            recoveredBlock19Block67Done := true.
        ].
    ].
    recoveredBlock19Block67Result
].
    recoveredBlock19Value6 := (recoveredBlock19Value4) doWithIndex: (recoveredBlock19Value5).
    recoveredBlock19Value6
].
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := (recoveredStack0) model.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack0) changed.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204bb5ac; bytecode file offset 0xdb7eb8"
!SGConditionalTableSpecificationCtrl methodsFor: 'recovered'!
conditionStringForRow: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := (self) model.
    recoveredValue1 := (recoveredValue0) conditionNames.
    recoveredValue2 := (recoveredValue1) size.
    recoveredLocal3 := recoveredValue2.
    recoveredLocal4 := ''.
    recoveredValue3 := recoveredLocal3.
    recoveredValue4 := (1) to: (recoveredValue3).
    recoveredValue5 := [:recoveredBlock22Arg1 | 
    | recoveredBlock22Value0 recoveredBlock22Value1 recoveredBlock22Value2 recoveredBlock22Value3 recoveredBlock22Value4 recoveredBlock22Value5 recoveredBlock22Value6 recoveredBlock22Value7 recoveredBlock22Value8 recoveredBlock22Value9 recoveredBlock22Value10 recoveredBlock22Value11 recoveredBlock22Value12 recoveredBlock22Value13 recoveredBlock22Value14 recoveredBlock22Value15 recoveredBlock22Value16 recoveredBlock22Value17 recoveredBlock22Value18 recoveredBlock22Value19 recoveredBlock22Value20 recoveredBlock22Value21 |
    recoveredBlock22Value0 := (self) model.
    recoveredBlock22Value1 := (recoveredBlock22Value0) conditionNames.
    recoveredBlock22Value2 := recoveredBlock22Arg1.
    recoveredBlock22Value3 := (recoveredBlock22Value1) at: (recoveredBlock22Value2).
    recoveredBlock22Value4 := (recoveredBlock22Value3) elementName.
    recoveredLocal2 := recoveredBlock22Value4.
    recoveredBlock22Value5 := (self) model.
    recoveredBlock22Value6 := (recoveredBlock22Value5) conditions.
    recoveredBlock22Value7 := recoveredArg1.
    recoveredBlock22Value8 := (recoveredBlock22Value6) at: (recoveredBlock22Value7).
    recoveredBlock22Value9 := recoveredBlock22Arg1.
    recoveredBlock22Value10 := (recoveredBlock22Value8) at: (recoveredBlock22Value9).
    recoveredLocal1 := recoveredBlock22Value10.
    recoveredBlock22Value11 := recoveredLocal1.
    recoveredBlock22Value12 := String.
    recoveredBlock22Value13 := Character.
    recoveredBlock22Value14 := (recoveredBlock22Value13) cr.
    recoveredBlock22Value15 := Character.
    recoveredBlock22Value16 := (recoveredBlock22Value15) lf.
    recoveredBlock22Value17 := (recoveredBlock22Value12) with: (recoveredBlock22Value14) with: (recoveredBlock22Value16).
    recoveredBlock22Value18 := (recoveredBlock22Value11) asArrayOfSubstringsSeparatedBy: (recoveredBlock22Value17).
    recoveredLocal1 := recoveredBlock22Value18.
    recoveredBlock22Value19 := recoveredLocal1.
    recoveredBlock22Value20 := [:recoveredBlock22Block76Arg1 | 
    | recoveredBlock22Block76Stack0 recoveredBlock22Block76Stack1 recoveredBlock22Block76Stack2 recoveredBlock22Block76Stack3 recoveredBlock22Block76Stack4 recoveredBlock22Block76Stack5 recoveredBlock22Block76PC recoveredBlock22Block76Step recoveredBlock22Block76Done recoveredBlock22Block76Result |
    recoveredBlock22Block76Stack0 := nil.
    recoveredBlock22Block76PC := 82.
    recoveredBlock22Block76Done := false.
    [recoveredBlock22Block76Done not] whileTrue: [
        recoveredBlock22Block76Step := recoveredBlock22Block76PC.
        recoveredBlock22Block76Step = 82 ifTrue: [
            recoveredBlock22Block76Stack1 := nil.
            recoveredBlock22Block76PC := 83.
        ].
        recoveredBlock22Block76Step = 83 ifTrue: [
            recoveredBlock22Block76Stack2 := recoveredBlock22Block76Arg1.
            recoveredBlock22Block76PC := 84.
        ].
        recoveredBlock22Block76Step = 84 ifTrue: [
            recoveredBlock22Block76Stack3 := '*'.
            recoveredBlock22Block76PC := 86.
        ].
        recoveredBlock22Block76Step = 86 ifTrue: [
            recoveredBlock22Block76Stack2 := (recoveredBlock22Block76Stack2) ~= (recoveredBlock22Block76Stack3).
            recoveredBlock22Block76PC := 87.
        ].
        recoveredBlock22Block76Step = 87 ifTrue: [
            recoveredBlock22Block76Stack3 := recoveredBlock22Block76Arg1.
            recoveredBlock22Block76PC := 88.
        ].
        recoveredBlock22Block76Step = 88 ifTrue: [
            recoveredBlock22Block76Stack3 := (recoveredBlock22Block76Stack3) size.
            recoveredBlock22Block76PC := 89.
        ].
        recoveredBlock22Block76Step = 89 ifTrue: [
            recoveredBlock22Block76Stack4 := 0.
            recoveredBlock22Block76PC := 91.
        ].
        recoveredBlock22Block76Step = 91 ifTrue: [
            recoveredBlock22Block76Stack3 := (recoveredBlock22Block76Stack3) > (recoveredBlock22Block76Stack4).
            recoveredBlock22Block76PC := 92.
        ].
        recoveredBlock22Block76Step = 92 ifTrue: [
            recoveredBlock22Block76Stack2 := (recoveredBlock22Block76Stack2) & (recoveredBlock22Block76Stack3).
            recoveredBlock22Block76PC := 94.
        ].
        recoveredBlock22Block76Step = 94 ifTrue: [
            (recoveredBlock22Block76Stack2) ifTrue: [recoveredBlock22Block76PC := 98] ifFalse: [recoveredBlock22Block76PC := 126].
        ].
        recoveredBlock22Block76Step = 98 ifTrue: [
            recoveredBlock22Block76PC := 99.
        ].
        recoveredBlock22Block76Step = 99 ifTrue: [
            recoveredBlock22Block76Stack1 := recoveredLocal4.
            recoveredBlock22Block76PC := 102.
        ].
        recoveredBlock22Block76Step = 102 ifTrue: [
            recoveredBlock22Block76Stack2 := '('.
            recoveredBlock22Block76PC := 104.
        ].
        recoveredBlock22Block76Step = 104 ifTrue: [
            recoveredBlock22Block76Stack1 := (recoveredBlock22Block76Stack1) , (recoveredBlock22Block76Stack2).
            recoveredBlock22Block76PC := 106.
        ].
        recoveredBlock22Block76Step = 106 ifTrue: [
            recoveredBlock22Block76Stack2 := recoveredLocal2.
            recoveredBlock22Block76PC := 109.
        ].
        recoveredBlock22Block76Step = 109 ifTrue: [
            recoveredBlock22Block76Stack1 := (recoveredBlock22Block76Stack1) , (recoveredBlock22Block76Stack2).
            recoveredBlock22Block76PC := 111.
        ].
        recoveredBlock22Block76Step = 111 ifTrue: [
            recoveredBlock22Block76Stack2 := ' '.
            recoveredBlock22Block76PC := 113.
        ].
        recoveredBlock22Block76Step = 113 ifTrue: [
            recoveredBlock22Block76Stack1 := (recoveredBlock22Block76Stack1) , (recoveredBlock22Block76Stack2).
            recoveredBlock22Block76PC := 115.
        ].
        recoveredBlock22Block76Step = 115 ifTrue: [
            recoveredBlock22Block76Stack2 := recoveredBlock22Block76Arg1.
            recoveredBlock22Block76PC := 116.
        ].
        recoveredBlock22Block76Step = 116 ifTrue: [
            recoveredBlock22Block76Stack1 := (recoveredBlock22Block76Stack1) , (recoveredBlock22Block76Stack2).
            recoveredBlock22Block76PC := 118.
        ].
        recoveredBlock22Block76Step = 118 ifTrue: [
            recoveredBlock22Block76Stack2 := ') && '.
            recoveredBlock22Block76PC := 120.
        ].
        recoveredBlock22Block76Step = 120 ifTrue: [
            recoveredBlock22Block76Stack1 := (recoveredBlock22Block76Stack1) , (recoveredBlock22Block76Stack2).
            recoveredBlock22Block76PC := 122.
        ].
        recoveredBlock22Block76Step = 122 ifTrue: [
            recoveredBlock22Block76Stack2 := recoveredBlock22Block76Stack1.
            recoveredBlock22Block76PC := 123.
        ].
        recoveredBlock22Block76Step = 123 ifTrue: [
            recoveredLocal4 := recoveredBlock22Block76Stack2.
            recoveredBlock22Block76PC := 126.
        ].
        recoveredBlock22Block76Step = 126 ifTrue: [
            recoveredBlock22Block76Result := recoveredBlock22Block76Stack1.
            recoveredBlock22Block76Done := true.
        ].
    ].
    recoveredBlock22Block76Result
].
    recoveredBlock22Value21 := (recoveredBlock22Value19) do: (recoveredBlock22Value20).
    recoveredBlock22Value21
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := recoveredLocal4.
    recoveredValue7 := recoveredLocal4.
    recoveredValue8 := (recoveredValue7) size.
    recoveredValue9 := (recoveredValue8) - (4).
    recoveredValue10 := (recoveredValue6) copyFrom: (1) to: (recoveredValue9).
    ^recoveredValue10
! !

"ASDBase.ic method 0x2055b628; bytecode file offset 0xe57f30"
!SGConditionalTableSpecificationCtrl methodsFor: 'recovered'!
instructionStringForRow: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 |
    recoveredValue0 := (self) model.
    recoveredValue1 := (recoveredValue0) instructionNames.
    recoveredValue2 := (recoveredValue1) size.
    recoveredLocal3 := recoveredValue2.
    recoveredLocal4 := ''.
    recoveredValue3 := recoveredLocal3.
    recoveredValue4 := (recoveredValue3) + (-1).
    recoveredValue5 := (1) to: (recoveredValue4).
    recoveredValue6 := [:recoveredBlock23Arg1 | 
    | recoveredBlock23Stack0 recoveredBlock23Stack1 recoveredBlock23Stack2 recoveredBlock23Stack3 recoveredBlock23Stack4 recoveredBlock23PC recoveredBlock23Step recoveredBlock23Done recoveredBlock23Result |
    recoveredBlock23Stack0 := self.
    recoveredBlock23PC := 30.
    recoveredBlock23Done := false.
    [recoveredBlock23Done not] whileTrue: [
        recoveredBlock23Step := recoveredBlock23PC.
        recoveredBlock23Step = 30 ifTrue: [
            recoveredBlock23Stack0 := (recoveredBlock23Stack0) model.
            recoveredBlock23PC := 31.
        ].
        recoveredBlock23Step = 31 ifTrue: [
            recoveredBlock23Stack0 := (recoveredBlock23Stack0) instructionNames.
            recoveredBlock23PC := 32.
        ].
        recoveredBlock23Step = 32 ifTrue: [
            recoveredBlock23Stack1 := recoveredBlock23Arg1.
            recoveredBlock23PC := 33.
        ].
        recoveredBlock23Step = 33 ifTrue: [
            recoveredBlock23Stack0 := (recoveredBlock23Stack0) at: (recoveredBlock23Stack1).
            recoveredBlock23PC := 35.
        ].
        recoveredBlock23Step = 35 ifTrue: [
            recoveredBlock23Stack1 := 'methods'.
            recoveredBlock23PC := 37.
        ].
        recoveredBlock23Step = 37 ifTrue: [
            recoveredBlock23Stack0 := (recoveredBlock23Stack0) = (recoveredBlock23Stack1).
            recoveredBlock23PC := 38.
        ].
        recoveredBlock23Step = 38 ifTrue: [
            (recoveredBlock23Stack0) ifTrue: [recoveredBlock23PC := 42] ifFalse: [recoveredBlock23PC := 45].
        ].
        recoveredBlock23Step = 42 ifTrue: [
            recoveredBlock23Stack0 := ''.
            recoveredBlock23PC := 44.
        ].
        recoveredBlock23Step = 44 ifTrue: [
            ^recoveredBlock23Stack0
        ].
        recoveredBlock23Step = 45 ifTrue: [
            recoveredBlock23Stack0 := self.
            recoveredBlock23PC := 46.
        ].
        recoveredBlock23Step = 46 ifTrue: [
            recoveredBlock23Stack0 := (recoveredBlock23Stack0) model.
            recoveredBlock23PC := 47.
        ].
        recoveredBlock23Step = 47 ifTrue: [
            recoveredBlock23Stack0 := (recoveredBlock23Stack0) instructionNames.
            recoveredBlock23PC := 48.
        ].
        recoveredBlock23Step = 48 ifTrue: [
            recoveredBlock23Stack1 := recoveredBlock23Arg1.
            recoveredBlock23PC := 49.
        ].
        recoveredBlock23Step = 49 ifTrue: [
            recoveredBlock23Stack0 := (recoveredBlock23Stack0) at: (recoveredBlock23Stack1).
            recoveredBlock23PC := 51.
        ].
        recoveredBlock23Step = 51 ifTrue: [
            recoveredBlock23Stack0 := (recoveredBlock23Stack0) elementName.
            recoveredBlock23PC := 53.
        ].
        recoveredBlock23Step = 53 ifTrue: [
            recoveredLocal2 := recoveredBlock23Stack0.
            recoveredBlock23PC := 56.
        ].
        recoveredBlock23Step = 56 ifTrue: [
            recoveredBlock23Stack0 := self.
            recoveredBlock23PC := 57.
        ].
        recoveredBlock23Step = 57 ifTrue: [
            recoveredBlock23Stack0 := (recoveredBlock23Stack0) model.
            recoveredBlock23PC := 58.
        ].
        recoveredBlock23Step = 58 ifTrue: [
            recoveredBlock23Stack0 := (recoveredBlock23Stack0) instructions.
            recoveredBlock23PC := 60.
        ].
        recoveredBlock23Step = 60 ifTrue: [
            recoveredBlock23Stack1 := recoveredArg1.
            recoveredBlock23PC := 63.
        ].
        recoveredBlock23Step = 63 ifTrue: [
            recoveredBlock23Stack0 := (recoveredBlock23Stack0) at: (recoveredBlock23Stack1).
            recoveredBlock23PC := 65.
        ].
        recoveredBlock23Step = 65 ifTrue: [
            recoveredBlock23Stack1 := recoveredBlock23Arg1.
            recoveredBlock23PC := 66.
        ].
        recoveredBlock23Step = 66 ifTrue: [
            recoveredBlock23Stack0 := (recoveredBlock23Stack0) at: (recoveredBlock23Stack1).
            recoveredBlock23PC := 68.
        ].
        recoveredBlock23Step = 68 ifTrue: [
            recoveredLocal1 := recoveredBlock23Stack0.
            recoveredBlock23PC := 71.
        ].
        recoveredBlock23Step = 71 ifTrue: [
            recoveredBlock23Stack0 := recoveredLocal1.
            recoveredBlock23PC := 74.
        ].
        recoveredBlock23Step = 74 ifTrue: [
            recoveredBlock23Stack1 := String.
            recoveredBlock23PC := 76.
        ].
        recoveredBlock23Step = 76 ifTrue: [
            recoveredBlock23Stack2 := Character.
            recoveredBlock23PC := 78.
        ].
        recoveredBlock23Step = 78 ifTrue: [
            recoveredBlock23Stack2 := (recoveredBlock23Stack2) cr.
            recoveredBlock23PC := 80.
        ].
        recoveredBlock23Step = 80 ifTrue: [
            recoveredBlock23Stack3 := Character.
            recoveredBlock23PC := 82.
        ].
        recoveredBlock23Step = 82 ifTrue: [
            recoveredBlock23Stack3 := (recoveredBlock23Stack3) lf.
            recoveredBlock23PC := 84.
        ].
        recoveredBlock23Step = 84 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) with: (recoveredBlock23Stack2) with: (recoveredBlock23Stack3).
            recoveredBlock23PC := 86.
        ].
        recoveredBlock23Step = 86 ifTrue: [
            recoveredBlock23Stack0 := (recoveredBlock23Stack0) asArrayOfSubstringsSeparatedBy: (recoveredBlock23Stack1).
            recoveredBlock23PC := 88.
        ].
        recoveredBlock23Step = 88 ifTrue: [
            recoveredLocal1 := recoveredBlock23Stack0.
            recoveredBlock23PC := 91.
        ].
        recoveredBlock23Step = 91 ifTrue: [
            recoveredBlock23Stack0 := recoveredLocal1.
            recoveredBlock23PC := 94.
        ].
        recoveredBlock23Step = 94 ifTrue: [
            recoveredBlock23Stack1 := [:recoveredBlock23Block94Arg1 | 
    | recoveredBlock23Block94Stack0 recoveredBlock23Block94Stack1 recoveredBlock23Block94Stack2 recoveredBlock23Block94Stack3 recoveredBlock23Block94Stack4 recoveredBlock23Block94Stack5 recoveredBlock23Block94PC recoveredBlock23Block94Step recoveredBlock23Block94Done recoveredBlock23Block94Result |
    recoveredBlock23Block94Stack0 := nil.
    recoveredBlock23Block94PC := 100.
    recoveredBlock23Block94Done := false.
    [recoveredBlock23Block94Done not] whileTrue: [
        recoveredBlock23Block94Step := recoveredBlock23Block94PC.
        recoveredBlock23Block94Step = 100 ifTrue: [
            recoveredBlock23Block94Stack1 := nil.
            recoveredBlock23Block94PC := 101.
        ].
        recoveredBlock23Block94Step = 101 ifTrue: [
            recoveredBlock23Block94Stack2 := recoveredBlock23Block94Arg1.
            recoveredBlock23Block94PC := 102.
        ].
        recoveredBlock23Block94Step = 102 ifTrue: [
            recoveredBlock23Block94Stack3 := '*'.
            recoveredBlock23Block94PC := 104.
        ].
        recoveredBlock23Block94Step = 104 ifTrue: [
            recoveredBlock23Block94Stack2 := (recoveredBlock23Block94Stack2) ~= (recoveredBlock23Block94Stack3).
            recoveredBlock23Block94PC := 105.
        ].
        recoveredBlock23Block94Step = 105 ifTrue: [
            recoveredBlock23Block94Stack3 := recoveredBlock23Block94Arg1.
            recoveredBlock23Block94PC := 106.
        ].
        recoveredBlock23Block94Step = 106 ifTrue: [
            recoveredBlock23Block94Stack3 := (recoveredBlock23Block94Stack3) size.
            recoveredBlock23Block94PC := 107.
        ].
        recoveredBlock23Block94Step = 107 ifTrue: [
            recoveredBlock23Block94Stack4 := 0.
            recoveredBlock23Block94PC := 109.
        ].
        recoveredBlock23Block94Step = 109 ifTrue: [
            recoveredBlock23Block94Stack3 := (recoveredBlock23Block94Stack3) > (recoveredBlock23Block94Stack4).
            recoveredBlock23Block94PC := 110.
        ].
        recoveredBlock23Block94Step = 110 ifTrue: [
            recoveredBlock23Block94Stack2 := (recoveredBlock23Block94Stack2) & (recoveredBlock23Block94Stack3).
            recoveredBlock23Block94PC := 112.
        ].
        recoveredBlock23Block94Step = 112 ifTrue: [
            (recoveredBlock23Block94Stack2) ifTrue: [recoveredBlock23Block94PC := 116] ifFalse: [recoveredBlock23Block94PC := 140].
        ].
        recoveredBlock23Block94Step = 116 ifTrue: [
            recoveredBlock23Block94PC := 117.
        ].
        recoveredBlock23Block94Step = 117 ifTrue: [
            recoveredBlock23Block94Stack1 := recoveredLocal4.
            recoveredBlock23Block94PC := 120.
        ].
        recoveredBlock23Block94Step = 120 ifTrue: [
            recoveredBlock23Block94Stack2 := recoveredLocal2.
            recoveredBlock23Block94PC := 123.
        ].
        recoveredBlock23Block94Step = 123 ifTrue: [
            recoveredBlock23Block94Stack1 := (recoveredBlock23Block94Stack1) , (recoveredBlock23Block94Stack2).
            recoveredBlock23Block94PC := 125.
        ].
        recoveredBlock23Block94Step = 125 ifTrue: [
            recoveredBlock23Block94Stack2 := ' '.
            recoveredBlock23Block94PC := 127.
        ].
        recoveredBlock23Block94Step = 127 ifTrue: [
            recoveredBlock23Block94Stack1 := (recoveredBlock23Block94Stack1) , (recoveredBlock23Block94Stack2).
            recoveredBlock23Block94PC := 129.
        ].
        recoveredBlock23Block94Step = 129 ifTrue: [
            recoveredBlock23Block94Stack2 := recoveredBlock23Block94Arg1.
            recoveredBlock23Block94PC := 130.
        ].
        recoveredBlock23Block94Step = 130 ifTrue: [
            recoveredBlock23Block94Stack1 := (recoveredBlock23Block94Stack1) , (recoveredBlock23Block94Stack2).
            recoveredBlock23Block94PC := 132.
        ].
        recoveredBlock23Block94Step = 132 ifTrue: [
            recoveredBlock23Block94Stack2 := '; '.
            recoveredBlock23Block94PC := 134.
        ].
        recoveredBlock23Block94Step = 134 ifTrue: [
            recoveredBlock23Block94Stack1 := (recoveredBlock23Block94Stack1) , (recoveredBlock23Block94Stack2).
            recoveredBlock23Block94PC := 136.
        ].
        recoveredBlock23Block94Step = 136 ifTrue: [
            recoveredBlock23Block94Stack2 := recoveredBlock23Block94Stack1.
            recoveredBlock23Block94PC := 137.
        ].
        recoveredBlock23Block94Step = 137 ifTrue: [
            recoveredLocal4 := recoveredBlock23Block94Stack2.
            recoveredBlock23Block94PC := 140.
        ].
        recoveredBlock23Block94Step = 140 ifTrue: [
            recoveredBlock23Block94Result := recoveredBlock23Block94Stack1.
            recoveredBlock23Block94Done := true.
        ].
    ].
    recoveredBlock23Block94Result
].
            recoveredBlock23PC := 141.
        ].
        recoveredBlock23Step = 141 ifTrue: [
            recoveredBlock23Stack0 := (recoveredBlock23Stack0) do: (recoveredBlock23Stack1).
            recoveredBlock23PC := 143.
        ].
        recoveredBlock23Step = 143 ifTrue: [
            recoveredBlock23Result := recoveredBlock23Stack0.
            recoveredBlock23Done := true.
        ].
    ].
    recoveredBlock23Result
].
    (recoveredValue5) do: (recoveredValue6).
    recoveredValue7 := (self) model.
    recoveredValue8 := (recoveredValue7) instructions.
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := (recoveredValue8) at: (recoveredValue9).
    recoveredValue11 := recoveredLocal3.
    recoveredValue12 := (recoveredValue10) at: (recoveredValue11).
    recoveredLocal1 := recoveredValue12.
    recoveredValue13 := recoveredLocal1.
    recoveredValue14 := String.
    recoveredValue15 := Character.
    recoveredValue16 := (recoveredValue15) cr.
    recoveredValue17 := Character.
    recoveredValue18 := (recoveredValue17) lf.
    recoveredValue19 := (recoveredValue14) with: (recoveredValue16) with: (recoveredValue18).
    recoveredValue20 := (recoveredValue13) asArrayOfSubstringsSeparatedBy: (recoveredValue19).
    recoveredLocal1 := recoveredValue20.
    recoveredValue21 := recoveredLocal1.
    recoveredValue22 := [:recoveredBlock186Arg1 | 
    | recoveredBlock186Stack0 recoveredBlock186Stack1 recoveredBlock186Stack2 recoveredBlock186Stack3 recoveredBlock186Stack4 recoveredBlock186Stack5 recoveredBlock186PC recoveredBlock186Step recoveredBlock186Done recoveredBlock186Result |
    recoveredBlock186Stack0 := self.
    recoveredBlock186PC := 192.
    recoveredBlock186Done := false.
    [recoveredBlock186Done not] whileTrue: [
        recoveredBlock186Step := recoveredBlock186PC.
        recoveredBlock186Step = 192 ifTrue: [
            recoveredBlock186Stack1 := nil.
            recoveredBlock186PC := 193.
        ].
        recoveredBlock186Step = 193 ifTrue: [
            recoveredBlock186Stack2 := recoveredBlock186Arg1.
            recoveredBlock186PC := 194.
        ].
        recoveredBlock186Step = 194 ifTrue: [
            recoveredBlock186Stack3 := '*'.
            recoveredBlock186PC := 196.
        ].
        recoveredBlock186Step = 196 ifTrue: [
            recoveredBlock186Stack2 := (recoveredBlock186Stack2) ~= (recoveredBlock186Stack3).
            recoveredBlock186PC := 197.
        ].
        recoveredBlock186Step = 197 ifTrue: [
            recoveredBlock186Stack3 := recoveredBlock186Arg1.
            recoveredBlock186PC := 198.
        ].
        recoveredBlock186Step = 198 ifTrue: [
            recoveredBlock186Stack3 := (recoveredBlock186Stack3) size.
            recoveredBlock186PC := 199.
        ].
        recoveredBlock186Step = 199 ifTrue: [
            recoveredBlock186Stack4 := 0.
            recoveredBlock186PC := 201.
        ].
        recoveredBlock186Step = 201 ifTrue: [
            recoveredBlock186Stack3 := (recoveredBlock186Stack3) > (recoveredBlock186Stack4).
            recoveredBlock186PC := 202.
        ].
        recoveredBlock186Step = 202 ifTrue: [
            recoveredBlock186Stack2 := (recoveredBlock186Stack2) & (recoveredBlock186Stack3).
            recoveredBlock186PC := 204.
        ].
        recoveredBlock186Step = 204 ifTrue: [
            (recoveredBlock186Stack2) ifTrue: [recoveredBlock186PC := 208] ifFalse: [recoveredBlock186PC := 223].
        ].
        recoveredBlock186Step = 208 ifTrue: [
            recoveredBlock186PC := 209.
        ].
        recoveredBlock186Step = 209 ifTrue: [
            recoveredBlock186Stack1 := recoveredLocal4.
            recoveredBlock186PC := 212.
        ].
        recoveredBlock186Step = 212 ifTrue: [
            recoveredBlock186Stack2 := recoveredBlock186Arg1.
            recoveredBlock186PC := 213.
        ].
        recoveredBlock186Step = 213 ifTrue: [
            recoveredBlock186Stack1 := (recoveredBlock186Stack1) , (recoveredBlock186Stack2).
            recoveredBlock186PC := 215.
        ].
        recoveredBlock186Step = 215 ifTrue: [
            recoveredBlock186Stack2 := '; '.
            recoveredBlock186PC := 217.
        ].
        recoveredBlock186Step = 217 ifTrue: [
            recoveredBlock186Stack1 := (recoveredBlock186Stack1) , (recoveredBlock186Stack2).
            recoveredBlock186PC := 219.
        ].
        recoveredBlock186Step = 219 ifTrue: [
            recoveredBlock186Stack2 := recoveredBlock186Stack1.
            recoveredBlock186PC := 220.
        ].
        recoveredBlock186Step = 220 ifTrue: [
            recoveredLocal4 := recoveredBlock186Stack2.
            recoveredBlock186PC := 223.
        ].
        recoveredBlock186Step = 223 ifTrue: [
            recoveredBlock186Result := recoveredBlock186Stack1.
            recoveredBlock186Done := true.
        ].
    ].
    recoveredBlock186Result
].
    (recoveredValue21) do: (recoveredValue22).
    recoveredValue23 := recoveredLocal4.
    ^recoveredValue23
! !

"ASDBase.ic method 0x20565f48; bytecode file offset 0xe62858"
!SGConditionalTableSpecificationCtrl methodsFor: 'recovered'!
createMethodCode
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := '\'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) withCrs.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) model.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) rows.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := ''.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 237].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := 1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) to: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := [:recoveredBlock38Arg1 | 
    | recoveredBlock38Local1 recoveredBlock38Local2 recoveredBlock38Stack0 recoveredBlock38Stack1 recoveredBlock38Stack2 recoveredBlock38Stack3 recoveredBlock38PC recoveredBlock38Step recoveredBlock38Done recoveredBlock38Result |
    recoveredBlock38Stack0 := self.
    recoveredBlock38PC := 44.
    recoveredBlock38Done := false.
    [recoveredBlock38Done not] whileTrue: [
        recoveredBlock38Step := recoveredBlock38PC.
        recoveredBlock38Step = 44 ifTrue: [
            recoveredBlock38Stack1 := recoveredBlock38Arg1.
            recoveredBlock38PC := 45.
        ].
        recoveredBlock38Step = 45 ifTrue: [
            recoveredBlock38Stack1 := (recoveredBlock38Stack1) + (1).
            recoveredBlock38PC := 46.
        ].
        recoveredBlock38Step = 46 ifTrue: [
            recoveredBlock38Stack0 := (recoveredBlock38Stack0) conditionStringForRow: (recoveredBlock38Stack1).
            recoveredBlock38PC := 48.
        ].
        recoveredBlock38Step = 48 ifTrue: [
            recoveredBlock38Local2 := recoveredBlock38Stack0.
            recoveredBlock38PC := 49.
        ].
        recoveredBlock38Step = 49 ifTrue: [
            recoveredBlock38Stack0 := self.
            recoveredBlock38PC := 50.
        ].
        recoveredBlock38Step = 50 ifTrue: [
            recoveredBlock38Stack1 := recoveredBlock38Arg1.
            recoveredBlock38PC := 51.
        ].
        recoveredBlock38Step = 51 ifTrue: [
            recoveredBlock38Stack1 := (recoveredBlock38Stack1) + (1).
            recoveredBlock38PC := 52.
        ].
        recoveredBlock38Step = 52 ifTrue: [
            recoveredBlock38Stack0 := (recoveredBlock38Stack0) instructionStringForRow: (recoveredBlock38Stack1).
            recoveredBlock38PC := 54.
        ].
        recoveredBlock38Step = 54 ifTrue: [
            recoveredBlock38Local1 := recoveredBlock38Stack0.
            recoveredBlock38PC := 55.
        ].
        recoveredBlock38Step = 55 ifTrue: [
            recoveredBlock38Stack0 := nil.
            recoveredBlock38PC := 56.
        ].
        recoveredBlock38Step = 56 ifTrue: [
            recoveredBlock38Stack1 := recoveredBlock38Local2.
            recoveredBlock38PC := 57.
        ].
        recoveredBlock38Step = 57 ifTrue: [
            recoveredBlock38Stack1 := (recoveredBlock38Stack1) size.
            recoveredBlock38PC := 59.
        ].
        recoveredBlock38Step = 59 ifTrue: [
            recoveredBlock38Stack2 := 0.
            recoveredBlock38PC := 61.
        ].
        recoveredBlock38Step = 61 ifTrue: [
            recoveredBlock38Stack1 := (recoveredBlock38Stack1) > (recoveredBlock38Stack2).
            recoveredBlock38PC := 62.
        ].
        recoveredBlock38Step = 62 ifTrue: [
            (recoveredBlock38Stack1) ifTrue: [recoveredBlock38PC := 66] ifFalse: [recoveredBlock38PC := 158].
        ].
        recoveredBlock38Step = 66 ifTrue: [
            recoveredBlock38PC := 67.
        ].
        recoveredBlock38Step = 67 ifTrue: [
            recoveredBlock38Stack0 := recoveredBlock38Local1.
            recoveredBlock38PC := 68.
        ].
        recoveredBlock38Step = 68 ifTrue: [
            recoveredBlock38Stack0 := (recoveredBlock38Stack0) size.
            recoveredBlock38PC := 70.
        ].
        recoveredBlock38Step = 70 ifTrue: [
            recoveredBlock38Stack1 := 0.
            recoveredBlock38PC := 72.
        ].
        recoveredBlock38Step = 72 ifTrue: [
            recoveredBlock38Stack0 := (recoveredBlock38Stack0) > (recoveredBlock38Stack1).
            recoveredBlock38PC := 73.
        ].
        recoveredBlock38Step = 73 ifTrue: [
            (recoveredBlock38Stack0) ifTrue: [recoveredBlock38PC := 76] ifFalse: [recoveredBlock38PC := 122].
        ].
        recoveredBlock38Step = 76 ifTrue: [
            recoveredBlock38Stack0 := recoveredLocal4.
            recoveredBlock38PC := 79.
        ].
        recoveredBlock38Step = 79 ifTrue: [
            recoveredBlock38Stack1 := recoveredLocal2.
            recoveredBlock38PC := 82.
        ].
        recoveredBlock38Step = 82 ifTrue: [
            recoveredBlock38Stack0 := (recoveredBlock38Stack0) , (recoveredBlock38Stack1).
            recoveredBlock38PC := 84.
        ].
        recoveredBlock38Step = 84 ifTrue: [
            recoveredBlock38Stack1 := '/*'.
            recoveredBlock38PC := 86.
        ].
        recoveredBlock38Step = 86 ifTrue: [
            recoveredBlock38Stack0 := (recoveredBlock38Stack0) , (recoveredBlock38Stack1).
            recoveredBlock38PC := 88.
        ].
        recoveredBlock38Step = 88 ifTrue: [
            recoveredBlock38Stack1 := recoveredBlock38Arg1.
            recoveredBlock38PC := 89.
        ].
        recoveredBlock38Step = 89 ifTrue: [
            recoveredBlock38Stack1 := (recoveredBlock38Stack1) asString.
            recoveredBlock38PC := 91.
        ].
        recoveredBlock38Step = 91 ifTrue: [
            recoveredBlock38Stack0 := (recoveredBlock38Stack0) , (recoveredBlock38Stack1).
            recoveredBlock38PC := 93.
        ].
        recoveredBlock38Step = 93 ifTrue: [
            recoveredBlock38Stack1 := '*/ '.
            recoveredBlock38PC := 95.
        ].
        recoveredBlock38Step = 95 ifTrue: [
            recoveredBlock38Stack0 := (recoveredBlock38Stack0) , (recoveredBlock38Stack1).
            recoveredBlock38PC := 97.
        ].
        recoveredBlock38Step = 97 ifTrue: [
            recoveredBlock38Stack1 := 'if('.
            recoveredBlock38PC := 99.
        ].
        recoveredBlock38Step = 99 ifTrue: [
            recoveredBlock38Stack0 := (recoveredBlock38Stack0) , (recoveredBlock38Stack1).
            recoveredBlock38PC := 101.
        ].
        recoveredBlock38Step = 101 ifTrue: [
            recoveredBlock38Stack1 := recoveredBlock38Local2.
            recoveredBlock38PC := 102.
        ].
        recoveredBlock38Step = 102 ifTrue: [
            recoveredBlock38Stack0 := (recoveredBlock38Stack0) , (recoveredBlock38Stack1).
            recoveredBlock38PC := 104.
        ].
        recoveredBlock38Step = 104 ifTrue: [
            recoveredBlock38Stack1 := '){'.
            recoveredBlock38PC := 106.
        ].
        recoveredBlock38Step = 106 ifTrue: [
            recoveredBlock38Stack0 := (recoveredBlock38Stack0) , (recoveredBlock38Stack1).
            recoveredBlock38PC := 108.
        ].
        recoveredBlock38Step = 108 ifTrue: [
            recoveredBlock38Stack1 := recoveredBlock38Local1.
            recoveredBlock38PC := 109.
        ].
        recoveredBlock38Step = 109 ifTrue: [
            recoveredBlock38Stack0 := (recoveredBlock38Stack0) , (recoveredBlock38Stack1).
            recoveredBlock38PC := 111.
        ].
        recoveredBlock38Step = 111 ifTrue: [
            recoveredBlock38Stack1 := '} else '.
            recoveredBlock38PC := 113.
        ].
        recoveredBlock38Step = 113 ifTrue: [
            recoveredBlock38Stack0 := (recoveredBlock38Stack0) , (recoveredBlock38Stack1).
            recoveredBlock38PC := 115.
        ].
        recoveredBlock38Step = 115 ifTrue: [
            recoveredBlock38Stack1 := recoveredBlock38Stack0.
            recoveredBlock38PC := 116.
        ].
        recoveredBlock38Step = 116 ifTrue: [
            recoveredLocal4 := recoveredBlock38Stack1.
            recoveredBlock38PC := 119.
        ].
        recoveredBlock38Step = 119 ifTrue: [
            recoveredBlock38PC := 158.
        ].
        recoveredBlock38Step = 122 ifTrue: [
            recoveredBlock38Stack0 := recoveredLocal4.
            recoveredBlock38PC := 125.
        ].
        recoveredBlock38Step = 125 ifTrue: [
            recoveredBlock38Stack1 := recoveredLocal2.
            recoveredBlock38PC := 128.
        ].
        recoveredBlock38Step = 128 ifTrue: [
            recoveredBlock38Stack0 := (recoveredBlock38Stack0) , (recoveredBlock38Stack1).
            recoveredBlock38PC := 130.
        ].
        recoveredBlock38Step = 130 ifTrue: [
            recoveredBlock38Stack1 := '/*'.
            recoveredBlock38PC := 132.
        ].
        recoveredBlock38Step = 132 ifTrue: [
            recoveredBlock38Stack0 := (recoveredBlock38Stack0) , (recoveredBlock38Stack1).
            recoveredBlock38PC := 134.
        ].
        recoveredBlock38Step = 134 ifTrue: [
            recoveredBlock38Stack1 := recoveredBlock38Arg1.
            recoveredBlock38PC := 135.
        ].
        recoveredBlock38Step = 135 ifTrue: [
            recoveredBlock38Stack1 := (recoveredBlock38Stack1) asString.
            recoveredBlock38PC := 137.
        ].
        recoveredBlock38Step = 137 ifTrue: [
            recoveredBlock38Stack0 := (recoveredBlock38Stack0) , (recoveredBlock38Stack1).
            recoveredBlock38PC := 139.
        ].
        recoveredBlock38Step = 139 ifTrue: [
            recoveredBlock38Stack1 := '*/ '.
            recoveredBlock38PC := 141.
        ].
        recoveredBlock38Step = 141 ifTrue: [
            recoveredBlock38Stack0 := (recoveredBlock38Stack0) , (recoveredBlock38Stack1).
            recoveredBlock38PC := 143.
        ].
        recoveredBlock38Step = 143 ifTrue: [
            recoveredBlock38Stack1 := 'if('.
            recoveredBlock38PC := 145.
        ].
        recoveredBlock38Step = 145 ifTrue: [
            recoveredBlock38Stack0 := (recoveredBlock38Stack0) , (recoveredBlock38Stack1).
            recoveredBlock38PC := 147.
        ].
        recoveredBlock38Step = 147 ifTrue: [
            recoveredBlock38Stack1 := recoveredBlock38Local2.
            recoveredBlock38PC := 148.
        ].
        recoveredBlock38Step = 148 ifTrue: [
            recoveredBlock38Stack0 := (recoveredBlock38Stack0) , (recoveredBlock38Stack1).
            recoveredBlock38PC := 150.
        ].
        recoveredBlock38Step = 150 ifTrue: [
            recoveredBlock38Stack1 := '){;} else '.
            recoveredBlock38PC := 152.
        ].
        recoveredBlock38Step = 152 ifTrue: [
            recoveredBlock38Stack0 := (recoveredBlock38Stack0) , (recoveredBlock38Stack1).
            recoveredBlock38PC := 154.
        ].
        recoveredBlock38Step = 154 ifTrue: [
            recoveredBlock38Stack1 := recoveredBlock38Stack0.
            recoveredBlock38PC := 155.
        ].
        recoveredBlock38Step = 155 ifTrue: [
            recoveredLocal4 := recoveredBlock38Stack1.
            recoveredBlock38PC := 158.
        ].
        recoveredBlock38Step = 158 ifTrue: [
            recoveredBlock38Result := recoveredBlock38Stack0.
            recoveredBlock38Done := true.
        ].
    ].
    recoveredBlock38Result
].
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack1 := '/*'.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack1 := '*/ '.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack1 := '{'.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack2 := (recoveredStack2) model.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack2 := (recoveredStack2) rows.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack1 := (recoveredStack1) instructionStringForRow: (recoveredStack2).
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack1 := '}'.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack1 := ';'.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack0 := (recoveredStack0) getTriggerMethod.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 233] ifFalse: [recoveredPC := 224].
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            (recoveredStack0) saveMethodString: (recoveredStack1) toMethod: (recoveredStack2).
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

