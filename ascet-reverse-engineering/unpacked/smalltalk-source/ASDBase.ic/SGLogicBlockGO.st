"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20001ed8; bytecode file offset 0x8ffcfc"
!SGLogicBlockGO methodsFor: 'recovered'!
repositionScopeGO
    ^self
! !

"ASDBase.ic method 0x200026b8; bytecode file offset 0x8ffcfc"
!SGLogicBlockGO methodsFor: 'recovered'!
getBlock
    ^self
! !

"ASDBase.ic method 0x20008858; bytecode file offset 0x908be4"
!SGLogicBlockGO methodsFor: 'recovered'!
menuLabelInputAdd
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20009d70; bytecode file offset 0x908be4"
!SGLogicBlockGO methodsFor: 'recovered'!
label
    | recoveredValue0 |
    recoveredValue0 := (self) getActualName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20009ea8; bytecode file offset 0x908be4"
!SGLogicBlockGO methodsFor: 'recovered'!
menuLabelInputRemove
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000a9c4; bytecode file offset 0x908be4"
!SGLogicBlockGO methodsFor: 'recovered'!
growForMorePins
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000d75c; bytecode file offset 0x90a4b8"
!SGLogicBlockGO methodsFor: 'recovered'!
correctedScalePoint: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2002fb84; bytecode file offset 0x934580"
!SGLogicBlockGO methodsFor: 'recovered'!
logicFrame
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) frameGO.
    recoveredValue1 := (recoveredValue0) logicFrame.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003d1e8; bytecode file offset 0x93bf94"
!SGLogicBlockGO methodsFor: 'recovered'!
conditions
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200551e8; bytecode file offset 0x952a9c"
!SGLogicBlockGO methodsFor: 'recovered'!
addBlockChildrenTo: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) add: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005f39c; bytecode file offset 0x95c4f4"
!SGLogicBlockGO methodsFor: 'recovered'!
getMinimalOffsetY
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) logicFrame.
    recoveredValue1 := (recoveredValue0) top.
    recoveredValue2 := (self) getMinimalOffsetForValue: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005f84c; bytecode file offset 0x95c4f4"
!SGLogicBlockGO methodsFor: 'recovered'!
getMinimalOffsetX
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) logicFrame.
    recoveredValue1 := (recoveredValue0) left.
    recoveredValue2 := (self) getMinimalOffsetForValue: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2006eab8; bytecode file offset 0x96b41c"
!SGLogicBlockGO methodsFor: 'recovered'!
iconGO
    | recoveredValue0 |
    recoveredValue0 := iconGO.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006ef5c; bytecode file offset 0x96b8a0"
!SGLogicBlockGO methodsFor: 'recovered'!
frameGO
    | recoveredValue0 |
    recoveredValue0 := frameGO.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006f2a8; bytecode file offset 0x96bc1c"
!SGLogicBlockGO methodsFor: 'recovered'!
actualNameGO
    | recoveredValue0 |
    recoveredValue0 := actualNameGO.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006f400; bytecode file offset 0x96bf7c"
!SGLogicBlockGO methodsFor: 'recovered'!
interfaceGOs
    | recoveredValue0 |
    recoveredValue0 := interfaceGOs.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006f7f8; bytecode file offset 0x96c1f4"
!SGLogicBlockGO methodsFor: 'recovered'!
getSelectFlag
    | recoveredValue0 |
    recoveredValue0 := selectFlag.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006faa8; bytecode file offset 0x96c42c"
!SGLogicBlockGO methodsFor: 'recovered'!
identifier
    | recoveredValue0 |
    recoveredValue0 := representedObject.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20073e90; bytecode file offset 0x970b34"
!SGLogicBlockGO methodsFor: 'recovered'!
fromHierarchyState
    ^nil
! !

"ASDBase.ic method 0x2007553c; bytecode file offset 0x9757c8"
!SGLogicBlockGO methodsFor: 'recovered'!
isBlockGO
    ^true
! !

"ASDBase.ic method 0x2007726c; bytecode file offset 0x9757c8"
!SGLogicBlockGO methodsFor: 'recovered'!
sortPortSelectionList
    ^true
! !

"ASDBase.ic method 0x200781bc; bytecode file offset 0x9757c8"
!SGLogicBlockGO methodsFor: 'recovered'!
canBeCopiedByControl
    ^true
! !

"ASDBase.ic method 0x20078e44; bytecode file offset 0x9757c8"
!SGLogicBlockGO methodsFor: 'recovered'!
isIntersectionGO
    ^true
! !

"ASDBase.ic method 0x200797f4; bytecode file offset 0x97c330"
!SGLogicBlockGO methodsFor: 'recovered'!
isInputRemovePossible
    ^false
! !

"ASDBase.ic method 0x2007b70c; bytecode file offset 0x97c330"
!SGLogicBlockGO methodsFor: 'recovered'!
flexibleCreated
    ^false
! !

"ASDBase.ic method 0x2007d624; bytecode file offset 0x97c330"
!SGLogicBlockGO methodsFor: 'recovered'!
isInputAddPossible
    ^false
! !

"ASDBase.ic method 0x2008430c; bytecode file offset 0x981ca4"
!SGLogicBlockGO methodsFor: 'recovered'!
scale: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) scaleBasic: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200879c4; bytecode file offset 0x9842f0"
!SGLogicBlockGO methodsFor: 'recovered'!
desiredRasterSize
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := PinDistance.
    recoveredValue1 := PinDistance.
    recoveredValue2 := (recoveredValue0) @ (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008d678; bytecode file offset 0x989f3c"
!SGLogicBlockGO methodsFor: 'recovered'!
iconOffset
    | recoveredValue0 |
    recoveredValue0 := (0) @ (0).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2009091c; bytecode file offset 0x98d1e8"
!SGLogicBlockGO methodsFor: 'recovered'!
isConnectedTwice
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) connectedInterfaceElementGOs.
    recoveredValue1 := (recoveredValue0) size.
    recoveredValue2 := (recoveredValue1) >= (2).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200930f4; bytecode file offset 0x98fa00"
!SGLogicBlockGO methodsFor: 'recovered'!
changeActualName: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := actualNameGO.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) text: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20093124; bytecode file offset 0x98fa00"
!SGLogicBlockGO methodsFor: 'recovered'!
showActualName: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := actualNameGO.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) visible: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200942e0; bytecode file offset 0x990b94"
!SGLogicBlockGO methodsFor: 'recovered'!
iconGO: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    iconGO := recoveredValue0.
    recoveredValue1 := iconGO.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200942f4; bytecode file offset 0x990ba8"
!SGLogicBlockGO methodsFor: 'recovered'!
frameGO: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    frameGO := recoveredValue0.
    recoveredValue1 := frameGO.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200ab19c; bytecode file offset 0x9a7a98"
!SGLogicBlockGO methodsFor: 'recovered'!
updateWhileMoving: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) controller.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) highlightIntersectingBlocksFor: (self) whileMoving: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200b9374; bytecode file offset 0x9b5c30"
!SGLogicBlockGO methodsFor: 'recovered'!
markContainedAsIntersected: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := ('hw') == ('call_2008402926').
    ^true
! !

"ASDBase.ic method 0x200c59a4; bytecode file offset 0x9c22c8"
!SGLogicBlockGO methodsFor: 'recovered'!
actualNameGO: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    actualNameGO := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5c10; bytecode file offset 0x9c25bc"
!SGLogicBlockGO methodsFor: 'recovered'!
interfaceGOs: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    interfaceGOs := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5e38; bytecode file offset 0x9c2804"
!SGLogicBlockGO methodsFor: 'recovered'!
setSelectFlag: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    selectFlag := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c6228; bytecode file offset 0x9c2bec"
!SGLogicBlockGO methodsFor: 'recovered'!
intersection: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    intersection := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200dc49c; bytecode file offset 0x9d8d58"
!SGLogicBlockGO methodsFor: 'recovered'!
promptForConnectionPin: recoveredArg1 with: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) interfaceGOs.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (self) lookupConnectionPointFor: (recoveredValue0) interfaces: (recoveredValue1) with: (recoveredValue2) alwaysShowSelectionList: (true).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200e5640; bytecode file offset 0x9e1f3c"
!SGLogicBlockGO methodsFor: 'recovered'!
changeActualName
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) actualNameGO.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) actualNameGO.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) changeText.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200e7828; bytecode file offset 0x9e40ec"
!SGLogicBlockGO methodsFor: 'recovered'!
identifier: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := representedObject.
    recoveredValue1 := recoveredArg1.
    (self) checkIdentiferOldValue: (recoveredValue0) newValue: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    representedObject := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200e7e00; bytecode file offset 0x9e46b8"
!SGLogicBlockGO methodsFor: 'recovered'!
isReplaceableWith: recoveredArg1
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
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) isBlockGO.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isBlockGO.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x200f774c; bytecode file offset 0x9f4e38"
!SGLogicBlockGO methodsFor: 'recovered'!
connNamesVisible
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceGOs.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c48f0Arg1 | 
    | block280c48f0Value0 block280c48f0Value1 |
    block280c48f0Value0 := block280c48f0Arg1.
    block280c48f0Value1 := (block280c48f0Value0) connNamesVisible.
    block280c48f0Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) anySatisfy: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200f79bc; bytecode file offset 0x9f4e38"
!SGLogicBlockGO methodsFor: 'recovered'!
inputs
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceElementGOs.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c4c98Arg1 | 
    | block280c4c98Value0 block280c4c98Value1 |
    block280c4c98Value0 := block280c4c98Arg1.
    block280c4c98Value1 := (block280c4c98Value0) hasArgumentPin.
    block280c4c98Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200f7e24; bytecode file offset 0x9f4e38"
!SGLogicBlockGO methodsFor: 'recovered'!
outputs
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceElementGOs.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c5334Arg1 | 
    | block280c5334Value0 block280c5334Value1 |
    block280c5334Value0 := block280c5334Arg1.
    block280c5334Value1 := (block280c5334Value0) hasResultPin.
    block280c5334Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200f7fec; bytecode file offset 0x9f4e38"
!SGLogicBlockGO methodsFor: 'recovered'!
connectorGOs
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceElementGOs.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c55e0Arg1 | 
    | block280c55e0Value0 block280c55e0Value1 |
    block280c55e0Value0 := block280c55e0Arg1.
    block280c55e0Value1 := (block280c55e0Value0) externalConnectorGO.
    block280c55e0Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200f8064; bytecode file offset 0x9f4e38"
!SGLogicBlockGO methodsFor: 'recovered'!
interfaceGOsWithoutMissingPorts
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceGOs.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c5694Arg1 | 
    | block280c5694Value0 block280c5694Value1 |
    block280c5694Value0 := block280c5694Arg1.
    block280c5694Value1 := (block280c5694Value0) isMissingPort.
    block280c5694Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) reject: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200f8124; bytecode file offset 0x9f4e38"
!SGLogicBlockGO methodsFor: 'recovered'!
connectedInterfaceElementGOs
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceElementGOs.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c57b4Arg1 | 
    | block280c57b4Value0 block280c57b4Value1 |
    block280c57b4Value0 := block280c57b4Arg1.
    block280c57b4Value1 := (block280c57b4Value0) isConnected.
    block280c57b4Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200f93b8; bytecode file offset 0x9f5ca0"
!SGLogicBlockGO methodsFor: 'recovered'!
visualCallBackImage
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) iconGO.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 11] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := 'GeneralError'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) iconGO.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) name.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2010aa08; bytecode file offset 0xa072f4"
!SGLogicBlockGO methodsFor: 'recovered'!
asdDatabaseLink
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) manager.
    recoveredValue1 := (recoveredValue0) asdDatabaseLink.
    recoveredValue2 := (recoveredValue1) , ('.[ID]').
    recoveredValue3 := (self) identifier.
    recoveredValue4 := (recoveredValue3) printString.
    recoveredValue5 := (recoveredValue2) , (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x2010d454; bytecode file offset 0xa09d10"
!SGLogicBlockGO methodsFor: 'recovered'!
repositionNamePossibleFor: recoveredArg1
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
            recoveredStack2 := (recoveredStack2) actualNameGO.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) actualNameGO.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20116794; bytecode file offset 0xa13050"
!SGLogicBlockGO methodsFor: 'recovered'!
getActualName
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := actualNameGO.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := actualNameGO.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) getText.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2011b5f8; bytecode file offset 0xa17ebc"
!SGLogicBlockGO methodsFor: 'recovered'!
updateFontActualNames
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) actualNameGO.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) actualNameGO.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := FontNames.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) font.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) setFont: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2011e090; bytecode file offset 0xa1a94c"
!SGLogicBlockGO methodsFor: 'recovered'!
updateText: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := manager.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := manager.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) controller.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) graphicsModified: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2012a72c; bytecode file offset 0xa26fe4"
!SGLogicBlockGO methodsFor: 'recovered'!
getFont
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := actualNameGO.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := actualNameGO.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) getFont.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := manager.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) getFont.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20136d74; bytecode file offset 0xa33658"
!SGLogicBlockGO methodsFor: 'recovered'!
hideInterfaceNames
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    (self) hideInterfaceNames: (recoveredValue2).
    recoveredValue3 := (self) controller.
    recoveredValue4 := recoveredLocal1.
    (recoveredValue3) displayRectsSetModified: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20136d90; bytecode file offset 0xa33658"
!SGLogicBlockGO methodsFor: 'recovered'!
showInterfaceNames
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    (self) showInterfaceNames: (recoveredValue2).
    recoveredValue3 := (self) controller.
    recoveredValue4 := recoveredLocal1.
    (recoveredValue3) displayRectsSetModified: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x201378bc; bytecode file offset 0xa34188"
!SGLogicBlockGO methodsFor: 'recovered'!
displayWithBlackFrame
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) frameGO.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := (recoveredValue1) lineStyle.
    recoveredValue3 := RBColorManager.
    recoveredValue4 := (recoveredValue3) namedColor: ('black').
    (recoveredValue2) color: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x2013bd5c; bytecode file offset 0xa3861c"
!SGLogicBlockGO methodsFor: 'recovered'!
intersection
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := intersection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := Set.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) intersection: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := intersection.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2013e438; bytecode file offset 0xa3ad84"
!SGLogicBlockGO methodsFor: 'recovered'!
toggleInterfaceNameVisibility
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) connNamesVisible.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) hideInterfaceNames.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) showInterfaceNames.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20146d88; bytecode file offset 0xa43650"
!SGLogicBlockGO methodsFor: 'recovered'!
connectStartPoint: recoveredArg1 endPoint: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := SGConnectionWrapperGO.
    recoveredValue1 := SGOrthogonalLineGO.
    recoveredValue2 := ConnectionLineStyle.
    recoveredValue3 := (recoveredValue1) createWithLineStyle: (recoveredValue2) manager: (nil).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := (recoveredValue0) createWith: (recoveredValue3) startPoint: (recoveredValue4) endPoint: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x201552ac; bytecode file offset 0xa51b68"
!SGLogicBlockGO methodsFor: 'recovered'!
isSameType: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getActualName.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) getActualName.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) getActualName.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2015ef20; bytecode file offset 0xa5b804"
!SGLogicBlockGO methodsFor: 'recovered'!
resetAllIdentifiers
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) identifier: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceGOs.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := [:block280cdd04Arg1 | 
    | block280cdd04Value0 block280cdd04Value1 |
    block280cdd04Value0 := block280cdd04Arg1.
    block280cdd04Value1 := (block280cdd04Value0) resetAllIdentifiers.
    block280cdd04Value1
].
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20166acc; bytecode file offset 0xa63390"
!SGLogicBlockGO methodsFor: 'recovered'!
fitMyPartsToRaster: recoveredArg1
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
            super fitMyPartsToRaster: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) actualNameGO.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) actualNameGO.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) fitToRaster: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20177d40; bytecode file offset 0xa7490c"
!SGLogicBlockGO methodsFor: 'recovered'!
hideInterfaceNames: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) interfaceGOs.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredArg1.
    recoveredBlock5Value2 := (recoveredBlock5Value0) hideNames: (recoveredBlock5Value1).
    recoveredBlock5Value2
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20177d7c; bytecode file offset 0xa7490c"
!SGLogicBlockGO methodsFor: 'recovered'!
showInterfaceNames: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) interfaceGOs.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredArg1.
    recoveredBlock5Value2 := (recoveredBlock5Value0) showNames: (recoveredBlock5Value1).
    recoveredBlock5Value2
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x201787a4; bytecode file offset 0xa75068"
!SGLogicBlockGO methodsFor: 'recovered'!
adaptMinSize: recoveredArg1 forGO: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) isVisible.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) logicFrame.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) extent.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) max: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20183978; bytecode file offset 0xa80278"
!SGLogicBlockGO methodsFor: 'recovered'!
getNameInfo
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) actualNameGO.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) getText.
    ^recoveredBlock5Value1
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    recoveredValue2 := super getNameInfo.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2018bd84; bytecode file offset 0xa88648"
!SGLogicBlockGO methodsFor: 'recovered'!
changeToActiveState: recoveredArg1 display: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) activeStateWrapperClass.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) createWith: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) manager.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) graphObject: (recoveredStack1) changeToSensitivePointWrapper: (recoveredStack2) display: (recoveredStack3).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
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

"ASDBase.ic method 0x2018c624; bytecode file offset 0xa88ee8"
!SGLogicBlockGO methodsFor: 'recovered'!
addIntersection: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) intersection.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) displayWithRedFrame.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201b1d68; bytecode file offset 0xaae674"
!SGLogicBlockGO methodsFor: 'recovered'!
isConnected
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceElementGOs.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280d3fe0Arg1 | 
    | block280d3fe0Value0 block280d3fe0Value1 |
    block280d3fe0Value0 := block280d3fe0Arg1.
    block280d3fe0Value1 := (block280d3fe0Value0) isConnected.
    block280d3fe0Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := [
    ^false
].
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201b1e14; bytecode file offset 0xaae6d8"
!SGLogicBlockGO methodsFor: 'recovered'!
isUnconnected
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceElementGOs.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280d40b8Arg1 | 
    | block280d40b8Value0 block280d40b8Value1 |
    block280d40b8Value0 := block280d40b8Arg1.
    block280d40b8Value1 := (block280d40b8Value0) isConnected.
    block280d40b8Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := [
    ^true
].
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201cbbac; bytecode file offset 0xac8474"
!SGLogicBlockGO methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) printString.
    (recoveredValue1) nextPutAll: (recoveredValue3).
    recoveredValue4 := recoveredValue0.
    (recoveredValue4) cr.
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := (self) getActualName.
    recoveredValue7 := (recoveredValue6) printString.
    (recoveredValue5) nextPutAll: (recoveredValue7).
    (recoveredValue0) cr.
    recoveredValue8 := recoveredArg1.
    (recoveredValue8) cr.
    ^self
! !

"ASDBase.ic method 0x201cbea8; bytecode file offset 0xac8768"
!SGLogicBlockGO methodsFor: 'recovered'!
getMinimalOffsetForValue: recoveredArg1
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
            recoveredStack2 := PinDistance.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) // (recoveredStack3).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) roundTo: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) odd.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := PinDistance.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) // (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := PinDistance.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201f9aa8; bytecode file offset 0xaf6384"
