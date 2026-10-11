"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20007dfc; bytecode file offset 0x908be4"
!ASDPortClassContainer methodsFor: 'recovered'!
getBasicElement
    | recoveredValue0 |
    recoveredValue0 := (self) variable.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006705c; bytecode file offset 0x9646f8"
!ASDPortClassContainer methodsFor: 'recovered'!
variable
    | recoveredValue0 |
    recoveredValue0 := variable.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006873c; bytecode file offset 0x965b90"
!ASDPortClassContainer methodsFor: 'recovered'!
publicMethods
    | recoveredValue0 |
    recoveredValue0 := publicMethods.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200699e0; bytecode file offset 0x966bdc"
!ASDPortClassContainer methodsFor: 'recovered'!
privateMethods
    | recoveredValue0 |
    recoveredValue0 := privateMethods.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006a674; bytecode file offset 0x967a18"
!ASDPortClassContainer methodsFor: 'recovered'!
directAccessMethods
    | recoveredValue0 |
    recoveredValue0 := directAccessMethods.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006b6f0; bytecode file offset 0x96873c"
!ASDPortClassContainer methodsFor: 'recovered'!
containedStructs
    | recoveredValue0 |
    recoveredValue0 := containedStructs.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006c95c; bytecode file offset 0x9692b0"
!ASDPortClassContainer methodsFor: 'recovered'!
childNodes
    | recoveredValue0 |
    recoveredValue0 := childNodes.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d060; bytecode file offset 0x969c04"
!ASDPortClassContainer methodsFor: 'recovered'!
parentString
    | recoveredValue0 |
    recoveredValue0 := parentString.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d68c; bytecode file offset 0x96a390"
!ASDPortClassContainer methodsFor: 'recovered'!
parentAlias
    | recoveredValue0 |
    recoveredValue0 := parentAlias.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20086098; bytecode file offset 0x982a70"
!ASDPortClassContainer methodsFor: 'recovered'!
isCyclic: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) parentComponentsInTree.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) dbObject.
    recoveredValue3 := (recoveredValue0) includes: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200957c8; bytecode file offset 0x9920d8"
!ASDPortClassContainer methodsFor: 'recovered'!
iconForNodeResourceManager: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) iconName.
    recoveredValue2 := (recoveredValue1) asString.
    recoveredValue3 := (recoveredValue0) iconAt: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200b4664; bytecode file offset 0x9b0f88"
