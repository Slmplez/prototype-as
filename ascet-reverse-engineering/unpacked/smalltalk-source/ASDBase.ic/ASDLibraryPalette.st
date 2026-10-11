"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20000540; bytecode file offset 0x8ffcfc"
!ASDLibraryPalette methodsFor: 'recovered'!
getBDEController
    ^self
! !

"ASDBase.ic method 0x2003d418; bytecode file offset 0x93bf94"
!ASDLibraryPalette methodsFor: 'recovered'!
createWidgetHierarchy
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005a5fc; bytecode file offset 0x957a6c"
!ASDLibraryPalette methodsFor: 'recovered'!
exposePreview: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) updatePreview.
    ^self
! !

"ASDBase.ic method 0x2005abd8; bytecode file offset 0x957a6c"
!ASDLibraryPalette methodsFor: 'recovered'!
itemListSingleSelection: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) updatePreview.
    ^self
! !

"ASDBase.ic method 0x2007bf6c; bytecode file offset 0x97c330"
!ASDLibraryPalette methodsFor: 'recovered'!
itemIsModifiable
    ^false
! !

"ASDBase.ic method 0x2009c57c; bytecode file offset 0x998e50"
!ASDLibraryPalette methodsFor: 'recovered'!
removeDependency
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ASDItemLibrary.
    recoveredValue1 := (recoveredValue0) instance.
    (recoveredValue1) removeDependent: (self).
    ^self
! !

"ASDBase.ic method 0x200aea4c; bytecode file offset 0x9ab30c"
!ASDLibraryPalette methodsFor: 'recovered'!
destroyParent: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ASDItemLibrary.
    recoveredValue1 := (recoveredValue0) instance.
    (recoveredValue1) removeDependent: (self).
    ^self
! !

"ASDBase.ic method 0x200f8c90; bytecode file offset 0x9f55bc"
!ASDLibraryPalette methodsFor: 'recovered'!
widgetScrollingPane
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) widgetDictionary.
    recoveredValue1 := (self) paletteName.
    recoveredValue2 := (recoveredValue1) , ('ScrollingPane').
    recoveredValue3 := (recoveredValue2) asAtom.
    recoveredValue4 := (recoveredValue0) at: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200f8cb0; bytecode file offset 0x9f55bc"
!ASDLibraryPalette methodsFor: 'recovered'!
widgetItemList
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) widgetDictionary.
    recoveredValue1 := (self) paletteName.
    recoveredValue2 := (recoveredValue1) , ('ItemList').
    recoveredValue3 := (recoveredValue2) asAtom.
    recoveredValue4 := (recoveredValue0) at: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200f8cd0; bytecode file offset 0x9f55bc"
!ASDLibraryPalette methodsFor: 'recovered'!
widgetPreviewArea
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) widgetDictionary.
    recoveredValue1 := (self) paletteName.
    recoveredValue2 := (recoveredValue1) , ('PreviewArea').
    recoveredValue3 := (recoveredValue2) asAtom.
    recoveredValue4 := (recoveredValue0) at: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200f8cf0; bytecode file offset 0x9f55bc"
!ASDLibraryPalette methodsFor: 'recovered'!
widgetTypeComboBox
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) widgetDictionary.
    recoveredValue1 := (self) paletteName.
    recoveredValue2 := (recoveredValue1) , ('TypeComboBox').
    recoveredValue3 := (recoveredValue2) asAtom.
    recoveredValue4 := (recoveredValue0) at: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20125514; bytecode file offset 0xa21dd8"
!ASDLibraryPalette methodsFor: 'recovered'!
selectedElement
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetItemList.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItems.
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
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
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
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2013dce8; bytecode file offset 0xa3a5b0"
!ASDLibraryPalette methodsFor: 'recovered'!
menuEditElement
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedElement.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280cbc88Arg1 | 
    | block280cbc88Value0 block280cbc88Value1 block280cbc88Value2 |
    block280cbc88Value0 := MainController.
    block280cbc88Value1 := block280cbc88Arg1.
    block280cbc88Value2 := (block280cbc88Value0) editItem: (block280cbc88Value1).
    block280cbc88Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
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

"ASDBase.ic method 0x2016d4b8; bytecode file offset 0xa69d80"
!ASDLibraryPalette methodsFor: 'recovered'!
typeComboBoxValueChanged: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) itemsForType.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) userInterface.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDestroyed.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
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
            recoveredStack0 := (recoveredStack0) widgetItemList.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) items: (recoveredStack1).
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

