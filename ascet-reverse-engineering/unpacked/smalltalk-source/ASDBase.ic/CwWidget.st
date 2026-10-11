"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20000ee0; bytecode file offset 0x8ffcfc"
!CwWidget methodsFor: 'recovered'!
getWidget
    ^self
! !

"ASDBase.ic method 0x200010e0; bytecode file offset 0x8ffcfc"
!CwWidget methodsFor: 'recovered'!
hookKeyDown
    ^self
! !

"ASDBase.ic method 0x20001548; bytecode file offset 0x8ffcfc"
!CwWidget methodsFor: 'recovered'!
scrolledWidget
    ^self
! !

"ASDBase.ic method 0x20001cd0; bytecode file offset 0x8ffcfc"
!CwWidget methodsFor: 'recovered'!
realWidget
    ^self
! !

"ASDBase.ic method 0x20001cf0; bytecode file offset 0x8ffcfc"
!CwWidget methodsFor: 'recovered'!
getPopupMenuOwner
    ^self
! !

"ASDBase.ic method 0x20002e78; bytecode file offset 0x8ffcfc"
!CwWidget methodsFor: 'recovered'!
abtSetTabbedInputFocus
    ^self
! !

"ASDBase.ic method 0x200037a0; bytecode file offset 0x90206c"
!CwWidget methodsFor: 'recovered'!
printBlock: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20005028; bytecode file offset 0x90206c"
!CwWidget methodsFor: 'recovered'!
characterMethod: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20005430; bytecode file offset 0x90206c"
!CwWidget methodsFor: 'recovered'!
largeText: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x2000bcfc; bytecode file offset 0x908be4"
!CwWidget methodsFor: 'recovered'!
focusProxy
    | recoveredValue0 |
    recoveredValue0 := (self) basicWidget.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000d0c4; bytecode file offset 0x909ab8"
!CwWidget methodsFor: 'recovered'!
getPopupMenuFor: recoveredArg1
    ^nil
! !

"ASDBase.ic method 0x20012eac; bytecode file offset 0x912098"
!CwWidget methodsFor: 'recovered'!
rowColumnClass
    | recoveredValue0 |
    recoveredValue0 := EtasRowColumn.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20013e60; bytecode file offset 0x912098"
!CwWidget methodsFor: 'recovered'!
toggleButtonClass
    | recoveredValue0 |
    recoveredValue0 := EtasMenuToggleButton.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001d0f0; bytecode file offset 0x92209c"
!CwWidget methodsFor: 'recovered'!
children
    ^#()
! !

"ASDBase.ic method 0x20029f64; bytecode file offset 0x934580"
!CwWidget methodsFor: 'recovered'!
isMenuItem
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) primaryWidget.
    recoveredValue1 := (recoveredValue0) isMenuItem.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002a5c4; bytecode file offset 0x934580"
!CwWidget methodsFor: 'recovered'!
allRealChildren
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) allRealChildrenPrim.
    recoveredValue1 := (recoveredValue0) abrAsUniqueCollection.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002c2e4; bytecode file offset 0x934580"
!CwWidget methodsFor: 'recovered'!
originRoot
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) primaryWidget.
    recoveredValue1 := (recoveredValue0) originRoot.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002d684; bytecode file offset 0x934580"
!CwWidget methodsFor: 'recovered'!
wbCursorPosition
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) primaryWidget.
    recoveredValue1 := (recoveredValue0) wbCursorPosition.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002fbe4; bytecode file offset 0x934580"
!CwWidget methodsFor: 'recovered'!
tobTBOriginRoot
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) primaryWidget.
    recoveredValue1 := (recoveredValue0) tobTBOriginRoot.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20032514; bytecode file offset 0x934580"
!CwWidget methodsFor: 'recovered'!
abtPrimaryCommonWidget
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) primaryWidget.
    recoveredValue1 := (recoveredValue0) abtPrimaryCommonWidget.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20035df4; bytecode file offset 0x934580"
!CwWidget methodsFor: 'recovered'!
hasChildren
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) children.
    recoveredValue1 := (recoveredValue0) notEmpty.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003ce08; bytecode file offset 0x93bf94"
!CwWidget methodsFor: 'recovered'!
isScintillaActive
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := EtasScintillaText.
    recoveredValue1 := (recoveredValue0) isScintillaActive.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003ea78; bytecode file offset 0x93bf94"
!CwWidget methodsFor: 'recovered'!
getActionKeys
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003fbe0; bytecode file offset 0x93c75c"
!CwWidget methodsFor: 'recovered'!
hasFocusCallback
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := XmNfocusCallback.
    recoveredValue1 := (self) respondsTo: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20047fec; bytecode file offset 0x9451f8"
!CwWidget methodsFor: 'recovered'!
extendedWidget
    | recoveredValue0 |
    recoveredValue0 := (self) wbPropertyAt: ('extendedWidget').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20057288; bytecode file offset 0x956284"
!CwWidget methodsFor: 'recovered'!
abtContainsPointRoot: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) primaryWidget.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) abtContainsPointRoot: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20057cc8; bytecode file offset 0x956284"
!CwWidget methodsFor: 'recovered'!
abtWidgetAtPointRoot: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) primaryWidget.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) abtWidgetAtPointRoot: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20057d38; bytecode file offset 0x956284"
!CwWidget methodsFor: 'recovered'!
isExtendedCallback: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) extendedCallbackNames.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) includes: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20058c28; bytecode file offset 0x956284"
!CwWidget methodsFor: 'recovered'!
getStringForActionKey: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) getStringForActionKey: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20064b84; bytecode file offset 0x961970"
!CwWidget methodsFor: 'recovered'!
resize
    | recoveredValue0 |
    recoveredValue0 := (self) primaryWidget.
    (recoveredValue0) resize.
    ^self
! !

"ASDBase.ic method 0x20073cf8; bytecode file offset 0x970b34"
!CwWidget methodsFor: 'recovered'!
widgetDictName
    ^nil
! !

"ASDBase.ic method 0x20076b5c; bytecode file offset 0x9757c8"
!CwWidget methodsFor: 'recovered'!
isWidget
    ^true
! !

"ASDBase.ic method 0x20077b5c; bytecode file offset 0x9757c8"
!CwWidget methodsFor: 'recovered'!
wbIsCwWidget
    ^true
! !

"ASDBase.ic method 0x20077e5c; bytecode file offset 0x9757c8"
!CwWidget methodsFor: 'recovered'!
isErrorClass
    ^true
! !

"ASDBase.ic method 0x2007988c; bytecode file offset 0x97c330"
!CwWidget methodsFor: 'recovered'!
isDatabaseWidget
    ^false
! !

"ASDBase.ic method 0x2007a6ac; bytecode file offset 0x97c330"
!CwWidget methodsFor: 'recovered'!
isSpinButton
    ^false
! !

"ASDBase.ic method 0x2007aca4; bytecode file offset 0x97c330"
!CwWidget methodsFor: 'recovered'!
isScintillaWidget
    ^false
! !

"ASDBase.ic method 0x2007c134; bytecode file offset 0x97c330"
!CwWidget methodsFor: 'recovered'!
isEtasCheckBox
    ^false
! !

"ASDBase.ic method 0x2007ca04; bytecode file offset 0x97c330"
!CwWidget methodsFor: 'recovered'!
isMainWindow
    ^false
! !

"ASDBase.ic method 0x2007d724; bytecode file offset 0x97c330"
!CwWidget methodsFor: 'recovered'!
isCwHierarchyList
    ^false
! !

"ASDBase.ic method 0x2007d854; bytecode file offset 0x97c330"
!CwWidget methodsFor: 'recovered'!
isText
    ^false
! !

"ASDBase.ic method 0x2007ded4; bytecode file offset 0x97c330"
!CwWidget methodsFor: 'recovered'!
canBeHoverHelpArea
    ^false
! !

"ASDBase.ic method 0x2007e03c; bytecode file offset 0x97c330"
!CwWidget methodsFor: 'recovered'!
isList
    ^false
! !

"ASDBase.ic method 0x2007e04c; bytecode file offset 0x97c330"
!CwWidget methodsFor: 'recovered'!
isToggleButton
    ^false
! !

"ASDBase.ic method 0x2007e734; bytecode file offset 0x97c330"
!CwWidget methodsFor: 'recovered'!
isRowColumn
    ^false
! !

"ASDBase.ic method 0x2007ee04; bytecode file offset 0x97c330"
!CwWidget methodsFor: 'recovered'!
wbHasOSWidget
    ^false
! !

"ASDBase.ic method 0x20083c3c; bytecode file offset 0x980500"
!CwWidget methodsFor: 'recovered'!
tobTBInverseTranslateCoords: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) tobTBOriginRoot.
    recoveredValue2 := (recoveredValue0) - (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20083c48; bytecode file offset 0x980500"
!CwWidget methodsFor: 'recovered'!
inverseTranslateCoords: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) originRoot.
    recoveredValue2 := (recoveredValue0) - (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20086174; bytecode file offset 0x982a70"
!CwWidget methodsFor: 'recovered'!
tobTBContainsMouseEventPoint: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) tobTBScreenRelativeBoundingBox.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) pointRoot.
    recoveredValue3 := (recoveredValue0) tobTBIncludesPoint: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20086fc4; bytecode file offset 0x9838a0"
!CwWidget methodsFor: 'recovered'!
tobTBTranslateCoords: recoveredArg1 point: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue0) translateCoords: (recoveredValue1).
    recoveredValue3 := (self) tobTBInverseTranslateCoords: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20086fd4; bytecode file offset 0x9838a0"
!CwWidget methodsFor: 'recovered'!
translateCoords: recoveredArg1 point: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue0) translateCoords: (recoveredValue1).
    recoveredValue3 := (self) inverseTranslateCoords: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2008c88c; bytecode file offset 0x989498"
!CwWidget methodsFor: 'recovered'!
triggerOpenedWidget
    (self) triggerCallback: ('openedWidget').
    ^self
! !

"ASDBase.ic method 0x2008ca3c; bytecode file offset 0x989498"
!CwWidget methodsFor: 'recovered'!
triggerAboutToOpenWidget
    (self) triggerCallback: ('aboutToOpenWidget').
    ^self
! !

"ASDBase.ic method 0x2008cb1c; bytecode file offset 0x989498"
!CwWidget methodsFor: 'recovered'!
triggerAboutToManageWidget
    (self) triggerCallback: ('aboutToManageWidget').
    ^self
! !

