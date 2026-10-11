"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20008c78; bytecode file offset 0x908be4"
!SGSwitchGO methodsFor: 'recovered'!
createControlInfo
    | recoveredValue0 |
    recoveredValue0 := (self) literalStrings.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001ad74; bytecode file offset 0x92209c"
!SGSwitchGO methodsFor: 'recovered'!
menuLabelInputAdd
    ^'~Add Condition'
! !

"ASDBase.ic method 0x2001cc40; bytecode file offset 0x92209c"
!SGSwitchGO methodsFor: 'recovered'!
xmlType
    ^'Switch'
! !

"ASDBase.ic method 0x2001eecc; bytecode file offset 0x92209c"
!SGSwitchGO methodsFor: 'recovered'!
visualCallBackImage
    ^'ControlsSwitch'
! !

"ASDBase.ic method 0x200208ac; bytecode file offset 0x92209c"
!SGSwitchGO methodsFor: 'recovered'!
menuLabelInputRemove
    ^'~Remove Condition'
! !

"ASDBase.ic method 0x20025340; bytecode file offset 0x92209c"
!SGSwitchGO methodsFor: 'recovered'!
iconName
    ^'BDESwitch'
! !

"ASDBase.ic method 0x2005ed34; bytecode file offset 0x95b5ec"
!SGSwitchGO methodsFor: 'recovered'!
editLiterals
    (self) editLiteralsReadOnly: (false).
    ^self
! !

"ASDBase.ic method 0x2005fe18; bytecode file offset 0x95c79c"
!SGSwitchGO methodsFor: 'recovered'!
editLiteralsReadOnly
    (self) editLiteralsReadOnly: (true).
    ^self
! !

"ASDBase.ic method 0x200705e8; bytecode file offset 0x96d06c"
!SGSwitchGO methodsFor: 'recovered'!
defaultSize
    | recoveredValue0 |
    recoveredValue0 := defaultSize.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200771ac; bytecode file offset 0x9757c8"
!SGSwitchGO methodsFor: 'recovered'!
isSwitchGO
    ^true
! !

"ASDBase.ic method 0x200844bc; bytecode file offset 0x981ca4"
!SGSwitchGO methodsFor: 'recovered'!
updateControlInfo: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) updateLiterals: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x2008c230; bytecode file offset 0x988b68"
!SGSwitchGO methodsFor: 'recovered'!
visualCallBackString
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) getPositionString.
    recoveredValue1 := ('Switch ') , (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200909f8; bytecode file offset 0x98d2b4"
!SGSwitchGO methodsFor: 'recovered'!
isInputRemovePossible
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) methods.
    recoveredValue1 := (recoveredValue0) size.
    recoveredValue2 := (recoveredValue1) > (4).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20090b14; bytecode file offset 0x98d3d0"
!SGSwitchGO methodsFor: 'recovered'!
isInputAddPossible
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) methods.
    recoveredValue1 := (recoveredValue0) size.
    recoveredValue2 := (recoveredValue1) < (22).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20091b70; bytecode file offset 0x98e428"
!SGSwitchGO methodsFor: 'recovered'!
getMinimalOffsetForValue: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := PinDistance.
    recoveredValue1 := (recoveredValue0) // (2).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200ba3e8; bytecode file offset 0x9b6cac"
!SGSwitchGO methodsFor: 'recovered'!
doubleClicked: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) manager.
    recoveredValue1 := (recoveredValue0) controller.
    recoveredValue2 := (recoveredValue1) isViewController.
    (self) editLiteralsReadOnly: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200c6c68; bytecode file offset 0x9c36ec"
!SGSwitchGO methodsFor: 'recovered'!
defaultSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    defaultSize := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d5ff0; bytecode file offset 0x9d3134"
!SGSwitchGO methodsFor: 'recovered'!
buildIconGO
    super buildIconGO.
    (self) repositionIconGO.
    ^self
! !

"ASDBase.ic method 0x200ea208; bytecode file offset 0x9e6c94"
!SGSwitchGO methodsFor: 'recovered'!
scale: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    super scale: (recoveredValue0).
    (self) repositionIconGO.
    ^self
! !

"ASDBase.ic method 0x200f7704; bytecode file offset 0x9f4e38"
!SGSwitchGO methodsFor: 'recovered'!
literalStrings
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) literalInterfaceElements.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c4884Arg1 | 
    | block280c4884Value0 block280c4884Value1 |
    block280c4884Value0 := block280c4884Arg1.
    block280c4884Value1 := (block280c4884Value0) connectorName.
    block280c4884Value1
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

"ASDBase.ic method 0x20103178; bytecode file offset 0x9ffa38"
!SGSwitchGO methodsFor: 'recovered'!
literalInterfaceElements
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) interfaceElementGOs.
    recoveredValue1 := (self) interfaceElementGOs.
    recoveredValue2 := (recoveredValue1) size.
    recoveredValue3 := (recoveredValue0) copyFrom: (3) to: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x201451cc; bytecode file offset 0xa41a8c"
