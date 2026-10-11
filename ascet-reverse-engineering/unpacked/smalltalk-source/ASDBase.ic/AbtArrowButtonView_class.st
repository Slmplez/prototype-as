"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20014898; bytecode file offset 0x912098"
!AbtArrowButtonView class methodsFor: 'recovered'!
cwWidgetClass
    | recoveredValue0 |
    recoveredValue0 := CwArrowButton.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001c97c; bytecode file offset 0x92209c"
!AbtArrowButtonView class methodsFor: 'recovered'!
IS_clicked
    | recoveredValue0 |
    recoveredValue0 := (AbtEventSpec new) symbol: ('clicked'); parameters: (nil); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001de1c; bytecode file offset 0x92209c"
!AbtArrowButtonView class methodsFor: 'recovered'!
packagerIncludeSelectors
    ^#('clicked')
! !

"ASDBase.ic method 0x200260d4; bytecode file offset 0x923928"
!AbtArrowButtonView class methodsFor: 'recovered'!
IS_arrowDirection
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('arrowDirection'); setSelector: ('arrowDirection:'); changeSymbol: ('arrowDirectionChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2016eb3c; bytecode file offset 0xa6b454"
!AbtArrowButtonView class methodsFor: 'recovered'!
IS_instanceInterfaceSpec
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := AbtInterfaceSpec.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) IS_arrowDirection.
    (recoveredValue2) featureNamed: ('arrowDirection') put: (recoveredValue3).
    recoveredValue4 := (self) IS_clicked.
    recoveredValue5 := (recoveredValue1) featureNamed: ('clicked') put: (recoveredValue4).
    ^recoveredValue5
! !

