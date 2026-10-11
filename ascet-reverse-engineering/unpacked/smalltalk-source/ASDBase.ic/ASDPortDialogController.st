"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2002d9c4; bytecode file offset 0x934580"
!ASDPortDialogController methodsFor: 'recovered'!
privateMethods
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) rootNode.
    recoveredValue1 := (recoveredValue0) privateMethods.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200311d4; bytecode file offset 0x934580"
!ASDPortDialogController methodsFor: 'recovered'!
getMethods
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) rootNode.
    recoveredValue1 := (recoveredValue0) getMethods.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20031c84; bytecode file offset 0x934580"
!ASDPortDialogController methodsFor: 'recovered'!
containedStructs
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) rootNode.
    recoveredValue1 := (recoveredValue0) containedStructs.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200354b4; bytecode file offset 0x934580"
!ASDPortDialogController methodsFor: 'recovered'!
isSelfClass
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) elementClass.
    recoveredValue1 := (recoveredValue0) isSelfClass.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200360d4; bytecode file offset 0x934580"
!ASDPortDialogController methodsFor: 'recovered'!
directAccessMethods
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) rootNode.
    recoveredValue1 := (recoveredValue0) directAccessMethods.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20036484; bytecode file offset 0x934580"
!ASDPortDialogController methodsFor: 'recovered'!
publicMethods
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) rootNode.
    recoveredValue1 := (recoveredValue0) publicMethods.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20036ad4; bytecode file offset 0x934580"
!ASDPortDialogController methodsFor: 'recovered'!
getAllMethods
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) rootNode.
    recoveredValue1 := (recoveredValue0) getAllMethods.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20067114; bytecode file offset 0x9646f8"
!ASDPortDialogController methodsFor: 'recovered'!
memoryGO
    | recoveredValue0 |
    recoveredValue0 := memoryGO.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006862c; bytecode file offset 0x965b90"
!ASDPortDialogController methodsFor: 'recovered'!
elementClass
    | recoveredValue0 |
    recoveredValue0 := elementClass.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006a1e0; bytecode file offset 0x966bdc"
!ASDPortDialogController methodsFor: 'recovered'!
rootNode
    | recoveredValue0 |
    recoveredValue0 := rootNode.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006a8e4; bytecode file offset 0x967a18"
!ASDPortDialogController methodsFor: 'recovered'!
revertNode
    | recoveredValue0 |
    recoveredValue0 := revertNode.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20076e94; bytecode file offset 0x9757c8"
!ASDPortDialogController methodsFor: 'recovered'!
editPortsPossible
    ^true
! !

"ASDBase.ic method 0x200b2dfc; bytecode file offset 0x9af6c0"
!ASDPortDialogController methodsFor: 'recovered'!
initElementClass
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) memoryGO.
    recoveredValue1 := (recoveredValue0) element.
    recoveredValue2 := (recoveredValue1) sgClass.
    (self) elementClass: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200bf440; bytecode file offset 0x9bc0b4"
!ASDPortDialogController methodsFor: 'recovered'!
memoryGO: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    memoryGO := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c0554; bytecode file offset 0x9bd228"
!ASDPortDialogController methodsFor: 'recovered'!
elementClass: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    elementClass := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c1218; bytecode file offset 0x9bdf14"
!ASDPortDialogController methodsFor: 'recovered'!
rootNode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    rootNode := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2214; bytecode file offset 0x9beac8"
!ASDPortDialogController methodsFor: 'recovered'!
revertNode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    revertNode := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200e01e0; bytecode file offset 0x9dcaa4"
!ASDPortDialogController methodsFor: 'recovered'!
createNewNodeFromGO
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ASDPortClassContainer.
    recoveredValue1 := memoryGO.
    recoveredValue2 := (recoveredValue1) element.
    recoveredValue3 := (recoveredValue2) duplicate.
    recoveredValue4 := (recoveredValue0) createForVar: (recoveredValue3) parentNode: (nil).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200f2d0c; bytecode file offset 0x9ef5cc"
!ASDPortDialogController methodsFor: 'recovered'!
initMethods
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) createNewNodeFromGO.
    (self) rootNode: (recoveredValue0).
    recoveredValue1 := (self) createNewNodeFromGO.
    (self) revertNode: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2011a164; bytecode file offset 0xa16b44"
!ASDPortDialogController methodsFor: 'recovered'!
getDisabledMethods
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getAllMethods.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c873cArg1 | 
    | block280c873cValue0 block280c873cValue1 block280c873cValue2 |
    block280c873cValue0 := block280c873cArg1.
    block280c873cValue1 := (block280c873cValue0) method.
    block280c873cValue2 := (block280c873cValue1) enabled.
    block280c873cValue2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) reject: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2011a20c; bytecode file offset 0xa16b44"
!ASDPortDialogController methodsFor: 'recovered'!
getEnabledMethods
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getAllMethods.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c8814Arg1 | 
    | block280c8814Value0 block280c8814Value1 block280c8814Value2 |
    block280c8814Value0 := block280c8814Arg1.
    block280c8814Value1 := (block280c8814Value0) method.
    block280c8814Value2 := (block280c8814Value1) enabled.
    block280c8814Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2012f1dc; bytecode file offset 0xa2baa8"
!ASDPortDialogController methodsFor: 'recovered'!
storeChanges
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) userInterface.
    recoveredValue1 := (recoveredValue0) widgetAsdPortWidget.
    recoveredValue2 := (self) rootNode.
    (recoveredValue1) createEditedCallback: (recoveredValue2).
    recoveredValue3 := (self) userInterface.
    recoveredValue4 := (recoveredValue3) uiController.
    (recoveredValue4) doEndModificationActions.
    ^self
! !

"ASDBase.ic method 0x20132200; bytecode file offset 0xa2eac4"
!ASDPortDialogController methodsFor: 'recovered'!
initForMemoryGO: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) memoryGO: (recoveredValue0).
    (self) initElementClass.
    (self) initMethods.
    (self) updateMethodStates.
    ^self
! !

"ASDBase.ic method 0x2013fe0c; bytecode file offset 0xa3c6cc"
!ASDPortDialogController methodsFor: 'recovered'!
getElementClass
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) elementClass.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSelfClass.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) elementClass.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) elementClass.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2014e31c; bytecode file offset 0xa4abe4"
!ASDPortDialogController methodsFor: 'recovered'!
updateGO
    | recoveredValue0 |
    recoveredValue0 := ('hw') == ('call_84192').
    (self) checkInvalidMethods.
    (self) removeDisabledMethodFromGO.
    (self) addEnabledMethodToGO.
    ^self
! !

