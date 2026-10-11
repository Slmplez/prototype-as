"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001257c; bytecode file offset 0x912098"
!AbtCwProgressBarView class methodsFor: 'recovered'!
cwWidgetClass
    | recoveredValue0 |
    recoveredValue0 := CwProgressBar.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20015dc4; bytecode file offset 0x92209c"
!AbtCwProgressBarView class methodsFor: 'recovered'!
IS_maximum
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('maximum'); setSelector: ('maximum:'); changeSymbol: ('maximumChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001745c; bytecode file offset 0x92209c"
!AbtCwProgressBarView class methodsFor: 'recovered'!
IS_value
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('value'); setSelector: ('value:'); changeSymbol: ('valueChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20018f38; bytecode file offset 0x92209c"
!AbtCwProgressBarView class methodsFor: 'recovered'!
IS_incrementValueBy_
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('incrementValueBy:'); parameters: ((OrderedCollection new) add: ((AbtParameterSpec new) parameterClass: ('Integer'); parameterName: ('anInteger'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); yourself); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001f850; bytecode file offset 0x92209c"
!AbtCwProgressBarView class methodsFor: 'recovered'!
IS_minimum
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('minimum'); setSelector: ('minimum:'); changeSymbol: ('minimumChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200209a8; bytecode file offset 0x92209c"
!AbtCwProgressBarView class methodsFor: 'recovered'!
IS_decrementValueBy_
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('decrementValueBy:'); parameters: ((OrderedCollection new) add: ((AbtParameterSpec new) parameterClass: ('Integer'); parameterName: ('anInteger'); typedBySecondaryPartType: (nil); defaultValue: (nil); yourself); yourself); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20023a44; bytecode file offset 0x92209c"
!AbtCwProgressBarView class methodsFor: 'recovered'!
IS_decrementValue
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('decrementValue'); parameters: (nil); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20024b54; bytecode file offset 0x92209c"
!AbtCwProgressBarView class methodsFor: 'recovered'!
IS_incrementValue
    | recoveredValue0 |
    recoveredValue0 := (AbtActionSpec new) selector: ('incrementValue'); parameters: (nil); resultType: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20339e74; bytecode file offset 0xc367b8"
!AbtCwProgressBarView class methodsFor: 'recovered'!
IS_instanceInterfaceSpec
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := AbtInterfaceSpec.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) IS_maximum.
    (recoveredValue2) featureNamed: ('maximum') put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) IS_minimum.
    (recoveredValue4) featureNamed: ('minimum') put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := (self) IS_value.
    (recoveredValue6) featureNamed: ('value') put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := (self) IS_incrementValue.
    (recoveredValue8) featureNamed: ('incrementValue') put: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := (self) IS_incrementValueBy_.
    (recoveredValue10) featureNamed: ('incrementValueBy:') put: (recoveredValue11).
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := (self) IS_decrementValue.
    (recoveredValue12) featureNamed: ('decrementValue') put: (recoveredValue13).
    recoveredValue14 := (self) IS_decrementValueBy_.
    recoveredValue15 := (recoveredValue1) featureNamed: ('decrementValueBy:') put: (recoveredValue14).
    ^recoveredValue15
! !

