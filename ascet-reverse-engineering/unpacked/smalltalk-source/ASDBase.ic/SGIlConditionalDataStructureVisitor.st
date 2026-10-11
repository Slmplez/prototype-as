"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000d95c; bytecode file offset 0x90a4b8"
!SGIlConditionalDataStructureVisitor methodsFor: 'recovered'!
tempAssignExpr: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001cb68; bytecode file offset 0x92209c"
!SGIlConditionalDataStructureVisitor methodsFor: 'recovered'!
xIndex
    ^'X'
! !

"ASDBase.ic method 0x2001e890; bytecode file offset 0x92209c"
!SGIlConditionalDataStructureVisitor methodsFor: 'recovered'!
yIndex
    ^'Y'
! !

"ASDBase.ic method 0x2006914c; bytecode file offset 0x965b90"
!SGIlConditionalDataStructureVisitor methodsFor: 'recovered'!
methodDecl
    | recoveredValue0 |
    recoveredValue0 := ownerMethodDecl.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006a080; bytecode file offset 0x966bdc"
!SGIlConditionalDataStructureVisitor methodsFor: 'recovered'!
elementRead
    | recoveredValue0 |
    recoveredValue0 := elementRead.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006a7bc; bytecode file offset 0x967a18"
!SGIlConditionalDataStructureVisitor methodsFor: 'recovered'!
elementWrite
    | recoveredValue0 |
    recoveredValue0 := elementWrite.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006c9b4; bytecode file offset 0x9692b0"
!SGIlConditionalDataStructureVisitor methodsFor: 'recovered'!
elementInstanceRead
    | recoveredValue0 |
    recoveredValue0 := elementInstanceRead.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d228; bytecode file offset 0x969c04"
!SGIlConditionalDataStructureVisitor methodsFor: 'recovered'!
elementInstanceWrite
    | recoveredValue0 |
    recoveredValue0 := elementInstanceWrite.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d45c; bytecode file offset 0x96a390"
!SGIlConditionalDataStructureVisitor methodsFor: 'recovered'!
executableContainsCode
    | recoveredValue0 |
    recoveredValue0 := executableContainsCode.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006ddd8; bytecode file offset 0x96a9dc"
!SGIlConditionalDataStructureVisitor methodsFor: 'recovered'!
methodInstanceCall
    | recoveredValue0 |
    recoveredValue0 := methodInstanceCall.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006e584; bytecode file offset 0x96af48"
!SGIlConditionalDataStructureVisitor methodsFor: 'recovered'!
tempVarRead
    | recoveredValue0 |
    recoveredValue0 := tempVarRead.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006e8a8; bytecode file offset 0x96b41c"
!SGIlConditionalDataStructureVisitor methodsFor: 'recovered'!
tempVarWrite
    | recoveredValue0 |
    recoveredValue0 := tempVarWrite.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006f310; bytecode file offset 0x96bc1c"
!SGIlConditionalDataStructureVisitor methodsFor: 'recovered'!
tableInput
    | recoveredValue0 |
    recoveredValue0 := tableInput.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006f3d8; bytecode file offset 0x96bf7c"
!SGIlConditionalDataStructureVisitor methodsFor: 'recovered'!
methodInput
    | recoveredValue0 |
    recoveredValue0 := methodInput.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006f790; bytecode file offset 0x96c1f4"
!SGIlConditionalDataStructureVisitor methodsFor: 'recovered'!
sysConstForCppIf
    | recoveredValue0 |
    recoveredValue0 := sysConstForCppIf.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006fbc8; bytecode file offset 0x96c6ac"
!SGIlConditionalDataStructureVisitor methodsFor: 'recovered'!
callCondition
    | recoveredValue0 |
    recoveredValue0 := callCondition.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200931a8; bytecode file offset 0x98fa60"
!SGIlConditionalDataStructureVisitor methodsFor: 'recovered'!
addSysConstForCppIf: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := sysConstForCppIf.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009634c; bytecode file offset 0x992c48"
!SGIlConditionalDataStructureVisitor methodsFor: 'recovered'!
castExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) expr.
    (self) visitNode: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2009636c; bytecode file offset 0x992c48"
!SGIlConditionalDataStructureVisitor methodsFor: 'recovered'!
modelIdentifier: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) mdlNode.
    (self) readAccess: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2009638c; bytecode file offset 0x992c48"
!SGIlConditionalDataStructureVisitor methodsFor: 'recovered'!
directAccess: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) mdlNode.
    (self) readAccess: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200aa1a0; bytecode file offset 0x9a6a88"
!SGIlConditionalDataStructureVisitor methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) methodDecl.
    recoveredValue2 := (recoveredValue1) errLabel.
    (recoveredValue0) nextPutAll: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200c03bc; bytecode file offset 0x9bd228"
!SGIlConditionalDataStructureVisitor methodsFor: 'recovered'!
methodDecl: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ownerMethodDecl := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c0c48; bytecode file offset 0x9bdf14"
!SGIlConditionalDataStructureVisitor methodsFor: 'recovered'!
elementRead: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    elementRead := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c1f34; bytecode file offset 0x9beac8"
!SGIlConditionalDataStructureVisitor methodsFor: 'recovered'!
elementWrite: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    elementWrite := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c3064; bytecode file offset 0x9bfde0"
!SGIlConditionalDataStructureVisitor methodsFor: 'recovered'!
elementInstanceRead: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    elementInstanceRead := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c3640; bytecode file offset 0x9c058c"
!SGIlConditionalDataStructureVisitor methodsFor: 'recovered'!
elementInstanceWrite: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    elementInstanceWrite := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c404c; bytecode file offset 0x9c0bf0"
!SGIlConditionalDataStructureVisitor methodsFor: 'recovered'!
executableContainsCode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    executableContainsCode := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4558; bytecode file offset 0x9c11bc"
!SGIlConditionalDataStructureVisitor methodsFor: 'recovered'!
methodInstanceCall: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    methodInstanceCall := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4ac4; bytecode file offset 0x9c16b0"
!SGIlConditionalDataStructureVisitor methodsFor: 'recovered'!
tempVarRead: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    tempVarRead := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4e30; bytecode file offset 0x9c1afc"
!SGIlConditionalDataStructureVisitor methodsFor: 'recovered'!
tempVarWrite: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    tempVarWrite := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c59b4; bytecode file offset 0x9c22c8"
!SGIlConditionalDataStructureVisitor methodsFor: 'recovered'!
tableInput: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    tableInput := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5b70; bytecode file offset 0x9c25bc"
!SGIlConditionalDataStructureVisitor methodsFor: 'recovered'!
methodInput: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    methodInput := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5e88; bytecode file offset 0x9c2804"
!SGIlConditionalDataStructureVisitor methodsFor: 'recovered'!
sysConstForCppIf: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    sysConstForCppIf := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c6208; bytecode file offset 0x9c2bec"
!SGIlConditionalDataStructureVisitor methodsFor: 'recovered'!
callCondition: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    callCondition := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c8cc8; bytecode file offset 0x9c5684"
!SGIlConditionalDataStructureVisitor methodsFor: 'recovered'!
table: recoveredArg1 input: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) xIndex.
    recoveredValue3 := (self) table: (recoveredValue0) input: (recoveredValue1) index: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200c8cf8; bytecode file offset 0x9c5684"
!SGIlConditionalDataStructureVisitor methodsFor: 'recovered'!
table: recoveredArg1 inputY: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) yIndex.
    recoveredValue3 := (self) table: (recoveredValue0) input: (recoveredValue1) index: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200c8d68; bytecode file offset 0x9c5684"
!SGIlConditionalDataStructureVisitor methodsFor: 'recovered'!
table: recoveredArg1 inputX: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) xIndex.
    recoveredValue3 := (self) table: (recoveredValue0) input: (recoveredValue1) index: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200dbcb4; bytecode file offset 0x9d8570"
!SGIlConditionalDataStructureVisitor methodsFor: 'recovered'!
complexWarning: recoveredArg1 source: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) debugCode.
    (recoveredValue0) ileWarningNo: (97) with: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200dc8ec; bytecode file offset 0x9d9278"
!SGIlConditionalDataStructureVisitor methodsFor: 'recovered'!
table: recoveredArg1 addXInput: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) xIndex.
    (self) table: (recoveredValue0) addInput: (recoveredValue1) index: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200dc95c; bytecode file offset 0x9d9278"
!SGIlConditionalDataStructureVisitor methodsFor: 'recovered'!
table: recoveredArg1 addYInput: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) yIndex.
    (self) table: (recoveredValue0) addInput: (recoveredValue1) index: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200dc99c; bytecode file offset 0x9d9278"
!SGIlConditionalDataStructureVisitor methodsFor: 'recovered'!
table: recoveredArg1 addInput: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) xIndex.
    (self) table: (recoveredValue0) addInput: (recoveredValue1) index: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200e984c; bytecode file offset 0x9e61c0"
!SGIlConditionalDataStructureVisitor methodsFor: 'recovered'!
getAt1DSpecialCall: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) specialCall: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := super methodCall: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200e9874; bytecode file offset 0x9e61c0"
!SGIlConditionalDataStructureVisitor methodsFor: 'recovered'!
searchDistributionSpecialCall: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) specialCall: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := super methodCall: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200e989c; bytecode file offset 0x9e61c0"
!SGIlConditionalDataStructureVisitor methodsFor: 'recovered'!
interpolate1DGroupSpecialCall: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) specialCall: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := super methodCall: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200e98c4; bytecode file offset 0x9e61c0"
!SGIlConditionalDataStructureVisitor methodsFor: 'recovered'!
getAt2DSpecialCall: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) specialCall: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := super methodCall: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200e98d8; bytecode file offset 0x9e61c0"
!SGIlConditionalDataStructureVisitor methodsFor: 'recovered'!
interpolate2DGroupSpecialCall: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) specialCall: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := super methodCall: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200e9f74; bytecode file offset 0x9e6834"
!SGIlConditionalDataStructureVisitor methodsFor: 'recovered'!
fieldAccess: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) receiver.
    (self) visitNode: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (self) readFieldAccess: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x200ed498; bytecode file offset 0x9e9d64"
!SGIlConditionalDataStructureVisitor methodsFor: 'recovered'!
method: recoveredArg1 parm: recoveredArg2 addInput: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := currentCondition.
    recoveredValue4 := (recoveredValue3) asIleCopy.
    recoveredValue5 := (self) method: (recoveredValue0) parm: (recoveredValue1) addInput: (recoveredValue2) condition: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x200ed4a8; bytecode file offset 0x9e9d64"
!SGIlConditionalDataStructureVisitor methodsFor: 'recovered'!
table: recoveredArg1 addInput: recoveredArg2 index: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := currentCondition.
    recoveredValue4 := (recoveredValue3) asIleCopy.
    recoveredValue5 := (self) table: (recoveredValue0) addInput: (recoveredValue1) index: (recoveredValue2) condition: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x2010e894; bytecode file offset 0xa0b158"
!SGIlConditionalDataStructureVisitor methodsFor: 'recovered'!
assignAtExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) baseExpr.
    (self) visitNode: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    super assignAtExpr: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x2010eb60; bytecode file offset 0xa0b428"
!SGIlConditionalDataStructureVisitor methodsFor: 'recovered'!
tempAssignIdentifier: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) tempAssign.
    recoveredValue2 := (recoveredValue1) tempVar.
    (self) visitNode: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := super tempAssignIdentifier: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20114464; bytecode file offset 0xa10d28"
!SGIlConditionalDataStructureVisitor methodsFor: 'recovered'!
assignExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) lValue.
    recoveredValue2 := (recoveredValue1) expr.
    (self) writeExpr: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) expr.
    (self) visitNode: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x20129dd8; bytecode file offset 0xa26694"
!SGIlConditionalDataStructureVisitor methodsFor: 'recovered'!
methodCall
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := methodCall.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            methodCall := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := methodCall.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2012aa8c; bytecode file offset 0xa27388"
!SGIlConditionalDataStructureVisitor methodsFor: 'recovered'!
usesElement
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := usesElement.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            usesElement := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := usesElement.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2018aeb4; bytecode file offset 0xa8777c"
!SGIlConditionalDataStructureVisitor methodsFor: 'recovered'!
readAccess: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) varDecl.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    (self) readAccessChainSuffix: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    (self) elementDeclRead: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) accessChain.
    recoveredValue6 := currentCondition.
    (self) setElementInstanceRead: (recoveredValue5) condition: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x201a65a0; bytecode file offset 0xaa2e64"
!SGIlConditionalDataStructureVisitor methodsFor: 'recovered'!
readAccessChainSuffix: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) accessChain.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) accessChain.
    recoveredValue4 := (recoveredValue3) size.
    recoveredValue5 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 |
    recoveredBlock11Value0 := recoveredBlock11Arg1.
    recoveredBlock11Value1 := (self) elementDeclRead: (recoveredBlock11Value0).
    recoveredBlock11Value1
].
    (recoveredValue1) from: (2) to: (recoveredValue4) do: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x20202da8; bytecode file offset 0xaff678"
!SGIlConditionalDataStructureVisitor methodsFor: 'recovered'!
elementDeclRead: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) elementRead.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) elementRead.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := [
    | recoveredBlock9Value0 recoveredBlock9Value1 |
    recoveredBlock9Value0 := (self) ileBuilder.
    recoveredBlock9Value1 := (recoveredBlock9Value0) literalFalse.
    recoveredBlock9Value1
].
    recoveredValue5 := (recoveredValue2) at: (recoveredValue3) ifAbsent: (recoveredValue4).
    recoveredValue6 := currentCondition.
    recoveredValue7 := (recoveredValue6) asIleCopy.
    recoveredValue8 := (recoveredValue5) orExpr: (recoveredValue7).
    (recoveredValue0) at: (recoveredValue1) put: (recoveredValue8).
    ^self
! !

"ASDBase.ic method 0x20204fc0; bytecode file offset 0xb01894"
!SGIlConditionalDataStructureVisitor methodsFor: 'recovered'!
withInstance: recoveredArg1 condition: recoveredArg2 in: recoveredArg3 do: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg4.
    recoveredValue4 := [
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 recoveredBlock8Value4 recoveredBlock8Value5 recoveredBlock8Value6 |
    recoveredBlock8Value0 := Array.
    recoveredBlock8Value1 := (self) generator.
    recoveredBlock8Value2 := (recoveredBlock8Value1) ileBuilder.
    recoveredBlock8Value3 := (recoveredBlock8Value2) literalFalse.
    recoveredBlock8Value4 := LookupTable.
    recoveredBlock8Value5 := (recoveredBlock8Value4) new.
    recoveredBlock8Value6 := (recoveredBlock8Value0) with: (recoveredBlock8Value3) with: (recoveredBlock8Value5).
    recoveredBlock8Value6
].
    recoveredValue5 := (self) withInstance: (recoveredValue0) condition: (recoveredValue1) in: (recoveredValue2) do: (recoveredValue3) newElement: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x2021bb0c; bytecode file offset 0xb183d8"
!SGIlConditionalDataStructureVisitor methodsFor: 'recovered'!
pmiCodeBlock: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) code.
    recoveredValue2 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            recoveredBlock6Stack1 := recoveredBlock6Arg1.
            recoveredBlock6PC := 13.
        ].
        recoveredBlock6Step = 13 ifTrue: [
            (recoveredBlock6Stack0) visitNode: (recoveredBlock6Stack1).
            recoveredBlock6PC := 15.
        ].
        recoveredBlock6Step = 15 ifTrue: [
            recoveredBlock6Stack0 := nil.
            recoveredBlock6PC := 16.
        ].
        recoveredBlock6Step = 16 ifTrue: [
            recoveredBlock6Stack1 := recoveredBlock6Arg1.
            recoveredBlock6PC := 17.
        ].
        recoveredBlock6Step = 17 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) ileHasMdlIdentifier.
            recoveredBlock6PC := 18.
        ].
        recoveredBlock6Step = 18 ifTrue: [
            (recoveredBlock6Stack1) ifTrue: [recoveredBlock6PC := 22] ifFalse: [recoveredBlock6PC := 28].
        ].
        recoveredBlock6Step = 22 ifTrue: [
            recoveredBlock6PC := 23.
        ].
        recoveredBlock6Step = 23 ifTrue: [
            recoveredBlock6Stack0 := self.
            recoveredBlock6PC := 24.
        ].
        recoveredBlock6Step = 24 ifTrue: [
            recoveredBlock6Stack1 := recoveredBlock6Arg1.
            recoveredBlock6PC := 25.
        ].
        recoveredBlock6Step = 25 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) mdlNode.
            recoveredBlock6PC := 26.
        ].
        recoveredBlock6Step = 26 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) writeAccess: (recoveredBlock6Stack1).
            recoveredBlock6PC := 28.
        ].
        recoveredBlock6Step = 28 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack0.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
    (recoveredValue1) do: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x2021c478; bytecode file offset 0xb18d4c"
!SGIlConditionalDataStructureVisitor methodsFor: 'recovered'!
writeAccessTempId: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := (self) tempVarWrite.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) tempName.
    recoveredValue3 := (self) tempVarWrite.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) tempName.
    recoveredValue6 := [
    | recoveredBlock11Value0 recoveredBlock11Value1 |
    recoveredBlock11Value0 := (self) ileBuilder.
    recoveredBlock11Value1 := (recoveredBlock11Value0) literalFalse.
    recoveredBlock11Value1
].
    recoveredValue7 := (recoveredValue3) at: (recoveredValue5) ifAbsent: (recoveredValue6).
    recoveredValue8 := currentCondition.
    recoveredValue9 := (recoveredValue8) asIleCopy.
    recoveredValue10 := (recoveredValue7) orExpr: (recoveredValue9).
    (recoveredValue0) at: (recoveredValue2) put: (recoveredValue10).
    ^self
! !

"ASDBase.ic method 0x2021c4c4; bytecode file offset 0xb18d98"
!SGIlConditionalDataStructureVisitor methodsFor: 'recovered'!
tempIdentifier: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := (self) tempVarRead.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) tempName.
    recoveredValue3 := (self) tempVarRead.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) tempName.
    recoveredValue6 := [
    | recoveredBlock11Value0 recoveredBlock11Value1 |
    recoveredBlock11Value0 := (self) ileBuilder.
    recoveredBlock11Value1 := (recoveredBlock11Value0) literalFalse.
    recoveredBlock11Value1
].
    recoveredValue7 := (recoveredValue3) at: (recoveredValue5) ifAbsent: (recoveredValue6).
    recoveredValue8 := currentCondition.
    recoveredValue9 := (recoveredValue8) asIleCopy.
    recoveredValue10 := (recoveredValue7) orExpr: (recoveredValue9).
    (recoveredValue0) at: (recoveredValue2) put: (recoveredValue10).
    recoveredValue11 := recoveredArg1.
    ^recoveredValue11
! !

