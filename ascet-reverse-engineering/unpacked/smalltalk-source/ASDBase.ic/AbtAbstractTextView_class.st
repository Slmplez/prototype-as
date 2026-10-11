"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001479c; bytecode file offset 0x912098"
!AbtAbstractTextView class methodsFor: 'recovered'!
cwWidgetClass
    | recoveredValue0 |
    recoveredValue0 := CwText.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200174a4; bytecode file offset 0x92209c"
!AbtAbstractTextView class methodsFor: 'recovered'!
IS_columns
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('columns'); setSelector: ('columns:'); changeSymbol: ('columnsChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20017a44; bytecode file offset 0x92209c"
!AbtAbstractTextView class methodsFor: 'recovered'!
IS_getSelection
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('getSelection'); parameters: (nil); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20018650; bytecode file offset 0x92209c"
!AbtAbstractTextView class methodsFor: 'recovered'!
IS_alignment
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('alignment'); setSelector: ('alignment:'); changeSymbol: ('alignmentChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001a684; bytecode file offset 0x92209c"
!AbtAbstractTextView class methodsFor: 'recovered'!
IS_clearSelection
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('clearSelection'); parameters: (nil); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001aa44; bytecode file offset 0x92209c"
!AbtAbstractTextView class methodsFor: 'recovered'!
IS_maxLength
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('maxLength'); setSelector: ('maxLength:'); changeSymbol: ('maxLengthChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001b110; bytecode file offset 0x92209c"
!AbtAbstractTextView class methodsFor: 'recovered'!
IS_gettingFocus
    | recoveredValue0 |
    recoveredValue0 := (AbtEventSpec new) symbol: ('gettingFocus'); parameters: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001b4ac; bytecode file offset 0x92209c"
!AbtAbstractTextView class methodsFor: 'recovered'!
IS_selectTextPositionFromTo
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('selectTextFrom:to:'); parameters: ((OrderedCollection new) add: ((AbtParameterSpec new) parameterClass: ('Integer'); parameterName: ('beginCursorPosition'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); add: ((AbtParameterSpec new) parameterClass: ('Integer'); parameterName: ('endCursorPosition'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); yourself); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001b560; bytecode file offset 0x92209c"
!AbtAbstractTextView class methodsFor: 'recovered'!
IS_losingFocus
    | recoveredValue0 |
    recoveredValue0 := (AbtEventSpec new) symbol: ('losingFocus'); parameters: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001d624; bytecode file offset 0x92209c"
!AbtAbstractTextView class methodsFor: 'recovered'!
IS_remove
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('remove'); parameters: (nil); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001da14; bytecode file offset 0x92209c"
!AbtAbstractTextView class methodsFor: 'recovered'!
IS_notifyChangeOnEachKeystroke
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Boolean); getSelector: ('notifyChangeOnEachKeystroke'); setSelector: ('notifyChangeOnEachKeystroke:'); changeSymbol: ('notifyChangeOnEachKeystrokeChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001da38; bytecode file offset 0x92209c"
!AbtAbstractTextView class methodsFor: 'recovered'!
IS_cutSelection
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('cutSelection'); parameters: (nil); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001e8d8; bytecode file offset 0x92209c"
!AbtAbstractTextView class methodsFor: 'recovered'!
IS_defaultActionRequested
    | recoveredValue0 |
    recoveredValue0 := (AbtEventSpec new) symbol: ('defaultActionRequested'); parameters: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001f0c4; bytecode file offset 0x92209c"
!AbtAbstractTextView class methodsFor: 'recovered'!
IS_insertTextAtPosition
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('insert:value:'); parameters: ((OrderedCollection new) add: ((AbtParameterSpec new) parameterClass: ('Integer'); parameterName: ('afterPosition'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); add: ((AbtParameterSpec new) parameterClass: ('String'); parameterName: ('text'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); yourself); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20021620; bytecode file offset 0x92209c"
!AbtAbstractTextView class methodsFor: 'recovered'!
IS_fontName
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (String); getSelector: ('fontName'); setSelector: ('fontName:'); changeSymbol: ('fontNameChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200220ac; bytecode file offset 0x92209c"
!AbtAbstractTextView class methodsFor: 'recovered'!
IS_paste
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('paste'); parameters: (nil); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20023030; bytecode file offset 0x92209c"
!AbtAbstractTextView class methodsFor: 'recovered'!
IS_editable
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Boolean); getSelector: ('editable'); setSelector: ('editable:'); changeSymbol: ('editableChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20023258; bytecode file offset 0x92209c"
!AbtAbstractTextView class methodsFor: 'recovered'!
IS_queryCursorPosition
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('cursorPosition'); parameters: (nil); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20023558; bytecode file offset 0x92209c"
!AbtAbstractTextView class methodsFor: 'recovered'!
IS_setFocus
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('setFocus'); parameters: (nil); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20023fa8; bytecode file offset 0x92209c"
!AbtAbstractTextView class methodsFor: 'recovered'!
IS_copySelection
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('copySelection'); parameters: (nil); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20024c80; bytecode file offset 0x92209c"
!AbtAbstractTextView class methodsFor: 'recovered'!
IS_selectAll
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('selectAll'); parameters: (nil); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20024f8c; bytecode file offset 0x92209c"
!AbtAbstractTextView class methodsFor: 'recovered'!
IS_setCursorPosition
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('cursorPosition:'); parameters: ((OrderedCollection new) add: ((AbtParameterSpec new) parameterClass: ('Integer'); parameterName: ('afterPosition'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); yourself); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x204fa7c0; bytecode file offset 0xdf7128"
!AbtAbstractTextView class methodsFor: 'recovered'!
IS_instanceInterfaceSpec
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 |
    recoveredValue0 := AbtInterfaceSpec.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) IS_alignment.
    (recoveredValue2) featureNamed: ('alignment') put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) IS_columns.
    (recoveredValue4) featureNamed: ('columns') put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := (self) IS_selectAll.
    (recoveredValue6) featureNamed: ('selectAll') put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := (self) IS_remove.
    (recoveredValue8) featureNamed: ('remove') put: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := (self) IS_copySelection.
    (recoveredValue10) featureNamed: ('copySelection') put: (recoveredValue11).
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := (self) IS_cutSelection.
    (recoveredValue12) featureNamed: ('cutSelection') put: (recoveredValue13).
    recoveredValue14 := recoveredValue1.
    recoveredValue15 := (self) IS_paste.
    (recoveredValue14) featureNamed: ('paste') put: (recoveredValue15).
    recoveredValue16 := recoveredValue1.
    recoveredValue17 := (self) IS_clearSelection.
    (recoveredValue16) featureNamed: ('clearSelection') put: (recoveredValue17).
    recoveredValue18 := recoveredValue1.
    recoveredValue19 := (self) IS_losingFocus.
    (recoveredValue18) featureNamed: ('losingFocus') put: (recoveredValue19).
    recoveredValue20 := recoveredValue1.
    recoveredValue21 := (self) IS_gettingFocus.
    (recoveredValue20) featureNamed: ('gettingFocus') put: (recoveredValue21).
    recoveredValue22 := recoveredValue1.
    recoveredValue23 := (self) IS_editable.
    (recoveredValue22) featureNamed: ('editable') put: (recoveredValue23).
    recoveredValue24 := recoveredValue1.
    recoveredValue25 := (self) IS_maxLength.
    (recoveredValue24) featureNamed: ('maxLength') put: (recoveredValue25).
    recoveredValue26 := recoveredValue1.
    recoveredValue27 := (self) IS_getSelection.
    (recoveredValue26) featureNamed: ('getSelection') put: (recoveredValue27).
    recoveredValue28 := recoveredValue1.
    recoveredValue29 := (self) IS_selectTextPositionFromTo.
    (recoveredValue28) featureNamed: ('selectTextPositionFromTo') put: (recoveredValue29).
    recoveredValue30 := recoveredValue1.
    recoveredValue31 := (self) IS_queryCursorPosition.
    (recoveredValue30) featureNamed: ('queryCursorPosition') put: (recoveredValue31).
    recoveredValue32 := recoveredValue1.
    recoveredValue33 := (self) IS_setCursorPosition.
    (recoveredValue32) featureNamed: ('setCursorPosition') put: (recoveredValue33).
    recoveredValue34 := recoveredValue1.
    recoveredValue35 := (self) IS_insertTextAtPosition.
    (recoveredValue34) featureNamed: ('insertTextAtPosition') put: (recoveredValue35).
    recoveredValue36 := recoveredValue1.
    recoveredValue37 := (self) IS_fontName.
    (recoveredValue36) featureNamed: ('fontName') put: (recoveredValue37).
    recoveredValue38 := recoveredValue1.
    recoveredValue39 := (self) IS_defaultActionRequested.
    (recoveredValue38) featureNamed: ('defaultActionRequested') put: (recoveredValue39).
    recoveredValue40 := recoveredValue1.
    recoveredValue41 := (self) IS_notifyChangeOnEachKeystroke.
    (recoveredValue40) featureNamed: ('notifyChangeOnEachKeystroke') put: (recoveredValue41).
    recoveredValue42 := (self) IS_setFocus.
    recoveredValue43 := (recoveredValue1) featureNamed: ('setFocus') put: (recoveredValue42).
    ^recoveredValue43
! !