!SGLogicBlockGO methodsFor: 'recovered'!
deleteIntersectionFor: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
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
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) removeIntersection: (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) removeIntersection: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201f9ac0; bytecode file offset 0xaf6384"
!SGLogicBlockGO methodsFor: 'recovered'!
insertIntersectionFor: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
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
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) addIntersection: (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) addIntersection: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201fe578; bytecode file offset 0xafae44"
!SGLogicBlockGO methodsFor: 'recovered'!
connectorNamesAsString
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceGOs.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280d8a8cArg1 | 
    | block280d8a8cStack0 block280d8a8cStack1 block280d8a8cStack2 block280d8a8cStack3 block280d8a8cPC block280d8a8cStep block280d8a8cDone block280d8a8cResult |
    block280d8a8cStack0 := self.
    block280d8a8cPC := 4.
    block280d8a8cDone := false.
    [block280d8a8cDone not] whileTrue: [
        block280d8a8cStep := block280d8a8cPC.
        block280d8a8cStep = 4 ifTrue: [
            block280d8a8cStack1 := block280d8a8cArg1.
            block280d8a8cPC := 5.
        ].
        block280d8a8cStep = 5 ifTrue: [
            block280d8a8cStack1 := (block280d8a8cStack1) interfaceGOs.
            block280d8a8cPC := 6.
        ].
        block280d8a8cStep = 6 ifTrue: [
            block280d8a8cStack2 := [:block280d8ab0Arg1 | 
    | block280d8ab0Value0 block280d8ab0Value1 block280d8ab0Value2 block280d8ab0Value3 |
    block280d8ab0Value0 := block280d8ab0Arg1.
    block280d8ab0Value1 := block280d8ab0Arg1.
    block280d8ab0Value2 := (block280d8ab0Value1) connectorName.
    block280d8ab0Value3 := (block280d8ab0Value0) setConnectorNameGO: (block280d8ab0Value2).
    block280d8ab0Value3
].
            block280d8a8cPC := 8.
        ].
        block280d8a8cStep = 8 ifTrue: [
            block280d8a8cPC := 18.
        ].
        block280d8a8cStep = 18 ifTrue: [
            block280d8a8cStack1 := (block280d8a8cStack1) do: (block280d8a8cStack2).
            block280d8a8cPC := 20.
        ].
        block280d8a8cStep = 20 ifTrue: [
            block280d8a8cResult := block280d8a8cStack1.
            block280d8a8cDone := true.
        ].
    ].
    block280d8a8cResult
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2021fde0; bytecode file offset 0xb1c6ac"
!SGLogicBlockGO methodsFor: 'recovered'!
deleteAllIntersections
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Set.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) intersection.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 |
    recoveredBlock11Value0 := recoveredLocal1.
    recoveredBlock11Value1 := recoveredBlock11Arg1.
    recoveredBlock11Value2 := (self) deleteIntersectionFor: (recoveredBlock11Value1).
    recoveredBlock11Value3 := (recoveredBlock11Value0) addAll: (recoveredBlock11Value2).
    recoveredBlock11Value3
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x20226120; bytecode file offset 0xb229ec"
!SGLogicBlockGO methodsFor: 'recovered'!
getSGCallGO
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceGOs.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280dc380Arg1 | 
    | block280dc380Value0 block280dc380Value1 |
    block280dc380Value0 := block280dc380Arg1.
    block280dc380Value1 := (block280dc380Value0) isSelectorPort.
    block280dc380Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := [:block280dc3a4Arg1 | 
    | block280dc3a4Value0 block280dc3a4Value1 |
    block280dc3a4Value0 := block280dc3a4Arg1.
    block280dc3a4Value1 := (block280dc3a4Value0) getSGCallGO.
    block280dc3a4Value1
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := [
    ^nil
].
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifOne: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202374f8; bytecode file offset 0xb33dc0"
!SGLogicBlockGO methodsFor: 'recovered'!
interfaceElementGOs
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) interfaceGOs.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 recoveredBlock11Value4 |
    recoveredBlock11Value0 := recoveredLocal1.
    recoveredBlock11Value1 := recoveredBlock11Arg1.
    recoveredBlock11Value2 := (recoveredBlock11Value1) interfaceGOs.
    recoveredBlock11Value3 := (recoveredBlock11Value0) , (recoveredBlock11Value2).
    recoveredBlock11Value4 := recoveredBlock11Value3.
    recoveredLocal1 := recoveredBlock11Value4.
    recoveredBlock11Value3
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x20284fcc; bytecode file offset 0xb818c0"
!SGLogicBlockGO methodsFor: 'recovered'!
canBeScaledSmallerUp: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:block280e1894Arg1 | 
    | block280e1894Stack0 block280e1894Stack1 block280e1894Stack2 block280e1894Stack3 block280e1894PC block280e1894Step block280e1894Done block280e1894Result |
    block280e1894Stack0 := self.
    block280e1894PC := 4.
    block280e1894Done := false.
    [block280e1894Done not] whileTrue: [
        block280e1894Step := block280e1894PC.
        block280e1894Step = 4 ifTrue: [
            block280e1894Stack1 := true.
            block280e1894PC := 5.
        ].
        block280e1894Step = 5 ifTrue: [
            block280e1894Stack2 := block280e1894Arg1.
            block280e1894PC := 6.
        ].
        block280e1894Step = 6 ifTrue: [
            block280e1894Stack2 := (block280e1894Stack2) goesLeft.
            block280e1894PC := 7.
        ].
        block280e1894Step = 7 ifTrue: [
            (block280e1894Stack2) ifTrue: [block280e1894PC := 13] ifFalse: [block280e1894PC := 10].
        ].
        block280e1894Step = 10 ifTrue: [
            block280e1894PC := 11.
        ].
        block280e1894Step = 11 ifTrue: [
            block280e1894Stack1 := block280e1894Arg1.
            block280e1894PC := 12.
        ].
        block280e1894Step = 12 ifTrue: [
            block280e1894Stack1 := (block280e1894Stack1) goesRight.
            block280e1894PC := 13.
        ].
        block280e1894Step = 13 ifTrue: [
            block280e1894Result := block280e1894Stack1.
            block280e1894Done := true.
        ].
    ].
    block280e1894Result
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := [:recoveredBlock20Arg1 | 
    | recoveredBlock20Value0 recoveredBlock20Value1 recoveredBlock20Value2 recoveredBlock20Value3 recoveredBlock20Value4 recoveredBlock20Value5 recoveredBlock20Value6 |
    recoveredBlock20Value0 := recoveredBlock20Arg1.
    recoveredBlock20Value1 := (recoveredBlock20Value0) getPosition.
    recoveredBlock20Value2 := (recoveredBlock20Value1) y.
    recoveredBlock20Value3 := (self) getMinimalOffsetY.
    recoveredBlock20Value4 := (recoveredBlock20Value2) + (recoveredBlock20Value3).
    recoveredBlock20Value5 := recoveredArg1.
    recoveredBlock20Value6 := (recoveredBlock20Value4) > (recoveredBlock20Value5).
    recoveredBlock20Value6
].
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) canBeScaledSmallerPinCond: (recoveredStack1) condition: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20284ff0; bytecode file offset 0xb818c0"
!SGLogicBlockGO methodsFor: 'recovered'!
canBeScaledSmallerRight: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:block280e18b8Arg1 | 
    | block280e18b8Stack0 block280e18b8Stack1 block280e18b8Stack2 block280e18b8Stack3 block280e18b8PC block280e18b8Step block280e18b8Done block280e18b8Result |
    block280e18b8Stack0 := self.
    block280e18b8PC := 4.
    block280e18b8Done := false.
    [block280e18b8Done not] whileTrue: [
        block280e18b8Step := block280e18b8PC.
        block280e18b8Step = 4 ifTrue: [
            block280e18b8Stack1 := true.
            block280e18b8PC := 5.
        ].
        block280e18b8Step = 5 ifTrue: [
            block280e18b8Stack2 := block280e18b8Arg1.
            block280e18b8PC := 6.
        ].
        block280e18b8Step = 6 ifTrue: [
            block280e18b8Stack2 := (block280e18b8Stack2) goesUp.
            block280e18b8PC := 7.
        ].
        block280e18b8Step = 7 ifTrue: [
            (block280e18b8Stack2) ifTrue: [block280e18b8PC := 13] ifFalse: [block280e18b8PC := 10].
        ].
        block280e18b8Step = 10 ifTrue: [
            block280e18b8PC := 11.
        ].
        block280e18b8Step = 11 ifTrue: [
            block280e18b8Stack1 := block280e18b8Arg1.
            block280e18b8PC := 12.
        ].
        block280e18b8Step = 12 ifTrue: [
            block280e18b8Stack1 := (block280e18b8Stack1) goesDown.
            block280e18b8PC := 13.
        ].
        block280e18b8Step = 13 ifTrue: [
            block280e18b8Result := block280e18b8Stack1.
            block280e18b8Done := true.
        ].
    ].
    block280e18b8Result
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := [:recoveredBlock20Arg1 | 
    | recoveredBlock20Value0 recoveredBlock20Value1 recoveredBlock20Value2 recoveredBlock20Value3 recoveredBlock20Value4 recoveredBlock20Value5 recoveredBlock20Value6 |
    recoveredBlock20Value0 := recoveredBlock20Arg1.
    recoveredBlock20Value1 := (recoveredBlock20Value0) getPosition.
    recoveredBlock20Value2 := (recoveredBlock20Value1) x.
    recoveredBlock20Value3 := (self) getMinimalOffsetX.
    recoveredBlock20Value4 := (recoveredBlock20Value2) + (recoveredBlock20Value3).
    recoveredBlock20Value5 := recoveredArg1.
    recoveredBlock20Value6 := (recoveredBlock20Value4) > (recoveredBlock20Value5).
    recoveredBlock20Value6
].
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) canBeScaledSmallerPinCond: (recoveredStack1) condition: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20285040; bytecode file offset 0xb81934"
!SGLogicBlockGO methodsFor: 'recovered'!
canBeScaledSmallerDown: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:block280e18dcArg1 | 
    | block280e18dcStack0 block280e18dcStack1 block280e18dcStack2 block280e18dcStack3 block280e18dcPC block280e18dcStep block280e18dcDone block280e18dcResult |
    block280e18dcStack0 := self.
    block280e18dcPC := 4.
    block280e18dcDone := false.
    [block280e18dcDone not] whileTrue: [
        block280e18dcStep := block280e18dcPC.
        block280e18dcStep = 4 ifTrue: [
            block280e18dcStack1 := true.
            block280e18dcPC := 5.
        ].
        block280e18dcStep = 5 ifTrue: [
            block280e18dcStack2 := block280e18dcArg1.
            block280e18dcPC := 6.
        ].
        block280e18dcStep = 6 ifTrue: [
            block280e18dcStack2 := (block280e18dcStack2) goesLeft.
            block280e18dcPC := 7.
        ].
        block280e18dcStep = 7 ifTrue: [
            (block280e18dcStack2) ifTrue: [block280e18dcPC := 13] ifFalse: [block280e18dcPC := 10].
        ].
        block280e18dcStep = 10 ifTrue: [
            block280e18dcPC := 11.
        ].
        block280e18dcStep = 11 ifTrue: [
            block280e18dcStack1 := block280e18dcArg1.
            block280e18dcPC := 12.
        ].
        block280e18dcStep = 12 ifTrue: [
            block280e18dcStack1 := (block280e18dcStack1) goesRight.
            block280e18dcPC := 13.
        ].
        block280e18dcStep = 13 ifTrue: [
            block280e18dcResult := block280e18dcStack1.
            block280e18dcDone := true.
        ].
    ].
    block280e18dcResult
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := [:recoveredBlock20Arg1 | 
    | recoveredBlock20Value0 recoveredBlock20Value1 recoveredBlock20Value2 recoveredBlock20Value3 recoveredBlock20Value4 recoveredBlock20Value5 recoveredBlock20Value6 |
    recoveredBlock20Value0 := recoveredBlock20Arg1.
    recoveredBlock20Value1 := (recoveredBlock20Value0) getPosition.
    recoveredBlock20Value2 := (recoveredBlock20Value1) y.
    recoveredBlock20Value3 := (self) getMinimalOffsetY.
    recoveredBlock20Value4 := (recoveredBlock20Value2) - (recoveredBlock20Value3).
    recoveredBlock20Value5 := recoveredArg1.
    recoveredBlock20Value6 := (recoveredBlock20Value4) < (recoveredBlock20Value5).
    recoveredBlock20Value6
].
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) canBeScaledSmallerPinCond: (recoveredStack1) condition: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20285064; bytecode file offset 0xb81934"
!SGLogicBlockGO methodsFor: 'recovered'!
canBeScaledSmallerLeft: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:block280e1900Arg1 | 
    | block280e1900Stack0 block280e1900Stack1 block280e1900Stack2 block280e1900Stack3 block280e1900PC block280e1900Step block280e1900Done block280e1900Result |
    block280e1900Stack0 := self.
    block280e1900PC := 4.
    block280e1900Done := false.
    [block280e1900Done not] whileTrue: [
        block280e1900Step := block280e1900PC.
        block280e1900Step = 4 ifTrue: [
            block280e1900Stack1 := true.
            block280e1900PC := 5.
        ].
        block280e1900Step = 5 ifTrue: [
            block280e1900Stack2 := block280e1900Arg1.
            block280e1900PC := 6.
        ].
        block280e1900Step = 6 ifTrue: [
            block280e1900Stack2 := (block280e1900Stack2) goesUp.
            block280e1900PC := 7.
        ].
        block280e1900Step = 7 ifTrue: [
            (block280e1900Stack2) ifTrue: [block280e1900PC := 13] ifFalse: [block280e1900PC := 10].
        ].
        block280e1900Step = 10 ifTrue: [
            block280e1900PC := 11.
        ].
        block280e1900Step = 11 ifTrue: [
            block280e1900Stack1 := block280e1900Arg1.
            block280e1900PC := 12.
        ].
        block280e1900Step = 12 ifTrue: [
            block280e1900Stack1 := (block280e1900Stack1) goesDown.
            block280e1900PC := 13.
        ].
        block280e1900Step = 13 ifTrue: [
            block280e1900Result := block280e1900Stack1.
            block280e1900Done := true.
        ].
    ].
    block280e1900Result
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := [:recoveredBlock20Arg1 | 
    | recoveredBlock20Value0 recoveredBlock20Value1 recoveredBlock20Value2 recoveredBlock20Value3 recoveredBlock20Value4 recoveredBlock20Value5 recoveredBlock20Value6 |
    recoveredBlock20Value0 := recoveredBlock20Arg1.
    recoveredBlock20Value1 := (recoveredBlock20Value0) getPosition.
    recoveredBlock20Value2 := (recoveredBlock20Value1) x.
    recoveredBlock20Value3 := (self) getMinimalOffsetX.
    recoveredBlock20Value4 := (recoveredBlock20Value2) - (recoveredBlock20Value3).
    recoveredBlock20Value5 := recoveredArg1.
    recoveredBlock20Value6 := (recoveredBlock20Value4) < (recoveredBlock20Value5).
    recoveredBlock20Value6
].
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) canBeScaledSmallerPinCond: (recoveredStack1) condition: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20294f58; bytecode file offset 0xb9181c"
!SGLogicBlockGO methodsFor: 'recovered'!
removeIntersection: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) intersection.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := [
    ^false
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) remove: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 39].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) displayWithBlackFrame.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202af8ec; bytecode file offset 0xbac1bc"
!SGLogicBlockGO methodsFor: 'recovered'!
collectInterfacesBlockCond: recoveredArg1 sortBlock: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := SortedCollection.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue0) sortBlock: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := (self) interfaceElementGOs.
    recoveredValue4 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Stack0 recoveredBlock14Stack1 recoveredBlock14Stack2 recoveredBlock14Stack3 recoveredBlock14Stack4 recoveredBlock14PC recoveredBlock14Step recoveredBlock14Done recoveredBlock14Result |
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
            recoveredBlock14Stack2 := recoveredArg1.
            recoveredBlock14PC := 24.
        ].
        recoveredBlock14Step = 24 ifTrue: [
            recoveredBlock14Stack3 := recoveredBlock14Arg1.
            recoveredBlock14PC := 25.
        ].
        recoveredBlock14Step = 25 ifTrue: [
            recoveredBlock14Stack3 := (recoveredBlock14Stack3) externalConnectorGO.
            recoveredBlock14PC := 26.
        ].
        recoveredBlock14Step = 26 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) value: (recoveredBlock14Stack3).
            recoveredBlock14PC := 28.
        ].
        recoveredBlock14Step = 28 ifTrue: [
            (recoveredBlock14Stack2) ifTrue: [recoveredBlock14PC := 32] ifFalse: [recoveredBlock14PC := 39].
        ].
        recoveredBlock14Step = 32 ifTrue: [
            recoveredBlock14PC := 33.
        ].
        recoveredBlock14Step = 33 ifTrue: [
            recoveredBlock14Stack1 := recoveredLocal1.
            recoveredBlock14PC := 36.
        ].
        recoveredBlock14Step = 36 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Arg1.
            recoveredBlock14PC := 37.
        ].
        recoveredBlock14Step = 37 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) add: (recoveredBlock14Stack2).
            recoveredBlock14PC := 39.
        ].
        recoveredBlock14Step = 39 ifTrue: [
            recoveredBlock14Result := recoveredBlock14Stack1.
            recoveredBlock14Done := true.
        ].
    ].
    recoveredBlock14Result
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x202cb814; bytecode file offset 0xbc80fc"
!SGLogicBlockGO methodsFor: 'recovered'!
changeFillColor
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := RBColorSelectionDialog.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) frameGO.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) areaStyle.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) getColor.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := CgIndexedPalette.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := (recoveredStack3) etasDefault.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForColor: (recoveredStack2) palette: (recoveredStack3).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) promptAtCurrentMousePosition.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 47] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) frameGO.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 47] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) frameGO.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) areaStyle.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) setColor: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) manager.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) controller.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := (recoveredStack2) frameGO.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := (recoveredStack2) frame.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) displayOneRectSetModified: (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202d4edc; bytecode file offset 0xbd17b0"
!SGLogicBlockGO methodsFor: 'recovered'!
defaultActualNamePosition
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) logicFrame.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) extent.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) y.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) // (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := PinDistance.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) \\ (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := PinDistance.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredPC := 38.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := PinDistance.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) // (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := DefaultGraphObjectPositionBlock.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) @ (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202de4d8; bytecode file offset 0xbdada0"
!SGLogicBlockGO methodsFor: 'recovered'!
canBeScaledSmallerPinCond: recoveredArg1 condition: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) logicFrame.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := (self) connectorGOs.
    recoveredValue2 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Stack0 recoveredBlock10Stack1 recoveredBlock10Stack2 recoveredBlock10Stack3 recoveredBlock10Stack4 recoveredBlock10PC recoveredBlock10Step recoveredBlock10Done recoveredBlock10Result |
    recoveredBlock10Stack0 := self.
    recoveredBlock10PC := 16.
    recoveredBlock10Done := false.
    [recoveredBlock10Done not] whileTrue: [
        recoveredBlock10Step := recoveredBlock10PC.
        recoveredBlock10Step = 16 ifTrue: [
            recoveredBlock10Stack1 := nil.
            recoveredBlock10PC := 17.
        ].
        recoveredBlock10Step = 17 ifTrue: [
            recoveredBlock10Stack2 := recoveredBlock10Arg1.
            recoveredBlock10PC := 18.
        ].
        recoveredBlock10Step = 18 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) isVisible.
            recoveredBlock10PC := 19.
        ].
        recoveredBlock10Step = 19 ifTrue: [
            (recoveredBlock10Stack2) ifTrue: [recoveredBlock10PC := 22] ifFalse: [recoveredBlock10PC := 45].
        ].
        recoveredBlock10Step = 22 ifTrue: [
            recoveredBlock10PC := 23.
        ].
        recoveredBlock10Step = 23 ifTrue: [
            recoveredBlock10Stack1 := nil.
            recoveredBlock10PC := 24.
        ].
        recoveredBlock10Step = 24 ifTrue: [
            recoveredBlock10Stack2 := recoveredArg1.
            recoveredBlock10PC := 27.
        ].
        recoveredBlock10Step = 27 ifTrue: [
            recoveredBlock10Stack3 := recoveredBlock10Arg1.
            recoveredBlock10PC := 28.
        ].
        recoveredBlock10Step = 28 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) value: (recoveredBlock10Stack3).
            recoveredBlock10PC := 29.
        ].
        recoveredBlock10Step = 29 ifTrue: [
            (recoveredBlock10Stack2) ifTrue: [recoveredBlock10PC := 32] ifFalse: [recoveredBlock10PC := 45].
        ].
        recoveredBlock10Step = 32 ifTrue: [
            recoveredBlock10PC := 33.
        ].
        recoveredBlock10Step = 33 ifTrue: [
            recoveredBlock10Stack1 := nil.
            recoveredBlock10PC := 34.
        ].
        recoveredBlock10Step = 34 ifTrue: [
            recoveredBlock10Stack2 := recoveredArg2.
            recoveredBlock10PC := 37.
        ].
        recoveredBlock10Step = 37 ifTrue: [
            recoveredBlock10Stack3 := recoveredBlock10Arg1.
            recoveredBlock10PC := 38.
        ].
        recoveredBlock10Step = 38 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) value: (recoveredBlock10Stack3).
            recoveredBlock10PC := 39.
        ].
        recoveredBlock10Step = 39 ifTrue: [
            (recoveredBlock10Stack2) ifTrue: [recoveredBlock10PC := 42] ifFalse: [recoveredBlock10PC := 45].
        ].
        recoveredBlock10Step = 42 ifTrue: [
            recoveredBlock10PC := 43.
        ].
        recoveredBlock10Step = 43 ifTrue: [
            recoveredBlock10Stack1 := false.
            recoveredBlock10PC := 44.
        ].
        recoveredBlock10Step = 44 ifTrue: [
            ^recoveredBlock10Stack1
        ].
        recoveredBlock10Step = 45 ifTrue: [
            recoveredBlock10Result := recoveredBlock10Stack1.
            recoveredBlock10Done := true.
        ].
    ].
    recoveredBlock10Result
].
    (recoveredValue1) do: (recoveredValue2).
    ^true
! !

"ASDBase.ic method 0x202f2568; bytecode file offset 0xbeee48"
!SGLogicBlockGO methodsFor: 'recovered'!
displayWithRedFrame
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) manager.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) mainController.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) asdBlockDiagramEditorOptions.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionOverlappingShow.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) manager.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) mainController.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) asdBlockDiagramEditorOptions.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionBDEOverlappingColor.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) frameGO.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) lineStyle.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) deepCopy.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) color: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) lineStyle: (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20312c78; bytecode file offset 0xc0f558"
!SGLogicBlockGO methodsFor: 'recovered'!
mapPointToBottom: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) frameGO.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) logicFrame.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) bottom.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := PinDistance.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) \\ (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := PinDistance.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := PinDistance.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) // (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) x.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) left.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) max: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) right.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) min: (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) bottom.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) @ (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20312ce4; bytecode file offset 0xc0f5f8"
!SGLogicBlockGO methodsFor: 'recovered'!
mapPointToLeft: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) frameGO.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) logicFrame.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) bottom.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := PinDistance.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) \\ (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := PinDistance.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := PinDistance.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) // (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) y.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) top.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) max: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) bottom.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) min: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) left.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) @ (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20312d18; bytecode file offset 0xc0f5f8"
!SGLogicBlockGO methodsFor: 'recovered'!
mapPointToRight: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) frameGO.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) logicFrame.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) bottom.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := PinDistance.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) \\ (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := PinDistance.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := PinDistance.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) // (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) y.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) top.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) max: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) bottom.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) min: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) right.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) @ (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2031a73c; bytecode file offset 0xc17020"
!SGLogicBlockGO methodsFor: 'recovered'!
mapPointToTop: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) frameGO.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) logicFrame.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) bottom.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := PinDistance.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) \\ (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := PinDistance.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := PinDistance.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) // (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) x.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) left.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) max: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) right.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) min: (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) top.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) @ (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20324158; bytecode file offset 0xc20a34"
!SGLogicBlockGO methodsFor: 'recovered'!
appendAddRemoveInputEntries: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack2) addLine.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := 'menuInputAdd'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack4 := (recoveredStack4) menuLabelInputAdd.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock13Value0 |
    recoveredBlock13Value0 := (self) isInputAddPossible.
    recoveredBlock13Value0
].
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack6 := [
    false
].
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) toggle: (recoveredStack6).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := 'menuInputRemove'.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack4 := (recoveredStack4) menuLabelInputRemove.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock38Value0 |
    recoveredBlock38Value0 := (self) isInputRemovePossible.
    recoveredBlock38Value0
].
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack6 := [
    false
].
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) toggle: (recoveredStack6).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2033d864; bytecode file offset 0xc3a150"
!SGLogicBlockGO methodsFor: 'recovered'!
repositionName: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) actualNameGO.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := nil.
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
            recoveredStack1 := (recoveredStack1) actualNameGO.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) changeStarted.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) getPosition.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) getPosition.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) y.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := (recoveredStack3) logicFrame.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := (recoveredStack3) extent.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := (recoveredStack3) y.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack4 := 2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := (recoveredStack3) // (recoveredStack4).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack3 := PinDistance.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) @ (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) moveTo: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) giveRedisplayRects.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) displayRectsSetModified: (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20347b38; bytecode file offset 0xc44404"