"ASDBase.ic method 0x2019f6b0; bytecode file offset 0xa9bf9c"
!ASDLibraryPalette methodsFor: 'recovered'!
types
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ASDItemLibrary.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) getCategories.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := [:block280d203cArg1 :block280d203cArg2 | 
    | block280d203cValue0 block280d203cValue1 block280d203cValue2 block280d203cValue3 block280d203cValue4 |
    block280d203cValue0 := block280d203cArg1.
    block280d203cValue1 := (block280d203cValue0) label.
    block280d203cValue2 := block280d203cArg2.
    block280d203cValue3 := (block280d203cValue2) label.
    block280d203cValue4 := (block280d203cValue1) < (block280d203cValue3).
    block280d203cValue4
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
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201b0054; bytecode file offset 0xaac924"
!ASDLibraryPalette methodsFor: 'recovered'!
menuShowElement
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedElement.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280d3e0cArg1 | 
    | block280d3e0cValue0 block280d3e0cValue1 block280d3e0cValue2 block280d3e0cValue3 block280d3e0cValue4 block280d3e0cValue5 |
    block280d3e0cValue0 := MainController.
    block280d3e0cValue1 := (block280d3e0cValue0) userInterface.
    block280d3e0cValue2 := block280d3e0cArg1.
    (block280d3e0cValue1) makeVisibleItem: (block280d3e0cValue2).
    block280d3e0cValue3 := MainController.
    block280d3e0cValue4 := (block280d3e0cValue3) userInterface.
    block280d3e0cValue5 := (block280d3e0cValue4) bringToFront.
    block280d3e0cValue5
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201e1d64; bytecode file offset 0xade638"
!ASDLibraryPalette methodsFor: 'recovered'!
itemsForType
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ASDItemLibrary.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) widgetTypeComboBox.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) getString.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) getItemsForCategory: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := [:block280d63e0Arg1 :block280d63e0Arg2 | 
    | block280d63e0Value0 block280d63e0Value1 block280d63e0Value2 block280d63e0Value3 block280d63e0Value4 |
    block280d63e0Value0 := block280d63e0Arg1.
    block280d63e0Value1 := (block280d63e0Value0) label.
    block280d63e0Value2 := block280d63e0Arg2.
    block280d63e0Value3 := (block280d63e0Value2) label.
    block280d63e0Value4 := (block280d63e0Value1) < (block280d63e0Value3).
    block280d63e0Value4
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201e3410; bytecode file offset 0xadfcec"
!ASDLibraryPalette methodsFor: 'recovered'!
initializeAfterCreate
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) widgetPreviewArea.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := CgRGBColor.
    recoveredValue3 := (recoveredValue2) white.
    (recoveredValue1) backgroundColor: (recoveredValue3).
    (recoveredValue0) sensitive: (true).
    (self) updatePalette.
    (self) initDragAndDrop.
    recoveredValue4 := ASDItemLibrary.
    recoveredValue5 := (recoveredValue4) instance.
    (recoveredValue5) addDependent: (self).
    ^self
! !

"ASDBase.ic method 0x20223c08; bytecode file offset 0xb204d8"
!ASDLibraryPalette methodsFor: 'recovered'!
initDragAndDrop
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := EwSourceAdapter.
    recoveredValue1 := (self) widgetPreviewArea.
    recoveredValue2 := (recoveredValue0) on: (recoveredValue1).
    recoveredValue3 := XmNdragStartCallback.
    (recoveredValue2) addCallback: (recoveredValue3) receiver: (self) selector: ('dragStart:clientData:callData:') clientData: (nil).
    recoveredValue4 := EwSourceAdapter.
    recoveredValue5 := (self) widgetItemList.
    recoveredValue6 := (recoveredValue4) on: (recoveredValue5).
    recoveredValue7 := XmNdragStartCallback.
    (recoveredValue6) addCallback: (recoveredValue7) receiver: (self) selector: ('dragStart:clientData:callData:') clientData: (nil).
    ^self
! !

"ASDBase.ic method 0x2025ca60; bytecode file offset 0xb59328"
!ASDLibraryPalette methodsFor: 'recovered'!
menu: recoveredArg1 clientData: recoveredArg2 event: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDestroyed.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) button.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 3.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) createContextMenu.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) owner.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) menuRequestRB: (recoveredStack1) clientData: (recoveredStack2) event: (recoveredStack3).
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

"ASDBase.ic method 0x20296b00; bytecode file offset 0xb933dc"
!ASDLibraryPalette methodsFor: 'recovered'!
updatePalette
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) types.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetTypeComboBox.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) types.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) setString: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetItemList.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) itemsForType.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) items: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetItemList.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) items.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetItemList.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) selectPos: (recoveredStack1) notify: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202fedc8; bytecode file offset 0xbfb6a4"
!ASDLibraryPalette methodsFor: 'recovered'!
createContextMenu
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := EtasMenu.
    recoveredValue1 := (recoveredValue0) defaultMenuClass.
    recoveredValue2 := (recoveredValue1) new.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredValue3.
    (recoveredValue4) owner: (self).
    recoveredValue5 := recoveredValue3.
    recoveredValue6 := [
    | recoveredBlock19Value0 recoveredBlock19Value1 |
    recoveredBlock19Value0 := (self) selectedElement.
    recoveredBlock19Value1 := (recoveredBlock19Value0) notNil.
    recoveredBlock19Value1
].
    (recoveredValue5) add: ('menuShowElement') label: ('~Show Component') enable: (recoveredValue6).
    recoveredValue7 := recoveredValue3.
    recoveredValue8 := [
    | recoveredBlock37Value0 recoveredBlock37Value1 |
    recoveredBlock37Value0 := (self) selectedElement.
    recoveredBlock37Value1 := (recoveredBlock37Value0) notNil.
    recoveredBlock37Value1
].
    (recoveredValue7) add: ('menuEditElement') label: ('~Edit Component') enable: (recoveredValue8).
    recoveredValue9 := recoveredLocal1.
    ^recoveredValue9
! !