"ASDBase.ic method 0x20228fa4; bytecode file offset 0xb25868"
!SGIlConditionalDataStructureVisitor methodsFor: 'recovered'!
cppIfThenStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) expr.
    (self) visitNode: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) expr.
    recoveredValue4 := [
    | recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 |
    recoveredBlock15Value0 := recoveredArg1.
    recoveredBlock15Value1 := (recoveredBlock15Value0) thenStmnt.
    recoveredBlock15Value2 := (self) visitNode: (recoveredBlock15Value1).
    recoveredBlock15Value2
].
    (self) withCompileConstantExpression: (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x20238a84; bytecode file offset 0xb3534c"
!SGIlConditionalDataStructureVisitor methodsFor: 'recovered'!
braceExpressions: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SGIlBraceStmntTransformation.
    recoveredValue1 := (recoveredValue0) create.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [:recoveredBlock13Arg1 :recoveredBlock13Arg2 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 recoveredBlock13Value3 recoveredBlock13Value4 recoveredBlock13Value5 |
    recoveredBlock13Value0 := recoveredArg1.
    recoveredBlock13Value1 := recoveredBlock13Arg1.
    recoveredBlock13Value2 := recoveredLocal1.
    recoveredBlock13Value3 := recoveredBlock13Arg2.
    recoveredBlock13Value4 := (recoveredBlock13Value2) visitNode: (recoveredBlock13Value3).
    recoveredBlock13Value5 := (recoveredBlock13Value0) at: (recoveredBlock13Value1) put: (recoveredBlock13Value4).
    recoveredBlock13Value5
].
    (recoveredValue2) keysAndValuesDo: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2025548c; bytecode file offset 0xb51d5c"
!SGIlConditionalDataStructureVisitor methodsFor: 'recovered'!
isStackVar: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) isIleModelIdentifier.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) isIleArgument.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 37] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlNode.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) isMdlBlockVarDecl.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 37] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) isIleIndexedExpr.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 37].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := (recoveredStack2) baseExpr.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) isStackVar: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20269e30; bytecode file offset 0xb666f4"
!SGIlConditionalDataStructureVisitor methodsFor: 'recovered'!
declWithScopeCompare
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:block280e0118Arg1 :block280e0118Arg2 | 
    | block280e0118Stack0 block280e0118Stack1 block280e0118Stack2 block280e0118Stack3 block280e0118Stack4 block280e0118PC block280e0118Step block280e0118Done block280e0118Result |
    block280e0118Stack0 := self.
    block280e0118PC := 4.
    block280e0118Done := false.
    [block280e0118Done not] whileTrue: [
        block280e0118Step := block280e0118PC.
        block280e0118Step = 4 ifTrue: [
            block280e0118Stack1 := true.
            block280e0118PC := 5.
        ].
        block280e0118Step = 5 ifTrue: [
            block280e0118Stack2 := block280e0118Arg1.
            block280e0118PC := 6.
        ].
        block280e0118Step = 6 ifTrue: [
            block280e0118Stack2 := (block280e0118Stack2) errLabel.
            block280e0118PC := 7.
        ].
        block280e0118Step = 7 ifTrue: [
            block280e0118Stack3 := block280e0118Arg2.
            block280e0118PC := 8.
        ].
        block280e0118Step = 8 ifTrue: [
            block280e0118Stack3 := (block280e0118Stack3) errLabel.
            block280e0118PC := 9.
        ].
        block280e0118Step = 9 ifTrue: [
            block280e0118Stack2 := (block280e0118Stack2) lessThanWithCase: (block280e0118Stack3).
            block280e0118PC := 10.
        ].
        block280e0118Step = 10 ifTrue: [
            (block280e0118Stack2) ifTrue: [block280e0118PC := 32] ifFalse: [block280e0118PC := 14].
        ].
        block280e0118Step = 14 ifTrue: [
            block280e0118PC := 15.
        ].
        block280e0118Step = 15 ifTrue: [
            block280e0118Stack1 := false.
            block280e0118PC := 16.
        ].
        block280e0118Step = 16 ifTrue: [
            block280e0118Stack2 := block280e0118Arg1.
            block280e0118PC := 17.
        ].
        block280e0118Step = 17 ifTrue: [
            block280e0118Stack2 := (block280e0118Stack2) errLabel.
            block280e0118PC := 18.
        ].
        block280e0118Step = 18 ifTrue: [
            block280e0118Stack3 := block280e0118Arg2.
            block280e0118PC := 19.
        ].
        block280e0118Step = 19 ifTrue: [
            block280e0118Stack3 := (block280e0118Stack3) errLabel.
            block280e0118PC := 20.
        ].
        block280e0118Step = 20 ifTrue: [
            block280e0118Stack2 := (block280e0118Stack2) = (block280e0118Stack3).
            block280e0118PC := 21.
        ].
        block280e0118Step = 21 ifTrue: [
            (block280e0118Stack2) ifTrue: [block280e0118PC := 24] ifFalse: [block280e0118PC := 32].
        ].
        block280e0118Step = 24 ifTrue: [
            block280e0118PC := 25.
        ].
        block280e0118Step = 25 ifTrue: [
            block280e0118Stack1 := block280e0118Arg1.
            block280e0118PC := 26.
        ].
        block280e0118Step = 26 ifTrue: [
            block280e0118Stack1 := (block280e0118Stack1) scope.
            block280e0118PC := 27.
        ].
        block280e0118Step = 27 ifTrue: [
            block280e0118Stack1 := (block280e0118Stack1) errLabel.
            block280e0118PC := 28.
        ].
        block280e0118Step = 28 ifTrue: [
            block280e0118Stack2 := block280e0118Arg2.
            block280e0118PC := 29.
        ].
        block280e0118Step = 29 ifTrue: [
            block280e0118Stack2 := (block280e0118Stack2) scope.
            block280e0118PC := 30.
        ].
        block280e0118Step = 30 ifTrue: [
            block280e0118Stack2 := (block280e0118Stack2) errLabel.
            block280e0118PC := 31.
        ].
        block280e0118Step = 31 ifTrue: [
            block280e0118Stack1 := (block280e0118Stack1) <= (block280e0118Stack2).
            block280e0118PC := 32.
        ].
        block280e0118Step = 32 ifTrue: [
            block280e0118Result := block280e0118Stack1.
            block280e0118Done := true.
        ].
    ].
    block280e0118Result
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202844d4; bytecode file offset 0xb80da4"
!SGIlConditionalDataStructureVisitor methodsFor: 'recovered'!
parmAssign: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isIleArgumentIn.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleArgumentInOut.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 22].
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
            super parmAssign: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleArgumentOut.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleArgumentInOut.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := (recoveredStack2) expr.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) writeExpr: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20288868; bytecode file offset 0xb85130"
!SGIlConditionalDataStructureVisitor methodsFor: 'recovered'!
setElementInstanceRead: recoveredArg1 condition: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack5 := (recoveredStack5) size.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := (recoveredStack3) copyFrom: (recoveredStack4) to: (recoveredStack5).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack4 := (recoveredStack4) asIleCopy.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack5 := (recoveredStack5) elementInstanceRead.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack2) setInstance: (recoveredStack3) condition: (recoveredStack4) in: (recoveredStack5).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 12] ifFalse: [recoveredLocal1 := nil. recoveredPC := 40]] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202adcd8; bytecode file offset 0xbaa5b8"
!SGIlConditionalDataStructureVisitor methodsFor: 'recovered'!
writeAccess: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) varDecl.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    (self) readAccessChainSuffix: (recoveredValue2).
    recoveredValue3 := (self) elementWrite.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (self) elementWrite.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := [
    | recoveredBlock16Value0 recoveredBlock16Value1 |
    recoveredBlock16Value0 := (self) ileBuilder.
    recoveredBlock16Value1 := (recoveredBlock16Value0) literalFalse.
    recoveredBlock16Value1
].
    recoveredValue8 := (recoveredValue5) at: (recoveredValue6) ifAbsent: (recoveredValue7).
    recoveredValue9 := currentCondition.
    recoveredValue10 := (recoveredValue9) asIleCopy.
    recoveredValue11 := (recoveredValue8) orExpr: (recoveredValue10).
    (recoveredValue3) at: (recoveredValue4) put: (recoveredValue11).
    recoveredValue12 := recoveredArg1.
    recoveredValue13 := (recoveredValue12) accessChain.
    recoveredValue14 := currentCondition.
    (self) setElementInstanceWrite: (recoveredValue13) condition: (recoveredValue14).
    ^self
! !

"ASDBase.ic method 0x202dd804; bytecode file offset 0xbda0d0"
!SGIlConditionalDataStructureVisitor methodsFor: 'recovered'!
setElementInstanceWrite: recoveredArg1 condition: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack5 := (recoveredStack5) size.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := (recoveredStack3) copyFrom: (recoveredStack4) to: (recoveredStack5).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack4 := (recoveredStack4) asIleCopy.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack5 := (recoveredStack5) elementInstanceRead.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack2) setInstance: (recoveredStack3) condition: (recoveredStack4) in: (recoveredStack5).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 12] ifFalse: [recoveredLocal1 := nil. recoveredPC := 40]] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := (recoveredStack3) elementInstanceWrite.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) setInstance: (recoveredStack1) condition: (recoveredStack2) in: (recoveredStack3).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202e3a84; bytecode file offset 0xbe0358"
!SGIlConditionalDataStructureVisitor methodsFor: 'recovered'!
declFieldAccess: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack1 := false.
            recoveredBlock4PC := 11.
        ].
        recoveredBlock4Step = 11 ifTrue: [
            recoveredBlock4Stack2 := recoveredArg1.
            recoveredBlock4PC := 14.
        ].
        recoveredBlock4Step = 14 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) elementDecl.
            recoveredBlock4PC := 15.
        ].
        recoveredBlock4Step = 15 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) isIleAdditionalDecl.
            recoveredBlock4PC := 16.
        ].
        recoveredBlock4Step = 16 ifTrue: [
            (recoveredBlock4Stack2) ifTrue: [recoveredBlock4PC := 20] ifFalse: [recoveredBlock4PC := 27].
        ].
        recoveredBlock4Step = 20 ifTrue: [
            recoveredBlock4PC := 21.
        ].
        recoveredBlock4Step = 21 ifTrue: [
            recoveredBlock4Stack1 := recoveredArg1.
            recoveredBlock4PC := 24.
        ].
        recoveredBlock4Step = 24 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) elementDecl.
            recoveredBlock4PC := 25.
        ].
        recoveredBlock4Step = 25 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) scope.
            recoveredBlock4PC := 26.
        ].
        recoveredBlock4Step = 26 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) isNil.
            recoveredBlock4PC := 27.
        ].
        recoveredBlock4Step = 27 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack1.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := [
    'Not yet implemented for SGIlDeclFieldAccess.'
].
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) receiver.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) visitNode: (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20305fcc; bytecode file offset 0xc02894"
!SGIlConditionalDataStructureVisitor methodsFor: 'recovered'!
cppIfThenElseStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) expr.
    (self) visitNode: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) expr.
    recoveredValue4 := [
    | recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 |
    recoveredBlock15Value0 := recoveredArg1.
    recoveredBlock15Value1 := (recoveredBlock15Value0) thenStmnt.
    recoveredBlock15Value2 := (self) visitNode: (recoveredBlock15Value1).
    recoveredBlock15Value2
].
    (self) withCompileConstantExpression: (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) expr.
    recoveredValue7 := (recoveredValue6) not.
    recoveredValue8 := [
    | recoveredBlock36Value0 recoveredBlock36Value1 recoveredBlock36Value2 |
    recoveredBlock36Value0 := recoveredArg1.
    recoveredBlock36Value1 := (recoveredBlock36Value0) elseStmnt.
    recoveredBlock36Value2 := (self) visitNode: (recoveredBlock36Value1).
    recoveredBlock36Value2
].
    (self) withCompileConstantExpression: (recoveredValue7) do: (recoveredValue8).
    recoveredValue9 := recoveredArg1.
    ^recoveredValue9
! !

"ASDBase.ic method 0x20310c40; bytecode file offset 0xc0d510"
!SGIlConditionalDataStructureVisitor methodsFor: 'recovered'!
setMethodCall: recoveredArg1 instance: recoveredArg2 condition: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) accessChain.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 29.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := (recoveredStack3) accessChain.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack5 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack5 := (recoveredStack5) accessChain.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack5 := (recoveredStack5) size.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := (recoveredStack3) copyFrom: (recoveredStack4) to: (recoveredStack5).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack5 := (recoveredStack5) elementInstanceRead.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack2) setInstance: (recoveredStack3) condition: (recoveredStack4) in: (recoveredStack5).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 14] ifFalse: [recoveredLocal1 := nil. recoveredPC := 43]] ifFalse: [recoveredPC := 33].
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 41] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := (recoveredStack2) accessChain.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack4 := (recoveredStack4) methodInstanceCall.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) setMethodCall: (recoveredStack1) instance: (recoveredStack2) condition: (recoveredStack3) in: (recoveredStack4).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2031df24; bytecode file offset 0xc1a7f0"
!SGIlConditionalDataStructureVisitor methodsFor: 'recovered'!
table: recoveredArg1 input: recoveredArg2 index: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := tableInput.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    ^nil
].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    recoveredValue4 := [:recoveredBlock20Arg1 | 
    | recoveredBlock20Stack0 recoveredBlock20Stack1 recoveredBlock20Stack2 recoveredBlock20Stack3 recoveredBlock20Stack4 recoveredBlock20PC recoveredBlock20Step recoveredBlock20Done recoveredBlock20Result |
    recoveredBlock20Stack0 := self.
    recoveredBlock20PC := 26.
    recoveredBlock20Done := false.
    [recoveredBlock20Done not] whileTrue: [
        recoveredBlock20Step := recoveredBlock20PC.
        recoveredBlock20Step = 26 ifTrue: [
            recoveredBlock20Stack1 := nil.
            recoveredBlock20PC := 27.
        ].
        recoveredBlock20Step = 27 ifTrue: [
            recoveredBlock20Stack2 := recoveredBlock20Arg1.
            recoveredBlock20PC := 28.
        ].
        recoveredBlock20Step = 28 ifTrue: [
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) first.
            recoveredBlock20PC := 29.
        ].
        recoveredBlock20Step = 29 ifTrue: [
            recoveredBlock20Stack3 := recoveredArg2.
            recoveredBlock20PC := 32.
        ].
        recoveredBlock20Step = 32 ifTrue: [
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) isIleIdentical: (recoveredBlock20Stack3).
            recoveredBlock20PC := 33.
        ].
        recoveredBlock20Step = 33 ifTrue: [
            (recoveredBlock20Stack2) ifTrue: [recoveredBlock20PC := 36] ifFalse: [recoveredBlock20PC := 53].
        ].
        recoveredBlock20Step = 36 ifTrue: [
            recoveredBlock20Stack2 := recoveredBlock20Arg1.
            recoveredBlock20PC := 37.
        ].
        recoveredBlock20Step = 37 ifTrue: [
            recoveredBlock20Stack3 := 2.
            recoveredBlock20PC := 39.
        ].
        recoveredBlock20Step = 39 ifTrue: [
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) at: (recoveredBlock20Stack3).
            recoveredBlock20PC := 40.
        ].
        recoveredBlock20Step = 40 ifTrue: [
            recoveredBlock20Stack3 := recoveredArg3.
            recoveredBlock20PC := 43.
        ].
        recoveredBlock20Step = 43 ifTrue: [
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) = (recoveredBlock20Stack3).
            recoveredBlock20PC := 44.
        ].
        recoveredBlock20Step = 44 ifTrue: [
            (recoveredBlock20Stack2) ifTrue: [recoveredBlock20PC := 48] ifFalse: [recoveredBlock20PC := 53].
        ].
        recoveredBlock20Step = 48 ifTrue: [
            recoveredBlock20PC := 49.
        ].
        recoveredBlock20Step = 49 ifTrue: [
            recoveredBlock20Stack1 := recoveredBlock20Arg1.
            recoveredBlock20PC := 50.
        ].
        recoveredBlock20Step = 50 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) last.
            recoveredBlock20PC := 52.
        ].
        recoveredBlock20Step = 52 ifTrue: [
            ^recoveredBlock20Stack1
        ].
        recoveredBlock20Step = 53 ifTrue: [
            recoveredBlock20Result := recoveredBlock20Stack1.
            recoveredBlock20Done := true.
        ].
    ].
    recoveredBlock20Result
].
    (recoveredValue3) do: (recoveredValue4).
    ^nil
! !

"ASDBase.ic method 0x2035b938; bytecode file offset 0xc58208"
!SGIlConditionalDataStructureVisitor methodsFor: 'recovered'!
setInstance: recoveredArg1 condition: recoveredArg2 in: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Local1 recoveredBlock13Stack0 recoveredBlock13Stack1 recoveredBlock13Stack2 recoveredBlock13Stack3 recoveredBlock13Stack4 recoveredBlock13Stack5 recoveredBlock13PC recoveredBlock13Step recoveredBlock13Done recoveredBlock13Result |
    recoveredBlock13Stack0 := self.
    recoveredBlock13PC := 20.
    recoveredBlock13Done := false.
    [recoveredBlock13Done not] whileTrue: [
        recoveredBlock13Step := recoveredBlock13PC.
        recoveredBlock13Step = 20 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg1.
            recoveredBlock13PC := 21.
        ].
        recoveredBlock13Step = 21 ifTrue: [
            recoveredBlock13Stack2 := 1.
            recoveredBlock13PC := 23.
        ].
        recoveredBlock13Step = 23 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) at: (recoveredBlock13Stack2).
            recoveredBlock13PC := 24.
        ].
        recoveredBlock13Step = 24 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Stack1.
            recoveredBlock13PC := 25.
        ].
        recoveredBlock13Step = 25 ifTrue: [
            recoveredBlock13Local1 := recoveredBlock13Stack2.
            recoveredBlock13PC := 26.
        ].
        recoveredBlock13Step = 26 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) isIleBoolConstant.
            recoveredBlock13PC := 27.
        ].
        recoveredBlock13Step = 27 ifTrue: [
            (recoveredBlock13Stack1) ifTrue: [recoveredBlock13PC := 30] ifFalse: [recoveredBlock13PC := 48].
        ].
        recoveredBlock13Step = 30 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Local1.
            recoveredBlock13PC := 31.
        ].
        recoveredBlock13Step = 31 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) value.
            recoveredBlock13PC := 32.
        ].
        recoveredBlock13Step = 32 ifTrue: [
            (recoveredBlock13Stack1) ifTrue: [recoveredBlock13PC := 48] ifFalse: [recoveredBlock13PC := 36].
        ].
        recoveredBlock13Step = 36 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg1.
            recoveredBlock13PC := 37.
        ].
        recoveredBlock13Step = 37 ifTrue: [
            recoveredBlock13Stack2 := 1.
            recoveredBlock13PC := 39.
        ].
        recoveredBlock13Step = 39 ifTrue: [
            recoveredBlock13Stack3 := recoveredArg2.
            recoveredBlock13PC := 42.
        ].
        recoveredBlock13Step = 42 ifTrue: [
            recoveredBlock13Stack3 := (recoveredBlock13Stack3) asIleCopy.
            recoveredBlock13PC := 43.
        ].
        recoveredBlock13Step = 43 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) at: (recoveredBlock13Stack2) put: (recoveredBlock13Stack3).
            recoveredBlock13PC := 45.
        ].
        recoveredBlock13Step = 45 ifTrue: [
            recoveredBlock13PC := 60.
        ].
        recoveredBlock13Step = 48 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg1.
            recoveredBlock13PC := 49.
        ].
        recoveredBlock13Step = 49 ifTrue: [
            recoveredBlock13Stack2 := 1.
            recoveredBlock13PC := 51.
        ].
        recoveredBlock13Step = 51 ifTrue: [
            recoveredBlock13Stack3 := recoveredBlock13Local1.
            recoveredBlock13PC := 52.
        ].
        recoveredBlock13Step = 52 ifTrue: [
            recoveredBlock13Stack4 := recoveredArg2.
            recoveredBlock13PC := 55.
        ].
        recoveredBlock13Step = 55 ifTrue: [
            recoveredBlock13Stack4 := (recoveredBlock13Stack4) asIleCopy.
            recoveredBlock13PC := 56.
        ].
        recoveredBlock13Step = 56 ifTrue: [
            recoveredBlock13Stack3 := (recoveredBlock13Stack3) orExpr: (recoveredBlock13Stack4).
            recoveredBlock13PC := 58.
        ].
        recoveredBlock13Step = 58 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) at: (recoveredBlock13Stack2) put: (recoveredBlock13Stack3).
            recoveredBlock13PC := 60.
        ].
        recoveredBlock13Step = 60 ifTrue: [
            recoveredBlock13Result := recoveredBlock13Stack1.
            recoveredBlock13Done := true.
        ].
    ].
    recoveredBlock13Result
].
    (self) withInstance: (recoveredValue0) condition: (recoveredValue1) in: (recoveredValue2) do: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2039c0cc; bytecode file offset 0xc989b0"