"ASDBase.ic method 0x2008e658; bytecode file offset 0x98af14"
!CwWidget methodsFor: 'recovered'!
withAllChildren
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) allChildren.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) addFirst: (self).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200935d4; bytecode file offset 0x98fed0"
!CwWidget methodsFor: 'recovered'!
extendedCallbacks: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) wbPropertyAt: ('extendedCallbacks') put: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200947e8; bytecode file offset 0x991174"
!CwWidget methodsFor: 'recovered'!
propertyAt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [].
    recoveredValue2 := (self) propertyAt: (recoveredValue0) ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200948b8; bytecode file offset 0x991174"
!CwWidget methodsFor: 'recovered'!
wbPropertyAt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [].
    recoveredValue2 := (self) propertyAt: (recoveredValue0) ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20094cb8; bytecode file offset 0x991570"
!CwWidget methodsFor: 'recovered'!
triggerCallback: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) triggerCallback: (recoveredValue0) withArguments: (nil).
    ^self
! !

"ASDBase.ic method 0x200986b4; bytecode file offset 0x995850"
!CwWidget methodsFor: 'recovered'!
addExtendedCallbackName: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) extendedCallbackNames.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20099cb8; bytecode file offset 0x997194"
!CwWidget methodsFor: 'recovered'!
propertyAt: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) properties.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2009a208; bytecode file offset 0x997194"
!CwWidget methodsFor: 'recovered'!
wbPropertyAt: recoveredArg1 put: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) properties.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) put: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2009a498; bytecode file offset 0x997194"
!CwWidget methodsFor: 'recovered'!
propertyAt: recoveredArg1 ifAbsentPut: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) properties.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsentPut: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2009a718; bytecode file offset 0x997194"
!CwWidget methodsFor: 'recovered'!
propertyAt: recoveredArg1 put: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) properties.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) put: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200a3830; bytecode file offset 0x9a0b4c"
!CwWidget methodsFor: 'recovered'!
triggerTimerCallback: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) triggerCallback: ('timer') with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a94d8; bytecode file offset 0x9a5d90"
!CwWidget methodsFor: 'recovered'!
reparentTo: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) reparentTo: (recoveredValue0) asFirstChild: (false) updateBlock: (nil).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200ae3a8; bytecode file offset 0x9ab034"
!CwWidget methodsFor: 'recovered'!
background: recoveredArg1 brush: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) osWidget.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (recoveredValue0) background: (recoveredValue1) brush: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200b1d90; bytecode file offset 0x9ae66c"
!CwWidget methodsFor: 'recovered'!
supportsTypeAhead
    | recoveredValue0 |
    recoveredValue0 := ('Rnz') == ('TypeAhead').
    ^false
! !

