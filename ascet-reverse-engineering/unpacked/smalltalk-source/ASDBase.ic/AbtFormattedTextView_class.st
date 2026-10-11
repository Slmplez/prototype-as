"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20015aa0; bytecode file offset 0x92209c"
!AbtFormattedTextView class methodsFor: 'recovered'!
IS_format
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (EwTextFieldFormat); getSelector: ('format'); setSelector: ('format:'); changeSymbol: ('formatChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001a6c0; bytecode file offset 0x92209c"
!AbtFormattedTextView class methodsFor: 'recovered'!
IS_autoTraverse
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Boolean); getSelector: ('autoTraverse'); setSelector: ('autoTraverse:'); changeSymbol: ('autoTraverseChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001ad08; bytecode file offset 0x92209c"
!AbtFormattedTextView class methodsFor: 'recovered'!
IS_object
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Object); getSelector: ('object'); setSelector: ('object:'); changeSymbol: ('objectChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001ce8c; bytecode file offset 0x92209c"
!AbtFormattedTextView class methodsFor: 'recovered'!
packagerIncludeSelectors
    ^#('objectChanged' 'stringChanged')
! !

"ASDBase.ic method 0x200205e8; bytecode file offset 0x92209c"
!AbtFormattedTextView class methodsFor: 'recovered'!
IS_string
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (EsString); getSelector: ('string'); setSelector: ('string:'); changeSymbol: ('stringChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20025328; bytecode file offset 0x92209c"
!AbtFormattedTextView class methodsFor: 'recovered'!
IS_selectAllOnFocus
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Boolean); getSelector: ('selectAllOnFocus'); setSelector: ('selectAllOnFocus:'); changeSymbol: ('selectAllOnFocusChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x202a84d8; bytecode file offset 0xba4eb0"
!AbtFormattedTextView class methodsFor: 'recovered'!
IS_instanceInterfaceSpec
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := AbtInterfaceSpec.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) IS_object.
    (recoveredValue2) featureNamed: ('object') put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) IS_string.
    (recoveredValue4) featureNamed: ('string') put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := (self) IS_format.
    (recoveredValue6) featureNamed: ('format') put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := (self) IS_autoTraverse.
    (recoveredValue8) featureNamed: ('autoTraverse') put: (recoveredValue9).
    recoveredValue10 := (self) IS_selectAllOnFocus.
    recoveredValue11 := (recoveredValue1) featureNamed: ('selectAllOnFocus') put: (recoveredValue10).
    ^recoveredValue11
! !