!SGIlConditionalDataStructureVisitor methodsFor: 'recovered'!
setMethodCall: recoveredArg1 instance: recoveredArg2 condition: recoveredArg3 in: recoveredArg4
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := recoveredArg4.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack4 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 recoveredBlock13Value3 recoveredBlock13Value4 recoveredBlock13Value5 recoveredBlock13Value6 recoveredBlock13Value7 recoveredBlock13Value8 recoveredBlock13Value9 recoveredBlock13Value10 |
    recoveredBlock13Value0 := recoveredBlock13Arg1.
    recoveredBlock13Value1 := (recoveredBlock13Value0) at: (1).
    recoveredBlock13Value2 := recoveredArg1.
    recoveredBlock13Value3 := recoveredBlock13Arg1.
    recoveredBlock13Value4 := (recoveredBlock13Value3) at: (1).
    recoveredBlock13Value5 := recoveredArg1.
    recoveredBlock13Value6 := [
    | recoveredBlock13Block34Value0 recoveredBlock13Block34Value1 |
    recoveredBlock13Block34Value0 := (self) ileBuilder.
    recoveredBlock13Block34Value1 := (recoveredBlock13Block34Value0) literalFalse.
    recoveredBlock13Block34Value1
].
    recoveredBlock13Value7 := (recoveredBlock13Value4) at: (recoveredBlock13Value5) ifAbsent: (recoveredBlock13Value6).
    recoveredBlock13Value8 := recoveredArg3.
    recoveredBlock13Value9 := (recoveredBlock13Value7) orExpr: (recoveredBlock13Value8).
    recoveredBlock13Value10 := (recoveredBlock13Value1) at: (recoveredBlock13Value2) put: (recoveredBlock13Value9).
    recoveredBlock13Value10
].
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack5 := [
    | block280f4074Value0 block280f4074Value1 block280f4074Value2 block280f4074Value3 block280f4074Value4 block280f4074Value5 |
    block280f4074Value0 := Array.
    block280f4074Value1 := LookupTable.
    block280f4074Value2 := (block280f4074Value1) new.
    block280f4074Value3 := LookupTable.
    block280f4074Value4 := (block280f4074Value3) new.
    block280f4074Value5 := (block280f4074Value0) with: (block280f4074Value2) with: (block280f4074Value4).
    block280f4074Value5
].
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack0) withInstance: (recoveredStack1) condition: (recoveredStack2) in: (recoveredStack3) do: (recoveredStack4) newElement: (recoveredStack5).
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

"ASDBase.ic method 0x203d8014; bytecode file offset 0xcd48ec"
!SGIlConditionalDataStructureVisitor methodsFor: 'recovered'!
withInstance: recoveredArg1 condition: recoveredArg2 in: recoveredArg3 do: recoveredArg4 newElement: recoveredArg5
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := [:recoveredBlock21Arg1 | 
    | recoveredBlock21Value0 recoveredBlock21Value1 recoveredBlock21Value2 recoveredBlock21Value3 recoveredBlock21Value4 recoveredBlock21Value5 |
    recoveredBlock21Value0 := recoveredLocal1.
    recoveredBlock21Value1 := recoveredBlock21Arg1.
    recoveredBlock21Value2 := recoveredArg5.
    recoveredBlock21Value3 := (recoveredBlock21Value0) at: (recoveredBlock21Value1) ifAbsentPut: (recoveredBlock21Value2).
    recoveredBlock21Value4 := (recoveredBlock21Value3) at: (2).
    recoveredBlock21Value5 := recoveredBlock21Value4.
    recoveredLocal1 := recoveredBlock21Value5.
    recoveredBlock21Value4
].
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) reverseDo: (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := (recoveredStack2) isEmpty.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredPC := 69.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := (recoveredStack2) first.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack3 := recoveredArg5.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsentPut: (recoveredStack3).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203e37cc; bytecode file offset 0xce00b8"
!SGIlConditionalDataStructureVisitor methodsFor: 'recovered'!
readFieldAccess: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlNode.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) varDecl.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) receiver.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlNode.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) readAccessChainSuffix: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) elementDeclRead: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileHasMdlIdentifier.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlNode.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) accessChain.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlNode.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := (recoveredStack2) accessChain.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := currentCondition.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) setElementInstanceRead: (recoveredStack1) condition: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredPC := 86.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileHasMdlMethodCall.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlNode.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) accessChain.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := (recoveredStack3) mdlNode.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := (recoveredStack3) methodDecl.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := currentCondition.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) setElementInstanceRead: (recoveredStack1) condition: (recoveredStack2).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredPC := 86.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack0) complexWarning: (recoveredStack1) source: (recoveredStack2).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlNode.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := (recoveredStack1) accessChain.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := currentCondition.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack0) setElementInstanceRead: (recoveredStack1) condition: (recoveredStack2).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203f1404; bytecode file offset 0xcedcf4"
!SGIlConditionalDataStructureVisitor methodsFor: 'recovered'!
dbTable: recoveredArg1 hasInputElement: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileHasMdlIdentifier.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlNode.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) varDecl.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 73.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleIndexedExpr.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 73].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) baseExpr.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileHasMdlIdentifier.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 73].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) baseExpr.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlNode.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) varDecl.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) args.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := [:block280f93fcArg1 | 
    | block280f93fcValue0 block280f93fcValue1 |
    block280f93fcValue0 := block280f93fcArg1.
    block280f93fcValue1 := (block280f93fcValue0) isIleCompileTimeConstantExpr.
    block280f93fcValue1
].
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) allSatisfy: (recoveredStack2).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 73].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) args.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) expander.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack3 := (recoveredStack3) last.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack5 := 2.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack0) dbTable: (recoveredStack1) hasInputElement: (recoveredStack2) condition: (recoveredStack3) index: (recoveredStack4) inputIndex: (recoveredStack5).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20407504; bytecode file offset 0xd03df4"
!SGIlConditionalDataStructureVisitor methodsFor: 'recovered'!
method: recoveredArg1 parm: recoveredArg2 addInput: recoveredArg3 condition: recoveredArg4
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := methodInput.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := [
    | block280fa7d0Value0 block280fa7d0Value1 |
    block280fa7d0Value0 := LookupTable.
    block280fa7d0Value1 := (block280fa7d0Value0) new.
    block280fa7d0Value1
].
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsentPut: (recoveredStack3).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := [
    | block280fa7f4Value0 block280fa7f4Value1 |
    block280fa7f4Value0 := OrderedCollection.
    block280fa7f4Value1 := (block280fa7f4Value0) new.
    block280fa7f4Value1
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsentPut: (recoveredStack3).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := [:recoveredBlock34Arg1 | 
    | recoveredBlock34Stack0 recoveredBlock34Stack1 recoveredBlock34Stack2 recoveredBlock34Stack3 recoveredBlock34Stack4 recoveredBlock34Stack5 recoveredBlock34PC recoveredBlock34Step recoveredBlock34Done recoveredBlock34Result |
    recoveredBlock34Stack0 := self.
    recoveredBlock34PC := 40.
    recoveredBlock34Done := false.
    [recoveredBlock34Done not] whileTrue: [
        recoveredBlock34Step := recoveredBlock34PC.
        recoveredBlock34Step = 40 ifTrue: [
            recoveredBlock34Stack1 := nil.
            recoveredBlock34PC := 41.
        ].
        recoveredBlock34Step = 41 ifTrue: [
            recoveredBlock34Stack2 := recoveredBlock34Arg1.
            recoveredBlock34PC := 42.
        ].
        recoveredBlock34Step = 42 ifTrue: [
            recoveredBlock34Stack2 := (recoveredBlock34Stack2) first.
            recoveredBlock34PC := 44.
        ].
        recoveredBlock34Step = 44 ifTrue: [
            recoveredBlock34Stack3 := recoveredArg3.
            recoveredBlock34PC := 47.
        ].
        recoveredBlock34Step = 47 ifTrue: [
            recoveredBlock34Stack2 := (recoveredBlock34Stack2) = (recoveredBlock34Stack3).
            recoveredBlock34PC := 48.
        ].
        recoveredBlock34Step = 48 ifTrue: [
            (recoveredBlock34Stack2) ifTrue: [recoveredBlock34PC := 52] ifFalse: [recoveredBlock34PC := 68].
        ].
        recoveredBlock34Step = 52 ifTrue: [
            recoveredBlock34PC := 53.
        ].
        recoveredBlock34Step = 53 ifTrue: [
            recoveredBlock34Stack1 := recoveredBlock34Arg1.
            recoveredBlock34PC := 54.
        ].
        recoveredBlock34Step = 54 ifTrue: [
            recoveredBlock34Stack2 := 2.
            recoveredBlock34PC := 56.
        ].
        recoveredBlock34Step = 56 ifTrue: [
            recoveredBlock34Stack3 := recoveredBlock34Arg1.
            recoveredBlock34PC := 57.
        ].
        recoveredBlock34Step = 57 ifTrue: [
            recoveredBlock34Stack3 := (recoveredBlock34Stack3) last.
            recoveredBlock34PC := 59.
        ].
        recoveredBlock34Step = 59 ifTrue: [
            recoveredBlock34Stack4 := recoveredArg4.
            recoveredBlock34PC := 62.
        ].
        recoveredBlock34Step = 62 ifTrue: [
            recoveredBlock34Stack3 := (recoveredBlock34Stack3) orExpr: (recoveredBlock34Stack4).
            recoveredBlock34PC := 64.
        ].
        recoveredBlock34Step = 64 ifTrue: [
            (recoveredBlock34Stack1) at: (recoveredBlock34Stack2) put: (recoveredBlock34Stack3).
            recoveredBlock34PC := 66.
        ].
        recoveredBlock34Step = 66 ifTrue: [
            recoveredBlock34Stack1 := self.
            recoveredBlock34PC := 67.
        ].
        recoveredBlock34Step = 67 ifTrue: [
            ^recoveredBlock34Stack1
        ].
        recoveredBlock34Step = 68 ifTrue: [
            recoveredBlock34Result := recoveredBlock34Stack1.
            recoveredBlock34Done := true.
        ].
    ].
    recoveredBlock34Result
].
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := methodInput.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2043e7f0; bytecode file offset 0xd3b0f4"
!SGIlConditionalDataStructureVisitor methodsFor: 'recovered'!
collectInformation: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) elementRead: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) elementWrite: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) elementInstanceWrite: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) elementInstanceRead: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) methodInstanceCall: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) tempVarRead: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) tempVarWrite: (recoveredStack1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) tableInput: (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) methodInput: (recoveredStack1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := Set.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) sysConstForCppIf: (recoveredStack1).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := LookupTable.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            methodCall := recoveredStack0.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) literalTrue.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            currentCondition := recoveredStack0.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack0) visitNode: (recoveredStack1).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleStatement.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 96].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := (recoveredStack1) executableContainsCode.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack0) executableContainsCode: (recoveredStack1).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredPC := 104.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := (recoveredStack1) literalTrue.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack0) executableContainsCode: (recoveredStack1).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack0) checkMdlTempVarUsage.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2044406c; bytecode file offset 0xd4096c"
!SGIlConditionalDataStructureVisitor methodsFor: 'recovered'!
writeAccessFieldAccess: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlNode.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) varDecl.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlNode.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) readAccessChainSuffix: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) elementWrite.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) elementWrite.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack4 := [
    | recoveredBlock18Value0 recoveredBlock18Value1 |
    recoveredBlock18Value0 := (self) ileBuilder.
    recoveredBlock18Value1 := (recoveredBlock18Value0) literalFalse.
    recoveredBlock18Value1
].
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3) ifAbsent: (recoveredStack4).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := currentCondition.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := (recoveredStack2) orExpr: (recoveredStack3).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) receiver.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileHasMdlIdentifier.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlNode.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) accessChain.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlNode.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := (recoveredStack2) accessChain.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := currentCondition.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) setElementInstanceWrite: (recoveredStack1) condition: (recoveredStack2).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredPC := 108.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileHasMdlMethodCall.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 94].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlNode.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) accessChain.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack3 := (recoveredStack3) mdlNode.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack3 := (recoveredStack3) methodDecl.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := currentCondition.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack0) setElementInstanceWrite: (recoveredStack1) condition: (recoveredStack2).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredPC := 108.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack0) complexWarning: (recoveredStack1) source: (recoveredStack2).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlNode.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := (recoveredStack1) accessChain.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack2 := currentCondition.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack0) setElementInstanceWrite: (recoveredStack1) condition: (recoveredStack2).
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