!SGLogicBlockGO methodsFor: 'recovered'!
connectionPointFor: recoveredArg1 with: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := interfaceGOs.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6Stack3 recoveredBlock6Stack4 recoveredBlock6Stack5 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            recoveredBlock6Stack1 := nil.
            recoveredBlock6PC := 13.
        ].
        recoveredBlock6Step = 13 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Arg1.
            recoveredBlock6PC := 14.
        ].
        recoveredBlock6Step = 14 ifTrue: [
            recoveredBlock6Stack3 := recoveredArg1.
            recoveredBlock6PC := 17.
        ].
        recoveredBlock6Step = 17 ifTrue: [
            recoveredBlock6Stack4 := recoveredArg2.
            recoveredBlock6PC := 20.
        ].
        recoveredBlock6Step = 20 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) connectionPointFor: (recoveredBlock6Stack3) with: (recoveredBlock6Stack4).
            recoveredBlock6PC := 22.
        ].
        recoveredBlock6Step = 22 ifTrue: [
            recoveredBlock6Stack3 := recoveredBlock6Stack2.
            recoveredBlock6PC := 23.
        ].
        recoveredBlock6Step = 23 ifTrue: [
            recoveredLocal1 := recoveredBlock6Stack3.
            recoveredBlock6PC := 26.
        ].
        recoveredBlock6Step = 26 ifTrue: [
            (recoveredBlock6Stack2 == nil) ifTrue: [recoveredBlock6PC := 35] ifFalse: [recoveredBlock6PC := 30].
        ].
        recoveredBlock6Step = 30 ifTrue: [
            recoveredBlock6PC := 31.
        ].
        recoveredBlock6Step = 31 ifTrue: [
            recoveredBlock6Stack1 := recoveredLocal1.
            recoveredBlock6PC := 34.
        ].
        recoveredBlock6Step = 34 ifTrue: [
            ^recoveredBlock6Stack1
        ].
        recoveredBlock6Step = 35 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack1.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) basicFrame.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) containsPoint: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 61].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := (recoveredStack2) interfaceGOs.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack4 := false.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) lookupConnectionPointFor: (recoveredStack1) interfaces: (recoveredStack2) with: (recoveredStack3) alwaysShowSelectionList: (recoveredStack4).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2036d808; bytecode file offset 0xc6a0e0"
!SGLogicBlockGO methodsFor: 'recovered'!
getSelectorPortLiteral
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceGOs.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280f1524Arg1 | 
    | block280f1524Value0 block280f1524Value1 |
    block280f1524Value0 := block280f1524Arg1.
    block280f1524Value1 := (block280f1524Value0) isSelectorPort.
    block280f1524Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := [
    ^nil
].
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) connectedGOs.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) connectedGOs.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) startBlock.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSGLiteralGO.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredPC := 67.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20418070; bytecode file offset 0xd1495c"
!SGLogicBlockGO methodsFor: 'recovered'!
directionForConnector: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) getPosition.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) frameGO.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) logicFrame.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) directionUp.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) y.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) bottom.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) abs.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) x.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) left.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) abs.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 51].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) directionRight.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) x.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) right.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) abs.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 75].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) directionLeft.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) y.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := (recoveredStack1) top.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) abs.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 92] ifFalse: [recoveredPC := 97].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := (recoveredStack0) directionDown.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2043dee0; bytecode file offset 0xd3a7cc"
!SGLogicBlockGO methodsFor: 'recovered'!
mapPointToFrame: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) frameGO.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) logicFrame.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) nearestPointOnRect: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) frameGO.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) logicFrame.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) mapPointToLeft: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) left.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) abs.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) top.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) abs.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) mapPointToTop: (recoveredStack1).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) right.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) abs.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) mapPointToRight: (recoveredStack1).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) bottom.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := (recoveredStack0) abs.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 106].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := (recoveredStack0) mapPointToBottom: (recoveredStack1).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20452728; bytecode file offset 0xd4f014"
!SGLogicBlockGO methodsFor: 'recovered'!
menuBrowseGetConnectedElements
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := (self) interfaceElementGOs.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 recoveredBlock11Value4 recoveredBlock11Value5 |
    recoveredBlock11Value0 := recoveredBlock11Arg1.
    recoveredBlock11Value1 := (recoveredBlock11Value0) externalConnectorGO.
    recoveredBlock11Value2 := (recoveredBlock11Value1) connectionPoint.
    recoveredBlock11Value3 := (recoveredBlock11Value2) connectionWrappers.
    recoveredBlock11Value4 := [:recoveredBlock11Block26Arg1 | 
    | recoveredBlock11Block26Local1 recoveredBlock11Block26Local2 recoveredBlock11Block26Stack0 recoveredBlock11Block26Stack1 recoveredBlock11Block26Stack2 recoveredBlock11Block26Stack3 recoveredBlock11Block26Stack4 recoveredBlock11Block26PC recoveredBlock11Block26Step recoveredBlock11Block26Done recoveredBlock11Block26Result |
    recoveredBlock11Block26Stack0 := nil.
    recoveredBlock11Block26PC := 32.
    recoveredBlock11Block26Done := false.
    [recoveredBlock11Block26Done not] whileTrue: [
        recoveredBlock11Block26Step := recoveredBlock11Block26PC.
        recoveredBlock11Block26Step = 32 ifTrue: [
            recoveredBlock11Block26Stack1 := nil.
            recoveredBlock11Block26PC := 33.
        ].
        recoveredBlock11Block26Step = 33 ifTrue: [
            recoveredBlock11Block26Stack2 := recoveredBlock11Block26Arg1.
            recoveredBlock11Block26PC := 34.
        ].
        recoveredBlock11Block26Step = 34 ifTrue: [
            recoveredBlock11Block26Stack3 := recoveredBlock11Arg1.
            recoveredBlock11Block26PC := 37.
        ].
        recoveredBlock11Block26Step = 37 ifTrue: [
            recoveredBlock11Block26Stack3 := (recoveredBlock11Block26Stack3) externalConnectorGO.
            recoveredBlock11Block26PC := 38.
        ].
        recoveredBlock11Block26Step = 38 ifTrue: [
            recoveredBlock11Block26Stack2 := (recoveredBlock11Block26Stack2) opposedNode: (recoveredBlock11Block26Stack3).
            recoveredBlock11Block26PC := 40.
        ].
        recoveredBlock11Block26Step = 40 ifTrue: [
            recoveredBlock11Block26Stack3 := recoveredBlock11Block26Stack2.
            recoveredBlock11Block26PC := 41.
        ].
        recoveredBlock11Block26Step = 41 ifTrue: [
            recoveredBlock11Block26Local2 := recoveredBlock11Block26Stack3.
            recoveredBlock11Block26PC := 42.
        ].
        recoveredBlock11Block26Step = 42 ifTrue: [
            (recoveredBlock11Block26Stack2 == nil) ifTrue: [recoveredBlock11Block26PC := 65] ifFalse: [recoveredBlock11Block26PC := 46].
        ].
        recoveredBlock11Block26Step = 46 ifTrue: [
            recoveredBlock11Block26Stack2 := recoveredBlock11Block26Local2.
            recoveredBlock11Block26PC := 47.
        ].
        recoveredBlock11Block26Step = 47 ifTrue: [
            recoveredBlock11Block26Stack2 := (recoveredBlock11Block26Stack2) getBlock.
            recoveredBlock11Block26PC := 49.
        ].
        recoveredBlock11Block26Step = 49 ifTrue: [
            recoveredBlock11Block26Stack2 := (recoveredBlock11Block26Stack2) basicGraphObject.
            recoveredBlock11Block26PC := 51.
        ].
        recoveredBlock11Block26Step = 51 ifTrue: [
            recoveredBlock11Block26Stack3 := recoveredBlock11Block26Stack2.
            recoveredBlock11Block26PC := 52.
        ].
        recoveredBlock11Block26Step = 52 ifTrue: [
            recoveredBlock11Block26Local1 := recoveredBlock11Block26Stack3.
            recoveredBlock11Block26PC := 53.
        ].
        recoveredBlock11Block26Step = 53 ifTrue: [
            recoveredBlock11Block26Stack2 := (recoveredBlock11Block26Stack2) isMemoryBlock.
            recoveredBlock11Block26PC := 55.
        ].
        recoveredBlock11Block26Step = 55 ifTrue: [
            (recoveredBlock11Block26Stack2) ifTrue: [recoveredBlock11Block26PC := 58] ifFalse: [recoveredBlock11Block26PC := 65].
        ].
        recoveredBlock11Block26Step = 58 ifTrue: [
            recoveredBlock11Block26PC := 59.
        ].
        recoveredBlock11Block26Step = 59 ifTrue: [
            recoveredBlock11Block26Stack1 := recoveredLocal2.
            recoveredBlock11Block26PC := 62.
        ].
        recoveredBlock11Block26Step = 62 ifTrue: [
            recoveredBlock11Block26Stack2 := recoveredBlock11Block26Local1.
            recoveredBlock11Block26PC := 63.
        ].
        recoveredBlock11Block26Step = 63 ifTrue: [
            recoveredBlock11Block26Stack1 := (recoveredBlock11Block26Stack1) add: (recoveredBlock11Block26Stack2).
            recoveredBlock11Block26PC := 65.
        ].
        recoveredBlock11Block26Step = 65 ifTrue: [
            recoveredBlock11Block26Result := recoveredBlock11Block26Stack1.
            recoveredBlock11Block26Done := true.
        ].
    ].
    recoveredBlock11Block26Result
].
    recoveredBlock11Value5 := (recoveredBlock11Value3) do: (recoveredBlock11Value4).
    recoveredBlock11Value5
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := OrderedCollection.
    recoveredValue5 := (recoveredValue4) new.
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredLocal2.
    recoveredValue7 := [:recoveredBlock80Arg1 | 
    | recoveredBlock80Local1 recoveredBlock80Stack0 recoveredBlock80Stack1 recoveredBlock80Stack2 recoveredBlock80Stack3 recoveredBlock80Stack4 recoveredBlock80PC recoveredBlock80Step recoveredBlock80Done recoveredBlock80Result |
    recoveredBlock80Stack0 := self.
    recoveredBlock80PC := 86.
    recoveredBlock80Done := false.
    [recoveredBlock80Done not] whileTrue: [
        recoveredBlock80Step := recoveredBlock80PC.
        recoveredBlock80Step = 86 ifTrue: [
            recoveredBlock80Stack1 := recoveredBlock80Arg1.
            recoveredBlock80PC := 87.
        ].
        recoveredBlock80Step = 87 ifTrue: [
            recoveredBlock80Stack1 := (recoveredBlock80Stack1) element.
            recoveredBlock80PC := 89.
        ].
        recoveredBlock80Step = 89 ifTrue: [
            recoveredBlock80Local1 := recoveredBlock80Stack1.
            recoveredBlock80PC := 90.
        ].
        recoveredBlock80Step = 90 ifTrue: [
            recoveredBlock80Stack1 := nil.
            recoveredBlock80PC := 91.
        ].
        recoveredBlock80Step = 91 ifTrue: [
            recoveredBlock80Stack2 := recoveredLocal1.
            recoveredBlock80PC := 94.
        ].
        recoveredBlock80Step = 94 ifTrue: [
            recoveredBlock80Stack3 := recoveredBlock80Local1.
            recoveredBlock80PC := 95.
        ].
        recoveredBlock80Step = 95 ifTrue: [
            recoveredBlock80Stack2 := (recoveredBlock80Stack2) includes: (recoveredBlock80Stack3).
            recoveredBlock80PC := 97.
        ].
        recoveredBlock80Step = 97 ifTrue: [
            (recoveredBlock80Stack2) ifTrue: [recoveredBlock80PC := 107] ifFalse: [recoveredBlock80PC := 100].
        ].
        recoveredBlock80Step = 100 ifTrue: [
            recoveredBlock80PC := 101.
        ].
        recoveredBlock80Step = 101 ifTrue: [
            recoveredBlock80Stack1 := recoveredLocal1.
            recoveredBlock80PC := 104.
        ].
        recoveredBlock80Step = 104 ifTrue: [
            recoveredBlock80Stack2 := recoveredBlock80Local1.
            recoveredBlock80PC := 105.
        ].
        recoveredBlock80Step = 105 ifTrue: [
            recoveredBlock80Stack1 := (recoveredBlock80Stack1) add: (recoveredBlock80Stack2).
            recoveredBlock80PC := 107.
        ].
        recoveredBlock80Step = 107 ifTrue: [
            recoveredBlock80Result := recoveredBlock80Stack1.
            recoveredBlock80Done := true.
        ].
    ].
    recoveredBlock80Result
].
    (recoveredValue6) do: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    ^recoveredValue8
! !

"ASDBase.ic method 0x20452e10; bytecode file offset 0xd4f6e8"
!SGLogicBlockGO methodsFor: 'recovered'!
shrinkInterfacePinsHorizontal: recoveredArg1 left: recoveredArg2 right: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg3.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredArg2.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) reverse.
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
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) externalConnectorGO.
            recoveredBlock20PC := 29.
        ].
        recoveredBlock20Step = 29 ifTrue: [
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) getPosition.
            recoveredBlock20PC := 30.
        ].
        recoveredBlock20Step = 30 ifTrue: [
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) x.
            recoveredBlock20PC := 31.
        ].
        recoveredBlock20Step = 31 ifTrue: [
            recoveredBlock20Stack3 := recoveredLocal1.
            recoveredBlock20PC := 34.
        ].
        recoveredBlock20Step = 34 ifTrue: [
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) > (recoveredBlock20Stack3).
            recoveredBlock20PC := 35.
        ].
        recoveredBlock20Step = 35 ifTrue: [
            (recoveredBlock20Stack2) ifTrue: [recoveredBlock20PC := 38] ifFalse: [recoveredBlock20PC := 62].
        ].
        recoveredBlock20Step = 38 ifTrue: [
            recoveredBlock20PC := 39.
        ].
        recoveredBlock20Step = 39 ifTrue: [
            recoveredBlock20Stack1 := recoveredBlock20Arg1.
            recoveredBlock20PC := 40.
        ].
        recoveredBlock20Step = 40 ifTrue: [
            recoveredBlock20Stack2 := recoveredLocal1.
            recoveredBlock20PC := 43.
        ].
        recoveredBlock20Step = 43 ifTrue: [
            recoveredBlock20Stack3 := recoveredBlock20Arg1.
            recoveredBlock20PC := 44.
        ].
        recoveredBlock20Step = 44 ifTrue: [
            recoveredBlock20Stack3 := (recoveredBlock20Stack3) externalConnectorGO.
            recoveredBlock20PC := 45.
        ].
        recoveredBlock20Step = 45 ifTrue: [
            recoveredBlock20Stack3 := (recoveredBlock20Stack3) getPosition.
            recoveredBlock20PC := 46.
        ].
        recoveredBlock20Step = 46 ifTrue: [
            recoveredBlock20Stack3 := (recoveredBlock20Stack3) y.
            recoveredBlock20PC := 48.
        ].
        recoveredBlock20Step = 48 ifTrue: [
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) @ (recoveredBlock20Stack3).
            recoveredBlock20PC := 50.
        ].
        recoveredBlock20Step = 50 ifTrue: [
            (recoveredBlock20Stack1) moveBasicTo: (recoveredBlock20Stack2).
            recoveredBlock20PC := 52.
        ].
        recoveredBlock20Step = 52 ifTrue: [
            recoveredBlock20Stack1 := recoveredLocal1.
            recoveredBlock20PC := 55.
        ].
        recoveredBlock20Step = 55 ifTrue: [
            recoveredBlock20Stack2 := PinDistance.
            recoveredBlock20PC := 57.
        ].
        recoveredBlock20Step = 57 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) - (recoveredBlock20Stack2).
            recoveredBlock20PC := 58.
        ].
        recoveredBlock20Step = 58 ifTrue: [
            recoveredBlock20Stack2 := recoveredBlock20Stack1.
            recoveredBlock20PC := 59.
        ].
        recoveredBlock20Step = 59 ifTrue: [
            recoveredLocal1 := recoveredBlock20Stack2.
            recoveredBlock20PC := 62.
        ].
        recoveredBlock20Step = 62 ifTrue: [
            recoveredBlock20Result := recoveredBlock20Stack1.
            recoveredBlock20Done := true.
        ].
    ].
    recoveredBlock20Result
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := [:recoveredBlock68Arg1 | 
    | recoveredBlock68Stack0 recoveredBlock68Stack1 recoveredBlock68Stack2 recoveredBlock68Stack3 recoveredBlock68Stack4 recoveredBlock68PC recoveredBlock68Step recoveredBlock68Done recoveredBlock68Result |
    recoveredBlock68Stack0 := self.
    recoveredBlock68PC := 74.
    recoveredBlock68Done := false.
    [recoveredBlock68Done not] whileTrue: [
        recoveredBlock68Step := recoveredBlock68PC.
        recoveredBlock68Step = 74 ifTrue: [
            recoveredBlock68Stack1 := nil.
            recoveredBlock68PC := 75.
        ].
        recoveredBlock68Step = 75 ifTrue: [
            recoveredBlock68Stack2 := recoveredBlock68Arg1.
            recoveredBlock68PC := 76.
        ].
        recoveredBlock68Step = 76 ifTrue: [
            recoveredBlock68Stack2 := (recoveredBlock68Stack2) externalConnectorGO.
            recoveredBlock68PC := 77.
        ].
        recoveredBlock68Step = 77 ifTrue: [
            recoveredBlock68Stack2 := (recoveredBlock68Stack2) getPosition.
            recoveredBlock68PC := 78.
        ].
        recoveredBlock68Step = 78 ifTrue: [
            recoveredBlock68Stack2 := (recoveredBlock68Stack2) x.
            recoveredBlock68PC := 79.
        ].
        recoveredBlock68Step = 79 ifTrue: [
            recoveredBlock68Stack3 := recoveredLocal2.
            recoveredBlock68PC := 82.
        ].
        recoveredBlock68Step = 82 ifTrue: [
            recoveredBlock68Stack2 := (recoveredBlock68Stack2) < (recoveredBlock68Stack3).
            recoveredBlock68PC := 83.
        ].
        recoveredBlock68Step = 83 ifTrue: [
            (recoveredBlock68Stack2) ifTrue: [recoveredBlock68PC := 86] ifFalse: [recoveredBlock68PC := 110].
        ].
        recoveredBlock68Step = 86 ifTrue: [
            recoveredBlock68PC := 87.
        ].
        recoveredBlock68Step = 87 ifTrue: [
            recoveredBlock68Stack1 := recoveredBlock68Arg1.
            recoveredBlock68PC := 88.
        ].
        recoveredBlock68Step = 88 ifTrue: [
            recoveredBlock68Stack2 := recoveredLocal2.
            recoveredBlock68PC := 91.
        ].
        recoveredBlock68Step = 91 ifTrue: [
            recoveredBlock68Stack3 := recoveredBlock68Arg1.
            recoveredBlock68PC := 92.
        ].
        recoveredBlock68Step = 92 ifTrue: [
            recoveredBlock68Stack3 := (recoveredBlock68Stack3) externalConnectorGO.
            recoveredBlock68PC := 93.
        ].
        recoveredBlock68Step = 93 ifTrue: [
            recoveredBlock68Stack3 := (recoveredBlock68Stack3) getPosition.
            recoveredBlock68PC := 94.
        ].
        recoveredBlock68Step = 94 ifTrue: [
            recoveredBlock68Stack3 := (recoveredBlock68Stack3) y.
            recoveredBlock68PC := 96.
        ].
        recoveredBlock68Step = 96 ifTrue: [
            recoveredBlock68Stack2 := (recoveredBlock68Stack2) @ (recoveredBlock68Stack3).
            recoveredBlock68PC := 98.
        ].
        recoveredBlock68Step = 98 ifTrue: [
            (recoveredBlock68Stack1) moveBasicTo: (recoveredBlock68Stack2).
            recoveredBlock68PC := 100.
        ].
        recoveredBlock68Step = 100 ifTrue: [
            recoveredBlock68Stack1 := recoveredLocal2.
            recoveredBlock68PC := 103.
        ].
        recoveredBlock68Step = 103 ifTrue: [
            recoveredBlock68Stack2 := PinDistance.
            recoveredBlock68PC := 105.
        ].
        recoveredBlock68Step = 105 ifTrue: [
            recoveredBlock68Stack1 := (recoveredBlock68Stack1) + (recoveredBlock68Stack2).
            recoveredBlock68PC := 106.
        ].
        recoveredBlock68Step = 106 ifTrue: [
            recoveredBlock68Stack2 := recoveredBlock68Stack1.
            recoveredBlock68PC := 107.
        ].
        recoveredBlock68Step = 107 ifTrue: [
            recoveredLocal2 := recoveredBlock68Stack2.
            recoveredBlock68PC := 110.
        ].
        recoveredBlock68Step = 110 ifTrue: [
            recoveredBlock68Result := recoveredBlock68Stack1.
            recoveredBlock68Done := true.
        ].
    ].
    recoveredBlock68Result
].
    (recoveredValue5) do: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x20458030; bytecode file offset 0xd54924"
