"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"HwAccessETarget.ic method 0x20000044; bytecode file offset 0xca2c"
!EtasHwcHardwareSelectionItem methodsFor: 'recovered'!
expandedIconName
    | recoveredValue0 |
    recoveredValue0 := (self) iconName.
    ^recoveredValue0
! !

"HwAccessETarget.ic method 0x200000dc; bytecode file offset 0xcac4"
!EtasHwcHardwareSelectionItem methodsFor: 'recovered'!
iconName
    ^'Ascet16_Transparent'
! !

"HwAccessETarget.ic method 0x20000104; bytecode file offset 0xcb20"
!EtasHwcHardwareSelectionItem methodsFor: 'recovered'!
hwInterfaceManager
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) parent.
    recoveredValue1 := (recoveredValue0) hwInterfaceManager.
    ^recoveredValue1
! !

"HwAccessETarget.ic method 0x20000134; bytecode file offset 0xcb20"
!EtasHwcHardwareSelectionItem methodsFor: 'recovered'!
target
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) parent.
    recoveredValue1 := (recoveredValue0) target.
    ^recoveredValue1
! !

"HwAccessETarget.ic method 0x200001c4; bytecode file offset 0xcbc0"
!EtasHwcHardwareSelectionItem methodsFor: 'recovered'!
icon
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) iconName.
    recoveredValue1 := (self) returnIcon16WithName: (recoveredValue0).
    ^recoveredValue1
! !

"HwAccessETarget.ic method 0x200001d4; bytecode file offset 0xcbc0"
!EtasHwcHardwareSelectionItem methodsFor: 'recovered'!
expandedIcon
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) expandedIconName.
    recoveredValue1 := (self) returnIcon16WithName: (recoveredValue0).
    ^recoveredValue1
! !

"HwAccessETarget.ic method 0x200002d8; bytecode file offset 0xccbc"
!EtasHwcHardwareSelectionItem methodsFor: 'recovered'!
name
    | recoveredValue0 |
    recoveredValue0 := name.
    ^recoveredValue0
! !

"HwAccessETarget.ic method 0x200002f4; bytecode file offset 0xccd8"
!EtasHwcHardwareSelectionItem methodsFor: 'recovered'!
childItems
    | recoveredValue0 |
    recoveredValue0 := childItems.
    ^recoveredValue0
! !

"HwAccessETarget.ic method 0x20000308; bytecode file offset 0xccfc"
!EtasHwcHardwareSelectionItem methodsFor: 'recovered'!
parent
    | recoveredValue0 |
    recoveredValue0 := parent.
    ^recoveredValue0
! !

"HwAccessETarget.ic method 0x2000032c; bytecode file offset 0xcd18"
!EtasHwcHardwareSelectionItem methodsFor: 'recovered'!
hwcItem
    | recoveredValue0 |
    recoveredValue0 := hwcItem.
    ^recoveredValue0
! !

"HwAccessETarget.ic method 0x20000540; bytecode file offset 0xcf3c"
!EtasHwcHardwareSelectionItem methodsFor: 'recovered'!
instance
    ^nil
! !

"HwAccessETarget.ic method 0x20000548; bytecode file offset 0xcf3c"
!EtasHwcHardwareSelectionItem methodsFor: 'recovered'!
instanceColumnAndValueString
    ^nil
! !

"HwAccessETarget.ic method 0x20000550; bytecode file offset 0xcf3c"
!EtasHwcHardwareSelectionItem methodsFor: 'recovered'!
instanceValueString
    ^nil
! !

"HwAccessETarget.ic method 0x20000590; bytecode file offset 0xcfcc"
!EtasHwcHardwareSelectionItem methodsFor: 'recovered'!
isRealTimeSimulation
    ^false
! !

"HwAccessETarget.ic method 0x200005a0; bytecode file offset 0xcfcc"
!EtasHwcHardwareSelectionItem methodsFor: 'recovered'!
isRootItem
    ^false
! !

"HwAccessETarget.ic method 0x200005a8; bytecode file offset 0xcfcc"
!EtasHwcHardwareSelectionItem methodsFor: 'recovered'!
isVirtualEcu
    ^false
! !

"HwAccessETarget.ic method 0x200005b8; bytecode file offset 0xcfcc"
!EtasHwcHardwareSelectionItem methodsFor: 'recovered'!
isSystem
    ^false
! !

"HwAccessETarget.ic method 0x200005c0; bytecode file offset 0xcfcc"
!EtasHwcHardwareSelectionItem methodsFor: 'recovered'!
isPCRP
    ^false
! !

"HwAccessETarget.ic method 0x200005c8; bytecode file offset 0xcfcc"
!EtasHwcHardwareSelectionItem methodsFor: 'recovered'!
isEs910
    ^false
! !

"HwAccessETarget.ic method 0x200005d0; bytecode file offset 0xcfcc"
!EtasHwcHardwareSelectionItem methodsFor: 'recovered'!
isEs1130
    ^false
! !

"HwAccessETarget.ic method 0x200005d8; bytecode file offset 0xcfcc"
!EtasHwcHardwareSelectionItem methodsFor: 'recovered'!
isEs1135
    ^false
! !

"HwAccessETarget.ic method 0x200005e0; bytecode file offset 0xcfcc"
!EtasHwcHardwareSelectionItem methodsFor: 'recovered'!
isEs1120
    ^false
