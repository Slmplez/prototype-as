"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200197cc; bytecode file offset 0x92209c"
!AbtViewConstraint class methodsFor: 'recovered'!
IS_leftEdge
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (AbtEdgeConstraint); getSelector: ('leftEdge'); setSelector: ('leftEdge:'); changeSymbol: ('leftEdgeChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001a018; bytecode file offset 0x92209c"
!AbtViewConstraint class methodsFor: 'recovered'!
IS_bottomEdge
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (AbtEdgeConstraint); getSelector: ('bottomEdge'); setSelector: ('bottomEdge:'); changeSymbol: ('bottomEdgeChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20022cd0; bytecode file offset 0x92209c"
!AbtViewConstraint class methodsFor: 'recovered'!
IS_rightEdge
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (AbtEdgeConstraint); getSelector: ('rightEdge'); setSelector: ('rightEdge:'); changeSymbol: ('rightEdgeChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20023ae0; bytecode file offset 0x92209c"
!AbtViewConstraint class methodsFor: 'recovered'!
IS_topEdge
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (AbtEdgeConstraint); getSelector: ('topEdge'); setSelector: ('topEdge:'); changeSymbol: ('topEdgeChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x202528ac; bytecode file offset 0xb4f228"
!AbtViewConstraint class methodsFor: 'recovered'!
IS_instanceInterfaceSpec
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := AbtInterfaceSpec.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) IS_leftEdge.
    (recoveredValue2) featureNamed: ('leftEdge') put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) IS_rightEdge.
    (recoveredValue4) featureNamed: ('rightEdge') put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := (self) IS_topEdge.
    (recoveredValue6) featureNamed: ('topEdge') put: (recoveredValue7).
    recoveredValue8 := (self) IS_bottomEdge.
    recoveredValue9 := (recoveredValue1) featureNamed: ('bottomEdge') put: (recoveredValue8).
    ^recoveredValue9
! !