!SGLogicBlockGO methodsFor: 'recovered'!
copyForChangeDisplay
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceElementGOs.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Local1 recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 recoveredBlock11Value4 recoveredBlock11Value5 recoveredBlock11Value6 recoveredBlock11Value7 |
    recoveredBlock11Value0 := recoveredBlock11Arg1.
    recoveredBlock11Value1 := (recoveredBlock11Value0) deepCopy.
    recoveredBlock11Local1 := recoveredBlock11Value1.
    recoveredBlock11Value2 := recoveredBlock11Local1.
    recoveredBlock11Value3 := OrderedCollection.
    recoveredBlock11Value4 := (recoveredBlock11Value3) new.
    (recoveredBlock11Value2) hideNames: (recoveredBlock11Value4).
    recoveredBlock11Value5 := recoveredLocal1.
    recoveredBlock11Value6 := recoveredBlock11Local1.
    recoveredBlock11Value7 := (recoveredBlock11Value5) add: (recoveredBlock11Value6).
    recoveredBlock11Value7
].
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := actualNameGO.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 61] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := actualNameGO.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) basicGraphObject.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) isVisible.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 61].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := actualNameGO.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyForChangeDisplayBasic.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) frameGO.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyForChangeDisplay.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) sequenceCalls.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := [:recoveredBlock74Arg1 | 
    | recoveredBlock74Stack0 recoveredBlock74Stack1 recoveredBlock74Stack2 recoveredBlock74Stack3 recoveredBlock74PC recoveredBlock74Step recoveredBlock74Done recoveredBlock74Result |
    recoveredBlock74Stack0 := self.
    recoveredBlock74PC := 80.
    recoveredBlock74Done := false.
    [recoveredBlock74Done not] whileTrue: [
        recoveredBlock74Step := recoveredBlock74PC.
        recoveredBlock74Step = 80 ifTrue: [
            recoveredBlock74Stack1 := nil.
            recoveredBlock74PC := 81.
        ].
        recoveredBlock74Step = 81 ifTrue: [
            recoveredBlock74Stack2 := recoveredBlock74Arg1.
            recoveredBlock74PC := 82.
        ].
        recoveredBlock74Step = 82 ifTrue: [
            recoveredBlock74Stack2 := (recoveredBlock74Stack2) isVisible.
            recoveredBlock74PC := 84.
        ].
        recoveredBlock74Step = 84 ifTrue: [
            (recoveredBlock74Stack2) ifTrue: [recoveredBlock74PC := 88] ifFalse: [recoveredBlock74PC := 105].
        ].
        recoveredBlock74Step = 88 ifTrue: [
            recoveredBlock74Stack2 := recoveredBlock74Arg1.
            recoveredBlock74PC := 89.
        ].
        recoveredBlock74Step = 89 ifTrue: [
            recoveredBlock74Stack2 := (recoveredBlock74Stack2) getManager.
            recoveredBlock74PC := 91.
        ].
        recoveredBlock74Step = 91 ifTrue: [
            recoveredBlock74Stack2 := (recoveredBlock74Stack2) isVisible.
            recoveredBlock74PC := 93.
        ].
        recoveredBlock74Step = 93 ifTrue: [
            (recoveredBlock74Stack2) ifTrue: [recoveredBlock74PC := 96] ifFalse: [recoveredBlock74PC := 105].
        ].
        recoveredBlock74Step = 96 ifTrue: [
            recoveredBlock74PC := 97.
        ].
        recoveredBlock74Step = 97 ifTrue: [
            recoveredBlock74Stack1 := recoveredLocal1.
            recoveredBlock74PC := 100.
        ].
        recoveredBlock74Step = 100 ifTrue: [
            recoveredBlock74Stack2 := recoveredBlock74Arg1.
            recoveredBlock74PC := 101.
        ].
        recoveredBlock74Step = 101 ifTrue: [
            recoveredBlock74Stack2 := (recoveredBlock74Stack2) copyForChangeDisplayBasic.
            recoveredBlock74PC := 103.
        ].
        recoveredBlock74Step = 103 ifTrue: [
            recoveredBlock74Stack1 := (recoveredBlock74Stack1) add: (recoveredBlock74Stack2).
            recoveredBlock74PC := 105.
        ].
        recoveredBlock74Step = 105 ifTrue: [
            recoveredBlock74Result := recoveredBlock74Stack1.
            recoveredBlock74Done := true.
        ].
    ].
    recoveredBlock74Result
].
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := RBComposedGO.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := (recoveredStack0) createWithGOs: (recoveredStack1).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204bd9fc; bytecode file offset 0xdba2e4"
!SGLogicBlockGO methodsFor: 'recovered'!
minSizeWithPins
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 |
    recoveredLocal1 := 1.
    recoveredLocal2 := 1.
    recoveredLocal3 := 1.
    recoveredLocal4 := 1.
    recoveredValue0 := (self) interfaceElementGOs.
    recoveredValue1 := [:recoveredBlock22Arg1 | 
    | recoveredBlock22Local1 recoveredBlock22Stack0 recoveredBlock22Stack1 recoveredBlock22Stack2 recoveredBlock22Stack3 recoveredBlock22Stack4 recoveredBlock22PC recoveredBlock22Step recoveredBlock22Done recoveredBlock22Result |
    recoveredBlock22Stack0 := self.
    recoveredBlock22PC := 28.
    recoveredBlock22Done := false.
    [recoveredBlock22Done not] whileTrue: [
        recoveredBlock22Step := recoveredBlock22PC.
        recoveredBlock22Step = 28 ifTrue: [
            recoveredBlock22Stack1 := nil.
            recoveredBlock22PC := 29.
        ].
        recoveredBlock22Step = 29 ifTrue: [
            recoveredBlock22Stack2 := recoveredBlock22Arg1.
            recoveredBlock22PC := 30.
        ].
        recoveredBlock22Step = 30 ifTrue: [
            recoveredBlock22Stack2 := (recoveredBlock22Stack2) isVisible.
            recoveredBlock22PC := 31.
        ].
        recoveredBlock22Step = 31 ifTrue: [
            (recoveredBlock22Stack2) ifTrue: [recoveredBlock22PC := 34] ifFalse: [recoveredBlock22PC := 109].
        ].
        recoveredBlock22Step = 34 ifTrue: [
            recoveredBlock22PC := 35.
        ].
        recoveredBlock22Step = 35 ifTrue: [
            recoveredBlock22Stack1 := 'hw'.
            recoveredBlock22PC := 37.
        ].
        recoveredBlock22Step = 37 ifTrue: [
            recoveredBlock22Stack2 := 'call_81198'.
            recoveredBlock22PC := 39.
        ].
        recoveredBlock22Step = 39 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) == (recoveredBlock22Stack2).
            recoveredBlock22PC := 40.
        ].
        recoveredBlock22Step = 40 ifTrue: [
            recoveredBlock22PC := 41.
        ].
        recoveredBlock22Step = 41 ifTrue: [
            recoveredBlock22Stack1 := nil.
            recoveredBlock22PC := 42.
        ].
        recoveredBlock22Step = 42 ifTrue: [
            recoveredBlock22Stack2 := recoveredBlock22Arg1.
            recoveredBlock22PC := 43.
        ].
        recoveredBlock22Step = 43 ifTrue: [
            recoveredBlock22Stack2 := (recoveredBlock22Stack2) externalConnectorGO.
            recoveredBlock22PC := 45.
        ].
        recoveredBlock22Step = 45 ifTrue: [
            recoveredBlock22Stack3 := recoveredBlock22Stack2.
            recoveredBlock22PC := 46.
        ].
        recoveredBlock22Step = 46 ifTrue: [
            recoveredBlock22Local1 := recoveredBlock22Stack3.
            recoveredBlock22PC := 47.
        ].
        recoveredBlock22Step = 47 ifTrue: [
            (recoveredBlock22Stack2 == nil) ifTrue: [recoveredBlock22PC := 109] ifFalse: [recoveredBlock22PC := 50].
        ].
        recoveredBlock22Step = 50 ifTrue: [
            recoveredBlock22PC := 51.
        ].
        recoveredBlock22Step = 51 ifTrue: [
            recoveredBlock22Stack1 := recoveredBlock22Local1.
            recoveredBlock22PC := 52.
        ].
        recoveredBlock22Step = 52 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) goesUp.
            recoveredBlock22PC := 54.
        ].
        recoveredBlock22Step = 54 ifTrue: [
            (recoveredBlock22Stack1) ifTrue: [recoveredBlock22PC := 58] ifFalse: [recoveredBlock22PC := 65].
        ].
        recoveredBlock22Step = 58 ifTrue: [
            recoveredBlock22Stack1 := recoveredLocal2.
            recoveredBlock22PC := 61.
        ].
        recoveredBlock22Step = 61 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) + (1).
            recoveredBlock22PC := 62.
        ].
        recoveredBlock22Step = 62 ifTrue: [
            recoveredLocal2 := recoveredBlock22Stack1.
            recoveredBlock22PC := 65.
        ].
        recoveredBlock22Step = 65 ifTrue: [
            recoveredBlock22Stack1 := recoveredBlock22Local1.
            recoveredBlock22PC := 66.
        ].
        recoveredBlock22Step = 66 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) goesDown.
            recoveredBlock22PC := 68.
        ].
        recoveredBlock22Step = 68 ifTrue: [
            (recoveredBlock22Stack1) ifTrue: [recoveredBlock22PC := 72] ifFalse: [recoveredBlock22PC := 79].
        ].
        recoveredBlock22Step = 72 ifTrue: [
            recoveredBlock22Stack1 := recoveredLocal1.
            recoveredBlock22PC := 75.
        ].
        recoveredBlock22Step = 75 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) + (1).
            recoveredBlock22PC := 76.
        ].
        recoveredBlock22Step = 76 ifTrue: [
            recoveredLocal1 := recoveredBlock22Stack1.
            recoveredBlock22PC := 79.
        ].
        recoveredBlock22Step = 79 ifTrue: [
            recoveredBlock22Stack1 := recoveredBlock22Local1.
            recoveredBlock22PC := 80.
        ].
        recoveredBlock22Step = 80 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) goesLeft.
            recoveredBlock22PC := 82.
        ].
        recoveredBlock22Step = 82 ifTrue: [
            (recoveredBlock22Stack1) ifTrue: [recoveredBlock22PC := 86] ifFalse: [recoveredBlock22PC := 93].
        ].
        recoveredBlock22Step = 86 ifTrue: [
            recoveredBlock22Stack1 := recoveredLocal4.
            recoveredBlock22PC := 89.
        ].
        recoveredBlock22Step = 89 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) + (1).
            recoveredBlock22PC := 90.
        ].
        recoveredBlock22Step = 90 ifTrue: [
            recoveredLocal4 := recoveredBlock22Stack1.
            recoveredBlock22PC := 93.
        ].
        recoveredBlock22Step = 93 ifTrue: [
            recoveredBlock22Stack1 := nil.
            recoveredBlock22PC := 94.
        ].
        recoveredBlock22Step = 94 ifTrue: [
            recoveredBlock22Stack2 := recoveredBlock22Local1.
            recoveredBlock22PC := 95.
        ].
        recoveredBlock22Step = 95 ifTrue: [
            recoveredBlock22Stack2 := (recoveredBlock22Stack2) goesRight.
            recoveredBlock22PC := 97.
        ].
        recoveredBlock22Step = 97 ifTrue: [
            (recoveredBlock22Stack2) ifTrue: [recoveredBlock22PC := 100] ifFalse: [recoveredBlock22PC := 109].
        ].
        recoveredBlock22Step = 100 ifTrue: [
            recoveredBlock22PC := 101.
        ].
        recoveredBlock22Step = 101 ifTrue: [
            recoveredBlock22Stack1 := recoveredLocal3.
            recoveredBlock22PC := 104.
        ].
        recoveredBlock22Step = 104 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) + (1).
            recoveredBlock22PC := 105.
        ].
        recoveredBlock22Step = 105 ifTrue: [
            recoveredBlock22Stack2 := recoveredBlock22Stack1.
            recoveredBlock22PC := 106.
        ].
        recoveredBlock22Step = 106 ifTrue: [
            recoveredLocal3 := recoveredBlock22Stack2.
            recoveredBlock22PC := 109.
        ].
        recoveredBlock22Step = 109 ifTrue: [
            recoveredBlock22Result := recoveredBlock22Stack1.
            recoveredBlock22Done := true.
        ].
    ].
    recoveredBlock22Result
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := recoveredLocal2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (recoveredValue2) max: (recoveredValue3).
    recoveredValue5 := (recoveredValue4) + (1).
    recoveredValue6 := (recoveredValue5) // (2).
    recoveredValue7 := (recoveredValue6) * (2).
    recoveredValue8 := recoveredLocal4.
    recoveredValue9 := recoveredLocal3.
    recoveredValue10 := (recoveredValue8) max: (recoveredValue9).
    recoveredValue11 := (recoveredValue10) + (1).
    recoveredValue12 := (recoveredValue11) // (2).
    recoveredValue13 := (recoveredValue12) * (2).
    recoveredValue14 := (recoveredValue7) @ (recoveredValue13).
    recoveredValue15 := PinDistance.
    recoveredValue16 := (recoveredValue14) * (recoveredValue15).
    ^recoveredValue16
! !