"ASDBase.ic method 0x200be00c; bytecode file offset 0x9bb178"
!CwWidget methodsFor: 'recovered'!
properties: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    xmNuserData := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c9610; bytecode file offset 0x9c5efc"
!CwWidget methodsFor: 'recovered'!
createEtasToggleButton: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) toggleButtonClass.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200dafec; bytecode file offset 0x9d7f68"
!CwWidget methodsFor: 'recovered'!
createEtasItemTextWidget: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EtasItemTextWidget.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200daffc; bytecode file offset 0x9d7f68"
!CwWidget methodsFor: 'recovered'!
createCwToolBar: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := CwToolBar.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200db00c; bytecode file offset 0x9d7f68"
!CwWidget methodsFor: 'recovered'!
createEtasNotebookComponentLayoutWidget: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EtasNotebookComponentLayoutWidget.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200db02c; bytecode file offset 0x9d7f68"
!CwWidget methodsFor: 'recovered'!
createEtasClassWidget: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EtasClassWidget.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200db03c; bytecode file offset 0x9d7f68"
!CwWidget methodsFor: 'recovered'!
createASDTwoDCharTableEditWidget: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ASDTwoDCharTableEditWidget.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200db04c; bytecode file offset 0x9d7f68"
!CwWidget methodsFor: 'recovered'!
createASDVariableMappingTableWidget: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ASDVariableMappingTableWidget.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200db05c; bytecode file offset 0x9d7f68"
!CwWidget methodsFor: 'recovered'!
createASDCommunicationWidget: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ASDCommunicationWidget.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200db07c; bytecode file offset 0x9d7f68"
!CwWidget methodsFor: 'recovered'!
createEnhancedTableList: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := RBEnhancedTableList.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200db09c; bytecode file offset 0x9d7f68"
!CwWidget methodsFor: 'recovered'!
createASDCustomerControlWindow: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ASDCustomerControlWidget.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200db0ac; bytecode file offset 0x9d7f68"
!CwWidget methodsFor: 'recovered'!
createEtasCodeListWidget: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EtasCodeListWidget.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200db0bc; bytecode file offset 0x9d7f68"
!CwWidget methodsFor: 'recovered'!
createEtasNotebookComponentConnectedElementsWidget: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EtasNotebookComponentConnectedElementsWidget.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200db0cc; bytecode file offset 0x9d7f68"
!CwWidget methodsFor: 'recovered'!
createRB1BitMeasureDataWidget: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := RB1BitMeasureDataWidget.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200db0dc; bytecode file offset 0x9d7f68"
!CwWidget methodsFor: 'recovered'!
createARTimingEventSpecificationWidget: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ARTimingEventSpecificationWidget.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200db0ec; bytecode file offset 0x9d7f68"
!CwWidget methodsFor: 'recovered'!
createEtasScrolledIconList: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EtasIconList.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createScrolledWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200db10c; bytecode file offset 0x9d7f68"
!CwWidget methodsFor: 'recovered'!
createScintillaScrolledWindow: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EtasScintillaScrolledWindow.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200db11c; bytecode file offset 0x9d7f68"
!CwWidget methodsFor: 'recovered'!
createRB3DDisplay: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := RB3DDisplay.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200db12c; bytecode file offset 0x9d7f68"
!CwWidget methodsFor: 'recovered'!
createScrolledHierarchyList: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := CwHierarchyList.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createScrolledWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200db13c; bytecode file offset 0x9d7f68"
!CwWidget methodsFor: 'recovered'!
createScrolledEnhancedTableList: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := RBEnhancedTableList.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createScrolledWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200db14c; bytecode file offset 0x9d7f68"
!CwWidget methodsFor: 'recovered'!
createASDScalarImplementationWidgetNew: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ASDScalarImplementationWidgetNew.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200db15c; bytecode file offset 0x9d7f68"
!CwWidget methodsFor: 'recovered'!
createEtasNotebookFolderWidget: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EtasNotebookFolderWidget.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200db16c; bytecode file offset 0x9d7f68"
!CwWidget methodsFor: 'recovered'!
createASDToolbarConfigurationWidget: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ASDToolbarConfigurationWidget.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200db17c; bytecode file offset 0x9d7f68"
!CwWidget methodsFor: 'recovered'!
createRBFloatSpinButton: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := RBFloatSpinButton.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200db18c; bytecode file offset 0x9d7f68"
!CwWidget methodsFor: 'recovered'!
createDrawingAreaOwnDC: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := RBCwDrawingAreaOwnDC.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200db19c; bytecode file offset 0x9d7f68"
!CwWidget methodsFor: 'recovered'!
createAbtNoteBook: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := AbtCwNoteBook.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200db1bc; bytecode file offset 0x9d7f68"
!CwWidget methodsFor: 'recovered'!
createASDScalarImplementationLimiterWidgetNew: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ASDScalarImplementationLimiterWidgetNew.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200db1cc; bytecode file offset 0x9d7f68"
!CwWidget methodsFor: 'recovered'!
createRBNoTraversalToggleButton: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := RBNoTraversalToggleButton.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200db1dc; bytecode file offset 0x9d7f68"
!CwWidget methodsFor: 'recovered'!
createRBSignalDrawingArea: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := RBSignalDrawingArea.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200db1ec; bytecode file offset 0x9d7f68"
!CwWidget methodsFor: 'recovered'!
createEnhancedText: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := RBEnhancedText.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200db1fc; bytecode file offset 0x9d7f68"
!CwWidget methodsFor: 'recovered'!
createConditionalTableWidget: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SGConditionalTableWidget.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200db20c; bytecode file offset 0x9d7f68"
!CwWidget methodsFor: 'recovered'!
createASDMemoryBlockEditWidget: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ASDMemoryBlockEditWidget.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200db21c; bytecode file offset 0x9d7f68"
!CwWidget methodsFor: 'recovered'!
createEtasStatusBar: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EtasCwStatusBar.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200db22c; bytecode file offset 0x9d7f68"
!CwWidget methodsFor: 'recovered'!
createASDDataVectorEditWidget: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ASDDataVectorEditWidget.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200db23c; bytecode file offset 0x9d7f68"
!CwWidget methodsFor: 'recovered'!
createBooleanTableWidget: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SGBooleanTableWidget.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200db24c; bytecode file offset 0x9d7f68"
!CwWidget methodsFor: 'recovered'!
createASDImplementationTypeTableWidget: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ASDImplementationTypeTableWidget.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200db25c; bytecode file offset 0x9d7f68"
!CwWidget methodsFor: 'recovered'!
createEtasNotebookComponentSearchResultsWidget: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EtasNotebookComponentSearchResultsWidget.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200db27c; bytecode file offset 0x9d7f68"
!CwWidget methodsFor: 'recovered'!
createASDParameterMappingTableWidget: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ASDParameterMappingTableWidget.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200db28c; bytecode file offset 0x9d7f68"
!CwWidget methodsFor: 'recovered'!
createObjectList: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := CwObjectList.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200db29c; bytecode file offset 0x9d7f68"
!CwWidget methodsFor: 'recovered'!
createASDOsciSetupPanelWidget: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ASDOsciSetupPanelWidget.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200db2ac; bytecode file offset 0x9d7f68"
!CwWidget methodsFor: 'recovered'!
createEtasItemIEWidget: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EtasItemIEWidget.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200db2bc; bytecode file offset 0x9d7f68"
!CwWidget methodsFor: 'recovered'!
createRB8BitMeasureDataWidget: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := RB8BitMeasureDataWidget.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200db2cc; bytecode file offset 0x9d7f68"
!CwWidget methodsFor: 'recovered'!
createASDNumericMeasureDataWidget: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ASDNumericMeasureDataWidget.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200db2dc; bytecode file offset 0x9d7f68"
!CwWidget methodsFor: 'recovered'!
createASDDataBooleanMatrixEditWidget: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ASDDataBooleanMatrixEditWidget.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200db2ec; bytecode file offset 0x9d7f68"
!CwWidget methodsFor: 'recovered'!
createEtasModeGroupWidget: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EtasARModeGroupWidget.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200db2fc; bytecode file offset 0x9d7f68"
!CwWidget methodsFor: 'recovered'!
createEtasNotebookElementWidget: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EtasNotebookElementWidget.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200db30c; bytecode file offset 0x9d7f68"
!CwWidget methodsFor: 'recovered'!
createRBColorSelectionWidget: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := RBColorSelectionWidget.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200db31c; bytecode file offset 0x9d7f68"
!CwWidget methodsFor: 'recovered'!
createASDImplementationConsistencyWidget: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ASDImplementationConsistencyWidget.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200db32c; bytecode file offset 0x9d7f68"
!CwWidget methodsFor: 'recovered'!
createSGOSTaskWidget: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SGOSTaskWidget.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200db33c; bytecode file offset 0x9d7f68"
!CwWidget methodsFor: 'recovered'!
createASDEHooksSpecificationWidget: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ASDEHooksSpecificationWidget.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200db34c; bytecode file offset 0x9d7f68"
!CwWidget methodsFor: 'recovered'!
createASDVerBarMeasureDataWidget: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ASDVerBarMeasureDataWidget.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200db35c; bytecode file offset 0x9d7f68"
!CwWidget methodsFor: 'recovered'!
createASDBindingWidget: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ASDBindingWidget.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200db37c; bytecode file offset 0x9d7f68"
!CwWidget methodsFor: 'recovered'!
createTobTBBar: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := TobTBBarWidget.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200db38c; bytecode file offset 0x9d7f68"
!CwWidget methodsFor: 'recovered'!
createASDDataMatrixEditWidget: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ASDDataMatrixEditWidget.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200db39c; bytecode file offset 0x9d7f68"
!CwWidget methodsFor: 'recovered'!
createHierarchyList: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := CwHierarchyList.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200db3ac; bytecode file offset 0x9d7f68"
!CwWidget methodsFor: 'recovered'!
createASDDataBooleanVectorEditWidget: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ASDDataBooleanVectorEditWidget.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200db3bc; bytecode file offset 0x9d7f68"
!CwWidget methodsFor: 'recovered'!
createEtasOleControl: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EtasOleControl.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200db3cc; bytecode file offset 0x9d7f68"
!CwWidget methodsFor: 'recovered'!
createASDPortWidget: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ASDPortSettingsWidget.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200db3dc; bytecode file offset 0x9d7f68"
!CwWidget methodsFor: 'recovered'!
createEtasNotebookExperimentComponentWidget: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EtasNotebookExperimentComponentWidget.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200db3ec; bytecode file offset 0x9d7f68"
!CwWidget methodsFor: 'recovered'!
createASDOnlineDLLDigitalDrawingArea: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ASDOnlineDLLDigitalDrawingArea.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200db3fc; bytecode file offset 0x9d7f68"
!CwWidget methodsFor: 'recovered'!
createEtasNotebookComponentWidget: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EtasNotebookComponentWidget.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200db40c; bytecode file offset 0x9d7f68"
!CwWidget methodsFor: 'recovered'!
createASDHorBarMeasureDataWidget: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ASDHorBarMeasureDataWidget.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200db41c; bytecode file offset 0x9d7f68"
!CwWidget methodsFor: 'recovered'!
createEtasTableColumnOptionWidget: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EtasTableColumnOptionWidget.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200db43c; bytecode file offset 0x9d7f68"
!CwWidget methodsFor: 'recovered'!
createTobTBMenu: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := TobTBMenuWidget.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200db44c; bytecode file offset 0x9d7f68"
!CwWidget methodsFor: 'recovered'!
createASDRequirementManagementInterfaceWindow: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ASDRequirementManagementInterfaceWidget.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200db45c; bytecode file offset 0x9d7f68"
!CwWidget methodsFor: 'recovered'!
createEtasOptionsTableListWidget: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EtasOptionsTableListWidget.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200db46c; bytecode file offset 0x9d7f68"
!CwWidget methodsFor: 'recovered'!
createEtasEnumerationWidget: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EtasEnumerationWidget.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200db47c; bytecode file offset 0x9d7f68"
!CwWidget methodsFor: 'recovered'!
createRB16BitMeasureDataWidget: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := RB16BitMeasureDataWidget.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200db48c; bytecode file offset 0x9d7f68"
!CwWidget methodsFor: 'recovered'!
createEtasNotebookContainerWidget: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EtasNotebookContainerWidget.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200db49c; bytecode file offset 0x9d7f68"
!CwWidget methodsFor: 'recovered'!
createEtasObjectComboBox: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EtasObjectComboBox.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200db4ac; bytecode file offset 0x9d7f68"
!CwWidget methodsFor: 'recovered'!
createColorText: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SGColorText.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200db4bc; bytecode file offset 0x9d7f68"
!CwWidget methodsFor: 'recovered'!
createRB3DSignalDrawingArea: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := RB3DSignalDrawingArea.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200db4cc; bytecode file offset 0x9d7f68"
!CwWidget methodsFor: 'recovered'!
createRBSpinButton: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := RBSpinButton.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200db4dc; bytecode file offset 0x9d7f68"
!CwWidget methodsFor: 'recovered'!
createEtasDatabaseWidget: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EtasDatabaseWidget.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200db4ec; bytecode file offset 0x9d7f68"
!CwWidget methodsFor: 'recovered'!
createEtasScrolledIconTree: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EtasIconTree.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createScrolledWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200db4fc; bytecode file offset 0x9d7f68"
!CwWidget methodsFor: 'recovered'!
createRBSplitBar: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EtasSplitBar.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200db50c; bytecode file offset 0x9d7f68"
!CwWidget methodsFor: 'recovered'!
createARModeSwitchEventSpecificationWidget: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ARModeSwitchEventSpecificationWidget.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200db51c; bytecode file offset 0x9d7f68"
!CwWidget methodsFor: 'recovered'!
createObjectComboBox: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := CwObjectComboBox.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200db52c; bytecode file offset 0x9d7f68"
!CwWidget methodsFor: 'recovered'!
createAROperationInvokedEventSpecificationWidget: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := AROperationInvokedEventSpecificationWidget.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200db53c; bytecode file offset 0x9d7f68"
!CwWidget methodsFor: 'recovered'!
createASDDrawnBitMeasureDataWidget: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ASDDrawnBitMeasureDataWidget.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200db54c; bytecode file offset 0x9d7f68"
!CwWidget methodsFor: 'recovered'!
createASDOneDCharTableEditWidget: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ASDOneDCharTableEditWidget.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200db55c; bytecode file offset 0x9d7f68"
!CwWidget methodsFor: 'recovered'!
createScintillaMonitorText: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EtasScintillaMonitorText.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200db56c; bytecode file offset 0x9d7f68"
!CwWidget methodsFor: 'recovered'!
createScintillaESDLText: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EtasScintillaESDLText.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200db57c; bytecode file offset 0x9d7f68"
!CwWidget methodsFor: 'recovered'!
createASDEnumerationCalibrationWidget: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ASDEnumerationCalibrationWidget.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200db58c; bytecode file offset 0x9d7f68"
!CwWidget methodsFor: 'recovered'!
createEtasOleClient: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EtasOleClient.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200db59c; bytecode file offset 0x9d7f68"
!CwWidget methodsFor: 'recovered'!
createRBDrawingArea: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := RBDrawingArea.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200db5ac; bytecode file offset 0x9d7f68"
!CwWidget methodsFor: 'recovered'!
createScintillaText: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EtasScintillaText.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200db5bc; bytecode file offset 0x9d7f68"
!CwWidget methodsFor: 'recovered'!
createEtasNotebookAdditionalInfoWidget: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EtasNotebookAdditionalInfoWidget.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200db5cc; bytecode file offset 0x9d7f68"
!CwWidget methodsFor: 'recovered'!
createEtasDatabasesSelectionWidget: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EtasDatabasesSelectionWidget.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200db5dc; bytecode file offset 0x9d7f68"
!CwWidget methodsFor: 'recovered'!
createRBScrolledDrawingArea: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := RBScrolledDrawingArea.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200db5ec; bytecode file offset 0x9d7f68"
!CwWidget methodsFor: 'recovered'!
createSDCalibrationExtWidget: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SDCalibrationExtWidget.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200db5fc; bytecode file offset 0x9d7f68"
!CwWidget methodsFor: 'recovered'!
createTobTBDockingArea: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := TobTBDockingAreaWidget.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200db60c; bytecode file offset 0x9d7f68"
!CwWidget methodsFor: 'recovered'!
createCwProgressBar: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := CwProgressBar.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200db61c; bytecode file offset 0x9d7f68"
!CwWidget methodsFor: 'recovered'!
createEtasNotebookComponentPotentiallySearchResultsWidget: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EtasNotebookComponentPotentiallySearchResultsWidget.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200db62c; bytecode file offset 0x9d7f68"
!CwWidget methodsFor: 'recovered'!
createASDBooleanCalibrationWidget: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ASDBooleanCalibrationWidget.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200db63c; bytecode file offset 0x9d7f68"
!CwWidget methodsFor: 'recovered'!
createASDNumericCalibrationWidget: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ASDNumericCalibrationWidget.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200db64c; bytecode file offset 0x9d7f68"
!CwWidget methodsFor: 'recovered'!
createScrolledObjectList: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := CwObjectList.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createScrolledWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200db65c; bytecode file offset 0x9d7f68"
!CwWidget methodsFor: 'recovered'!
createASDGroupDistributionEditWidget: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ASDGroupDistributionEditWidget.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200db66c; bytecode file offset 0x9d7f68"
!CwWidget methodsFor: 'recovered'!
createARNotebookEventSpecificationWidget: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ARNotebookEventSpecificationWidget.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200db67c; bytecode file offset 0x9d7f68"
!CwWidget methodsFor: 'recovered'!
createEtasOleMainWindow: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EtasOleMainWindow.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200db68c; bytecode file offset 0x9d7f68"
!CwWidget methodsFor: 'recovered'!
createEtasNotebookProjectComponentSearchResultsWidget: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EtasNotebookProjectComponentSearchResultsWidget.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200db69c; bytecode file offset 0x9d7f68"
!CwWidget methodsFor: 'recovered'!
createASDPrimitiveImplementationWidgetNew: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ASDPrimitiveImplementationWidgetNew.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200dc270; bytecode file offset 0x9d8b80"
!CwWidget methodsFor: 'recovered'!
triggerCallback: recoveredArg1 with: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue1) with: (recoveredValue2).
    (self) triggerCallback: (recoveredValue0) withArguments: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x200dcb20; bytecode file offset 0x9d93e4"