!SGSwitchGO methodsFor: 'recovered'!
correctedScalePoint: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) x.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) y.
    recoveredValue4 := (1) - (recoveredValue3).
    recoveredValue5 := (recoveredValue4) * (2).
    recoveredValue6 := (1) - (recoveredValue5).
    recoveredValue7 := (recoveredValue1) @ (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x2018a2dc; bytecode file offset 0xa86ba8"
!SGSwitchGO methodsFor: 'recovered'!
getMinSize
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := super getMinSize.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := (recoveredValue1) x.
    recoveredValue3 := PinDistance.
    recoveredValue4 := (recoveredValue3) * (2).
    recoveredValue5 := (recoveredValue2) + (recoveredValue4).
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (recoveredValue6) y.
    recoveredValue8 := (recoveredValue5) @ (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x2019bd7c; bytecode file offset 0xa98670"
!SGSwitchGO methodsFor: 'recovered'!
changeToActiveState: recoveredArg1 display: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := RBMoveAndScaleWrapper.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) createWith: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) manager.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) graphObject: (recoveredStack2) changeToSensitivePointWrapper: (recoveredStack3) display: (recoveredStack4).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201ac844; bytecode file offset 0xaa9128"
!SGSwitchGO methodsFor: 'recovered'!
buildLogic: recoveredArg1 for: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) identifier.
    recoveredValue2 := (self) literals.
    recoveredValue3 := methods.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue0) blockIdSwitch: (recoveredValue1) literals: (recoveredValue2) methods: (recoveredValue3) hierarchy: (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (self) methods.
    recoveredValue9 := recoveredArg2.
    recoveredValue10 := (self) buildInterfaceLogic: (recoveredValue6) block: (recoveredValue7) methods: (recoveredValue8) for: (recoveredValue9).
    ^recoveredValue10
! !

"ASDBase.ic method 0x201d13f0; bytecode file offset 0xacdcc0"
!SGSwitchGO methodsFor: 'recovered'!
getMenu
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := super getMenu.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    (self) appendAddRemoveInputEntries: (recoveredValue1).
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) addSingleLine.
    recoveredValue4 := recoveredValue2.
    (recoveredValue4) add: ('editLiterals') label: ('~Edit Literals').
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x2020b078; bytecode file offset 0xb07944"
!SGSwitchGO methodsFor: 'recovered'!
literals
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) literalStrings.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280d9cf8Arg1 | 
    | block280d9cf8Value0 block280d9cf8Value1 |
    block280d9cf8Value0 := block280d9cf8Arg1.
    block280d9cf8Value1 := (block280d9cf8Value0) getLiteralAllowBool: (true) allowInteger: (true) allowFloat: (false) allowAnsiC: (true).
    block280d9cf8Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := [:block280d9d1cArg1 | 
    | block280d9d1cValue0 block280d9d1cValue1 |
    block280d9d1cValue0 := block280d9d1cArg1.
    block280d9d1cValue1 := (block280d9d1cValue0) notNil.
    block280d9d1cValue1
].
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202115b8; bytecode file offset 0xb0de94"
!SGSwitchGO methodsFor: 'recovered'!
getReadOnlyMenu
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := CwMenu.
    recoveredValue1 := (recoveredValue0) defaultMenuClass.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) title: ('Block').
    recoveredValue4 := recoveredValue2.
    (recoveredValue4) owner: (self).
    recoveredLocal1 := recoveredValue2.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := recoveredValue5.
    (recoveredValue6) addSingleLine.
    recoveredValue7 := recoveredValue5.
    (recoveredValue7) add: ('editLiteralsReadOnly') label: ('~Show Literals').
    recoveredValue8 := recoveredLocal1.
    ^recoveredValue8
! !

"ASDBase.ic method 0x202429a0; bytecode file offset 0xb3f27c"
!SGSwitchGO methodsFor: 'recovered'!
repositionIconGO
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) iconGO.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
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
            recoveredStack0 := (recoveredStack0) left.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := PinDistance.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) getPosition.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) @ (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) iconGO.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) iconOffset.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) moveTo: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2024c888; bytecode file offset 0xb49154"
!SGSwitchGO methodsFor: 'recovered'!
moveTo: recoveredArg1 andScale: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) x.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := (recoveredStack3) getPosition.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := (recoveredStack3) y.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) @ (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) moveTo: (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) y.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) > (recoveredStack3).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) y.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) @ (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) scale: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2028c070; bytecode file offset 0xb88940"
!SGSwitchGO methodsFor: 'recovered'!
updateConnectorTypeIDs
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
            recoveredStack1 := [:block280e2128Arg1 | 
    | block280e2128Stack0 block280e2128Stack1 block280e2128Stack2 block280e2128Stack3 block280e2128PC block280e2128Step block280e2128Done block280e2128Result |
    block280e2128Stack0 := self.
    block280e2128PC := 4.
    block280e2128Done := false.
    [block280e2128Done not] whileTrue: [
        block280e2128Step := block280e2128PC.
        block280e2128Step = 4 ifTrue: [
            block280e2128Stack1 := block280e2128Arg1.
            block280e2128PC := 5.
        ].
        block280e2128Step = 5 ifTrue: [
            block280e2128Stack1 := (block280e2128Stack1) externalConnectorGO.
            block280e2128PC := 6.
        ].
        block280e2128Step = 6 ifTrue: [
            block280e2128Stack1 := (block280e2128Stack1) isArgumentPin.
            block280e2128PC := 7.
        ].
        block280e2128Step = 7 ifTrue: [
            (block280e2128Stack1) ifTrue: [block280e2128PC := 10] ifFalse: [block280e2128PC := 15].
        ].
        block280e2128Step = 10 ifTrue: [
            block280e2128Stack1 := block280e2128Arg1.
            block280e2128PC := 11.
        ].
        block280e2128Step = 11 ifTrue: [
            block280e2128Stack2 := 2.
            block280e2128PC := 13.
        ].
        block280e2128Step = 13 ifTrue: [
            (block280e2128Stack1) typeID: (block280e2128Stack2).
            block280e2128PC := 15.
        ].
        block280e2128Step = 15 ifTrue: [
            block280e2128Stack1 := nil.
            block280e2128PC := 16.
        ].
        block280e2128Step = 16 ifTrue: [
            block280e2128Stack2 := block280e2128Arg1.
            block280e2128PC := 17.
        ].
        block280e2128Step = 17 ifTrue: [
            block280e2128Stack2 := (block280e2128Stack2) externalConnectorGO.
            block280e2128PC := 18.
        ].
        block280e2128Step = 18 ifTrue: [
            block280e2128Stack2 := (block280e2128Stack2) isResultPin.
            block280e2128PC := 20.
        ].
        block280e2128Step = 20 ifTrue: [
            (block280e2128Stack2) ifTrue: [block280e2128PC := 24] ifFalse: [block280e2128PC := 32].
        ].
        block280e2128Step = 24 ifTrue: [
            block280e2128PC := 25.
        ].
        block280e2128Step = 25 ifTrue: [
            block280e2128Stack1 := block280e2128Arg1.
            block280e2128PC := 26.
        ].
        block280e2128Step = 26 ifTrue: [
            block280e2128Stack2 := 256.
            block280e2128PC := 30.
        ].
        block280e2128Step = 30 ifTrue: [
            block280e2128Stack1 := (block280e2128Stack1) typeID: (block280e2128Stack2).
            block280e2128PC := 32.
        ].
        block280e2128Step = 32 ifTrue: [
            block280e2128Result := block280e2128Stack1.
            block280e2128Done := true.
        ].
    ].
    block280e2128Result
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
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

"ASDBase.ic method 0x202b7628; bytecode file offset 0xbb3f14"
!SGSwitchGO methodsFor: 'recovered'!
createInterface: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) interfaceProcs: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) methods: (recoveredStack1).
            recoveredPC := 10.
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
            recoveredStack1 := (recoveredStack1) methods.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) interfacePositions: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) defineInterface: (recoveredStack1) withPositions: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) updateConnectorNamesWith: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceElementGOs.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := [:block280e50d4Arg1 | 
    | block280e50d4Value0 block280e50d4Value1 |
    block280e50d4Value0 := block280e50d4Arg1.
    block280e50d4Value1 := (block280e50d4Value0) repositionConnectorNameGO.
    block280e50d4Value1
].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) updateConnectorTypeIDs.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202d53ec; bytecode file offset 0xbd1cb0"
!SGSwitchGO methodsFor: 'recovered'!
updateLiterals: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) literalInterfaceElements.
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
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
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
            recoveredStack0 := 0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) connectorName: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack0) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 24] ifFalse: [recoveredLocal1 := nil. recoveredPC := 46]] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
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