"ASDBase.ic method 0x204c72c8; bytecode file offset 0xdc3bb8"
!SGLogicBlockGO methodsFor: 'recovered'!
intersectsBlock: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) frameGO.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) logicFrame.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) frameGO.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) logicFrame.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) intersects: (recoveredStack1).
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
            recoveredStack0 := 'hw'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := 'call_2008402926'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 26.
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
            recoveredStack0 := (recoveredStack0) markContainedAsIntersected: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 108].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) containsRectangle: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) containsRectangle: (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) leftTop.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftTop.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) rightBottom.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightBottom.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) leftBottom.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftBottom.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 92] ifFalse: [recoveredPC := 94].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) rightTop.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightTop.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 106] ifFalse: [recoveredPC := 108].
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := (recoveredStack0) area.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := (recoveredStack1) area.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 118] ifFalse: [recoveredPC := 132].
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := (recoveredStack0) intersect: (recoveredStack1).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := (recoveredStack0) area.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := (recoveredStack1) area.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredPC := 151.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSGHierarchyGO.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 151] ifFalse: [recoveredPC := 140].
        ].
        recoveredStep = 140 ifTrue: [
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack0 := (recoveredStack0) intersect: (recoveredStack1).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack0 := (recoveredStack0) area.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := (recoveredStack1) area.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204e2708; bytecode file offset 0xddf018"
!SGLogicBlockGO methodsFor: 'recovered'!
getMinSize
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:block281086e8Arg1 | 
    | block281086e8Value0 block281086e8Value1 |
    block281086e8Value0 := block281086e8Arg1.
    block281086e8Value1 := (block281086e8Value0) goesRight.
    block281086e8Value1
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := [:block2810870cArg1 :block2810870cArg2 | 
    | block2810870cValue0 block2810870cValue1 block2810870cValue2 block2810870cValue3 block2810870cValue4 block2810870cValue5 block2810870cValue6 |
    block2810870cValue0 := block2810870cArg1.
    block2810870cValue1 := (block2810870cValue0) getPosition.
    block2810870cValue2 := (block2810870cValue1) y.
    block2810870cValue3 := block2810870cArg2.
    block2810870cValue4 := (block2810870cValue3) getPosition.
    block2810870cValue5 := (block2810870cValue4) y.
    block2810870cValue6 := (block2810870cValue2) < (block2810870cValue5).
    block2810870cValue6
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) collectInterfacesBlockCond: (recoveredStack1) sortBlock: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := [:block28108730Arg1 | 
    | block28108730Value0 block28108730Value1 |
    block28108730Value0 := block28108730Arg1.
    block28108730Value1 := (block28108730Value0) goesLeft.
    block28108730Value1
].
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := [:block28108754Arg1 :block28108754Arg2 | 
    | block28108754Value0 block28108754Value1 block28108754Value2 block28108754Value3 block28108754Value4 block28108754Value5 block28108754Value6 |
    block28108754Value0 := block28108754Arg1.
    block28108754Value1 := (block28108754Value0) getPosition.
    block28108754Value2 := (block28108754Value1) y.
    block28108754Value3 := block28108754Arg2.
    block28108754Value4 := (block28108754Value3) getPosition.
    block28108754Value5 := (block28108754Value4) y.
    block28108754Value6 := (block28108754Value2) < (block28108754Value5).
    block28108754Value6
].
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) collectInterfacesBlockCond: (recoveredStack1) sortBlock: (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := [:block28108778Arg1 | 
    | block28108778Value0 block28108778Value1 |
    block28108778Value0 := block28108778Arg1.
    block28108778Value1 := (block28108778Value0) goesDown.
    block28108778Value1
].
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := [:block2810879cArg1 :block2810879cArg2 | 
    | block2810879cValue0 block2810879cValue1 block2810879cValue2 block2810879cValue3 block2810879cValue4 block2810879cValue5 block2810879cValue6 |
    block2810879cValue0 := block2810879cArg1.
    block2810879cValue1 := (block2810879cValue0) getPosition.
    block2810879cValue2 := (block2810879cValue1) x.
    block2810879cValue3 := block2810879cArg2.
    block2810879cValue4 := (block2810879cValue3) getPosition.
    block2810879cValue5 := (block2810879cValue4) x.
    block2810879cValue6 := (block2810879cValue2) < (block2810879cValue5).
    block2810879cValue6
].
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := (recoveredStack0) collectInterfacesBlockCond: (recoveredStack1) sortBlock: (recoveredStack2).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := [:block281087c0Arg1 | 
    | block281087c0Value0 block281087c0Value1 |
    block281087c0Value0 := block281087c0Arg1.
    block281087c0Value1 := (block281087c0Value0) goesUp.
    block281087c0Value1
].
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := [:block281087e4Arg1 :block281087e4Arg2 | 
    | block281087e4Value0 block281087e4Value1 block281087e4Value2 block281087e4Value3 block281087e4Value4 block281087e4Value5 block281087e4Value6 |
    block281087e4Value0 := block281087e4Arg1.
    block281087e4Value1 := (block281087e4Value0) getPosition.
    block281087e4Value2 := (block281087e4Value1) x.
    block281087e4Value3 := block281087e4Arg2.
    block281087e4Value4 := (block281087e4Value3) getPosition.
    block281087e4Value5 := (block281087e4Value4) x.
    block281087e4Value6 := (block281087e4Value2) < (block281087e4Value5).
    block281087e4Value6
].
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := (recoveredStack0) collectInterfacesBlockCond: (recoveredStack1) sortBlock: (recoveredStack2).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := (recoveredStack0) max: (recoveredStack1).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := (recoveredStack1) max: (recoveredStack2).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack0 := (recoveredStack0) @ (recoveredStack1).
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := PinDistance.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := (recoveredStack0) * (recoveredStack1).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack0 := (recoveredStack0) viewContour.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 160] ifFalse: [recoveredPC := 152].
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack2 := (recoveredStack2) iconGO.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack0 := (recoveredStack0) adaptMinSize: (recoveredStack1) forGO: (recoveredStack2).
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20523b88; bytecode file offset 0xe2047c"
!SGLogicBlockGO methodsFor: 'recovered'!
shrinkInterfacePinsVertical: recoveredArg1 top: recoveredArg2 bottom: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) flexibleCreated.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 41].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := [:block2810c72cArg1 | 
    | block2810c72cValue0 block2810c72cValue1 |
    block2810c72cValue0 := block2810c72cArg1.
    block2810c72cValue1 := (block2810c72cValue0) isVisible.
    block2810c72cValue1
].
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) last.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) externalConnectorGO.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) getPosition.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) y.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 124].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) reverse.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := [:recoveredBlock75Arg1 | 
    | recoveredBlock75Stack0 recoveredBlock75Stack1 recoveredBlock75Stack2 recoveredBlock75Stack3 recoveredBlock75Stack4 recoveredBlock75PC recoveredBlock75Step recoveredBlock75Done recoveredBlock75Result |
    recoveredBlock75Stack0 := self.
    recoveredBlock75PC := 82.
    recoveredBlock75Done := false.
    [recoveredBlock75Done not] whileTrue: [
        recoveredBlock75Step := recoveredBlock75PC.
        recoveredBlock75Step = 82 ifTrue: [
            recoveredBlock75Stack1 := recoveredBlock75Arg1.
            recoveredBlock75PC := 83.
        ].
        recoveredBlock75Step = 83 ifTrue: [
            recoveredBlock75Stack1 := (recoveredBlock75Stack1) externalConnectorGO.
            recoveredBlock75PC := 85.
        ].
        recoveredBlock75Step = 85 ifTrue: [
            recoveredBlock75Stack1 := (recoveredBlock75Stack1) getPosition.
            recoveredBlock75PC := 87.
        ].
        recoveredBlock75Step = 87 ifTrue: [
            recoveredBlock75Stack1 := (recoveredBlock75Stack1) y.
            recoveredBlock75PC := 89.
        ].
        recoveredBlock75Step = 89 ifTrue: [
            recoveredBlock75Stack2 := recoveredLocal3.
            recoveredBlock75PC := 92.
        ].
        recoveredBlock75Step = 92 ifTrue: [
            recoveredBlock75Stack1 := (recoveredBlock75Stack1) > (recoveredBlock75Stack2).
            recoveredBlock75PC := 93.
        ].
        recoveredBlock75Step = 93 ifTrue: [
            (recoveredBlock75Stack1) ifTrue: [recoveredBlock75PC := 96] ifFalse: [recoveredBlock75PC := 111].
        ].
        recoveredBlock75Step = 96 ifTrue: [
            recoveredBlock75Stack1 := recoveredBlock75Arg1.
            recoveredBlock75PC := 97.
        ].
        recoveredBlock75Step = 97 ifTrue: [
            recoveredBlock75Stack2 := recoveredBlock75Arg1.
            recoveredBlock75PC := 98.
        ].
        recoveredBlock75Step = 98 ifTrue: [
            recoveredBlock75Stack2 := (recoveredBlock75Stack2) externalConnectorGO.
            recoveredBlock75PC := 100.
        ].
        recoveredBlock75Step = 100 ifTrue: [
            recoveredBlock75Stack2 := (recoveredBlock75Stack2) getPosition.
            recoveredBlock75PC := 102.
        ].
        recoveredBlock75Step = 102 ifTrue: [
            recoveredBlock75Stack2 := (recoveredBlock75Stack2) x.
            recoveredBlock75PC := 104.
        ].
        recoveredBlock75Step = 104 ifTrue: [
            recoveredBlock75Stack3 := recoveredLocal3.
            recoveredBlock75PC := 107.
        ].
        recoveredBlock75Step = 107 ifTrue: [
            recoveredBlock75Stack2 := (recoveredBlock75Stack2) @ (recoveredBlock75Stack3).
            recoveredBlock75PC := 109.
        ].
        recoveredBlock75Step = 109 ifTrue: [
            (recoveredBlock75Stack1) moveBasicTo: (recoveredBlock75Stack2).
            recoveredBlock75PC := 111.
        ].
        recoveredBlock75Step = 111 ifTrue: [
            recoveredBlock75Stack1 := recoveredLocal3.
            recoveredBlock75PC := 114.
        ].
        recoveredBlock75Step = 114 ifTrue: [
            recoveredBlock75Stack2 := PinDistance.
            recoveredBlock75PC := 116.
        ].
        recoveredBlock75Step = 116 ifTrue: [
            recoveredBlock75Stack1 := (recoveredBlock75Stack1) - (recoveredBlock75Stack2).
            recoveredBlock75PC := 117.
        ].
        recoveredBlock75Step = 117 ifTrue: [
            recoveredBlock75Stack2 := recoveredBlock75Stack1.
            recoveredBlock75PC := 118.
        ].
        recoveredBlock75Step = 118 ifTrue: [
            recoveredLocal3 := recoveredBlock75Stack2.
            recoveredBlock75PC := 121.
        ].
        recoveredBlock75Step = 121 ifTrue: [
            recoveredBlock75Result := recoveredBlock75Stack1.
            recoveredBlock75Done := true.
        ].
    ].
    recoveredBlock75Result
].
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := (recoveredStack0) externalConnectorGO.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack0 := (recoveredStack0) getPosition.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := (recoveredStack0) y.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 142] ifFalse: [recoveredPC := 194].
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := [:recoveredBlock145Arg1 | 
    | recoveredBlock145Stack0 recoveredBlock145Stack1 recoveredBlock145Stack2 recoveredBlock145Stack3 recoveredBlock145Stack4 recoveredBlock145PC recoveredBlock145Step recoveredBlock145Done recoveredBlock145Result |
    recoveredBlock145Stack0 := self.
    recoveredBlock145PC := 152.
    recoveredBlock145Done := false.
    [recoveredBlock145Done not] whileTrue: [
        recoveredBlock145Step := recoveredBlock145PC.
        recoveredBlock145Step = 152 ifTrue: [
            recoveredBlock145Stack1 := recoveredBlock145Arg1.
            recoveredBlock145PC := 153.
        ].
        recoveredBlock145Step = 153 ifTrue: [
            recoveredBlock145Stack1 := (recoveredBlock145Stack1) externalConnectorGO.
            recoveredBlock145PC := 155.
        ].
        recoveredBlock145Step = 155 ifTrue: [
            recoveredBlock145Stack1 := (recoveredBlock145Stack1) getPosition.
            recoveredBlock145PC := 157.
        ].
        recoveredBlock145Step = 157 ifTrue: [
            recoveredBlock145Stack1 := (recoveredBlock145Stack1) y.
            recoveredBlock145PC := 159.
        ].
        recoveredBlock145Step = 159 ifTrue: [
            recoveredBlock145Stack2 := recoveredLocal2.
            recoveredBlock145PC := 162.
        ].
        recoveredBlock145Step = 162 ifTrue: [
            recoveredBlock145Stack1 := (recoveredBlock145Stack1) < (recoveredBlock145Stack2).
            recoveredBlock145PC := 163.
        ].
        recoveredBlock145Step = 163 ifTrue: [
            (recoveredBlock145Stack1) ifTrue: [recoveredBlock145PC := 166] ifFalse: [recoveredBlock145PC := 181].
        ].
        recoveredBlock145Step = 166 ifTrue: [
            recoveredBlock145Stack1 := recoveredBlock145Arg1.
            recoveredBlock145PC := 167.
        ].
        recoveredBlock145Step = 167 ifTrue: [
            recoveredBlock145Stack2 := recoveredBlock145Arg1.
            recoveredBlock145PC := 168.
        ].
        recoveredBlock145Step = 168 ifTrue: [
            recoveredBlock145Stack2 := (recoveredBlock145Stack2) externalConnectorGO.
            recoveredBlock145PC := 170.
        ].
        recoveredBlock145Step = 170 ifTrue: [
            recoveredBlock145Stack2 := (recoveredBlock145Stack2) getPosition.
            recoveredBlock145PC := 172.
        ].
        recoveredBlock145Step = 172 ifTrue: [
            recoveredBlock145Stack2 := (recoveredBlock145Stack2) x.
            recoveredBlock145PC := 174.
        ].
        recoveredBlock145Step = 174 ifTrue: [
            recoveredBlock145Stack3 := recoveredLocal2.
            recoveredBlock145PC := 177.
        ].
        recoveredBlock145Step = 177 ifTrue: [
            recoveredBlock145Stack2 := (recoveredBlock145Stack2) @ (recoveredBlock145Stack3).
            recoveredBlock145PC := 179.
        ].
        recoveredBlock145Step = 179 ifTrue: [
            (recoveredBlock145Stack1) moveBasicTo: (recoveredBlock145Stack2).
            recoveredBlock145PC := 181.
        ].
        recoveredBlock145Step = 181 ifTrue: [
            recoveredBlock145Stack1 := recoveredLocal2.
            recoveredBlock145PC := 184.
        ].
        recoveredBlock145Step = 184 ifTrue: [
            recoveredBlock145Stack2 := PinDistance.
            recoveredBlock145PC := 186.
        ].
        recoveredBlock145Step = 186 ifTrue: [
            recoveredBlock145Stack1 := (recoveredBlock145Stack1) + (recoveredBlock145Stack2).
            recoveredBlock145PC := 187.
        ].
        recoveredBlock145Step = 187 ifTrue: [
            recoveredBlock145Stack2 := recoveredBlock145Stack1.
            recoveredBlock145PC := 188.
        ].
        recoveredBlock145Step = 188 ifTrue: [
            recoveredLocal2 := recoveredBlock145Stack2.
            recoveredBlock145PC := 191.
        ].
        recoveredBlock145Step = 191 ifTrue: [
            recoveredBlock145Result := recoveredBlock145Stack1.
            recoveredBlock145Done := true.
        ].
    ].
    recoveredBlock145Result
].
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2052c788; bytecode file offset 0xe2909c"
!SGLogicBlockGO methodsFor: 'recovered'!
moveTo: recoveredArg1 andScale: recoveredArg2 fixPoint: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'call_82122'.
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
            recoveredStack1 := LookupTable.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal4 := recoveredStack1.
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
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) connectorGOs.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := [:recoveredBlock28Arg1 | 
    | recoveredBlock28Value0 recoveredBlock28Value1 recoveredBlock28Value2 recoveredBlock28Value3 recoveredBlock28Value4 recoveredBlock28Value5 recoveredBlock28Value6 |
    recoveredBlock28Value0 := recoveredLocal4.
    recoveredBlock28Value1 := recoveredBlock28Arg1.
    recoveredBlock28Value2 := recoveredBlock28Arg1.
    recoveredBlock28Value3 := (recoveredBlock28Value2) getPosition.
    recoveredBlock28Value4 := recoveredArg3.
    recoveredBlock28Value5 := (recoveredBlock28Value3) - (recoveredBlock28Value4).
    recoveredBlock28Value6 := (recoveredBlock28Value0) at: (recoveredBlock28Value1) put: (recoveredBlock28Value5).
    recoveredBlock28Value6
].
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceGOs.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := [:block2810d050Arg1 | 
    | block2810d050Stack0 block2810d050Stack1 block2810d050Stack2 block2810d050Stack3 block2810d050PC block2810d050Step block2810d050Done block2810d050Result |
    block2810d050Stack0 := self.
    block2810d050PC := 4.
    block2810d050Done := false.
    [block2810d050Done not] whileTrue: [
        block2810d050Step := block2810d050PC.
        block2810d050Step = 4 ifTrue: [
            block2810d050Stack1 := false.
            block2810d050PC := 5.
        ].
        block2810d050Step = 5 ifTrue: [
            block2810d050Stack2 := block2810d050Arg1.
            block2810d050PC := 6.
        ].
        block2810d050Step = 6 ifTrue: [
            block2810d050Stack2 := (block2810d050Stack2) getSGCallGO.
            block2810d050PC := 8.
        ].
        block2810d050Step = 8 ifTrue: [
            (block2810d050Stack2 == nil) ifTrue: [block2810d050PC := 18] ifFalse: [block2810d050PC := 12].
        ].
        block2810d050Step = 12 ifTrue: [
            block2810d050PC := 13.
        ].
        block2810d050Step = 13 ifTrue: [
            block2810d050Stack1 := block2810d050Arg1.
            block2810d050PC := 14.
        ].
        block2810d050Step = 14 ifTrue: [
            block2810d050Stack1 := (block2810d050Stack1) interfaceGOs.
            block2810d050PC := 16.
        ].
        block2810d050Step = 16 ifTrue: [
            block2810d050Stack1 := (block2810d050Stack1) notEmpty.
            block2810d050PC := 18.
        ].
        block2810d050Step = 18 ifTrue: [
            block2810d050Result := block2810d050Stack1.
            block2810d050Done := true.
        ].
    ].
    block2810d050Result
].
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := [:recoveredBlock81Arg1 | 
    | recoveredBlock81Value0 recoveredBlock81Value1 recoveredBlock81Value2 recoveredBlock81Value3 recoveredBlock81Value4 recoveredBlock81Value5 recoveredBlock81Value6 recoveredBlock81Value7 recoveredBlock81Value8 recoveredBlock81Value9 recoveredBlock81Value10 |
    recoveredBlock81Value0 := recoveredLocal3.
    recoveredBlock81Value1 := recoveredBlock81Arg1.
    recoveredBlock81Value2 := recoveredBlock81Arg1.
    recoveredBlock81Value3 := (recoveredBlock81Value2) getSGCallGO.
    recoveredBlock81Value4 := (recoveredBlock81Value3) getPosition.
    recoveredBlock81Value5 := recoveredBlock81Arg1.
    recoveredBlock81Value6 := (recoveredBlock81Value5) interfaceGOs.
    recoveredBlock81Value7 := (recoveredBlock81Value6) first.
    recoveredBlock81Value8 := (recoveredBlock81Value7) getPosition.
    recoveredBlock81Value9 := (recoveredBlock81Value4) - (recoveredBlock81Value8).
    recoveredBlock81Value10 := (recoveredBlock81Value0) at: (recoveredBlock81Value1) put: (recoveredBlock81Value9).
    recoveredBlock81Value10
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            (recoveredStack0) moveTo: (recoveredStack1) andScale: (recoveredStack2).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := [:recoveredBlock122Arg1 | 
    | recoveredBlock122Value0 recoveredBlock122Value1 recoveredBlock122Value2 recoveredBlock122Value3 recoveredBlock122Value4 recoveredBlock122Value5 recoveredBlock122Value6 recoveredBlock122Value7 recoveredBlock122Value8 recoveredBlock122Value9 |
    recoveredBlock122Value0 := recoveredBlock122Arg1.
    recoveredBlock122Value1 := recoveredArg3.
    recoveredBlock122Value2 := recoveredLocal4.
    recoveredBlock122Value3 := recoveredBlock122Arg1.
    recoveredBlock122Value4 := (recoveredBlock122Value2) at: (recoveredBlock122Value3).
    recoveredBlock122Value5 := (recoveredBlock122Value1) + (recoveredBlock122Value4).
    (recoveredBlock122Value0) setPosition: (recoveredBlock122Value5).
    recoveredBlock122Value6 := recoveredBlock122Arg1.
    recoveredBlock122Value7 := (self) frameGO.
    recoveredBlock122Value8 := (recoveredBlock122Value7) logicFrame.
    recoveredBlock122Value9 := (recoveredBlock122Value6) fitToRectangle: (recoveredBlock122Value8).
    recoveredBlock122Value9
].
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := [:recoveredBlock155Arg1 | 
    | recoveredBlock155Value0 recoveredBlock155Value1 recoveredBlock155Value2 recoveredBlock155Value3 recoveredBlock155Value4 recoveredBlock155Value5 recoveredBlock155Value6 recoveredBlock155Value7 recoveredBlock155Value8 recoveredBlock155Value9 recoveredBlock155Value10 |
    recoveredBlock155Value0 := recoveredBlock155Arg1.
    recoveredBlock155Value1 := (recoveredBlock155Value0) getSGCallGO.
    recoveredBlock155Value2 := recoveredBlock155Arg1.
    recoveredBlock155Value3 := (recoveredBlock155Value2) interfaceGOs.
    recoveredBlock155Value4 := (recoveredBlock155Value3) first.
    recoveredBlock155Value5 := (recoveredBlock155Value4) getPosition.
    recoveredBlock155Value6 := recoveredLocal3.
    recoveredBlock155Value7 := recoveredBlock155Arg1.
    recoveredBlock155Value8 := (recoveredBlock155Value6) at: (recoveredBlock155Value7).
    recoveredBlock155Value9 := (recoveredBlock155Value5) + (recoveredBlock155Value8).
    recoveredBlock155Value10 := (recoveredBlock155Value1) moveTo: (recoveredBlock155Value9).
    recoveredBlock155Value10
].
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceElementGOs.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack1 := [:block2810d074Arg1 | 
    | block2810d074Value0 block2810d074Value1 |
    block2810d074Value0 := block2810d074Arg1.
    block2810d074Value1 := (block2810d074Value0) repositionConnectorNameGO.
    block2810d074Value1
].
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205335bc; bytecode file offset 0xe2fecc"
!SGLogicBlockGO methodsFor: 'recovered'!
updateIntersectionFor: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [].
    (recoveredValue0) remove: (self) ifAbsent: (recoveredValue1).
    recoveredValue2 := Set.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := ('hw') == ('call_2008402926').
    recoveredValue5 := (self) intersection.
    recoveredValue6 := [:recoveredBlock26Arg1 | 
    | recoveredBlock26Stack0 recoveredBlock26Stack1 recoveredBlock26Stack2 recoveredBlock26Stack3 recoveredBlock26Stack4 recoveredBlock26PC recoveredBlock26Step recoveredBlock26Done recoveredBlock26Result |
    recoveredBlock26Stack0 := self.
    recoveredBlock26PC := 32.
    recoveredBlock26Done := false.
    [recoveredBlock26Done not] whileTrue: [
        recoveredBlock26Step := recoveredBlock26PC.
        recoveredBlock26Step = 32 ifTrue: [
            recoveredBlock26Stack1 := false.
            recoveredBlock26PC := 33.
        ].
        recoveredBlock26Step = 33 ifTrue: [
            recoveredBlock26Stack2 := self.
            recoveredBlock26PC := 34.
        ].
        recoveredBlock26Step = 34 ifTrue: [
            recoveredBlock26Stack3 := recoveredBlock26Arg1.
            recoveredBlock26PC := 37.
        ].
        recoveredBlock26Step = 37 ifTrue: [
            recoveredBlock26Stack2 := (recoveredBlock26Stack2) intersectsBlock: (recoveredBlock26Stack3).
            recoveredBlock26PC := 39.
        ].
        recoveredBlock26Step = 39 ifTrue: [
            (recoveredBlock26Stack2) ifTrue: [recoveredBlock26PC := 42] ifFalse: [recoveredBlock26PC := 70].
        ].
        recoveredBlock26Step = 42 ifTrue: [
            recoveredBlock26PC := 43.
        ].
        recoveredBlock26Step = 43 ifTrue: [
            recoveredBlock26Stack1 := recoveredBlock26Arg1.
            recoveredBlock26PC := 46.
        ].
        recoveredBlock26Step = 46 ifTrue: [
            recoveredBlock26Stack1 := (recoveredBlock26Stack1) manager.
            recoveredBlock26PC := 48.
        ].
        recoveredBlock26Step = 48 ifTrue: [
            recoveredBlock26Stack1 := (recoveredBlock26Stack1) children.
            recoveredBlock26PC := 50.
        ].
        recoveredBlock26Step = 50 ifTrue: [
            recoveredBlock26Stack2 := [:recoveredBlock26Block50Arg1 | 
    | recoveredBlock26Block50Value0 recoveredBlock26Block50Value1 recoveredBlock26Block50Value2 recoveredBlock26Block50Value3 |
    recoveredBlock26Block50Value0 := recoveredBlock26Block50Arg1.
    recoveredBlock26Block50Value1 := (recoveredBlock26Block50Value0) basicGraphObject.
    recoveredBlock26Block50Value2 := recoveredBlock26Arg1.
    recoveredBlock26Block50Value3 := (recoveredBlock26Block50Value1) equals: (recoveredBlock26Block50Value2).
    recoveredBlock26Block50Value3
].
            recoveredBlock26PC := 65.
        ].
        recoveredBlock26Step = 65 ifTrue: [
            recoveredBlock26Stack3 := [].
            recoveredBlock26PC := 67.
        ].
        recoveredBlock26Step = 67 ifTrue: [
            recoveredBlock26Stack1 := (recoveredBlock26Stack1) detect: (recoveredBlock26Stack2) ifNone: (recoveredBlock26Stack3).
            recoveredBlock26PC := 69.
        ].
        recoveredBlock26Step = 69 ifTrue: [
            recoveredBlock26Stack1 := (recoveredBlock26Stack1) notNil.
            recoveredBlock26PC := 70.
        ].
        recoveredBlock26Step = 70 ifTrue: [
            recoveredBlock26Result := recoveredBlock26Stack1.
            recoveredBlock26Done := true.
        ].
    ].
    recoveredBlock26Result
].
    recoveredValue7 := (recoveredValue5) reject: (recoveredValue6).
    recoveredLocal4 := recoveredValue7.
    recoveredValue8 := recoveredLocal4.
    recoveredValue9 := [:recoveredBlock79Arg1 | 
    | recoveredBlock79Value0 recoveredBlock79Value1 recoveredBlock79Value2 recoveredBlock79Value3 |
    recoveredBlock79Value0 := recoveredLocal2.
    recoveredBlock79Value1 := recoveredBlock79Arg1.
    recoveredBlock79Value2 := (self) deleteIntersectionFor: (recoveredBlock79Value1).
    recoveredBlock79Value3 := (recoveredBlock79Value0) addAll: (recoveredBlock79Value2).
    recoveredBlock79Value3
].
    (recoveredValue8) do: (recoveredValue9).
    recoveredValue10 := recoveredLocal4.
    recoveredValue11 := [:recoveredBlock101Arg1 | 
    | recoveredBlock101Value0 recoveredBlock101Value1 recoveredBlock101Value2 recoveredBlock101Value3 |
    recoveredBlock101Value0 := recoveredArg1.
    recoveredBlock101Value1 := recoveredBlock101Arg1.
    recoveredBlock101Value2 := [
    | recoveredBlock101Block114Value0 recoveredBlock101Block114Value1 recoveredBlock101Block114Value2 recoveredBlock101Block114Value3 |
    recoveredBlock101Block114Value0 := recoveredLocal2.
    recoveredBlock101Block114Value1 := recoveredBlock101Arg1.
    recoveredBlock101Block114Value2 := (recoveredBlock101Block114Value1) deleteAllIntersections.
    recoveredBlock101Block114Value3 := (recoveredBlock101Block114Value0) addAll: (recoveredBlock101Block114Value2).
    recoveredBlock101Block114Value3
].
    recoveredBlock101Value3 := (recoveredBlock101Value0) remove: (recoveredBlock101Value1) ifAbsent: (recoveredBlock101Value2).
    recoveredBlock101Value3
].
    (recoveredValue10) do: (recoveredValue11).
    recoveredValue12 := (self) frameGO.
    recoveredValue13 := (recoveredValue12) logicFrame.
    recoveredLocal1 := recoveredValue13.
    recoveredValue14 := recoveredArg1.
    recoveredValue15 := [:recoveredBlock147Arg1 | 
    | recoveredBlock147Stack0 recoveredBlock147Stack1 recoveredBlock147Stack2 recoveredBlock147Stack3 recoveredBlock147Stack4 recoveredBlock147PC recoveredBlock147Step recoveredBlock147Done recoveredBlock147Result |
    recoveredBlock147Stack0 := self.
    recoveredBlock147PC := 154.
    recoveredBlock147Done := false.
    [recoveredBlock147Done not] whileTrue: [
        recoveredBlock147Step := recoveredBlock147PC.
        recoveredBlock147Step = 154 ifTrue: [
            recoveredBlock147Stack1 := false.
            recoveredBlock147PC := 155.
        ].
        recoveredBlock147Step = 155 ifTrue: [
            recoveredBlock147Stack2 := recoveredLocal1.
            recoveredBlock147PC := 158.
        ].
        recoveredBlock147Step = 158 ifTrue: [
            recoveredBlock147Stack3 := recoveredBlock147Arg1.
            recoveredBlock147PC := 159.
        ].
        recoveredBlock147Step = 159 ifTrue: [
            recoveredBlock147Stack3 := (recoveredBlock147Stack3) frameGO.
            recoveredBlock147PC := 161.
        ].
        recoveredBlock147Step = 161 ifTrue: [
            recoveredBlock147Stack3 := (recoveredBlock147Stack3) logicFrame.
            recoveredBlock147PC := 163.
        ].
        recoveredBlock147Step = 163 ifTrue: [
            recoveredBlock147Stack2 := (recoveredBlock147Stack2) intersects: (recoveredBlock147Stack3).
            recoveredBlock147PC := 165.
        ].
        recoveredBlock147Step = 165 ifTrue: [
            (recoveredBlock147Stack2) ifTrue: [recoveredBlock147PC := 168] ifFalse: [recoveredBlock147PC := 173].
        ].
        recoveredBlock147Step = 168 ifTrue: [
            recoveredBlock147PC := 169.
        ].
        recoveredBlock147Step = 169 ifTrue: [
            recoveredBlock147Stack1 := self.
            recoveredBlock147PC := 170.
        ].
        recoveredBlock147Step = 170 ifTrue: [
            recoveredBlock147Stack2 := recoveredBlock147Arg1.
            recoveredBlock147PC := 171.
        ].
        recoveredBlock147Step = 171 ifTrue: [
            recoveredBlock147Stack1 := (recoveredBlock147Stack1) intersectsBlock: (recoveredBlock147Stack2).
            recoveredBlock147PC := 173.
        ].
        recoveredBlock147Step = 173 ifTrue: [
            recoveredBlock147Result := recoveredBlock147Stack1.
            recoveredBlock147Done := true.
        ].
    ].
    recoveredBlock147Result
].
    recoveredValue16 := (recoveredValue14) select: (recoveredValue15).
    recoveredLocal3 := recoveredValue16.
    recoveredValue17 := recoveredLocal3.
    recoveredValue18 := [:recoveredBlock182Arg1 | 
    | recoveredBlock182Value0 recoveredBlock182Value1 recoveredBlock182Value2 recoveredBlock182Value3 |
    recoveredBlock182Value0 := recoveredLocal2.
    recoveredBlock182Value1 := recoveredBlock182Arg1.
    recoveredBlock182Value2 := (self) insertIntersectionFor: (recoveredBlock182Value1).
    recoveredBlock182Value3 := (recoveredBlock182Value0) addAll: (recoveredBlock182Value2).
    recoveredBlock182Value3
].
    (recoveredValue17) do: (recoveredValue18).
    recoveredValue19 := recoveredLocal2.
    ^recoveredValue19
! !

"ASDBase.ic method 0x2053b448; bytecode file offset 0xe37d34"
!SGLogicBlockGO methodsFor: 'recovered'!
replaceConnectionsByConnectorTypeOldGO: recoveredArg1 newGO: recoveredArg2 connectorTypeBlock: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'call_68004'.
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
            recoveredStack2 := 'call_80029'.
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) basicGraphObject.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) interfaceElementGOs.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := [:recoveredBlock22Arg1 | 
    | recoveredBlock22Stack0 recoveredBlock22Stack1 recoveredBlock22Stack2 recoveredBlock22Stack3 recoveredBlock22Stack4 recoveredBlock22PC recoveredBlock22Step recoveredBlock22Done recoveredBlock22Result |
    recoveredBlock22Stack0 := self.
    recoveredBlock22PC := 28.
    recoveredBlock22Done := false.
    [recoveredBlock22Done not] whileTrue: [
        recoveredBlock22Step := recoveredBlock22PC.
        recoveredBlock22Step = 28 ifTrue: [
            recoveredBlock22Stack1 := false.
            recoveredBlock22PC := 29.
        ].
        recoveredBlock22Step = 29 ifTrue: [
            recoveredBlock22Stack2 := recoveredArg3.
            recoveredBlock22PC := 32.
        ].
        recoveredBlock22Step = 32 ifTrue: [
            recoveredBlock22Stack3 := recoveredBlock22Arg1.
            recoveredBlock22PC := 33.
        ].
        recoveredBlock22Step = 33 ifTrue: [
            recoveredBlock22Stack3 := (recoveredBlock22Stack3) getExternalConnectorGO.
            recoveredBlock22PC := 35.
        ].
        recoveredBlock22Step = 35 ifTrue: [
            recoveredBlock22Stack2 := (recoveredBlock22Stack2) value: (recoveredBlock22Stack3).
            recoveredBlock22PC := 37.
        ].
        recoveredBlock22Step = 37 ifTrue: [
            (recoveredBlock22Stack2) ifTrue: [recoveredBlock22PC := 40] ifFalse: [recoveredBlock22PC := 44].
        ].
        recoveredBlock22Step = 40 ifTrue: [
            recoveredBlock22PC := 41.
        ].
        recoveredBlock22Step = 41 ifTrue: [
            recoveredBlock22Stack1 := recoveredBlock22Arg1.
            recoveredBlock22PC := 42.
        ].
        recoveredBlock22Step = 42 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) isVisible.
            recoveredBlock22PC := 44.
        ].
        recoveredBlock22Step = 44 ifTrue: [
            recoveredBlock22Result := recoveredBlock22Stack1.
            recoveredBlock22Done := true.
        ].
    ].
    recoveredBlock22Result
].
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) basicGraphObject.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) interfaceElementGOs.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := [:recoveredBlock56Arg1 | 
    | recoveredBlock56Stack0 recoveredBlock56Stack1 recoveredBlock56Stack2 recoveredBlock56Stack3 recoveredBlock56Stack4 recoveredBlock56PC recoveredBlock56Step recoveredBlock56Done recoveredBlock56Result |
    recoveredBlock56Stack0 := self.
    recoveredBlock56PC := 62.
    recoveredBlock56Done := false.
    [recoveredBlock56Done not] whileTrue: [
        recoveredBlock56Step := recoveredBlock56PC.
        recoveredBlock56Step = 62 ifTrue: [
            recoveredBlock56Stack1 := false.
            recoveredBlock56PC := 63.
        ].
        recoveredBlock56Step = 63 ifTrue: [
            recoveredBlock56Stack2 := recoveredArg3.
            recoveredBlock56PC := 66.
        ].
        recoveredBlock56Step = 66 ifTrue: [
            recoveredBlock56Stack3 := recoveredBlock56Arg1.
            recoveredBlock56PC := 67.
        ].
        recoveredBlock56Step = 67 ifTrue: [
            recoveredBlock56Stack3 := (recoveredBlock56Stack3) getExternalConnectorGO.
            recoveredBlock56PC := 69.
        ].
        recoveredBlock56Step = 69 ifTrue: [
            recoveredBlock56Stack2 := (recoveredBlock56Stack2) value: (recoveredBlock56Stack3).
            recoveredBlock56PC := 71.
        ].
        recoveredBlock56Step = 71 ifTrue: [
            (recoveredBlock56Stack2) ifTrue: [recoveredBlock56PC := 74] ifFalse: [recoveredBlock56PC := 78].
        ].
        recoveredBlock56Step = 74 ifTrue: [
            recoveredBlock56PC := 75.
        ].
        recoveredBlock56Step = 75 ifTrue: [
            recoveredBlock56Stack1 := recoveredBlock56Arg1.
            recoveredBlock56PC := 76.
        ].
        recoveredBlock56Step = 76 ifTrue: [
            recoveredBlock56Stack1 := (recoveredBlock56Stack1) isVisible.
            recoveredBlock56PC := 78.
        ].
        recoveredBlock56Step = 78 ifTrue: [
            recoveredBlock56Result := recoveredBlock56Stack1.
            recoveredBlock56Done := true.
        ].
    ].
    recoveredBlock56Result
].
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := (recoveredStack1) min: (recoveredStack2).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 108] ifFalse: [recoveredPC := 208].
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredPC := 178.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredLocal3 := recoveredStack3.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack5 := [].
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4) ifAbsent: (recoveredStack5).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack5 := [].
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4) ifAbsent: (recoveredStack5).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            (recoveredStack3 == nil) ifTrue: [recoveredPC := 170] ifFalse: [recoveredPC := 152].
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            (recoveredStack3 == nil) ifTrue: [recoveredPC := 170] ifFalse: [recoveredPC := 158].
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack3 := (recoveredStack3) getExternalConnectorGO.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack4 := (recoveredStack4) getExternalConnectorGO.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            (recoveredStack3) reconnectConnectionsWith: (recoveredStack4).
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredLocal2 := recoveredStack4.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredStack2 isInteger]) ifTrue: [(recoveredStack2 + 1 <= recoveredStack1) ifTrue: [recoveredStack2 := recoveredStack2 + 1. recoveredStack3 := recoveredStack2. recoveredPC := 116] ifFalse: [recoveredPC := 207]] ifFalse: [recoveredPC := 181].
        ].
        recoveredStep = 181 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredLocal3 := recoveredStack4.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 203] ifFalse: [recoveredPC := 198].
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredPC := 119.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205497a8; bytecode file offset 0xe460a0"
!SGLogicBlockGO methodsFor: 'recovered'!
replaceConnectionsByMethodNameOldGO: recoveredArg1 newGO: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) basicGraphObject.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) interfaceGOs.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) basicGraphObject.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) interfaceGOs.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 184.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal3 := recoveredStack3.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := 'hw'.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack4 := 'call_82131'.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := (recoveredStack3) == (recoveredStack4).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack4 := [:recoveredBlock52Arg1 | 
    | recoveredBlock52Stack0 recoveredBlock52Stack1 recoveredBlock52Stack2 recoveredBlock52Stack3 recoveredBlock52Stack4 recoveredBlock52PC recoveredBlock52Step recoveredBlock52Done recoveredBlock52Result |
    recoveredBlock52Stack0 := self.
    recoveredBlock52PC := 58.
    recoveredBlock52Done := false.
    [recoveredBlock52Done not] whileTrue: [
        recoveredBlock52Step := recoveredBlock52PC.
        recoveredBlock52Step = 58 ifTrue: [
            recoveredBlock52Stack1 := false.
            recoveredBlock52PC := 59.
        ].
        recoveredBlock52Step = 59 ifTrue: [
            recoveredBlock52Stack2 := recoveredBlock52Arg1.
            recoveredBlock52PC := 60.
        ].
        recoveredBlock52Step = 60 ifTrue: [
            recoveredBlock52Stack2 := (recoveredBlock52Stack2) methodName.
            recoveredBlock52PC := 62.
        ].
        recoveredBlock52Step = 62 ifTrue: [
            recoveredBlock52Stack3 := recoveredLocal2.
            recoveredBlock52PC := 65.
        ].
        recoveredBlock52Step = 65 ifTrue: [
            recoveredBlock52Stack3 := (recoveredBlock52Stack3) methodName.
            recoveredBlock52PC := 67.
        ].
        recoveredBlock52Step = 67 ifTrue: [
            recoveredBlock52Stack2 := (recoveredBlock52Stack2) = (recoveredBlock52Stack3).
            recoveredBlock52PC := 68.
        ].
        recoveredBlock52Step = 68 ifTrue: [
            (recoveredBlock52Stack2) ifTrue: [recoveredBlock52PC := 72] ifFalse: [recoveredBlock52PC := 85].
        ].
        recoveredBlock52Step = 72 ifTrue: [
            recoveredBlock52PC := 73.
        ].
        recoveredBlock52Step = 73 ifTrue: [
            recoveredBlock52Stack1 := recoveredBlock52Arg1.
            recoveredBlock52PC := 74.
        ].
        recoveredBlock52Step = 74 ifTrue: [
            recoveredBlock52Stack1 := (recoveredBlock52Stack1) basicGraphObject.
            recoveredBlock52PC := 75.
        ].
        recoveredBlock52Step = 75 ifTrue: [
            recoveredBlock52Stack1 := (recoveredBlock52Stack1) isSelectorPort.
            recoveredBlock52PC := 77.
        ].
        recoveredBlock52Step = 77 ifTrue: [
            recoveredBlock52Stack2 := recoveredLocal2.
            recoveredBlock52PC := 80.
        ].
        recoveredBlock52Step = 80 ifTrue: [
            recoveredBlock52Stack2 := (recoveredBlock52Stack2) isSelectorPort.
            recoveredBlock52PC := 82.
        ].
        recoveredBlock52Step = 82 ifTrue: [
            recoveredBlock52Stack1 := (recoveredBlock52Stack1) xor: (recoveredBlock52Stack2).
            recoveredBlock52PC := 84.
        ].
        recoveredBlock52Step = 84 ifTrue: [
            recoveredBlock52Stack1 := (recoveredBlock52Stack1) not.
            recoveredBlock52PC := 85.
        ].
        recoveredBlock52Step = 85 ifTrue: [
            recoveredBlock52Result := recoveredBlock52Stack1.
            recoveredBlock52Done := true.
        ].
    ].
    recoveredBlock52Result
].
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack5 := [].
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack3 := (recoveredStack3) detect: (recoveredStack4) ifNone: (recoveredStack5).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack3 == nil) ifTrue: [recoveredPC := 176] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack3 := (recoveredStack3) isVisible.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 108] ifFalse: [recoveredPC := 176].
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack3) prepareForReplaceWith: (recoveredStack4).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack3 := (recoveredStack3) interfaceGOs.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack4 := [:recoveredBlock120Arg1 | 
    | recoveredBlock120Local1 recoveredBlock120Stack0 recoveredBlock120Stack1 recoveredBlock120Stack2 recoveredBlock120Stack3 recoveredBlock120Stack4 recoveredBlock120PC recoveredBlock120Step recoveredBlock120Done recoveredBlock120Result |
    recoveredBlock120Stack0 := self.
    recoveredBlock120PC := 126.
    recoveredBlock120Done := false.
    [recoveredBlock120Done not] whileTrue: [
        recoveredBlock120Step := recoveredBlock120PC.
        recoveredBlock120Step = 126 ifTrue: [
            recoveredBlock120Stack1 := recoveredLocal1.
            recoveredBlock120PC := 129.
        ].
        recoveredBlock120Step = 129 ifTrue: [
            recoveredBlock120Stack1 := (recoveredBlock120Stack1) interfaceGOs.
            recoveredBlock120PC := 130.
        ].
        recoveredBlock120Step = 130 ifTrue: [
            recoveredBlock120Stack2 := [:recoveredBlock120Block130Arg1 | 
    | recoveredBlock120Block130Value0 recoveredBlock120Block130Value1 recoveredBlock120Block130Value2 recoveredBlock120Block130Value3 recoveredBlock120Block130Value4 |
    recoveredBlock120Block130Value0 := recoveredBlock120Block130Arg1.
    recoveredBlock120Block130Value1 := (recoveredBlock120Block130Value0) connectorName.
    recoveredBlock120Block130Value2 := recoveredBlock120Arg1.
    recoveredBlock120Block130Value3 := (recoveredBlock120Block130Value2) connectorName.
    recoveredBlock120Block130Value4 := (recoveredBlock120Block130Value1) = (recoveredBlock120Block130Value3).
    recoveredBlock120Block130Value4
].
            recoveredBlock120PC := 146.
        ].
        recoveredBlock120Step = 146 ifTrue: [
            recoveredBlock120Stack3 := [].
            recoveredBlock120PC := 148.
        ].
        recoveredBlock120Step = 148 ifTrue: [
            recoveredBlock120Stack1 := (recoveredBlock120Stack1) detect: (recoveredBlock120Stack2) ifNone: (recoveredBlock120Stack3).
            recoveredBlock120PC := 150.
        ].
        recoveredBlock120Step = 150 ifTrue: [
            recoveredBlock120Local1 := recoveredBlock120Stack1.
            recoveredBlock120PC := 153.
        ].
        recoveredBlock120Step = 153 ifTrue: [
            recoveredBlock120Stack1 := nil.
            recoveredBlock120PC := 154.
        ].
        recoveredBlock120Step = 154 ifTrue: [
            recoveredBlock120Stack2 := recoveredBlock120Local1.
            recoveredBlock120PC := 157.
        ].
        recoveredBlock120Step = 157 ifTrue: [
            (recoveredBlock120Stack2 == nil) ifTrue: [recoveredBlock120PC := 173] ifFalse: [recoveredBlock120PC := 160].
        ].
        recoveredBlock120Step = 160 ifTrue: [
            recoveredBlock120PC := 161.
        ].
        recoveredBlock120Step = 161 ifTrue: [
            recoveredBlock120Stack1 := recoveredBlock120Arg1.
            recoveredBlock120PC := 164.
        ].
        recoveredBlock120Step = 164 ifTrue: [
            recoveredBlock120Stack1 := (recoveredBlock120Stack1) externalConnectorGO.
            recoveredBlock120PC := 166.
        ].
        recoveredBlock120Step = 166 ifTrue: [
            recoveredBlock120Stack2 := recoveredBlock120Local1.
            recoveredBlock120PC := 169.
        ].
        recoveredBlock120Step = 169 ifTrue: [
            recoveredBlock120Stack2 := (recoveredBlock120Stack2) externalConnectorGO.
            recoveredBlock120PC := 171.
        ].
        recoveredBlock120Step = 171 ifTrue: [
            recoveredBlock120Stack1 := (recoveredBlock120Stack1) reconnectConnectionsWith: (recoveredBlock120Stack2).
            recoveredBlock120PC := 173.
        ].
        recoveredBlock120Step = 173 ifTrue: [
            recoveredBlock120Result := recoveredBlock120Stack1.
            recoveredBlock120Done := true.
        ].
    ].
    recoveredBlock120Result
].
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            (recoveredStack3) do: (recoveredStack4).
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredLocal2 := recoveredStack4.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredStack2 isInteger]) ifTrue: [(recoveredStack2 + 1 <= recoveredStack1) ifTrue: [recoveredStack2 := recoveredStack2 + 1. recoveredStack3 := recoveredStack2. recoveredPC := 30] ifFalse: [recoveredPC := 216]] ifFalse: [recoveredPC := 189].
        ].
        recoveredStep = 189 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredLocal3 := recoveredStack4.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 212] ifFalse: [recoveredPC := 206].
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredPC := 33.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205e5204; bytecode file offset 0xee1b28"
!SGLogicBlockGO methodsFor: 'recovered'!
scaleBasic: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) frameGO.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) logicFrame.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := 'hw'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := 'Call2007402842'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := actualNameGO.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 141] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := actualNameGO.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) getPosition.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) x.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) left.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 51].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) left.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := actualNameGO.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) getPosition.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := actualNameGO.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) getPosition.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) x.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) right.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 81].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := actualNameGO.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) getPosition.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) x.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) right.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := actualNameGO.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) getPosition.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := (recoveredStack0) y.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := (recoveredStack1) top.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 111].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := (recoveredStack0) top.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := actualNameGO.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := (recoveredStack1) getPosition.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := actualNameGO.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := (recoveredStack0) getPosition.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := (recoveredStack0) y.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := (recoveredStack1) bottom.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 126] ifFalse: [recoveredPC := 141].
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := actualNameGO.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := (recoveredStack0) getPosition.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := (recoveredStack0) y.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := (recoveredStack1) bottom.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack0 := actualNameGO.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 168] ifFalse: [recoveredPC := 146].
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := actualNameGO.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := (recoveredStack1) getPosition.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack2 := actualNameGO.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack2 := (recoveredStack2) getPosition.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack3 := (recoveredStack3) getPosition.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack2 := (recoveredStack2) rounded.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            (recoveredStack0) moveTo: (recoveredStack1).
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack0 := (recoveredStack0) frameGO.
            recoveredPC := 170.
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
            recoveredStack1 := (recoveredStack1) correctedScalePoint: (recoveredStack2).
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            (recoveredStack0) scale: (recoveredStack1).
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack0 := (recoveredStack0) frameGO.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack0 := (recoveredStack0) logicFrame.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 205] ifFalse: [recoveredPC := 190].
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack0 := actualNameGO.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack0 := (recoveredStack0) getPosition.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack1 := (recoveredStack1) left.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            (recoveredStack0) x: (recoveredStack1).
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 227] ifFalse: [recoveredPC := 212].
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack0 := actualNameGO.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack0 := (recoveredStack0) getPosition.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack1 := (recoveredStack1) right.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            (recoveredStack0) x: (recoveredStack1).
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 249] ifFalse: [recoveredPC := 234].
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack0 := actualNameGO.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack0 := (recoveredStack0) getPosition.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack1 := (recoveredStack1) top.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            (recoveredStack0) y: (recoveredStack1).
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 271] ifFalse: [recoveredPC := 256].
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack0 := actualNameGO.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack0 := (recoveredStack0) getPosition.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack1 := (recoveredStack1) bottom.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            (recoveredStack0) y: (recoveredStack1).
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack0 := LookupTable.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceGOs.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack1 := [:recoveredBlock281Arg1 | 
    | recoveredBlock281Stack0 recoveredBlock281Stack1 recoveredBlock281Stack2 recoveredBlock281Stack3 recoveredBlock281Stack4 recoveredBlock281Stack5 recoveredBlock281PC recoveredBlock281Step recoveredBlock281Done recoveredBlock281Result |
    recoveredBlock281Stack0 := self.
    recoveredBlock281PC := 288.
    recoveredBlock281Done := false.
    [recoveredBlock281Done not] whileTrue: [
        recoveredBlock281Step := recoveredBlock281PC.
        recoveredBlock281Step = 288 ifTrue: [
            recoveredBlock281Stack1 := nil.
            recoveredBlock281PC := 289.
        ].
        recoveredBlock281Step = 289 ifTrue: [
            recoveredBlock281Stack2 := recoveredBlock281Arg1.
            recoveredBlock281PC := 290.
        ].
        recoveredBlock281Step = 290 ifTrue: [
            recoveredBlock281Stack2 := (recoveredBlock281Stack2) getSGCallGO.
            recoveredBlock281PC := 292.
        ].
        recoveredBlock281Step = 292 ifTrue: [
            (recoveredBlock281Stack2 == nil) ifTrue: [recoveredBlock281PC := 312] ifFalse: [recoveredBlock281PC := 296].
        ].
        recoveredBlock281Step = 296 ifTrue: [
            recoveredBlock281PC := 297.
        ].
        recoveredBlock281Step = 297 ifTrue: [
            recoveredBlock281Stack1 := recoveredLocal1.
            recoveredBlock281PC := 300.
        ].
        recoveredBlock281Step = 300 ifTrue: [
            recoveredBlock281Stack2 := recoveredBlock281Arg1.
            recoveredBlock281PC := 301.
        ].
        recoveredBlock281Step = 301 ifTrue: [
            recoveredBlock281Stack3 := recoveredBlock281Arg1.
            recoveredBlock281PC := 302.
        ].
        recoveredBlock281Step = 302 ifTrue: [
            recoveredBlock281Stack3 := (recoveredBlock281Stack3) getPosition.
            recoveredBlock281PC := 304.
        ].
        recoveredBlock281Step = 304 ifTrue: [
            recoveredBlock281Stack4 := recoveredBlock281Arg1.
            recoveredBlock281PC := 305.
        ].
        recoveredBlock281Step = 305 ifTrue: [
            recoveredBlock281Stack4 := (recoveredBlock281Stack4) getSGCallGO.
            recoveredBlock281PC := 307.
        ].
        recoveredBlock281Step = 307 ifTrue: [
            recoveredBlock281Stack4 := (recoveredBlock281Stack4) getPosition.
            recoveredBlock281PC := 309.
        ].
        recoveredBlock281Step = 309 ifTrue: [
            recoveredBlock281Stack3 := (recoveredBlock281Stack3) - (recoveredBlock281Stack4).
            recoveredBlock281PC := 310.
        ].
        recoveredBlock281Step = 310 ifTrue: [
            recoveredBlock281Stack1 := (recoveredBlock281Stack1) at: (recoveredBlock281Stack2) put: (recoveredBlock281Stack3).
            recoveredBlock281PC := 312.
        ].
        recoveredBlock281Step = 312 ifTrue: [
            recoveredBlock281Result := recoveredBlock281Stack1.
            recoveredBlock281Done := true.
        ].
    ].
    recoveredBlock281Result
].
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            (recoveredStack0) repositionScopeGO.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack0 := (recoveredStack0) connectorGOs.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack1 := [:recoveredBlock321Arg1 | 
    | recoveredBlock321Value0 recoveredBlock321Value1 recoveredBlock321Value2 recoveredBlock321Value3 |
    recoveredBlock321Value0 := recoveredBlock321Arg1.
    recoveredBlock321Value1 := (self) frameGO.
    recoveredBlock321Value2 := (recoveredBlock321Value1) logicFrame.
    recoveredBlock321Value3 := (recoveredBlock321Value0) fitToRectangle: (recoveredBlock321Value2).
    recoveredBlock321Value3
].
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceGOs.
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack1 := [:recoveredBlock340Arg1 | 
    | recoveredBlock340Stack0 recoveredBlock340Stack1 recoveredBlock340Stack2 recoveredBlock340Stack3 recoveredBlock340Stack4 recoveredBlock340Stack5 recoveredBlock340PC recoveredBlock340Step recoveredBlock340Done recoveredBlock340Result |
    recoveredBlock340Stack0 := self.
    recoveredBlock340PC := 346.
    recoveredBlock340Done := false.
    [recoveredBlock340Done not] whileTrue: [
        recoveredBlock340Step := recoveredBlock340PC.
        recoveredBlock340Step = 346 ifTrue: [
            recoveredBlock340Stack1 := nil.
            recoveredBlock340PC := 347.
        ].
        recoveredBlock340Step = 347 ifTrue: [
            recoveredBlock340Stack2 := recoveredBlock340Arg1.
            recoveredBlock340PC := 348.
        ].
        recoveredBlock340Step = 348 ifTrue: [
            recoveredBlock340Stack2 := (recoveredBlock340Stack2) getSGCallGO.
            recoveredBlock340PC := 350.
        ].
        recoveredBlock340Step = 350 ifTrue: [
            (recoveredBlock340Stack2 == nil) ifTrue: [recoveredBlock340PC := 380] ifFalse: [recoveredBlock340PC := 354].
        ].
        recoveredBlock340Step = 354 ifTrue: [
            recoveredBlock340Stack2 := recoveredLocal1.
            recoveredBlock340PC := 357.
        ].
        recoveredBlock340Step = 357 ifTrue: [
            recoveredBlock340Stack3 := recoveredBlock340Arg1.
            recoveredBlock340PC := 358.
        ].
        recoveredBlock340Step = 358 ifTrue: [
            recoveredBlock340Stack2 := (recoveredBlock340Stack2) includesKey: (recoveredBlock340Stack3).
            recoveredBlock340PC := 360.
        ].
        recoveredBlock340Step = 360 ifTrue: [
            (recoveredBlock340Stack2) ifTrue: [recoveredBlock340PC := 364] ifFalse: [recoveredBlock340PC := 380].
        ].
        recoveredBlock340Step = 364 ifTrue: [
            recoveredBlock340PC := 365.
        ].
        recoveredBlock340Step = 365 ifTrue: [
            recoveredBlock340Stack1 := recoveredBlock340Arg1.
            recoveredBlock340PC := 366.
        ].
        recoveredBlock340Step = 366 ifTrue: [
            recoveredBlock340Stack1 := (recoveredBlock340Stack1) getSGCallGO.
            recoveredBlock340PC := 368.
        ].
        recoveredBlock340Step = 368 ifTrue: [
            recoveredBlock340Stack2 := recoveredBlock340Arg1.
            recoveredBlock340PC := 369.
        ].
        recoveredBlock340Step = 369 ifTrue: [
            recoveredBlock340Stack2 := (recoveredBlock340Stack2) getPosition.
            recoveredBlock340PC := 371.
        ].
        recoveredBlock340Step = 371 ifTrue: [
            recoveredBlock340Stack3 := recoveredLocal1.
            recoveredBlock340PC := 374.
        ].
        recoveredBlock340Step = 374 ifTrue: [
            recoveredBlock340Stack4 := recoveredBlock340Arg1.
            recoveredBlock340PC := 375.
        ].
        recoveredBlock340Step = 375 ifTrue: [
            recoveredBlock340Stack3 := (recoveredBlock340Stack3) at: (recoveredBlock340Stack4).
            recoveredBlock340PC := 377.
        ].
        recoveredBlock340Step = 377 ifTrue: [
            recoveredBlock340Stack2 := (recoveredBlock340Stack2) - (recoveredBlock340Stack3).
            recoveredBlock340PC := 378.
        ].
        recoveredBlock340Step = 378 ifTrue: [
            recoveredBlock340Stack1 := (recoveredBlock340Stack1) moveTo: (recoveredBlock340Stack2).
            recoveredBlock340PC := 380.
        ].
        recoveredBlock340Step = 380 ifTrue: [
            recoveredBlock340Result := recoveredBlock340Stack1.
            recoveredBlock340Done := true.
        ].
    ].
    recoveredBlock340Result
].
            recoveredPC := 381.
        ].
        recoveredStep = 381 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 383.
        ].
        recoveredStep = 383 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 384.
        ].
        recoveredStep = 384 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205ea28c; bytecode file offset 0xee6bc0"