!CwWidget methodsFor: 'recovered'!
translateCoords: recoveredArg1 rectangle: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue1) origin.
    recoveredValue3 := (self) translateCoords: (recoveredValue0) point: (recoveredValue2).
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue4) extent.
    recoveredValue6 := (recoveredValue3) extent: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x200ded40; bytecode file offset 0x9db628"
!CwWidget methodsFor: 'recovered'!
addUniqueEditPolicyEventHandler: recoveredArg1 receiver: recoveredArg2 selector: recoveredArg3 clientData: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg4.
    (self) addEventHandler: (recoveredValue0) receiver: (recoveredValue1) selector: (recoveredValue2) clientData: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x200ded58; bytecode file offset 0x9db628"
!CwWidget methodsFor: 'recovered'!
removeEditPolicyEventHandler: recoveredArg1 receiver: recoveredArg2 selector: recoveredArg3 clientData: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg4.
    (self) removeEventHandler: (recoveredValue0) receiver: (recoveredValue1) selector: (recoveredValue2) clientData: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x200ded70; bytecode file offset 0x9db628"
!CwWidget methodsFor: 'recovered'!
addEditPolicyEventHandler: recoveredArg1 receiver: recoveredArg2 selector: recoveredArg3 clientData: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg4.
    (self) addEventHandler: (recoveredValue0) receiver: (recoveredValue1) selector: (recoveredValue2) clientData: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x200e4840; bytecode file offset 0x9e1114"
!CwWidget methodsFor: 'recovered'!
redrawOff
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDestroyed.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) osWidget.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) redrawOff.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200e4854; bytecode file offset 0x9e1114"
!CwWidget methodsFor: 'recovered'!
redrawOn
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDestroyed.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) osWidget.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) redrawOn.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200ec674; bytecode file offset 0x9e8f30"
!CwWidget methodsFor: 'recovered'!
createASDListFilterWidget: recoveredArg1 informWidget: recoveredArg2 argBlock: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ASDListFilterWidget.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue0) createWidget: (recoveredValue1) informWidget: (recoveredValue2) parent: (self) argBlock: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200ef200; bytecode file offset 0x9ebadc"
!CwWidget methodsFor: 'recovered'!
createEtasSimplePulldownMenu: recoveredArg1 argBlock: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) createEtasPulldownMenu: (recoveredValue0) argBlock: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    (recoveredValue3) createSimpleChildren.
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x200ef210; bytecode file offset 0x9ebadc"
!CwWidget methodsFor: 'recovered'!
createEtasSimpleMenuBar: recoveredArg1 argBlock: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) createEtasMenuBar: (recoveredValue0) argBlock: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    (recoveredValue3) createSimpleChildren.
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x200ef220; bytecode file offset 0x9ebadc"
!CwWidget methodsFor: 'recovered'!
createEtasSimplePopupMenu: recoveredArg1 argBlock: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) createEtasPopupMenu: (recoveredValue0) argBlock: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    (recoveredValue3) createSimpleChildren.
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x200f2754; bytecode file offset 0x9ef028"
!CwWidget methodsFor: 'recovered'!
wbHasFocus
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
            recoveredStack2 := (recoveredStack2) isDestroyed.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) osWidget.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasFocus.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20101ee8; bytecode file offset 0x9fe7bc"
!CwWidget methodsFor: 'recovered'!
triggerCallback: recoveredArg1 with: recoveredArg2 with: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3).
    (self) triggerCallback: (recoveredValue0) withArguments: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20103b6c; bytecode file offset 0xa00448"
!CwWidget methodsFor: 'recovered'!
createEtasCheckBox: recoveredArg1 argBlock: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := EtasCheckBox.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x20103b7c; bytecode file offset 0xa00448"
!CwWidget methodsFor: 'recovered'!
createEtasTabStrip: recoveredArg1 argBlock: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := EtasTabStrip.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x20103b8c; bytecode file offset 0xa00448"
!CwWidget methodsFor: 'recovered'!
createEtasToolBar: recoveredArg1 argBlock: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := EtasToolBar.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x20107924; bytecode file offset 0xa041e0"
!CwWidget methodsFor: 'recovered'!
extendedWidgetOrSelf
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    self
].
    recoveredValue1 := (self) propertyAt: ('extendedWidget') ifAbsent: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20113834; bytecode file offset 0xa100f4"
!CwWidget methodsFor: 'recovered'!
withAllParentsDo: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) allWidgetParents.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    (recoveredValue1) addFirst: (self).
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) do: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x201240cc; bytecode file offset 0xa209a0"
!CwWidget methodsFor: 'recovered'!
triggerCallback: recoveredArg1 with: recoveredArg2 with: recoveredArg3 with: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4).
    (self) triggerCallback: (recoveredValue0) withArguments: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x20124e0c; bytecode file offset 0xa216c8"
!CwWidget methodsFor: 'recovered'!
topLevelParent
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
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
            recoveredStack0 := self.
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
            recoveredStack0 := (recoveredStack0) topLevelParent.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2012b864; bytecode file offset 0xa28128"
!CwWidget methodsFor: 'recovered'!
extendedCallbackNames
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 |
    recoveredBlock6Value0 := (self) class.
    recoveredBlock6Value1 := (recoveredBlock6Value0) extendedCallbacks.
    recoveredBlock6Value1
].
    recoveredValue1 := (self) propertyAt: ('extendedCallbackNames') ifAbsentPut: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2012c038; bytecode file offset 0xa288fc"
!CwWidget methodsFor: 'recovered'!
handlers
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) primaryWidget.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := Dictionary.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
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
            recoveredStack0 := (recoveredStack0) primaryWidget.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) handlers.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20135254; bytecode file offset 0xa31b14"
!CwWidget methodsFor: 'recovered'!
wbRemoveProperty: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) properties.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 11] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
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
            recoveredStack0 := (recoveredStack0) properties.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) removeKey: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2013c894; bytecode file offset 0xa391b0"
!CwWidget methodsFor: 'recovered'!
extendedCallbacks
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'extendedCallbacks'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [
    | block280cb928Value0 block280cb928Value1 |
    block280cb928Value0 := IdentityDictionary.
    block280cb928Value1 := (block280cb928Value0) new.
    block280cb928Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) propertyAt: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201472a4; bytecode file offset 0xa43b68"
!CwWidget methodsFor: 'recovered'!
createEtasProgressBar: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ('PR') = ('1E3MPXK').
    recoveredValue1 := EtasProgressBar.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue1) createWidget: (recoveredValue2) parent: (self) argBlock: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20148f54; bytecode file offset 0xa45814"
!CwWidget methodsFor: 'recovered'!
triggerCallback: recoveredArg1 with: recoveredArg2 with: recoveredArg3 with: recoveredArg4 with: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := recoveredArg5.
    recoveredValue6 := (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4) with: (recoveredValue5).
    (self) triggerCallback: (recoveredValue0) withArguments: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x2014b790; bytecode file offset 0xa4804c"
!CwWidget methodsFor: 'recovered'!
helpCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getUserInterface.
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
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) helpCallback: (recoveredStack1) clientData: (recoveredStack2) callData: (recoveredStack3).
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

"ASDBase.ic method 0x201612dc; bytecode file offset 0xa5dba4"
!CwWidget methodsFor: 'recovered'!
setStaticEdge
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) osWidget.
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
            recoveredStack0 := (recoveredStack0) osWidget.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) handle.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := GwlExstyle.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := WsExStaticedge.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) setWindowLong: (recoveredStack1) nVal: (recoveredStack2).
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

"ASDBase.ic method 0x20189a34; bytecode file offset 0xa862fc"
!CwWidget methodsFor: 'recovered'!
allWidgetParents
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
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
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
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
            recoveredStack0 := (recoveredStack0) allWidgetParents.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) addFirst: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20189e68; bytecode file offset 0xa86728"
!CwWidget methodsFor: 'recovered'!
associatedPart
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) userData.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) isBasicView.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) associatedPart.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201903b0; bytecode file offset 0xa8cc7c"
!CwWidget methodsFor: 'recovered'!
abtBoundingBoxRoot
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) origin.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) translateCoords: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) extent.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) extent: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) boundingBox.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201aa29c; bytecode file offset 0xaa6b64"
!CwWidget methodsFor: 'recovered'!
tobTBScreenRelativeBoundingBox
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) primaryWidget.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) @ (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) translateCoords: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) extent.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) extent: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201ac56c; bytecode file offset 0xaa8e34"
!CwWidget methodsFor: 'recovered'!
createEtasComboBox: recoveredArg1 argBlock: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := EtasComboBox.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := KeyPressMask.
    recoveredValue6 := recoveredLocal1.
    (recoveredValue4) addEventHandler: (recoveredValue5) receiver: (recoveredValue6) selector: ('keyPress:clientData:event:') clientData: (nil).
    recoveredValue7 := recoveredLocal1.
    ^recoveredValue7
! !

"ASDBase.ic method 0x201b698c; bytecode file offset 0xab3260"
!CwWidget methodsFor: 'recovered'!
propertyAt: recoveredArg1 ifMissing: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) properties.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 |
    recoveredBlock8Value0 := recoveredArg1.
    recoveredBlock8Value1 := recoveredArg2.
    recoveredBlock8Value2 := (self) wbPropertyAt: (recoveredBlock8Value0) put: (recoveredBlock8Value1).
    recoveredBlock8Value2
].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x202124a0; bytecode file offset 0xb0ed6c"
!CwWidget methodsFor: 'recovered'!
updateFonts
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := RBFontGlobal.
    recoveredValue1 := (recoveredValue0) instance.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) children.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 |
    recoveredBlock11Value0 := recoveredBlock11Arg1.
    (recoveredBlock11Value0) updateFonts.
    recoveredBlock11Value1 := recoveredLocal1.
    recoveredBlock11Value2 := recoveredBlock11Arg1.
    recoveredBlock11Value3 := (recoveredBlock11Value1) updateWidgetFont: (recoveredBlock11Value2).
    recoveredBlock11Value3
].
    (recoveredValue2) do: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2021a5f0; bytecode file offset 0xb16eb4"