"ASDBase.ic method 0x202ef6f0; bytecode file offset 0xbebfcc"
!SGSwitchGO methodsFor: 'recovered'!
editLiteralsReadOnly: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            recoveredStack0 := (recoveredStack0) isViewController.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
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
            recoveredStack0 := (recoveredStack0) getBDEController.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) literalStrings.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) openSGSwitchEditorFor: (recoveredStack1) readOnly: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) changeStarted.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) updateLiterals: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) giveRedisplayRects.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) displayRectsSetModified: (recoveredStack1).
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

"ASDBase.ic method 0x20304d08; bytecode file offset 0xc015e8"
!SGSwitchGO methodsFor: 'recovered'!
updateInterfaceMethodGOs
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 |
    recoveredValue0 := (self) interfaceGOs.
    recoveredValue1 := (recoveredValue0) at: (1).
    recoveredValue2 := (self) interfaceGOs.
    recoveredValue3 := (recoveredValue2) at: (1).
    recoveredValue4 := (recoveredValue3) getPosition.
    recoveredValue5 := (recoveredValue4) x.
    recoveredValue6 := (self) frameGO.
    recoveredValue7 := (recoveredValue6) logicFrame.
    recoveredValue8 := (recoveredValue7) topRight.
    recoveredValue9 := (recoveredValue8) y.
    recoveredValue10 := (recoveredValue5) @ (recoveredValue9).
    (recoveredValue1) moveTo: (recoveredValue10).
    recoveredValue11 := (self) interfaceGOs.
    recoveredValue12 := (recoveredValue11) at: (2).
    recoveredValue13 := (self) interfaceGOs.
    recoveredValue14 := (recoveredValue13) at: (2).
    recoveredValue15 := (recoveredValue14) getPosition.
    recoveredValue16 := (recoveredValue15) x.
    recoveredValue17 := (self) frameGO.
    recoveredValue18 := (recoveredValue17) logicFrame.
    recoveredValue19 := (recoveredValue18) bottomRight.
    recoveredValue20 := (recoveredValue19) y.
    recoveredValue21 := (recoveredValue16) @ (recoveredValue20).
    (recoveredValue12) moveTo: (recoveredValue21).
    ^self
! !