! !

"HwAccessETarget.ic method 0x2000076c; bytecode file offset 0xd15c"
!EtasHwcHardwareSelectionItem methodsFor: 'recovered'!
returnIcon16WithName: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := RBUserInterface.
    recoveredValue1 := (recoveredValue0) resourceManager.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) returnIcon16WithName: (recoveredValue2).
    ^recoveredValue3
! !

"HwAccessETarget.ic method 0x200007a4; bytecode file offset 0xd194"
!EtasHwcHardwareSelectionItem methodsFor: 'recovered'!
children: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := (recoveredValue1) item.
    recoveredValue3 := (recoveredValue2) children.
    (recoveredValue0) children: (recoveredValue3).
    ^self
! !

"HwAccessETarget.ic method 0x20000810; bytecode file offset 0xd204"
!EtasHwcHardwareSelectionItem methodsFor: 'recovered'!
name: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    name := recoveredValue0.
    ^self
! !

"HwAccessETarget.ic method 0x2000083c; bytecode file offset 0xd220"
!EtasHwcHardwareSelectionItem methodsFor: 'recovered'!
childItems: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    childItems := recoveredValue0.
    ^self
! !

"HwAccessETarget.ic method 0x20000850; bytecode file offset 0xd244"
!EtasHwcHardwareSelectionItem methodsFor: 'recovered'!
parent: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    parent := recoveredValue0.
    ^self
! !

"HwAccessETarget.ic method 0x20000874; bytecode file offset 0xd268"
!EtasHwcHardwareSelectionItem methodsFor: 'recovered'!
hwcItem: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    hwcItem := recoveredValue0.
    ^self
! !

"HwAccessETarget.ic method 0x200009d8; bytecode file offset 0xd3c8"
!EtasHwcHardwareSelectionItem methodsFor: 'recovered'!
returnIcon16: recoveredArg1 overlayedWith: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := RBUserInterface.
    recoveredValue1 := (recoveredValue0) resourceManager.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue1) returnIcon16: (recoveredValue2) overlayedWith: (recoveredValue3).
    ^recoveredValue4
! !

"HwAccessETarget.ic method 0x20000bec; bytecode file offset 0xd5e8"
!EtasHwcHardwareSelectionItem methodsFor: 'recovered'!
isEs113x
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
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) isEs1130.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEs1135.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"HwAccessETarget.ic method 0x20000d9c; bytecode file offset 0xd788"
!EtasHwcHardwareSelectionItem methodsFor: 'recovered'!
hasChildren
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) childItems.
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
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"HwAccessETarget.ic method 0x20000dbc; bytecode file offset 0xd7ac"
!EtasHwcHardwareSelectionItem methodsFor: 'recovered'!
children
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) childItems.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 8].
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
            recoveredStack1 := (recoveredStack1) createChildren.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) childItems: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) childItems.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"HwAccessETarget.ic method 0x20000f04; bytecode file offset 0xd8fc"
!EtasHwcHardwareSelectionItem methodsFor: 'recovered'!
processEvents
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | block28000a84Value0 block28000a84Value1 block28000a84Value2 |
    block28000a84Value0 := CwAppContext.
    block28000a84Value1 := (block28000a84Value0) default.
    block28000a84Value2 := (block28000a84Value1) readAndDispatch.
    block28000a84Value2
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) whileTrue.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"HwAccessETarget.ic method 0x20000f8c; bytecode file offset 0xd988"
!EtasHwcHardwareSelectionItem methodsFor: 'recovered'!
printString
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := super printString.
    recoveredValue1 := (recoveredValue0) , ('(''').
    recoveredValue2 := (self) name.
    recoveredValue3 := (recoveredValue1) , (recoveredValue2).
    recoveredValue4 := (recoveredValue3) , (''')').
    ^recoveredValue4
! !

"HwAccessETarget.ic method 0x20001348; bytecode file offset 0xdd40"
!EtasHwcHardwareSelectionItem methodsFor: 'recovered'!
label
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) instanceValueString.
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
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) name.
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
            recoveredStack0 := (recoveredStack0) name.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := ' ['.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := ']'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"HwAccessETarget.ic method 0x20001e44; bytecode file offset 0xe83c"
!EtasHwcHardwareSelectionItem methodsFor: 'recovered'!
isSimulationController
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
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) isEs113x.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) isEs910.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) isVirtualEcu.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) isRealTimeSimulation.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) isPCRP.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"HwAccessETarget.ic method 0x200021e0; bytecode file offset 0xebe0"
!EtasHwcHardwareSelectionItem methodsFor: 'recovered'!
childItemsRecursive
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) childItems.
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
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) copy.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := [:recoveredBlock26Arg1 | 
    | recoveredBlock26Value0 recoveredBlock26Value1 recoveredBlock26Value2 recoveredBlock26Value3 |
    recoveredBlock26Value0 := recoveredLocal1.
    recoveredBlock26Value1 := recoveredBlock26Arg1.
    recoveredBlock26Value2 := (recoveredBlock26Value1) childItemsRecursive.
    recoveredBlock26Value3 := (recoveredBlock26Value0) addAll: (recoveredBlock26Value2).
    recoveredBlock26Value3
].
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