!ASDPortClassContainer methodsFor: 'recovered'!
getMethods
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) publicMethods.
    recoveredValue1 := (self) privateMethods.
    recoveredValue2 := (recoveredValue0) , (recoveredValue1).
    recoveredValue3 := (self) directAccessMethods.
    recoveredValue4 := (recoveredValue2) , (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200beff0; bytecode file offset 0x9bc0b4"
!ASDPortClassContainer methodsFor: 'recovered'!
variable: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    variable := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c016c; bytecode file offset 0x9bd228"
!ASDPortClassContainer methodsFor: 'recovered'!
publicMethods: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    publicMethods := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c15a0; bytecode file offset 0x9bdf14"
!ASDPortClassContainer methodsFor: 'recovered'!
privateMethods: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    privateMethods := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c1d04; bytecode file offset 0x9beac8"
!ASDPortClassContainer methodsFor: 'recovered'!
directAccessMethods: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    directAccessMethods := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c25c0; bytecode file offset 0x9bf474"
!ASDPortClassContainer methodsFor: 'recovered'!
containedStructs: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    containedStructs := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c340c; bytecode file offset 0x9bfde0"
!ASDPortClassContainer methodsFor: 'recovered'!
childNodes: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    childNodes := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c3728; bytecode file offset 0x9c058c"
!ASDPortClassContainer methodsFor: 'recovered'!
parentString: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    parentString := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c42e4; bytecode file offset 0x9c0bf0"
!ASDPortClassContainer methodsFor: 'recovered'!
parentAlias: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    parentAlias := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200df2ec; bytecode file offset 0x9dbc24"
!ASDPortClassContainer methodsFor: 'recovered'!
getAllMethods
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    (self) addAllMethodsTo: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x2013f954; bytecode file offset 0xa3c21c"
!ASDPortClassContainer methodsFor: 'recovered'!
getChildren
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) childNodes.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) containedStructs.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) directAccessMethods.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) childNodes: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) childNodes.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20177c00; bytecode file offset 0xa7490c"
!ASDPortClassContainer methodsFor: 'recovered'!
setEnablement: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) getChildren.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredArg1.
    recoveredBlock5Value2 := (recoveredBlock5Value0) setEnablement: (recoveredBlock5Value1).
    recoveredBlock5Value2
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20177da4; bytecode file offset 0xa7490c"
!ASDPortClassContainer methodsFor: 'recovered'!
checkEnablement: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) getChildren.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredArg1.
    recoveredBlock5Value2 := (recoveredBlock5Value0) checkEnablement: (recoveredBlock5Value1).
    recoveredBlock5Value2
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x201a7348; bytecode file offset 0xaa3c0c"
!ASDPortClassContainer methodsFor: 'recovered'!
checkAccessRecursive: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) parentNode.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) variable.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) parentNode.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkAccessRecursive: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201f6190; bytecode file offset 0xaf2a58"
!ASDPortClassContainer methodsFor: 'recovered'!
addAllMethodsTo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getMethods.
    (recoveredValue0) addAll: (recoveredValue1).
    recoveredValue2 := (self) containedStructs.
    recoveredValue3 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 |
    recoveredBlock12Value0 := recoveredBlock12Arg1.
    recoveredBlock12Value1 := recoveredArg1.
    recoveredBlock12Value2 := (recoveredBlock12Value0) addAllMethodsTo: (recoveredBlock12Value1).
    recoveredBlock12Value2
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x20201cb8; bytecode file offset 0xafe588"
!ASDPortClassContainer methodsFor: 'recovered'!
initDirectAccessMethods: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 |
    recoveredBlock5Value0 := (self) class.
    recoveredBlock5Value1 := recoveredBlock5Arg1.
    recoveredBlock5Value2 := (recoveredBlock5Value0) createAdditionalMethodContainerFor: (recoveredBlock5Value1) parentNode: (self).
    recoveredBlock5Value3 := recoveredBlock5Value2.
    recoveredBlock5Value4 := (self) parentString.
    recoveredBlock5Value5 := (self) parentAlias.
    (recoveredBlock5Value3) adaptForParentString: (recoveredBlock5Value4) parentAlias: (recoveredBlock5Value5).
    recoveredBlock5Value2
].
    recoveredValue2 := (recoveredValue0) collect: (recoveredValue1).
    (self) directAccessMethods: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20219728; bytecode file offset 0xb15ff4"
!ASDPortClassContainer methodsFor: 'recovered'!
showOutputMethodNode
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) variable.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) showOutputMethod.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) parentNode.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := [:block280db138Arg1 | 
    | block280db138Value0 block280db138Value1 |
    block280db138Value0 := block280db138Arg1.
    block280db138Value1 := (block280db138Value0) isGetAccessEnabledCheckContext.
    block280db138Value1
].
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkAccessRecursive: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20282534; bytecode file offset 0xb7ee04"
!ASDPortClassContainer methodsFor: 'recovered'!
topInterfaceNode
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'call_84848'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) variable.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) isInterface.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) parentNode.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) variable.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) isInterface.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) parentNode.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) topInterfaceNode.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredPC := 37.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredPC := 41.
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