!CwWidget methodsFor: 'recovered'!
getWidgetOwner
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) allWidgetParents.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := nil.
            recoveredBlock5PC := 13.
        ].
        recoveredBlock5Step = 13 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) userData.
            recoveredBlock5PC := 15.
        ].
        recoveredBlock5Step = 15 ifTrue: [
            (recoveredBlock5Stack2 == nil) ifTrue: [recoveredBlock5PC := 28] ifFalse: [recoveredBlock5PC := 18].
        ].
        recoveredBlock5Step = 18 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 19.
        ].
        recoveredBlock5Step = 19 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) userData.
            recoveredBlock5PC := 20.
        ].
        recoveredBlock5Step = 20 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) isWidget.
            recoveredBlock5PC := 21.
        ].
        recoveredBlock5Step = 21 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 24] ifFalse: [recoveredBlock5PC := 28].
        ].
        recoveredBlock5Step = 24 ifTrue: [
            recoveredBlock5PC := 25.
        ].
        recoveredBlock5Step = 25 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 26.
        ].
        recoveredBlock5Step = 26 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) userData.
            recoveredBlock5PC := 27.
        ].
        recoveredBlock5Step = 27 ifTrue: [
            ^recoveredBlock5Stack1
        ].
        recoveredBlock5Step = 28 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^nil
! !

"ASDBase.ic method 0x20223490; bytecode file offset 0xb1fd64"
!CwWidget methodsFor: 'recovered'!
createScrolledEnhancedText: recoveredArg1 argBlock: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) , ('SW').
    recoveredValue2 := (self) createScrolledWindow: (recoveredValue1) argBlock: (nil).
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := recoveredLocal2.
    (recoveredValue3) manageChild.
    recoveredValue4 := recoveredLocal2.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredArg2.
    recoveredValue7 := (recoveredValue4) createEnhancedText: (recoveredValue5) argBlock: (recoveredValue6).
    recoveredLocal1 := recoveredValue7.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := XmNdestroyCallback.
    recoveredValue10 := recoveredLocal1.
    (recoveredValue8) addCallback: (recoveredValue9) receiver: (recoveredValue10) selector: ('destroyParent:clientData:callData:') clientData: (nil).
    recoveredValue11 := recoveredLocal1.
    ^recoveredValue11
! !

"ASDBase.ic method 0x202234dc; bytecode file offset 0xb1fe28"
!CwWidget methodsFor: 'recovered'!
createScrolledScintillaESDLText: recoveredArg1 argBlock: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) , ('SW').
    recoveredValue2 := (self) createScintillaScrolledWindow: (recoveredValue1) argBlock: (nil).
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := recoveredLocal2.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := (recoveredValue3) createScintillaESDLText: (recoveredValue4) argBlock: (recoveredValue5).
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := recoveredLocal2.
    (recoveredValue7) manageChild.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := XmNdestroyCallback.
    recoveredValue10 := recoveredLocal1.
    (recoveredValue8) addCallback: (recoveredValue9) receiver: (recoveredValue10) selector: ('destroyParent:clientData:callData:') clientData: (nil).
    recoveredValue11 := recoveredLocal1.
    ^recoveredValue11
! !

"ASDBase.ic method 0x20223504; bytecode file offset 0xb1fe28"
!CwWidget methodsFor: 'recovered'!
createScrolledScintillaMonitorText: recoveredArg1 argBlock: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) , ('SW').
    recoveredValue2 := (self) createScintillaScrolledWindow: (recoveredValue1) argBlock: (nil).
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := recoveredLocal2.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := (recoveredValue3) createScintillaMonitorText: (recoveredValue4) argBlock: (recoveredValue5).
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := recoveredLocal2.
    (recoveredValue7) manageChild.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := XmNdestroyCallback.
    recoveredValue10 := recoveredLocal1.
    (recoveredValue8) addCallback: (recoveredValue9) receiver: (recoveredValue10) selector: ('destroyParent:clientData:callData:') clientData: (nil).
    recoveredValue11 := recoveredLocal1.
    ^recoveredValue11
! !

"ASDBase.ic method 0x2022352c; bytecode file offset 0xb1fe28"
!CwWidget methodsFor: 'recovered'!
createScrolledScintillaText: recoveredArg1 argBlock: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) , ('SW').
    recoveredValue2 := (self) createScintillaScrolledWindow: (recoveredValue1) argBlock: (nil).
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := recoveredLocal2.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := (recoveredValue3) createScintillaText: (recoveredValue4) argBlock: (recoveredValue5).
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := recoveredLocal2.
    (recoveredValue7) manageChild.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := XmNdestroyCallback.
    recoveredValue10 := recoveredLocal1.
    (recoveredValue8) addCallback: (recoveredValue9) receiver: (recoveredValue10) selector: ('destroyParent:clientData:callData:') clientData: (nil).
    recoveredValue11 := recoveredLocal1.
    ^recoveredValue11
! !

"ASDBase.ic method 0x20223554; bytecode file offset 0xb1fe28"
!CwWidget methodsFor: 'recovered'!
createScrolledColorText: recoveredArg1 argBlock: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) , ('SW').
    recoveredValue2 := (self) createScrolledWindow: (recoveredValue1) argBlock: (nil).
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := recoveredLocal2.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := (recoveredValue3) createColorText: (recoveredValue4) argBlock: (recoveredValue5).
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := recoveredLocal2.
    (recoveredValue7) manageChild.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := XmNdestroyCallback.
    recoveredValue10 := recoveredLocal1.
    (recoveredValue8) addCallback: (recoveredValue9) receiver: (recoveredValue10) selector: ('destroyParent:clientData:callData:') clientData: (nil).
    recoveredValue11 := recoveredLocal1.
    ^recoveredValue11
! !

"ASDBase.ic method 0x2025a0f4; bytecode file offset 0xb569c0"
!CwWidget methodsFor: 'recovered'!
allChildren
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (self) children.
    (recoveredValue2) addAll: (recoveredValue3).
    recoveredValue4 := (self) children.
    recoveredValue5 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Value0 recoveredBlock18Value1 recoveredBlock18Value2 recoveredBlock18Value3 |
    recoveredBlock18Value0 := recoveredLocal1.
    recoveredBlock18Value1 := recoveredBlock18Arg1.
    recoveredBlock18Value2 := (recoveredBlock18Value1) allChildren.
    recoveredBlock18Value3 := (recoveredBlock18Value0) addAll: (recoveredBlock18Value2).
    recoveredBlock18Value3
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x20263400; bytecode file offset 0xb5fcc8"
!CwWidget methodsFor: 'recovered'!
createEtasMenuBar: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) rowColumnClass.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [:recoveredBlock9Arg1 | 
    | recoveredBlock9Stack0 recoveredBlock9Stack1 recoveredBlock9Stack2 recoveredBlock9Stack3 recoveredBlock9PC recoveredBlock9Step recoveredBlock9Done recoveredBlock9Result |
    recoveredBlock9Stack0 := self.
    recoveredBlock9PC := 16.
    recoveredBlock9Done := false.
    [recoveredBlock9Done not] whileTrue: [
        recoveredBlock9Step := recoveredBlock9PC.
        recoveredBlock9Step = 16 ifTrue: [
            recoveredBlock9Stack1 := recoveredBlock9Arg1.
            recoveredBlock9PC := 17.
        ].
        recoveredBlock9Step = 17 ifTrue: [
            recoveredBlock9Stack2 := XmMENUBAR.
            recoveredBlock9PC := 19.
        ].
        recoveredBlock9Step = 19 ifTrue: [
            (recoveredBlock9Stack1) rowColumnType: (recoveredBlock9Stack2).
            recoveredBlock9PC := 21.
        ].
        recoveredBlock9Step = 21 ifTrue: [
            recoveredBlock9Stack1 := nil.
            recoveredBlock9PC := 22.
        ].
        recoveredBlock9Step = 22 ifTrue: [
            recoveredBlock9Stack2 := recoveredArg2.
            recoveredBlock9PC := 25.
        ].
        recoveredBlock9Step = 25 ifTrue: [
            (recoveredBlock9Stack2 == nil) ifTrue: [recoveredBlock9PC := 34] ifFalse: [recoveredBlock9PC := 28].
        ].
        recoveredBlock9Step = 28 ifTrue: [
            recoveredBlock9PC := 29.
        ].
        recoveredBlock9Step = 29 ifTrue: [
            recoveredBlock9Stack1 := recoveredArg2.
            recoveredBlock9PC := 32.
        ].
        recoveredBlock9Step = 32 ifTrue: [
            recoveredBlock9Stack2 := recoveredBlock9Arg1.
            recoveredBlock9PC := 33.
        ].
        recoveredBlock9Step = 33 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) value: (recoveredBlock9Stack2).
            recoveredBlock9PC := 34.
        ].
        recoveredBlock9Step = 34 ifTrue: [
            recoveredBlock9Result := recoveredBlock9Stack1.
            recoveredBlock9Done := true.
        ].
    ].
    recoveredBlock9Result
].
    recoveredValue3 := (recoveredValue0) createWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20288358; bytecode file offset 0xb84c24"
!CwWidget methodsFor: 'recovered'!
widgetNamed: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) asString.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) allChildren.
    recoveredValue3 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 recoveredBlock12Value4 recoveredBlock12Value5 |
    recoveredBlock12Value0 := recoveredBlock12Arg1.
    recoveredBlock12Value1 := (recoveredBlock12Value0) realWidget.
    recoveredBlock12Value2 := (recoveredBlock12Value1) extendedWidgetOrSelf.
    recoveredBlock12Value3 := (recoveredBlock12Value2) name.
    recoveredBlock12Value4 := recoveredLocal1.
    recoveredBlock12Value5 := (recoveredBlock12Value3) = (recoveredBlock12Value4).
    recoveredBlock12Value5
].
    recoveredValue4 := [
    ^nil
].
    recoveredValue5 := (recoveredValue2) detect: (recoveredValue3) ifNone: (recoveredValue4).
    recoveredValue6 := (recoveredValue5) realWidget.
    recoveredValue7 := (recoveredValue6) extendedWidgetOrSelf.
    recoveredValue8 := (recoveredValue7) extendedWidgetOrSelf.
    ^recoveredValue8
! !