"ASDBase.ic method 0x2034851c; bytecode file offset 0xc44e08"
!SGSwitchGO methodsFor: 'recovered'!
displayOn: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isVisible.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            super displayOn: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) viewAsLine.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) frameGO.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) logicFrame.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) left.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := PinDistance.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) window.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) gc.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := (recoveredStack3) top.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack5 := recoveredLocal2.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack5 := (recoveredStack5) bottom.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) drawLine: (recoveredStack1) x1: (recoveredStack2) y1: (recoveredStack3) x2: (recoveredStack4) y2: (recoveredStack5).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) displayLiteralsOn: (recoveredStack1).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2040f9ec; bytecode file offset 0xd0c2f8"
!SGSwitchGO methodsFor: 'recovered'!
menuInputRemove
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceGOs.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := 4.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 96].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceGOs.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) interfaceGOs.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) isConnected.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceGOs.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) interfaceGOs.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) removeConnections.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceGOs.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) removeLast.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) methods.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := (recoveredStack2) methods.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := (recoveredStack2) last.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyWithout: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) methods: (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) frameGO.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := PinDistance.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) // (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := (recoveredStack2) methods.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (-1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := (recoveredStack3) methods.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack4 := 2.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack3 := (recoveredStack3) modulo: (recoveredStack4).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) b: (recoveredStack1).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack0) updateInterfaceMethodGOs.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0) repositionInterfaces.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) manager.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := [:block280fb2ecArg1 | 
    | block280fb2ecValue0 block280fb2ecValue1 block280fb2ecValue2 block280fb2ecValue3 |
    block280fb2ecValue0 := block280fb2ecArg1.
    block280fb2ecValue1 := (block280fb2ecValue0) controller.
    block280fb2ecValue2 := (block280fb2ecValue1) widget.
    block280fb2ecValue3 := (block280fb2ecValue2) redraw.
    block280fb2ecValue3
].
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2041b344; bytecode file offset 0xd17c64"
!SGSwitchGO methodsFor: 'recovered'!
menuInputAdd
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SGAliasMethod.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) methods.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (-1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) createWithReturn: (recoveredStack2) template: (recoveredStack3).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) methods.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) methods: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := #(199).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) addInterface: (recoveredStack1) withPositions: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) updateConnectorNamesWith: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) updateConnectorTypeIDs.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) frameGO.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := PinDistance.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) // (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := (recoveredStack2) methods.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := (recoveredStack2) even.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := (recoveredStack2) methods.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (-1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredPC := 70.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := (recoveredStack2) methods.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (-2).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack0) b: (recoveredStack1).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack0) updateInterfaceMethodGOs.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack0) repositionInterfaces.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := (recoveredStack0) manager.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := [:block280fbde4Arg1 | 
    | block280fbde4Value0 block280fbde4Value1 block280fbde4Value2 block280fbde4Value3 |
    block280fbde4Value0 := block280fbde4Arg1.
    block280fbde4Value1 := (block280fbde4Value0) controller.
    block280fbde4Value2 := (block280fbde4Value1) widget.
    block280fbde4Value3 := (block280fbde4Value2) redraw.
    block280fbde4Value3
].
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204619f0; bytecode file offset 0xd5e2bc"
!SGSwitchGO methodsFor: 'recovered'!
replaceContentsFrom: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) literalStrings.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) literalStrings.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) <= (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := [:recoveredBlock31Arg1 :recoveredBlock31Arg2 | 
    | recoveredBlock31Value0 recoveredBlock31Value1 recoveredBlock31Value2 recoveredBlock31Value3 |
    recoveredBlock31Value0 := recoveredLocal2.
    recoveredBlock31Value1 := recoveredBlock31Arg2.
    recoveredBlock31Value2 := recoveredBlock31Arg1.
    recoveredBlock31Value3 := (recoveredBlock31Value0) at: (recoveredBlock31Value1) put: (recoveredBlock31Value2).
    recoveredBlock31Value3
].
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) doWithIndex: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredPC := 110.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredPC := 81.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredStack1 isInteger]) ifTrue: [(recoveredStack1 + 1 <= recoveredStack0) ifTrue: [recoveredStack1 := recoveredStack1 + 1. recoveredStack2 := recoveredStack1. recoveredPC := 62] ifFalse: [recoveredPC := 109]] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 105] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredPC := 65.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack0) updateLiterals: (recoveredStack1).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20461b40; bytecode file offset 0xd5e434"
!SGSwitchGO methodsFor: 'recovered'!
createChildrenNodes
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := [:block281008a0Arg1 :block281008a0Arg2 | 
    | block281008a0Value0 block281008a0Value1 block281008a0Value2 block281008a0Value3 block281008a0Value4 |
    block281008a0Value0 := block281008a0Arg1.
    block281008a0Value1 := (block281008a0Value0) drawingOrder.
    block281008a0Value2 := block281008a0Arg2.
    block281008a0Value3 := (block281008a0Value2) drawingOrder.
    block281008a0Value4 := (block281008a0Value1) < (block281008a0Value3).
    block281008a0Value4
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) connectedToCallsOverSwitchCaseConnection.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := [:recoveredBlock31Arg1 :recoveredBlock31Arg2 | 
    | recoveredBlock31Value0 recoveredBlock31Value1 recoveredBlock31Value2 recoveredBlock31Value3 recoveredBlock31Value4 recoveredBlock31Value5 recoveredBlock31Value6 recoveredBlock31Value7 recoveredBlock31Value8 recoveredBlock31Value9 recoveredBlock31Value10 recoveredBlock31Value11 |
    recoveredBlock31Value0 := SGNavigationNodeSwitchCase.
    recoveredBlock31Value1 := recoveredBlock31Arg1.
    recoveredBlock31Value2 := (recoveredBlock31Value0) createFor: (self) literal: (recoveredBlock31Value1).
    recoveredLocal4 := recoveredBlock31Value2.
    recoveredBlock31Value3 := recoveredLocal4.
    recoveredBlock31Value4 := recoveredLocal1.
    (recoveredBlock31Value3) drawingOrder: (recoveredBlock31Value4).
    recoveredBlock31Value5 := recoveredLocal4.
    recoveredBlock31Value6 := recoveredBlock31Arg2.
    (recoveredBlock31Value5) children: (recoveredBlock31Value6).
    recoveredBlock31Value7 := recoveredLocal2.
    recoveredBlock31Value8 := recoveredLocal4.
    (recoveredBlock31Value7) add: (recoveredBlock31Value8).
    recoveredBlock31Value9 := recoveredLocal1.
    recoveredBlock31Value10 := (recoveredBlock31Value9) + (1).
    recoveredBlock31Value11 := recoveredBlock31Value10.
    recoveredLocal1 := recoveredBlock31Value11.
    recoveredBlock31Value10
].
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) keysAndValuesDo: (recoveredStack1).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := SGNavigationNodeSwitchDefault.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) createFor: (recoveredStack1).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack0) drawingOrder: (recoveredStack1).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 106] ifFalse: [recoveredPC := 114].
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205610f8; bytecode file offset 0xe5da20"
!SGSwitchGO methodsFor: 'recovered'!
displayLiteralsOn: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) gc.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := FontNames.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) font.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) setFont: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionGraphicsCompatibilityMode.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := PinDistance.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := 7.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) * (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := 4.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) // (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredPC := 69.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) frameGO.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) logicFrame.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) extent.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) x.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) iconGO.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) logicFrame.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) extent.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceGOs.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := (recoveredStack0) <= (recoveredStack1).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceGOs.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := 3.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := (recoveredStack2) interfaceGOs.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyFrom: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := [:recoveredBlock94Arg1 :recoveredBlock94Arg2 | 
    | recoveredBlock94Value0 recoveredBlock94Value1 recoveredBlock94Value2 recoveredBlock94Value3 |
    recoveredBlock94Value0 := recoveredBlock94Arg1.
    recoveredBlock94Value1 := (recoveredBlock94Value0) interfaceGOs.
    recoveredBlock94Value2 := [:recoveredBlock94Block103Arg1 | 
    | recoveredBlock94Block103Local1 recoveredBlock94Block103Local2 recoveredBlock94Block103Local3 recoveredBlock94Block103Stack0 recoveredBlock94Block103Stack1 recoveredBlock94Block103Stack2 recoveredBlock94Block103Stack3 recoveredBlock94Block103Stack4 recoveredBlock94Block103Stack5 recoveredBlock94Block103PC recoveredBlock94Block103Step recoveredBlock94Block103Done recoveredBlock94Block103Result |
    recoveredBlock94Block103Stack0 := self.
    recoveredBlock94Block103PC := 110.
    recoveredBlock94Block103Done := false.
    [recoveredBlock94Block103Done not] whileTrue: [
        recoveredBlock94Block103Step := recoveredBlock94Block103PC.
        recoveredBlock94Block103Step = 110 ifTrue: [
            recoveredBlock94Block103Stack1 := recoveredBlock94Block103Arg1.
            recoveredBlock94Block103PC := 111.
        ].
        recoveredBlock94Block103Step = 111 ifTrue: [
            recoveredBlock94Block103Stack1 := (recoveredBlock94Block103Stack1) connectorName.
            recoveredBlock94Block103PC := 113.
        ].
        recoveredBlock94Block103Step = 113 ifTrue: [
            recoveredBlock94Block103Local2 := recoveredBlock94Block103Stack1.
            recoveredBlock94Block103PC := 114.
        ].
        recoveredBlock94Block103Step = 114 ifTrue: [
            recoveredBlock94Block103Stack1 := recoveredBlock94Block103Local2.
            recoveredBlock94Block103PC := 115.
        ].
        recoveredBlock94Block103Step = 115 ifTrue: [
            recoveredBlock94Block103Local1 := recoveredBlock94Block103Stack1.
            recoveredBlock94Block103PC := 116.
        ].
        recoveredBlock94Block103Step = 116 ifTrue: [
            recoveredBlock94Block103PC := 136.
        ].
        recoveredBlock94Block103Step = 120 ifTrue: [
            recoveredBlock94Block103Stack1 := recoveredBlock94Block103Local2.
            recoveredBlock94Block103PC := 121.
        ].
        recoveredBlock94Block103Step = 121 ifTrue: [
            recoveredBlock94Block103Stack2 := 1.
            recoveredBlock94Block103PC := 123.
        ].
        recoveredBlock94Block103Step = 123 ifTrue: [
            recoveredBlock94Block103Stack3 := recoveredBlock94Block103Local2.
            recoveredBlock94Block103PC := 124.
        ].
        recoveredBlock94Block103Step = 124 ifTrue: [
            recoveredBlock94Block103Stack3 := (recoveredBlock94Block103Stack3) size.
            recoveredBlock94Block103PC := 126.
        ].
        recoveredBlock94Block103Step = 126 ifTrue: [
            recoveredBlock94Block103Stack3 := (recoveredBlock94Block103Stack3) + (-1).
            recoveredBlock94Block103PC := 127.
        ].
        recoveredBlock94Block103Step = 127 ifTrue: [
            recoveredBlock94Block103Stack1 := (recoveredBlock94Block103Stack1) copyFrom: (recoveredBlock94Block103Stack2) to: (recoveredBlock94Block103Stack3).
            recoveredBlock94Block103PC := 129.
        ].
        recoveredBlock94Block103Step = 129 ifTrue: [
            recoveredBlock94Block103Local2 := recoveredBlock94Block103Stack1.
            recoveredBlock94Block103PC := 130.
        ].
        recoveredBlock94Block103Step = 130 ifTrue: [
            recoveredBlock94Block103Stack1 := recoveredBlock94Block103Local2.
            recoveredBlock94Block103PC := 131.
        ].
        recoveredBlock94Block103Step = 131 ifTrue: [
            recoveredBlock94Block103Stack2 := '...'.
            recoveredBlock94Block103PC := 133.
        ].
        recoveredBlock94Block103Step = 133 ifTrue: [
            recoveredBlock94Block103Stack1 := (recoveredBlock94Block103Stack1) , (recoveredBlock94Block103Stack2).
            recoveredBlock94Block103PC := 135.
        ].
        recoveredBlock94Block103Step = 135 ifTrue: [
            recoveredBlock94Block103Local1 := recoveredBlock94Block103Stack1.
            recoveredBlock94Block103PC := 136.
        ].
        recoveredBlock94Block103Step = 136 ifTrue: [
            recoveredBlock94Block103Stack1 := recoveredLocal1.
            recoveredBlock94Block103PC := 139.
        ].
        recoveredBlock94Block103Step = 139 ifTrue: [
            recoveredBlock94Block103Stack2 := recoveredBlock94Block103Local1.
            recoveredBlock94Block103PC := 140.
        ].
        recoveredBlock94Block103Step = 140 ifTrue: [
            recoveredBlock94Block103Stack1 := (recoveredBlock94Block103Stack1) textWidth: (recoveredBlock94Block103Stack2).
            recoveredBlock94Block103PC := 142.
        ].
        recoveredBlock94Block103Step = 142 ifTrue: [
            recoveredBlock94Block103Stack2 := recoveredBlock94Block103Stack1.
            recoveredBlock94Block103PC := 143.
        ].
        recoveredBlock94Block103Step = 143 ifTrue: [
            recoveredBlock94Block103Local3 := recoveredBlock94Block103Stack2.
            recoveredBlock94Block103PC := 144.
        ].
        recoveredBlock94Block103Step = 144 ifTrue: [
            recoveredBlock94Block103Stack2 := recoveredLocal3.
            recoveredBlock94Block103PC := 147.
        ].
        recoveredBlock94Block103Step = 147 ifTrue: [
            recoveredBlock94Block103Stack1 := (recoveredBlock94Block103Stack1) > (recoveredBlock94Block103Stack2).
            recoveredBlock94Block103PC := 148.
        ].
        recoveredBlock94Block103Step = 148 ifTrue: [
            (recoveredBlock94Block103Stack1) ifTrue: [recoveredBlock94Block103PC := 152] ifFalse: [recoveredBlock94Block103PC := 157].
        ].
        recoveredBlock94Block103Step = 152 ifTrue: [
            recoveredBlock94Block103Stack1 := recoveredBlock94Block103Local2.
            recoveredBlock94Block103PC := 153.
        ].
        recoveredBlock94Block103Step = 153 ifTrue: [
            recoveredBlock94Block103Stack1 := (recoveredBlock94Block103Stack1) notEmpty.
            recoveredBlock94Block103PC := 155.
        ].
        recoveredBlock94Block103Step = 155 ifTrue: [
            (recoveredBlock94Block103Stack1) ifTrue: [recoveredBlock94Block103PC := 120] ifFalse: [recoveredBlock94Block103PC := 157].
        ].
        recoveredBlock94Block103Step = 157 ifTrue: [
            recoveredBlock94Block103Stack1 := recoveredBlock94Block103Arg1.
            recoveredBlock94Block103PC := 158.
        ].
        recoveredBlock94Block103Step = 158 ifTrue: [
            recoveredBlock94Block103Stack1 := (recoveredBlock94Block103Stack1) getPosition.
            recoveredBlock94Block103PC := 160.
        ].
        recoveredBlock94Block103Step = 160 ifTrue: [
            recoveredBlock94Block103Stack1 := (recoveredBlock94Block103Stack1) x.
            recoveredBlock94Block103PC := 162.
        ].
        recoveredBlock94Block103Step = 162 ifTrue: [
            recoveredBlock94Block103Stack2 := recoveredBlock94Block103Local3.
            recoveredBlock94Block103PC := 163.
        ].
        recoveredBlock94Block103Step = 163 ifTrue: [
            recoveredBlock94Block103Stack3 := 2.
            recoveredBlock94Block103PC := 165.
        ].
        recoveredBlock94Block103Step = 165 ifTrue: [
            recoveredBlock94Block103Stack2 := (recoveredBlock94Block103Stack2) + (recoveredBlock94Block103Stack3).
            recoveredBlock94Block103PC := 166.
        ].
        recoveredBlock94Block103Step = 166 ifTrue: [
            recoveredBlock94Block103Stack1 := (recoveredBlock94Block103Stack1) - (recoveredBlock94Block103Stack2).
            recoveredBlock94Block103PC := 167.
        ].
        recoveredBlock94Block103Step = 167 ifTrue: [
            recoveredBlock94Block103Stack2 := recoveredBlock94Block103Arg1.
            recoveredBlock94Block103PC := 168.
        ].
        recoveredBlock94Block103Step = 168 ifTrue: [
            recoveredBlock94Block103Stack2 := (recoveredBlock94Block103Stack2) getPosition.
            recoveredBlock94Block103PC := 170.
        ].
        recoveredBlock94Block103Step = 170 ifTrue: [
            recoveredBlock94Block103Stack2 := (recoveredBlock94Block103Stack2) y.
            recoveredBlock94Block103PC := 172.
        ].
        recoveredBlock94Block103Step = 172 ifTrue: [
            recoveredBlock94Block103Stack2 := (recoveredBlock94Block103Stack2) + (-2).
            recoveredBlock94Block103PC := 173.
        ].
        recoveredBlock94Block103Step = 173 ifTrue: [
            recoveredBlock94Block103Stack3 := recoveredLocal1.
            recoveredBlock94Block103PC := 176.
        ].
        recoveredBlock94Block103Step = 176 ifTrue: [
            recoveredBlock94Block103Stack3 := (recoveredBlock94Block103Stack3) ascent.
            recoveredBlock94Block103PC := 178.
        ].
        recoveredBlock94Block103Step = 178 ifTrue: [
            recoveredBlock94Block103Stack4 := 2.
            recoveredBlock94Block103PC := 180.
        ].
        recoveredBlock94Block103Step = 180 ifTrue: [
            recoveredBlock94Block103Stack3 := (recoveredBlock94Block103Stack3) // (recoveredBlock94Block103Stack4).
            recoveredBlock94Block103PC := 181.
        ].
        recoveredBlock94Block103Step = 181 ifTrue: [
            recoveredBlock94Block103Stack2 := (recoveredBlock94Block103Stack2) + (recoveredBlock94Block103Stack3).
            recoveredBlock94Block103PC := 182.
        ].
        recoveredBlock94Block103Step = 182 ifTrue: [
            recoveredBlock94Block103Stack1 := (recoveredBlock94Block103Stack1) @ (recoveredBlock94Block103Stack2).
            recoveredBlock94Block103PC := 184.
        ].
        recoveredBlock94Block103Step = 184 ifTrue: [
            recoveredLocal2 := recoveredBlock94Block103Stack1.
            recoveredBlock94Block103PC := 187.
        ].
        recoveredBlock94Block103Step = 187 ifTrue: [
            recoveredBlock94Block103Stack0 := (recoveredBlock94Block103Stack0) class.
            recoveredBlock94Block103PC := 189.
        ].
        recoveredBlock94Block103Step = 189 ifTrue: [
            recoveredBlock94Block103Stack0 := (recoveredBlock94Block103Stack0) optionGraphicsCompatibilityMode.
            recoveredBlock94Block103PC := 191.
        ].
        recoveredBlock94Block103Step = 191 ifTrue: [
            (recoveredBlock94Block103Stack0) ifTrue: [recoveredBlock94Block103PC := 194] ifFalse: [recoveredBlock94Block103PC := 204].
        ].
        recoveredBlock94Block103Step = 194 ifTrue: [
            recoveredBlock94Block103Stack0 := recoveredLocal2.
            recoveredBlock94Block103PC := 197.
        ].
        recoveredBlock94Block103Step = 197 ifTrue: [
            recoveredBlock94Block103Stack1 := 2.
            recoveredBlock94Block103PC := 199.
        ].
        recoveredBlock94Block103Step = 199 ifTrue: [
            recoveredBlock94Block103Stack0 := (recoveredBlock94Block103Stack0) down: (recoveredBlock94Block103Stack1).
            recoveredBlock94Block103PC := 201.
        ].
        recoveredBlock94Block103Step = 201 ifTrue: [
            recoveredLocal2 := recoveredBlock94Block103Stack0.
            recoveredBlock94Block103PC := 204.
        ].
        recoveredBlock94Block103Step = 204 ifTrue: [
            recoveredBlock94Block103Stack0 := recoveredArg1.
            recoveredBlock94Block103PC := 207.
        ].
        recoveredBlock94Block103Step = 207 ifTrue: [
            recoveredBlock94Block103Stack0 := (recoveredBlock94Block103Stack0) window.
            recoveredBlock94Block103PC := 209.
        ].
        recoveredBlock94Block103Step = 209 ifTrue: [
            recoveredBlock94Block103Stack1 := recoveredLocal4.
            recoveredBlock94Block103PC := 212.
        ].
        recoveredBlock94Block103Step = 212 ifTrue: [
            recoveredBlock94Block103Stack2 := recoveredLocal2.
            recoveredBlock94Block103PC := 215.
        ].
        recoveredBlock94Block103Step = 215 ifTrue: [
            recoveredBlock94Block103Stack2 := (recoveredBlock94Block103Stack2) x.
            recoveredBlock94Block103PC := 217.
        ].
        recoveredBlock94Block103Step = 217 ifTrue: [
            recoveredBlock94Block103Stack3 := recoveredLocal2.
            recoveredBlock94Block103PC := 220.
        ].
        recoveredBlock94Block103Step = 220 ifTrue: [
            recoveredBlock94Block103Stack3 := (recoveredBlock94Block103Stack3) y.
            recoveredBlock94Block103PC := 222.
        ].
        recoveredBlock94Block103Step = 222 ifTrue: [
            recoveredBlock94Block103Stack4 := recoveredBlock94Block103Local1.
            recoveredBlock94Block103PC := 223.
        ].
        recoveredBlock94Block103Step = 223 ifTrue: [
            recoveredBlock94Block103Stack0 := (recoveredBlock94Block103Stack0) drawString: (recoveredBlock94Block103Stack1) x: (recoveredBlock94Block103Stack2) y: (recoveredBlock94Block103Stack3) string: (recoveredBlock94Block103Stack4).
            recoveredBlock94Block103PC := 226.
        ].
        recoveredBlock94Block103Step = 226 ifTrue: [
            recoveredBlock94Block103Result := recoveredBlock94Block103Stack0.
            recoveredBlock94Block103Done := true.
        ].
    ].
    recoveredBlock94Block103Result
].
    recoveredBlock94Value3 := (recoveredBlock94Value1) do: (recoveredBlock94Value2).
    recoveredBlock94Value3
].
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            (recoveredStack0) doWithIndex: (recoveredStack1).
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20582050; bytecode file offset 0xe7e93c"
!SGSwitchGO methodsFor: 'recovered'!
shrinkInterfacePinsVertical: recoveredArg1 top: recoveredArg2 bottom: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
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
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) // (recoveredStack3).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) odd.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) / (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) ceiling.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredPC := 91.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) / (recoveredStack2).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := PinDistance.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := (recoveredStack1) // (recoveredStack2).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) odd.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 91].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionGraphicsCompatibilityMode.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 98] ifFalse: [recoveredPC := 146].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := [:recoveredBlock101Arg1 :recoveredBlock101Arg2 | 
    | recoveredBlock101Value0 recoveredBlock101Value1 recoveredBlock101Value2 recoveredBlock101Value3 recoveredBlock101Value4 recoveredBlock101Value5 recoveredBlock101Value6 recoveredBlock101Value7 recoveredBlock101Value8 recoveredBlock101Value9 recoveredBlock101Value10 recoveredBlock101Value11 recoveredBlock101Value12 recoveredBlock101Value13 recoveredBlock101Value14 recoveredBlock101Value15 recoveredBlock101Value16 recoveredBlock101Value17 |
    recoveredBlock101Value0 := recoveredBlock101Arg1.
    recoveredBlock101Value1 := recoveredBlock101Arg1.
    recoveredBlock101Value2 := (recoveredBlock101Value1) externalConnectorGO.
    recoveredBlock101Value3 := (recoveredBlock101Value2) getPosition.
    recoveredBlock101Value4 := (recoveredBlock101Value3) x.
    recoveredBlock101Value5 := recoveredLocal3.
    recoveredBlock101Value6 := recoveredLocal2.
    recoveredBlock101Value7 := recoveredBlock101Arg2.
    recoveredBlock101Value8 := (recoveredBlock101Value6) - (recoveredBlock101Value7).
    recoveredBlock101Value9 := recoveredLocal1.
    recoveredBlock101Value10 := (recoveredBlock101Value8) + (recoveredBlock101Value9).
    recoveredBlock101Value11 := PinDistance.
    recoveredBlock101Value12 := (recoveredBlock101Value10) * (recoveredBlock101Value11).
    recoveredBlock101Value13 := (recoveredBlock101Value5) - (recoveredBlock101Value12).
    recoveredBlock101Value14 := PinDistance.
    recoveredBlock101Value15 := (recoveredBlock101Value13) roundToPlusInfinity: (recoveredBlock101Value14).
    recoveredBlock101Value16 := (recoveredBlock101Value4) @ (recoveredBlock101Value15).
    recoveredBlock101Value17 := (recoveredBlock101Value0) moveBasicTo: (recoveredBlock101Value16).
    recoveredBlock101Value17
].
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            (recoveredStack0) doWithIndex: (recoveredStack1).
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredPC := 260.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := [:recoveredBlock149Arg1 :recoveredBlock149Arg2 | 
    | recoveredBlock149Stack0 recoveredBlock149Stack1 recoveredBlock149Stack2 recoveredBlock149Stack3 recoveredBlock149Stack4 recoveredBlock149Stack5 recoveredBlock149Stack6 recoveredBlock149PC recoveredBlock149Step recoveredBlock149Done recoveredBlock149Result |
    recoveredBlock149Stack0 := self.
    recoveredBlock149PC := 156.
    recoveredBlock149Done := false.
    [recoveredBlock149Done not] whileTrue: [
        recoveredBlock149Step := recoveredBlock149PC.
        recoveredBlock149Step = 156 ifTrue: [
            recoveredBlock149Stack1 := recoveredBlock149Arg2.
            recoveredBlock149PC := 157.
        ].
        recoveredBlock149Step = 157 ifTrue: [
            recoveredBlock149Stack2 := recoveredLocal2.
            recoveredBlock149PC := 160.
        ].
        recoveredBlock149Step = 160 ifTrue: [
            recoveredBlock149Stack1 := (recoveredBlock149Stack1) < (recoveredBlock149Stack2).
            recoveredBlock149PC := 161.
        ].
        recoveredBlock149Step = 161 ifTrue: [
            (recoveredBlock149Stack1) ifTrue: [recoveredBlock149PC := 164] ifFalse: [recoveredBlock149PC := 196].
        ].
        recoveredBlock149Step = 164 ifTrue: [
            recoveredBlock149Stack1 := recoveredBlock149Arg1.
            recoveredBlock149PC := 165.
        ].
        recoveredBlock149Step = 165 ifTrue: [
            recoveredBlock149Stack2 := recoveredBlock149Arg1.
            recoveredBlock149PC := 166.
        ].
        recoveredBlock149Step = 166 ifTrue: [
            recoveredBlock149Stack2 := (recoveredBlock149Stack2) externalConnectorGO.
            recoveredBlock149PC := 168.
        ].
        recoveredBlock149Step = 168 ifTrue: [
            recoveredBlock149Stack2 := (recoveredBlock149Stack2) getPosition.
            recoveredBlock149PC := 170.
        ].
        recoveredBlock149Step = 170 ifTrue: [
            recoveredBlock149Stack2 := (recoveredBlock149Stack2) x.
            recoveredBlock149PC := 172.
        ].
        recoveredBlock149Step = 172 ifTrue: [
            recoveredBlock149Stack3 := recoveredLocal3.
            recoveredBlock149PC := 175.
        ].
        recoveredBlock149Step = 175 ifTrue: [
            recoveredBlock149Stack4 := recoveredLocal2.
            recoveredBlock149PC := 178.
        ].
        recoveredBlock149Step = 178 ifTrue: [
            recoveredBlock149Stack5 := recoveredBlock149Arg2.
            recoveredBlock149PC := 179.
        ].
        recoveredBlock149Step = 179 ifTrue: [
            recoveredBlock149Stack4 := (recoveredBlock149Stack4) - (recoveredBlock149Stack5).
            recoveredBlock149PC := 180.
        ].
        recoveredBlock149Step = 180 ifTrue: [
            recoveredBlock149Stack5 := recoveredLocal1.
            recoveredBlock149PC := 183.
        ].
        recoveredBlock149Step = 183 ifTrue: [
            recoveredBlock149Stack4 := (recoveredBlock149Stack4) + (recoveredBlock149Stack5).
            recoveredBlock149PC := 184.
        ].
        recoveredBlock149Step = 184 ifTrue: [
            recoveredBlock149Stack5 := PinDistance.
            recoveredBlock149PC := 186.
        ].
        recoveredBlock149Step = 186 ifTrue: [
            recoveredBlock149Stack4 := (recoveredBlock149Stack4) * (recoveredBlock149Stack5).
            recoveredBlock149PC := 187.
        ].
        recoveredBlock149Step = 187 ifTrue: [
            recoveredBlock149Stack3 := (recoveredBlock149Stack3) - (recoveredBlock149Stack4).
            recoveredBlock149PC := 188.
        ].
        recoveredBlock149Step = 188 ifTrue: [
            recoveredBlock149Stack4 := PinDistance.
            recoveredBlock149PC := 190.
        ].
        recoveredBlock149Step = 190 ifTrue: [
            recoveredBlock149Stack3 := (recoveredBlock149Stack3) roundToPlusInfinity: (recoveredBlock149Stack4).
            recoveredBlock149PC := 192.
        ].
        recoveredBlock149Step = 192 ifTrue: [
            recoveredBlock149Stack2 := (recoveredBlock149Stack2) @ (recoveredBlock149Stack3).
            recoveredBlock149PC := 194.
        ].
        recoveredBlock149Step = 194 ifTrue: [
            (recoveredBlock149Stack1) moveBasicTo: (recoveredBlock149Stack2).
            recoveredBlock149PC := 196.
        ].
        recoveredBlock149Step = 196 ifTrue: [
            recoveredBlock149Stack1 := recoveredBlock149Arg2.
            recoveredBlock149PC := 197.
        ].
        recoveredBlock149Step = 197 ifTrue: [
            recoveredBlock149Stack2 := recoveredLocal2.
            recoveredBlock149PC := 200.
        ].
        recoveredBlock149Step = 200 ifTrue: [
            recoveredBlock149Stack1 := (recoveredBlock149Stack1) = (recoveredBlock149Stack2).
            recoveredBlock149PC := 201.
        ].
        recoveredBlock149Step = 201 ifTrue: [
            (recoveredBlock149Stack1) ifTrue: [recoveredBlock149PC := 204] ifFalse: [recoveredBlock149PC := 219].
        ].
        recoveredBlock149Step = 204 ifTrue: [
            recoveredBlock149Stack1 := recoveredBlock149Arg1.
            recoveredBlock149PC := 205.
        ].
        recoveredBlock149Step = 205 ifTrue: [
            recoveredBlock149Stack2 := recoveredBlock149Arg1.
            recoveredBlock149PC := 206.
        ].
        recoveredBlock149Step = 206 ifTrue: [
            recoveredBlock149Stack2 := (recoveredBlock149Stack2) externalConnectorGO.
            recoveredBlock149PC := 208.
        ].
        recoveredBlock149Step = 208 ifTrue: [
            recoveredBlock149Stack2 := (recoveredBlock149Stack2) getPosition.
            recoveredBlock149PC := 210.
        ].
        recoveredBlock149Step = 210 ifTrue: [
            recoveredBlock149Stack2 := (recoveredBlock149Stack2) x.
            recoveredBlock149PC := 212.
        ].
        recoveredBlock149Step = 212 ifTrue: [
            recoveredBlock149Stack3 := recoveredLocal3.
            recoveredBlock149PC := 215.
        ].
        recoveredBlock149Step = 215 ifTrue: [
            recoveredBlock149Stack2 := (recoveredBlock149Stack2) @ (recoveredBlock149Stack3).
            recoveredBlock149PC := 217.
        ].
        recoveredBlock149Step = 217 ifTrue: [
            (recoveredBlock149Stack1) moveBasicTo: (recoveredBlock149Stack2).
            recoveredBlock149PC := 219.
        ].
        recoveredBlock149Step = 219 ifTrue: [
            recoveredBlock149Stack1 := nil.
            recoveredBlock149PC := 220.
        ].
        recoveredBlock149Step = 220 ifTrue: [
            recoveredBlock149Stack2 := recoveredBlock149Arg2.
            recoveredBlock149PC := 221.
        ].
        recoveredBlock149Step = 221 ifTrue: [
            recoveredBlock149Stack3 := recoveredLocal2.
            recoveredBlock149PC := 224.
        ].
        recoveredBlock149Step = 224 ifTrue: [
            recoveredBlock149Stack2 := (recoveredBlock149Stack2) > (recoveredBlock149Stack3).
            recoveredBlock149PC := 225.
        ].
        recoveredBlock149Step = 225 ifTrue: [
            (recoveredBlock149Stack2) ifTrue: [recoveredBlock149PC := 228] ifFalse: [recoveredBlock149PC := 257].
        ].
        recoveredBlock149Step = 228 ifTrue: [
            recoveredBlock149PC := 229.
        ].
        recoveredBlock149Step = 229 ifTrue: [
            recoveredBlock149Stack1 := recoveredBlock149Arg1.
            recoveredBlock149PC := 230.
        ].
        recoveredBlock149Step = 230 ifTrue: [
            recoveredBlock149Stack2 := recoveredBlock149Arg1.
            recoveredBlock149PC := 231.
        ].
        recoveredBlock149Step = 231 ifTrue: [
            recoveredBlock149Stack2 := (recoveredBlock149Stack2) externalConnectorGO.
            recoveredBlock149PC := 233.
        ].
        recoveredBlock149Step = 233 ifTrue: [
            recoveredBlock149Stack2 := (recoveredBlock149Stack2) getPosition.
            recoveredBlock149PC := 235.
        ].
        recoveredBlock149Step = 235 ifTrue: [
            recoveredBlock149Stack2 := (recoveredBlock149Stack2) x.
            recoveredBlock149PC := 237.
        ].
        recoveredBlock149Step = 237 ifTrue: [
            recoveredBlock149Stack3 := recoveredLocal3.
            recoveredBlock149PC := 240.
        ].
        recoveredBlock149Step = 240 ifTrue: [
            recoveredBlock149Stack4 := recoveredBlock149Arg2.
            recoveredBlock149PC := 241.
        ].
        recoveredBlock149Step = 241 ifTrue: [
            recoveredBlock149Stack5 := recoveredLocal2.
            recoveredBlock149PC := 244.
        ].
        recoveredBlock149Step = 244 ifTrue: [
            recoveredBlock149Stack4 := (recoveredBlock149Stack4) - (recoveredBlock149Stack5).
            recoveredBlock149PC := 245.
        ].
        recoveredBlock149Step = 245 ifTrue: [
            recoveredBlock149Stack5 := PinDistance.
            recoveredBlock149PC := 247.
        ].
        recoveredBlock149Step = 247 ifTrue: [
            recoveredBlock149Stack4 := (recoveredBlock149Stack4) * (recoveredBlock149Stack5).
            recoveredBlock149PC := 248.
        ].
        recoveredBlock149Step = 248 ifTrue: [
            recoveredBlock149Stack3 := (recoveredBlock149Stack3) + (recoveredBlock149Stack4).
            recoveredBlock149PC := 249.
        ].
        recoveredBlock149Step = 249 ifTrue: [
            recoveredBlock149Stack4 := PinDistance.
            recoveredBlock149PC := 251.
        ].
        recoveredBlock149Step = 251 ifTrue: [
            recoveredBlock149Stack3 := (recoveredBlock149Stack3) roundToPlusInfinity: (recoveredBlock149Stack4).
            recoveredBlock149PC := 253.
        ].
        recoveredBlock149Step = 253 ifTrue: [
            recoveredBlock149Stack2 := (recoveredBlock149Stack2) @ (recoveredBlock149Stack3).
            recoveredBlock149PC := 255.
        ].
        recoveredBlock149Step = 255 ifTrue: [
            recoveredBlock149Stack1 := (recoveredBlock149Stack1) moveBasicTo: (recoveredBlock149Stack2).
            recoveredBlock149PC := 257.
        ].
        recoveredBlock149Step = 257 ifTrue: [
            recoveredBlock149Result := recoveredBlock149Stack1.
            recoveredBlock149Done := true.
        ].
    ].
    recoveredBlock149Result
].
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            (recoveredStack0) doWithIndex: (recoveredStack1).
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