"ASDBase.ic method 0x204577e8; bytecode file offset 0xd54104"
!SGIlConditionalDataStructureVisitor methodsFor: 'recovered'!
checkMdlTempVarUsage
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) elementWrite.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) keys.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := [:block280ffc88Arg1 | 
    | block280ffc88Value0 block280ffc88Value1 |
    block280ffc88Value0 := block280ffc88Arg1.
    block280ffc88Value1 := (block280ffc88Value0) isMdlTempVar.
    block280ffc88Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := [:block280ffcacArg1 :block280ffcacArg2 | 
    | block280ffcacValue0 block280ffcacValue1 block280ffcacValue2 block280ffcacValue3 block280ffcacValue4 block280ffcacValue5 block280ffcacValue6 |
    block280ffcacValue0 := block280ffcacArg1.
    block280ffcacValue1 := (block280ffcacValue0) mdlName.
    block280ffcacValue2 := (block280ffcacValue1) errLabel.
    block280ffcacValue3 := block280ffcacArg2.
    block280ffcacValue4 := (block280ffcacValue3) mdlName.
    block280ffcacValue5 := (block280ffcacValue4) errLabel.
    block280ffcacValue6 := (block280ffcacValue2) < (block280ffcacValue5).
    block280ffcacValue6
].
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := [:recoveredBlock36Arg1 | 
    | recoveredBlock36Local1 recoveredBlock36Local2 recoveredBlock36Stack0 recoveredBlock36Stack1 recoveredBlock36Stack2 recoveredBlock36Stack3 recoveredBlock36Stack4 recoveredBlock36Stack5 recoveredBlock36Stack6 recoveredBlock36Stack7 recoveredBlock36Stack8 recoveredBlock36Stack9 recoveredBlock36PC recoveredBlock36Step recoveredBlock36Done recoveredBlock36Result |
    recoveredBlock36Stack0 := self.
    recoveredBlock36PC := 42.
    recoveredBlock36Done := false.
    [recoveredBlock36Done not] whileTrue: [
        recoveredBlock36Step := recoveredBlock36PC.
        recoveredBlock36Step = 42 ifTrue: [
            recoveredBlock36Stack0 := (recoveredBlock36Stack0) elementWrite.
            recoveredBlock36PC := 43.
        ].
        recoveredBlock36Step = 43 ifTrue: [
            recoveredBlock36Stack1 := recoveredBlock36Arg1.
            recoveredBlock36PC := 44.
        ].
        recoveredBlock36Step = 44 ifTrue: [
            recoveredBlock36Stack0 := (recoveredBlock36Stack0) at: (recoveredBlock36Stack1).
            recoveredBlock36PC := 46.
        ].
        recoveredBlock36Step = 46 ifTrue: [
            recoveredBlock36Local2 := recoveredBlock36Stack0.
            recoveredBlock36PC := 47.
        ].
        recoveredBlock36Step = 47 ifTrue: [
            recoveredBlock36Stack0 := nil.
            recoveredBlock36PC := 48.
        ].
        recoveredBlock36Step = 48 ifTrue: [
            recoveredBlock36Stack1 := recoveredBlock36Local2.
            recoveredBlock36PC := 49.
        ].
        recoveredBlock36Step = 49 ifTrue: [
            recoveredBlock36Stack2 := self.
            recoveredBlock36PC := 50.
        ].
        recoveredBlock36Step = 50 ifTrue: [
            recoveredBlock36Stack2 := (recoveredBlock36Stack2) elementRead.
            recoveredBlock36PC := 52.
        ].
        recoveredBlock36Step = 52 ifTrue: [
            recoveredBlock36Stack3 := recoveredBlock36Arg1.
            recoveredBlock36PC := 53.
        ].
        recoveredBlock36Step = 53 ifTrue: [
            recoveredBlock36Stack4 := [
    | recoveredBlock36Block53Value0 recoveredBlock36Block53Value1 |
    recoveredBlock36Block53Value0 := (self) ileBuilder.
    recoveredBlock36Block53Value1 := (recoveredBlock36Block53Value0) literalFalse.
    recoveredBlock36Block53Value1
].
            recoveredBlock36PC := 65.
        ].
        recoveredBlock36Step = 65 ifTrue: [
            recoveredBlock36Stack2 := (recoveredBlock36Stack2) at: (recoveredBlock36Stack3) ifAbsent: (recoveredBlock36Stack4).
            recoveredBlock36PC := 67.
        ].
        recoveredBlock36Step = 67 ifTrue: [
            recoveredBlock36Stack3 := recoveredBlock36Stack2.
            recoveredBlock36PC := 68.
        ].
        recoveredBlock36Step = 68 ifTrue: [
            recoveredBlock36Local1 := recoveredBlock36Stack3.
            recoveredBlock36PC := 69.
        ].
        recoveredBlock36Step = 69 ifTrue: [
            recoveredBlock36Stack1 := (recoveredBlock36Stack1) isIleIdentical: (recoveredBlock36Stack2).
            recoveredBlock36PC := 71.
        ].
        recoveredBlock36Step = 71 ifTrue: [
            (recoveredBlock36Stack1) ifTrue: [recoveredBlock36PC := 111] ifFalse: [recoveredBlock36PC := 74].
        ].
        recoveredBlock36Step = 74 ifTrue: [
            recoveredBlock36PC := 75.
        ].
        recoveredBlock36Step = 75 ifTrue: [
            recoveredBlock36Stack0 := self.
            recoveredBlock36PC := 76.
        ].
        recoveredBlock36Step = 76 ifTrue: [
            recoveredBlock36Stack1 := 51.
            recoveredBlock36PC := 78.
        ].
        recoveredBlock36Step = 78 ifTrue: [
            recoveredBlock36Stack2 := recoveredBlock36Arg1.
            recoveredBlock36PC := 79.
        ].
        recoveredBlock36Step = 79 ifTrue: [
            recoveredBlock36Stack2 := (recoveredBlock36Stack2) mdlName.
            recoveredBlock36PC := 81.
        ].
        recoveredBlock36Step = 81 ifTrue: [
            recoveredBlock36Stack2 := (recoveredBlock36Stack2) errLabel.
            recoveredBlock36PC := 83.
        ].
        recoveredBlock36Step = 83 ifTrue: [
            recoveredBlock36Stack3 := recoveredBlock36Arg1.
            recoveredBlock36PC := 84.
        ].
        recoveredBlock36Step = 84 ifTrue: [
            recoveredBlock36Stack3 := (recoveredBlock36Stack3) source.
            recoveredBlock36PC := 86.
        ].
        recoveredBlock36Step = 86 ifTrue: [
            recoveredBlock36Stack4 := #(nil nil).
            recoveredBlock36PC := 88.
        ].
        recoveredBlock36Step = 88 ifTrue: [
            recoveredBlock36Stack5 := Array.
            recoveredBlock36PC := 90.
        ].
        recoveredBlock36Step = 90 ifTrue: [
            recoveredBlock36Stack6 := 'Read condition : '.
            recoveredBlock36PC := 92.
        ].
        recoveredBlock36Step = 92 ifTrue: [
            recoveredBlock36Stack7 := recoveredBlock36Local1.
            recoveredBlock36PC := 93.
        ].
        recoveredBlock36Step = 93 ifTrue: [
            recoveredBlock36Stack7 := (recoveredBlock36Stack7) debugCode.
            recoveredBlock36PC := 95.
        ].
        recoveredBlock36Step = 95 ifTrue: [
            recoveredBlock36Stack6 := (recoveredBlock36Stack6) , (recoveredBlock36Stack7).
            recoveredBlock36PC := 97.
        ].
        recoveredBlock36Step = 97 ifTrue: [
            recoveredBlock36Stack7 := 'Write condition: '.
            recoveredBlock36PC := 99.
        ].
        recoveredBlock36Step = 99 ifTrue: [
            recoveredBlock36Stack8 := recoveredBlock36Local2.
            recoveredBlock36PC := 100.
        ].
        recoveredBlock36Step = 100 ifTrue: [
            recoveredBlock36Stack8 := (recoveredBlock36Stack8) debugCode.
            recoveredBlock36PC := 102.
        ].
        recoveredBlock36Step = 102 ifTrue: [
            recoveredBlock36Stack7 := (recoveredBlock36Stack7) , (recoveredBlock36Stack8).
            recoveredBlock36PC := 104.
        ].
        recoveredBlock36Step = 104 ifTrue: [
            recoveredBlock36Stack5 := (recoveredBlock36Stack5) with: (recoveredBlock36Stack6) with: (recoveredBlock36Stack7).
            recoveredBlock36PC := 106.
        ].
        recoveredBlock36Step = 106 ifTrue: [
            recoveredBlock36Stack3 := (recoveredBlock36Stack3) createMultiSource: (recoveredBlock36Stack4) labels: (recoveredBlock36Stack5).
            recoveredBlock36PC := 108.
        ].
        recoveredBlock36Step = 108 ifTrue: [
            recoveredBlock36Stack0 := (recoveredBlock36Stack0) ileInfoNo: (recoveredBlock36Stack1) with: (recoveredBlock36Stack2) source: (recoveredBlock36Stack3).
            recoveredBlock36PC := 111.
        ].
        recoveredBlock36Step = 111 ifTrue: [
            recoveredBlock36Result := recoveredBlock36Stack0.
            recoveredBlock36Done := true.
        ].
    ].
    recoveredBlock36Result
].
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20482b84; bytecode file offset 0xd7f48c"
!SGIlConditionalDataStructureVisitor methodsFor: 'recovered'!
withCompileConstantExpression: recoveredArg1 do: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) conditionalInputValues.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 110].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := SGIlAnyStructureVisitor.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Stack0 recoveredBlock14Stack1 recoveredBlock14Stack2 recoveredBlock14Stack3 recoveredBlock14PC recoveredBlock14Step recoveredBlock14Done recoveredBlock14Result |
    recoveredBlock14Stack0 := self.
    recoveredBlock14PC := 20.
    recoveredBlock14Done := false.
    [recoveredBlock14Done not] whileTrue: [
        recoveredBlock14Step := recoveredBlock14PC.
        recoveredBlock14Step = 20 ifTrue: [
            recoveredBlock14Stack1 := nil.
            recoveredBlock14PC := 21.
        ].
        recoveredBlock14Step = 21 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Arg1.
            recoveredBlock14PC := 22.
        ].
        recoveredBlock14Step = 22 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) isIleExpr.
            recoveredBlock14PC := 24.
        ].
        recoveredBlock14Step = 24 ifTrue: [
            (recoveredBlock14Stack2) ifTrue: [recoveredBlock14PC := 28] ifFalse: [recoveredBlock14PC := 107].
        ].
        recoveredBlock14Step = 28 ifTrue: [
            recoveredBlock14PC := 29.
        ].
        recoveredBlock14Step = 29 ifTrue: [
            recoveredBlock14Stack1 := nil.
            recoveredBlock14PC := 30.
        ].
        recoveredBlock14Step = 30 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Arg1.
            recoveredBlock14PC := 31.
        ].
        recoveredBlock14Step = 31 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) isIleCompileTimeConstantExpr.
            recoveredBlock14PC := 33.
        ].
        recoveredBlock14Step = 33 ifTrue: [
            (recoveredBlock14Stack2) ifTrue: [recoveredBlock14PC := 36] ifFalse: [recoveredBlock14PC := 107].
        ].
        recoveredBlock14Step = 36 ifTrue: [
            recoveredBlock14PC := 37.
        ].
        recoveredBlock14Step = 37 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Arg1.
            recoveredBlock14PC := 38.
        ].
        recoveredBlock14Step = 38 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) ileHasMdlIdentifier.
            recoveredBlock14PC := 40.
        ].
        recoveredBlock14Step = 40 ifTrue: [
            (recoveredBlock14Stack1) ifTrue: [recoveredBlock14PC := 44] ifFalse: [recoveredBlock14PC := 56].
        ].
        recoveredBlock14Step = 44 ifTrue: [
            recoveredBlock14Stack1 := self.
            recoveredBlock14PC := 45.
        ].
        recoveredBlock14Step = 45 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Arg1.
            recoveredBlock14PC := 46.
        ].
        recoveredBlock14Step = 46 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) mdlNode.
            recoveredBlock14PC := 48.
        ].
        recoveredBlock14Step = 48 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) varDecl.
            recoveredBlock14PC := 50.
        ].
        recoveredBlock14Step = 50 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) addSysConstForCppIf: (recoveredBlock14Stack2).
            recoveredBlock14PC := 52.
        ].
        recoveredBlock14Step = 52 ifTrue: [
            recoveredBlock14PC := 107.
        ].
        recoveredBlock14Step = 56 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Arg1.
            recoveredBlock14PC := 57.
        ].
        recoveredBlock14Step = 57 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) isIleAccessMacro.
            recoveredBlock14PC := 59.
        ].
        recoveredBlock14Step = 59 ifTrue: [
            (recoveredBlock14Stack1) ifTrue: [recoveredBlock14PC := 62] ifFalse: [recoveredBlock14PC := 78].
        ].
        recoveredBlock14Step = 62 ifTrue: [
            recoveredBlock14Stack1 := self.
            recoveredBlock14PC := 63.
        ].
        recoveredBlock14Step = 63 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Arg1.
            recoveredBlock14PC := 64.
        ].
        recoveredBlock14Step = 64 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) macroDecl.
            recoveredBlock14PC := 66.
        ].
        recoveredBlock14Step = 66 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) originalExpr.
            recoveredBlock14PC := 68.
        ].
        recoveredBlock14Step = 68 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) mdlNode.
            recoveredBlock14PC := 70.
        ].
        recoveredBlock14Step = 70 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) varDecl.
            recoveredBlock14PC := 72.
        ].
        recoveredBlock14Step = 72 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) addSysConstForCppIf: (recoveredBlock14Stack2).
            recoveredBlock14PC := 74.
        ].
        recoveredBlock14Step = 74 ifTrue: [
            recoveredBlock14PC := 107.
        ].
        recoveredBlock14Step = 78 ifTrue: [
            recoveredBlock14Stack1 := nil.
            recoveredBlock14PC := 79.
        ].
        recoveredBlock14Step = 79 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Arg1.
            recoveredBlock14PC := 80.
        ].
        recoveredBlock14Step = 80 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) isIleArrayLengthSpecialCall.
            recoveredBlock14PC := 82.
        ].
        recoveredBlock14Step = 82 ifTrue: [
            (recoveredBlock14Stack2) ifTrue: [recoveredBlock14PC := 98] ifFalse: [recoveredBlock14PC := 86].
        ].
        recoveredBlock14Step = 86 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Arg1.
            recoveredBlock14PC := 87.
        ].
        recoveredBlock14Step = 87 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) isIleMatrixXLengthSpecialCall.
            recoveredBlock14PC := 89.
        ].
        recoveredBlock14Step = 89 ifTrue: [
            (recoveredBlock14Stack2) ifTrue: [recoveredBlock14PC := 98] ifFalse: [recoveredBlock14PC := 92].
        ].
        recoveredBlock14Step = 92 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Arg1.
            recoveredBlock14PC := 93.
        ].
        recoveredBlock14Step = 93 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) isIleMatrixYLengthSpecialCall.
            recoveredBlock14PC := 95.
        ].
        recoveredBlock14Step = 95 ifTrue: [
            (recoveredBlock14Stack2) ifTrue: [recoveredBlock14PC := 98] ifFalse: [recoveredBlock14PC := 107].
        ].
        recoveredBlock14Step = 98 ifTrue: [
            recoveredBlock14PC := 99.
        ].
        recoveredBlock14Step = 99 ifTrue: [
            recoveredBlock14Stack1 := self.
            recoveredBlock14PC := 100.
        ].
        recoveredBlock14Step = 100 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Arg1.
            recoveredBlock14PC := 101.
        ].
        recoveredBlock14Step = 101 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) dimension.
            recoveredBlock14PC := 103.
        ].
        recoveredBlock14Step = 103 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) sysConstDecl.
            recoveredBlock14PC := 105.
        ].
        recoveredBlock14Step = 105 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) addSysConstForCppIf: (recoveredBlock14Stack2).
            recoveredBlock14PC := 107.
        ].
        recoveredBlock14Step = 107 ifTrue: [
            recoveredBlock14Result := recoveredBlock14Stack1.
            recoveredBlock14Done := true.
        ].
    ].
    recoveredBlock14Result
].
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack0) visitNode: (recoveredStack1) check: (recoveredStack2).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := currentCondition.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := currentCondition.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := (recoveredStack0) andExpr: (recoveredStack1).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            currentCondition := recoveredStack0.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack0) value.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            currentCondition := recoveredStack0.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20488494; bytecode file offset 0xd84d84"
!SGIlConditionalDataStructureVisitor methodsFor: 'recovered'!
expandCallsInstanceMethod: recoveredArg1 prefix: recoveredArg2 condition: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) keys.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := [:block28102e08Arg1 :block28102e08Arg2 | 
    | block28102e08Value0 block28102e08Value1 block28102e08Value2 block28102e08Value3 block28102e08Value4 |
    block28102e08Value0 := block28102e08Arg1.
    block28102e08Value1 := (block28102e08Value0) errLabel.
    block28102e08Value2 := block28102e08Arg2.
    block28102e08Value3 := (block28102e08Value2) errLabel.
    block28102e08Value4 := (block28102e08Value1) <= (block28102e08Value3).
    block28102e08Value4
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := [:recoveredBlock21Arg1 | 
    | recoveredBlock21Local1 recoveredBlock21Value0 recoveredBlock21Value1 recoveredBlock21Value2 recoveredBlock21Value3 recoveredBlock21Value4 recoveredBlock21Value5 recoveredBlock21Value6 recoveredBlock21Value7 recoveredBlock21Value8 recoveredBlock21Value9 recoveredBlock21Value10 recoveredBlock21Value11 recoveredBlock21Value12 recoveredBlock21Value13 recoveredBlock21Value14 recoveredBlock21Value15 recoveredBlock21Value16 |
    recoveredBlock21Value0 := recoveredArg3.
    recoveredBlock21Value1 := recoveredBlock21Arg1.
    recoveredBlock21Value2 := [].
    recoveredBlock21Value3 := (recoveredBlock21Value0) at: (recoveredBlock21Value1) ifAbsent: (recoveredBlock21Value2).
    recoveredBlock21Local1 := recoveredBlock21Value3.
    recoveredBlock21Value4 := recoveredBlock21Local1.
    recoveredBlock21Value5 := (recoveredBlock21Value4) at: (1).
    recoveredBlock21Value6 := (recoveredBlock21Value5) keys.
    recoveredBlock21Value7 := (self) declWithScopeCompare.
    recoveredBlock21Value8 := (recoveredBlock21Value6) asSortedCollection: (recoveredBlock21Value7).
    recoveredBlock21Value9 := [:recoveredBlock21Block53Arg1 | 
    | recoveredBlock21Block53Stack0 recoveredBlock21Block53Stack1 recoveredBlock21Block53Stack2 recoveredBlock21Block53Stack3 recoveredBlock21Block53Stack4 recoveredBlock21Block53Stack5 recoveredBlock21Block53Stack6 recoveredBlock21Block53PC recoveredBlock21Block53Step recoveredBlock21Block53Done recoveredBlock21Block53Result |
    recoveredBlock21Block53Stack0 := self.
    recoveredBlock21Block53PC := 60.
    recoveredBlock21Block53Done := false.
    [recoveredBlock21Block53Done not] whileTrue: [
        recoveredBlock21Block53Step := recoveredBlock21Block53PC.
        recoveredBlock21Block53Step = 60 ifTrue: [
            recoveredBlock21Block53Stack0 := (recoveredBlock21Block53Stack0) expander.
            recoveredBlock21Block53PC := 62.
        ].
        recoveredBlock21Block53Step = 62 ifTrue: [
            recoveredBlock21Block53Stack1 := recoveredArg1.
            recoveredBlock21Block53PC := 65.
        ].
        recoveredBlock21Block53Step = 65 ifTrue: [
            recoveredBlock21Block53Stack2 := recoveredBlock21Arg1.
            recoveredBlock21Block53PC := 68.
        ].
        recoveredBlock21Block53Step = 68 ifTrue: [
            recoveredBlock21Block53Stack3 := ''.
            recoveredBlock21Block53PC := 70.
        ].
        recoveredBlock21Block53Step = 70 ifTrue: [
            recoveredBlock21Block53Stack2 := (recoveredBlock21Block53Stack2) = (recoveredBlock21Block53Stack3).
            recoveredBlock21Block53PC := 71.
        ].
        recoveredBlock21Block53Step = 71 ifTrue: [
            (recoveredBlock21Block53Stack2) ifTrue: [recoveredBlock21Block53PC := 74] ifFalse: [recoveredBlock21Block53PC := 80].
        ].
        recoveredBlock21Block53Step = 74 ifTrue: [
            recoveredBlock21Block53Stack2 := #().
            recoveredBlock21Block53PC := 76.
        ].
        recoveredBlock21Block53Step = 76 ifTrue: [
            recoveredBlock21Block53PC := 88.
        ].
        recoveredBlock21Block53Step = 80 ifTrue: [
            recoveredBlock21Block53Stack2 := recoveredArg2.
            recoveredBlock21Block53PC := 83.
        ].
        recoveredBlock21Block53Step = 83 ifTrue: [
            recoveredBlock21Block53Stack3 := recoveredBlock21Arg1.
            recoveredBlock21Block53PC := 86.
        ].
        recoveredBlock21Block53Step = 86 ifTrue: [
            recoveredBlock21Block53Stack2 := (recoveredBlock21Block53Stack2) copyWith: (recoveredBlock21Block53Stack3).
            recoveredBlock21Block53PC := 88.
        ].
        recoveredBlock21Block53Step = 88 ifTrue: [
            recoveredBlock21Block53Stack3 := recoveredBlock21Block53Arg1.
            recoveredBlock21Block53PC := 89.
        ].
        recoveredBlock21Block53Step = 89 ifTrue: [
            recoveredBlock21Block53Stack4 := recoveredBlock21Local1.
            recoveredBlock21Block53PC := 92.
        ].
        recoveredBlock21Block53Step = 92 ifTrue: [
            recoveredBlock21Block53Stack5 := 1.
            recoveredBlock21Block53PC := 94.
        ].
        recoveredBlock21Block53Step = 94 ifTrue: [
            recoveredBlock21Block53Stack4 := (recoveredBlock21Block53Stack4) at: (recoveredBlock21Block53Stack5).
            recoveredBlock21Block53PC := 96.
        ].
        recoveredBlock21Block53Step = 96 ifTrue: [
            recoveredBlock21Block53Stack5 := recoveredBlock21Block53Arg1.
            recoveredBlock21Block53PC := 97.
        ].
        recoveredBlock21Block53Step = 97 ifTrue: [
            recoveredBlock21Block53Stack4 := (recoveredBlock21Block53Stack4) at: (recoveredBlock21Block53Stack5).
            recoveredBlock21Block53PC := 99.
        ].
        recoveredBlock21Block53Step = 99 ifTrue: [
            recoveredBlock21Block53Stack0 := (recoveredBlock21Block53Stack0) dbExecutable: (recoveredBlock21Block53Stack1) instance: (recoveredBlock21Block53Stack2) callsMethod: (recoveredBlock21Block53Stack3) cond: (recoveredBlock21Block53Stack4).
            recoveredBlock21Block53PC := 102.
        ].
        recoveredBlock21Block53Step = 102 ifTrue: [
            recoveredBlock21Block53Result := recoveredBlock21Block53Stack0.
            recoveredBlock21Block53Done := true.
        ].
    ].
    recoveredBlock21Block53Result
].
    (recoveredBlock21Value8) do: (recoveredBlock21Value9).
    recoveredBlock21Value10 := recoveredArg1.
    recoveredBlock21Value11 := recoveredArg2.
    recoveredBlock21Value12 := recoveredBlock21Arg1.
    recoveredBlock21Value13 := (recoveredBlock21Value11) copyWith: (recoveredBlock21Value12).
    recoveredBlock21Value14 := recoveredBlock21Local1.
    recoveredBlock21Value15 := (recoveredBlock21Value14) at: (2).
    recoveredBlock21Value16 := (self) expandCallsInstanceMethod: (recoveredBlock21Value10) prefix: (recoveredBlock21Value13) condition: (recoveredBlock21Value15).
    recoveredBlock21Value16
].
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204cc364; bytecode file offset 0xdc8c78"
!SGIlConditionalDataStructureVisitor methodsFor: 'recovered'!
writeExpr: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isIleIndexedExpr.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) args.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 |
    recoveredBlock12Value0 := recoveredBlock12Arg1.
    recoveredBlock12Value1 := (self) visitNode: (recoveredBlock12Value0).
    recoveredBlock12Value1
].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) baseExpr.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) writeExpr: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 153.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleTempIdentifier.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) writeAccessTempId: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredPC := 153.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleTempVarIdentifier.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := (recoveredStack2) tempAssign.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := (recoveredStack2) tempVar.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) writeAccessTempId: (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredPC := 153.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleFieldAccessExpr.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := (recoveredStack2) receiver.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack1) visitNode: (recoveredStack2).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack1) writeAccessFieldAccess: (recoveredStack2).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredPC := 153.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleDirectAccessExpr.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlNode.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack1) writeAccess: (recoveredStack2).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredPC := 153.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleReferencedExpr.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 106] ifFalse: [recoveredPC := 116].
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := (recoveredStack2) expr.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack1) writeExpr: (recoveredStack2).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredPC := 153.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleModelIdentifier.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 122] ifFalse: [recoveredPC := 132].
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlNode.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            (recoveredStack1) writeAccess: (recoveredStack2).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredPC := 153.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleIdentifier.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 138] ifFalse: [recoveredPC := 148].
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := (recoveredStack1) elementDecl.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleAdditionalDecl.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 146] ifFalse: [recoveredPC := 148].
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            (recoveredStack1) complexWarning: (recoveredStack2) source: (recoveredStack3).
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204cd2d0; bytecode file offset 0xdc9be4"
!SGIlConditionalDataStructureVisitor methodsFor: 'recovered'!
specialCall: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) args.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileHasMdlIdentifier.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 118].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) label.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := (recoveredStack3) mdlNode.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack4 := currentCondition.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) setMethodCall: (recoveredStack2) instance: (recoveredStack3) condition: (recoveredStack4).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleGetAt1DSpecialCall.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlNode.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := (recoveredStack2) varDecl.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := (recoveredStack3) args.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := (recoveredStack3) last.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := (recoveredStack3) expr.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) table: (recoveredStack2) addInput: (recoveredStack3).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredPC := 115.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleGetAt2DSpecialCall.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 94].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) args.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlNode.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := (recoveredStack2) varDecl.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack3 := (recoveredStack3) args.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (-1).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack3 := (recoveredStack3) expr.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack1) table: (recoveredStack2) addXInput: (recoveredStack3).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlNode.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := (recoveredStack2) varDecl.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack3 := (recoveredStack3) args.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack3 := (recoveredStack3) expr.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack1) table: (recoveredStack2) addYInput: (recoveredStack3).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredPC := 115.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleSearchDistributionSpecialCall.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 115].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlNode.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack2 := (recoveredStack2) varDecl.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack3 := (recoveredStack3) args.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack4 := 2.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack3 := (recoveredStack3) expr.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack1) table: (recoveredStack2) addInput: (recoveredStack3).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredPC := 153.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileHasMdlMethodCall.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 124] ifFalse: [recoveredPC := 148].
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := (recoveredStack2) label.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack3 := Array.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack4 := (recoveredStack4) mdlNode.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack4 := (recoveredStack4) methodDecl.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack3 := (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack4 := currentCondition.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack5 := (recoveredStack5) methodInstanceCall.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            (recoveredStack1) setMethodCall: (recoveredStack2) instance: (recoveredStack3) condition: (recoveredStack4) in: (recoveredStack5).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredPC := 153.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            (recoveredStack1) complexWarning: (recoveredStack2) source: (recoveredStack3).
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204cfbc4; bytecode file offset 0xdcc4c8"
!SGIlConditionalDataStructureVisitor methodsFor: 'recovered'!
expandUsesInstance: recoveredArg1 prefix: recoveredArg2 read: recoveredArg3 write: recoveredArg4
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Set.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := (recoveredStack3) keys.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack2) addAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := recoveredArg4.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := (recoveredStack3) keys.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack2) addAll: (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := [:block281072a8Arg1 :block281072a8Arg2 | 
    | block281072a8Value0 block281072a8Value1 block281072a8Value2 block281072a8Value3 block281072a8Value4 |
    block281072a8Value0 := block281072a8Arg1.
    block281072a8Value1 := (block281072a8Value0) errLabel.
    block281072a8Value2 := block281072a8Arg2.
    block281072a8Value3 := (block281072a8Value2) errLabel.
    block281072a8Value4 := (block281072a8Value1) <= (block281072a8Value3).
    block281072a8Value4
].
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := [:recoveredBlock42Arg1 | 
    | recoveredBlock42Local1 recoveredBlock42Local2 recoveredBlock42Value0 recoveredBlock42Value1 recoveredBlock42Value2 recoveredBlock42Value3 recoveredBlock42Value4 recoveredBlock42Value5 recoveredBlock42Value6 recoveredBlock42Value7 recoveredBlock42Value8 recoveredBlock42Value9 recoveredBlock42Value10 recoveredBlock42Value11 recoveredBlock42Value12 recoveredBlock42Value13 recoveredBlock42Value14 recoveredBlock42Value15 recoveredBlock42Value16 recoveredBlock42Value17 recoveredBlock42Value18 recoveredBlock42Value19 recoveredBlock42Value20 recoveredBlock42Value21 recoveredBlock42Value22 recoveredBlock42Value23 recoveredBlock42Value24 recoveredBlock42Value25 |
    recoveredBlock42Value0 := recoveredArg3.
    recoveredBlock42Value1 := recoveredBlock42Arg1.
    recoveredBlock42Value2 := [
    | recoveredBlock42Block52Value0 recoveredBlock42Block52Value1 recoveredBlock42Block52Value2 recoveredBlock42Block52Value3 recoveredBlock42Block52Value4 recoveredBlock42Block52Value5 recoveredBlock42Block52Value6 |
    recoveredBlock42Block52Value0 := Array.
    recoveredBlock42Block52Value1 := (self) generator.
    recoveredBlock42Block52Value2 := (recoveredBlock42Block52Value1) ileBuilder.
    recoveredBlock42Block52Value3 := (recoveredBlock42Block52Value2) literalFalse.
    recoveredBlock42Block52Value4 := LookupTable.
    recoveredBlock42Block52Value5 := (recoveredBlock42Block52Value4) new.
    recoveredBlock42Block52Value6 := (recoveredBlock42Block52Value0) with: (recoveredBlock42Block52Value3) with: (recoveredBlock42Block52Value5).
    recoveredBlock42Block52Value6
].
    recoveredBlock42Value3 := (recoveredBlock42Value0) at: (recoveredBlock42Value1) ifAbsent: (recoveredBlock42Value2).
    recoveredBlock42Local2 := recoveredBlock42Value3.
    recoveredBlock42Value4 := recoveredArg4.
    recoveredBlock42Value5 := recoveredBlock42Arg1.
    recoveredBlock42Value6 := [
    | recoveredBlock42Block80Value0 recoveredBlock42Block80Value1 recoveredBlock42Block80Value2 recoveredBlock42Block80Value3 recoveredBlock42Block80Value4 recoveredBlock42Block80Value5 recoveredBlock42Block80Value6 |
    recoveredBlock42Block80Value0 := Array.
    recoveredBlock42Block80Value1 := (self) generator.
    recoveredBlock42Block80Value2 := (recoveredBlock42Block80Value1) ileBuilder.
    recoveredBlock42Block80Value3 := (recoveredBlock42Block80Value2) literalFalse.
    recoveredBlock42Block80Value4 := LookupTable.
    recoveredBlock42Block80Value5 := (recoveredBlock42Block80Value4) new.
    recoveredBlock42Block80Value6 := (recoveredBlock42Block80Value0) with: (recoveredBlock42Block80Value3) with: (recoveredBlock42Block80Value5).
    recoveredBlock42Block80Value6
].
    recoveredBlock42Value7 := (recoveredBlock42Value4) at: (recoveredBlock42Value5) ifAbsent: (recoveredBlock42Value6).
    recoveredBlock42Local1 := recoveredBlock42Value7.
    recoveredBlock42Value8 := (self) expander.
    recoveredBlock42Value9 := recoveredArg1.
    recoveredBlock42Value10 := recoveredArg2.
    recoveredBlock42Value11 := recoveredBlock42Arg1.
    recoveredBlock42Value12 := (recoveredBlock42Value10) copyWith: (recoveredBlock42Value11).
    recoveredBlock42Value13 := recoveredBlock42Local2.
    recoveredBlock42Value14 := (recoveredBlock42Value13) at: (1).
    recoveredBlock42Value15 := recoveredBlock42Local1.
    recoveredBlock42Value16 := (recoveredBlock42Value15) at: (1).
    (recoveredBlock42Value8) dbAddExecutable: (recoveredBlock42Value9) usesInstanceElement: (recoveredBlock42Value12) read: (recoveredBlock42Value14) write: (recoveredBlock42Value16).
    recoveredBlock42Value17 := recoveredArg1.
    recoveredBlock42Value18 := recoveredArg2.
    recoveredBlock42Value19 := recoveredBlock42Arg1.
    recoveredBlock42Value20 := (recoveredBlock42Value18) copyWith: (recoveredBlock42Value19).
    recoveredBlock42Value21 := recoveredBlock42Local2.
    recoveredBlock42Value22 := (recoveredBlock42Value21) at: (2).
    recoveredBlock42Value23 := recoveredBlock42Local1.
    recoveredBlock42Value24 := (recoveredBlock42Value23) at: (2).
    recoveredBlock42Value25 := (self) expandUsesInstance: (recoveredBlock42Value17) prefix: (recoveredBlock42Value20) read: (recoveredBlock42Value22) write: (recoveredBlock42Value24).
    recoveredBlock42Value25
].
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2051d8a0; bytecode file offset 0xe1a1b8"
!SGIlConditionalDataStructureVisitor methodsFor: 'recovered'!
table: recoveredArg1 addInput: recoveredArg2 index: recoveredArg3 condition: recoveredArg4
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) conditionalInputValues.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleNoModelImplCastAssign.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 33].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) expr.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) extendedConditionalInputValues.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileExtendedInputValue.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 54 ifTrue: [
            recoveredPC := 84.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleAbstractIdentifier.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleDirectAccessExpr.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleIndexedExpr.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleArithmeticExpr.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 92] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) resetGoalInterval.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := tableInput.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack2 := [
    | block2810c144Value0 block2810c144Value1 |
    block2810c144Value0 := OrderedCollection.
    block2810c144Value1 := (block2810c144Value0) new.
    block2810c144Value1
].
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := [:recoveredBlock117Arg1 | 
    | recoveredBlock117Stack0 recoveredBlock117Stack1 recoveredBlock117Stack2 recoveredBlock117Stack3 recoveredBlock117Stack4 recoveredBlock117Stack5 recoveredBlock117PC recoveredBlock117Step recoveredBlock117Done recoveredBlock117Result |
    recoveredBlock117Stack0 := self.
    recoveredBlock117PC := 124.
    recoveredBlock117Done := false.
    [recoveredBlock117Done not] whileTrue: [
        recoveredBlock117Step := recoveredBlock117PC.
        recoveredBlock117Step = 124 ifTrue: [
            recoveredBlock117Stack1 := nil.
            recoveredBlock117PC := 125.
        ].
        recoveredBlock117Step = 125 ifTrue: [
            recoveredBlock117Stack2 := recoveredBlock117Arg1.
            recoveredBlock117PC := 126.
        ].
        recoveredBlock117Step = 126 ifTrue: [
            recoveredBlock117Stack2 := (recoveredBlock117Stack2) first.
            recoveredBlock117PC := 128.
        ].
        recoveredBlock117Step = 128 ifTrue: [
            recoveredBlock117Stack3 := recoveredLocal1.
            recoveredBlock117PC := 131.
        ].
        recoveredBlock117Step = 131 ifTrue: [
            recoveredBlock117Stack2 := (recoveredBlock117Stack2) isIleIdentical: (recoveredBlock117Stack3).
            recoveredBlock117PC := 133.
        ].
        recoveredBlock117Step = 133 ifTrue: [
            (recoveredBlock117Stack2) ifTrue: [recoveredBlock117PC := 136] ifFalse: [recoveredBlock117PC := 164].
        ].
        recoveredBlock117Step = 136 ifTrue: [
            recoveredBlock117Stack2 := recoveredBlock117Arg1.
            recoveredBlock117PC := 137.
        ].
        recoveredBlock117Step = 137 ifTrue: [
            recoveredBlock117Stack3 := 2.
            recoveredBlock117PC := 139.
        ].
        recoveredBlock117Step = 139 ifTrue: [
            recoveredBlock117Stack2 := (recoveredBlock117Stack2) at: (recoveredBlock117Stack3).
            recoveredBlock117PC := 141.
        ].
        recoveredBlock117Step = 141 ifTrue: [
            recoveredBlock117Stack3 := recoveredArg3.
            recoveredBlock117PC := 144.
        ].
        recoveredBlock117Step = 144 ifTrue: [
            recoveredBlock117Stack2 := (recoveredBlock117Stack2) = (recoveredBlock117Stack3).
            recoveredBlock117PC := 145.
        ].
        recoveredBlock117Step = 145 ifTrue: [
            (recoveredBlock117Stack2) ifTrue: [recoveredBlock117PC := 148] ifFalse: [recoveredBlock117PC := 164].
        ].
        recoveredBlock117Step = 148 ifTrue: [
            recoveredBlock117PC := 149.
        ].
        recoveredBlock117Step = 149 ifTrue: [
            recoveredBlock117Stack1 := recoveredBlock117Arg1.
            recoveredBlock117PC := 150.
        ].
        recoveredBlock117Step = 150 ifTrue: [
            recoveredBlock117Stack2 := 3.
            recoveredBlock117PC := 152.
        ].
        recoveredBlock117Step = 152 ifTrue: [
            recoveredBlock117Stack3 := recoveredBlock117Arg1.
            recoveredBlock117PC := 153.
        ].
        recoveredBlock117Step = 153 ifTrue: [
            recoveredBlock117Stack3 := (recoveredBlock117Stack3) last.
            recoveredBlock117PC := 155.
        ].
        recoveredBlock117Step = 155 ifTrue: [
            recoveredBlock117Stack4 := recoveredArg4.
            recoveredBlock117PC := 158.
        ].
        recoveredBlock117Step = 158 ifTrue: [
            recoveredBlock117Stack3 := (recoveredBlock117Stack3) orExpr: (recoveredBlock117Stack4).
            recoveredBlock117PC := 160.
        ].
        recoveredBlock117Step = 160 ifTrue: [
            (recoveredBlock117Stack1) at: (recoveredBlock117Stack2) put: (recoveredBlock117Stack3).
            recoveredBlock117PC := 162.
        ].
        recoveredBlock117Step = 162 ifTrue: [
            recoveredBlock117Stack1 := self.
            recoveredBlock117PC := 163.
        ].
        recoveredBlock117Step = 163 ifTrue: [
            ^recoveredBlock117Stack1
        ].
        recoveredBlock117Step = 164 ifTrue: [
            recoveredBlock117Result := recoveredBlock117Stack1.
            recoveredBlock117Done := true.
        ].
    ].
    recoveredBlock117Result
].
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack0 := tableInput.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20521734; bytecode file offset 0xe1e030"
!SGIlConditionalDataStructureVisitor methodsFor: 'recovered'!
expand
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 |
    recoveredValue0 := (self) usesElement.
    recoveredValue1 := (recoveredValue0) keys.
    recoveredValue2 := (self) declWithScopeCompare.
    recoveredValue3 := (recoveredValue1) asSortedCollection: (recoveredValue2).
    recoveredValue4 := [:recoveredBlock9Arg1 | 
    | recoveredBlock9Local1 recoveredBlock9Value0 recoveredBlock9Value1 recoveredBlock9Value2 recoveredBlock9Value3 recoveredBlock9Value4 recoveredBlock9Value5 recoveredBlock9Value6 |
    recoveredBlock9Value0 := (self) usesElement.
    recoveredBlock9Value1 := recoveredBlock9Arg1.
    recoveredBlock9Value2 := (recoveredBlock9Value0) at: (recoveredBlock9Value1).
    recoveredBlock9Local1 := recoveredBlock9Value2.
    recoveredBlock9Value3 := (self) expander.
    recoveredBlock9Value4 := recoveredBlock9Arg1.
    recoveredBlock9Value5 := recoveredBlock9Local1.
    recoveredBlock9Value6 := (recoveredBlock9Value3) dbAddComponentUsesElement: (recoveredBlock9Value4) cond: (recoveredBlock9Value5).
    recoveredBlock9Value6
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := (self) methodCall.
    recoveredValue6 := (recoveredValue5) keys.
    recoveredValue7 := (self) declWithScopeCompare.
    recoveredValue8 := (recoveredValue6) asSortedCollection: (recoveredValue7).
    recoveredValue9 := [:recoveredBlock38Arg1 | 
    | recoveredBlock38Local1 recoveredBlock38Value0 recoveredBlock38Value1 recoveredBlock38Value2 recoveredBlock38Value3 recoveredBlock38Value4 recoveredBlock38Value5 recoveredBlock38Value6 |
    recoveredBlock38Value0 := (self) methodCall.
    recoveredBlock38Value1 := recoveredBlock38Arg1.
    recoveredBlock38Value2 := (recoveredBlock38Value0) at: (recoveredBlock38Value1).
    recoveredBlock38Local1 := recoveredBlock38Value2.
    recoveredBlock38Value3 := (self) expander.
    recoveredBlock38Value4 := recoveredBlock38Arg1.
    recoveredBlock38Value5 := recoveredBlock38Local1.
    recoveredBlock38Value6 := (recoveredBlock38Value3) dbComponentUsesExecutable: (recoveredBlock38Value4) cond: (recoveredBlock38Value5).
    recoveredBlock38Value6
].
    (recoveredValue8) do: (recoveredValue9).
    recoveredValue10 := (self) tableInput.
    recoveredValue11 := (recoveredValue10) keys.
    recoveredValue12 := (self) declWithScopeCompare.
    recoveredValue13 := (recoveredValue11) asSortedCollection: (recoveredValue12).
    recoveredValue14 := [:recoveredBlock67Arg1 | 
    | recoveredBlock67Value0 recoveredBlock67Value1 recoveredBlock67Value2 recoveredBlock67Value3 recoveredBlock67Value4 |
    recoveredBlock67Value0 := (self) tableInput.
    recoveredBlock67Value1 := recoveredBlock67Arg1.
    recoveredBlock67Value2 := (recoveredBlock67Value0) at: (recoveredBlock67Value1).
    recoveredBlock67Value3 := [:recoveredBlock67Block81Arg1 | 
    | recoveredBlock67Block81Value0 recoveredBlock67Block81Value1 recoveredBlock67Block81Value2 |
    recoveredBlock67Block81Value0 := recoveredBlock67Arg1.
    recoveredBlock67Block81Value1 := recoveredBlock67Block81Arg1.
    recoveredBlock67Block81Value2 := (self) dbTable: (recoveredBlock67Block81Value0) hasInputElement: (recoveredBlock67Block81Value1).
    recoveredBlock67Block81Value2
].
    recoveredBlock67Value4 := (recoveredBlock67Value2) do: (recoveredBlock67Value3).
    recoveredBlock67Value4
].
    (recoveredValue13) do: (recoveredValue14).
    recoveredValue15 := (self) methodInput.
    recoveredValue16 := (recoveredValue15) keys.
    recoveredValue17 := (self) declWithScopeCompare.
    recoveredValue18 := (recoveredValue16) asSortedCollection: (recoveredValue17).
    recoveredValue19 := [:recoveredBlock107Arg1 | 
    | recoveredBlock107Stack0 recoveredBlock107Stack1 recoveredBlock107Stack2 recoveredBlock107PC recoveredBlock107Step recoveredBlock107Done recoveredBlock107Result |
    recoveredBlock107Stack0 := self.
    recoveredBlock107PC := 114.
    recoveredBlock107Done := false.
    [recoveredBlock107Done not] whileTrue: [
        recoveredBlock107Step := recoveredBlock107PC.
        recoveredBlock107Step = 114 ifTrue: [
            recoveredBlock107Stack0 := (recoveredBlock107Stack0) methodInput.
            recoveredBlock107PC := 116.
        ].
        recoveredBlock107Step = 116 ifTrue: [
            recoveredBlock107Stack1 := recoveredBlock107Arg1.
            recoveredBlock107PC := 119.
        ].
        recoveredBlock107Step = 119 ifTrue: [
            recoveredBlock107Stack0 := (recoveredBlock107Stack0) at: (recoveredBlock107Stack1).
            recoveredBlock107PC := 121.
        ].
        recoveredBlock107Step = 121 ifTrue: [
            recoveredBlock107Stack0 := (recoveredBlock107Stack0) keys.
            recoveredBlock107PC := 122.
        ].
        recoveredBlock107Step = 122 ifTrue: [
            recoveredBlock107Stack1 := [:block2810c480Arg1 :block2810c480Arg2 | 
    | block2810c480Value0 block2810c480Value1 block2810c480Value2 block2810c480Value3 block2810c480Value4 |
    block2810c480Value0 := block2810c480Arg1.
    block2810c480Value1 := (block2810c480Value0) errLabel.
    block2810c480Value2 := block2810c480Arg2.
    block2810c480Value3 := (block2810c480Value2) errLabel.
    block2810c480Value4 := (block2810c480Value1) <= (block2810c480Value3).
    block2810c480Value4
].
            recoveredBlock107PC := 124.
        ].
        recoveredBlock107Step = 124 ifTrue: [
            recoveredBlock107PC := 136.
        ].
        recoveredBlock107Step = 136 ifTrue: [
            recoveredBlock107Stack0 := (recoveredBlock107Stack0) asSortedCollection: (recoveredBlock107Stack1).
            recoveredBlock107PC := 137.
        ].
        recoveredBlock107Step = 137 ifTrue: [
            recoveredBlock107Stack1 := [:recoveredBlock107Block137Arg1 | 
    | recoveredBlock107Block137Value0 recoveredBlock107Block137Value1 recoveredBlock107Block137Value2 recoveredBlock107Block137Value3 recoveredBlock107Block137Value4 recoveredBlock107Block137Value5 recoveredBlock107Block137Value6 |
    recoveredBlock107Block137Value0 := (self) methodInput.
    recoveredBlock107Block137Value1 := recoveredBlock107Arg1.
    recoveredBlock107Block137Value2 := (recoveredBlock107Block137Value0) at: (recoveredBlock107Block137Value1).
    recoveredBlock107Block137Value3 := recoveredBlock107Block137Arg1.
    recoveredBlock107Block137Value4 := (recoveredBlock107Block137Value2) at: (recoveredBlock107Block137Value3).
    recoveredBlock107Block137Value5 := [:recoveredBlock107Block137Block156Arg1 | 
    | recoveredBlock107Block137Block156Value0 recoveredBlock107Block137Block156Value1 recoveredBlock107Block137Block156Value2 recoveredBlock107Block137Block156Value3 recoveredBlock107Block137Block156Value4 recoveredBlock107Block137Block156Value5 recoveredBlock107Block137Block156Value6 recoveredBlock107Block137Block156Value7 recoveredBlock107Block137Block156Value8 recoveredBlock107Block137Block156Value9 |
    recoveredBlock107Block137Block156Value0 := (self) expander.
    recoveredBlock107Block137Block156Value1 := recoveredBlock107Arg1.
    recoveredBlock107Block137Block156Value2 := recoveredBlock107Block137Arg1.
    recoveredBlock107Block137Block156Value3 := recoveredBlock107Block137Block156Arg1.
    recoveredBlock107Block137Block156Value4 := (recoveredBlock107Block137Block156Value3) first.
    recoveredBlock107Block137Block156Value5 := recoveredBlock107Block137Block156Arg1.
    recoveredBlock107Block137Block156Value6 := (recoveredBlock107Block137Block156Value5) last.
    recoveredBlock107Block137Block156Value7 := recoveredBlock107Block137Block156Arg1.
    recoveredBlock107Block137Block156Value8 := (recoveredBlock107Block137Block156Value7) at: (2).
    recoveredBlock107Block137Block156Value9 := (recoveredBlock107Block137Block156Value0) dbMethod: (recoveredBlock107Block137Block156Value1) parm: (recoveredBlock107Block137Block156Value2) hasInputElement: (recoveredBlock107Block137Block156Value4) condition: (recoveredBlock107Block137Block156Value6) index: (recoveredBlock107Block137Block156Value8).
    recoveredBlock107Block137Block156Value9
].
    recoveredBlock107Block137Value6 := (recoveredBlock107Block137Value4) do: (recoveredBlock107Block137Value5).
    recoveredBlock107Block137Value6
].
            recoveredBlock107PC := 188.
        ].
        recoveredBlock107Step = 188 ifTrue: [
            recoveredBlock107Stack0 := (recoveredBlock107Stack0) do: (recoveredBlock107Stack1).
            recoveredBlock107PC := 190.
        ].
        recoveredBlock107Step = 190 ifTrue: [
            recoveredBlock107Result := recoveredBlock107Stack0.
            recoveredBlock107Done := true.
        ].
    ].
    recoveredBlock107Result
].
    (recoveredValue18) do: (recoveredValue19).
    ^self
! !

"ASDBase.ic method 0x205a3634; bytecode file offset 0xe9ff88"
!SGIlConditionalDataStructureVisitor methodsFor: 'recovered'!
methodCall: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlNode.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodDecl.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := methodCall.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := methodCall.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock28Value0 recoveredBlock28Value1 |
    recoveredBlock28Value0 := (self) ileBuilder.
    recoveredBlock28Value1 := (recoveredBlock28Value0) literalFalse.
    recoveredBlock28Value1
].
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4) ifAbsent: (recoveredStack5).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack4 := currentCondition.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack3 := (recoveredStack3) orExpr: (recoveredStack4).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) scope.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgSingleInstance.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack3 := #().
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack4 := currentCondition.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack4 := (recoveredStack4) asIleCopy.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack5 := (recoveredStack5) methodInstanceCall.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack1) setMethodCall: (recoveredStack2) instance: (recoveredStack3) condition: (recoveredStack4) in: (recoveredStack5).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredPC := 187.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) argReceiver.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 187] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := (recoveredStack1) argReceiver.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightChild.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlReferencedExpr.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 102] ifFalse: [recoveredPC := 110].
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := (recoveredStack1) asMdlDereferencedExpr.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlIdentifier.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 118] ifFalse: [recoveredPC := 138].
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack3 := (recoveredStack3) mdlNode.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack3 := (recoveredStack3) argReceiver.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack3 := (recoveredStack3) rightChild.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack4 := currentCondition.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            (recoveredStack1) setMethodCall: (recoveredStack2) instance: (recoveredStack3) condition: (recoveredStack4).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredPC := 183.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlMethodCall.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 146] ifFalse: [recoveredPC := 170].
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack3 := Array.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack4 := (recoveredStack4) methodDecl.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack3 := (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack4 := currentCondition.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack5 := (recoveredStack5) methodInstanceCall.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            (recoveredStack1) setMethodCall: (recoveredStack2) instance: (recoveredStack3) condition: (recoveredStack4) in: (recoveredStack5).
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredPC := 183.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack2 := (recoveredStack2) args.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack2 := (recoveredStack2) first.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            (recoveredStack1) complexWarning: (recoveredStack2) source: (recoveredStack3).
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack0 := (recoveredStack0) conditionalInputValues.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 194] ifFalse: [recoveredPC := 286].
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack0 := (recoveredStack0) args.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack1 := [:recoveredBlock199Arg1 | 
    | recoveredBlock199Local1 recoveredBlock199Stack0 recoveredBlock199Stack1 recoveredBlock199Stack2 recoveredBlock199Stack3 recoveredBlock199Stack4 recoveredBlock199Stack5 recoveredBlock199PC recoveredBlock199Step recoveredBlock199Done recoveredBlock199Result |
    recoveredBlock199Stack0 := self.
    recoveredBlock199PC := 206.
    recoveredBlock199Done := false.
    [recoveredBlock199Done not] whileTrue: [
        recoveredBlock199Step := recoveredBlock199PC.
        recoveredBlock199Step = 206 ifTrue: [
            recoveredBlock199Stack1 := nil.
            recoveredBlock199PC := 207.
        ].
        recoveredBlock199Step = 207 ifTrue: [
            recoveredBlock199Stack2 := recoveredBlock199Arg1.
            recoveredBlock199PC := 210.
        ].
        recoveredBlock199Step = 210 ifTrue: [
            recoveredBlock199Stack2 := (recoveredBlock199Stack2) expr.
            recoveredBlock199PC := 212.
        ].
        recoveredBlock199Step = 212 ifTrue: [
            recoveredBlock199Stack2 := (recoveredBlock199Stack2) targetExpr.
            recoveredBlock199PC := 214.
        ].
        recoveredBlock199Step = 214 ifTrue: [
            recoveredBlock199Stack2 := (recoveredBlock199Stack2) ileHasMdlIdentifier.
            recoveredBlock199PC := 216.
        ].
        recoveredBlock199Step = 216 ifTrue: [
            (recoveredBlock199Stack2) ifTrue: [recoveredBlock199PC := 220] ifFalse: [recoveredBlock199PC := 283].
        ].
        recoveredBlock199Step = 220 ifTrue: [
            recoveredBlock199PC := 221.
        ].
        recoveredBlock199Step = 221 ifTrue: [
            recoveredBlock199Stack1 := nil.
            recoveredBlock199PC := 222.
        ].
        recoveredBlock199Step = 222 ifTrue: [
            recoveredBlock199Stack2 := recoveredLocal2.
            recoveredBlock199PC := 225.
        ].
        recoveredBlock199Step = 225 ifTrue: [
            recoveredBlock199Stack2 := (recoveredBlock199Stack2) parmChildren.
            recoveredBlock199PC := 227.
        ].
        recoveredBlock199Step = 227 ifTrue: [
            recoveredBlock199Stack3 := [:recoveredBlock199Block227Arg1 | 
    | recoveredBlock199Block227Value0 recoveredBlock199Block227Value1 recoveredBlock199Block227Value2 recoveredBlock199Block227Value3 recoveredBlock199Block227Value4 recoveredBlock199Block227Value5 |
    recoveredBlock199Block227Value0 := recoveredBlock199Block227Arg1.
    recoveredBlock199Block227Value1 := (recoveredBlock199Block227Value0) errLabel.
    recoveredBlock199Block227Value2 := recoveredBlock199Arg1.
    recoveredBlock199Block227Value3 := (recoveredBlock199Block227Value2) parmAttributes.
    recoveredBlock199Block227Value4 := (recoveredBlock199Block227Value3) errLabel.
    recoveredBlock199Block227Value5 := (recoveredBlock199Block227Value1) = (recoveredBlock199Block227Value4).
    recoveredBlock199Block227Value5
].
            recoveredBlock199PC := 246.
        ].
        recoveredBlock199Step = 246 ifTrue: [
            recoveredBlock199Stack4 := [].
            recoveredBlock199PC := 248.
        ].
        recoveredBlock199Step = 248 ifTrue: [
            recoveredBlock199Stack2 := (recoveredBlock199Stack2) detect: (recoveredBlock199Stack3) ifNone: (recoveredBlock199Stack4).
            recoveredBlock199PC := 250.
        ].
        recoveredBlock199Step = 250 ifTrue: [
            recoveredBlock199Stack3 := recoveredBlock199Stack2.
            recoveredBlock199PC := 251.
        ].
        recoveredBlock199Step = 251 ifTrue: [
            recoveredBlock199Local1 := recoveredBlock199Stack3.
            recoveredBlock199PC := 254.
        ].
        recoveredBlock199Step = 254 ifTrue: [
            (recoveredBlock199Stack2 == nil) ifTrue: [recoveredBlock199PC := 279] ifFalse: [recoveredBlock199PC := 258].
        ].
        recoveredBlock199Step = 258 ifTrue: [
            recoveredBlock199PC := 259.
        ].
        recoveredBlock199Step = 259 ifTrue: [
            recoveredBlock199Stack1 := self.
            recoveredBlock199PC := 260.
        ].
        recoveredBlock199Step = 260 ifTrue: [
            recoveredBlock199Stack2 := recoveredLocal2.
            recoveredBlock199PC := 263.
        ].
        recoveredBlock199Step = 263 ifTrue: [
            recoveredBlock199Stack3 := recoveredBlock199Local1.
            recoveredBlock199PC := 266.
        ].
        recoveredBlock199Step = 266 ifTrue: [
            recoveredBlock199Stack4 := recoveredBlock199Arg1.
            recoveredBlock199PC := 269.
        ].
        recoveredBlock199Step = 269 ifTrue: [
            recoveredBlock199Stack4 := (recoveredBlock199Stack4) expr.
            recoveredBlock199PC := 271.
        ].
        recoveredBlock199Step = 271 ifTrue: [
            recoveredBlock199Stack4 := (recoveredBlock199Stack4) targetExpr.
            recoveredBlock199PC := 273.
        ].
        recoveredBlock199Step = 273 ifTrue: [
            recoveredBlock199Stack4 := (recoveredBlock199Stack4) mdlNode.
            recoveredBlock199PC := 274.
        ].
        recoveredBlock199Step = 274 ifTrue: [
            recoveredBlock199Stack4 := (recoveredBlock199Stack4) varDecl.
            recoveredBlock199PC := 276.
        ].
        recoveredBlock199Step = 276 ifTrue: [
            recoveredBlock199Stack1 := (recoveredBlock199Stack1) method: (recoveredBlock199Stack2) parm: (recoveredBlock199Stack3) addInput: (recoveredBlock199Stack4).
            recoveredBlock199PC := 279.
        ].
        recoveredBlock199Step = 279 ifTrue: [
            recoveredBlock199Stack2 := nil.
            recoveredBlock199PC := 280.
        ].
        recoveredBlock199Step = 280 ifTrue: [
            recoveredBlock199Local1 := recoveredBlock199Stack2.
            recoveredBlock199PC := 283.
        ].
        recoveredBlock199Step = 283 ifTrue: [
            recoveredBlock199Result := recoveredBlock199Stack1.
            recoveredBlock199Done := true.
        ].
    ].
    recoveredBlock199Result
].
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack0 := super methodCall: (recoveredStack1).
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205dc584; bytecode file offset 0xed8ec4"
!SGIlConditionalDataStructureVisitor methodsFor: 'recovered'!
merge: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) callCondition.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) literalTrue.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := Set.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := (recoveredStack3) elementRead.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := (recoveredStack3) keys.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack2) addAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := (recoveredStack3) elementWrite.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := (recoveredStack3) keys.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack2) addAll: (recoveredStack3).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := (recoveredStack2) declWithScopeCompare.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection: (recoveredStack2).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := [:recoveredBlock57Arg1 | 
    | recoveredBlock57Local1 recoveredBlock57Local2 recoveredBlock57Value0 recoveredBlock57Value1 recoveredBlock57Value2 recoveredBlock57Value3 recoveredBlock57Value4 recoveredBlock57Value5 recoveredBlock57Value6 recoveredBlock57Value7 recoveredBlock57Value8 recoveredBlock57Value9 recoveredBlock57Value10 recoveredBlock57Value11 recoveredBlock57Value12 recoveredBlock57Value13 recoveredBlock57Value14 recoveredBlock57Value15 recoveredBlock57Value16 recoveredBlock57Value17 recoveredBlock57Value18 recoveredBlock57Value19 recoveredBlock57Value20 recoveredBlock57Value21 recoveredBlock57Value22 |
    recoveredBlock57Value0 := recoveredArg1.
    recoveredBlock57Value1 := (recoveredBlock57Value0) elementRead.
    recoveredBlock57Value2 := recoveredBlock57Arg1.
    recoveredBlock57Value3 := [
    | recoveredBlock57Block70Value0 recoveredBlock57Block70Value1 recoveredBlock57Block70Value2 |
    recoveredBlock57Block70Value0 := (self) generator.
    recoveredBlock57Block70Value1 := (recoveredBlock57Block70Value0) ileBuilder.
    recoveredBlock57Block70Value2 := (recoveredBlock57Block70Value1) literalFalse.
    recoveredBlock57Block70Value2
].
    recoveredBlock57Value4 := (recoveredBlock57Value1) at: (recoveredBlock57Value2) ifAbsent: (recoveredBlock57Value3).
    recoveredBlock57Local2 := recoveredBlock57Value4.
    recoveredBlock57Value5 := recoveredArg1.
    recoveredBlock57Value6 := (recoveredBlock57Value5) elementWrite.
    recoveredBlock57Value7 := recoveredBlock57Arg1.
    recoveredBlock57Value8 := [
    | recoveredBlock57Block91Value0 recoveredBlock57Block91Value1 recoveredBlock57Block91Value2 |
    recoveredBlock57Block91Value0 := (self) generator.
    recoveredBlock57Block91Value1 := (recoveredBlock57Block91Value0) ileBuilder.
    recoveredBlock57Block91Value2 := (recoveredBlock57Block91Value1) literalFalse.
    recoveredBlock57Block91Value2
].
    recoveredBlock57Value9 := (recoveredBlock57Value6) at: (recoveredBlock57Value7) ifAbsent: (recoveredBlock57Value8).
    recoveredBlock57Local1 := recoveredBlock57Value9.
    recoveredBlock57Value10 := (self) usesElement.
    recoveredBlock57Value11 := recoveredBlock57Arg1.
    recoveredBlock57Value12 := (self) usesElement.
    recoveredBlock57Value13 := recoveredBlock57Arg1.
    recoveredBlock57Value14 := [
    | recoveredBlock57Block114Value0 recoveredBlock57Block114Value1 recoveredBlock57Block114Value2 |
    recoveredBlock57Block114Value0 := (self) generator.
    recoveredBlock57Block114Value1 := (recoveredBlock57Block114Value0) ileBuilder.
    recoveredBlock57Block114Value2 := (recoveredBlock57Block114Value1) literalFalse.
    recoveredBlock57Block114Value2
].
    recoveredBlock57Value15 := (recoveredBlock57Value12) at: (recoveredBlock57Value13) ifAbsent: (recoveredBlock57Value14).
    recoveredBlock57Value16 := recoveredBlock57Local2.
    recoveredBlock57Value17 := recoveredBlock57Local1.
    recoveredBlock57Value18 := (recoveredBlock57Value16) orExpr: (recoveredBlock57Value17).
    recoveredBlock57Value19 := recoveredLocal2.
    recoveredBlock57Value20 := (recoveredBlock57Value18) andExpr: (recoveredBlock57Value19).
    recoveredBlock57Value21 := (recoveredBlock57Value15) or: (recoveredBlock57Value20).
    recoveredBlock57Value22 := (recoveredBlock57Value10) at: (recoveredBlock57Value11) put: (recoveredBlock57Value21).
    recoveredBlock57Value22
].
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodCall.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := (recoveredStack1) keys.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack2 := [:block2811a004Arg1 :block2811a004Arg2 | 
    | block2811a004Value0 block2811a004Value1 block2811a004Value2 block2811a004Value3 block2811a004Value4 |
    block2811a004Value0 := block2811a004Arg1.
    block2811a004Value1 := (block2811a004Value0) errLabel.
    block2811a004Value2 := block2811a004Arg2.
    block2811a004Value3 := (block2811a004Value2) errLabel.
    block2811a004Value4 := (block2811a004Value1) <= (block2811a004Value3).
    block2811a004Value4
].
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection: (recoveredStack2).
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack2 := [:recoveredBlock166Arg1 | 
    | recoveredBlock166Local1 recoveredBlock166Value0 recoveredBlock166Value1 recoveredBlock166Value2 recoveredBlock166Value3 recoveredBlock166Value4 recoveredBlock166Value5 recoveredBlock166Value6 recoveredBlock166Value7 recoveredBlock166Value8 recoveredBlock166Value9 recoveredBlock166Value10 recoveredBlock166Value11 recoveredBlock166Value12 recoveredBlock166Value13 recoveredBlock166Value14 |
    recoveredBlock166Value0 := recoveredArg1.
    recoveredBlock166Value1 := (recoveredBlock166Value0) methodCall.
    recoveredBlock166Value2 := recoveredBlock166Arg1.
    recoveredBlock166Value3 := (recoveredBlock166Value1) at: (recoveredBlock166Value2).
    recoveredBlock166Local1 := recoveredBlock166Value3.
    recoveredBlock166Value4 := (self) methodCall.
    recoveredBlock166Value5 := recoveredBlock166Arg1.
    recoveredBlock166Value6 := (self) methodCall.
    recoveredBlock166Value7 := recoveredBlock166Arg1.
    recoveredBlock166Value8 := [
    | recoveredBlock166Block188Value0 recoveredBlock166Block188Value1 recoveredBlock166Block188Value2 |
    recoveredBlock166Block188Value0 := (self) generator.
    recoveredBlock166Block188Value1 := (recoveredBlock166Block188Value0) ileBuilder.
    recoveredBlock166Block188Value2 := (recoveredBlock166Block188Value1) literalFalse.
    recoveredBlock166Block188Value2
].
    recoveredBlock166Value9 := (recoveredBlock166Value6) at: (recoveredBlock166Value7) ifAbsent: (recoveredBlock166Value8).
    recoveredBlock166Value10 := recoveredBlock166Local1.
    recoveredBlock166Value11 := recoveredLocal2.
    recoveredBlock166Value12 := (recoveredBlock166Value10) andExpr: (recoveredBlock166Value11).
    recoveredBlock166Value13 := (recoveredBlock166Value9) orExpr: (recoveredBlock166Value12).
    recoveredBlock166Value14 := (recoveredBlock166Value4) at: (recoveredBlock166Value5) put: (recoveredBlock166Value13).
    recoveredBlock166Value14
].
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack1 := (recoveredStack1) tableInput.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack2 := [:recoveredBlock220Arg1 :recoveredBlock220Arg2 | 
    | recoveredBlock220Value0 recoveredBlock220Value1 recoveredBlock220Value2 |
    recoveredBlock220Value0 := recoveredBlock220Arg2.
    recoveredBlock220Value1 := [:recoveredBlock220Block229Arg1 | 
    | recoveredBlock220Block229Stack0 recoveredBlock220Block229Stack1 recoveredBlock220Block229Stack2 recoveredBlock220Block229Stack3 recoveredBlock220Block229Stack4 recoveredBlock220Block229Stack5 recoveredBlock220Block229Stack6 recoveredBlock220Block229Stack7 recoveredBlock220Block229PC recoveredBlock220Block229Step recoveredBlock220Block229Done recoveredBlock220Block229Result |
    recoveredBlock220Block229Stack0 := self.
    recoveredBlock220Block229PC := 236.
    recoveredBlock220Block229Done := false.
    [recoveredBlock220Block229Done not] whileTrue: [
        recoveredBlock220Block229Step := recoveredBlock220Block229PC.
        recoveredBlock220Block229Step = 236 ifTrue: [
            recoveredBlock220Block229Stack1 := nil.
            recoveredBlock220Block229PC := 237.
        ].
        recoveredBlock220Block229Step = 237 ifTrue: [
            recoveredBlock220Block229Stack2 := self.
            recoveredBlock220Block229PC := 238.
        ].
        recoveredBlock220Block229Step = 238 ifTrue: [
            recoveredBlock220Block229Stack3 := recoveredBlock220Block229Arg1.
            recoveredBlock220Block229PC := 239.
        ].
        recoveredBlock220Block229Step = 239 ifTrue: [
            recoveredBlock220Block229Stack3 := (recoveredBlock220Block229Stack3) first.
            recoveredBlock220Block229PC := 241.
        ].
        recoveredBlock220Block229Step = 241 ifTrue: [
            recoveredBlock220Block229Stack2 := (recoveredBlock220Block229Stack2) isStackVar: (recoveredBlock220Block229Stack3).
            recoveredBlock220Block229PC := 243.
        ].
        recoveredBlock220Block229Step = 243 ifTrue: [
            (recoveredBlock220Block229Stack2) ifTrue: [recoveredBlock220Block229PC := 270] ifFalse: [recoveredBlock220Block229PC := 246].
        ].
        recoveredBlock220Block229Step = 246 ifTrue: [
            recoveredBlock220Block229PC := 247.
        ].
        recoveredBlock220Block229Step = 247 ifTrue: [
            recoveredBlock220Block229Stack1 := self.
            recoveredBlock220Block229PC := 248.
        ].
        recoveredBlock220Block229Step = 248 ifTrue: [
            recoveredBlock220Block229Stack2 := recoveredBlock220Arg1.
            recoveredBlock220Block229PC := 251.
        ].
        recoveredBlock220Block229Step = 251 ifTrue: [
            recoveredBlock220Block229Stack3 := recoveredBlock220Block229Arg1.
            recoveredBlock220Block229PC := 252.
        ].
        recoveredBlock220Block229Step = 252 ifTrue: [
            recoveredBlock220Block229Stack3 := (recoveredBlock220Block229Stack3) first.
            recoveredBlock220Block229PC := 254.
        ].
        recoveredBlock220Block229Step = 254 ifTrue: [
            recoveredBlock220Block229Stack4 := recoveredBlock220Block229Arg1.
            recoveredBlock220Block229PC := 255.
        ].
        recoveredBlock220Block229Step = 255 ifTrue: [
            recoveredBlock220Block229Stack5 := 2.
            recoveredBlock220Block229PC := 257.
        ].
        recoveredBlock220Block229Step = 257 ifTrue: [
            recoveredBlock220Block229Stack4 := (recoveredBlock220Block229Stack4) at: (recoveredBlock220Block229Stack5).
            recoveredBlock220Block229PC := 259.
        ].
        recoveredBlock220Block229Step = 259 ifTrue: [
            recoveredBlock220Block229Stack5 := recoveredBlock220Block229Arg1.
            recoveredBlock220Block229PC := 260.
        ].
        recoveredBlock220Block229Step = 260 ifTrue: [
            recoveredBlock220Block229Stack5 := (recoveredBlock220Block229Stack5) last.
            recoveredBlock220Block229PC := 262.
        ].
        recoveredBlock220Block229Step = 262 ifTrue: [
            recoveredBlock220Block229Stack6 := recoveredLocal2.
            recoveredBlock220Block229PC := 265.
        ].
        recoveredBlock220Block229Step = 265 ifTrue: [
            recoveredBlock220Block229Stack5 := (recoveredBlock220Block229Stack5) andExpr: (recoveredBlock220Block229Stack6).
            recoveredBlock220Block229PC := 267.
        ].
        recoveredBlock220Block229Step = 267 ifTrue: [
            recoveredBlock220Block229Stack1 := (recoveredBlock220Block229Stack1) table: (recoveredBlock220Block229Stack2) addInput: (recoveredBlock220Block229Stack3) index: (recoveredBlock220Block229Stack4) condition: (recoveredBlock220Block229Stack5).
            recoveredBlock220Block229PC := 270.
        ].
        recoveredBlock220Block229Step = 270 ifTrue: [
            recoveredBlock220Block229Result := recoveredBlock220Block229Stack1.
            recoveredBlock220Block229Done := true.
        ].
    ].
    recoveredBlock220Block229Result
].
    recoveredBlock220Value2 := (recoveredBlock220Value0) do: (recoveredBlock220Value1).
    recoveredBlock220Value2
].
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            (recoveredStack1) keysAndValuesDo: (recoveredStack2).
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodInput.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack2 := [:recoveredBlock281Arg1 :recoveredBlock281Arg2 | 
    | recoveredBlock281Value0 recoveredBlock281Value1 recoveredBlock281Value2 |
    recoveredBlock281Value0 := recoveredBlock281Arg2.
    recoveredBlock281Value1 := [:recoveredBlock281Block291Arg1 :recoveredBlock281Block291Arg2 | 
    | recoveredBlock281Block291Value0 recoveredBlock281Block291Value1 recoveredBlock281Block291Value2 |
    recoveredBlock281Block291Value0 := recoveredBlock281Block291Arg2.
    recoveredBlock281Block291Value1 := [:recoveredBlock281Block291Block301Arg1 | 
    | recoveredBlock281Block291Block301Stack0 recoveredBlock281Block291Block301Stack1 recoveredBlock281Block291Block301Stack2 recoveredBlock281Block291Block301Stack3 recoveredBlock281Block291Block301Stack4 recoveredBlock281Block291Block301Stack5 recoveredBlock281Block291Block301Stack6 recoveredBlock281Block291Block301Stack7 recoveredBlock281Block291Block301PC recoveredBlock281Block291Block301Step recoveredBlock281Block291Block301Done recoveredBlock281Block291Block301Result |
    recoveredBlock281Block291Block301Stack0 := self.
    recoveredBlock281Block291Block301PC := 308.
    recoveredBlock281Block291Block301Done := false.
    [recoveredBlock281Block291Block301Done not] whileTrue: [
        recoveredBlock281Block291Block301Step := recoveredBlock281Block291Block301PC.
        recoveredBlock281Block291Block301Step = 308 ifTrue: [
            recoveredBlock281Block291Block301Stack1 := nil.
            recoveredBlock281Block291Block301PC := 309.
        ].
        recoveredBlock281Block291Block301Step = 309 ifTrue: [
            recoveredBlock281Block291Block301Stack2 := recoveredBlock281Block291Block301Arg1.
            recoveredBlock281Block291Block301PC := 310.
        ].
        recoveredBlock281Block291Block301Step = 310 ifTrue: [
            recoveredBlock281Block291Block301Stack2 := (recoveredBlock281Block291Block301Stack2) first.
            recoveredBlock281Block291Block301PC := 312.
        ].
        recoveredBlock281Block291Block301Step = 312 ifTrue: [
            recoveredBlock281Block291Block301Stack2 := (recoveredBlock281Block291Block301Stack2) isMdlParmDecl.
            recoveredBlock281Block291Block301PC := 314.
        ].
        recoveredBlock281Block291Block301Step = 314 ifTrue: [
            (recoveredBlock281Block291Block301Stack2) ifTrue: [recoveredBlock281Block291Block301PC := 348] ifFalse: [recoveredBlock281Block291Block301PC := 318].
        ].
        recoveredBlock281Block291Block301Step = 318 ifTrue: [
            recoveredBlock281Block291Block301Stack2 := recoveredBlock281Block291Block301Arg1.
            recoveredBlock281Block291Block301PC := 319.
        ].
        recoveredBlock281Block291Block301Step = 319 ifTrue: [
            recoveredBlock281Block291Block301Stack2 := (recoveredBlock281Block291Block301Stack2) first.
            recoveredBlock281Block291Block301PC := 321.
        ].
        recoveredBlock281Block291Block301Step = 321 ifTrue: [
            recoveredBlock281Block291Block301Stack2 := (recoveredBlock281Block291Block301Stack2) isMdlBlockVarDecl.
            recoveredBlock281Block291Block301PC := 323.
        ].
        recoveredBlock281Block291Block301Step = 323 ifTrue: [
            (recoveredBlock281Block291Block301Stack2) ifTrue: [recoveredBlock281Block291Block301PC := 348] ifFalse: [recoveredBlock281Block291Block301PC := 326].
        ].
        recoveredBlock281Block291Block301Step = 326 ifTrue: [
            recoveredBlock281Block291Block301PC := 327.
        ].
        recoveredBlock281Block291Block301Step = 327 ifTrue: [
            recoveredBlock281Block291Block301Stack1 := self.
            recoveredBlock281Block291Block301PC := 328.
        ].
        recoveredBlock281Block291Block301Step = 328 ifTrue: [
            recoveredBlock281Block291Block301Stack2 := recoveredBlock281Arg1.
            recoveredBlock281Block291Block301PC := 331.
        ].
        recoveredBlock281Block291Block301Step = 331 ifTrue: [
            recoveredBlock281Block291Block301Stack3 := recoveredBlock281Block291Arg1.
            recoveredBlock281Block291Block301PC := 334.
        ].
        recoveredBlock281Block291Block301Step = 334 ifTrue: [
            recoveredBlock281Block291Block301Stack4 := recoveredBlock281Block291Block301Arg1.
            recoveredBlock281Block291Block301PC := 335.
        ].
        recoveredBlock281Block291Block301Step = 335 ifTrue: [
            recoveredBlock281Block291Block301Stack4 := (recoveredBlock281Block291Block301Stack4) first.
            recoveredBlock281Block291Block301PC := 337.
        ].
        recoveredBlock281Block291Block301Step = 337 ifTrue: [
            recoveredBlock281Block291Block301Stack5 := recoveredBlock281Block291Block301Arg1.
            recoveredBlock281Block291Block301PC := 338.
        ].
        recoveredBlock281Block291Block301Step = 338 ifTrue: [
            recoveredBlock281Block291Block301Stack5 := (recoveredBlock281Block291Block301Stack5) last.
            recoveredBlock281Block291Block301PC := 340.
        ].
        recoveredBlock281Block291Block301Step = 340 ifTrue: [
            recoveredBlock281Block291Block301Stack6 := recoveredLocal2.
            recoveredBlock281Block291Block301PC := 343.
        ].
        recoveredBlock281Block291Block301Step = 343 ifTrue: [
            recoveredBlock281Block291Block301Stack5 := (recoveredBlock281Block291Block301Stack5) andExpr: (recoveredBlock281Block291Block301Stack6).
            recoveredBlock281Block291Block301PC := 345.
        ].
        recoveredBlock281Block291Block301Step = 345 ifTrue: [
            recoveredBlock281Block291Block301Stack1 := (recoveredBlock281Block291Block301Stack1) method: (recoveredBlock281Block291Block301Stack2) parm: (recoveredBlock281Block291Block301Stack3) addInput: (recoveredBlock281Block291Block301Stack4) condition: (recoveredBlock281Block291Block301Stack5).
            recoveredBlock281Block291Block301PC := 348.
        ].
        recoveredBlock281Block291Block301Step = 348 ifTrue: [
            recoveredBlock281Block291Block301Result := recoveredBlock281Block291Block301Stack1.
            recoveredBlock281Block291Block301Done := true.
        ].
    ].
    recoveredBlock281Block291Block301Result
].
    recoveredBlock281Block291Value2 := (recoveredBlock281Block291Value0) do: (recoveredBlock281Block291Value1).
    recoveredBlock281Block291Value2
].
    recoveredBlock281Value2 := (recoveredBlock281Value0) keysAndValuesDo: (recoveredBlock281Value1).
    recoveredBlock281Value2
].
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            (recoveredStack1) keysAndValuesDo: (recoveredStack2).
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            recoveredStack0 := (recoveredStack0) sysConstForCppIf.
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 362.
        ].
        recoveredStep = 362 ifTrue: [
            recoveredStack1 := (recoveredStack1) sysConstForCppIf.
            recoveredPC := 364.
        ].
        recoveredStep = 364 ifTrue: [
            (recoveredStack0) addAll: (recoveredStack1).
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2060fb88; bytecode file offset 0xf0c4fc"
!SGIlConditionalDataStructureVisitor methodsFor: 'recovered'!
expand: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) expander.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) currentMethodName: (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) expander.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) dbKeyForMethod: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := Set.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) elementRead.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) keys.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) addAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := (recoveredStack2) elementWrite.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := (recoveredStack2) keys.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) addAll: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) declWithScopeCompare.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := [:recoveredBlock50Arg1 | 
    | recoveredBlock50Local1 recoveredBlock50Local2 recoveredBlock50Value0 recoveredBlock50Value1 recoveredBlock50Value2 recoveredBlock50Value3 recoveredBlock50Value4 recoveredBlock50Value5 recoveredBlock50Value6 recoveredBlock50Value7 recoveredBlock50Value8 recoveredBlock50Value9 recoveredBlock50Value10 recoveredBlock50Value11 recoveredBlock50Value12 recoveredBlock50Value13 |
    recoveredBlock50Value0 := (self) elementRead.
    recoveredBlock50Value1 := recoveredBlock50Arg1.
    recoveredBlock50Value2 := [
    | recoveredBlock50Block59Value0 recoveredBlock50Block59Value1 recoveredBlock50Block59Value2 |
    recoveredBlock50Block59Value0 := (self) generator.
    recoveredBlock50Block59Value1 := (recoveredBlock50Block59Value0) ileBuilder.
    recoveredBlock50Block59Value2 := (recoveredBlock50Block59Value1) literalFalse.
    recoveredBlock50Block59Value2
].
    recoveredBlock50Value3 := (recoveredBlock50Value0) at: (recoveredBlock50Value1) ifAbsent: (recoveredBlock50Value2).
    recoveredBlock50Local2 := recoveredBlock50Value3.
    recoveredBlock50Value4 := (self) elementWrite.
    recoveredBlock50Value5 := recoveredBlock50Arg1.
    recoveredBlock50Value6 := [
    | recoveredBlock50Block80Value0 recoveredBlock50Block80Value1 recoveredBlock50Block80Value2 |
    recoveredBlock50Block80Value0 := (self) generator.
    recoveredBlock50Block80Value1 := (recoveredBlock50Block80Value0) ileBuilder.
    recoveredBlock50Block80Value2 := (recoveredBlock50Block80Value1) literalFalse.
    recoveredBlock50Block80Value2
].
    recoveredBlock50Value7 := (recoveredBlock50Value4) at: (recoveredBlock50Value5) ifAbsent: (recoveredBlock50Value6).
    recoveredBlock50Local1 := recoveredBlock50Value7.
    recoveredBlock50Value8 := (self) expander.
    recoveredBlock50Value9 := recoveredLocal3.
    recoveredBlock50Value10 := recoveredBlock50Arg1.
    recoveredBlock50Value11 := recoveredBlock50Local2.
    recoveredBlock50Value12 := recoveredBlock50Local1.
    recoveredBlock50Value13 := (recoveredBlock50Value8) dbAddExecutable: (recoveredBlock50Value9) usesElement: (recoveredBlock50Value10) read: (recoveredBlock50Value11) write: (recoveredBlock50Value12).
    recoveredBlock50Value13
].
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := (recoveredStack0) tempVarRead.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := (recoveredStack0) keys.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := (recoveredStack0) tempVarWrite.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := [:recoveredBlock121Arg1 | 
    | recoveredBlock121Value0 recoveredBlock121Value1 recoveredBlock121Value2 |
    recoveredBlock121Value0 := recoveredLocal1.
    recoveredBlock121Value1 := recoveredBlock121Arg1.
    recoveredBlock121Value2 := (recoveredBlock121Value0) add: (recoveredBlock121Value1).
    recoveredBlock121Value2
].
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack0) keysDo: (recoveredStack1).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := [:block2811d88cArg1 :block2811d88cArg2 | 
    | block2811d88cValue0 block2811d88cValue1 block2811d88cValue2 block2811d88cValue3 block2811d88cValue4 |
    block2811d88cValue0 := block2811d88cArg1.
    block2811d88cValue1 := (block2811d88cValue0) errLabel.
    block2811d88cValue2 := block2811d88cArg2.
    block2811d88cValue3 := (block2811d88cValue2) errLabel.
    block2811d88cValue4 := (block2811d88cValue1) <= (block2811d88cValue3).
    block2811d88cValue4
].
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := [:recoveredBlock156Arg1 | 
    | recoveredBlock156Local1 recoveredBlock156Local2 recoveredBlock156Value0 recoveredBlock156Value1 recoveredBlock156Value2 recoveredBlock156Value3 recoveredBlock156Value4 recoveredBlock156Value5 recoveredBlock156Value6 recoveredBlock156Value7 recoveredBlock156Value8 recoveredBlock156Value9 recoveredBlock156Value10 recoveredBlock156Value11 recoveredBlock156Value12 recoveredBlock156Value13 |
    recoveredBlock156Value0 := (self) tempVarRead.
    recoveredBlock156Value1 := recoveredBlock156Arg1.
    recoveredBlock156Value2 := [
    | recoveredBlock156Block165Value0 recoveredBlock156Block165Value1 recoveredBlock156Block165Value2 |
    recoveredBlock156Block165Value0 := (self) generator.
    recoveredBlock156Block165Value1 := (recoveredBlock156Block165Value0) ileBuilder.
    recoveredBlock156Block165Value2 := (recoveredBlock156Block165Value1) literalFalse.
    recoveredBlock156Block165Value2
].
    recoveredBlock156Value3 := (recoveredBlock156Value0) at: (recoveredBlock156Value1) ifAbsent: (recoveredBlock156Value2).
    recoveredBlock156Local2 := recoveredBlock156Value3.
    recoveredBlock156Value4 := (self) tempVarWrite.
    recoveredBlock156Value5 := recoveredBlock156Arg1.
    recoveredBlock156Value6 := [
    | recoveredBlock156Block186Value0 recoveredBlock156Block186Value1 recoveredBlock156Block186Value2 |
    recoveredBlock156Block186Value0 := (self) generator.
    recoveredBlock156Block186Value1 := (recoveredBlock156Block186Value0) ileBuilder.
    recoveredBlock156Block186Value2 := (recoveredBlock156Block186Value1) literalFalse.
    recoveredBlock156Block186Value2
].
    recoveredBlock156Value7 := (recoveredBlock156Value4) at: (recoveredBlock156Value5) ifAbsent: (recoveredBlock156Value6).
    recoveredBlock156Local1 := recoveredBlock156Value7.
    recoveredBlock156Value8 := (self) expander.
    recoveredBlock156Value9 := recoveredLocal3.
    recoveredBlock156Value10 := recoveredBlock156Arg1.
    recoveredBlock156Value11 := recoveredBlock156Local2.
    recoveredBlock156Value12 := recoveredBlock156Local1.
    recoveredBlock156Value13 := (recoveredBlock156Value8) dbAddExecutable: (recoveredBlock156Value9) usesTempVar: (recoveredBlock156Value10) read: (recoveredBlock156Value11) write: (recoveredBlock156Value12).
    recoveredBlock156Value13
].
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack2 := #().
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack3 := (recoveredStack3) elementInstanceRead.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack4 := (recoveredStack4) elementInstanceWrite.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            (recoveredStack0) expandUsesInstance: (recoveredStack1) prefix: (recoveredStack2) read: (recoveredStack3) write: (recoveredStack4).
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodCall.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack0 := (recoveredStack0) keys.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack1 := (recoveredStack1) declWithScopeCompare.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack1 := [:recoveredBlock241Arg1 | 
    | recoveredBlock241Local1 recoveredBlock241Value0 recoveredBlock241Value1 recoveredBlock241Value2 recoveredBlock241Value3 recoveredBlock241Value4 recoveredBlock241Value5 recoveredBlock241Value6 recoveredBlock241Value7 |
    recoveredBlock241Value0 := (self) methodCall.
    recoveredBlock241Value1 := recoveredBlock241Arg1.
    recoveredBlock241Value2 := (recoveredBlock241Value0) at: (recoveredBlock241Value1).
    recoveredBlock241Local1 := recoveredBlock241Value2.
    recoveredBlock241Value3 := (self) expander.
    recoveredBlock241Value4 := recoveredLocal3.
    recoveredBlock241Value5 := recoveredBlock241Arg1.
    recoveredBlock241Value6 := recoveredBlock241Local1.
    recoveredBlock241Value7 := (recoveredBlock241Value3) dbExecutable: (recoveredBlock241Value4) callsMethod: (recoveredBlock241Value5) cond: (recoveredBlock241Value6).
    recoveredBlock241Value7
].
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack0 := (recoveredStack0) tableInput.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack0 := (recoveredStack0) keys.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack1 := (recoveredStack1) declWithScopeCompare.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack1 := [:recoveredBlock277Arg1 | 
    | recoveredBlock277Value0 recoveredBlock277Value1 recoveredBlock277Value2 recoveredBlock277Value3 recoveredBlock277Value4 |
    recoveredBlock277Value0 := (self) tableInput.
    recoveredBlock277Value1 := recoveredBlock277Arg1.
    recoveredBlock277Value2 := (recoveredBlock277Value0) at: (recoveredBlock277Value1).
    recoveredBlock277Value3 := [:recoveredBlock277Block291Arg1 | 
    | recoveredBlock277Block291Stack0 recoveredBlock277Block291Stack1 recoveredBlock277Block291Stack2 recoveredBlock277Block291Stack3 recoveredBlock277Block291Stack4 recoveredBlock277Block291PC recoveredBlock277Block291Step recoveredBlock277Block291Done recoveredBlock277Block291Result |
    recoveredBlock277Block291Stack0 := self.
    recoveredBlock277Block291PC := 298.
    recoveredBlock277Block291Done := false.
    [recoveredBlock277Block291Done not] whileTrue: [
        recoveredBlock277Block291Step := recoveredBlock277Block291PC.
        recoveredBlock277Block291Step = 298 ifTrue: [
            recoveredBlock277Block291Stack1 := nil.
            recoveredBlock277Block291PC := 299.
        ].
        recoveredBlock277Block291Step = 299 ifTrue: [
            recoveredBlock277Block291Stack2 := self.
            recoveredBlock277Block291PC := 300.
        ].
        recoveredBlock277Block291Step = 300 ifTrue: [
            recoveredBlock277Block291Stack3 := recoveredBlock277Block291Arg1.
            recoveredBlock277Block291PC := 301.
        ].
        recoveredBlock277Block291Step = 301 ifTrue: [
            recoveredBlock277Block291Stack3 := (recoveredBlock277Block291Stack3) first.
            recoveredBlock277Block291PC := 303.
        ].
        recoveredBlock277Block291Step = 303 ifTrue: [
            recoveredBlock277Block291Stack2 := (recoveredBlock277Block291Stack2) isStackVar: (recoveredBlock277Block291Stack3).
            recoveredBlock277Block291PC := 305.
        ].
        recoveredBlock277Block291Step = 305 ifTrue: [
            (recoveredBlock277Block291Stack2) ifTrue: [recoveredBlock277Block291PC := 308] ifFalse: [recoveredBlock277Block291PC := 316].
        ].
        recoveredBlock277Block291Step = 308 ifTrue: [
            recoveredBlock277Block291PC := 309.
        ].
        recoveredBlock277Block291Step = 309 ifTrue: [
            recoveredBlock277Block291Stack1 := self.
            recoveredBlock277Block291PC := 310.
        ].
        recoveredBlock277Block291Step = 310 ifTrue: [
            recoveredBlock277Block291Stack2 := recoveredBlock277Arg1.
            recoveredBlock277Block291PC := 313.
        ].
        recoveredBlock277Block291Step = 313 ifTrue: [
            recoveredBlock277Block291Stack3 := recoveredBlock277Block291Arg1.
            recoveredBlock277Block291PC := 314.
        ].
        recoveredBlock277Block291Step = 314 ifTrue: [
            recoveredBlock277Block291Stack1 := (recoveredBlock277Block291Stack1) dbTable: (recoveredBlock277Block291Stack2) hasInputElement: (recoveredBlock277Block291Stack3).
            recoveredBlock277Block291PC := 316.
        ].
        recoveredBlock277Block291Step = 316 ifTrue: [
            recoveredBlock277Block291Result := recoveredBlock277Block291Stack1.
            recoveredBlock277Block291Done := true.
        ].
    ].
    recoveredBlock277Block291Result
].
    recoveredBlock277Value4 := (recoveredBlock277Value2) do: (recoveredBlock277Value3).
    recoveredBlock277Value4
].
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodInput.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack0 := (recoveredStack0) keys.
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack1 := (recoveredStack1) declWithScopeCompare.
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            recoveredStack1 := [:recoveredBlock332Arg1 | 
    | recoveredBlock332Stack0 recoveredBlock332Stack1 recoveredBlock332Stack2 recoveredBlock332PC recoveredBlock332Step recoveredBlock332Done recoveredBlock332Result |
    recoveredBlock332Stack0 := self.
    recoveredBlock332PC := 338.
    recoveredBlock332Done := false.
    [recoveredBlock332Done not] whileTrue: [
        recoveredBlock332Step := recoveredBlock332PC.
        recoveredBlock332Step = 338 ifTrue: [
            recoveredBlock332Stack0 := (recoveredBlock332Stack0) methodInput.
            recoveredBlock332PC := 340.
        ].
        recoveredBlock332Step = 340 ifTrue: [
            recoveredBlock332Stack1 := recoveredBlock332Arg1.
            recoveredBlock332PC := 343.
        ].
        recoveredBlock332Step = 343 ifTrue: [
            recoveredBlock332Stack0 := (recoveredBlock332Stack0) at: (recoveredBlock332Stack1).
            recoveredBlock332PC := 345.
        ].
        recoveredBlock332Step = 345 ifTrue: [
            recoveredBlock332Stack0 := (recoveredBlock332Stack0) keys.
            recoveredBlock332PC := 347.
        ].
        recoveredBlock332Step = 347 ifTrue: [
            recoveredBlock332Stack1 := [:block2811d8b0Arg1 :block2811d8b0Arg2 | 
    | block2811d8b0Value0 block2811d8b0Value1 block2811d8b0Value2 block2811d8b0Value3 block2811d8b0Value4 |
    block2811d8b0Value0 := block2811d8b0Arg1.
    block2811d8b0Value1 := (block2811d8b0Value0) errLabel.
    block2811d8b0Value2 := block2811d8b0Arg2.
    block2811d8b0Value3 := (block2811d8b0Value2) errLabel.
    block2811d8b0Value4 := (block2811d8b0Value1) <= (block2811d8b0Value3).
    block2811d8b0Value4
].
            recoveredBlock332PC := 349.
        ].
        recoveredBlock332Step = 349 ifTrue: [
            recoveredBlock332PC := 360.
        ].
        recoveredBlock332Step = 360 ifTrue: [
            recoveredBlock332Stack0 := (recoveredBlock332Stack0) asSortedCollection: (recoveredBlock332Stack1).
            recoveredBlock332PC := 362.
        ].
        recoveredBlock332Step = 362 ifTrue: [
            recoveredBlock332Stack1 := [:recoveredBlock332Block362Arg1 | 
    | recoveredBlock332Block362Value0 recoveredBlock332Block362Value1 recoveredBlock332Block362Value2 recoveredBlock332Block362Value3 recoveredBlock332Block362Value4 recoveredBlock332Block362Value5 recoveredBlock332Block362Value6 |
    recoveredBlock332Block362Value0 := (self) methodInput.
    recoveredBlock332Block362Value1 := recoveredBlock332Arg1.
    recoveredBlock332Block362Value2 := (recoveredBlock332Block362Value0) at: (recoveredBlock332Block362Value1).
    recoveredBlock332Block362Value3 := recoveredBlock332Block362Arg1.
    recoveredBlock332Block362Value4 := (recoveredBlock332Block362Value2) at: (recoveredBlock332Block362Value3).
    recoveredBlock332Block362Value5 := [:recoveredBlock332Block362Block380Arg1 | 
    | recoveredBlock332Block362Block380Stack0 recoveredBlock332Block362Block380Stack1 recoveredBlock332Block362Block380Stack2 recoveredBlock332Block362Block380Stack3 recoveredBlock332Block362Block380Stack4 recoveredBlock332Block362Block380Stack5 recoveredBlock332Block362Block380Stack6 recoveredBlock332Block362Block380Stack7 recoveredBlock332Block362Block380Stack8 recoveredBlock332Block362Block380PC recoveredBlock332Block362Block380Step recoveredBlock332Block362Block380Done recoveredBlock332Block362Block380Result |
    recoveredBlock332Block362Block380Stack0 := self.
    recoveredBlock332Block362Block380PC := 386.
    recoveredBlock332Block362Block380Done := false.
    [recoveredBlock332Block362Block380Done not] whileTrue: [
        recoveredBlock332Block362Block380Step := recoveredBlock332Block362Block380PC.
        recoveredBlock332Block362Block380Step = 386 ifTrue: [
            recoveredBlock332Block362Block380Stack1 := nil.
            recoveredBlock332Block362Block380PC := 387.
        ].
        recoveredBlock332Block362Block380Step = 387 ifTrue: [
            recoveredBlock332Block362Block380Stack2 := recoveredBlock332Block362Block380Arg1.
            recoveredBlock332Block362Block380PC := 388.
        ].
        recoveredBlock332Block362Block380Step = 388 ifTrue: [
            recoveredBlock332Block362Block380Stack2 := (recoveredBlock332Block362Block380Stack2) first.
            recoveredBlock332Block362Block380PC := 390.
        ].
        recoveredBlock332Block362Block380Step = 390 ifTrue: [
            recoveredBlock332Block362Block380Stack2 := (recoveredBlock332Block362Block380Stack2) isMdlParmDecl.
            recoveredBlock332Block362Block380PC := 392.
        ].
        recoveredBlock332Block362Block380Step = 392 ifTrue: [
            (recoveredBlock332Block362Block380Stack2) ifTrue: [recoveredBlock332Block362Block380PC := 404] ifFalse: [recoveredBlock332Block362Block380PC := 396].
        ].
        recoveredBlock332Block362Block380Step = 396 ifTrue: [
            recoveredBlock332Block362Block380Stack2 := recoveredBlock332Block362Block380Arg1.
            recoveredBlock332Block362Block380PC := 397.
        ].
        recoveredBlock332Block362Block380Step = 397 ifTrue: [
            recoveredBlock332Block362Block380Stack2 := (recoveredBlock332Block362Block380Stack2) first.
            recoveredBlock332Block362Block380PC := 399.
        ].
        recoveredBlock332Block362Block380Step = 399 ifTrue: [
            recoveredBlock332Block362Block380Stack2 := (recoveredBlock332Block362Block380Stack2) isMdlBlockVarDecl.
            recoveredBlock332Block362Block380PC := 401.
        ].
        recoveredBlock332Block362Block380Step = 401 ifTrue: [
            (recoveredBlock332Block362Block380Stack2) ifTrue: [recoveredBlock332Block362Block380PC := 404] ifFalse: [recoveredBlock332Block362Block380PC := 427].
        ].
        recoveredBlock332Block362Block380Step = 404 ifTrue: [
            recoveredBlock332Block362Block380PC := 405.
        ].
        recoveredBlock332Block362Block380Step = 405 ifTrue: [
            recoveredBlock332Block362Block380Stack1 := self.
            recoveredBlock332Block362Block380PC := 406.
        ].
        recoveredBlock332Block362Block380Step = 406 ifTrue: [
            recoveredBlock332Block362Block380Stack1 := (recoveredBlock332Block362Block380Stack1) expander.
            recoveredBlock332Block362Block380PC := 407.
        ].
        recoveredBlock332Block362Block380Step = 407 ifTrue: [
            recoveredBlock332Block362Block380Stack2 := recoveredBlock332Arg1.
            recoveredBlock332Block362Block380PC := 410.
        ].
        recoveredBlock332Block362Block380Step = 410 ifTrue: [
            recoveredBlock332Block362Block380Stack3 := recoveredBlock332Block362Arg1.
            recoveredBlock332Block362Block380PC := 413.
        ].
        recoveredBlock332Block362Block380Step = 413 ifTrue: [
            recoveredBlock332Block362Block380Stack4 := recoveredBlock332Block362Block380Arg1.
            recoveredBlock332Block362Block380PC := 414.
        ].
        recoveredBlock332Block362Block380Step = 414 ifTrue: [
            recoveredBlock332Block362Block380Stack4 := (recoveredBlock332Block362Block380Stack4) first.
            recoveredBlock332Block362Block380PC := 416.
        ].
        recoveredBlock332Block362Block380Step = 416 ifTrue: [
            recoveredBlock332Block362Block380Stack5 := recoveredBlock332Block362Block380Arg1.
            recoveredBlock332Block362Block380PC := 417.
        ].
        recoveredBlock332Block362Block380Step = 417 ifTrue: [
            recoveredBlock332Block362Block380Stack5 := (recoveredBlock332Block362Block380Stack5) last.
            recoveredBlock332Block362Block380PC := 419.
        ].
        recoveredBlock332Block362Block380Step = 419 ifTrue: [
            recoveredBlock332Block362Block380Stack6 := recoveredBlock332Block362Block380Arg1.
            recoveredBlock332Block362Block380PC := 420.
        ].
        recoveredBlock332Block362Block380Step = 420 ifTrue: [
            recoveredBlock332Block362Block380Stack7 := 2.
            recoveredBlock332Block362Block380PC := 422.
        ].
        recoveredBlock332Block362Block380Step = 422 ifTrue: [
            recoveredBlock332Block362Block380Stack6 := (recoveredBlock332Block362Block380Stack6) at: (recoveredBlock332Block362Block380Stack7).
            recoveredBlock332Block362Block380PC := 424.
        ].
        recoveredBlock332Block362Block380Step = 424 ifTrue: [
            recoveredBlock332Block362Block380Stack1 := (recoveredBlock332Block362Block380Stack1) dbMethod: (recoveredBlock332Block362Block380Stack2) parm: (recoveredBlock332Block362Block380Stack3) hasInputElement: (recoveredBlock332Block362Block380Stack4) condition: (recoveredBlock332Block362Block380Stack5) index: (recoveredBlock332Block362Block380Stack6).
            recoveredBlock332Block362Block380PC := 427.
        ].
        recoveredBlock332Block362Block380Step = 427 ifTrue: [
            recoveredBlock332Block362Block380Result := recoveredBlock332Block362Block380Stack1.
            recoveredBlock332Block362Block380Done := true.
        ].
    ].
    recoveredBlock332Block362Block380Result
].
    recoveredBlock332Block362Value6 := (recoveredBlock332Block362Value4) do: (recoveredBlock332Block362Value5).
    recoveredBlock332Block362Value6
].
            recoveredBlock332PC := 431.
        ].
        recoveredBlock332Step = 431 ifTrue: [
            recoveredBlock332Stack0 := (recoveredBlock332Stack0) do: (recoveredBlock332Stack1).
            recoveredBlock332PC := 433.
        ].
        recoveredBlock332Step = 433 ifTrue: [
            recoveredBlock332Result := recoveredBlock332Stack0.
            recoveredBlock332Done := true.
        ].
    ].
    recoveredBlock332Result
].
            recoveredPC := 434.
        ].
        recoveredStep = 434 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 436.
        ].
        recoveredStep = 436 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 437.
        ].
        recoveredStep = 437 ifTrue: [
            recoveredStack0 := (recoveredStack0) expander.
            recoveredPC := 438.
        ].
        recoveredStep = 438 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 441.
        ].
        recoveredStep = 441 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 442.
        ].
        recoveredStep = 442 ifTrue: [
            recoveredStack2 := (recoveredStack2) executableContainsCode.
            recoveredPC := 444.
        ].
        recoveredStep = 444 ifTrue: [
            (recoveredStack0) dbExecutable: (recoveredStack1) containsCode: (recoveredStack2).
            recoveredPC := 446.
        ].
        recoveredStep = 446 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 447.
        ].
        recoveredStep = 447 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 450.
        ].
        recoveredStep = 450 ifTrue: [
            recoveredStack2 := #().
            recoveredPC := 452.
        ].
        recoveredStep = 452 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 453.
        ].
        recoveredStep = 453 ifTrue: [
            recoveredStack3 := (recoveredStack3) methodInstanceCall.
            recoveredPC := 455.
        ].
        recoveredStep = 455 ifTrue: [
            (recoveredStack0) expandCallsInstanceMethod: (recoveredStack1) prefix: (recoveredStack2) condition: (recoveredStack3).
            recoveredPC := 458.
        ].
        recoveredStep = 458 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 459.
        ].
        recoveredStep = 459 ifTrue: [
            recoveredStack0 := (recoveredStack0) expander.
            recoveredPC := 460.
        ].
        recoveredStep = 460 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 461.
        ].
        recoveredStep = 461 ifTrue: [
            recoveredStack1 := (recoveredStack1) sysConstForCppIf.
            recoveredPC := 463.
        ].
        recoveredStep = 463 ifTrue: [
            recoveredStack2 := [:block2811d8d4Arg1 :block2811d8d4Arg2 | 
    | block2811d8d4Value0 block2811d8d4Value1 block2811d8d4Value2 block2811d8d4Value3 block2811d8d4Value4 |
    block2811d8d4Value0 := block2811d8d4Arg1.
    block2811d8d4Value1 := (block2811d8d4Value0) errLabel.
    block2811d8d4Value2 := block2811d8d4Arg2.
    block2811d8d4Value3 := (block2811d8d4Value2) errLabel.
    block2811d8d4Value4 := (block2811d8d4Value1) <= (block2811d8d4Value3).
    block2811d8d4Value4
].
            recoveredPC := 465.
        ].
        recoveredStep = 465 ifTrue: [
            recoveredPC := 476.
        ].
        recoveredStep = 476 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection: (recoveredStack2).
            recoveredPC := 478.
        ].
        recoveredStep = 478 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 481.
        ].
        recoveredStep = 481 ifTrue: [
            (recoveredStack0) dbAddSystemConstants: (recoveredStack1) forConditionalCompilationIn: (recoveredStack2).
            recoveredPC := 483.
        ].
        recoveredStep = 483 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 484.
        ].
        recoveredStep = 484 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

