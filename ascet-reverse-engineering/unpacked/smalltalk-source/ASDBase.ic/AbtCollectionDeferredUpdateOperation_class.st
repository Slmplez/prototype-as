"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20073828; bytecode file offset 0x970b34"
!AbtCollectionDeferredUpdateOperation class methodsFor: 'recovered'!
recursiveDeferredUpdateOperationClass
    ^nil
! !

"ASDBase.ic method 0x20076074; bytecode file offset 0x9757c8"
!AbtCollectionDeferredUpdateOperation class methodsFor: 'recovered'!
shadowsEvents
    ^true
! !

"ASDBase.ic method 0x200762cc; bytecode file offset 0x9757c8"
!AbtCollectionDeferredUpdateOperation class methodsFor: 'recovered'!
shadowsActions
    ^true
! !

"ASDBase.ic method 0x2007861c; bytecode file offset 0x9757c8"
!AbtCollectionDeferredUpdateOperation class methodsFor: 'recovered'!
shadowsAttributes
    ^true
! !

"ASDBase.ic method 0x201d5374; bytecode file offset 0xad1c50"
!AbtCollectionDeferredUpdateOperation class methodsFor: 'recovered'!
selfReferenceAttributeSpec
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := AbtAttributeSpec.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) setSelector: ('=').
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) getSelector: ('yourself').
    recoveredValue4 := recoveredValue1.
    (recoveredValue4) changeSymbol: ('collection').
    recoveredValue5 := recoveredValue1.
    recoveredValue6 := Collection.
    (recoveredValue5) attributeClass: (recoveredValue6).
    ^recoveredValue1
! !

