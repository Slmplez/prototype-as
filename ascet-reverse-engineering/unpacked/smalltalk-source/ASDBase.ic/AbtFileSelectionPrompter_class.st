"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001775c; bytecode file offset 0x92209c"
!AbtFileSelectionPrompter class methodsFor: 'recovered'!
IS_ok
    | recoveredValue0 |
    recoveredValue0 := (AbtEventSpec new) symbol: ('ok'); parameters: ((OrderedCollection new) add: ((AbtParameterSpec new) parameterClass: ('String'); parameterName: ('selectedFileName'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); yourself); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001bac4; bytecode file offset 0x92209c"
!AbtFileSelectionPrompter class methodsFor: 'recovered'!
IS_promptFor_
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('promptFor:'); parameters: ((OrderedCollection new) add: ((AbtParameterSpec new) parameterClass: ('Object'); parameterName: ('associatedPart'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); yourself); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001c3c4; bytecode file offset 0x92209c"
!AbtFileSelectionPrompter class methodsFor: 'recovered'!
IS_title
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (String); getSelector: ('title'); setSelector: ('title:'); changeSymbol: ('title'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001e6bc; bytecode file offset 0x92209c"
!AbtFileSelectionPrompter class methodsFor: 'recovered'!
IS_searchMask
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (String); getSelector: ('searchMask'); setSelector: ('searchMask:'); changeSymbol: ('searchMask'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200209e4; bytecode file offset 0x92209c"
!AbtFileSelectionPrompter class methodsFor: 'recovered'!
IS_prompterStyle
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('prompterStyle'); setSelector: ('prompterStyle:'); changeSymbol: ('prompterStyle'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20020c0c; bytecode file offset 0x92209c"
!AbtFileSelectionPrompter class methodsFor: 'recovered'!
IS_defaultFileName
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (String); getSelector: ('defaultFileName'); setSelector: ('defaultFileName:'); changeSymbol: ('defaultFileName'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20020f24; bytecode file offset 0x92209c"
!AbtFileSelectionPrompter class methodsFor: 'recovered'!
IS_cancel
    | recoveredValue0 |
    recoveredValue0 := (AbtEventSpec new) symbol: ('cancel'); parameters: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20021854; bytecode file offset 0x92209c"
!AbtFileSelectionPrompter class methodsFor: 'recovered'!
IS_prompt
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('prompt'); parameters: (nil); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20021b78; bytecode file offset 0x92209c"
!AbtFileSelectionPrompter class methodsFor: 'recovered'!
IS_searchPath
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (String); getSelector: ('searchPath'); setSelector: ('searchPath:'); changeSymbol: ('searchPath'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20024ee4; bytecode file offset 0x92209c"
!AbtFileSelectionPrompter class methodsFor: 'recovered'!
IS_selectedFileName
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (String); getSelector: ('selectedFileName'); setSelector: ('selectedFileName:'); changeSymbol: ('selectedFileName'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20025cfc; bytecode file offset 0x923928"
!AbtFileSelectionPrompter class methodsFor: 'recovered'!
IS_accessType
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('accessType'); setSelector: ('accessType:'); changeSymbol: ('accessType'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x203fc9fc; bytecode file offset 0xcf9314"
!AbtFileSelectionPrompter class methodsFor: 'recovered'!
IS_instanceInterfaceSpec
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 |
    recoveredValue0 := AbtInterfaceSpec.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) IS_accessType.
    (recoveredValue2) featureNamed: ('accessType') put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) IS_prompterStyle.
    (recoveredValue4) featureNamed: ('prompterStyle') put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := (self) IS_searchMask.
    (recoveredValue6) featureNamed: ('searchMask') put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := (self) IS_searchPath.
    (recoveredValue8) featureNamed: ('searchPath') put: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := (self) IS_title.
    (recoveredValue10) featureNamed: ('title') put: (recoveredValue11).
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := (self) IS_ok.
    (recoveredValue12) featureNamed: ('ok') put: (recoveredValue13).
    recoveredValue14 := recoveredValue1.
    recoveredValue15 := (self) IS_cancel.
    (recoveredValue14) featureNamed: ('cancel') put: (recoveredValue15).
    recoveredValue16 := recoveredValue1.
    recoveredValue17 := (self) IS_prompt.
    (recoveredValue16) featureNamed: ('prompt') put: (recoveredValue17).
    recoveredValue18 := recoveredValue1.
    recoveredValue19 := (self) IS_promptFor_.
    (recoveredValue18) featureNamed: ('promptFor:') put: (recoveredValue19).
    recoveredValue20 := recoveredValue1.
    recoveredValue21 := (self) IS_defaultFileName.
    (recoveredValue20) featureNamed: ('defaultFileName') put: (recoveredValue21).
    recoveredValue22 := (self) IS_selectedFileName.
    recoveredValue23 := (recoveredValue1) featureNamed: ('selectedFileName') put: (recoveredValue22).
    ^recoveredValue23
! !