!SGLogicBlockGO methodsFor: 'recovered'!
repositionInterfaces
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:block2811b0e4Arg1 | 
    | block2811b0e4Value0 block2811b0e4Value1 |
    block2811b0e4Value0 := block2811b0e4Arg1.
    block2811b0e4Value1 := (block2811b0e4Value0) goesRight.
    block2811b0e4Value1
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := [:block2811b108Arg1 :block2811b108Arg2 | 
    | block2811b108Value0 block2811b108Value1 block2811b108Value2 block2811b108Value3 block2811b108Value4 block2811b108Value5 block2811b108Value6 |
    block2811b108Value0 := block2811b108Arg1.
    block2811b108Value1 := (block2811b108Value0) getPosition.
    block2811b108Value2 := (block2811b108Value1) y.
    block2811b108Value3 := block2811b108Arg2.
    block2811b108Value4 := (block2811b108Value3) getPosition.
    block2811b108Value5 := (block2811b108Value4) y.
    block2811b108Value6 := (block2811b108Value2) < (block2811b108Value5).
    block2811b108Value6
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) collectInterfacesBlockCond: (recoveredStack1) sortBlock: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal9 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := [:block2811b12cArg1 | 
    | block2811b12cValue0 block2811b12cValue1 |
    block2811b12cValue0 := block2811b12cArg1.
    block2811b12cValue1 := (block2811b12cValue0) goesLeft.
    block2811b12cValue1
].
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := [:block2811b150Arg1 :block2811b150Arg2 | 
    | block2811b150Value0 block2811b150Value1 block2811b150Value2 block2811b150Value3 block2811b150Value4 block2811b150Value5 block2811b150Value6 |
    block2811b150Value0 := block2811b150Arg1.
    block2811b150Value1 := (block2811b150Value0) getPosition.
    block2811b150Value2 := (block2811b150Value1) y.
    block2811b150Value3 := block2811b150Arg2.
    block2811b150Value4 := (block2811b150Value3) getPosition.
    block2811b150Value5 := (block2811b150Value4) y.
    block2811b150Value6 := (block2811b150Value2) < (block2811b150Value5).
    block2811b150Value6
].
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) collectInterfacesBlockCond: (recoveredStack1) sortBlock: (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := [:block2811b174Arg1 | 
    | block2811b174Value0 block2811b174Value1 |
    block2811b174Value0 := block2811b174Arg1.
    block2811b174Value1 := (block2811b174Value0) goesDown.
    block2811b174Value1
].
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := [:block2811b198Arg1 :block2811b198Arg2 | 
    | block2811b198Value0 block2811b198Value1 block2811b198Value2 block2811b198Value3 block2811b198Value4 block2811b198Value5 block2811b198Value6 |
    block2811b198Value0 := block2811b198Arg1.
    block2811b198Value1 := (block2811b198Value0) getPosition.
    block2811b198Value2 := (block2811b198Value1) x.
    block2811b198Value3 := block2811b198Arg2.
    block2811b198Value4 := (block2811b198Value3) getPosition.
    block2811b198Value5 := (block2811b198Value4) x.
    block2811b198Value6 := (block2811b198Value2) < (block2811b198Value5).
    block2811b198Value6
].
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := (recoveredStack0) collectInterfacesBlockCond: (recoveredStack1) sortBlock: (recoveredStack2).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := [:block2811b1bcArg1 | 
    | block2811b1bcValue0 block2811b1bcValue1 |
    block2811b1bcValue0 := block2811b1bcArg1.
    block2811b1bcValue1 := (block2811b1bcValue0) goesUp.
    block2811b1bcValue1
].
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := [:block2811b1e0Arg1 :block2811b1e0Arg2 | 
    | block2811b1e0Value0 block2811b1e0Value1 block2811b1e0Value2 block2811b1e0Value3 block2811b1e0Value4 block2811b1e0Value5 block2811b1e0Value6 |
    block2811b1e0Value0 := block2811b1e0Arg1.
    block2811b1e0Value1 := (block2811b1e0Value0) getPosition.
    block2811b1e0Value2 := (block2811b1e0Value1) x.
    block2811b1e0Value3 := block2811b1e0Arg2.
    block2811b1e0Value4 := (block2811b1e0Value3) getPosition.
    block2811b1e0Value5 := (block2811b1e0Value4) x.
    block2811b1e0Value6 := (block2811b1e0Value2) < (block2811b1e0Value5).
    block2811b1e0Value6
].
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := (recoveredStack0) collectInterfacesBlockCond: (recoveredStack1) sortBlock: (recoveredStack2).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := (recoveredStack0) logicFrame.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := (recoveredStack0) left.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := (recoveredStack0) logicFrame.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := (recoveredStack0) right.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := (recoveredStack0) logicFrame.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := (recoveredStack0) top.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := (recoveredStack0) logicFrame.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := (recoveredStack0) bottom.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := SGSwitchGO.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 234] ifFalse: [recoveredPC := 158].
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := PinDistance.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack0 := (recoveredStack0) \\ (recoveredStack1).
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 170] ifFalse: [recoveredPC := 180].
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack1 := PinDistance.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := (recoveredStack1) // (recoveredStack2).
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack1 := PinDistance.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack0 := (recoveredStack0) \\ (recoveredStack1).
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 190] ifFalse: [recoveredPC := 198].
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack1 := PinDistance.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack1 := (recoveredStack1) // (recoveredStack2).
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack1 := PinDistance.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack0 := (recoveredStack0) \\ (recoveredStack1).
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 208] ifFalse: [recoveredPC := 216].
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack1 := PinDistance.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack1 := (recoveredStack1) // (recoveredStack2).
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack1 := PinDistance.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack0 := (recoveredStack0) \\ (recoveredStack1).
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 226] ifFalse: [recoveredPC := 234].
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack1 := PinDistance.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack1 := (recoveredStack1) // (recoveredStack2).
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack1 := [:recoveredBlock236Arg1 | 
    | recoveredBlock236Value0 recoveredBlock236Value1 recoveredBlock236Value2 recoveredBlock236Value3 recoveredBlock236Value4 recoveredBlock236Value5 recoveredBlock236Value6 recoveredBlock236Value7 |
    recoveredBlock236Value0 := recoveredBlock236Arg1.
    recoveredBlock236Value1 := (self) logicFrame.
    recoveredBlock236Value2 := (recoveredBlock236Value1) left.
    recoveredBlock236Value3 := recoveredBlock236Arg1.
    recoveredBlock236Value4 := (recoveredBlock236Value3) getPosition.
    recoveredBlock236Value5 := (recoveredBlock236Value4) y.
    recoveredBlock236Value6 := (recoveredBlock236Value2) @ (recoveredBlock236Value5).
    recoveredBlock236Value7 := (recoveredBlock236Value0) moveBasicTo: (recoveredBlock236Value6).
    recoveredBlock236Value7
].
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            (recoveredStack0) shrinkInterfacePinsVertical: (recoveredStack1) top: (recoveredStack2) bottom: (recoveredStack3).
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack1 := [:recoveredBlock269Arg1 | 
    | recoveredBlock269Value0 recoveredBlock269Value1 recoveredBlock269Value2 recoveredBlock269Value3 recoveredBlock269Value4 recoveredBlock269Value5 recoveredBlock269Value6 recoveredBlock269Value7 |
    recoveredBlock269Value0 := recoveredBlock269Arg1.
    recoveredBlock269Value1 := (self) logicFrame.
    recoveredBlock269Value2 := (recoveredBlock269Value1) right.
    recoveredBlock269Value3 := recoveredBlock269Arg1.
    recoveredBlock269Value4 := (recoveredBlock269Value3) getPosition.
    recoveredBlock269Value5 := (recoveredBlock269Value4) y.
    recoveredBlock269Value6 := (recoveredBlock269Value2) @ (recoveredBlock269Value5).
    recoveredBlock269Value7 := (recoveredBlock269Value0) moveBasicTo: (recoveredBlock269Value6).
    recoveredBlock269Value7
].
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            (recoveredStack0) shrinkInterfacePinsVertical: (recoveredStack1) top: (recoveredStack2) bottom: (recoveredStack3).
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack1 := SGSwitchGO.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 312] ifFalse: [recoveredPC := 320].
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            recoveredStack1 := PinDistance.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredPC := 321.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack0 := 'hw'.
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredStack1 := 'call_97948'.
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack1 := [:recoveredBlock330Arg1 | 
    | recoveredBlock330Value0 recoveredBlock330Value1 recoveredBlock330Value2 recoveredBlock330Value3 recoveredBlock330Value4 recoveredBlock330Value5 recoveredBlock330Value6 recoveredBlock330Value7 |
    recoveredBlock330Value0 := recoveredBlock330Arg1.
    recoveredBlock330Value1 := recoveredBlock330Arg1.
    recoveredBlock330Value2 := (recoveredBlock330Value1) getPosition.
    recoveredBlock330Value3 := (recoveredBlock330Value2) x.
    recoveredBlock330Value4 := (self) logicFrame.
    recoveredBlock330Value5 := (recoveredBlock330Value4) top.
    recoveredBlock330Value6 := (recoveredBlock330Value3) @ (recoveredBlock330Value5).
    recoveredBlock330Value7 := (recoveredBlock330Value0) moveBasicTo: (recoveredBlock330Value6).
    recoveredBlock330Value7
].
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            (recoveredStack0) shrinkInterfacePinsHorizontal: (recoveredStack1) left: (recoveredStack2) right: (recoveredStack3).
            recoveredPC := 362.
        ].
        recoveredStep = 362 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 364.
        ].
        recoveredStep = 364 ifTrue: [
            recoveredStack1 := [:recoveredBlock364Arg1 | 
    | recoveredBlock364Value0 recoveredBlock364Value1 recoveredBlock364Value2 recoveredBlock364Value3 recoveredBlock364Value4 recoveredBlock364Value5 recoveredBlock364Value6 recoveredBlock364Value7 |
    recoveredBlock364Value0 := recoveredBlock364Arg1.
    recoveredBlock364Value1 := recoveredBlock364Arg1.
    recoveredBlock364Value2 := (recoveredBlock364Value1) getPosition.
    recoveredBlock364Value3 := (recoveredBlock364Value2) x.
    recoveredBlock364Value4 := (self) logicFrame.
    recoveredBlock364Value5 := (recoveredBlock364Value4) bottom.
    recoveredBlock364Value6 := (recoveredBlock364Value3) @ (recoveredBlock364Value5).
    recoveredBlock364Value7 := (recoveredBlock364Value0) moveBasicTo: (recoveredBlock364Value6).
    recoveredBlock364Value7
].
            recoveredPC := 385.
        ].
        recoveredStep = 385 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 387.
        ].
        recoveredStep = 387 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 388.
        ].
        recoveredStep = 388 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 390.
        ].
        recoveredStep = 390 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 393.
        ].
        recoveredStep = 393 ifTrue: [
            (recoveredStack0) shrinkInterfacePinsHorizontal: (recoveredStack1) left: (recoveredStack2) right: (recoveredStack3).
            recoveredPC := 396.
        ].
        recoveredStep = 396 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 397.
        ].
        recoveredStep = 397 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205f25b4; bytecode file offset 0xeeef50"
