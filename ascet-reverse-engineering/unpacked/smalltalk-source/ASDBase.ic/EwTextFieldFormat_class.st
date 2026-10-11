"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200269e0; bytecode file offset 0x923928"
!EwTextFieldFormat class methodsFor: 'recovered'!
IS_formatString
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (String); getSelector: ('formatString'); setSelector: ('abtFormatString:'); changeSymbol: ('formatStringChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200e0c94; bytecode file offset 0x9dd578"
!EwTextFieldFormat class methodsFor: 'recovered'!
IS_instanceInterfaceSpec
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := AbtInterfaceSpec.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := (self) IS_formatString.
    recoveredValue3 := (recoveredValue1) featureNamed: ('formatString') put: (recoveredValue2).
    ^recoveredValue3
! !