"ASDBase.ic method 0x2018136c; bytecode file offset 0xa7dc38"
!ASDPortDialogController methodsFor: 'recovered'!
revertMethodStates
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getAllMethods.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280d0200Arg1 | 
    | block280d0200Value0 block280d0200Value1 block280d0200Value2 block280d0200Value3 block280d0200Value4 block280d0200Value5 block280d0200Value6 |
    block280d0200Value0 := block280d0200Arg1.
    block280d0200Value1 := (block280d0200Value0) method.
    block280d0200Value2 := block280d0200Arg1.
    block280d0200Value3 := (block280d0200Value2) method.
    block280d0200Value4 := (block280d0200Value3) enabled.
    block280d0200Value5 := (block280d0200Value4) not.
    block280d0200Value6 := (block280d0200Value1) enabled: (block280d0200Value5).
    block280d0200Value6
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201ea408; bytecode file offset 0xae6cd0"
!ASDPortDialogController methodsFor: 'recovered'!
getRasterPoint: recoveredArg1 gO: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (recoveredValue0) manager.
    recoveredValue2 := (recoveredValue1) controller.
    recoveredValue3 := [:recoveredBlock9Arg1 | 
    | recoveredBlock9Value0 recoveredBlock9Value1 recoveredBlock9Value2 recoveredBlock9Value3 |
    recoveredBlock9Value0 := recoveredBlock9Arg1.
    recoveredBlock9Value1 := (recoveredBlock9Value0) raster.
    recoveredBlock9Value2 := recoveredArg1.
    recoveredBlock9Value3 := (recoveredBlock9Value1) rasterPoint: (recoveredBlock9Value2).
    ^recoveredBlock9Value3
].
    (recoveredValue2) ifNotNil: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x202d2bbc; bytecode file offset 0xbcf498"
!ASDPortDialogController methodsFor: 'recovered'!
updateDefaultMethodStates
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getElementClass.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) publicMethodsForGraphics.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := [:block280e628cArg1 | 
    | block280e628cValue0 block280e628cValue1 |
    block280e628cValue0 := block280e628cArg1.
    block280e628cValue1 := (block280e628cValue0) aliasName.
    block280e628cValue1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) getAllMethods.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := [:recoveredBlock23Arg1 | 
    | recoveredBlock23Value0 recoveredBlock23Value1 recoveredBlock23Value2 recoveredBlock23Value3 recoveredBlock23Value4 recoveredBlock23Value5 recoveredBlock23Value6 recoveredBlock23Value7 |
    recoveredBlock23Value0 := recoveredBlock23Arg1.
    recoveredBlock23Value1 := (recoveredBlock23Value0) method.
    recoveredBlock23Value2 := recoveredLocal1.
    recoveredBlock23Value3 := recoveredBlock23Arg1.
    recoveredBlock23Value4 := (recoveredBlock23Value3) method.
    recoveredBlock23Value5 := (recoveredBlock23Value4) aliasName.
    recoveredBlock23Value6 := (recoveredBlock23Value2) includes: (recoveredBlock23Value5).
    recoveredBlock23Value7 := (recoveredBlock23Value1) enabled: (recoveredBlock23Value6).
    recoveredBlock23Value7
].
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202ec884; bytecode file offset 0xbe915c"
!ASDPortDialogController methodsFor: 'recovered'!
lookupInterface: recoveredArg1 inMethods: recoveredArg2
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
            recoveredStack2 := 'call_84192'.
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
            recoveredStack2 := 'call_84848'.
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
            recoveredStack1 := SGReservedNames.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) getSetMethodNames.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) methodName.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := [:recoveredBlock35Arg1 | 
    | recoveredBlock35Value0 recoveredBlock35Value1 recoveredBlock35Value2 |
    recoveredBlock35Value0 := recoveredArg1.
    recoveredBlock35Value1 := recoveredBlock35Arg1.
    recoveredBlock35Value2 := (self) interface: (recoveredBlock35Value0) equalToMethod: (recoveredBlock35Value1).
    recoveredBlock35Value2
].
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) anySatisfy: (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20332274; bytecode file offset 0xc2eb68"
!ASDPortDialogController methodsFor: 'recovered'!
getPredefinedNodes
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 |
    recoveredValue0 := ASDPredefContainer.
    recoveredValue1 := (self) rootNode.
    recoveredValue2 := (recoveredValue1) publicMethods.
    recoveredValue3 := (recoveredValue0) createForContainer: (recoveredValue2) iconName: ('EditorPortsPublicMethod') name: ('Public').
    recoveredLocal3 := recoveredValue3.
    recoveredValue4 := ASDPredefContainer.
    recoveredValue5 := (self) rootNode.
    recoveredValue6 := (recoveredValue5) privateMethods.
    recoveredValue7 := (recoveredValue4) createForContainer: (recoveredValue6) iconName: ('EditorPortsPrivateMethod') name: ('Private').
    recoveredLocal2 := recoveredValue7.
    recoveredValue8 := ASDPredefContainer.
    recoveredValue9 := (self) rootNode.
    recoveredValue10 := (recoveredValue9) containedStructs.
    recoveredValue11 := (self) rootNode.
    recoveredValue12 := (recoveredValue11) directAccessMethods.
    recoveredValue13 := (recoveredValue10) , (recoveredValue12).
    recoveredValue14 := (recoveredValue8) createForContainer: (recoveredValue13) iconName: ('EditorPortsDirectAccess') name: ('Direct Access').
    recoveredLocal1 := recoveredValue14.
    recoveredValue15 := Array.
    recoveredValue16 := recoveredLocal3.
    recoveredValue17 := recoveredLocal2.
    recoveredValue18 := recoveredLocal1.
    recoveredValue19 := (recoveredValue15) with: (recoveredValue16) with: (recoveredValue17) with: (recoveredValue18).
    ^recoveredValue19
! !

"ASDBase.ic method 0x203459a0; bytecode file offset 0xc4227c"
!ASDPortDialogController methodsFor: 'recovered'!
lookupMethod: recoveredArg1 inInterfacesOf: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'call_84192'.
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
            recoveredStack2 := 'call_84848'.
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
            recoveredStack1 := SGReservedNames.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) getSetMethodNames.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) methodName.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) interfaceGOs.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := [:recoveredBlock37Arg1 | 
    | recoveredBlock37Value0 recoveredBlock37Value1 recoveredBlock37Value2 |
    recoveredBlock37Value0 := recoveredBlock37Arg1.
    recoveredBlock37Value1 := recoveredArg1.
    recoveredBlock37Value2 := (self) interface: (recoveredBlock37Value0) equalToMethod: (recoveredBlock37Value1).
    recoveredBlock37Value2
].
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack3 := [
    ^nil
].
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203919bc; bytecode file offset 0xc8e2d0"
!ASDPortDialogController methodsFor: 'recovered'!
interface: recoveredArg1 equalToMethod: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'call_84192'.
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
            recoveredStack2 := 'call_84848'.
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
            recoveredStack1 := false.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) aliasName.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := (recoveredStack3) methodAliasName.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) equals: (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 73].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) isSelectorPort.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := (recoveredStack3) isSelectorPort.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack2 ~~ recoveredStack3) ifTrue: [recoveredPC := 73] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodParameters.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) interfaceGOs.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredPC := 71.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) interfaceGOs.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20401af0; bytecode file offset 0xcfe3e8"
