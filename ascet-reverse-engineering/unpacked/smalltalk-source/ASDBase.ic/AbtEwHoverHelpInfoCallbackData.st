"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20067dc4; bytecode file offset 0x9646f8"
!AbtEwHoverHelpInfoCallbackData methodsFor: 'recovered'!
item
    | recoveredValue0 |
    recoveredValue0 := item.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069330; bytecode file offset 0x966bdc"
!AbtEwHoverHelpInfoCallbackData methodsFor: 'recovered'!
itemBoundingBoxRoot
    | recoveredValue0 |
    recoveredValue0 := itemBoundingBoxRoot.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006acfc; bytecode file offset 0x967a18"
!AbtEwHoverHelpInfoCallbackData methodsFor: 'recovered'!
pointerLocation
    | recoveredValue0 |
    recoveredValue0 := pointerLocation.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006bd30; bytecode file offset 0x96873c"
!AbtEwHoverHelpInfoCallbackData methodsFor: 'recovered'!
showTag
    | recoveredValue0 |
    recoveredValue0 := showTag.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006c0ec; bytecode file offset 0x9692b0"
!AbtEwHoverHelpInfoCallbackData methodsFor: 'recovered'!
tagPositionPolicy
    | recoveredValue0 |
    recoveredValue0 := tagPositionPolicy.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006cc10; bytecode file offset 0x969c04"
!AbtEwHoverHelpInfoCallbackData methodsFor: 'recovered'!
tagString
    | recoveredValue0 |
    recoveredValue0 := tagString.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d434; bytecode file offset 0x96a390"
!AbtEwHoverHelpInfoCallbackData methodsFor: 'recovered'!
widget
    | recoveredValue0 |
    recoveredValue0 := widget.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2008f94c; bytecode file offset 0x98c228"
!AbtEwHoverHelpInfoCallbackData methodsFor: 'recovered'!
itemBoundingBox
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) itemBoundingBoxRoot.
    recoveredValue1 := (self) widgetOriginRoot.
    recoveredValue2 := (recoveredValue1) negated.
    recoveredValue3 := (recoveredValue0) translateBy: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200b4894; bytecode file offset 0x9b1154"
!AbtEwHoverHelpInfoCallbackData methodsFor: 'recovered'!
widgetOriginRoot
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) widget.
    recoveredValue1 := (0) @ (0).
    recoveredValue2 := (recoveredValue0) translateCoords: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200bb4ac; bytecode file offset 0x9b7da8"
!AbtEwHoverHelpInfoCallbackData methodsFor: 'recovered'!
itemBoundingBox: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) widgetOriginRoot.
    recoveredValue2 := (recoveredValue0) translateBy: (recoveredValue1).
    (self) itemBoundingBoxRoot: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200be900; bytecode file offset 0x9bc0b4"
!AbtEwHoverHelpInfoCallbackData methodsFor: 'recovered'!
item: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    item := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c0b10; bytecode file offset 0x9bdf14"
!AbtEwHoverHelpInfoCallbackData methodsFor: 'recovered'!
itemBoundingBoxRoot: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    itemBoundingBoxRoot := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c1a8c; bytecode file offset 0x9beac8"
!AbtEwHoverHelpInfoCallbackData methodsFor: 'recovered'!
pointerLocation: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    pointerLocation := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c25f0; bytecode file offset 0x9bf474"
!AbtEwHoverHelpInfoCallbackData methodsFor: 'recovered'!
showTag: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    showTag := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2ff4; bytecode file offset 0x9bfde0"
!AbtEwHoverHelpInfoCallbackData methodsFor: 'recovered'!
tagPositionPolicy: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    tagPositionPolicy := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c35f8; bytecode file offset 0x9c058c"
!AbtEwHoverHelpInfoCallbackData methodsFor: 'recovered'!
tagString: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    tagString := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c3f14; bytecode file offset 0x9c0bf0"
!AbtEwHoverHelpInfoCallbackData methodsFor: 'recovered'!
widget: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    widget := recoveredValue0.
    ^self
! !

