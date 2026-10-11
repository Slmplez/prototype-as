"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x200001b8; bytecode file offset 0x7c440"
!CwMenu methodsFor: 'recovered'!
selection: recoveredArg1
    ^self
! !

"winsys.ic method 0x200001e0; bytecode file offset 0x7c440"
!CwMenu methodsFor: 'recovered'!
subMenuSelector: recoveredArg1
    ^self
! !

"winsys.ic method 0x20000238; bytecode file offset 0x7c440"
!CwMenu methodsFor: 'recovered'!
selectionUpdateMessage: recoveredArg1
    ^self
! !

"winsys.ic method 0x20000ef4; bytecode file offset 0x7d33c"
!CwMenu methodsFor: 'recovered'!
notEmpty
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) entries.
    recoveredValue1 := (recoveredValue0) notEmpty.
    ^recoveredValue1
! !

"winsys.ic method 0x20001084; bytecode file offset 0x7d33c"
!CwMenu methodsFor: 'recovered'!
isEmpty
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) entries.
    recoveredValue1 := (recoveredValue0) isEmpty.
    ^recoveredValue1
! !

"winsys.ic method 0x20001510; bytecode file offset 0x7d728"
!CwMenu methodsFor: 'recovered'!
itemCount
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := entries.
    recoveredValue1 := (recoveredValue0) size.
    ^recoveredValue1
! !

"winsys.ic method 0x200029c8; bytecode file offset 0x7ed00"
!CwMenu methodsFor: 'recovered'!
title
    | recoveredValue0 |
    recoveredValue0 := title.
    ^recoveredValue0
! !

"winsys.ic method 0x20002bc8; bytecode file offset 0x7efc0"
!CwMenu methodsFor: 'recovered'!
subMenuSelector
    | recoveredValue0 |
    recoveredValue0 := subMenuSelector.
    ^recoveredValue0
! !

"winsys.ic method 0x20002fe8; bytecode file offset 0x7f220"
!CwMenu methodsFor: 'recovered'!
entries
    | recoveredValue0 |
    recoveredValue0 := entries.
    ^recoveredValue0
! !

"winsys.ic method 0x20003170; bytecode file offset 0x7f418"
!CwMenu methodsFor: 'recovered'!
owner
    | recoveredValue0 |
    recoveredValue0 := owner.
    ^recoveredValue0
! !

"winsys.ic method 0x20003290; bytecode file offset 0x7f5b8"
!CwMenu methodsFor: 'recovered'!
configureBlock
    | recoveredValue0 |
    recoveredValue0 := configureBlock.
    ^recoveredValue0
! !

"winsys.ic method 0x200036f8; bytecode file offset 0x7f9b8"
!CwMenu methodsFor: 'recovered'!
isSubMenu
    | recoveredValue0 |
    recoveredValue0 := isSubMenu.
    ^recoveredValue0
! !

"winsys.ic method 0x20003968; bytecode file offset 0x7fbb0"
!CwMenu methodsFor: 'recovered'!
popupWidgetParent
    | recoveredValue0 |
    recoveredValue0 := popupWidgetParent.
    ^recoveredValue0
! !

"winsys.ic method 0x20003ab0; bytecode file offset 0x7fc78"
!CwMenu methodsFor: 'recovered'!
armBlock
    | recoveredValue0 |
    recoveredValue0 := armBlock.
    ^recoveredValue0
! !

"winsys.ic method 0x20003b58; bytecode file offset 0x7fd28"
!CwMenu methodsFor: 'recovered'!
disarmBlock
    | recoveredValue0 |
    recoveredValue0 := disarmBlock.
    ^recoveredValue0
! !

"winsys.ic method 0x20003c04; bytecode file offset 0x7fdc4"
!CwMenu methodsFor: 'recovered'!
helpBlock
    | recoveredValue0 |
    recoveredValue0 := helpBlock.
    ^recoveredValue0
! !

"winsys.ic method 0x20004e04; bytecode file offset 0x80fc8"
!CwMenu methodsFor: 'recovered'!
mapCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 |
    recoveredValue0 := recoveredArg2.
    (self) configureEntries: (recoveredValue0).
    ^self
! !

"winsys.ic method 0x20005cf4; bytecode file offset 0x81ebc"
!CwMenu methodsFor: 'recovered'!
helpCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (self) owner.
    (recoveredValue0) dispatchHelpTo: (recoveredValue1).
    ^self
! !

"winsys.ic method 0x20006bb0; bytecode file offset 0x82d7c"
!CwMenu methodsFor: 'recovered'!
addLine
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := entries.
    recoveredValue1 := CwMenuSeparator.
    recoveredValue2 := (recoveredValue1) new.
    (recoveredValue0) add: (recoveredValue2).
    ^self
! !

"winsys.ic method 0x20006e28; bytecode file offset 0x83008"
!CwMenu methodsFor: 'recovered'!
addLineBefore: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := CwMenuSeparator.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredArg1.
    (self) addEntry: (recoveredValue1) beforeName: (recoveredValue2).
    ^self
! !

"winsys.ic method 0x20006e3c; bytecode file offset 0x83008"
!CwMenu methodsFor: 'recovered'!
addLineAfter: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := CwMenuSeparator.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredArg1.
    (self) addEntry: (recoveredValue1) afterName: (recoveredValue2).
    ^self
! !

"winsys.ic method 0x200070fc; bytecode file offset 0x8346c"
!CwMenu methodsFor: 'recovered'!
title: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    title := recoveredValue0.
    ^self
! !

"winsys.ic method 0x2000789c; bytecode file offset 0x83a6c"
!CwMenu methodsFor: 'recovered'!
owner: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    owner := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20007908; bytecode file offset 0x83bb0"
!CwMenu methodsFor: 'recovered'!
configureBlock: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    configureBlock := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20007c60; bytecode file offset 0x83ed0"
!CwMenu methodsFor: 'recovered'!
isSubMenu: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    isSubMenu := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20007edc; bytecode file offset 0x840d4"
!CwMenu methodsFor: 'recovered'!
armBlock: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    armBlock := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20007f98; bytecode file offset 0x84168"
!CwMenu methodsFor: 'recovered'!
disarmBlock: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    disarmBlock := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20007fbc; bytecode file offset 0x841fc"
!CwMenu methodsFor: 'recovered'!
helpBlock: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    helpBlock := recoveredValue0.
    ^self
! !

"winsys.ic method 0x2000a95c; bytecode file offset 0x86b24"
!CwMenu methodsFor: 'recovered'!
createPulldownMenuFor: recoveredArg1 parent: recoveredArg2 postFromButton: recoveredArg3 isPopup: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg4.
    recoveredValue4 := (self) createMenuFor: (recoveredValue0) parent: (recoveredValue1) createSelector: ('createSimplePulldownMenu:argBlock:') postFromButton: (recoveredValue2) isPopup: (recoveredValue3).
    ^recoveredValue4
! !

"winsys.ic method 0x2000b0a0; bytecode file offset 0x87278"
!CwMenu methodsFor: 'recovered'!
disarmCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) disarmBlock.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) disarmBlock.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x2000b0b0; bytecode file offset 0x87278"
!CwMenu methodsFor: 'recovered'!
armCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) armBlock.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) armBlock.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x2000b234; bytecode file offset 0x87400"
!CwMenu methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new: (20).
    entries := recoveredValue1.
    recoveredValue2 := MxESTa24.
    title := recoveredValue2.
    ^self
