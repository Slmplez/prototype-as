"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200038c8; bytecode file offset 0x90206c"
!SGMdAbstractDeclWalk methodsFor: 'recovered'!
walkBaseClassTypedElement: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20005518; bytecode file offset 0x90206c"
!SGMdAbstractDeclWalk methodsFor: 'recovered'!
noDecl: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20005620; bytecode file offset 0x90206c"
!SGMdAbstractDeclWalk methodsFor: 'recovered'!
visitMdlBaseClassTypedElement: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x2002c404; bytecode file offset 0x934580"
!SGMdAbstractDeclWalk methodsFor: 'recovered'!
pathInfoTopNode
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) pathInfoNodes.
    recoveredValue1 := (recoveredValue0) last.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20031ba4; bytecode file offset 0x934580"
!SGMdAbstractDeclWalk methodsFor: 'recovered'!
generator
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) generatorFactory.
    recoveredValue1 := (recoveredValue0) codeGeneratorStrategy.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003e9b8; bytecode file offset 0x93bf94"
!SGMdAbstractDeclWalk methodsFor: 'recovered'!
expander
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGMdManager.
    recoveredValue1 := (recoveredValue0) currentExpander.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004fe00; bytecode file offset 0x94d048"
!SGMdAbstractDeclWalk methodsFor: 'recovered'!
pathNodeInfoClass
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x200564e8; bytecode file offset 0x9531e4"
!SGMdAbstractDeclWalk methodsFor: 'recovered'!
hierarchicalMemberName: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) ileVarDecl.
    recoveredValue2 := (recoveredValue1) genName.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20063c34; bytecode file offset 0x961970"
!SGMdAbstractDeclWalk methodsFor: 'recovered'!
removePathNode
    | recoveredValue0 |
    recoveredValue0 := (self) pathInfoNodes.
    (recoveredValue0) removeLast.
    ^self
! !

"ASDBase.ic method 0x2006aee4; bytecode file offset 0x967a18"
!SGMdAbstractDeclWalk methodsFor: 'recovered'!
pathInfoNodes
    | recoveredValue0 |
    recoveredValue0 := pathInfoNodes.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006bba0; bytecode file offset 0x96873c"
!SGMdAbstractDeclWalk methodsFor: 'recovered'!
declIndex
    | recoveredValue0 |
    recoveredValue0 := declIndex.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20074e94; bytecode file offset 0x9757c8"
!SGMdAbstractDeclWalk methodsFor: 'recovered'!
isEnabled
    ^true
! !

"ASDBase.ic method 0x200851ac; bytecode file offset 0x981ca4"
!SGMdAbstractDeclWalk methodsFor: 'recovered'!
mdlProjectInterface: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) walkClassInterface: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200936bc; bytecode file offset 0x98ffa4"
!SGMdAbstractDeclWalk methodsFor: 'recovered'!
leafModelName: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) mdlLabel.
    recoveredValue2 := ('.') , (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200957f0; bytecode file offset 0x9920d8"
!SGMdAbstractDeclWalk methodsFor: 'recovered'!
genSixHierarchicalMemberName: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) pathInfoTopNode.
    recoveredValue2 := (recoveredValue1) cStructMemberPath.
    recoveredValue3 := (recoveredValue0) genSixHierarchicalMemberName: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200ac0e0; bytecode file offset 0x9a89a4"
!SGMdAbstractDeclWalk methodsFor: 'recovered'!
hierarchicalModelName: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) pathInfoTopNode.
    recoveredValue1 := (recoveredValue0) modelLabel.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) leafModelName: (recoveredValue2).
    recoveredValue4 := (recoveredValue1) , (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200b8fe0; bytecode file offset 0x9b589c"
!SGMdAbstractDeclWalk methodsFor: 'recovered'!
addWalkedClass: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := walkedClasses.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) mdlClassType.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue0) at: (recoveredValue2) put: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200e7758; bytecode file offset 0x9e4018"
!SGMdAbstractDeclWalk methodsFor: 'recovered'!
exportedAlreadyWalked: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := walkedClasses.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) mdlClassType.
    recoveredValue3 := [].
    recoveredValue4 := (recoveredValue0) at: (recoveredValue2) ifAbsent: (recoveredValue3).
    recoveredValue5 := (recoveredValue4) notNil.
    ^recoveredValue5
! !

"ASDBase.ic method 0x2012225c; bytecode file offset 0xa1eb1c"
!SGMdAbstractDeclWalk methodsFor: 'recovered'!
walkClassInterface: recoveredArg1 ofDecl: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg1.
    (self) addPathNodeDecl: (recoveredValue0) mdlClassInterface: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (self) walkClassInterface: (recoveredValue2).
    (self) removePathNode.
    ^self
! !