!ASDPortDialogController methodsFor: 'recovered'!
updateMethodStates
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) getAllMethods.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) revertNode.
    recoveredValue3 := (recoveredValue2) directAccessMethods.
    (recoveredValue1) addAll: (recoveredValue3).
    recoveredValue4 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Local1 recoveredBlock11Stack0 recoveredBlock11Stack1 recoveredBlock11Stack2 recoveredBlock11Stack3 recoveredBlock11PC recoveredBlock11Step recoveredBlock11Done recoveredBlock11Result |
    recoveredBlock11Stack0 := self.
    recoveredBlock11PC := 18.
    recoveredBlock11Done := false.
    [recoveredBlock11Done not] whileTrue: [
        recoveredBlock11Step := recoveredBlock11PC.
        recoveredBlock11Step = 18 ifTrue: [
            recoveredBlock11Stack1 := 'Kk'.
            recoveredBlock11PC := 20.
        ].
        recoveredBlock11Step = 20 ifTrue: [
            recoveredBlock11Stack2 := 'Call_55320'.
            recoveredBlock11PC := 22.
        ].
        recoveredBlock11Step = 22 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) = (recoveredBlock11Stack2).
            recoveredBlock11PC := 23.
        ].
        recoveredBlock11Step = 23 ifTrue: [
            recoveredBlock11PC := 24.
        ].
        recoveredBlock11Step = 24 ifTrue: [
            recoveredBlock11Stack0 := (recoveredBlock11Stack0) memoryGO.
            recoveredBlock11PC := 26.
        ].
        recoveredBlock11Step = 26 ifTrue: [
            recoveredBlock11Stack0 := (recoveredBlock11Stack0) interfaceGOs.
            recoveredBlock11PC := 28.
        ].
        recoveredBlock11Step = 28 ifTrue: [
            recoveredBlock11Stack1 := [:recoveredBlock11Block28Arg1 | 
    | recoveredBlock11Block28Stack0 recoveredBlock11Block28Stack1 recoveredBlock11Block28Stack2 recoveredBlock11Block28Stack3 recoveredBlock11Block28Stack4 recoveredBlock11Block28PC recoveredBlock11Block28Step recoveredBlock11Block28Done recoveredBlock11Block28Result |
    recoveredBlock11Block28Stack0 := nil.
    recoveredBlock11Block28PC := 34.
    recoveredBlock11Block28Done := false.
    [recoveredBlock11Block28Done not] whileTrue: [
        recoveredBlock11Block28Step := recoveredBlock11Block28PC.
        recoveredBlock11Block28Step = 34 ifTrue: [
            recoveredBlock11Block28Stack1 := false.
            recoveredBlock11Block28PC := 35.
        ].
        recoveredBlock11Block28Step = 35 ifTrue: [
            recoveredBlock11Block28Stack2 := recoveredBlock11Block28Arg1.
            recoveredBlock11Block28PC := 36.
        ].
        recoveredBlock11Block28Step = 36 ifTrue: [
            recoveredBlock11Block28Stack2 := (recoveredBlock11Block28Stack2) methodAliasName.
            recoveredBlock11Block28PC := 38.
        ].
        recoveredBlock11Block28Step = 38 ifTrue: [
            recoveredBlock11Block28Stack3 := recoveredBlock11Arg1.
            recoveredBlock11Block28PC := 41.
        ].
        recoveredBlock11Block28Step = 41 ifTrue: [
            recoveredBlock11Block28Stack3 := (recoveredBlock11Block28Stack3) method.
            recoveredBlock11Block28PC := 43.
        ].
        recoveredBlock11Block28Step = 43 ifTrue: [
            recoveredBlock11Block28Stack3 := (recoveredBlock11Block28Stack3) aliasName.
            recoveredBlock11Block28PC := 45.
        ].
        recoveredBlock11Block28Step = 45 ifTrue: [
            recoveredBlock11Block28Stack2 := (recoveredBlock11Block28Stack2) = (recoveredBlock11Block28Stack3).
            recoveredBlock11Block28PC := 46.
        ].
        recoveredBlock11Block28Step = 46 ifTrue: [
            (recoveredBlock11Block28Stack2) ifTrue: [recoveredBlock11Block28PC := 50] ifFalse: [recoveredBlock11Block28PC := 62].
        ].
        recoveredBlock11Block28Step = 50 ifTrue: [
            recoveredBlock11Block28PC := 51.
        ].
        recoveredBlock11Block28Step = 51 ifTrue: [
            recoveredBlock11Block28Stack1 := recoveredBlock11Block28Arg1.
            recoveredBlock11Block28PC := 52.
        ].
        recoveredBlock11Block28Step = 52 ifTrue: [
            recoveredBlock11Block28Stack1 := (recoveredBlock11Block28Stack1) isSelectorPort.
            recoveredBlock11Block28PC := 54.
        ].
        recoveredBlock11Block28Step = 54 ifTrue: [
            recoveredBlock11Block28Stack2 := recoveredBlock11Arg1.
            recoveredBlock11Block28PC := 57.
        ].
        recoveredBlock11Block28Step = 57 ifTrue: [
            recoveredBlock11Block28Stack2 := (recoveredBlock11Block28Stack2) method.
            recoveredBlock11Block28PC := 59.
        ].
        recoveredBlock11Block28Step = 59 ifTrue: [
            recoveredBlock11Block28Stack2 := (recoveredBlock11Block28Stack2) isSelectorPort.
            recoveredBlock11Block28PC := 61.
        ].
        recoveredBlock11Block28Step = 61 ifTrue: [
            recoveredBlock11Block28Stack1 := (recoveredBlock11Block28Stack1) = (recoveredBlock11Block28Stack2).
            recoveredBlock11Block28PC := 62.
        ].
        recoveredBlock11Block28Step = 62 ifTrue: [
            recoveredBlock11Block28Result := recoveredBlock11Block28Stack1.
            recoveredBlock11Block28Done := true.
        ].
    ].
    recoveredBlock11Block28Result
].
            recoveredBlock11PC := 63.
        ].
        recoveredBlock11Step = 63 ifTrue: [
            recoveredBlock11Stack2 := [].
            recoveredBlock11PC := 65.
        ].
        recoveredBlock11Step = 65 ifTrue: [
            recoveredBlock11Stack0 := (recoveredBlock11Stack0) detect: (recoveredBlock11Stack1) ifNone: (recoveredBlock11Stack2).
            recoveredBlock11PC := 67.
        ].
        recoveredBlock11Step = 67 ifTrue: [
            recoveredBlock11Local1 := recoveredBlock11Stack0.
            recoveredBlock11PC := 70.
        ].
        recoveredBlock11Step = 70 ifTrue: [
            recoveredBlock11Stack0 := recoveredBlock11Arg1.
            recoveredBlock11PC := 73.
        ].
        recoveredBlock11Step = 73 ifTrue: [
            recoveredBlock11Stack0 := (recoveredBlock11Stack0) method.
            recoveredBlock11PC := 75.
        ].
        recoveredBlock11Step = 75 ifTrue: [
            recoveredBlock11Stack1 := false.
            recoveredBlock11PC := 76.
        ].
        recoveredBlock11Step = 76 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Local1.
            recoveredBlock11PC := 79.
        ].
        recoveredBlock11Step = 79 ifTrue: [
            (recoveredBlock11Stack2 == nil) ifTrue: [recoveredBlock11PC := 88] ifFalse: [recoveredBlock11PC := 82].
        ].
        recoveredBlock11Step = 82 ifTrue: [
            recoveredBlock11PC := 83.
        ].
        recoveredBlock11Step = 83 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Local1.
            recoveredBlock11PC := 86.
        ].
        recoveredBlock11Step = 86 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) isVisible.
            recoveredBlock11PC := 88.
        ].
        recoveredBlock11Step = 88 ifTrue: [
            recoveredBlock11Stack0 := (recoveredBlock11Stack0) enabled: (recoveredBlock11Stack1).
            recoveredBlock11PC := 90.
        ].
        recoveredBlock11Step = 90 ifTrue: [
            recoveredBlock11Result := recoveredBlock11Stack0.
            recoveredBlock11Done := true.
        ].
    ].
    recoveredBlock11Result
].
    (recoveredValue0) do: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20443bc0; bytecode file offset 0xd404c4"