! !

"winsys.ic method 0x2000c944; bytecode file offset 0x88b10"
!CwMenu methodsFor: 'recovered'!
add: recoveredArg1 label: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := CwMenuPushButton.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) selector: (recoveredValue1) label: (recoveredValue2) enable: (true) owner: (nil).
    (self) addEntry: (recoveredValue3).
    ^self
! !

"winsys.ic method 0x2000ca28; bytecode file offset 0x88bf4"
!CwMenu methodsFor: 'recovered'!
add: recoveredArg1 label: recoveredArg2 enable: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := CwMenuPushButton.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue0) selector: (recoveredValue1) label: (recoveredValue2) enable: (recoveredValue3) owner: (nil).
    (self) addEntry: (recoveredValue4).
    ^self
! !

"winsys.ic method 0x2000cb14; bytecode file offset 0x88cf4"
!CwMenu methodsFor: 'recovered'!
add: recoveredArg1 label: recoveredArg2 enable: recoveredArg3 for: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := CwMenuPushButton.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := (recoveredValue0) selector: (recoveredValue1) label: (recoveredValue2) enable: (recoveredValue3) owner: (recoveredValue4).
    (self) addEntry: (recoveredValue5).
    ^self
! !

"winsys.ic method 0x2000cb28; bytecode file offset 0x88cf4"
!CwMenu methodsFor: 'recovered'!
addSubMenu: recoveredArg1 label: recoveredArg2 enable: recoveredArg3 for: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := CwMenuCascadeButton.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := (recoveredValue0) selector: (recoveredValue1) label: (recoveredValue2) enable: (recoveredValue3) owner: (recoveredValue4).
    (self) addEntry: (recoveredValue5).
    ^self
! !

"winsys.ic method 0x2000cb50; bytecode file offset 0x88d1c"
!CwMenu methodsFor: 'recovered'!
addSubMenuSpecial: recoveredArg1 label: recoveredArg2 enable: recoveredArg3 for: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := entries.
    recoveredValue1 := CwMenuCascadeButton.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := recoveredArg4.
    recoveredValue6 := (recoveredValue1) subMenu: (recoveredValue2) label: (recoveredValue3) enable: (recoveredValue4) owner: (recoveredValue5).
    recoveredValue7 := (recoveredValue0) add: (recoveredValue6).
    ^recoveredValue7
! !

"winsys.ic method 0x2000d6c0; bytecode file offset 0x8988c"
!CwMenu methodsFor: 'recovered'!
add: recoveredArg1 label: recoveredArg2 toggle: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := CwMenuToggleButton.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue0) selector: (recoveredValue1) label: (recoveredValue2) enable: (true) toggle: (recoveredValue3) owner: (nil).
    (self) addEntry: (recoveredValue4).
    ^self
! !

"winsys.ic method 0x2000d800; bytecode file offset 0x899e0"
!CwMenu methodsFor: 'recovered'!
add: recoveredArg1 label: recoveredArg2 enable: recoveredArg3 before: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := CwMenuPushButton.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue0) selector: (recoveredValue1) label: (recoveredValue2) enable: (recoveredValue3) owner: (nil).
    recoveredValue5 := recoveredArg4.
    (self) addEntry: (recoveredValue4) beforeName: (recoveredValue5).
    ^self
! !

"winsys.ic method 0x2000d814; bytecode file offset 0x899e0"
!CwMenu methodsFor: 'recovered'!
add: recoveredArg1 label: recoveredArg2 enable: recoveredArg3 after: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := CwMenuPushButton.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue0) selector: (recoveredValue1) label: (recoveredValue2) enable: (recoveredValue3) owner: (nil).
    recoveredValue5 := recoveredArg4.
    (self) addEntry: (recoveredValue4) afterName: (recoveredValue5).
    ^self
! !

"winsys.ic method 0x2000d83c; bytecode file offset 0x89a08"
!CwMenu methodsFor: 'recovered'!
add: recoveredArg1 label: recoveredArg2 enable: recoveredArg3 toggle: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := CwMenuToggleButton.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := (recoveredValue0) selector: (recoveredValue1) label: (recoveredValue2) enable: (recoveredValue3) toggle: (recoveredValue4) owner: (nil).
    (self) addEntry: (recoveredValue5).
    ^self
! !

"winsys.ic method 0x2000e1bc; bytecode file offset 0x8a3c4"
!CwMenu methodsFor: 'recovered'!
addSubMenu: recoveredArg1 label: recoveredArg2 enable: recoveredArg3 for: recoveredArg4 before: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := CwMenuCascadeButton.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := (recoveredValue0) selector: (recoveredValue1) label: (recoveredValue2) enable: (recoveredValue3) owner: (recoveredValue4).
    recoveredValue6 := recoveredArg5.
    (self) addEntry: (recoveredValue5) beforeName: (recoveredValue6).
    ^self
! !

"winsys.ic method 0x2000e1d0; bytecode file offset 0x8a3c4"
!CwMenu methodsFor: 'recovered'!
addSubMenu: recoveredArg1 label: recoveredArg2 enable: recoveredArg3 for: recoveredArg4 after: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := CwMenuCascadeButton.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := (recoveredValue0) selector: (recoveredValue1) label: (recoveredValue2) enable: (recoveredValue3) owner: (recoveredValue4).
    recoveredValue6 := recoveredArg5.
    (self) addEntry: (recoveredValue5) afterName: (recoveredValue6).
    ^self
! !

"winsys.ic method 0x2000e1e4; bytecode file offset 0x8a3c4"
!CwMenu methodsFor: 'recovered'!
add: recoveredArg1 label: recoveredArg2 enable: recoveredArg3 for: recoveredArg4 before: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := CwMenuPushButton.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := (recoveredValue0) selector: (recoveredValue1) label: (recoveredValue2) enable: (recoveredValue3) owner: (recoveredValue4).
    recoveredValue6 := recoveredArg5.
    (self) addEntry: (recoveredValue5) beforeName: (recoveredValue6).
    ^self
! !

"winsys.ic method 0x2000e1f8; bytecode file offset 0x8a3c4"
!CwMenu methodsFor: 'recovered'!
add: recoveredArg1 label: recoveredArg2 enable: recoveredArg3 for: recoveredArg4 after: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := CwMenuPushButton.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := (recoveredValue0) selector: (recoveredValue1) label: (recoveredValue2) enable: (recoveredValue3) owner: (recoveredValue4).
    recoveredValue6 := recoveredArg5.
    (self) addEntry: (recoveredValue5) afterName: (recoveredValue6).
    ^self
! !

"winsys.ic method 0x2000e220; bytecode file offset 0x8a3ec"
!CwMenu methodsFor: 'recovered'!
add: recoveredArg1 label: recoveredArg2 enable: recoveredArg3 toggle: recoveredArg4 for: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := CwMenuToggleButton.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := recoveredArg5.
    recoveredValue6 := (recoveredValue0) selector: (recoveredValue1) label: (recoveredValue2) enable: (recoveredValue3) toggle: (recoveredValue4) owner: (recoveredValue5).
    (self) addEntry: (recoveredValue6).
    ^self