"ASDBase.ic method 0x2037ab04; bytecode file offset 0xc773f0"
!ASDLibraryPalette methodsFor: 'recovered'!
update: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := ASDItemLibrary.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 69].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDestroyed.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) removeDependent: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetTypeComboBox.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) getString.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetTypeComboBox.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := (recoveredStack2) types.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) items: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetTypeComboBox.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) setString: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetItemList.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectedItems.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetItemList.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := (recoveredStack2) itemsForType.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack1) items: (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetItemList.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack1) selectedItems: (recoveredStack2).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack1) updatePreview.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20394178; bytecode file offset 0xc90a68"
!ASDLibraryPalette methodsFor: 'recovered'!
dragStart: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) sourceItems.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) doit: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetItemList.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItems.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 35].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) doit: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) sourceModel.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := XmCOPY.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) vote: (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := Array.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack5 := MainController.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack5 := (recoveredStack5) selectedLibrary.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack6 := MainController.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack3 := (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5) with: (recoveredStack6).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack0) dragStart: (recoveredStack1) callData: (recoveredStack2) sourceItems: (recoveredStack3) sourceModel: (recoveredStack4).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203fc508; bytecode file offset 0xcf8e44"
!ASDLibraryPalette methodsFor: 'recovered'!
dragStart: recoveredArg1 callData: recoveredArg2 sourceItems: recoveredArg3 sourceModel: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 |
    recoveredLocal6 := -10.
    recoveredLocal5 := 0.
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := (recoveredValue0) at: (1).
    recoveredValue2 := (recoveredValue1) first.
    recoveredValue3 := (recoveredValue2) label.
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := (recoveredValue4) at: (1).
    recoveredValue6 := (recoveredValue5) first.
    recoveredValue7 := (recoveredValue6) iconName.
    recoveredValue8 := (self) returnIcon16WithName: (recoveredValue7).
    recoveredLocal1 := recoveredValue8.
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := (recoveredValue9) fontStruct.
    recoveredValue11 := (recoveredValue10) height.
    recoveredLocal4 := recoveredValue11.
    recoveredValue12 := recoveredLocal6.
    recoveredValue13 := (recoveredValue12) + (10).
    recoveredValue14 := recoveredLocal5.
    recoveredValue15 := recoveredLocal4.
    recoveredValue16 := (recoveredValue15) * (2).
    recoveredValue17 := (recoveredValue14) - (recoveredValue16).
    recoveredValue18 := (recoveredValue13) @ (recoveredValue17).
    recoveredLocal3 := recoveredValue18.
    recoveredValue19 := recoveredArg2.
    recoveredValue20 := recoveredValue19.
    recoveredValue21 := recoveredArg3.
    (recoveredValue20) sourceItems: (recoveredValue21).
    recoveredValue22 := recoveredValue19.
    recoveredValue23 := recoveredArg4.
    (recoveredValue22) sourceModel: (recoveredValue23).
    recoveredValue24 := recoveredValue19.
    recoveredValue25 := Array.
    recoveredValue26 := recoveredLocal1.
    recoveredValue27 := recoveredLocal2.
    recoveredValue28 := (recoveredValue25) with: (recoveredValue26) with: (recoveredValue27).
    (recoveredValue24) images: (recoveredValue28).
    recoveredValue29 := Array.
    recoveredValue30 := recoveredLocal3.
    recoveredValue31 := recoveredLocal3.
    recoveredValue32 := recoveredLocal1.
    recoveredValue33 := (recoveredValue32) extent.
    recoveredValue34 := (recoveredValue33) x.
    recoveredValue35 := recoveredLocal5.
    recoveredValue36 := (recoveredValue34) @ (recoveredValue35).
    recoveredValue37 := (recoveredValue31) + (recoveredValue36).
    recoveredValue38 := (recoveredValue29) with: (recoveredValue30) with: (recoveredValue37).
    (recoveredValue19) offsets: (recoveredValue38).
    ^self
! !