"ASDBase.ic method 0x202a6080; bytecode file offset 0xba2948"
!CwWidget methodsFor: 'recovered'!
createEtasPulldownMenu: recoveredArg1 argBlock: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := EtasRowColumn.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Stack0 recoveredBlock10Stack1 recoveredBlock10Stack2 recoveredBlock10Stack3 recoveredBlock10PC recoveredBlock10Step recoveredBlock10Done recoveredBlock10Result |
    recoveredBlock10Stack0 := self.
    recoveredBlock10PC := 16.
    recoveredBlock10Done := false.
    [recoveredBlock10Done not] whileTrue: [
        recoveredBlock10Step := recoveredBlock10PC.
        recoveredBlock10Step = 16 ifTrue: [
            recoveredBlock10Stack1 := recoveredBlock10Arg1.
            recoveredBlock10PC := 17.
        ].
        recoveredBlock10Step = 17 ifTrue: [
            recoveredBlock10Stack2 := XmMENUPULLDOWN.
            recoveredBlock10PC := 19.
        ].
        recoveredBlock10Step = 19 ifTrue: [
            (recoveredBlock10Stack1) rowColumnType: (recoveredBlock10Stack2).
            recoveredBlock10PC := 21.
        ].
        recoveredBlock10Step = 21 ifTrue: [
            recoveredBlock10Stack1 := nil.
            recoveredBlock10PC := 22.
        ].
        recoveredBlock10Step = 22 ifTrue: [
            recoveredBlock10Stack2 := recoveredArg2.
            recoveredBlock10PC := 25.
        ].
        recoveredBlock10Step = 25 ifTrue: [
            (recoveredBlock10Stack2 == nil) ifTrue: [recoveredBlock10PC := 34] ifFalse: [recoveredBlock10PC := 28].
        ].
        recoveredBlock10Step = 28 ifTrue: [
            recoveredBlock10PC := 29.
        ].
        recoveredBlock10Step = 29 ifTrue: [
            recoveredBlock10Stack1 := recoveredArg2.
            recoveredBlock10PC := 32.
        ].
        recoveredBlock10Step = 32 ifTrue: [
            recoveredBlock10Stack2 := recoveredBlock10Arg1.
            recoveredBlock10PC := 33.
        ].
        recoveredBlock10Step = 33 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) value: (recoveredBlock10Stack2).
            recoveredBlock10PC := 34.
        ].
        recoveredBlock10Step = 34 ifTrue: [
            recoveredBlock10Result := recoveredBlock10Stack1.
            recoveredBlock10Done := true.
        ].
    ].
    recoveredBlock10Result
].
    recoveredValue3 := (recoveredValue0) createPopupWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x202a62c8; bytecode file offset 0xba2b90"
!CwWidget methodsFor: 'recovered'!
createEtasPopupMenu: recoveredArg1 argBlock: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) rowColumnClass.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [:recoveredBlock9Arg1 | 
    | recoveredBlock9Stack0 recoveredBlock9Stack1 recoveredBlock9Stack2 recoveredBlock9Stack3 recoveredBlock9PC recoveredBlock9Step recoveredBlock9Done recoveredBlock9Result |
    recoveredBlock9Stack0 := self.
    recoveredBlock9PC := 16.
    recoveredBlock9Done := false.
    [recoveredBlock9Done not] whileTrue: [
        recoveredBlock9Step := recoveredBlock9PC.
        recoveredBlock9Step = 16 ifTrue: [
            recoveredBlock9Stack1 := recoveredBlock9Arg1.
            recoveredBlock9PC := 17.
        ].
        recoveredBlock9Step = 17 ifTrue: [
            recoveredBlock9Stack2 := XmMENUPOPUP.
            recoveredBlock9PC := 19.
        ].
        recoveredBlock9Step = 19 ifTrue: [
            (recoveredBlock9Stack1) rowColumnType: (recoveredBlock9Stack2).
            recoveredBlock9PC := 21.
        ].
        recoveredBlock9Step = 21 ifTrue: [
            recoveredBlock9Stack1 := nil.
            recoveredBlock9PC := 22.
        ].
        recoveredBlock9Step = 22 ifTrue: [
            recoveredBlock9Stack2 := recoveredArg2.
            recoveredBlock9PC := 25.
        ].
        recoveredBlock9Step = 25 ifTrue: [
            (recoveredBlock9Stack2 == nil) ifTrue: [recoveredBlock9PC := 34] ifFalse: [recoveredBlock9PC := 28].
        ].
        recoveredBlock9Step = 28 ifTrue: [
            recoveredBlock9PC := 29.
        ].
        recoveredBlock9Step = 29 ifTrue: [
            recoveredBlock9Stack1 := recoveredArg2.
            recoveredBlock9PC := 32.
        ].
        recoveredBlock9Step = 32 ifTrue: [
            recoveredBlock9Stack2 := recoveredBlock9Arg1.
            recoveredBlock9PC := 33.
        ].
        recoveredBlock9Step = 33 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) value: (recoveredBlock9Stack2).
            recoveredBlock9PC := 34.
        ].
        recoveredBlock9Step = 34 ifTrue: [
            recoveredBlock9Result := recoveredBlock9Stack1.
            recoveredBlock9Done := true.
        ].
    ].
    recoveredBlock9Result
].
    recoveredValue3 := (recoveredValue0) createPopupWidget: (recoveredValue1) parent: (self) argBlock: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x202ee58c; bytecode file offset 0xbeae68"
!CwWidget methodsFor: 'recovered'!
allRealChildrenPrim
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (self) children.
    (recoveredValue2) addAll: (recoveredValue3).
    recoveredValue4 := (self) children.
    recoveredValue5 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Value0 recoveredBlock18Value1 recoveredBlock18Value2 recoveredBlock18Value3 recoveredBlock18Value4 recoveredBlock18Value5 recoveredBlock18Value6 recoveredBlock18Value7 recoveredBlock18Value8 recoveredBlock18Value9 recoveredBlock18Value10 |
    recoveredBlock18Value0 := recoveredLocal1.
    recoveredBlock18Value1 := recoveredBlock18Value0.
    recoveredBlock18Value2 := recoveredBlock18Arg1.
    recoveredBlock18Value3 := (recoveredBlock18Value2) scrolledWidget.
    recoveredBlock18Value4 := (recoveredBlock18Value3) extendedWidgetOrSelf.
    recoveredBlock18Value5 := (recoveredBlock18Value4) allChildren.
    (recoveredBlock18Value1) addAll: (recoveredBlock18Value5).
    recoveredBlock18Value6 := recoveredBlock18Arg1.
    recoveredBlock18Value7 := (recoveredBlock18Value6) realWidget.
    recoveredBlock18Value8 := (recoveredBlock18Value7) extendedWidgetOrSelf.
    recoveredBlock18Value9 := (recoveredBlock18Value8) allRealChildrenPrim.
    recoveredBlock18Value10 := (recoveredBlock18Value0) addAll: (recoveredBlock18Value9).
    recoveredBlock18Value10
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x202fc324; bytecode file offset 0xbf8c0c"
!CwWidget methodsFor: 'recovered'!
addToolboxPopupMenuItems
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) primaryWidget.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) handlers.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := ButtonMenuMask.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := [
    #()
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Stack0 recoveredBlock19Stack1 recoveredBlock19Stack2 recoveredBlock19Stack3 recoveredBlock19Stack4 recoveredBlock19PC recoveredBlock19Step recoveredBlock19Done recoveredBlock19Result |
    recoveredBlock19Stack0 := self.
    recoveredBlock19PC := 26.
    recoveredBlock19Done := false.
    [recoveredBlock19Done not] whileTrue: [
        recoveredBlock19Step := recoveredBlock19PC.
        recoveredBlock19Step = 26 ifTrue: [
            recoveredBlock19Stack1 := nil.
            recoveredBlock19PC := 27.
        ].
        recoveredBlock19Step = 27 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Arg1.
            recoveredBlock19PC := 28.
        ].
        recoveredBlock19Step = 28 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) receiver.
            recoveredBlock19PC := 30.
        ].
        recoveredBlock19Step = 30 ifTrue: [
            recoveredBlock19Stack3 := CwMenu.
            recoveredBlock19PC := 32.
        ].
        recoveredBlock19Step = 32 ifTrue: [
            recoveredBlock19Stack3 := (recoveredBlock19Stack3) defaultMenuClass.
            recoveredBlock19PC := 34.
        ].
        recoveredBlock19Step = 34 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) isKindOf: (recoveredBlock19Stack3).
            recoveredBlock19PC := 36.
        ].
        recoveredBlock19Step = 36 ifTrue: [
            (recoveredBlock19Stack2) ifTrue: [recoveredBlock19PC := 40] ifFalse: [recoveredBlock19PC := 49].
        ].
        recoveredBlock19Step = 40 ifTrue: [
            recoveredBlock19PC := 41.
        ].
        recoveredBlock19Step = 41 ifTrue: [
            recoveredBlock19Stack1 := recoveredBlock19Arg1.
            recoveredBlock19PC := 42.
        ].
        recoveredBlock19Step = 42 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) receiver.
            recoveredBlock19PC := 44.
        ].
        recoveredBlock19Step = 44 ifTrue: [
            recoveredBlock19Stack2 := self.
            recoveredBlock19PC := 45.
        ].
        recoveredBlock19Step = 45 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) getUserInterface.
            recoveredBlock19PC := 47.
        ].
        recoveredBlock19Step = 47 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) addToolboxMenuItemsFor: (recoveredBlock19Stack2).
            recoveredBlock19PC := 49.
        ].
        recoveredBlock19Step = 49 ifTrue: [
            recoveredBlock19Result := recoveredBlock19Stack1.
            recoveredBlock19Done := true.
        ].
    ].
    recoveredBlock19Result
].
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20307ab8; bytecode file offset 0xc04390"
!CwWidget methodsFor: 'recovered'!
getHelpForActionKeysDict
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) getActionKeys.
    recoveredValue3 := [:recoveredBlock11Arg1 :recoveredBlock11Arg2 | 
    | recoveredBlock11Local1 recoveredBlock11Stack0 recoveredBlock11Stack1 recoveredBlock11Stack2 recoveredBlock11Stack3 recoveredBlock11PC recoveredBlock11Step recoveredBlock11Done recoveredBlock11Result |
    recoveredBlock11Stack0 := self.
    recoveredBlock11PC := 18.
    recoveredBlock11Done := false.
    [recoveredBlock11Done not] whileTrue: [
        recoveredBlock11Step := recoveredBlock11PC.
        recoveredBlock11Step = 18 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Arg1.
            recoveredBlock11PC := 19.
        ].
        recoveredBlock11Step = 19 ifTrue: [
            recoveredBlock11Stack0 := (recoveredBlock11Stack0) getStringForActionKey: (recoveredBlock11Stack1).
            recoveredBlock11PC := 20.
        ].
        recoveredBlock11Step = 20 ifTrue: [
            recoveredBlock11Local1 := recoveredBlock11Stack0.
            recoveredBlock11PC := 21.
        ].
        recoveredBlock11Step = 21 ifTrue: [
            recoveredBlock11Stack0 := recoveredBlock11Arg2.
            recoveredBlock11PC := 22.
        ].
        recoveredBlock11Step = 22 ifTrue: [
            recoveredBlock11Stack0 := (recoveredBlock11Stack0) isDirectedMessage.
            recoveredBlock11PC := 24.
        ].
        recoveredBlock11Step = 24 ifTrue: [
            (recoveredBlock11Stack0) ifTrue: [recoveredBlock11PC := 28] ifFalse: [recoveredBlock11PC := 40].
        ].
        recoveredBlock11Step = 28 ifTrue: [
            recoveredBlock11Stack0 := recoveredLocal1.
            recoveredBlock11PC := 31.
        ].
        recoveredBlock11Step = 31 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Local1.
            recoveredBlock11PC := 32.
        ].
        recoveredBlock11Step = 32 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg2.
            recoveredBlock11PC := 33.
        ].
        recoveredBlock11Step = 33 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) text.
            recoveredBlock11PC := 35.
        ].
        recoveredBlock11Step = 35 ifTrue: [
            recoveredBlock11Stack0 := (recoveredBlock11Stack0) at: (recoveredBlock11Stack1) put: (recoveredBlock11Stack2).
            recoveredBlock11PC := 37.
        ].
        recoveredBlock11Step = 37 ifTrue: [
            recoveredBlock11PC := 48.
        ].
        recoveredBlock11Step = 40 ifTrue: [
            recoveredBlock11Stack0 := recoveredLocal1.
            recoveredBlock11PC := 43.
        ].
        recoveredBlock11Step = 43 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Local1.
            recoveredBlock11PC := 44.
        ].
        recoveredBlock11Step = 44 ifTrue: [
            recoveredBlock11Stack2 := ''.
            recoveredBlock11PC := 46.
        ].
        recoveredBlock11Step = 46 ifTrue: [
            recoveredBlock11Stack0 := (recoveredBlock11Stack0) at: (recoveredBlock11Stack1) put: (recoveredBlock11Stack2).
            recoveredBlock11PC := 48.
        ].
        recoveredBlock11Step = 48 ifTrue: [
            recoveredBlock11Result := recoveredBlock11Stack0.
            recoveredBlock11Done := true.
        ].
    ].
    recoveredBlock11Result
].
    (recoveredValue2) keysAndValuesDo: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x20376380; bytecode file offset 0xc72c5c"