! !

"winsys.ic method 0x2000e490; bytecode file offset 0x8a658"
!CwMenu methodsFor: 'recovered'!
createPopupMenuFor: recoveredArg1 parent: recoveredArg2 isPopup: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (self) createMenuFor: (recoveredValue0) parent: (recoveredValue1) createSelector: ('createSimplePopupMenu:argBlock:') postFromButton: (nil) isPopup: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredArg2.
    popupWidgetParent := recoveredValue4.
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"winsys.ic method 0x20010f60; bytecode file offset 0x8d128"
!CwMenu methodsFor: 'recovered'!
unmapCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := entries.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := recoveredArg2.
    recoveredBlock6Value2 := (recoveredBlock6Value0) sensitize: (recoveredBlock6Value1).
    recoveredBlock6Value2
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"winsys.ic method 0x20010f88; bytecode file offset 0x8d154"
!CwMenu methodsFor: 'recovered'!
add: recoveredArg1 label: recoveredArg2 enable: recoveredArg3 toggle: recoveredArg4 for: recoveredArg5 after: recoveredArg6
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := CwMenuToggleButton.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := recoveredArg5.
    recoveredValue6 := (recoveredValue0) selector: (recoveredValue1) label: (recoveredValue2) enable: (recoveredValue3) toggle: (recoveredValue4) owner: (recoveredValue5).
    recoveredValue7 := recoveredArg6.
    (self) addEntry: (recoveredValue6) afterName: (recoveredValue7).
    ^self
! !

"winsys.ic method 0x2001122c; bytecode file offset 0x8d3f4"
!CwMenu methodsFor: 'recovered'!
remove: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) findEntryNamed: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := entries.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) removeAtIndex: (recoveredStack1).
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

"winsys.ic method 0x20011dc0; bytecode file offset 0x8df8c"
!CwMenu methodsFor: 'recovered'!
remove: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) findEntryNamed: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := entries.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) removeAtIndex: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x20012840; bytecode file offset 0x8ea20"
!CwMenu methodsFor: 'recovered'!
enable: recoveredArg1 if: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) findEntryNamed: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := entries.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) enable: (recoveredStack1).
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

"winsys.ic method 0x20012854; bytecode file offset 0x8ea20"
!CwMenu methodsFor: 'recovered'!
toggle: recoveredArg1 if: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) findEntryNamed: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := entries.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) toggle: (recoveredStack1).
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

"winsys.ic method 0x20012a0c; bytecode file offset 0x8ebec"
!CwMenu methodsFor: 'recovered'!
clearWidgetsTotally
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            popupWidget := recoveredStack2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            menuBarWidget := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := entries.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := [:block28008be4Arg1 | 
    | block28008be4Value0 block28008be4Value1 |
    block28008be4Value0 := block28008be4Arg1.
    block28008be4Value1 := (block28008be4Value0) clearWidgetsTotally.
    block28008be4Value1
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x20012a20; bytecode file offset 0x8ebec"
!CwMenu methodsFor: 'recovered'!
clearWidgets
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            popupWidget := recoveredStack2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            menuBarWidget := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := entries.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := [:block28008c08Arg1 | 
    | block28008c08Value0 block28008c08Value1 |
    block28008c08Value0 := block28008c08Arg1.
    block28008c08Value1 := (block28008c08Value0) clearWidgets.
    block28008c08Value1
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x20017240; bytecode file offset 0x93410"
!CwMenu methodsFor: 'recovered'!
addEntry: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isButton.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCascadeButton.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 25] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) accelerator.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 25] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            hasAccelerators := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := entries.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"winsys.ic method 0x200172e8; bytecode file offset 0x934bc"
!CwMenu methodsFor: 'recovered'!
registerPopupFor: recoveredArg1 owner: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CreatePopupOnDemand.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack4 := true.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPopupMenuFor: (recoveredStack2) parent: (recoveredStack3) isPopup: (recoveredStack4).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            popupWidget := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := ButtonMenuMask.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack4 := 'menuRequest:clientData:event:'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack5 := recoveredArg2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) addEventHandler: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x20018334; bytecode file offset 0x94500"
!CwMenu methodsFor: 'recovered'!
configureEntries: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := configureBlock.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := configureBlock.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) value.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := entries.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Value0 recoveredBlock16Value1 recoveredBlock16Value2 |
    recoveredBlock16Value0 := recoveredBlock16Arg1.
    recoveredBlock16Value1 := recoveredArg1.
    recoveredBlock16Value2 := (recoveredBlock16Value0) configureEntry: (recoveredBlock16Value1).
    recoveredBlock16Value2
].
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x2001845c; bytecode file offset 0x94628"
!CwMenu methodsFor: 'recovered'!
add: recoveredArg1 label: recoveredArg2 enable: recoveredArg3 for: recoveredArg4 accelerator: recoveredArg5 acceleratorText: recoveredArg6
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := hasAccelerators.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 == recoveredStack2) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg5.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) notNil.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            hasAccelerators := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := CwMenuPushButton.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack5 := recoveredArg4.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack6 := recoveredArg5.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack7 := recoveredArg6.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) selector: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4) owner: (recoveredStack5) accelerator: (recoveredStack6) acceleratorText: (recoveredStack7).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) addEntry: (recoveredStack1).
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

"winsys.ic method 0x20019ebc; bytecode file offset 0x96094"
!CwMenu methodsFor: 'recovered'!
simpleCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
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
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) updateDisplay.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := hasAccelerators.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := configureBlock.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := configureBlock.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) value.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) buttonEntryAt: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) owner.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) dispatchTo: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x2001b10c; bytecode file offset 0x972d8"
!CwMenu methodsFor: 'recovered'!
setAcceleratorAt: recoveredArg1 to: recoveredArg2 text: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := hasAccelerators.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack2 == recoveredStack3) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) notNil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            hasAccelerators := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) findEntryNamed: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := entries.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) accelerator: (recoveredStack1) acceleratorText: (recoveredStack2).
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