"ASDBase.ic method 0x20539f00; bytecode file offset 0xe36828"
!ASDLibraryPalette methodsFor: 'recovered'!
updatePreview
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetPreviewArea.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) gc.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := [
    | recoveredBlock12Stack0 recoveredBlock12Stack1 recoveredBlock12Stack2 recoveredBlock12Stack3 recoveredBlock12PC recoveredBlock12Step recoveredBlock12Done recoveredBlock12Result |
    recoveredBlock12Stack0 := self.
    recoveredBlock12PC := 18.
    recoveredBlock12Done := false.
    [recoveredBlock12Done not] whileTrue: [
        recoveredBlock12Step := recoveredBlock12PC.
        recoveredBlock12Step = 18 ifTrue: [
            recoveredBlock12Stack1 := drawProcess.
            recoveredBlock12PC := 20.
        ].
        recoveredBlock12Step = 20 ifTrue: [
            recoveredBlock12Stack2 := [:block2810dd1cArg1 | 
    | block2810dd1cValue0 block2810dd1cValue1 |
    block2810dd1cValue0 := block2810dd1cArg1.
    block2810dd1cValue1 := (block2810dd1cValue0) terminate.
    block2810dd1cValue1
].
            recoveredBlock12PC := 22.
        ].
        recoveredBlock12Step = 22 ifTrue: [
            recoveredBlock12PC := 29.
        ].
        recoveredBlock12Step = 29 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) ifNotNil: (recoveredBlock12Stack2).
            recoveredBlock12PC := 31.
        ].
        recoveredBlock12Step = 31 ifTrue: [
            recoveredBlock12Result := recoveredBlock12Stack1.
            recoveredBlock12Done := true.
        ].
    ].
    recoveredBlock12Result
].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) critical.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetItemList.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItems.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) someElement.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) graphicObject.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetPreviewArea.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) drawBackground.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := [
    | recoveredBlock64Value0 recoveredBlock64Value1 recoveredBlock64Value2 recoveredBlock64Value3 |
    recoveredBlock64Value0 := recoveredLocal4.
    recoveredBlock64Value1 := (recoveredBlock64Value0) someElement.
    recoveredLocal4 := recoveredBlock64Value1.
    recoveredBlock64Value2 := [
    | recoveredBlock64Block78Value0 recoveredBlock64Block78Value1 recoveredBlock64Block78Value2 |
    recoveredBlock64Block78Value0 := (self) widgetPreviewArea.
    recoveredBlock64Block78Value1 := [:recoveredBlock64Block78Block85Arg1 | 
    | recoveredBlock64Block78Block85Stack0 recoveredBlock64Block78Block85Stack1 recoveredBlock64Block78Block85Stack2 recoveredBlock64Block78Block85Stack3 recoveredBlock64Block78Block85Stack4 recoveredBlock64Block78Block85PC recoveredBlock64Block78Block85Step recoveredBlock64Block78Block85Done recoveredBlock64Block78Block85Result |
    recoveredBlock64Block78Block85Stack0 := nil.
    recoveredBlock64Block78Block85PC := 92.
    recoveredBlock64Block78Block85Done := false.
    [recoveredBlock64Block78Block85Done not] whileTrue: [
        recoveredBlock64Block78Block85Step := recoveredBlock64Block78Block85PC.
        recoveredBlock64Block78Block85Step = 92 ifTrue: [
            recoveredBlock64Block78Block85Stack1 := nil.
            recoveredBlock64Block78Block85PC := 93.
        ].
        recoveredBlock64Block78Block85Step = 93 ifTrue: [
            recoveredBlock64Block78Block85Stack2 := recoveredBlock64Block78Block85Arg1.
            recoveredBlock64Block78Block85PC := 94.
        ].
        recoveredBlock64Block78Block85Step = 94 ifTrue: [
            recoveredBlock64Block78Block85Stack2 := (recoveredBlock64Block78Block85Stack2) isDestroyed.
            recoveredBlock64Block78Block85PC := 96.
        ].
        recoveredBlock64Block78Block85Step = 96 ifTrue: [
            (recoveredBlock64Block78Block85Stack2) ifTrue: [recoveredBlock64Block78Block85PC := 191] ifFalse: [recoveredBlock64Block78Block85PC := 100].
        ].
        recoveredBlock64Block78Block85Step = 100 ifTrue: [
            recoveredBlock64Block78Block85PC := 101.
        ].
        recoveredBlock64Block78Block85Step = 101 ifTrue: [
            recoveredBlock64Block78Block85Stack1 := recoveredBlock64Block78Block85Arg1.
            recoveredBlock64Block78Block85PC := 102.
        ].
        recoveredBlock64Block78Block85Step = 102 ifTrue: [
            recoveredBlock64Block78Block85Stack1 := (recoveredBlock64Block78Block85Stack1) boundingBox.
            recoveredBlock64Block78Block85PC := 104.
        ].
        recoveredBlock64Block78Block85Step = 104 ifTrue: [
            recoveredBlock64Block78Block85Stack1 := (recoveredBlock64Block78Block85Stack1) extent.
            recoveredBlock64Block78Block85PC := 106.
        ].
        recoveredBlock64Block78Block85Step = 106 ifTrue: [
            recoveredLocal2 := recoveredBlock64Block78Block85Stack1.
            recoveredBlock64Block78Block85PC := 109.
        ].
        recoveredBlock64Block78Block85Step = 109 ifTrue: [
            recoveredBlock64Block78Block85Stack1 := recoveredLocal4.
            recoveredBlock64Block78Block85PC := 112.
        ].
        recoveredBlock64Block78Block85Step = 112 ifTrue: [
            recoveredBlock64Block78Block85Stack1 := (recoveredBlock64Block78Block85Stack1) graphicObject.
            recoveredBlock64Block78Block85PC := 114.
        ].
        recoveredBlock64Block78Block85Step = 114 ifTrue: [
            recoveredBlock64Block78Block85Stack1 := (recoveredBlock64Block78Block85Stack1) frameGO.
            recoveredBlock64Block78Block85PC := 116.
        ].
        recoveredBlock64Block78Block85Step = 116 ifTrue: [
            recoveredBlock64Block78Block85Stack1 := (recoveredBlock64Block78Block85Stack1) frame.
            recoveredBlock64Block78Block85PC := 118.
        ].
        recoveredBlock64Block78Block85Step = 118 ifTrue: [
            recoveredBlock64Block78Block85Stack2 := 10.
            recoveredBlock64Block78Block85PC := 120.
        ].
        recoveredBlock64Block78Block85Step = 120 ifTrue: [
            recoveredBlock64Block78Block85Stack1 := (recoveredBlock64Block78Block85Stack1) expandBy: (recoveredBlock64Block78Block85Stack2).
            recoveredBlock64Block78Block85PC := 122.
        ].
        recoveredBlock64Block78Block85Step = 122 ifTrue: [
            recoveredBlock64Block78Block85Stack1 := (recoveredBlock64Block78Block85Stack1) extent.
            recoveredBlock64Block78Block85PC := 124.
        ].
        recoveredBlock64Block78Block85Step = 124 ifTrue: [
            recoveredLocal3 := recoveredBlock64Block78Block85Stack1.
            recoveredBlock64Block78Block85PC := 127.
        ].
        recoveredBlock64Block78Block85Step = 127 ifTrue: [
            recoveredBlock64Block78Block85Stack1 := recoveredLocal2.
            recoveredBlock64Block78Block85PC := 130.
        ].
        recoveredBlock64Block78Block85Step = 130 ifTrue: [
            recoveredBlock64Block78Block85Stack1 := (recoveredBlock64Block78Block85Stack1) x.
            recoveredBlock64Block78Block85PC := 132.
        ].
        recoveredBlock64Block78Block85Step = 132 ifTrue: [
            recoveredBlock64Block78Block85Stack2 := recoveredLocal3.
            recoveredBlock64Block78Block85PC := 135.
        ].
        recoveredBlock64Block78Block85Step = 135 ifTrue: [
            recoveredBlock64Block78Block85Stack2 := (recoveredBlock64Block78Block85Stack2) x.
            recoveredBlock64Block78Block85PC := 137.
        ].
        recoveredBlock64Block78Block85Step = 137 ifTrue: [
            recoveredBlock64Block78Block85Stack1 := (recoveredBlock64Block78Block85Stack1) / (recoveredBlock64Block78Block85Stack2).
            recoveredBlock64Block78Block85PC := 139.
        ].
        recoveredBlock64Block78Block85Step = 139 ifTrue: [
            recoveredBlock64Block78Block85Stack2 := recoveredLocal2.
            recoveredBlock64Block78Block85PC := 142.
        ].
        recoveredBlock64Block78Block85Step = 142 ifTrue: [
            recoveredBlock64Block78Block85Stack2 := (recoveredBlock64Block78Block85Stack2) y.
            recoveredBlock64Block78Block85PC := 144.
        ].
        recoveredBlock64Block78Block85Step = 144 ifTrue: [
            recoveredBlock64Block78Block85Stack3 := recoveredLocal3.
            recoveredBlock64Block78Block85PC := 147.
        ].
        recoveredBlock64Block78Block85Step = 147 ifTrue: [
            recoveredBlock64Block78Block85Stack3 := (recoveredBlock64Block78Block85Stack3) y.
            recoveredBlock64Block78Block85PC := 149.
        ].
        recoveredBlock64Block78Block85Step = 149 ifTrue: [
            recoveredBlock64Block78Block85Stack2 := (recoveredBlock64Block78Block85Stack2) / (recoveredBlock64Block78Block85Stack3).
            recoveredBlock64Block78Block85PC := 151.
        ].
        recoveredBlock64Block78Block85Step = 151 ifTrue: [
            recoveredBlock64Block78Block85Stack1 := (recoveredBlock64Block78Block85Stack1) min: (recoveredBlock64Block78Block85Stack2).
            recoveredBlock64Block78Block85PC := 153.
        ].
        recoveredBlock64Block78Block85Step = 153 ifTrue: [
            recoveredBlock64Block78Block85Stack2 := 100.
            recoveredBlock64Block78Block85PC := 156.
        ].
        recoveredBlock64Block78Block85Step = 156 ifTrue: [
            recoveredBlock64Block78Block85Stack1 := (recoveredBlock64Block78Block85Stack1) * (recoveredBlock64Block78Block85Stack2).
            recoveredBlock64Block78Block85PC := 157.
        ].
        recoveredBlock64Block78Block85Step = 157 ifTrue: [
            recoveredBlock64Block78Block85Stack2 := 100.
            recoveredBlock64Block78Block85PC := 160.
        ].
        recoveredBlock64Block78Block85Step = 160 ifTrue: [
            recoveredBlock64Block78Block85Stack1 := (recoveredBlock64Block78Block85Stack1) min: (recoveredBlock64Block78Block85Stack2).
            recoveredBlock64Block78Block85PC := 162.
        ].
        recoveredBlock64Block78Block85Step = 162 ifTrue: [
            recoveredBlock64Block78Block85Stack1 := (recoveredBlock64Block78Block85Stack1) asInteger.
            recoveredBlock64Block78Block85PC := 164.
        ].
        recoveredBlock64Block78Block85Step = 164 ifTrue: [
            recoveredLocal1 := recoveredBlock64Block78Block85Stack1.
            recoveredBlock64Block78Block85PC := 167.
        ].
        recoveredBlock64Block78Block85Step = 167 ifTrue: [
            recoveredBlock64Block78Block85Stack1 := recoveredBlock64Block78Block85Arg1.
            recoveredBlock64Block78Block85PC := 168.
        ].
        recoveredBlock64Block78Block85Step = 168 ifTrue: [
            recoveredBlock64Block78Block85Stack1 := (recoveredBlock64Block78Block85Stack1) zoomingFactor.
            recoveredBlock64Block78Block85PC := 170.
        ].
        recoveredBlock64Block78Block85Step = 170 ifTrue: [
            recoveredBlock64Block78Block85Stack2 := recoveredLocal1.
            recoveredBlock64Block78Block85PC := 173.
        ].
        recoveredBlock64Block78Block85Step = 173 ifTrue: [
            recoveredBlock64Block78Block85Stack1 := (recoveredBlock64Block78Block85Stack1) ~= (recoveredBlock64Block78Block85Stack2).
            recoveredBlock64Block78Block85PC := 174.
        ].
        recoveredBlock64Block78Block85Step = 174 ifTrue: [
            (recoveredBlock64Block78Block85Stack1) ifTrue: [recoveredBlock64Block78Block85PC := 178] ifFalse: [recoveredBlock64Block78Block85PC := 185].
        ].
        recoveredBlock64Block78Block85Step = 178 ifTrue: [
            recoveredBlock64Block78Block85Stack1 := recoveredBlock64Block78Block85Arg1.
            recoveredBlock64Block78Block85PC := 179.
        ].
        recoveredBlock64Block78Block85Step = 179 ifTrue: [
            recoveredBlock64Block78Block85Stack2 := recoveredLocal1.
            recoveredBlock64Block78Block85PC := 182.
        ].
        recoveredBlock64Block78Block85Step = 182 ifTrue: [
            recoveredBlock64Block78Block85Stack3 := true.
            recoveredBlock64Block78Block85PC := 183.
        ].
        recoveredBlock64Block78Block85Step = 183 ifTrue: [
            (recoveredBlock64Block78Block85Stack1) zoom: (recoveredBlock64Block78Block85Stack2) display: (recoveredBlock64Block78Block85Stack3).
            recoveredBlock64Block78Block85PC := 185.
        ].
        recoveredBlock64Block78Block85Step = 185 ifTrue: [
            recoveredBlock64Block78Block85Stack1 := recoveredLocal4.
            recoveredBlock64Block78Block85PC := 188.
        ].
        recoveredBlock64Block78Block85Step = 188 ifTrue: [
            recoveredBlock64Block78Block85Stack2 := recoveredBlock64Block78Block85Arg1.
            recoveredBlock64Block78Block85PC := 189.
        ].
        recoveredBlock64Block78Block85Step = 189 ifTrue: [
            recoveredBlock64Block78Block85Stack1 := (recoveredBlock64Block78Block85Stack1) drawGraphicsWithoutNameOn: (recoveredBlock64Block78Block85Stack2).
            recoveredBlock64Block78Block85PC := 191.
        ].
        recoveredBlock64Block78Block85Step = 191 ifTrue: [
            recoveredBlock64Block78Block85Result := recoveredBlock64Block78Block85Stack1.
            recoveredBlock64Block78Block85Done := true.
        ].
    ].
    recoveredBlock64Block78Block85Result
].
    recoveredBlock64Block78Value2 := (recoveredBlock64Block78Value0) ifNotNil: (recoveredBlock64Block78Value1).
    recoveredBlock64Block78Value2
].
    recoveredBlock64Value3 := (recoveredBlock64Value2) critical.
    recoveredBlock64Value3
].
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack1 := Processor.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack1 := (recoveredStack1) userBackgroundPriority.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack0 := (recoveredStack0) forkAt: (recoveredStack1).
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            drawProcess := recoveredStack0.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205fc7e4; bytecode file offset 0xef9174"
!ASDLibraryPalette methodsFor: 'recovered'!
createPaletteContentIn: recoveredArg1
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
            recoveredStack2 := 'previewArea'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := [:block2811c278Arg1 | 
    | block2811c278Value0 block2811c278Value1 block2811c278Value2 block2811c278Value3 |
    block2811c278Value0 := block2811c278Arg1.
    block2811c278Value1 := block2811c278Value0.
    (block2811c278Value1) borderWidth: (1).
    block2811c278Value2 := block2811c278Value0.
    (block2811c278Value2) height: (110).
    block2811c278Value3 := (block2811c278Value0) width: (110).
    block2811c278Value3
].
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) createRBDrawingArea: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDictionary.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) paletteName.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := 'PreviewArea'.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) asAtom.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := 'typeComboBox'.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := [:recoveredBlock61Arg1 | 
    | recoveredBlock61Value0 recoveredBlock61Value1 recoveredBlock61Value2 recoveredBlock61Value3 |
    recoveredBlock61Value0 := recoveredBlock61Arg1.
    recoveredBlock61Value1 := recoveredBlock61Value0.
    recoveredBlock61Value2 := (self) types.
    (recoveredBlock61Value1) items: (recoveredBlock61Value2).
    recoveredBlock61Value3 := (recoveredBlock61Value0) height: (25).
    recoveredBlock61Value3
].
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) createEtasComboBox: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDictionary.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := (recoveredStack1) paletteName.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := 'TypeComboBox'.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := (recoveredStack1) asAtom.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := 'itemList'.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := [:recoveredBlock108Arg1 | 
    | recoveredBlock108Stack0 recoveredBlock108Stack1 recoveredBlock108Stack2 recoveredBlock108Stack3 recoveredBlock108Stack4 recoveredBlock108PC recoveredBlock108Step recoveredBlock108Done recoveredBlock108Result |
    recoveredBlock108Stack0 := self.
    recoveredBlock108PC := 114.
    recoveredBlock108Done := false.
    [recoveredBlock108Done not] whileTrue: [
        recoveredBlock108Step := recoveredBlock108PC.
        recoveredBlock108Step = 114 ifTrue: [
            recoveredBlock108Stack1 := recoveredBlock108Arg1.
            recoveredBlock108PC := 115.
        ].
        recoveredBlock108Step = 115 ifTrue: [
            recoveredBlock108Stack2 := recoveredBlock108Stack1.
            recoveredBlock108PC := 116.
        ].
        recoveredBlock108Step = 116 ifTrue: [
            recoveredBlock108Stack3 := self.
            recoveredBlock108PC := 117.
        ].
        recoveredBlock108Step = 117 ifTrue: [
            recoveredBlock108Stack3 := (recoveredBlock108Stack3) itemsForType.
            recoveredBlock108PC := 119.
        ].
        recoveredBlock108Step = 119 ifTrue: [
            (recoveredBlock108Stack2) items: (recoveredBlock108Stack3).
            recoveredBlock108Stack2 := recoveredBlock108Stack1.
            recoveredBlock108PC := 122.
        ].
        recoveredBlock108Step = 122 ifTrue: [
            recoveredBlock108Stack3 := XmSINGLESELECT.
            recoveredBlock108PC := 124.
        ].
        recoveredBlock108Step = 124 ifTrue: [
            (recoveredBlock108Stack2) selectionPolicy: (recoveredBlock108Stack3).
            recoveredBlock108PC := 126.
        ].
        recoveredBlock108Step = 126 ifTrue: [
            recoveredBlock108Stack2 := [:block2811c29cArg1 | 
    | block2811c29cValue0 block2811c29cValue1 |
    block2811c29cValue0 := block2811c29cArg1.
    block2811c29cValue1 := (block2811c29cValue0) label.
    block2811c29cValue1
].
            recoveredBlock108PC := 128.
        ].
        recoveredBlock108Step = 128 ifTrue: [
            recoveredBlock108PC := 136.
        ].
        recoveredBlock108Step = 136 ifTrue: [
            recoveredBlock108Stack1 := (recoveredBlock108Stack1) printBlock: (recoveredBlock108Stack2).
            recoveredBlock108PC := 138.
        ].
        recoveredBlock108Step = 138 ifTrue: [
            recoveredBlock108Result := recoveredBlock108Stack1.
            recoveredBlock108Done := true.
        ].
    ].
    recoveredBlock108Result
].
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack0 := (recoveredStack0) createScrolledObjectList: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDictionary.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := (recoveredStack1) paletteName.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack2 := 'ScrolledItemList'.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := (recoveredStack1) asAtom.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDictionary.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack1 := (recoveredStack1) paletteName.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack2 := 'ItemList'.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack1 := (recoveredStack1) asAtom.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack1 := [:recoveredBlock191Arg1 | 
    | recoveredBlock191Value0 recoveredBlock191Value1 recoveredBlock191Value2 recoveredBlock191Value3 recoveredBlock191Value4 recoveredBlock191Value5 recoveredBlock191Value6 recoveredBlock191Value7 recoveredBlock191Value8 recoveredBlock191Value9 recoveredBlock191Value10 recoveredBlock191Value11 recoveredBlock191Value12 recoveredBlock191Value13 recoveredBlock191Value14 |
    recoveredBlock191Value0 := recoveredBlock191Arg1.
    recoveredBlock191Value1 := recoveredBlock191Value0.
    recoveredBlock191Value2 := XmATTACHWIDGET.
    (recoveredBlock191Value1) topAttachment: (recoveredBlock191Value2).
    recoveredBlock191Value3 := recoveredBlock191Value0.
    recoveredBlock191Value4 := (self) widgetDictionary.
    recoveredBlock191Value5 := (self) paletteName.
    recoveredBlock191Value6 := (recoveredBlock191Value5) , ('Label').
    recoveredBlock191Value7 := (recoveredBlock191Value6) asAtom.
    recoveredBlock191Value8 := (recoveredBlock191Value4) at: (recoveredBlock191Value7).
    (recoveredBlock191Value3) topWidget: (recoveredBlock191Value8).
    recoveredBlock191Value9 := recoveredBlock191Value0.
    recoveredBlock191Value10 := XmATTACHFORM.
    (recoveredBlock191Value9) bottomAttachment: (recoveredBlock191Value10).
    recoveredBlock191Value11 := recoveredBlock191Value0.
    recoveredBlock191Value12 := XmATTACHFORM.
    (recoveredBlock191Value11) leftAttachment: (recoveredBlock191Value12).
    recoveredBlock191Value13 := XmATTACHFORM.
    recoveredBlock191Value14 := (recoveredBlock191Value0) rightAttachment: (recoveredBlock191Value13).
    recoveredBlock191Value14
].
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack1 := [:block2811c2c0Arg1 | 
    | block2811c2c0Value0 block2811c2c0Value1 block2811c2c0Value2 block2811c2c0Value3 block2811c2c0Value4 block2811c2c0Value5 block2811c2c0Value6 block2811c2c0Value7 block2811c2c0Value8 |
    block2811c2c0Value0 := block2811c2c0Arg1.
    block2811c2c0Value1 := block2811c2c0Value0.
    block2811c2c0Value2 := XmATTACHFORM.
    (block2811c2c0Value1) leftAttachment: (block2811c2c0Value2).
    block2811c2c0Value3 := block2811c2c0Value0.
    block2811c2c0Value4 := XmATTACHFORM.
    (block2811c2c0Value3) rightAttachment: (block2811c2c0Value4).
    block2811c2c0Value5 := block2811c2c0Value0.
    block2811c2c0Value6 := XmATTACHNONE.
    (block2811c2c0Value5) bottomAttachment: (block2811c2c0Value6).
    block2811c2c0Value7 := XmATTACHFORM.
    block2811c2c0Value8 := (block2811c2c0Value0) topAttachment: (block2811c2c0Value7).
    block2811c2c0Value8
].
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack1 := [:recoveredBlock272Arg1 | 
    | recoveredBlock272Value0 recoveredBlock272Value1 recoveredBlock272Value2 recoveredBlock272Value3 recoveredBlock272Value4 recoveredBlock272Value5 recoveredBlock272Value6 recoveredBlock272Value7 recoveredBlock272Value8 recoveredBlock272Value9 recoveredBlock272Value10 recoveredBlock272Value11 |
    recoveredBlock272Value0 := recoveredBlock272Arg1.
    recoveredBlock272Value1 := recoveredBlock272Value0.
    recoveredBlock272Value2 := XmATTACHWIDGET.
    (recoveredBlock272Value1) topAttachment: (recoveredBlock272Value2).
    recoveredBlock272Value3 := recoveredBlock272Value0.
    recoveredBlock272Value4 := recoveredLocal5.
    (recoveredBlock272Value3) topWidget: (recoveredBlock272Value4).
    recoveredBlock272Value5 := recoveredBlock272Value0.
    (recoveredBlock272Value5) topOffset: (2).
    recoveredBlock272Value6 := recoveredBlock272Value0.
    recoveredBlock272Value7 := XmATTACHFORM.
    (recoveredBlock272Value6) leftAttachment: (recoveredBlock272Value7).
    recoveredBlock272Value8 := recoveredBlock272Value0.
    (recoveredBlock272Value8) leftOffset: (0).
    recoveredBlock272Value9 := recoveredBlock272Value0.
    recoveredBlock272Value10 := XmATTACHFORM.
    (recoveredBlock272Value9) rightAttachment: (recoveredBlock272Value10).
    recoveredBlock272Value11 := (recoveredBlock272Value0) rightOffset: (0).
    recoveredBlock272Value11
].
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack1 := [:recoveredBlock320Arg1 | 
    | recoveredBlock320Value0 recoveredBlock320Value1 recoveredBlock320Value2 recoveredBlock320Value3 recoveredBlock320Value4 recoveredBlock320Value5 recoveredBlock320Value6 recoveredBlock320Value7 recoveredBlock320Value8 recoveredBlock320Value9 recoveredBlock320Value10 recoveredBlock320Value11 recoveredBlock320Value12 recoveredBlock320Value13 |
    recoveredBlock320Value0 := recoveredBlock320Arg1.
    recoveredBlock320Value1 := recoveredBlock320Value0.
    recoveredBlock320Value2 := XmATTACHWIDGET.
    (recoveredBlock320Value1) topAttachment: (recoveredBlock320Value2).
    recoveredBlock320Value3 := recoveredBlock320Value0.
    recoveredBlock320Value4 := recoveredLocal3.
    (recoveredBlock320Value3) topWidget: (recoveredBlock320Value4).
    recoveredBlock320Value5 := recoveredBlock320Value0.
    (recoveredBlock320Value5) topOffset: (2).
    recoveredBlock320Value6 := recoveredBlock320Value0.
    recoveredBlock320Value7 := XmATTACHFORM.
    (recoveredBlock320Value6) bottomAttachment: (recoveredBlock320Value7).
    recoveredBlock320Value8 := recoveredBlock320Value0.
    recoveredBlock320Value9 := XmATTACHFORM.
    (recoveredBlock320Value8) leftAttachment: (recoveredBlock320Value9).
    recoveredBlock320Value10 := recoveredBlock320Value0.
    (recoveredBlock320Value10) leftOffset: (0).
    recoveredBlock320Value11 := recoveredBlock320Value0.
    recoveredBlock320Value12 := XmATTACHFORM.
    (recoveredBlock320Value11) rightAttachment: (recoveredBlock320Value12).
    recoveredBlock320Value13 := (recoveredBlock320Value0) rightOffset: (0).
    recoveredBlock320Value13
].
            recoveredPC := 368.
        ].
        recoveredStep = 368 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            recoveredStack1 := XmNsingleSelectionCallback.
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 376.
        ].
        recoveredStep = 376 ifTrue: [
            recoveredStack3 := 'typeComboBoxValueChanged:clientData:callData:'.
            recoveredPC := 378.
        ].
        recoveredStep = 378 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 379.
        ].
        recoveredStep = 379 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 382.
        ].
        recoveredStep = 382 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 385.
        ].
        recoveredStep = 385 ifTrue: [
            recoveredStack1 := XmNsingleSelectionCallback.
            recoveredPC := 387.
        ].
        recoveredStep = 387 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 388.
        ].
        recoveredStep = 388 ifTrue: [
            recoveredStack3 := 'itemListSingleSelection:clientData:callData:'.
            recoveredPC := 390.
        ].
        recoveredStep = 390 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 391.
        ].
        recoveredStep = 391 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 394.
        ].
        recoveredStep = 394 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 397.
        ].
        recoveredStep = 397 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 398.
        ].
        recoveredStep = 398 ifTrue: [
            recoveredStack2 := XmNexposeCallback.
            recoveredPC := 400.
        ].
        recoveredStep = 400 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 401.
        ].
        recoveredStep = 401 ifTrue: [
            recoveredStack4 := 'exposePreview:clientData:callData:'.
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 404.
        ].
        recoveredStep = 404 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 407.
        ].
        recoveredStep = 407 ifTrue: [
            recoveredStack1 := ButtonMenuMask.
            recoveredPC := 409.
        ].
        recoveredStep = 409 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 410.
        ].
        recoveredStep = 410 ifTrue: [
            recoveredStack3 := 'menu:clientData:event:'.
            recoveredPC := 412.
        ].
        recoveredStep = 412 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 413.
        ].
        recoveredStep = 413 ifTrue: [
            (recoveredStack0) addEventHandler: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 416.
        ].
        recoveredStep = 416 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 419.
        ].
        recoveredStep = 419 ifTrue: [
            recoveredStack1 := XmNdestroyCallback.
            recoveredPC := 421.
        ].
        recoveredStep = 421 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 424.
        ].
        recoveredStep = 424 ifTrue: [
            recoveredStack3 := 'destroyParent:clientData:callData:'.
            recoveredPC := 426.
        ].
        recoveredStep = 426 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 427.
        ].
        recoveredStep = 427 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 430.
        ].
        recoveredStep = 430 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 433.
        ].
        recoveredStep = 433 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