!ASDPortDialogController methodsFor: 'recovered'!
checkInvalidMethods
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'call_84192'.
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
            recoveredStack2 := 'call_84848'.
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
            recoveredStack0 := (recoveredStack0) getAllMethods.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := [:block280fea1cArg1 | 
    | block280fea1cValue0 block280fea1cValue1 |
    block280fea1cValue0 := block280fea1cArg1.
    block280fea1cValue1 := (block280fea1cValue0) method.
    block280fea1cValue1
].
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) memoryGO.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceGOs.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := [:recoveredBlock36Arg1 | 
    | recoveredBlock36Local1 recoveredBlock36Stack0 recoveredBlock36Stack1 recoveredBlock36Stack2 recoveredBlock36Stack3 recoveredBlock36Stack4 recoveredBlock36Stack5 recoveredBlock36PC recoveredBlock36Step recoveredBlock36Done recoveredBlock36Result |
    recoveredBlock36Stack0 := self.
    recoveredBlock36PC := 42.
    recoveredBlock36Done := false.
    [recoveredBlock36Done not] whileTrue: [
        recoveredBlock36Step := recoveredBlock36PC.
        recoveredBlock36Step = 42 ifTrue: [
            recoveredBlock36Stack1 := nil.
            recoveredBlock36PC := 43.
        ].
        recoveredBlock36Step = 43 ifTrue: [
            recoveredBlock36Stack2 := self.
            recoveredBlock36PC := 44.
        ].
        recoveredBlock36Step = 44 ifTrue: [
            recoveredBlock36Stack3 := recoveredBlock36Arg1.
            recoveredBlock36PC := 45.
        ].
        recoveredBlock36Step = 45 ifTrue: [
            recoveredBlock36Stack4 := recoveredLocal1.
            recoveredBlock36PC := 48.
        ].
        recoveredBlock36Step = 48 ifTrue: [
            recoveredBlock36Stack2 := (recoveredBlock36Stack2) lookupInterface: (recoveredBlock36Stack3) inMethods: (recoveredBlock36Stack4).
            recoveredBlock36PC := 50.
        ].
        recoveredBlock36Step = 50 ifTrue: [
            recoveredBlock36Stack3 := recoveredBlock36Stack2.
            recoveredBlock36PC := 51.
        ].
        recoveredBlock36Step = 51 ifTrue: [
            recoveredLocal2 := recoveredBlock36Stack3.
            recoveredBlock36PC := 54.
        ].
        recoveredBlock36Step = 54 ifTrue: [
            (recoveredBlock36Stack2 ~~ nil) ifTrue: [recoveredBlock36PC := 105] ifFalse: [recoveredBlock36PC := 58].
        ].
        recoveredBlock36Step = 58 ifTrue: [
            recoveredBlock36PC := 59.
        ].
        recoveredBlock36Step = 59 ifTrue: [
            recoveredBlock36Stack1 := recoveredLocal2.
            recoveredBlock36PC := 62.
        ].
        recoveredBlock36Step = 62 ifTrue: [
            recoveredBlock36Stack1 := (recoveredBlock36Stack1) removeConnections.
            recoveredBlock36PC := 64.
        ].
        recoveredBlock36Step = 64 ifTrue: [
            recoveredBlock36Local1 := recoveredBlock36Stack1.
            recoveredBlock36PC := 65.
        ].
        recoveredBlock36Step = 65 ifTrue: [
            recoveredBlock36Stack1 := self.
            recoveredBlock36PC := 66.
        ].
        recoveredBlock36Step = 66 ifTrue: [
            recoveredBlock36Stack1 := (recoveredBlock36Stack1) memoryGO.
            recoveredBlock36PC := 68.
        ].
        recoveredBlock36Step = 68 ifTrue: [
            recoveredBlock36Stack2 := self.
            recoveredBlock36PC := 69.
        ].
        recoveredBlock36Step = 69 ifTrue: [
            recoveredBlock36Stack2 := (recoveredBlock36Stack2) memoryGO.
            recoveredBlock36PC := 71.
        ].
        recoveredBlock36Step = 71 ifTrue: [
            recoveredBlock36Stack2 := (recoveredBlock36Stack2) interfaceGOs.
            recoveredBlock36PC := 73.
        ].
        recoveredBlock36Step = 73 ifTrue: [
            recoveredBlock36Stack3 := recoveredLocal2.
            recoveredBlock36PC := 76.
        ].
        recoveredBlock36Step = 76 ifTrue: [
            recoveredBlock36Stack2 := (recoveredBlock36Stack2) copyWithout: (recoveredBlock36Stack3).
            recoveredBlock36PC := 78.
        ].
        recoveredBlock36Step = 78 ifTrue: [
            (recoveredBlock36Stack1) interfaceGOs: (recoveredBlock36Stack2).
            recoveredBlock36PC := 80.
        ].
        recoveredBlock36Step = 80 ifTrue: [
            recoveredBlock36Stack1 := 'hw'.
            recoveredBlock36PC := 82.
        ].
        recoveredBlock36Step = 82 ifTrue: [
            recoveredBlock36Stack2 := 'call_79836'.
            recoveredBlock36PC := 84.
        ].
        recoveredBlock36Step = 84 ifTrue: [
            recoveredBlock36Stack1 := (recoveredBlock36Stack1) == (recoveredBlock36Stack2).
            recoveredBlock36PC := 85.
        ].
        recoveredBlock36Step = 85 ifTrue: [
            recoveredBlock36PC := 86.
        ].
        recoveredBlock36Step = 86 ifTrue: [
            recoveredBlock36Stack1 := self.
            recoveredBlock36PC := 87.
        ].
        recoveredBlock36Step = 87 ifTrue: [
            recoveredBlock36Stack1 := (recoveredBlock36Stack1) memoryGO.
            recoveredBlock36PC := 89.
        ].
        recoveredBlock36Step = 89 ifTrue: [
            recoveredBlock36Stack1 := (recoveredBlock36Stack1) manager.
            recoveredBlock36PC := 91.
        ].
        recoveredBlock36Step = 91 ifTrue: [
            recoveredBlock36Stack1 := (recoveredBlock36Stack1) controller.
            recoveredBlock36PC := 93.
        ].
        recoveredBlock36Step = 93 ifTrue: [
            recoveredBlock36Stack2 := recoveredBlock36Local1.
            recoveredBlock36PC := 94.
        ].
        recoveredBlock36Step = 94 ifTrue: [
            recoveredBlock36Stack3 := recoveredLocal2.
            recoveredBlock36PC := 97.
        ].
        recoveredBlock36Step = 97 ifTrue: [
            recoveredBlock36Stack3 := (recoveredBlock36Stack3) frame.
            recoveredBlock36PC := 99.
        ].
        recoveredBlock36Step = 99 ifTrue: [
            recoveredBlock36Stack2 := (recoveredBlock36Stack2) copyWith: (recoveredBlock36Stack3).
            recoveredBlock36PC := 101.
        ].
        recoveredBlock36Step = 101 ifTrue: [
            recoveredBlock36Stack1 := (recoveredBlock36Stack1) displayRects: (recoveredBlock36Stack2).
            recoveredBlock36PC := 103.
        ].
        recoveredBlock36Step = 103 ifTrue: [
            recoveredBlock36Stack2 := nil.
            recoveredBlock36PC := 104.
        ].
        recoveredBlock36Step = 104 ifTrue: [
            recoveredBlock36Local1 := recoveredBlock36Stack2.
            recoveredBlock36PC := 105.
        ].
        recoveredBlock36Step = 105 ifTrue: [
            recoveredBlock36Result := recoveredBlock36Stack1.
            recoveredBlock36Done := true.
        ].
    ].
    recoveredBlock36Result
].
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
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