"winsys.ic method 0x2001bf18; bytecode file offset 0x980ec"
!CwMenu methodsFor: 'recovered'!
cascadeCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := menuBarWidget.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 33] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) updateWidget.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack4 := 2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack5 := 3.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack5 := false.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPulldownMenuFor: (recoveredStack2) parent: (recoveredStack3) postFromButton: (recoveredStack4) isPopup: (recoveredStack5).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            menuBarWidget := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) configureEntries: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x2001daa0; bytecode file offset 0x99c74"
!CwMenu methodsFor: 'recovered'!
removeLineAfter: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) findEntryNamed: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := entries.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) <= (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 39].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := entries.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSeparator.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 39].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := entries.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) removeAtIndex: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x2001e0b4; bytecode file offset 0x9a288"
!CwMenu methodsFor: 'recovered'!
addEntry: recoveredArg1 beforeName: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) findEntryNamed: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) isButton.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 35].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCascadeButton.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 35] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) accelerator.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 35] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            hasAccelerators := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := entries.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) add: (recoveredStack1) beforeIndex: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x20020368; bytecode file offset 0x9c548"
!CwMenu methodsFor: 'recovered'!
registerMenuBarPulldownFor: recoveredArg1 owner: recoveredArg2 postFromButton: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CreatePulldownOnDemand.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 == recoveredStack2) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := hasAccelerators.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack5 := false.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPulldownMenuFor: (recoveredStack2) parent: (recoveredStack3) postFromButton: (recoveredStack4) isPopup: (recoveredStack5).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            menuBarWidget := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) childAt: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := XmNcascadingCallback.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack4 := 'cascadeCallback:clientData:callData:'.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack5 := Array.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack6 := recoveredArg2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack7 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack8 := recoveredArg3.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack5 := (recoveredStack5) with: (recoveredStack6) with: (recoveredStack7) with: (recoveredStack8).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x20021728; bytecode file offset 0x9d908"
!CwMenu methodsFor: 'recovered'!
removeSeparatorsAtEnd
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := entries.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block28009088Arg1 | 
    | block28009088Stack0 block28009088Stack1 block28009088Stack2 block28009088Stack3 block28009088PC block28009088Step block28009088Done block28009088Result |
    block28009088Stack0 := self.
    block28009088PC := 4.
    block28009088Done := false.
    [block28009088Done not] whileTrue: [
        block28009088Step := block28009088PC.
        block28009088Step = 4 ifTrue: [
            block28009088Stack1 := true.
            block28009088PC := 5.
        ].
        block28009088Step = 5 ifTrue: [
            block28009088Stack2 := block28009088Arg1.
            block28009088PC := 6.
        ].
        block28009088Step = 6 ifTrue: [
            block28009088Stack2 := (block28009088Stack2) manage.
            block28009088PC := 7.
        ].
        block28009088Step = 7 ifTrue: [
            (block28009088Stack2 == nil) ifTrue: [block28009088PC := 14] ifFalse: [block28009088PC := 10].
        ].
        block28009088Step = 10 ifTrue: [
            block28009088PC := 11.
        ].
        block28009088Step = 11 ifTrue: [
            block28009088Stack1 := block28009088Arg1.
            block28009088PC := 12.
        ].
        block28009088Step = 12 ifTrue: [
            block28009088Stack1 := (block28009088Stack1) manage.
            block28009088PC := 13.
        ].
        block28009088Step = 13 ifTrue: [
            block28009088Stack1 := (block28009088Stack1) value.
            block28009088PC := 14.
        ].
        block28009088Step = 14 ifTrue: [
            block28009088Stack2 := true.
            block28009088PC := 15.
        ].
        block28009088Step = 15 ifTrue: [
            block28009088Stack1 := (block28009088Stack1) == (block28009088Stack2).
            block28009088PC := 16.
        ].
        block28009088Step = 16 ifTrue: [
            block28009088Result := block28009088Stack1.
            block28009088Done := true.
        ].
    ].
    block28009088Result
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 49] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) last.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSeparator.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 49].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := entries.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := (recoveredStack2) last.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1) remove: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x200217cc; bytecode file offset 0x9d994"
!CwMenu methodsFor: 'recovered'!
buttonEntryAt: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 |
    recoveredLocal1 := 1.
    recoveredValue0 := entries.
    recoveredValue1 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Stack0 recoveredBlock11Stack1 recoveredBlock11Stack2 recoveredBlock11Stack3 recoveredBlock11PC recoveredBlock11Step recoveredBlock11Done recoveredBlock11Result |
    recoveredBlock11Stack0 := self.
    recoveredBlock11PC := 18.
    recoveredBlock11Done := false.
    [recoveredBlock11Done not] whileTrue: [
        recoveredBlock11Step := recoveredBlock11PC.
        recoveredBlock11Step = 18 ifTrue: [
            recoveredBlock11Stack1 := nil.
            recoveredBlock11PC := 19.
        ].
        recoveredBlock11Step = 19 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 20.
        ].
        recoveredBlock11Step = 20 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) isButton.
            recoveredBlock11PC := 21.
        ].
        recoveredBlock11Step = 21 ifTrue: [
            (recoveredBlock11Stack2) ifTrue: [recoveredBlock11PC := 24] ifFalse: [recoveredBlock11PC := 46].
        ].
        recoveredBlock11Step = 24 ifTrue: [
            recoveredBlock11PC := 25.
        ].
        recoveredBlock11Step = 25 ifTrue: [
            recoveredBlock11Stack1 := recoveredLocal1.
            recoveredBlock11PC := 28.
        ].
        recoveredBlock11Step = 28 ifTrue: [
            recoveredBlock11Stack2 := recoveredArg1.
            recoveredBlock11PC := 31.
        ].
        recoveredBlock11Step = 31 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) = (recoveredBlock11Stack2).
            recoveredBlock11PC := 32.
        ].
        recoveredBlock11Step = 32 ifTrue: [
            (recoveredBlock11Stack1) ifTrue: [recoveredBlock11PC := 36] ifFalse: [recoveredBlock11PC := 38].
        ].
        recoveredBlock11Step = 36 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Arg1.
            recoveredBlock11PC := 37.
        ].
        recoveredBlock11Step = 37 ifTrue: [
            ^recoveredBlock11Stack1
        ].
        recoveredBlock11Step = 38 ifTrue: [
            recoveredBlock11Stack1 := recoveredLocal1.
            recoveredBlock11PC := 41.
        ].
        recoveredBlock11Step = 41 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) + (1).
            recoveredBlock11PC := 42.
        ].
        recoveredBlock11Step = 42 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Stack1.
            recoveredBlock11PC := 43.
        ].
        recoveredBlock11Step = 43 ifTrue: [
            recoveredLocal1 := recoveredBlock11Stack2.
            recoveredBlock11PC := 46.
        ].
        recoveredBlock11Step = 46 ifTrue: [
            recoveredBlock11Result := recoveredBlock11Stack1.
            recoveredBlock11Done := true.
        ].
    ].
    recoveredBlock11Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"winsys.ic method 0x200279b8; bytecode file offset 0xa3b94"