"ASDBase.ic method 0x20151ab0; bytecode file offset 0xa4e378"
!SGMdAbstractDeclWalk methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    super initialize.
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    pathInfoNodes := recoveredValue1.
    recoveredValue2 := LookupTable.
    recoveredValue3 := (recoveredValue2) new.
    walkedClasses := recoveredValue3.
    ^self
! !

"ASDBase.ic method 0x20154ab0; bytecode file offset 0xa51370"
!SGMdAbstractDeclWalk methodsFor: 'recovered'!
walkLocalvarsOfClassInterface: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) sortedInstVars.
    recoveredValue2 := [:recoveredBlock6Arg1 :recoveredBlock6Arg2 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := recoveredBlock6Arg2.
    recoveredBlock6Value2 := (self) decl: (recoveredBlock6Value0) index: (recoveredBlock6Value1).
    recoveredBlock6Value2
].
    (recoveredValue1) doWithIndex: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2020677c; bytecode file offset 0xb0305c"
!SGMdAbstractDeclWalk methodsFor: 'recovered'!
addRootPathNode
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := (self) importList.
    recoveredValue1 := (recoveredValue0) projectInterface.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) pathInfoNodes.
    recoveredValue3 := (self) pathNodeInfoClass.
    recoveredValue4 := (recoveredValue3) create.
    (recoveredValue2) add: (recoveredValue4).
    recoveredValue5 := (self) pathInfoTopNode.
    recoveredValue6 := recoveredValue5.
    recoveredValue7 := recoveredLocal1.
    (recoveredValue6) mdlClassInterface: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := (recoveredValue8) mdlClassType.
    recoveredValue10 := (recoveredValue9) mdlLabel.
    (recoveredValue5) modelLabel: (recoveredValue10).
    ^self
! !

"ASDBase.ic method 0x20215bb0; bytecode file offset 0xb1248c"
!SGMdAbstractDeclWalk methodsFor: 'recovered'!
addPathNodeDecl: recoveredArg1 mdlClassInterface: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) hierarchicalModelName: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) pathInfoNodes.
    recoveredValue3 := (self) pathNodeInfoClass.
    recoveredValue4 := (recoveredValue3) create.
    (recoveredValue2) add: (recoveredValue4).
    recoveredValue5 := (self) pathInfoTopNode.
    recoveredValue6 := recoveredValue5.
    recoveredValue7 := recoveredArg2.
    (recoveredValue6) mdlClassInterface: (recoveredValue7).
    recoveredValue8 := recoveredValue5.
    recoveredValue9 := recoveredLocal1.
    (recoveredValue8) modelLabel: (recoveredValue9).
    recoveredValue10 := recoveredArg1.
    recoveredValue11 := (recoveredValue10) mdlClass.
    (recoveredValue5) mdlComplexClassType: (recoveredValue11).
    ^self
! !

"ASDBase.ic method 0x20288c28; bytecode file offset 0xb854fc"
!SGMdAbstractDeclWalk methodsFor: 'recovered'!
decl: recoveredArg1 index: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) negativeList.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
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
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            declIndex := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClass.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlBaseClassType.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) walkBaseClassTypedElement: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) importList.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) lookupClassInterface: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) walkClassInterface: (recoveredStack1) ofDecl: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20411d88; bytecode file offset 0xd0e67c"
!SGMdAbstractDeclWalk methodsFor: 'recovered'!
walkClassInterface: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlMethodInterface.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 97] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlPrototype.
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
            recoveredStack1 := (recoveredStack1) generator.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) isControllerVariant.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 97] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) generator.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlComponentNeedsIntegerCode.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) needsComponentIntegerCode: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) generator.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlComponentNeedsIntegerType.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) needsComponentIntegerType: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) exportedAlreadyWalked: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 65] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) addWalkedClass: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) sortedClassVars.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := [:recoveredBlock51Arg1 :recoveredBlock51Arg2 | 
    | recoveredBlock51Value0 recoveredBlock51Value1 recoveredBlock51Value2 |
    recoveredBlock51Value0 := recoveredBlock51Arg1.
    recoveredBlock51Value1 := recoveredBlock51Arg2.
    recoveredBlock51Value2 := (self) decl: (recoveredBlock51Value0) index: (recoveredBlock51Value1).
    recoveredBlock51Value2
].
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack1) doWithIndex: (recoveredStack2).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlPrototype.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) generatorFactory.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := (recoveredStack1) codeGeneratorStrategy.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) isControllerVariant.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 97] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) sortedInstVars.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := [:recoveredBlock83Arg1 :recoveredBlock83Arg2 | 
    | recoveredBlock83Value0 recoveredBlock83Value1 recoveredBlock83Value2 |
    recoveredBlock83Value0 := recoveredBlock83Arg1.
    recoveredBlock83Value1 := recoveredBlock83Arg2.
    recoveredBlock83Value2 := (self) decl: (recoveredBlock83Value0) index: (recoveredBlock83Value1).
    recoveredBlock83Value2
].
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack1) doWithIndex: (recoveredStack2).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