"ASDBase.ic method 0x2044d644; bytecode file offset 0xd49f4c"
!ASDPortDialogController methodsFor: 'recovered'!
removeDisabledMethodFromGO
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) getDisabledMethods.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Local1 recoveredBlock5Local2 recoveredBlock5Local3 recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5Stack4 recoveredBlock5Stack5 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := 'Kk'.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            recoveredBlock5Stack2 := 'Call_55320'.
            recoveredBlock5PC := 16.
        ].
        recoveredBlock5Step = 16 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) = (recoveredBlock5Stack2).
            recoveredBlock5PC := 17.
        ].
        recoveredBlock5Step = 17 ifTrue: [
            recoveredBlock5PC := 18.
        ].
        recoveredBlock5Step = 18 ifTrue: [
            recoveredBlock5Stack1 := nil.
            recoveredBlock5PC := 19.
        ].
        recoveredBlock5Step = 19 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 22.
        ].
        recoveredBlock5Step = 22 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) ownerList.
            recoveredBlock5PC := 23.
        ].
        recoveredBlock5Step = 23 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) isEmpty.
            recoveredBlock5PC := 25.
        ].
        recoveredBlock5Step = 25 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 28] ifFalse: [recoveredBlock5PC := 108].
        ].
        recoveredBlock5Step = 28 ifTrue: [
            recoveredBlock5PC := 29.
        ].
        recoveredBlock5Step = 29 ifTrue: [
            recoveredBlock5Stack1 := 'Hw'.
            recoveredBlock5PC := 31.
        ].
        recoveredBlock5Step = 31 ifTrue: [
            recoveredBlock5Stack2 := 'call_84848'.
            recoveredBlock5PC := 33.
        ].
        recoveredBlock5Step = 33 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) == (recoveredBlock5Stack2).
            recoveredBlock5PC := 34.
        ].
        recoveredBlock5Step = 34 ifTrue: [
            recoveredBlock5PC := 35.
        ].
        recoveredBlock5Step = 35 ifTrue: [
            recoveredBlock5Stack1 := nil.
            recoveredBlock5PC := 36.
        ].
        recoveredBlock5Step = 36 ifTrue: [
            recoveredBlock5Stack2 := self.
            recoveredBlock5PC := 37.
        ].
        recoveredBlock5Step = 37 ifTrue: [
            recoveredBlock5Stack3 := recoveredBlock5Arg1.
            recoveredBlock5PC := 40.
        ].
        recoveredBlock5Step = 40 ifTrue: [
            recoveredBlock5Stack3 := (recoveredBlock5Stack3) method.
            recoveredBlock5PC := 42.
        ].
        recoveredBlock5Step = 42 ifTrue: [
            recoveredBlock5Stack4 := self.
            recoveredBlock5PC := 43.
        ].
        recoveredBlock5Step = 43 ifTrue: [
            recoveredBlock5Stack4 := (recoveredBlock5Stack4) memoryGO.
            recoveredBlock5PC := 45.
        ].
        recoveredBlock5Step = 45 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) lookupMethod: (recoveredBlock5Stack3) inInterfacesOf: (recoveredBlock5Stack4).
            recoveredBlock5PC := 47.
        ].
        recoveredBlock5Step = 47 ifTrue: [
            recoveredBlock5Stack3 := recoveredBlock5Stack2.
            recoveredBlock5PC := 48.
        ].
        recoveredBlock5Step = 48 ifTrue: [
            recoveredBlock5Local3 := recoveredBlock5Stack3.
            recoveredBlock5PC := 51.
        ].
        recoveredBlock5Step = 51 ifTrue: [
            (recoveredBlock5Stack2 == nil) ifTrue: [recoveredBlock5PC := 108] ifFalse: [recoveredBlock5PC := 54].
        ].
        recoveredBlock5Step = 54 ifTrue: [
            recoveredBlock5PC := 55.
        ].
        recoveredBlock5Step = 55 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Local3.
            recoveredBlock5PC := 58.
        ].
        recoveredBlock5Step = 58 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) removeConnections.
            recoveredBlock5PC := 60.
        ].
        recoveredBlock5Step = 60 ifTrue: [
            recoveredBlock5Local1 := recoveredBlock5Stack1.
            recoveredBlock5PC := 63.
        ].
        recoveredBlock5Step = 63 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Local3.
            recoveredBlock5PC := 66.
        ].
        recoveredBlock5Step = 66 ifTrue: [
            recoveredBlock5Stack2 := false.
            recoveredBlock5PC := 67.
        ].
        recoveredBlock5Step = 67 ifTrue: [
            (recoveredBlock5Stack1) userVisibility: (recoveredBlock5Stack2).
            recoveredBlock5PC := 69.
        ].
        recoveredBlock5Step = 69 ifTrue: [
            recoveredBlock5Stack1 := 'hw'.
            recoveredBlock5PC := 71.
        ].
        recoveredBlock5Step = 71 ifTrue: [
            recoveredBlock5Stack2 := 'call_79836'.
            recoveredBlock5PC := 73.
        ].
        recoveredBlock5Step = 73 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) == (recoveredBlock5Stack2).
            recoveredBlock5PC := 74.
        ].
        recoveredBlock5Step = 74 ifTrue: [
            recoveredBlock5PC := 75.
        ].
        recoveredBlock5Step = 75 ifTrue: [
            recoveredBlock5Stack1 := self.
            recoveredBlock5PC := 76.
        ].
        recoveredBlock5Step = 76 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) memoryGO.
            recoveredBlock5PC := 78.
        ].
        recoveredBlock5Step = 78 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) manager.
            recoveredBlock5PC := 80.
        ].
        recoveredBlock5Step = 80 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) controller.
            recoveredBlock5PC := 82.
        ].
        recoveredBlock5Step = 82 ifTrue: [
            recoveredBlock5Stack2 := [:recoveredBlock5Block82Arg1 | 
    | recoveredBlock5Block82Value0 recoveredBlock5Block82Value1 recoveredBlock5Block82Value2 recoveredBlock5Block82Value3 recoveredBlock5Block82Value4 recoveredBlock5Block82Value5 |
    recoveredBlock5Block82Value0 := recoveredBlock5Block82Arg1.
    recoveredBlock5Block82Value1 := recoveredBlock5Local1.
    recoveredBlock5Block82Value2 := recoveredBlock5Local3.
    recoveredBlock5Block82Value3 := (recoveredBlock5Block82Value2) frame.
    recoveredBlock5Block82Value4 := (recoveredBlock5Block82Value1) copyWith: (recoveredBlock5Block82Value3).
    recoveredBlock5Block82Value5 := (recoveredBlock5Block82Value0) displayRects: (recoveredBlock5Block82Value4).
    recoveredBlock5Block82Value5
].
            recoveredBlock5PC := 102.
        ].
        recoveredBlock5Step = 102 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) ifNotNil: (recoveredBlock5Stack2).
            recoveredBlock5PC := 104.
        ].
        recoveredBlock5Step = 104 ifTrue: [
            recoveredBlock5Stack2 := nil.
            recoveredBlock5PC := 105.
        ].
        recoveredBlock5Step = 105 ifTrue: [
            recoveredBlock5Local1 := recoveredBlock5Stack2.
            recoveredBlock5PC := 108.
        ].
        recoveredBlock5Step = 108 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x205a9fec; bytecode file offset 0xea6950"
