"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001958c; bytecode file offset 0x92209c"
!AbtGroupBoxView class methodsFor: 'recovered'!
IS_label
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (String); getSelector: ('label'); setSelector: ('label:'); changeSymbol: ('labelChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200213bc; bytecode file offset 0x92209c"
!AbtGroupBoxView class methodsFor: 'recovered'!
IS_fontName
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (String); getSelector: ('fontName'); setSelector: ('fontName:'); changeSymbol: ('fontNameChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200f9b54; bytecode file offset 0x9f641c"
!AbtGroupBoxView class methodsFor: 'recovered'!
new
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := super new.
    recoveredValue1 := AbtStrGroupBox.
    recoveredValue2 := (recoveredValue0) valueOfAttributeNamed: ('label') put: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2016eb18; bytecode file offset 0xa6b454"
!AbtGroupBoxView class methodsFor: 'recovered'!
IS_instanceInterfaceSpec
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := AbtInterfaceSpec.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) IS_label.
    (recoveredValue2) featureNamed: ('label') put: (recoveredValue3).
    recoveredValue4 := (self) IS_fontName.
    recoveredValue5 := (recoveredValue1) featureNamed: ('fontName') put: (recoveredValue4).
    ^recoveredValue5
! !