!SGLogicBlockGO methodsFor: 'recovered'!
lookupConnectionPointFor: recoveredArg1 interfaces: recoveredArg2 with: recoveredArg3 alwaysShowSelectionList: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Local1 recoveredBlock13Stack0 recoveredBlock13Stack1 recoveredBlock13Stack2 recoveredBlock13Stack3 recoveredBlock13PC recoveredBlock13Step recoveredBlock13Done recoveredBlock13Result |
    recoveredBlock13Stack0 := self.
    recoveredBlock13PC := 20.
    recoveredBlock13Done := false.
    [recoveredBlock13Done not] whileTrue: [
        recoveredBlock13Step := recoveredBlock13PC.
        recoveredBlock13Step = 20 ifTrue: [
            recoveredBlock13Stack1 := nil.
            recoveredBlock13PC := 21.
        ].
        recoveredBlock13Step = 21 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 24.
        ].
        recoveredBlock13Step = 24 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) isVisible.
            recoveredBlock13PC := 25.
        ].
        recoveredBlock13Step = 25 ifTrue: [
            (recoveredBlock13Stack2) ifTrue: [recoveredBlock13PC := 28] ifFalse: [recoveredBlock13PC := 166].
        ].
        recoveredBlock13Step = 28 ifTrue: [
            recoveredBlock13PC := 29.
        ].
        recoveredBlock13Step = 29 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg1.
            recoveredBlock13PC := 32.
        ].
        recoveredBlock13Step = 32 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) interfaceGOs.
            recoveredBlock13PC := 33.
        ].
        recoveredBlock13Step = 33 ifTrue: [
            recoveredBlock13Local1 := recoveredBlock13Stack1.
            recoveredBlock13PC := 36.
        ].
        recoveredBlock13Step = 36 ifTrue: [
            recoveredBlock13Stack1 := 'Hw'.
            recoveredBlock13PC := 38.
        ].
        recoveredBlock13Step = 38 ifTrue: [
            recoveredBlock13Stack2 := 'call_80222'.
            recoveredBlock13PC := 40.
        ].
        recoveredBlock13Step = 40 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) == (recoveredBlock13Stack2).
            recoveredBlock13PC := 41.
        ].
        recoveredBlock13Step = 41 ifTrue: [
            recoveredBlock13PC := 42.
        ].
        recoveredBlock13Step = 42 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg1.
            recoveredBlock13PC := 45.
        ].
        recoveredBlock13Step = 45 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) getSGCallGO.
            recoveredBlock13PC := 47.
        ].
        recoveredBlock13Step = 47 ifTrue: [
            (recoveredBlock13Stack1 == nil) ifTrue: [recoveredBlock13PC := 75] ifFalse: [recoveredBlock13PC := 50].
        ].
        recoveredBlock13Step = 50 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg1.
            recoveredBlock13PC := 53.
        ].
        recoveredBlock13Step = 53 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) getSGCallGO.
            recoveredBlock13PC := 55.
        ].
        recoveredBlock13Step = 55 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) hasPin.
            recoveredBlock13PC := 57.
        ].
        recoveredBlock13Step = 57 ifTrue: [
            (recoveredBlock13Stack1) ifTrue: [recoveredBlock13PC := 60] ifFalse: [recoveredBlock13PC := 75].
        ].
        recoveredBlock13Step = 60 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Local1.
            recoveredBlock13PC := 63.
        ].
        recoveredBlock13Step = 63 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 66.
        ].
        recoveredBlock13Step = 66 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) getSGCallGO.
            recoveredBlock13PC := 68.
        ].
        recoveredBlock13Step = 68 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) interfaceElementGO.
            recoveredBlock13PC := 70.
        ].
        recoveredBlock13Step = 70 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) copyWith: (recoveredBlock13Stack2).
            recoveredBlock13PC := 72.
        ].
        recoveredBlock13Step = 72 ifTrue: [
            recoveredBlock13Local1 := recoveredBlock13Stack1.
            recoveredBlock13PC := 75.
        ].
        recoveredBlock13Step = 75 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Local1.
            recoveredBlock13PC := 78.
        ].
        recoveredBlock13Step = 78 ifTrue: [
            recoveredBlock13Stack2 := [:recoveredBlock13Block78Arg1 | 
    | recoveredBlock13Block78Local1 recoveredBlock13Block78Local2 recoveredBlock13Block78Local3 recoveredBlock13Block78Local4 recoveredBlock13Block78Stack0 recoveredBlock13Block78Stack1 recoveredBlock13Block78Stack2 recoveredBlock13Block78Stack3 recoveredBlock13Block78Stack4 recoveredBlock13Block78Stack5 recoveredBlock13Block78PC recoveredBlock13Block78Step recoveredBlock13Block78Done recoveredBlock13Block78Result |
    recoveredBlock13Block78Stack0 := nil.
    recoveredBlock13Block78PC := 84.
    recoveredBlock13Block78Done := false.
    [recoveredBlock13Block78Done not] whileTrue: [
        recoveredBlock13Block78Step := recoveredBlock13Block78PC.
        recoveredBlock13Block78Step = 84 ifTrue: [
            recoveredBlock13Block78Stack1 := nil.
            recoveredBlock13Block78PC := 85.
        ].
        recoveredBlock13Block78Step = 85 ifTrue: [
            recoveredBlock13Block78Stack2 := recoveredBlock13Block78Arg1.
            recoveredBlock13Block78PC := 87.
        ].
        recoveredBlock13Block78Step = 87 ifTrue: [
            recoveredBlock13Block78Stack3 := recoveredBlock13Block78Arg1.
            recoveredBlock13Block78PC := 89.
        ].
        recoveredBlock13Block78Step = 89 ifTrue: [
            recoveredBlock13Block78Stack3 := (recoveredBlock13Block78Stack3) getPosition.
            recoveredBlock13Block78PC := 91.
        ].
        recoveredBlock13Block78Step = 91 ifTrue: [
            recoveredBlock13Block78Stack4 := recoveredArg3.
            recoveredBlock13Block78PC := 94.
        ].
        recoveredBlock13Block78Step = 94 ifTrue: [
            recoveredBlock13Block78Stack2 := (recoveredBlock13Block78Stack2) connectionPointFor: (recoveredBlock13Block78Stack3) with: (recoveredBlock13Block78Stack4).
            recoveredBlock13Block78PC := 96.
        ].
        recoveredBlock13Block78Step = 96 ifTrue: [
            recoveredBlock13Block78Stack3 := recoveredBlock13Block78Stack2.
            recoveredBlock13Block78PC := 97.
        ].
        recoveredBlock13Block78Step = 97 ifTrue: [
            recoveredBlock13Block78Local4 := recoveredBlock13Block78Stack3.
            recoveredBlock13Block78PC := 98.
        ].
        recoveredBlock13Block78Step = 98 ifTrue: [
            (recoveredBlock13Block78Stack2 == nil) ifTrue: [recoveredBlock13Block78PC := 159] ifFalse: [recoveredBlock13Block78PC := 102].
        ].
        recoveredBlock13Block78Step = 102 ifTrue: [
            recoveredBlock13Block78PC := 103.
        ].
        recoveredBlock13Block78Step = 103 ifTrue: [
            recoveredBlock13Block78Stack1 := recoveredBlock13Block78Arg1.
            recoveredBlock13Block78PC := 105.
        ].
        recoveredBlock13Block78Step = 105 ifTrue: [
            recoveredBlock13Block78Stack1 := (recoveredBlock13Block78Stack1) getConnectorName.
            recoveredBlock13Block78PC := 107.
        ].
        recoveredBlock13Block78Step = 107 ifTrue: [
            recoveredBlock13Block78Local1 := recoveredBlock13Block78Stack1.
            recoveredBlock13Block78PC := 108.
        ].
        recoveredBlock13Block78Step = 108 ifTrue: [
            recoveredBlock13Block78Stack1 := recoveredBlock13Arg1.
            recoveredBlock13Block78PC := 111.
        ].
        recoveredBlock13Block78Step = 111 ifTrue: [
            recoveredBlock13Block78Stack1 := (recoveredBlock13Block78Stack1) methodName.
            recoveredBlock13Block78PC := 113.
        ].
        recoveredBlock13Block78Step = 113 ifTrue: [
            recoveredBlock13Block78Stack2 := recoveredBlock13Block78Stack1.
            recoveredBlock13Block78PC := 114.
        ].
        recoveredBlock13Block78Step = 114 ifTrue: [
            recoveredBlock13Block78Local2 := recoveredBlock13Block78Stack2.
            recoveredBlock13Block78PC := 115.
        ].
        recoveredBlock13Block78Step = 115 ifTrue: [
            recoveredBlock13Block78Stack1 := (recoveredBlock13Block78Stack1) isEmpty.
            recoveredBlock13Block78PC := 117.
        ].
        recoveredBlock13Block78Step = 117 ifTrue: [
            (recoveredBlock13Block78Stack1) ifTrue: [recoveredBlock13Block78PC := 120] ifFalse: [recoveredBlock13Block78PC := 122].
        ].
        recoveredBlock13Block78Step = 120 ifTrue: [
            recoveredBlock13Block78Stack1 := recoveredBlock13Block78Local1.
            recoveredBlock13Block78PC := 121.
        ].
        recoveredBlock13Block78Step = 121 ifTrue: [
            recoveredBlock13Block78Local2 := recoveredBlock13Block78Stack1.
            recoveredBlock13Block78PC := 122.
        ].
        recoveredBlock13Block78Step = 122 ifTrue: [
            recoveredBlock13Block78Stack1 := recoveredBlock13Block78Local2.
            recoveredBlock13Block78PC := 123.
        ].
        recoveredBlock13Block78Step = 123 ifTrue: [
            recoveredBlock13Block78Stack2 := recoveredBlock13Block78Local1.
            recoveredBlock13Block78PC := 124.
        ].
        recoveredBlock13Block78Step = 124 ifTrue: [
            recoveredBlock13Block78Stack1 := (recoveredBlock13Block78Stack1) ~= (recoveredBlock13Block78Stack2).
            recoveredBlock13Block78PC := 125.
        ].
        recoveredBlock13Block78Step = 125 ifTrue: [
            (recoveredBlock13Block78Stack1) ifTrue: [recoveredBlock13Block78PC := 128] ifFalse: [recoveredBlock13Block78PC := 140].
        ].
        recoveredBlock13Block78Step = 128 ifTrue: [
            recoveredBlock13Block78Stack1 := recoveredBlock13Block78Local2.
            recoveredBlock13Block78PC := 129.
        ].
        recoveredBlock13Block78Step = 129 ifTrue: [
            recoveredBlock13Block78Stack2 := '::'.
            recoveredBlock13Block78PC := 131.
        ].
        recoveredBlock13Block78Step = 131 ifTrue: [
            recoveredBlock13Block78Stack1 := (recoveredBlock13Block78Stack1) , (recoveredBlock13Block78Stack2).
            recoveredBlock13Block78PC := 133.
        ].
        recoveredBlock13Block78Step = 133 ifTrue: [
            recoveredBlock13Block78Stack2 := recoveredBlock13Block78Local1.
            recoveredBlock13Block78PC := 134.
        ].
        recoveredBlock13Block78Step = 134 ifTrue: [
            recoveredBlock13Block78Stack1 := (recoveredBlock13Block78Stack1) , (recoveredBlock13Block78Stack2).
            recoveredBlock13Block78PC := 136.
        ].
        recoveredBlock13Block78Step = 136 ifTrue: [
            recoveredBlock13Block78PC := 141.
        ].
        recoveredBlock13Block78Step = 140 ifTrue: [
            recoveredBlock13Block78Stack1 := recoveredBlock13Block78Local2.
            recoveredBlock13Block78PC := 141.
        ].
        recoveredBlock13Block78Step = 141 ifTrue: [
            recoveredBlock13Block78Local3 := recoveredBlock13Block78Stack1.
            recoveredBlock13Block78PC := 142.
        ].
        recoveredBlock13Block78Step = 142 ifTrue: [
            recoveredBlock13Block78Stack1 := recoveredLocal5.
            recoveredBlock13Block78PC := 145.
        ].
        recoveredBlock13Block78Step = 145 ifTrue: [
            recoveredBlock13Block78Stack2 := Association.
            recoveredBlock13Block78PC := 147.
        ].
        recoveredBlock13Block78Step = 147 ifTrue: [
            recoveredBlock13Block78Stack3 := recoveredBlock13Block78Local3.
            recoveredBlock13Block78PC := 148.
        ].
        recoveredBlock13Block78Step = 148 ifTrue: [
            recoveredBlock13Block78Stack4 := recoveredBlock13Block78Local4.
            recoveredBlock13Block78PC := 149.
        ].
        recoveredBlock13Block78Step = 149 ifTrue: [
            recoveredBlock13Block78Stack2 := (recoveredBlock13Block78Stack2) key: (recoveredBlock13Block78Stack3) value: (recoveredBlock13Block78Stack4).
            recoveredBlock13Block78PC := 151.
        ].
        recoveredBlock13Block78Step = 151 ifTrue: [
            recoveredBlock13Block78Stack1 := (recoveredBlock13Block78Stack1) add: (recoveredBlock13Block78Stack2).
            recoveredBlock13Block78PC := 153.
        ].
        recoveredBlock13Block78Step = 153 ifTrue: [
            recoveredBlock13Block78Stack2 := nil.
            recoveredBlock13Block78PC := 154.
        ].
        recoveredBlock13Block78Step = 154 ifTrue: [
            recoveredBlock13Block78Stack3 := recoveredBlock13Block78Stack2.
            recoveredBlock13Block78PC := 155.
        ].
        recoveredBlock13Block78Step = 155 ifTrue: [
            recoveredBlock13Block78Local3 := recoveredBlock13Block78Stack3.
            recoveredBlock13Block78PC := 156.
        ].
        recoveredBlock13Block78Step = 156 ifTrue: [
            recoveredBlock13Block78Stack3 := recoveredBlock13Block78Stack2.
            recoveredBlock13Block78PC := 157.
        ].
        recoveredBlock13Block78Step = 157 ifTrue: [
            recoveredBlock13Block78Local2 := recoveredBlock13Block78Stack3.
            recoveredBlock13Block78PC := 158.
        ].
        recoveredBlock13Block78Step = 158 ifTrue: [
            recoveredBlock13Block78Local1 := recoveredBlock13Block78Stack2.
            recoveredBlock13Block78PC := 159.
        ].
        recoveredBlock13Block78Step = 159 ifTrue: [
            recoveredBlock13Block78Result := recoveredBlock13Block78Stack1.
            recoveredBlock13Block78Done := true.
        ].
    ].
    recoveredBlock13Block78Result
].
            recoveredBlock13PC := 160.
        ].
        recoveredBlock13Step = 160 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) do: (recoveredBlock13Stack2).
            recoveredBlock13PC := 162.
        ].
        recoveredBlock13Step = 162 ifTrue: [
            recoveredBlock13Stack2 := nil.
            recoveredBlock13PC := 163.
        ].
        recoveredBlock13Step = 163 ifTrue: [
            recoveredBlock13Local1 := recoveredBlock13Stack2.
            recoveredBlock13PC := 166.
        ].
        recoveredBlock13Step = 166 ifTrue: [
            recoveredBlock13Result := recoveredBlock13Stack1.
            recoveredBlock13Done := true.
        ].
    ].
    recoveredBlock13Result
].
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 178] ifFalse: [recoveredPC := 330].
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 190] ifFalse: [recoveredPC := 213].
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 213] ifFalse: [recoveredPC := 196].
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack2 := [:block2811ba74Arg1 | 
    | block2811ba74Value0 block2811ba74Value1 |
    block2811ba74Value0 := block2811ba74Arg1.
    block2811ba74Value1 := (block2811ba74Value0) value.
    block2811ba74Value1
].
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack1 := (recoveredStack1) someElement.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack1 := (recoveredStack1) isShiftKeyDown.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 220] ifFalse: [recoveredPC := 284].
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 284] ifFalse: [recoveredPC := 226].
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack2 := [:block2811ba98Arg1 | 
    | block2811ba98Value0 block2811ba98Value1 |
    block2811ba98Value0 := block2811ba98Arg1.
    block2811ba98Value1 := (block2811ba98Value0) value.
    block2811ba98Value1
].
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack2 := [:recoveredBlock240Arg1 :recoveredBlock240Arg2 | 
    | recoveredBlock240Value0 recoveredBlock240Value1 recoveredBlock240Value2 recoveredBlock240Value3 recoveredBlock240Value4 recoveredBlock240Value5 recoveredBlock240Value6 recoveredBlock240Value7 recoveredBlock240Value8 |
    recoveredBlock240Value0 := recoveredBlock240Arg1.
    recoveredBlock240Value1 := (recoveredBlock240Value0) position.
    recoveredBlock240Value2 := recoveredArg1.
    recoveredBlock240Value3 := (recoveredBlock240Value1) distanceTo: (recoveredBlock240Value2).
    recoveredBlock240Value4 := recoveredBlock240Arg2.
    recoveredBlock240Value5 := (recoveredBlock240Value4) position.
    recoveredBlock240Value6 := recoveredArg1.
    recoveredBlock240Value7 := (recoveredBlock240Value5) distanceTo: (recoveredBlock240Value6).
    recoveredBlock240Value8 := (recoveredBlock240Value3) < (recoveredBlock240Value7).
    recoveredBlock240Value8
].
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection: (recoveredStack2).
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredPC := 330.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack2 := 'call_2008404425'.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack1 := (recoveredStack1) widget.
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack2 := (recoveredStack2) getPosition.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack1 := (recoveredStack1) lPToDp: (recoveredStack2).
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack2 := (recoveredStack2) widget.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack2 := (recoveredStack2) originRoot.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack1 := ASDPortSelectionDialog.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack4 := (recoveredStack4) sortPortSelectionList.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack5 := (recoveredStack5) bigFrame.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack6 := (recoveredStack6) widget.
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredStack1 := (recoveredStack1) createAt: (recoveredStack2) forConnectors: (recoveredStack3) sortList: (recoveredStack4) frame: (recoveredStack5) parentWidget: (recoveredStack6).
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            recoveredStack1 := (recoveredStack1) prompt.
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 409] ifFalse: [recoveredPC := 336].
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            recoveredStack1 := (recoveredStack1) basicGraphObject.
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            recoveredStack1 := (recoveredStack1) isStateOrJunction.
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 409] ifFalse: [recoveredPC := 344].
        ].
        recoveredStep = 344 ifTrue: [
            recoveredStack1 := CwWMShell.
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            recoveredStack1 := (recoveredStack1) focusShell.
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 405] ifFalse: [recoveredPC := 356].
        ].
        recoveredStep = 356 ifTrue: [
            recoveredStack1 := CgDisplay.
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            recoveredStack1 := (recoveredStack1) default.
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            recoveredStack2 := XCXCursor.
            recoveredPC := 362.
        ].
        recoveredStep = 362 ifTrue: [
            recoveredStack1 := (recoveredStack1) createFontCursor: (recoveredStack2).
            recoveredPC := 364.
        ].
        recoveredStep = 364 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            recoveredStack1 := (recoveredStack1) window.
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            (recoveredStack1) defineCursor: (recoveredStack2).
            recoveredPC := 377.
        ].
        recoveredStep = 377 ifTrue: [
            recoveredStack1 := Delay.
            recoveredPC := 379.
        ].
        recoveredStep = 379 ifTrue: [
            recoveredStack2 := 500.
            recoveredPC := 382.
        ].
        recoveredStep = 382 ifTrue: [
            recoveredStack1 := (recoveredStack1) forMilliseconds: (recoveredStack2).
            recoveredPC := 384.
        ].
        recoveredStep = 384 ifTrue: [
            (recoveredStack1) wait.
            recoveredPC := 386.
        ].
        recoveredStep = 386 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            recoveredStack1 := (recoveredStack1) window.
            recoveredPC := 391.
        ].
        recoveredStep = 391 ifTrue: [
            (recoveredStack1) undefineCursor.
            recoveredPC := 393.
        ].
        recoveredStep = 393 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 396.
        ].
        recoveredStep = 396 ifTrue: [
            (recoveredStack1) freeCursor.
            recoveredPC := 401.
        ].
        recoveredStep = 401 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 402.
        ].
        recoveredStep = 402 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 406.
        ].
        recoveredStep = 406 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 409.
        ].
        recoveredStep = 409 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 412.
        ].
        recoveredStep = 412 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x205ff1c0; bytecode file offset 0xefbafc"