"ASDBase.ic method 0x2028bb84; bytecode file offset 0xb88460"
!ASDPortClassContainer methodsFor: 'recovered'!
initPublicMethods
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) variable.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClass.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) publicMethodsForGraphics.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := [:block280e2008Arg1 :block280e2008Arg2 | 
    | block280e2008Value0 block280e2008Value1 block280e2008Value2 block280e2008Value3 block280e2008Value4 |
    block280e2008Value0 := block280e2008Arg1.
    block280e2008Value1 := (block280e2008Value0) label.
    block280e2008Value2 := block280e2008Arg2.
    block280e2008Value3 := (block280e2008Value2) label.
    block280e2008Value4 := (block280e2008Value1) < (block280e2008Value3).
    block280e2008Value4
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := [:recoveredBlock24Arg1 | 
    | recoveredBlock24Value0 recoveredBlock24Value1 recoveredBlock24Value2 |
    recoveredBlock24Value0 := (self) class.
    recoveredBlock24Value1 := recoveredBlock24Arg1.
    recoveredBlock24Value2 := (recoveredBlock24Value0) createGeneralMethodContainerFor: (recoveredBlock24Value1) parentNode: (self).
    recoveredBlock24Value2
].
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) publicMethods: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2029146c; bytecode file offset 0xb8dd4c"
!ASDPortClassContainer methodsFor: 'recovered'!
parentComponentsInTree
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'call_84848'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) variable.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) sgClass.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) dbObject.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) parentNode.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) parentNode.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) parentComponentsInTree.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203140d0; bytecode file offset 0xc109b4"
!ASDPortClassContainer methodsFor: 'recovered'!
initPrivateMethods
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) variable.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSelf.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) variable.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClass.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) privateMethods.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := [:block280eb050Arg1 :block280eb050Arg2 | 
    | block280eb050Value0 block280eb050Value1 block280eb050Value2 block280eb050Value3 block280eb050Value4 |
    block280eb050Value0 := block280eb050Arg1.
    block280eb050Value1 := (block280eb050Value0) label.
    block280eb050Value2 := block280eb050Arg2.
    block280eb050Value3 := (block280eb050Value2) label.
    block280eb050Value4 := (block280eb050Value1) < (block280eb050Value3).
    block280eb050Value4
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := [:recoveredBlock30Arg1 | 
    | recoveredBlock30Value0 recoveredBlock30Value1 recoveredBlock30Value2 |
    recoveredBlock30Value0 := (self) class.
    recoveredBlock30Value1 := recoveredBlock30Arg1.
    recoveredBlock30Value2 := (recoveredBlock30Value0) createGeneralMethodContainerFor: (recoveredBlock30Value1) parentNode: (self).
    recoveredBlock30Value2
].
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) privateMethods: (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredPC := 55.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) privateMethods: (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2035bd90; bytecode file offset 0xc58668"
!ASDPortClassContainer methodsFor: 'recovered'!
iconName
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) checkEnablement: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 37].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 37] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := RBUserInterface.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) resourceManager.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkBoxIconSet.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 59].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 59] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := RBUserInterface.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) resourceManager.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkBoxIconNotSet.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := RBUserInterface.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) resourceManager.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkBoxIconDontCareSet.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203a2e88; bytecode file offset 0xc9f774"
!ASDPortClassContainer methodsFor: 'recovered'!
copy
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := super copy.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) directAccessMethods.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := [:block280f49bcArg1 | 
    | block280f49bcValue0 block280f49bcValue1 block280f49bcValue2 block280f49bcValue3 block280f49bcValue4 block280f49bcValue5 |
    block280f49bcValue0 := block280f49bcArg1.
    block280f49bcValue1 := (block280f49bcValue0) copy.
    block280f49bcValue2 := block280f49bcArg1.
    block280f49bcValue3 := (block280f49bcValue2) method.
    block280f49bcValue4 := (block280f49bcValue3) copy.
    block280f49bcValue5 := (block280f49bcValue1) method: (block280f49bcValue4).
    block280f49bcValue5
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) directAccessMethods: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) privateMethods.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := [:block280f49e0Arg1 | 
    | block280f49e0Value0 block280f49e0Value1 block280f49e0Value2 block280f49e0Value3 block280f49e0Value4 block280f49e0Value5 |
    block280f49e0Value0 := block280f49e0Arg1.
    block280f49e0Value1 := (block280f49e0Value0) copy.
    block280f49e0Value2 := block280f49e0Arg1.
    block280f49e0Value3 := (block280f49e0Value2) method.
    block280f49e0Value4 := (block280f49e0Value3) copy.
    block280f49e0Value5 := (block280f49e0Value1) method: (block280f49e0Value4).
    block280f49e0Value5
].
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) privateMethods: (recoveredStack1).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) publicMethods.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := [:block280f4a04Arg1 | 
    | block280f4a04Value0 block280f4a04Value1 block280f4a04Value2 block280f4a04Value3 block280f4a04Value4 block280f4a04Value5 |
    block280f4a04Value0 := block280f4a04Arg1.
    block280f4a04Value1 := (block280f4a04Value0) copy.
    block280f4a04Value2 := block280f4a04Arg1.
    block280f4a04Value3 := (block280f4a04Value2) method.
    block280f4a04Value4 := (block280f4a04Value3) copy.
    block280f4a04Value5 := (block280f4a04Value1) method: (block280f4a04Value4).
    block280f4a04Value5
].
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack0) publicMethods: (recoveredStack1).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203e7638; bytecode file offset 0xce3f1c"
!ASDPortClassContainer methodsFor: 'recovered'!
toggleEnablement: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) checkEnablement: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) setEnablement: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexOf: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 87].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) refreshPos: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) refreshHierarchyPos: (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) expandPos: (recoveredStack1) notify: (recoveredStack2).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) getChildren.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := [:recoveredBlock72Arg1 | 
    | recoveredBlock72Value0 recoveredBlock72Value1 recoveredBlock72Value2 |
    recoveredBlock72Value0 := recoveredArg1.
    recoveredBlock72Value1 := recoveredBlock72Arg1.
    recoveredBlock72Value2 := (recoveredBlock72Value0) refreshItem: (recoveredBlock72Value1).
    recoveredBlock72Value2
].
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204509c0; bytecode file offset 0xd4d2d0"
!ASDPortClassContainer methodsFor: 'recovered'!
initContainedStructs
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'call_84848'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 'call_2010405932'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) variable.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) parentNode.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) isNil.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) allContainedStructVariablesCheckGetSetAccess: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := [:block280ff460Arg1 :block280ff460Arg2 | 
    | block280ff460Value0 block280ff460Value1 block280ff460Value2 block280ff460Value3 block280ff460Value4 |
    block280ff460Value0 := block280ff460Arg1.
    block280ff460Value1 := (block280ff460Value0) typeLabel.
    block280ff460Value2 := block280ff460Arg2.
    block280ff460Value3 := (block280ff460Value2) typeLabel.
    block280ff460Value4 := (block280ff460Value1) < (block280ff460Value3).
    block280ff460Value4
].
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := [:recoveredBlock40Arg1 | 
    | recoveredBlock40Stack0 recoveredBlock40Stack1 recoveredBlock40Stack2 recoveredBlock40Stack3 recoveredBlock40Stack4 recoveredBlock40PC recoveredBlock40Step recoveredBlock40Done recoveredBlock40Result |
    recoveredBlock40Stack0 := self.
    recoveredBlock40PC := 46.
    recoveredBlock40Done := false.
    [recoveredBlock40Done not] whileTrue: [
        recoveredBlock40Step := recoveredBlock40PC.
        recoveredBlock40Step = 46 ifTrue: [
            recoveredBlock40Stack1 := false.
            recoveredBlock40PC := 47.
        ].
        recoveredBlock40Step = 47 ifTrue: [
            recoveredBlock40Stack2 := recoveredBlock40Arg1.
            recoveredBlock40PC := 48.
        ].
        recoveredBlock40Step = 48 ifTrue: [
            recoveredBlock40Stack3 := [:block280ff484Arg1 | 
    nil
].
            recoveredBlock40PC := 50.
        ].
        recoveredBlock40Step = 50 ifTrue: [
            recoveredBlock40PC := 56.
        ].
        recoveredBlock40Step = 56 ifTrue: [
            recoveredBlock40Stack2 := (recoveredBlock40Stack2) sgClassIfUndefined: (recoveredBlock40Stack3).
            recoveredBlock40PC := 58.
        ].
        recoveredBlock40Step = 58 ifTrue: [
            (recoveredBlock40Stack2 == nil) ifTrue: [recoveredBlock40PC := 78] ifFalse: [recoveredBlock40PC := 62].
        ].
        recoveredBlock40Step = 62 ifTrue: [
            recoveredBlock40Stack2 := recoveredBlock40Arg1.
            recoveredBlock40PC := 63.
        ].
        recoveredBlock40Step = 63 ifTrue: [
            recoveredBlock40Stack2 := (recoveredBlock40Stack2) sgClassKey.
            recoveredBlock40PC := 65.
        ].
        recoveredBlock40Step = 65 ifTrue: [
            recoveredBlock40Stack2 := (recoveredBlock40Stack2) isRecord.
            recoveredBlock40PC := 67.
        ].
        recoveredBlock40Step = 67 ifTrue: [
            (recoveredBlock40Stack2) ifTrue: [recoveredBlock40PC := 70] ifFalse: [recoveredBlock40PC := 78].
        ].
        recoveredBlock40Step = 70 ifTrue: [
            recoveredBlock40PC := 71.
        ].
        recoveredBlock40Step = 71 ifTrue: [
            recoveredBlock40Stack1 := self.
            recoveredBlock40PC := 72.
        ].
        recoveredBlock40Step = 72 ifTrue: [
            recoveredBlock40Stack2 := recoveredBlock40Arg1.
            recoveredBlock40PC := 73.
        ].
        recoveredBlock40Step = 73 ifTrue: [
            recoveredBlock40Stack2 := (recoveredBlock40Stack2) sgClass.
            recoveredBlock40PC := 75.
        ].
        recoveredBlock40Step = 75 ifTrue: [
            recoveredBlock40Stack1 := (recoveredBlock40Stack1) isCyclic: (recoveredBlock40Stack2).
            recoveredBlock40PC := 77.
        ].
        recoveredBlock40Step = 77 ifTrue: [
            recoveredBlock40Stack1 := (recoveredBlock40Stack1) not.
            recoveredBlock40PC := 78.
        ].
        recoveredBlock40Step = 78 ifTrue: [
            recoveredBlock40Result := recoveredBlock40Stack1.
            recoveredBlock40Done := true.
        ].
    ].
    recoveredBlock40Result
].
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := [:recoveredBlock81Arg1 | 
    | recoveredBlock81Value0 recoveredBlock81Value1 recoveredBlock81Value2 |
    recoveredBlock81Value0 := (self) class.
    recoveredBlock81Value1 := recoveredBlock81Arg1.
    recoveredBlock81Value2 := (recoveredBlock81Value0) createClassContainerFor: (recoveredBlock81Value1) parentNode: (self).
    recoveredBlock81Value2
].
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := [:block280ff4a8Arg1 | 
    | block280ff4a8Value0 block280ff4a8Value1 block280ff4a8Value2 |
    block280ff4a8Value0 := block280ff4a8Arg1.
    block280ff4a8Value1 := (block280ff4a8Value0) getChildren.
    block280ff4a8Value2 := (block280ff4a8Value1) notEmpty.
    block280ff4a8Value2
].
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack0) containedStructs: (recoveredStack1).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205b4ca8; bytecode file offset 0xeb15f4"
!ASDPortClassContainer methodsFor: 'recovered'!
initialize
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            super initialize.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := 'hw'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 'call_84848'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := SortedCollection.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := [:block28116ef0Arg1 :block28116ef0Arg2 | 
    | block28116ef0Value0 block28116ef0Value1 block28116ef0Value2 block28116ef0Value3 block28116ef0Value4 |
    block28116ef0Value0 := block28116ef0Arg1.
    block28116ef0Value1 := (block28116ef0Value0) label.
    block28116ef0Value2 := block28116ef0Arg2.
    block28116ef0Value3 := (block28116ef0Value2) label.
    block28116ef0Value4 := (block28116ef0Value1) < (block28116ef0Value3).
    block28116ef0Value4
].
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) sortBlock: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) getRootNode.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) variable.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) isReturn.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) getRootNode.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) variable.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) isOut.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := (recoveredStack2) getRootNode.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := (recoveredStack2) variable.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := (recoveredStack2) isInOut.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) | (recoveredStack2).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 83].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := (recoveredStack0) getRootNode.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) variable.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCalibrationInterface.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) not.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := (recoveredStack1) getRootNode.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := (recoveredStack1) variable.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := (recoveredStack1) isReturn.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 98] ifFalse: [recoveredPC := 115].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := (recoveredStack0) getRootNode.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := (recoveredStack0) variable.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIn.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := (recoveredStack1) getRootNode.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := (recoveredStack1) variable.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := (recoveredStack1) isInOut.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := (recoveredStack0) | (recoveredStack1).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := (recoveredStack0) getRootNode.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := (recoveredStack0) variable.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := [:recoveredBlock131Arg1 | 
    | recoveredBlock131Stack0 recoveredBlock131Stack1 recoveredBlock131Stack2 recoveredBlock131Stack3 recoveredBlock131Stack4 recoveredBlock131PC recoveredBlock131Step recoveredBlock131Done recoveredBlock131Result |
    recoveredBlock131Stack0 := self.
    recoveredBlock131PC := 138.
    recoveredBlock131Done := false.
    [recoveredBlock131Done not] whileTrue: [
        recoveredBlock131Step := recoveredBlock131PC.
        recoveredBlock131Step = 138 ifTrue: [
            recoveredBlock131Stack1 := recoveredBlock131Arg1.
            recoveredBlock131PC := 139.
        ].
        recoveredBlock131Step = 139 ifTrue: [
            recoveredBlock131Stack1 := (recoveredBlock131Stack1) isARDataInterface.
            recoveredBlock131PC := 141.
        ].
        recoveredBlock131Step = 141 ifTrue: [
            (recoveredBlock131Stack1) ifTrue: [recoveredBlock131PC := 144] ifFalse: [recoveredBlock131PC := 186].
        ].
        recoveredBlock131Step = 144 ifTrue: [
            recoveredBlock131Stack1 := recoveredLocal2.
            recoveredBlock131PC := 147.
        ].
        recoveredBlock131Step = 147 ifTrue: [
            recoveredBlock131Stack1 := (recoveredBlock131Stack1) ownerSGClass.
            recoveredBlock131PC := 149.
        ].
        recoveredBlock131Step = 149 ifTrue: [
            (recoveredBlock131Stack1 == nil) ifTrue: [recoveredBlock131PC := 186] ifFalse: [recoveredBlock131PC := 152].
        ].
        recoveredBlock131Step = 152 ifTrue: [
            recoveredBlock131Stack1 := recoveredLocal2.
            recoveredBlock131PC := 155.
        ].
        recoveredBlock131Step = 155 ifTrue: [
            recoveredBlock131Stack1 := (recoveredBlock131Stack1) ownerSGClass.
            recoveredBlock131PC := 157.
        ].
        recoveredBlock131Step = 157 ifTrue: [
            recoveredBlock131Stack1 := (recoveredBlock131Stack1) isAtomicSoftwareComponent.
            recoveredBlock131PC := 159.
        ].
        recoveredBlock131Step = 159 ifTrue: [
            (recoveredBlock131Stack1) ifTrue: [recoveredBlock131PC := 162] ifFalse: [recoveredBlock131PC := 186].
        ].
        recoveredBlock131Step = 162 ifTrue: [
            recoveredBlock131Stack1 := recoveredLocal2.
            recoveredBlock131PC := 165.
        ].
        recoveredBlock131Step = 165 ifTrue: [
            recoveredBlock131Stack1 := (recoveredBlock131Stack1) isRequirePort.
            recoveredBlock131PC := 167.
        ].
        recoveredBlock131Step = 167 ifTrue: [
            (recoveredBlock131Stack1) ifTrue: [recoveredBlock131PC := 170] ifFalse: [recoveredBlock131PC := 174].
        ].
        recoveredBlock131Step = 170 ifTrue: [
            recoveredBlock131Stack1 := false.
            recoveredBlock131PC := 171.
        ].
        recoveredBlock131Step = 171 ifTrue: [
            recoveredLocal4 := recoveredBlock131Stack1.
            recoveredBlock131PC := 174.
        ].
        recoveredBlock131Step = 174 ifTrue: [
            recoveredBlock131Stack1 := recoveredLocal2.
            recoveredBlock131PC := 177.
        ].
        recoveredBlock131Step = 177 ifTrue: [
            recoveredBlock131Stack1 := (recoveredBlock131Stack1) isProvidePort.
            recoveredBlock131PC := 179.
        ].
        recoveredBlock131Step = 179 ifTrue: [
            (recoveredBlock131Stack1) ifTrue: [recoveredBlock131PC := 182] ifFalse: [recoveredBlock131PC := 186].
        ].
        recoveredBlock131Step = 182 ifTrue: [
            recoveredBlock131Stack1 := false.
            recoveredBlock131PC := 183.
        ].
        recoveredBlock131Step = 183 ifTrue: [
            recoveredLocal3 := recoveredBlock131Stack1.
            recoveredBlock131PC := 186.
        ].
        recoveredBlock131Step = 186 ifTrue: [
            recoveredBlock131Stack1 := 'hw'.
            recoveredBlock131PC := 188.
        ].
        recoveredBlock131Step = 188 ifTrue: [
            recoveredBlock131Stack2 := 'call_84848'.
            recoveredBlock131PC := 190.
        ].
        recoveredBlock131Step = 190 ifTrue: [
            recoveredBlock131Stack1 := (recoveredBlock131Stack1) == (recoveredBlock131Stack2).
            recoveredBlock131PC := 191.
        ].
        recoveredBlock131Step = 191 ifTrue: [
            recoveredBlock131PC := 192.
        ].
        recoveredBlock131Step = 192 ifTrue: [
            recoveredBlock131Stack0 := (recoveredBlock131Stack0) variable.
            recoveredBlock131PC := 194.
        ].
        recoveredBlock131Step = 194 ifTrue: [
            recoveredBlock131Stack1 := false.
            recoveredBlock131PC := 195.
        ].
        recoveredBlock131Step = 195 ifTrue: [
            recoveredBlock131Stack2 := recoveredLocal4.
            recoveredBlock131PC := 198.
        ].
        recoveredBlock131Step = 198 ifTrue: [
            (recoveredBlock131Stack2) ifTrue: [recoveredBlock131PC := 202] ifFalse: [recoveredBlock131PC := 235].
        ].
        recoveredBlock131Step = 202 ifTrue: [
            recoveredBlock131PC := 203.
        ].
        recoveredBlock131Step = 203 ifTrue: [
            recoveredBlock131Stack1 := true.
            recoveredBlock131PC := 204.
        ].
        recoveredBlock131Step = 204 ifTrue: [
            recoveredBlock131Stack2 := self.
            recoveredBlock131PC := 205.
        ].
        recoveredBlock131Step = 205 ifTrue: [
            recoveredBlock131Stack2 := (recoveredBlock131Stack2) parentNode.
            recoveredBlock131PC := 207.
        ].
        recoveredBlock131Step = 207 ifTrue: [
            (recoveredBlock131Stack2 == nil) ifTrue: [recoveredBlock131PC := 235] ifFalse: [recoveredBlock131PC := 210].
        ].
        recoveredBlock131Step = 210 ifTrue: [
            recoveredBlock131PC := 211.
        ].
        recoveredBlock131Step = 211 ifTrue: [
            recoveredBlock131Stack1 := self.
            recoveredBlock131PC := 212.
        ].
        recoveredBlock131Step = 212 ifTrue: [
            recoveredBlock131Stack1 := (recoveredBlock131Stack1) getRootNode.
            recoveredBlock131PC := 214.
        ].
        recoveredBlock131Step = 214 ifTrue: [
            recoveredBlock131Stack1 := (recoveredBlock131Stack1) getBasicElement.
            recoveredBlock131PC := 216.
        ].
        recoveredBlock131Step = 216 ifTrue: [
            recoveredBlock131Stack1 := (recoveredBlock131Stack1) sgClass.
            recoveredBlock131PC := 218.
        ].
        recoveredBlock131Step = 218 ifTrue: [
            recoveredBlock131Stack1 := (recoveredBlock131Stack1) isInterface.
            recoveredBlock131PC := 220.
        ].
        recoveredBlock131Step = 220 ifTrue: [
            (recoveredBlock131Stack1) ifTrue: [recoveredBlock131PC := 224] ifFalse: [recoveredBlock131PC := 228].
        ].
        recoveredBlock131Step = 224 ifTrue: [
            recoveredBlock131Stack1 := true.
            recoveredBlock131PC := 225.
        ].
        recoveredBlock131Step = 225 ifTrue: [
            recoveredBlock131PC := 235.
        ].
        recoveredBlock131Step = 228 ifTrue: [
            recoveredBlock131Stack1 := self.
            recoveredBlock131PC := 229.
        ].
        recoveredBlock131Step = 229 ifTrue: [
            recoveredBlock131Stack1 := (recoveredBlock131Stack1) topInterfaceNode.
            recoveredBlock131PC := 231.
        ].
        recoveredBlock131Step = 231 ifTrue: [
            recoveredBlock131Stack1 := (recoveredBlock131Stack1) getBasicElement.
            recoveredBlock131PC := 233.
        ].
        recoveredBlock131Step = 233 ifTrue: [
            recoveredBlock131Stack1 := (recoveredBlock131Stack1) isSetAccessEnabledCheckContext.
            recoveredBlock131PC := 235.
        ].
        recoveredBlock131Step = 235 ifTrue: [
            recoveredBlock131Stack2 := false.
            recoveredBlock131PC := 236.
        ].
        recoveredBlock131Step = 236 ifTrue: [
            recoveredBlock131Stack3 := recoveredLocal3.
            recoveredBlock131PC := 239.
        ].
        recoveredBlock131Step = 239 ifTrue: [
            (recoveredBlock131Stack3) ifTrue: [recoveredBlock131PC := 242] ifFalse: [recoveredBlock131PC := 275].
        ].
        recoveredBlock131Step = 242 ifTrue: [
            recoveredBlock131PC := 243.
        ].
        recoveredBlock131Step = 243 ifTrue: [
            recoveredBlock131Stack2 := true.
            recoveredBlock131PC := 244.
        ].
        recoveredBlock131Step = 244 ifTrue: [
            recoveredBlock131Stack3 := self.
            recoveredBlock131PC := 245.
        ].
        recoveredBlock131Step = 245 ifTrue: [
            recoveredBlock131Stack3 := (recoveredBlock131Stack3) parentNode.
            recoveredBlock131PC := 247.
        ].
        recoveredBlock131Step = 247 ifTrue: [
            (recoveredBlock131Stack3 == nil) ifTrue: [recoveredBlock131PC := 275] ifFalse: [recoveredBlock131PC := 250].
        ].
        recoveredBlock131Step = 250 ifTrue: [
            recoveredBlock131PC := 251.
        ].
        recoveredBlock131Step = 251 ifTrue: [
            recoveredBlock131Stack2 := self.
            recoveredBlock131PC := 252.
        ].
        recoveredBlock131Step = 252 ifTrue: [
            recoveredBlock131Stack2 := (recoveredBlock131Stack2) getRootNode.
            recoveredBlock131PC := 254.
        ].
        recoveredBlock131Step = 254 ifTrue: [
            recoveredBlock131Stack2 := (recoveredBlock131Stack2) getBasicElement.
            recoveredBlock131PC := 256.
        ].
        recoveredBlock131Step = 256 ifTrue: [
            recoveredBlock131Stack2 := (recoveredBlock131Stack2) sgClass.
            recoveredBlock131PC := 258.
        ].
        recoveredBlock131Step = 258 ifTrue: [
            recoveredBlock131Stack2 := (recoveredBlock131Stack2) isInterface.
            recoveredBlock131PC := 260.
        ].
        recoveredBlock131Step = 260 ifTrue: [
            (recoveredBlock131Stack2) ifTrue: [recoveredBlock131PC := 264] ifFalse: [recoveredBlock131PC := 268].
        ].
        recoveredBlock131Step = 264 ifTrue: [
            recoveredBlock131Stack2 := true.
            recoveredBlock131PC := 265.
        ].
        recoveredBlock131Step = 265 ifTrue: [
            recoveredBlock131PC := 275.
        ].
        recoveredBlock131Step = 268 ifTrue: [
            recoveredBlock131Stack2 := self.
            recoveredBlock131PC := 269.
        ].
        recoveredBlock131Step = 269 ifTrue: [
            recoveredBlock131Stack2 := (recoveredBlock131Stack2) topInterfaceNode.
            recoveredBlock131PC := 271.
        ].
        recoveredBlock131Step = 271 ifTrue: [
            recoveredBlock131Stack2 := (recoveredBlock131Stack2) getBasicElement.
            recoveredBlock131PC := 273.
        ].
        recoveredBlock131Step = 273 ifTrue: [
            recoveredBlock131Stack2 := (recoveredBlock131Stack2) isGetAccessEnabledCheckContext.
            recoveredBlock131PC := 275.
        ].
        recoveredBlock131Step = 275 ifTrue: [
            recoveredBlock131Stack0 := (recoveredBlock131Stack0) additionalInterfaceMethodsSetEnabled: (recoveredBlock131Stack1) getEnabled: (recoveredBlock131Stack2).
            recoveredBlock131PC := 277.
        ].
        recoveredBlock131Step = 277 ifTrue: [
            recoveredBlock131Stack1 := [:recoveredBlock131Block277Arg1 | 
    | recoveredBlock131Block277Value0 recoveredBlock131Block277Value1 recoveredBlock131Block277Value2 |
    recoveredBlock131Block277Value0 := recoveredLocal5.
    recoveredBlock131Block277Value1 := recoveredBlock131Block277Arg1.
    recoveredBlock131Block277Value2 := (recoveredBlock131Block277Value0) add: (recoveredBlock131Block277Value1).
    recoveredBlock131Block277Value2
].
            recoveredBlock131PC := 291.
        ].
        recoveredBlock131Step = 291 ifTrue: [
            recoveredBlock131Stack0 := (recoveredBlock131Stack0) do: (recoveredBlock131Stack1).
            recoveredBlock131PC := 293.
        ].
        recoveredBlock131Step = 293 ifTrue: [
            recoveredBlock131Result := recoveredBlock131Stack0.
            recoveredBlock131Done := true.
        ].
    ].
    recoveredBlock131Result
].
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            (recoveredStack0) initPublicMethods.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            (recoveredStack0) initPrivateMethods.
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            (recoveredStack0) initDirectAccessMethods: (recoveredStack1).
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            (recoveredStack0) initContainedStructs.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