!CwWidget methodsFor: 'recovered'!
getCurrentPopupMenu
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) primaryWidget.
    recoveredValue1 := (recoveredValue0) handlers.
    recoveredValue2 := ButtonMenuMask.
    recoveredValue3 := [
    ^nil
].
    recoveredValue4 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Stack0 recoveredBlock16Stack1 recoveredBlock16Stack2 recoveredBlock16Stack3 recoveredBlock16Stack4 recoveredBlock16PC recoveredBlock16Step recoveredBlock16Done recoveredBlock16Result |
    recoveredBlock16Stack0 := self.
    recoveredBlock16PC := 22.
    recoveredBlock16Done := false.
    [recoveredBlock16Done not] whileTrue: [
        recoveredBlock16Step := recoveredBlock16PC.
        recoveredBlock16Step = 22 ifTrue: [
            recoveredBlock16Stack1 := recoveredBlock16Arg1.
            recoveredBlock16PC := 23.
        ].
        recoveredBlock16Step = 23 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) isEmpty.
            recoveredBlock16PC := 24.
        ].
        recoveredBlock16Step = 24 ifTrue: [
            (recoveredBlock16Stack1) ifTrue: [recoveredBlock16PC := 28] ifFalse: [recoveredBlock16PC := 30].
        ].
        recoveredBlock16Step = 28 ifTrue: [
            recoveredBlock16Stack1 := nil.
            recoveredBlock16PC := 29.
        ].
        recoveredBlock16Step = 29 ifTrue: [
            ^recoveredBlock16Stack1
        ].
        recoveredBlock16Step = 30 ifTrue: [
            recoveredBlock16Stack1 := recoveredBlock16Arg1.
            recoveredBlock16PC := 31.
        ].
        recoveredBlock16Step = 31 ifTrue: [
            recoveredBlock16Stack2 := [:block280f1f44Arg1 | 
    | block280f1f44Value0 block280f1f44Value1 block280f1f44Value2 |
    block280f1f44Value0 := block280f1f44Arg1.
    block280f1f44Value1 := (block280f1f44Value0) receiver.
    block280f1f44Value2 := (block280f1f44Value1) isCwMenu.
    block280f1f44Value2
].
            recoveredBlock16PC := 33.
        ].
        recoveredBlock16Step = 33 ifTrue: [
            recoveredBlock16PC := 42.
        ].
        recoveredBlock16Step = 42 ifTrue: [
            recoveredBlock16Stack3 := [
    ^nil
].
            recoveredBlock16PC := 50.
        ].
        recoveredBlock16Step = 50 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) detect: (recoveredBlock16Stack2) ifNone: (recoveredBlock16Stack3).
            recoveredBlock16PC := 52.
        ].
        recoveredBlock16Step = 52 ifTrue: [
            recoveredBlock16Stack2 := [:recoveredBlock16Block52Arg1 | 
    | recoveredBlock16Block52Value0 recoveredBlock16Block52Value1 |
    recoveredBlock16Block52Value0 := recoveredBlock16Block52Arg1.
    recoveredBlock16Block52Value1 := (recoveredBlock16Block52Value0) receiver.
    ^recoveredBlock16Block52Value1
].
            recoveredBlock16PC := 62.
        ].
        recoveredBlock16Step = 62 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) ifNotNil: (recoveredBlock16Stack2).
            recoveredBlock16PC := 64.
        ].
        recoveredBlock16Step = 64 ifTrue: [
            recoveredBlock16Result := recoveredBlock16Stack1.
            recoveredBlock16Done := true.
        ].
    ].
    recoveredBlock16Result
].
    (recoveredValue1) at: (recoveredValue2) ifAbsent: (recoveredValue3) ifPresent: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20377ae0; bytecode file offset 0xc743b8"
!CwWidget methodsFor: 'recovered'!
properties
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := xmNuserData.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) wbIsDictionary.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 67] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := IdentityDictionary.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := 'XmNuserData'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack4 := xmNuserData.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack4 := (recoveredStack4) wbIsArray.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack4) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack4 := xmNuserData.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack4 := (recoveredStack4) size.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack5 := 2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack4 ~~ recoveredStack5) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack4 := xmNuserData.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack5 := 2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack4 := xmNuserData.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack4 := (recoveredStack4) first.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredPC := 50.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack4 := xmNuserData.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            xmNuserData := recoveredStack1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 65] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := xmNuserData.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := xmNuserData.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203a24bc; bytecode file offset 0xc9eda0"
!CwWidget methodsFor: 'recovered'!
initHelpForSubMenu: recoveredArg1 widget: recoveredArg2 userInterface: recoveredArg3 popupName: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) entries.
    recoveredValue2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Local1 recoveredBlock8Stack0 recoveredBlock8Stack1 recoveredBlock8Stack2 recoveredBlock8Stack3 recoveredBlock8Stack4 recoveredBlock8Stack5 recoveredBlock8Stack6 recoveredBlock8Stack7 recoveredBlock8PC recoveredBlock8Step recoveredBlock8Done recoveredBlock8Result |
    recoveredBlock8Stack0 := self.
    recoveredBlock8PC := 14.
    recoveredBlock8Done := false.
    [recoveredBlock8Done not] whileTrue: [
        recoveredBlock8Step := recoveredBlock8PC.
        recoveredBlock8Step = 14 ifTrue: [
            recoveredBlock8Stack1 := recoveredBlock8Arg1.
            recoveredBlock8PC := 15.
        ].
        recoveredBlock8Step = 15 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) isSeparator.
            recoveredBlock8PC := 16.
        ].
        recoveredBlock8Step = 16 ifTrue: [
            (recoveredBlock8Stack1) ifTrue: [recoveredBlock8PC := 43] ifFalse: [recoveredBlock8PC := 20].
        ].
        recoveredBlock8Step = 20 ifTrue: [
            recoveredBlock8Stack1 := recoveredBlock8Arg1.
            recoveredBlock8PC := 21.
        ].
        recoveredBlock8Step = 21 ifTrue: [
            recoveredBlock8Stack2 := DirectedMessage.
            recoveredBlock8PC := 23.
        ].
        recoveredBlock8Step = 23 ifTrue: [
            recoveredBlock8Stack3 := 'activateHelpForPopupMenuItem:widget:'.
            recoveredBlock8PC := 25.
        ].
        recoveredBlock8Step = 25 ifTrue: [
            recoveredBlock8Stack4 := Array.
            recoveredBlock8PC := 27.
        ].
        recoveredBlock8Step = 27 ifTrue: [
            recoveredBlock8Stack5 := recoveredArg4.
            recoveredBlock8PC := 30.
        ].
        recoveredBlock8Step = 30 ifTrue: [
            recoveredBlock8Stack6 := recoveredArg2.
            recoveredBlock8PC := 33.
        ].
        recoveredBlock8Step = 33 ifTrue: [
            recoveredBlock8Stack4 := (recoveredBlock8Stack4) with: (recoveredBlock8Stack5) with: (recoveredBlock8Stack6).
            recoveredBlock8PC := 35.
        ].
        recoveredBlock8Step = 35 ifTrue: [
            recoveredBlock8Stack5 := recoveredArg3.
            recoveredBlock8PC := 38.
        ].
        recoveredBlock8Step = 38 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) selector: (recoveredBlock8Stack3) arguments: (recoveredBlock8Stack4) receiver: (recoveredBlock8Stack5).
            recoveredBlock8PC := 41.
        ].
        recoveredBlock8Step = 41 ifTrue: [
            (recoveredBlock8Stack1) help: (recoveredBlock8Stack2).
            recoveredBlock8PC := 43.
        ].
        recoveredBlock8Step = 43 ifTrue: [
            recoveredBlock8Stack1 := nil.
            recoveredBlock8PC := 44.
        ].
        recoveredBlock8Step = 44 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Arg1.
            recoveredBlock8PC := 45.
        ].
        recoveredBlock8Step = 45 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) isCascadeButton.
            recoveredBlock8PC := 47.
        ].
        recoveredBlock8Step = 47 ifTrue: [
            (recoveredBlock8Stack2) ifTrue: [recoveredBlock8PC := 50] ifFalse: [recoveredBlock8PC := 73].
        ].
        recoveredBlock8Step = 50 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Arg1.
            recoveredBlock8PC := 51.
        ].
        recoveredBlock8Step = 51 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) subMenu.
            recoveredBlock8PC := 53.
        ].
        recoveredBlock8Step = 53 ifTrue: [
            (recoveredBlock8Stack2 == nil) ifTrue: [recoveredBlock8PC := 73] ifFalse: [recoveredBlock8PC := 56].
        ].
        recoveredBlock8Step = 56 ifTrue: [
            recoveredBlock8PC := 57.
        ].
        recoveredBlock8Step = 57 ifTrue: [
            recoveredBlock8Stack1 := self.
            recoveredBlock8PC := 58.
        ].
        recoveredBlock8Step = 58 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Arg1.
            recoveredBlock8PC := 59.
        ].
        recoveredBlock8Step = 59 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) subMenu.
            recoveredBlock8PC := 61.
        ].
        recoveredBlock8Step = 61 ifTrue: [
            recoveredBlock8Stack3 := recoveredArg2.
            recoveredBlock8PC := 64.
        ].
        recoveredBlock8Step = 64 ifTrue: [
            recoveredBlock8Stack4 := recoveredArg3.
            recoveredBlock8PC := 67.
        ].
        recoveredBlock8Step = 67 ifTrue: [
            recoveredBlock8Stack5 := recoveredArg4.
            recoveredBlock8PC := 70.
        ].
        recoveredBlock8Step = 70 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) initHelpForSubMenu: (recoveredBlock8Stack2) widget: (recoveredBlock8Stack3) userInterface: (recoveredBlock8Stack4) popupName: (recoveredBlock8Stack5).
            recoveredBlock8PC := 73.
        ].
        recoveredBlock8Step = 73 ifTrue: [
            recoveredBlock8Result := recoveredBlock8Stack1.
            recoveredBlock8Done := true.
        ].
    ].
    recoveredBlock8Result
].
    (recoveredValue1) do: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20419c18; bytecode file offset 0xd16508"