!SGLogicBlockGO methodsFor: 'recovered'!
portPosAndDir: recoveredArg1 visitedPoints: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) frameGO.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) logicFrame.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) nearestPointOnRect: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) x.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) left.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := 'right'.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredPC := 89.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) x.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) right.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := 'left'.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredPC := 89.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) y.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) top.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := 'down'.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredPC := 89.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := 'up'.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := 'left'.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 110] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := 'right'.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 110] ifFalse: [recoveredPC := 165].
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := (recoveredStack0) y.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := (recoveredStack1) top.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 124] ifFalse: [recoveredPC := 137].
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack2 := PinDistance.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack0) y: (recoveredStack1).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := (recoveredStack0) y.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := (recoveredStack1) bottom.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 152] ifFalse: [recoveredPC := 165].
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack2 := PinDistance.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            (recoveredStack0) y: (recoveredStack1).
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := 'down'.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 186] ifFalse: [recoveredPC := 176].
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack1 := 'up'.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 186] ifFalse: [recoveredPC := 238].
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack0 := (recoveredStack0) x.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack1 := (recoveredStack1) left.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 200] ifFalse: [recoveredPC := 212].
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack2 := PinDistance.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            (recoveredStack0) x: (recoveredStack1).
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack0 := (recoveredStack0) x.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack1 := (recoveredStack1) right.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 226] ifFalse: [recoveredPC := 238].
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack2 := PinDistance.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            (recoveredStack0) x: (recoveredStack1).
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 250] ifFalse: [recoveredPC := 264].
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            (recoveredStack0) growForMorePins.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack2 := OrderedCollection.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack0 := (recoveredStack0) portPosAndDir: (recoveredStack1) visitedPoints: (recoveredStack2).
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceGOs.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack1 := [:recoveredBlock275Arg1 | 
    | recoveredBlock275Stack0 recoveredBlock275Stack1 recoveredBlock275Stack2 recoveredBlock275Stack3 recoveredBlock275Stack4 recoveredBlock275Stack5 recoveredBlock275Stack6 recoveredBlock275Stack7 recoveredBlock275Stack8 recoveredBlock275Stack9 recoveredBlock275Stack10 recoveredBlock275PC recoveredBlock275Step recoveredBlock275Done recoveredBlock275Result |
    recoveredBlock275Stack0 := self.
    recoveredBlock275PC := 282.
    recoveredBlock275Done := false.
    [recoveredBlock275Done not] whileTrue: [
        recoveredBlock275Step := recoveredBlock275PC.
        recoveredBlock275Step = 282 ifTrue: [
            recoveredBlock275Stack1 := nil.
            recoveredBlock275PC := 283.
        ].
        recoveredBlock275Step = 283 ifTrue: [
            recoveredBlock275Stack2 := recoveredBlock275Arg1.
            recoveredBlock275PC := 284.
        ].
        recoveredBlock275Step = 284 ifTrue: [
            recoveredBlock275Stack2 := (recoveredBlock275Stack2) externalConnectorGO.
            recoveredBlock275PC := 286.
        ].
        recoveredBlock275Step = 286 ifTrue: [
            recoveredBlock275Stack2 := (recoveredBlock275Stack2) getPosition.
            recoveredBlock275PC := 288.
        ].
        recoveredBlock275Step = 288 ifTrue: [
            recoveredBlock275Stack3 := recoveredBlock275Stack2.
            recoveredBlock275PC := 289.
        ].
        recoveredBlock275Step = 289 ifTrue: [
            recoveredLocal2 := recoveredBlock275Stack3.
            recoveredBlock275PC := 292.
        ].
        recoveredBlock275Step = 292 ifTrue: [
            recoveredBlock275Stack3 := recoveredLocal4.
            recoveredBlock275PC := 295.
        ].
        recoveredBlock275Step = 295 ifTrue: [
            recoveredBlock275Stack2 := (recoveredBlock275Stack2) - (recoveredBlock275Stack3).
            recoveredBlock275PC := 296.
        ].
        recoveredBlock275Step = 296 ifTrue: [
            recoveredBlock275Stack2 := (recoveredBlock275Stack2) abs.
            recoveredBlock275PC := 298.
        ].
        recoveredBlock275Step = 298 ifTrue: [
            recoveredBlock275Stack3 := PinDistance.
            recoveredBlock275PC := 300.
        ].
        recoveredBlock275Step = 300 ifTrue: [
            recoveredBlock275Stack4 := PinDistance.
            recoveredBlock275PC := 302.
        ].
        recoveredBlock275Step = 302 ifTrue: [
            recoveredBlock275Stack3 := (recoveredBlock275Stack3) @ (recoveredBlock275Stack4).
            recoveredBlock275PC := 304.
        ].
        recoveredBlock275Step = 304 ifTrue: [
            recoveredBlock275Stack2 := (recoveredBlock275Stack2) < (recoveredBlock275Stack3).
            recoveredBlock275PC := 305.
        ].
        recoveredBlock275Step = 305 ifTrue: [
            (recoveredBlock275Stack2) ifTrue: [recoveredBlock275PC := 308] ifFalse: [recoveredBlock275PC := 426].
        ].
        recoveredBlock275Step = 308 ifTrue: [
            recoveredBlock275PC := 309.
        ].
        recoveredBlock275Step = 309 ifTrue: [
            recoveredBlock275Stack1 := [
    | recoveredBlock275Block309Value0 |
    recoveredBlock275Block309Value0 := recoveredLocal1.
    recoveredBlock275Block309Value0
].
            recoveredBlock275PC := 320.
        ].
        recoveredBlock275Step = 320 ifTrue: [
            recoveredBlock275Stack2 := 'right'.
            recoveredBlock275PC := 322.
        ].
        recoveredBlock275Step = 322 ifTrue: [
            recoveredBlock275Stack3 := [
    | recoveredBlock275Block322Value0 recoveredBlock275Block322Value1 recoveredBlock275Block322Value2 recoveredBlock275Block322Value3 recoveredBlock275Block322Value4 recoveredBlock275Block322Value5 recoveredBlock275Block322Value6 |
    recoveredBlock275Block322Value0 := recoveredLocal2.
    recoveredBlock275Block322Value1 := PinDistance.
    recoveredBlock275Block322Value2 := (recoveredBlock275Block322Value0) right: (recoveredBlock275Block322Value1).
    recoveredBlock275Block322Value3 := PinDistance.
    recoveredBlock275Block322Value4 := (recoveredBlock275Block322Value2) up: (recoveredBlock275Block322Value3).
    recoveredBlock275Block322Value5 := recoveredArg2.
    recoveredBlock275Block322Value6 := (self) portPosAndDir: (recoveredBlock275Block322Value4) visitedPoints: (recoveredBlock275Block322Value5).
    ^recoveredBlock275Block322Value6
].
            recoveredBlock275PC := 345.
        ].
        recoveredBlock275Step = 345 ifTrue: [
            recoveredBlock275Stack4 := 'down'.
            recoveredBlock275PC := 347.
        ].
        recoveredBlock275Step = 347 ifTrue: [
            recoveredBlock275Stack5 := [
    | recoveredBlock275Block347Value0 recoveredBlock275Block347Value1 recoveredBlock275Block347Value2 recoveredBlock275Block347Value3 recoveredBlock275Block347Value4 recoveredBlock275Block347Value5 recoveredBlock275Block347Value6 |
    recoveredBlock275Block347Value0 := recoveredLocal2.
    recoveredBlock275Block347Value1 := PinDistance.
    recoveredBlock275Block347Value2 := (recoveredBlock275Block347Value0) right: (recoveredBlock275Block347Value1).
    recoveredBlock275Block347Value3 := PinDistance.
    recoveredBlock275Block347Value4 := (recoveredBlock275Block347Value2) down: (recoveredBlock275Block347Value3).
    recoveredBlock275Block347Value5 := recoveredArg2.
    recoveredBlock275Block347Value6 := (self) portPosAndDir: (recoveredBlock275Block347Value4) visitedPoints: (recoveredBlock275Block347Value5).
    ^recoveredBlock275Block347Value6
].
            recoveredBlock275PC := 371.
        ].
        recoveredBlock275Step = 371 ifTrue: [
            recoveredBlock275Stack6 := 'left'.
            recoveredBlock275PC := 373.
        ].
        recoveredBlock275Step = 373 ifTrue: [
            recoveredBlock275Stack7 := [
    | recoveredBlock275Block373Value0 recoveredBlock275Block373Value1 recoveredBlock275Block373Value2 recoveredBlock275Block373Value3 recoveredBlock275Block373Value4 recoveredBlock275Block373Value5 recoveredBlock275Block373Value6 |
    recoveredBlock275Block373Value0 := recoveredLocal2.
    recoveredBlock275Block373Value1 := PinDistance.
    recoveredBlock275Block373Value2 := (recoveredBlock275Block373Value0) left: (recoveredBlock275Block373Value1).
    recoveredBlock275Block373Value3 := PinDistance.
    recoveredBlock275Block373Value4 := (recoveredBlock275Block373Value2) down: (recoveredBlock275Block373Value3).
    recoveredBlock275Block373Value5 := recoveredArg2.
    recoveredBlock275Block373Value6 := (self) portPosAndDir: (recoveredBlock275Block373Value4) visitedPoints: (recoveredBlock275Block373Value5).
    ^recoveredBlock275Block373Value6
].
            recoveredBlock275PC := 397.
        ].
        recoveredBlock275Step = 397 ifTrue: [
            recoveredBlock275Stack8 := 'up'.
            recoveredBlock275PC := 399.
        ].
        recoveredBlock275Step = 399 ifTrue: [
            recoveredBlock275Stack9 := [
    | recoveredBlock275Block399Value0 recoveredBlock275Block399Value1 recoveredBlock275Block399Value2 recoveredBlock275Block399Value3 recoveredBlock275Block399Value4 recoveredBlock275Block399Value5 recoveredBlock275Block399Value6 |
    recoveredBlock275Block399Value0 := recoveredLocal2.
    recoveredBlock275Block399Value1 := PinDistance.
    recoveredBlock275Block399Value2 := (recoveredBlock275Block399Value0) left: (recoveredBlock275Block399Value1).
    recoveredBlock275Block399Value3 := PinDistance.
    recoveredBlock275Block399Value4 := (recoveredBlock275Block399Value2) up: (recoveredBlock275Block399Value3).
    recoveredBlock275Block399Value5 := recoveredArg2.
    recoveredBlock275Block399Value6 := (self) portPosAndDir: (recoveredBlock275Block399Value4) visitedPoints: (recoveredBlock275Block399Value5).
    ^recoveredBlock275Block399Value6
].
            recoveredBlock275PC := 423.
        ].
        recoveredBlock275Step = 423 ifTrue: [
            recoveredBlock275Stack1 := (recoveredBlock275Stack1) case: (recoveredBlock275Stack2) do: (recoveredBlock275Stack3) case: (recoveredBlock275Stack4) do: (recoveredBlock275Stack5) case: (recoveredBlock275Stack6) do: (recoveredBlock275Stack7) case: (recoveredBlock275Stack8) do: (recoveredBlock275Stack9).
            recoveredBlock275PC := 426.
        ].
        recoveredBlock275Step = 426 ifTrue: [
            recoveredBlock275Result := recoveredBlock275Stack1.
            recoveredBlock275Done := true.
        ].
    ].
    recoveredBlock275Result
].
            recoveredPC := 427.
        ].
        recoveredStep = 427 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 429.
        ].
        recoveredStep = 429 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 431.
        ].
        recoveredStep = 431 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 434.
        ].
        recoveredStep = 434 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 437.
        ].
        recoveredStep = 437 ifTrue: [
            recoveredStack0 := (recoveredStack0) with: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 439.
        ].
        recoveredStep = 439 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