!CwMenu methodsFor: 'recovered'!
addEntry: recoveredArg1 afterName: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) findEntryNamed: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) isButton.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 35].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCascadeButton.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 35] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) accelerator.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 35] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            hasAccelerators := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := entries.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredPC := 47.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 63].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := entries.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) isButton.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 63] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := entries.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) add: (recoveredStack1) afterIndex: (recoveredStack2).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x2002c610; bytecode file offset 0xa8800"
!CwMenu methodsFor: 'recovered'!
menuRequest: recoveredArg1 clientData: recoveredArg2 event: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) button.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 3.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := popupWidget.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 29] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack4 := true.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPopupMenuFor: (recoveredStack2) parent: (recoveredStack3) isPopup: (recoveredStack4).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            popupWidget := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) configureEntries: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) x.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := -1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) y.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := -1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) @ (recoveredStack2).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) translateCoords: (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := popupWidget.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := (recoveredStack2) y.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) moveWidget: (recoveredStack1) y: (recoveredStack2).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredPC := 79.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := popupWidget.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack0) menuPosition: (recoveredStack1).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := popupWidget.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) rootParent.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack0) reactToMenuRequest.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x2002fb2c; bytecode file offset 0xabd08"
!CwMenu methodsFor: 'recovered'!
findEntryNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := entries.
    recoveredValue1 := [:recoveredBlock6Arg1 :recoveredBlock6Arg2 | 
    | recoveredBlock6Local1 recoveredBlock6Local2 recoveredBlock6Local3 recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6Stack3 recoveredBlock6Stack4 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            recoveredBlock6Stack1 := recoveredBlock6Arg1.
            recoveredBlock6PC := 14.
        ].
        recoveredBlock6Step = 14 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) selector.
            recoveredBlock6PC := 15.
        ].
        recoveredBlock6Step = 15 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Stack1.
            recoveredBlock6PC := 16.
        ].
        recoveredBlock6Step = 16 ifTrue: [
            recoveredBlock6Local3 := recoveredBlock6Stack2.
            recoveredBlock6PC := 17.
        ].
        recoveredBlock6Step = 17 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) isSymbol.
            recoveredBlock6PC := 18.
        ].
        recoveredBlock6Step = 18 ifTrue: [
            (recoveredBlock6Stack1) ifTrue: [recoveredBlock6PC := 22] ifFalse: [recoveredBlock6PC := 36].
        ].
        recoveredBlock6Step = 22 ifTrue: [
            recoveredBlock6Stack1 := nil.
            recoveredBlock6PC := 23.
        ].
        recoveredBlock6Step = 23 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Local3.
            recoveredBlock6PC := 24.
        ].
        recoveredBlock6Step = 24 ifTrue: [
            recoveredBlock6Stack3 := recoveredArg1.
            recoveredBlock6PC := 27.
        ].
        recoveredBlock6Step = 27 ifTrue: [
            (recoveredBlock6Stack2 ~~ recoveredBlock6Stack3) ifTrue: [recoveredBlock6PC := 33] ifFalse: [recoveredBlock6PC := 30].
        ].
        recoveredBlock6Step = 30 ifTrue: [
            recoveredBlock6PC := 31.
        ].
        recoveredBlock6Step = 31 ifTrue: [
            recoveredBlock6Stack1 := recoveredBlock6Arg2.
            recoveredBlock6PC := 32.
        ].
        recoveredBlock6Step = 32 ifTrue: [
            ^recoveredBlock6Stack1
        ].
        recoveredBlock6Step = 33 ifTrue: [
            recoveredBlock6PC := 105.
        ].
        recoveredBlock6Step = 36 ifTrue: [
            recoveredBlock6Stack1 := nil.
            recoveredBlock6PC := 37.
        ].
        recoveredBlock6Step = 37 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Local3.
            recoveredBlock6PC := 38.
        ].
        recoveredBlock6Step = 38 ifTrue: [
            (recoveredBlock6Stack2 == nil) ifTrue: [recoveredBlock6PC := 105] ifFalse: [recoveredBlock6PC := 42].
        ].
        recoveredBlock6Step = 42 ifTrue: [
            recoveredBlock6PC := 43.
        ].
        recoveredBlock6Step = 43 ifTrue: [
            recoveredBlock6Stack1 := recoveredBlock6Local3.
            recoveredBlock6PC := 44.
        ].
        recoveredBlock6Step = 44 ifTrue: [
            recoveredBlock6Local1 := recoveredBlock6Stack1.
            recoveredBlock6PC := 45.
        ].
        recoveredBlock6Step = 45 ifTrue: [
            recoveredBlock6Stack1 := recoveredBlock6Local3.
            recoveredBlock6PC := 46.
        ].
        recoveredBlock6Step = 46 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) selector.
            recoveredBlock6PC := 47.
        ].
        recoveredBlock6Step = 47 ifTrue: [
            recoveredBlock6Stack2 := recoveredArg1.
            recoveredBlock6PC := 50.
        ].
        recoveredBlock6Step = 50 ifTrue: [
            (recoveredBlock6Stack1 ~~ recoveredBlock6Stack2) ifTrue: [recoveredBlock6PC := 56] ifFalse: [recoveredBlock6PC := 54].
        ].
        recoveredBlock6Step = 54 ifTrue: [
            recoveredBlock6Stack1 := recoveredBlock6Arg2.
            recoveredBlock6PC := 55.
        ].
        recoveredBlock6Step = 55 ifTrue: [
            ^recoveredBlock6Stack1
        ].
        recoveredBlock6Step = 56 ifTrue: [
            recoveredBlock6Stack1 := nil.
            recoveredBlock6PC := 57.
        ].
        recoveredBlock6Step = 57 ifTrue: [
            recoveredBlock6Stack2 := recoveredArg1.
            recoveredBlock6PC := 60.
        ].
        recoveredBlock6Step = 60 ifTrue: [
            recoveredBlock6Stack3 := DirectedMessage.
            recoveredBlock6PC := 62.
        ].
        recoveredBlock6Step = 62 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) isMemberOf: (recoveredBlock6Stack3).
            recoveredBlock6PC := 63.
        ].
        recoveredBlock6Step = 63 ifTrue: [
            (recoveredBlock6Stack2) ifTrue: [recoveredBlock6PC := 66] ifFalse: [recoveredBlock6PC := 101].
        ].
        recoveredBlock6Step = 66 ifTrue: [
            recoveredBlock6Stack2 := recoveredArg1.
            recoveredBlock6PC := 69.
        ].
        recoveredBlock6Step = 69 ifTrue: [
            recoveredBlock6Stack3 := recoveredBlock6Stack2.
            recoveredBlock6PC := 70.
        ].
        recoveredBlock6Step = 70 ifTrue: [
            recoveredBlock6Local2 := recoveredBlock6Stack3.
            recoveredBlock6PC := 71.
        ].
        recoveredBlock6Step = 71 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) selector.
            recoveredBlock6PC := 72.
        ].
        recoveredBlock6Step = 72 ifTrue: [
            recoveredBlock6Stack3 := recoveredBlock6Local1.
            recoveredBlock6PC := 73.
        ].
        recoveredBlock6Step = 73 ifTrue: [
            recoveredBlock6Stack3 := (recoveredBlock6Stack3) selector.
            recoveredBlock6PC := 74.
        ].
        recoveredBlock6Step = 74 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) = (recoveredBlock6Stack3).
            recoveredBlock6PC := 75.
        ].
        recoveredBlock6Step = 75 ifTrue: [
            (recoveredBlock6Stack2) ifTrue: [recoveredBlock6PC := 78] ifFalse: [recoveredBlock6PC := 101].
        ].
        recoveredBlock6Step = 78 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Local2.
            recoveredBlock6PC := 79.
        ].
        recoveredBlock6Step = 79 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) receiver.
            recoveredBlock6PC := 81.
        ].
        recoveredBlock6Step = 81 ifTrue: [
            recoveredBlock6Stack3 := recoveredBlock6Local1.
            recoveredBlock6PC := 82.
        ].
        recoveredBlock6Step = 82 ifTrue: [
            recoveredBlock6Stack3 := (recoveredBlock6Stack3) receiver.
            recoveredBlock6PC := 84.
        ].
        recoveredBlock6Step = 84 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) = (recoveredBlock6Stack3).
            recoveredBlock6PC := 85.
        ].
        recoveredBlock6Step = 85 ifTrue: [
            (recoveredBlock6Stack2) ifTrue: [recoveredBlock6PC := 88] ifFalse: [recoveredBlock6PC := 101].
        ].
        recoveredBlock6Step = 88 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Local2.
            recoveredBlock6PC := 89.
        ].
        recoveredBlock6Step = 89 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) arguments.
            recoveredBlock6PC := 91.
        ].
        recoveredBlock6Step = 91 ifTrue: [
            recoveredBlock6Stack3 := recoveredBlock6Local2.
            recoveredBlock6PC := 92.
        ].
        recoveredBlock6Step = 92 ifTrue: [
            recoveredBlock6Stack3 := (recoveredBlock6Stack3) arguments.
            recoveredBlock6PC := 94.
        ].
        recoveredBlock6Step = 94 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) = (recoveredBlock6Stack3).
            recoveredBlock6PC := 95.
        ].
        recoveredBlock6Step = 95 ifTrue: [
            (recoveredBlock6Stack2) ifTrue: [recoveredBlock6PC := 98] ifFalse: [recoveredBlock6PC := 101].
        ].
        recoveredBlock6Step = 98 ifTrue: [
            recoveredBlock6PC := 99.
        ].
        recoveredBlock6Step = 99 ifTrue: [
            recoveredBlock6Stack1 := recoveredBlock6Arg2.
            recoveredBlock6PC := 100.
        ].
        recoveredBlock6Step = 100 ifTrue: [
            ^recoveredBlock6Stack1
        ].
        recoveredBlock6Step = 101 ifTrue: [
            recoveredBlock6Stack2 := nil.
            recoveredBlock6PC := 102.
        ].
        recoveredBlock6Step = 102 ifTrue: [
            recoveredBlock6Stack3 := recoveredBlock6Stack2.
            recoveredBlock6PC := 103.
        ].
        recoveredBlock6Step = 103 ifTrue: [
            recoveredBlock6Local2 := recoveredBlock6Stack3.
            recoveredBlock6PC := 104.
        ].
        recoveredBlock6Step = 104 ifTrue: [
            recoveredBlock6Local1 := recoveredBlock6Stack2.
            recoveredBlock6PC := 105.
        ].
        recoveredBlock6Step = 105 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack1.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
    (recoveredValue0) doWithIndex: (recoveredValue1).
    ^nil