!CwWidget methodsFor: 'recovered'!
triggerCallback: recoveredArg1 callData: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) isExtendedCallback: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) extendedCallbacks.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := [
    ^self
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredPC := 56.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := [
    | recoveredBlock30Value0 recoveredBlock30Value1 |
    recoveredBlock30Value0 := recoveredArg1.
    recoveredBlock30Value1 := (self) perform: (recoveredBlock30Value0).
    recoveredBlock30Value1
].
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := ExError.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := [:block280fbc34Arg1 | 
    | block280fbc34Value0 block280fbc34Value1 |
    block280fbc34Value0 := block280fbc34Arg1.
    block280fbc34Value1 := (block280fbc34Value0) exitWith: (#()).
    block280fbc34Value1
].
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) when: (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := [:block280fbc58Arg1 | 
    | block280fbc58Stack0 block280fbc58Stack1 block280fbc58Stack2 block280fbc58Stack3 block280fbc58Stack4 block280fbc58PC block280fbc58Step block280fbc58Done block280fbc58Result |
    block280fbc58Stack0 := self.
    block280fbc58PC := 4.
    block280fbc58Done := false.
    [block280fbc58Done not] whileTrue: [
        block280fbc58Step := block280fbc58PC.
        block280fbc58Step = 4 ifTrue: [
            block280fbc58Stack1 := false.
            block280fbc58PC := 5.
        ].
        block280fbc58Step = 5 ifTrue: [
            block280fbc58Stack2 := block280fbc58Arg1.
            block280fbc58PC := 6.
        ].
        block280fbc58Step = 6 ifTrue: [
            block280fbc58Stack2 := (block280fbc58Stack2) class.
            block280fbc58PC := 8.
        ].
        block280fbc58Step = 8 ifTrue: [
            block280fbc58Stack3 := CwCallbackRec.
            block280fbc58PC := 10.
        ].
        block280fbc58Step = 10 ifTrue: [
            (block280fbc58Stack2 ~~ block280fbc58Stack3) ifTrue: [block280fbc58PC := 19] ifFalse: [block280fbc58PC := 14].
        ].
        block280fbc58Step = 14 ifTrue: [
            block280fbc58PC := 15.
        ].
        block280fbc58Step = 15 ifTrue: [
            block280fbc58Stack1 := block280fbc58Arg1.
            block280fbc58PC := 16.
        ].
        block280fbc58Step = 16 ifTrue: [
            block280fbc58Stack1 := (block280fbc58Stack1) receiver.
            block280fbc58PC := 18.
        ].
        block280fbc58Step = 18 ifTrue: [
            block280fbc58Stack1 := (block280fbc58Stack1) notNil.
            block280fbc58PC := 19.
        ].
        block280fbc58Step = 19 ifTrue: [
            block280fbc58Result := block280fbc58Stack1.
            block280fbc58Done := true.
        ].
    ].
    block280fbc58Result
].
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack0) callCallbackList: (recoveredStack1) callData: (recoveredStack2).
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

"ASDBase.ic method 0x204bac64; bytecode file offset 0xdb7570"
!CwWidget methodsFor: 'recovered'!
triggerCallback: recoveredArg1 withArguments: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) isExtendedCallback: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) extendedCallbacks.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := [
    ^self
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredPC := 56.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := [
    | recoveredBlock30Value0 recoveredBlock30Value1 |
    recoveredBlock30Value0 := recoveredArg1.
    recoveredBlock30Value1 := (self) perform: (recoveredBlock30Value0).
    recoveredBlock30Value1
].
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := ExError.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := [:block28106060Arg1 | 
    | block28106060Value0 block28106060Value1 |
    block28106060Value0 := block28106060Arg1.
    block28106060Value1 := (block28106060Value0) exitWith: (#()).
    block28106060Value1
].
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) when: (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := [:block28106084Arg1 | 
    | block28106084Stack0 block28106084Stack1 block28106084Stack2 block28106084Stack3 block28106084Stack4 block28106084PC block28106084Step block28106084Done block28106084Result |
    block28106084Stack0 := self.
    block28106084PC := 4.
    block28106084Done := false.
    [block28106084Done not] whileTrue: [
        block28106084Step := block28106084PC.
        block28106084Step = 4 ifTrue: [
            block28106084Stack1 := false.
            block28106084PC := 5.
        ].
        block28106084Step = 5 ifTrue: [
            block28106084Stack2 := block28106084Arg1.
            block28106084PC := 6.
        ].
        block28106084Step = 6 ifTrue: [
            block28106084Stack2 := (block28106084Stack2) class.
            block28106084PC := 8.
        ].
        block28106084Step = 8 ifTrue: [
            block28106084Stack3 := CwCallbackRec.
            block28106084PC := 10.
        ].
        block28106084Step = 10 ifTrue: [
            (block28106084Stack2 ~~ block28106084Stack3) ifTrue: [block28106084PC := 19] ifFalse: [block28106084PC := 14].
        ].
        block28106084Step = 14 ifTrue: [
            block28106084PC := 15.
        ].
        block28106084Step = 15 ifTrue: [
            block28106084Stack1 := block28106084Arg1.
            block28106084PC := 16.
        ].
        block28106084Step = 16 ifTrue: [
            block28106084Stack1 := (block28106084Stack1) receiver.
            block28106084PC := 18.
        ].
        block28106084Step = 18 ifTrue: [
            block28106084Stack1 := (block28106084Stack1) notNil.
            block28106084PC := 19.
        ].
        block28106084Step = 19 ifTrue: [
            block28106084Result := block28106084Stack1.
            block28106084Done := true.
        ].
    ].
    block28106084Result
].
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := (recoveredStack0) wbIsCollection.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 98] ifFalse: [recoveredPC := 130].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) isString.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 130] ifFalse: [recoveredPC := 106].
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := WbExtendedCallbackData.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack2 := XmCRNONE.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack1) reason: (recoveredStack2).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            (recoveredStack0) data: (recoveredStack1).
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredPC := 136.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            (recoveredStack0) callCallbackList: (recoveredStack1) callData: (recoveredStack2).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204bcacc; bytecode file offset 0xdb93ec"
!CwWidget methodsFor: 'recovered'!
reparentTo: recoveredArg1 asFirstChild: recoveredArg2 updateBlock: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allChildren.
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
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) unmapWidget.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRowColumn.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRowColumn.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0 == recoveredStack1) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRowColumn.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := CwRowColumnConstraint.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredPC := 54.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := CwFormConstraint.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) constraints: (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) basicWidget.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack1) deleteChild: (recoveredStack2).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) redraw.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) basicWidget.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack0) insertChild: (recoveredStack1).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) isScrolledWindow.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0) workWindow: (recoveredStack1).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := (recoveredStack1) basicWidget.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack0) parent: (recoveredStack1).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 95] ifFalse: [recoveredPC := 92].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack0) value.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := (recoveredStack0) osWidget.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := (recoveredStack1) osWidget.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack0) remove: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := (recoveredStack0) osWidget.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := (recoveredStack1) osWidget.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := (recoveredStack0) osWidget.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := (recoveredStack2) osWidget.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack1) parent: (recoveredStack2).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            (recoveredStack0) reparent.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 128] ifFalse: [recoveredPC := 143].
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            (recoveredStack0) bringToFront.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := (recoveredStack0) basicWidget.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            (recoveredStack1) remove: (recoveredStack2).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            (recoveredStack0) addFirst: (recoveredStack1).
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            (recoveredStack0) mapWidget.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205142a0; bytecode file offset 0xe10b84"
!CwWidget methodsFor: 'recovered'!
callCallbackList: recoveredArg1 callData: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) callWith: (recoveredStack2) callData: (recoveredStack3).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack1) callWith: (recoveredStack2) callData: (recoveredStack3).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack1) callWith: (recoveredStack2) callData: (recoveredStack3).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := 3.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 160] ifFalse: [recoveredPC := 104].
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack2 := 3.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            (recoveredStack1) callWith: (recoveredStack2) callData: (recoveredStack3).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            (recoveredStack1) callWith: (recoveredStack2) callData: (recoveredStack3).
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            (recoveredStack1) callWith: (recoveredStack2) callData: (recoveredStack3).
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack1 := (recoveredStack1) copy.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack2 := [:recoveredBlock170Arg1 | 
    | recoveredBlock170Value0 recoveredBlock170Value1 recoveredBlock170Value2 |
    recoveredBlock170Value0 := recoveredBlock170Arg1.
    recoveredBlock170Value1 := recoveredArg2.
    recoveredBlock170Value2 := (recoveredBlock170Value0) callWith: (self) callData: (recoveredBlock170Value1).
    recoveredBlock170Value2
].
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

