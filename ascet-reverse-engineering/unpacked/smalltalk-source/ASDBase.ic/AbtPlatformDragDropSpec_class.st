"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001739c; bytecode file offset 0x92209c"
!AbtPlatformDragDropSpec class methodsFor: 'recovered'!
IS_dropTransferRequested
    | recoveredValue0 |
    recoveredValue0 := (AbtEventSpec new) symbol: ('dropTransferRequested'); parameters: ((OrderedCollection new) add: ((AbtParameterSpec new) parameterClass: ('CwTransferProcCallbackData'); parameterName: ('dropTransferData'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); add: ((AbtParameterSpec new) parameterClass: ('CwDropTransfer'); parameterName: ('dropTransferObject'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); add: ((AbtParameterSpec new) parameterClass: ('CwDropProcCallbackData'); parameterName: ('dropData'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); yourself); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20018818; bytecode file offset 0x92209c"
!AbtPlatformDragDropSpec class methodsFor: 'recovered'!
IS_dragUpdateRequested
    | recoveredValue0 |
    recoveredValue0 := (AbtEventSpec new) symbol: ('dragUpdateRequested'); parameters: ((OrderedCollection new) add: ((AbtParameterSpec new) parameterClass: ('CwDragProcCallbackData'); parameterName: ('dragUpdateData'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); yourself); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20018ee4; bytecode file offset 0x92209c"
!AbtPlatformDragDropSpec class methodsFor: 'recovered'!
IS_dragConvertRequested
    | recoveredValue0 |
    recoveredValue0 := (AbtEventSpec new) symbol: ('dragConvertRequested'); parameters: ((OrderedCollection new) add: ((AbtParameterSpec new) parameterClass: ('CwConvertProcCallbackData'); parameterName: ('dragConvertData'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); yourself); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20019e14; bytecode file offset 0x92209c"
!AbtPlatformDragDropSpec class methodsFor: 'recovered'!
IS_dragOperations
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('dragOperations'); setSelector: ('dragOperations:'); changeSymbol: ('dragOperationsChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001b4d0; bytecode file offset 0x92209c"
!AbtPlatformDragDropSpec class methodsFor: 'recovered'!
IS_exportTargetTypes
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Array); getSelector: ('exportTargetTypes'); setSelector: ('exportTargetTypes:'); changeSymbol: ('exportTargetTypesChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001c64c; bytecode file offset 0x92209c"
!AbtPlatformDragDropSpec class methodsFor: 'recovered'!
IS_importTargetTypes
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Array); getSelector: ('importTargetTypes'); setSelector: ('importTargetTypes:'); changeSymbol: ('importTargetTypesChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001da20; bytecode file offset 0x92209c"
!AbtPlatformDragDropSpec class methodsFor: 'recovered'!
IS_dragDetected
    | recoveredValue0 |
    recoveredValue0 := (AbtEventSpec new) symbol: ('dragDetected'); parameters: ((OrderedCollection new) add: ((AbtParameterSpec new) parameterClass: ('CwDragDetectCallbackData'); parameterName: ('dragDetectedData'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); add: ((AbtParameterSpec new) parameterClass: ('AbtPlatformDragStartData'); parameterName: ('dragStartData'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); yourself); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200201d4; bytecode file offset 0x92209c"
!AbtPlatformDragDropSpec class methodsFor: 'recovered'!
IS_dragSourceIconDescriptor
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (AbtIconDescriptor); getSelector: ('dragSourceIconDescriptor'); setSelector: ('dragSourceIconDescriptor:'); changeSymbol: ('dragSourceIconDescriptorChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20021980; bytecode file offset 0x92209c"
!AbtPlatformDragDropSpec class methodsFor: 'recovered'!
IS_dropOperations
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('dropOperations'); setSelector: ('dropOperations:'); changeSymbol: ('dropOperationsChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20026014; bytecode file offset 0x923928"
!AbtPlatformDragDropSpec class methodsFor: 'recovered'!
IS_dropRequested
    | recoveredValue0 |
    recoveredValue0 := (AbtEventSpec new) symbol: ('dropRequested'); parameters: ((OrderedCollection new) add: ((AbtParameterSpec new) parameterClass: ('CwDropProcCallbackData'); parameterName: ('dropData'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); add: ((AbtParameterSpec new) parameterClass: ('AbtPlatformDropTransferStartData'); parameterName: ('dropTransferStartData'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); yourself); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x203d4c34; bytecode file offset 0xcd1544"
!AbtPlatformDragDropSpec class methodsFor: 'recovered'!
IS_instanceInterfaceSpec
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 |
    recoveredValue0 := AbtInterfaceSpec.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) IS_dragOperations.
    (recoveredValue2) featureNamed: ('dragOperations') put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) IS_dropOperations.
    (recoveredValue4) featureNamed: ('dropOperations') put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := (self) IS_dragSourceIconDescriptor.
    (recoveredValue6) featureNamed: ('dragSourceIconDescriptor') put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := (self) IS_exportTargetTypes.
    (recoveredValue8) featureNamed: ('exportTargetTypes') put: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := (self) IS_importTargetTypes.
    (recoveredValue10) featureNamed: ('importTargetTypes') put: (recoveredValue11).
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := (self) IS_dragDetected.
    (recoveredValue12) featureNamed: ('dragDetected') put: (recoveredValue13).
    recoveredValue14 := recoveredValue1.
    recoveredValue15 := (self) IS_dragConvertRequested.
    (recoveredValue14) featureNamed: ('dragConvertRequested') put: (recoveredValue15).
    recoveredValue16 := recoveredValue1.
    recoveredValue17 := (self) IS_dragUpdateRequested.
    (recoveredValue16) featureNamed: ('dragUpdateRequested') put: (recoveredValue17).
    recoveredValue18 := recoveredValue1.
    recoveredValue19 := (self) IS_dropRequested.
    (recoveredValue18) featureNamed: ('dropRequested') put: (recoveredValue19).
    recoveredValue20 := (self) IS_dropTransferRequested.
    recoveredValue21 := (recoveredValue1) featureNamed: ('dropTransferRequested') put: (recoveredValue20).
    ^recoveredValue21
! !

