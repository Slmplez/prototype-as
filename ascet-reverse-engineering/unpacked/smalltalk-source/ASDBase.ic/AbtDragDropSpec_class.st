"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200172f4; bytecode file offset 0x92209c"
!AbtDragDropSpec class methodsFor: 'recovered'!
IS_dragSourceCancelled
    | recoveredValue0 |
    recoveredValue0 := (AbtEventSpec new) symbol: ('dragSourceCancelled'); parameters: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200193ac; bytecode file offset 0x92209c"
!AbtDragDropSpec class methodsFor: 'recovered'!
IS_dragOver
    | recoveredValue0 |
    recoveredValue0 := (AbtEventSpec new) symbol: ('dragOver'); parameters: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20019d00; bytecode file offset 0x92209c"
!AbtDragDropSpec class methodsFor: 'recovered'!
IS_dragCompleteRequested
    | recoveredValue0 |
    recoveredValue0 := (AbtEventSpec new) symbol: ('dragCompleteRequested'); parameters: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001b7dc; bytecode file offset 0x92209c"
!AbtDragDropSpec class methodsFor: 'recovered'!
IS_dragChanged
    | recoveredValue0 |
    recoveredValue0 := (AbtEventSpec new) symbol: ('dragChanged'); parameters: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001ca18; bytecode file offset 0x92209c"
!AbtDragDropSpec class methodsFor: 'recovered'!
IS_dragTargetCancelled
    | recoveredValue0 |
    recoveredValue0 := (AbtEventSpec new) symbol: ('dragTargetCancelled'); parameters: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001f9b8; bytecode file offset 0x92209c"
!AbtDragDropSpec class methodsFor: 'recovered'!
IS_dropped
    | recoveredValue0 |
    recoveredValue0 := (AbtEventSpec new) symbol: ('dropped'); parameters: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200203d8; bytecode file offset 0x92209c"
!AbtDragDropSpec class methodsFor: 'recovered'!
IS_dragLeave
    | recoveredValue0 |
    recoveredValue0 := (AbtEventSpec new) symbol: ('dragLeave'); parameters: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2002390c; bytecode file offset 0x92209c"
!AbtDragDropSpec class methodsFor: 'recovered'!
IS_dropAcceptableClassList
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (OrderedCollection); getSelector: ('dropAcceptableClassList'); setSelector: ('dropAcceptableClassList:'); changeSymbol: ('dropAcceptableClassListChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20023b88; bytecode file offset 0x92209c"
!AbtDragDropSpec class methodsFor: 'recovered'!
IS_defaultDropOperations
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (OrderedCollection); getSelector: ('defaultDropOperations'); setSelector: ('defaultDropOperations:'); changeSymbol: ('defaultDropOperationsChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2002402c; bytecode file offset 0x92209c"
!AbtDragDropSpec class methodsFor: 'recovered'!
IS_defaultDragOperations
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (OrderedCollection); getSelector: ('defaultDragOperations'); setSelector: ('defaultDragOperations:'); changeSymbol: ('defaultDragOperationsChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2002602c; bytecode file offset 0x923928"
!AbtDragDropSpec class methodsFor: 'recovered'!
IS_dragStartRequested
    | recoveredValue0 |
    recoveredValue0 := (AbtEventSpec new) symbol: ('dragStartRequested'); parameters: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x203fc924; bytecode file offset 0xcf9314"
!AbtDragDropSpec class methodsFor: 'recovered'!
IS_instanceInterfaceSpec
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 |
    recoveredValue0 := AbtInterfaceSpec.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) IS_dragSourceCancelled.
    (recoveredValue2) featureNamed: ('dragSourceCancelled') put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) IS_dragTargetCancelled.
    (recoveredValue4) featureNamed: ('dragTargetCancelled') put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := (self) IS_dragStartRequested.
    (recoveredValue6) featureNamed: ('dragStartRequested') put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := (self) IS_dragChanged.
    (recoveredValue8) featureNamed: ('dragChanged') put: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := (self) IS_dragCompleteRequested.
    (recoveredValue10) featureNamed: ('dragCompleteRequested') put: (recoveredValue11).
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := (self) IS_dragOver.
    (recoveredValue12) featureNamed: ('dragOver') put: (recoveredValue13).
    recoveredValue14 := recoveredValue1.
    recoveredValue15 := (self) IS_dragLeave.
    (recoveredValue14) featureNamed: ('dragLeave') put: (recoveredValue15).
    recoveredValue16 := recoveredValue1.
    recoveredValue17 := (self) IS_dropped.
    (recoveredValue16) featureNamed: ('dropped') put: (recoveredValue17).
    recoveredValue18 := recoveredValue1.
    recoveredValue19 := (self) IS_dropAcceptableClassList.
    (recoveredValue18) featureNamed: ('dropAcceptableClassList') put: (recoveredValue19).
    recoveredValue20 := recoveredValue1.
    recoveredValue21 := (self) IS_defaultDragOperations.
    (recoveredValue20) featureNamed: ('defaultDragOperations') put: (recoveredValue21).
    recoveredValue22 := (self) IS_defaultDropOperations.
    recoveredValue23 := (recoveredValue1) featureNamed: ('defaultDropOperations') put: (recoveredValue22).
    ^recoveredValue23
! !