! !

"winsys.ic method 0x20041254; bytecode file offset 0xbd4a8"
!CwMenu methodsFor: 'recovered'!
createMenuFor: recoveredArg1 parent: recoveredArg2 createSelector: recoveredArg3 postFromButton: recoveredArg4 isPopup: recoveredArg5
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
            owner := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := entries.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := Locale.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) current.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) preferredStringClass.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := entries.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := [:recoveredBlock48Arg1 :recoveredBlock48Arg2 | 
    | recoveredBlock48Value0 recoveredBlock48Value1 recoveredBlock48Value2 recoveredBlock48Value3 recoveredBlock48Value4 recoveredBlock48Value5 |
    recoveredBlock48Value0 := recoveredBlock48Arg1.
    recoveredBlock48Value1 := recoveredBlock48Arg2.
    recoveredBlock48Value2 := recoveredLocal5.
    recoveredBlock48Value3 := recoveredLocal4.
    recoveredBlock48Value4 := recoveredLocal3.
    recoveredBlock48Value5 := (recoveredBlock48Value0) initializeAt: (recoveredBlock48Value1) names: (recoveredBlock48Value2) types: (recoveredBlock48Value3) mnemonics: (recoveredBlock48Value4).
    recoveredBlock48Value5
].
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack1) doWithIndex: (recoveredStack2).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack3 := title.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack4 := [:recoveredBlock79Arg1 | 
    | recoveredBlock79Stack0 recoveredBlock79Stack1 recoveredBlock79Stack2 recoveredBlock79Stack3 recoveredBlock79Stack4 recoveredBlock79PC recoveredBlock79Step recoveredBlock79Done recoveredBlock79Result |
    recoveredBlock79Stack0 := self.
    recoveredBlock79PC := 86.
    recoveredBlock79Done := false.
    [recoveredBlock79Done not] whileTrue: [
        recoveredBlock79Step := recoveredBlock79PC.
        recoveredBlock79Step = 86 ifTrue: [
            recoveredBlock79Stack1 := recoveredBlock79Arg1.
            recoveredBlock79PC := 87.
        ].
        recoveredBlock79Step = 87 ifTrue: [
            recoveredBlock79Stack2 := recoveredBlock79Stack1.
            recoveredBlock79PC := 88.
        ].
        recoveredBlock79Step = 88 ifTrue: [
            recoveredBlock79Stack3 := recoveredLocal4.
            recoveredBlock79PC := 91.
        ].
        recoveredBlock79Step = 91 ifTrue: [
            (recoveredBlock79Stack2) buttonType: (recoveredBlock79Stack3).
            recoveredBlock79Stack2 := recoveredBlock79Stack1.
            recoveredBlock79PC := 94.
        ].
        recoveredBlock79Step = 94 ifTrue: [
            recoveredBlock79Stack3 := recoveredLocal5.
            recoveredBlock79PC := 97.
        ].
        recoveredBlock79Step = 97 ifTrue: [
            (recoveredBlock79Stack2) buttons: (recoveredBlock79Stack3).
            recoveredBlock79PC := 99.
        ].
        recoveredBlock79Step = 99 ifTrue: [
            recoveredBlock79Stack2 := recoveredLocal3.
            recoveredBlock79PC := 102.
        ].
        recoveredBlock79Step = 102 ifTrue: [
            (recoveredBlock79Stack1) buttonMnemonics: (recoveredBlock79Stack2).
            recoveredBlock79PC := 104.
        ].
        recoveredBlock79Step = 104 ifTrue: [
            recoveredBlock79Stack1 := nil.
            recoveredBlock79PC := 105.
        ].
        recoveredBlock79Step = 105 ifTrue: [
            recoveredBlock79Stack2 := recoveredArg4.
            recoveredBlock79PC := 108.
        ].
        recoveredBlock79Step = 108 ifTrue: [
            (recoveredBlock79Stack2 == nil) ifTrue: [recoveredBlock79PC := 119] ifFalse: [recoveredBlock79PC := 112].
        ].
        recoveredBlock79Step = 112 ifTrue: [
            recoveredBlock79PC := 113.
        ].
        recoveredBlock79Step = 113 ifTrue: [
            recoveredBlock79Stack1 := recoveredBlock79Arg1.
            recoveredBlock79PC := 114.
        ].
        recoveredBlock79Step = 114 ifTrue: [
            recoveredBlock79Stack2 := recoveredArg4.
            recoveredBlock79PC := 117.
        ].
        recoveredBlock79Step = 117 ifTrue: [
            recoveredBlock79Stack1 := (recoveredBlock79Stack1) postFromButton: (recoveredBlock79Stack2).
            recoveredBlock79PC := 119.
        ].
        recoveredBlock79Step = 119 ifTrue: [
            recoveredBlock79Result := recoveredBlock79Stack1.
            recoveredBlock79Done := true.
        ].
    ].
    recoveredBlock79Result
].
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := (recoveredStack1) perform: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := entries.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack2 := [:recoveredBlock128Arg1 :recoveredBlock128Arg2 | 
    | recoveredBlock128Stack0 recoveredBlock128Stack1 recoveredBlock128Stack2 recoveredBlock128Stack3 recoveredBlock128Stack4 recoveredBlock128Stack5 recoveredBlock128Stack6 recoveredBlock128PC recoveredBlock128Step recoveredBlock128Done recoveredBlock128Result |
    recoveredBlock128Stack0 := self.
    recoveredBlock128PC := 134.
    recoveredBlock128Done := false.
    [recoveredBlock128Done not] whileTrue: [
        recoveredBlock128Step := recoveredBlock128PC.
        recoveredBlock128Step = 134 ifTrue: [
            recoveredBlock128Stack1 := nil.
            recoveredBlock128PC := 135.
        ].
        recoveredBlock128Step = 135 ifTrue: [
            recoveredBlock128Stack2 := recoveredBlock128Arg1.
            recoveredBlock128PC := 136.
        ].
        recoveredBlock128Step = 136 ifTrue: [
            recoveredBlock128Stack2 := (recoveredBlock128Stack2) isCascadeButton.
            recoveredBlock128PC := 138.
        ].
        recoveredBlock128Step = 138 ifTrue: [
            (recoveredBlock128Stack2) ifTrue: [recoveredBlock128PC := 142] ifFalse: [recoveredBlock128PC := 164].
        ].
        recoveredBlock128Step = 142 ifTrue: [
            recoveredBlock128PC := 143.
        ].
        recoveredBlock128Step = 143 ifTrue: [
            recoveredBlock128Stack1 := recoveredBlock128Arg1.
            recoveredBlock128PC := 144.
        ].
        recoveredBlock128Step = 144 ifTrue: [
            recoveredBlock128Stack1 := (recoveredBlock128Stack1) subMenu.
            recoveredBlock128PC := 146.
        ].
        recoveredBlock128Step = 146 ifTrue: [
            recoveredBlock128Stack2 := recoveredBlock128Stack1.
            recoveredBlock128PC := 147.
        ].
        recoveredBlock128Step = 147 ifTrue: [
            recoveredBlock128Stack3 := true.
            recoveredBlock128PC := 148.
        ].
        recoveredBlock128Step = 148 ifTrue: [
            (recoveredBlock128Stack2) isSubMenu: (recoveredBlock128Stack3).
            recoveredBlock128PC := 150.
        ].
        recoveredBlock128Step = 150 ifTrue: [
            recoveredBlock128Stack2 := recoveredArg1.
            recoveredBlock128PC := 153.
        ].
        recoveredBlock128Step = 153 ifTrue: [
            recoveredBlock128Stack3 := recoveredLocal1.
            recoveredBlock128PC := 156.
        ].
        recoveredBlock128Step = 156 ifTrue: [
            recoveredBlock128Stack4 := recoveredBlock128Arg2.
            recoveredBlock128PC := 157.
        ].
        recoveredBlock128Step = 157 ifTrue: [
            recoveredBlock128Stack4 := (recoveredBlock128Stack4) + (-1).
            recoveredBlock128PC := 158.
        ].
        recoveredBlock128Step = 158 ifTrue: [
            recoveredBlock128Stack5 := recoveredArg5.
            recoveredBlock128PC := 161.
        ].
        recoveredBlock128Step = 161 ifTrue: [
            recoveredBlock128Stack1 := (recoveredBlock128Stack1) createPulldownMenuFor: (recoveredBlock128Stack2) parent: (recoveredBlock128Stack3) postFromButton: (recoveredBlock128Stack4) isPopup: (recoveredBlock128Stack5).
            recoveredBlock128PC := 164.
        ].
        recoveredBlock128Step = 164 ifTrue: [
            recoveredBlock128Result := recoveredBlock128Stack1.
            recoveredBlock128Done := true.
        ].
    ].
    recoveredBlock128Result
].
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            (recoveredStack1) doWithIndex: (recoveredStack2).
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack1 := (recoveredStack1) children.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack2 := [:recoveredBlock172Arg1 :recoveredBlock172Arg2 | 
    | recoveredBlock172Local1 recoveredBlock172Stack0 recoveredBlock172Stack1 recoveredBlock172Stack2 recoveredBlock172Stack3 recoveredBlock172Stack4 recoveredBlock172Stack5 recoveredBlock172Stack6 recoveredBlock172PC recoveredBlock172Step recoveredBlock172Done recoveredBlock172Result |
    recoveredBlock172Stack0 := self.
    recoveredBlock172PC := 178.
    recoveredBlock172Done := false.
    [recoveredBlock172Done not] whileTrue: [
        recoveredBlock172Step := recoveredBlock172PC.
        recoveredBlock172Step = 178 ifTrue: [
            recoveredBlock172Stack1 := entries.
            recoveredBlock172PC := 180.
        ].
        recoveredBlock172Step = 180 ifTrue: [
            recoveredBlock172Stack2 := recoveredBlock172Arg2.
            recoveredBlock172PC := 181.
        ].
        recoveredBlock172Step = 181 ifTrue: [
            recoveredBlock172Stack1 := (recoveredBlock172Stack1) at: (recoveredBlock172Stack2).
            recoveredBlock172PC := 183.
        ].
        recoveredBlock172Step = 183 ifTrue: [
            recoveredBlock172Local1 := recoveredBlock172Stack1.
            recoveredBlock172PC := 184.
        ].
        recoveredBlock172Step = 184 ifTrue: [
            recoveredBlock172Stack1 := recoveredBlock172Local1.
            recoveredBlock172PC := 185.
        ].
        recoveredBlock172Step = 185 ifTrue: [
            recoveredBlock172Stack2 := recoveredBlock172Arg1.
            recoveredBlock172PC := 186.
        ].
        recoveredBlock172Step = 186 ifTrue: [
            recoveredBlock172Stack3 := recoveredArg5.
            recoveredBlock172PC := 189.
        ].
        recoveredBlock172Step = 189 ifTrue: [
            (recoveredBlock172Stack1) setWidget: (recoveredBlock172Stack2) isPopup: (recoveredBlock172Stack3).
            recoveredBlock172PC := 191.
        ].
        recoveredBlock172Step = 191 ifTrue: [
            recoveredBlock172Stack1 := nil.
            recoveredBlock172PC := 192.
        ].
        recoveredBlock172Step = 192 ifTrue: [
            recoveredBlock172Stack2 := recoveredBlock172Local1.
            recoveredBlock172PC := 193.
        ].
        recoveredBlock172Step = 193 ifTrue: [
            recoveredBlock172Stack2 := (recoveredBlock172Stack2) isButton.
            recoveredBlock172PC := 195.
        ].
        recoveredBlock172Step = 195 ifTrue: [
            (recoveredBlock172Stack2) ifTrue: [recoveredBlock172PC := 198] ifFalse: [recoveredBlock172PC := 257].
        ].
        recoveredBlock172Step = 198 ifTrue: [
            recoveredBlock172Stack2 := recoveredBlock172Local1.
            recoveredBlock172PC := 199.
        ].
        recoveredBlock172Step = 199 ifTrue: [
            recoveredBlock172Stack2 := (recoveredBlock172Stack2) isCascadeButton.
            recoveredBlock172PC := 201.
        ].
        recoveredBlock172Step = 201 ifTrue: [
            (recoveredBlock172Stack2) ifTrue: [recoveredBlock172PC := 257] ifFalse: [recoveredBlock172PC := 204].
        ].
        recoveredBlock172Step = 204 ifTrue: [
            recoveredBlock172PC := 205.
        ].
        recoveredBlock172Step = 205 ifTrue: [
            recoveredBlock172Stack1 := recoveredBlock172Local1.
            recoveredBlock172PC := 206.
        ].
        recoveredBlock172Step = 206 ifTrue: [
            recoveredBlock172Stack1 := (recoveredBlock172Stack1) help.
            recoveredBlock172PC := 208.
        ].
        recoveredBlock172Step = 208 ifTrue: [
            (recoveredBlock172Stack1 == nil) ifTrue: [recoveredBlock172PC := 222] ifFalse: [recoveredBlock172PC := 212].
        ].
        recoveredBlock172Step = 212 ifTrue: [
            recoveredBlock172Stack1 := recoveredBlock172Arg1.
            recoveredBlock172PC := 213.
        ].
        recoveredBlock172Step = 213 ifTrue: [
            recoveredBlock172Stack2 := XmNhelpCallback.
            recoveredBlock172PC := 215.
        ].
        recoveredBlock172Step = 215 ifTrue: [
            recoveredBlock172Stack3 := self.
            recoveredBlock172PC := 216.
        ].
        recoveredBlock172Step = 216 ifTrue: [
            recoveredBlock172Stack4 := 'helpCallback:clientData:callData:'.
            recoveredBlock172PC := 218.
        ].
        recoveredBlock172Step = 218 ifTrue: [
            recoveredBlock172Stack5 := recoveredBlock172Local1.
            recoveredBlock172PC := 219.
        ].
        recoveredBlock172Step = 219 ifTrue: [
            (recoveredBlock172Stack1) addCallback: (recoveredBlock172Stack2) receiver: (recoveredBlock172Stack3) selector: (recoveredBlock172Stack4) clientData: (recoveredBlock172Stack5).
            recoveredBlock172PC := 222.
        ].
        recoveredBlock172Step = 222 ifTrue: [
            recoveredBlock172Stack1 := self.
            recoveredBlock172PC := 223.
        ].
        recoveredBlock172Step = 223 ifTrue: [
            recoveredBlock172Stack1 := (recoveredBlock172Stack1) armBlock.
            recoveredBlock172PC := 225.
        ].
        recoveredBlock172Step = 225 ifTrue: [
            (recoveredBlock172Stack1 == nil) ifTrue: [recoveredBlock172PC := 238] ifFalse: [recoveredBlock172PC := 228].
        ].
        recoveredBlock172Step = 228 ifTrue: [
            recoveredBlock172Stack1 := recoveredBlock172Arg1.
            recoveredBlock172PC := 229.
        ].
        recoveredBlock172Step = 229 ifTrue: [
            recoveredBlock172Stack2 := XmNarmCallback.
            recoveredBlock172PC := 231.
        ].
        recoveredBlock172Step = 231 ifTrue: [
            recoveredBlock172Stack3 := self.
            recoveredBlock172PC := 232.
        ].
        recoveredBlock172Step = 232 ifTrue: [
            recoveredBlock172Stack4 := 'armCallback:clientData:callData:'.
            recoveredBlock172PC := 234.
        ].
        recoveredBlock172Step = 234 ifTrue: [
            recoveredBlock172Stack5 := recoveredBlock172Local1.
            recoveredBlock172PC := 235.
        ].
        recoveredBlock172Step = 235 ifTrue: [
            (recoveredBlock172Stack1) addCallback: (recoveredBlock172Stack2) receiver: (recoveredBlock172Stack3) selector: (recoveredBlock172Stack4) clientData: (recoveredBlock172Stack5).
            recoveredBlock172PC := 238.
        ].
        recoveredBlock172Step = 238 ifTrue: [
            recoveredBlock172Stack1 := nil.
            recoveredBlock172PC := 239.
        ].
        recoveredBlock172Step = 239 ifTrue: [
            recoveredBlock172Stack2 := self.
            recoveredBlock172PC := 240.
        ].
        recoveredBlock172Step = 240 ifTrue: [
            recoveredBlock172Stack2 := (recoveredBlock172Stack2) disarmBlock.
            recoveredBlock172PC := 242.
        ].
        recoveredBlock172Step = 242 ifTrue: [
            (recoveredBlock172Stack2 == nil) ifTrue: [recoveredBlock172PC := 257] ifFalse: [recoveredBlock172PC := 246].
        ].
        recoveredBlock172Step = 246 ifTrue: [
            recoveredBlock172PC := 247.
        ].
        recoveredBlock172Step = 247 ifTrue: [
            recoveredBlock172Stack1 := recoveredBlock172Arg1.
            recoveredBlock172PC := 248.
        ].
        recoveredBlock172Step = 248 ifTrue: [
            recoveredBlock172Stack2 := XmNdisarmCallback.
            recoveredBlock172PC := 250.
        ].
        recoveredBlock172Step = 250 ifTrue: [
            recoveredBlock172Stack3 := self.
            recoveredBlock172PC := 251.
        ].
        recoveredBlock172Step = 251 ifTrue: [
            recoveredBlock172Stack4 := 'disarmCallback:clientData:callData:'.
            recoveredBlock172PC := 253.
        ].
        recoveredBlock172Step = 253 ifTrue: [
            recoveredBlock172Stack5 := recoveredBlock172Local1.
            recoveredBlock172PC := 254.
        ].
        recoveredBlock172Step = 254 ifTrue: [
            recoveredBlock172Stack1 := (recoveredBlock172Stack1) addCallback: (recoveredBlock172Stack2) receiver: (recoveredBlock172Stack3) selector: (recoveredBlock172Stack4) clientData: (recoveredBlock172Stack5).
            recoveredBlock172PC := 257.
        ].
        recoveredBlock172Step = 257 ifTrue: [
            recoveredBlock172Result := recoveredBlock172Stack1.
            recoveredBlock172Done := true.
        ].
    ].
    recoveredBlock172Result
].
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            (recoveredStack1) doWithIndex: (recoveredStack2).
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack2 := XmNsimpleCallback.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack4 := 'simpleCallback:clientData:callData:'.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack1 := isSubMenu.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 292] ifFalse: [recoveredPC := 278].
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack2 := XmNmapCallback.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack4 := 'mapCallback:clientData:callData:'.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack5 := recoveredArg5.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack1 := hasAccelerators.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 312] ifFalse: [recoveredPC := 298].
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack2 := XmNunmapCallback.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack4 := 'unmapCallback:clientData:callData:'.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack5 := recoveredArg5.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