!ASDPortDialogController methodsFor: 'recovered'!
addEnabledMethodToGO
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 |
    recoveredValue0 := (self) memoryGO.
    (recoveredValue0) changeStarted.
    recoveredValue1 := (self) getEnabledMethods.
    recoveredLocal5 := recoveredValue1.
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal7 := recoveredValue3.
    recoveredValue4 := (self) memoryGO.
    recoveredValue5 := (recoveredValue4) interfaceGOs.
    recoveredValue6 := [:recoveredBlock23Arg1 | 
    | recoveredBlock23Value0 recoveredBlock23Value1 recoveredBlock23Value2 |
    recoveredBlock23Value0 := recoveredLocal5.
    recoveredBlock23Value1 := [:recoveredBlock23Block33Arg1 | 
    | recoveredBlock23Block33Value0 recoveredBlock23Block33Value1 recoveredBlock23Block33Value2 recoveredBlock23Block33Value3 |
    recoveredBlock23Block33Value0 := recoveredBlock23Arg1.
    recoveredBlock23Block33Value1 := recoveredBlock23Block33Arg1.
    recoveredBlock23Block33Value2 := (recoveredBlock23Block33Value1) method.
    recoveredBlock23Block33Value3 := (self) interface: (recoveredBlock23Block33Value0) equalToMethod: (recoveredBlock23Block33Value2).
    recoveredBlock23Block33Value3
].
    recoveredBlock23Value2 := (recoveredBlock23Value0) anySatisfy: (recoveredBlock23Value1).
    recoveredBlock23Value2
].
    recoveredValue7 := (recoveredValue5) select: (recoveredValue6).
    recoveredValue8 := recoveredValue7.
    recoveredLocal4 := recoveredValue8.
    recoveredValue9 := [:recoveredBlock58Arg1 | 
    | recoveredBlock58Stack0 recoveredBlock58Stack1 recoveredBlock58Stack2 recoveredBlock58Stack3 recoveredBlock58Stack4 recoveredBlock58PC recoveredBlock58Step recoveredBlock58Done recoveredBlock58Result |
    recoveredBlock58Stack0 := self.
    recoveredBlock58PC := 64.
    recoveredBlock58Done := false.
    [recoveredBlock58Done not] whileTrue: [
        recoveredBlock58Step := recoveredBlock58PC.
        recoveredBlock58Step = 64 ifTrue: [
            recoveredBlock58Stack1 := nil.
            recoveredBlock58PC := 65.
        ].
        recoveredBlock58Step = 65 ifTrue: [
            recoveredBlock58Stack2 := SGReservedNames.
            recoveredBlock58PC := 67.
        ].
        recoveredBlock58Step = 67 ifTrue: [
            recoveredBlock58Stack2 := (recoveredBlock58Stack2) getSetMethodNames.
            recoveredBlock58PC := 69.
        ].
        recoveredBlock58Step = 69 ifTrue: [
            recoveredBlock58Stack3 := recoveredBlock58Arg1.
            recoveredBlock58PC := 70.
        ].
        recoveredBlock58Step = 70 ifTrue: [
            recoveredBlock58Stack3 := (recoveredBlock58Stack3) methodName.
            recoveredBlock58PC := 72.
        ].
        recoveredBlock58Step = 72 ifTrue: [
            recoveredBlock58Stack2 := (recoveredBlock58Stack2) includes: (recoveredBlock58Stack3).
            recoveredBlock58PC := 74.
        ].
        recoveredBlock58Step = 74 ifTrue: [
            (recoveredBlock58Stack2) ifTrue: [recoveredBlock58PC := 87] ifFalse: [recoveredBlock58PC := 78].
        ].
        recoveredBlock58Step = 78 ifTrue: [
            recoveredBlock58PC := 79.
        ].
        recoveredBlock58Step = 79 ifTrue: [
            recoveredBlock58Stack1 := recoveredLocal7.
            recoveredBlock58PC := 82.
        ].
        recoveredBlock58Step = 82 ifTrue: [
            recoveredBlock58Stack2 := recoveredBlock58Arg1.
            recoveredBlock58PC := 83.
        ].
        recoveredBlock58Step = 83 ifTrue: [
            recoveredBlock58Stack2 := (recoveredBlock58Stack2) interfaceGOs.
            recoveredBlock58PC := 85.
        ].
        recoveredBlock58Step = 85 ifTrue: [
            recoveredBlock58Stack1 := (recoveredBlock58Stack1) addAll: (recoveredBlock58Stack2).
            recoveredBlock58PC := 87.
        ].
        recoveredBlock58Step = 87 ifTrue: [
            recoveredBlock58Result := recoveredBlock58Stack1.
            recoveredBlock58Done := true.
        ].
    ].
    recoveredBlock58Result
].
    (recoveredValue7) do: (recoveredValue9).
    recoveredValue10 := (self) memoryGO.
    recoveredValue11 := (recoveredValue10) logicFrame.
    recoveredValue12 := (recoveredValue11) leftTop.
    recoveredLocal3 := recoveredValue12.
    recoveredValue13 := (self) memoryGO.
    recoveredValue14 := (recoveredValue13) logicFrame.
    recoveredValue15 := (recoveredValue14) rightBottom.
    recoveredLocal2 := recoveredValue15.
    recoveredValue16 := recoveredLocal7.
    recoveredValue17 := [:recoveredBlock111Arg1 | 
    | recoveredBlock111Value0 recoveredBlock111Value1 recoveredBlock111Value2 recoveredBlock111Value3 recoveredBlock111Value4 recoveredBlock111Value5 recoveredBlock111Value6 recoveredBlock111Value7 recoveredBlock111Value8 |
    recoveredBlock111Value0 := recoveredLocal3.
    recoveredBlock111Value1 := recoveredBlock111Arg1.
    recoveredBlock111Value2 := (recoveredBlock111Value1) getPosition.
    recoveredBlock111Value3 := (recoveredBlock111Value0) min: (recoveredBlock111Value2).
    recoveredLocal3 := recoveredBlock111Value3.
    recoveredBlock111Value4 := recoveredLocal2.
    recoveredBlock111Value5 := recoveredBlock111Arg1.
    recoveredBlock111Value6 := (recoveredBlock111Value5) getPosition.
    recoveredBlock111Value7 := (recoveredBlock111Value4) max: (recoveredBlock111Value6).
    recoveredBlock111Value8 := recoveredBlock111Value7.
    recoveredLocal2 := recoveredBlock111Value8.
    recoveredBlock111Value7
].
    (recoveredValue16) do: (recoveredValue17).
    recoveredValue18 := recoveredLocal2.
    recoveredValue19 := recoveredLocal3.
    recoveredValue20 := (recoveredValue18) - (recoveredValue19).
    recoveredLocal6 := recoveredValue20.
    recoveredValue21 := (self) memoryGO.
    recoveredValue22 := (recoveredValue21) logicFrame.
    recoveredValue23 := (recoveredValue22) leftTop.
    recoveredLocal1 := recoveredValue23.
    recoveredValue24 := (self) memoryGO.
    recoveredValue25 := (recoveredValue24) frameGO.
    recoveredValue26 := (self) memoryGO.
    recoveredValue27 := (recoveredValue26) frameGO.
    recoveredValue28 := (recoveredValue27) size.
    recoveredValue29 := recoveredLocal6.
    recoveredValue30 := (self) memoryGO.
    recoveredValue31 := (self) getRasterPoint: (recoveredValue29) gO: (recoveredValue30).
    recoveredValue32 := (recoveredValue31) // (2).
    recoveredValue33 := (recoveredValue28) max: (recoveredValue32).
    (recoveredValue25) size: (recoveredValue33).
    recoveredValue34 := (self) memoryGO.
    recoveredValue35 := recoveredLocal1.
    recoveredValue36 := recoveredLocal6.
    recoveredValue37 := (recoveredValue36) // (2).
    recoveredValue38 := (recoveredValue35) + (recoveredValue37).
    (recoveredValue34) moveToWithoutInterfaceGOs: (recoveredValue38).
    recoveredValue39 := recoveredLocal5.
    recoveredValue40 := [:recoveredBlock205Arg1 | 
    | recoveredBlock205Local1 recoveredBlock205Stack0 recoveredBlock205Stack1 recoveredBlock205Stack2 recoveredBlock205Stack3 recoveredBlock205Stack4 recoveredBlock205PC recoveredBlock205Step recoveredBlock205Done recoveredBlock205Result |
    recoveredBlock205Stack0 := self.
    recoveredBlock205PC := 212.
    recoveredBlock205Done := false.
    [recoveredBlock205Done not] whileTrue: [
        recoveredBlock205Step := recoveredBlock205PC.
        recoveredBlock205Step = 212 ifTrue: [
            recoveredBlock205Stack1 := nil.
            recoveredBlock205PC := 213.
        ].
        recoveredBlock205Step = 213 ifTrue: [
            recoveredBlock205Stack2 := recoveredBlock205Arg1.
            recoveredBlock205PC := 214.
        ].
        recoveredBlock205Step = 214 ifTrue: [
            recoveredBlock205Stack2 := (recoveredBlock205Stack2) ownerList.
            recoveredBlock205PC := 216.
        ].
        recoveredBlock205Step = 216 ifTrue: [
            recoveredBlock205Stack2 := (recoveredBlock205Stack2) isEmpty.
            recoveredBlock205PC := 218.
        ].
        recoveredBlock205Step = 218 ifTrue: [
            (recoveredBlock205Stack2) ifTrue: [recoveredBlock205PC := 222] ifFalse: [recoveredBlock205PC := 270].
        ].
        recoveredBlock205Step = 222 ifTrue: [
            recoveredBlock205PC := 223.
        ].
        recoveredBlock205Step = 223 ifTrue: [
            recoveredBlock205Stack1 := 'Kk'.
            recoveredBlock205PC := 225.
        ].
        recoveredBlock205Step = 225 ifTrue: [
            recoveredBlock205Stack2 := 'Call_55320'.
            recoveredBlock205PC := 227.
        ].
        recoveredBlock205Step = 227 ifTrue: [
            recoveredBlock205Stack1 := (recoveredBlock205Stack1) = (recoveredBlock205Stack2).
            recoveredBlock205PC := 228.
        ].
        recoveredBlock205Step = 228 ifTrue: [
            recoveredBlock205PC := 229.
        ].
        recoveredBlock205Step = 229 ifTrue: [
            recoveredBlock205Stack1 := 'Hw'.
            recoveredBlock205PC := 231.
        ].
        recoveredBlock205Step = 231 ifTrue: [
            recoveredBlock205Stack2 := 'call_84848'.
            recoveredBlock205PC := 233.
        ].
        recoveredBlock205Step = 233 ifTrue: [
            recoveredBlock205Stack1 := (recoveredBlock205Stack1) == (recoveredBlock205Stack2).
            recoveredBlock205PC := 234.
        ].
        recoveredBlock205Step = 234 ifTrue: [
            recoveredBlock205PC := 235.
        ].
        recoveredBlock205Step = 235 ifTrue: [
            recoveredBlock205Stack1 := self.
            recoveredBlock205PC := 236.
        ].
        recoveredBlock205Step = 236 ifTrue: [
            recoveredBlock205Stack2 := recoveredBlock205Arg1.
            recoveredBlock205PC := 237.
        ].
        recoveredBlock205Step = 237 ifTrue: [
            recoveredBlock205Stack2 := (recoveredBlock205Stack2) method.
            recoveredBlock205PC := 239.
        ].
        recoveredBlock205Step = 239 ifTrue: [
            recoveredBlock205Stack3 := self.
            recoveredBlock205PC := 240.
        ].
        recoveredBlock205Step = 240 ifTrue: [
            recoveredBlock205Stack3 := (recoveredBlock205Stack3) memoryGO.
            recoveredBlock205PC := 241.
        ].
        recoveredBlock205Step = 241 ifTrue: [
            recoveredBlock205Stack1 := (recoveredBlock205Stack1) lookupMethod: (recoveredBlock205Stack2) inInterfacesOf: (recoveredBlock205Stack3).
            recoveredBlock205PC := 243.
        ].
        recoveredBlock205Step = 243 ifTrue: [
            recoveredBlock205Stack2 := recoveredBlock205Stack1.
            recoveredBlock205PC := 244.
        ].
        recoveredBlock205Step = 244 ifTrue: [
            recoveredBlock205Local1 := recoveredBlock205Stack2.
            recoveredBlock205PC := 245.
        ].
        recoveredBlock205Step = 245 ifTrue: [
            (recoveredBlock205Stack1 ~~ nil) ifTrue: [recoveredBlock205PC := 258] ifFalse: [recoveredBlock205PC := 248].
        ].
        recoveredBlock205Step = 248 ifTrue: [
            recoveredBlock205Stack1 := self.
            recoveredBlock205PC := 249.
        ].
        recoveredBlock205Step = 249 ifTrue: [
            recoveredBlock205Stack1 := (recoveredBlock205Stack1) memoryGO.
            recoveredBlock205PC := 250.
        ].
        recoveredBlock205Step = 250 ifTrue: [
            recoveredBlock205Stack2 := recoveredBlock205Arg1.
            recoveredBlock205PC := 251.
        ].
        recoveredBlock205Step = 251 ifTrue: [
            recoveredBlock205Stack2 := (recoveredBlock205Stack2) method.
            recoveredBlock205PC := 253.
        ].
        recoveredBlock205Step = 253 ifTrue: [
            recoveredBlock205Stack1 := (recoveredBlock205Stack1) addInterface: (recoveredBlock205Stack2).
            recoveredBlock205PC := 255.
        ].
        recoveredBlock205Step = 255 ifTrue: [
            recoveredBlock205PC := 268.
        ].
        recoveredBlock205Step = 258 ifTrue: [
            recoveredBlock205Stack1 := 'hw'.
            recoveredBlock205PC := 260.
        ].
        recoveredBlock205Step = 260 ifTrue: [
            recoveredBlock205Stack2 := 'call_79836'.
            recoveredBlock205PC := 262.
        ].
        recoveredBlock205Step = 262 ifTrue: [
            recoveredBlock205Stack1 := (recoveredBlock205Stack1) == (recoveredBlock205Stack2).
            recoveredBlock205PC := 263.
        ].
        recoveredBlock205Step = 263 ifTrue: [
            recoveredBlock205PC := 264.
        ].
        recoveredBlock205Step = 264 ifTrue: [
            recoveredBlock205Stack1 := recoveredBlock205Local1.
            recoveredBlock205PC := 265.
        ].
        recoveredBlock205Step = 265 ifTrue: [
            recoveredBlock205Stack2 := true.
            recoveredBlock205PC := 266.
        ].
        recoveredBlock205Step = 266 ifTrue: [
            recoveredBlock205Stack1 := (recoveredBlock205Stack1) userVisibility: (recoveredBlock205Stack2).
            recoveredBlock205PC := 268.
        ].
        recoveredBlock205Step = 268 ifTrue: [
            recoveredBlock205Stack2 := nil.
            recoveredBlock205PC := 269.
        ].
        recoveredBlock205Step = 269 ifTrue: [
            recoveredBlock205Local1 := recoveredBlock205Stack2.
            recoveredBlock205PC := 270.
        ].
        recoveredBlock205Step = 270 ifTrue: [
            recoveredBlock205Result := recoveredBlock205Stack1.
            recoveredBlock205Done := true.
        ].
    ].
    recoveredBlock205Result
].
    (recoveredValue39) do: (recoveredValue40).
    recoveredValue41 := (self) memoryGO.
    (recoveredValue41) repositionInterfaces.
    recoveredValue42 := (self) memoryGO.
    recoveredValue43 := (recoveredValue42) manager.
    recoveredValue44 := (recoveredValue43) controller.
    recoveredValue45 := [:recoveredBlock283Arg1 | 
    | recoveredBlock283Value0 recoveredBlock283Value1 recoveredBlock283Value2 recoveredBlock283Value3 |
    recoveredBlock283Value0 := recoveredBlock283Arg1.
    recoveredBlock283Value1 := (self) memoryGO.
    recoveredBlock283Value2 := (recoveredBlock283Value1) giveRedisplayRects.
    recoveredBlock283Value3 := (recoveredBlock283Value0) displayRects: (recoveredBlock283Value2).
    recoveredBlock283Value3
].
    (recoveredValue44) ifNotNil: (recoveredValue45).
    ^self
! !

