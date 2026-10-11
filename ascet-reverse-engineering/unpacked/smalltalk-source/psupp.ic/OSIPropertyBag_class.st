"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2002c918; bytecode file offset 0x180284"
!OSIPropertyBag class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredValue0 recoveredValue1 |
    (self) interfaceSelectors: (#('queryInterface:ppvObject:' 'addRef' 'release' 'read:pVar:pErrorLog:' 'write:pVar:')).
    recoveredValue0 := (self) callOutPlatformFunctionAt: (4).
    Read := recoveredValue0.
    recoveredValue1 := (self) callOutPlatformFunctionAt: (5).
    Write := recoveredValue1.
    ^self
! !

"psupp.ic method 0x2003f2fc; bytecode file offset 0x192bbc"
!OSIPropertyBag class methodsFor: 'recovered'!
localDescriptions
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal2.
    (recoveredValue4) add: ('uint32').
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := OrderedCollection.
    recoveredValue7 := (recoveredValue6) new.
    recoveredValue8 := recoveredValue7.
    recoveredValue9 := OSOleStringZ.
    recoveredValue10 := (self) parameterForClass: (recoveredValue9).
    (recoveredValue8) add: (recoveredValue10).
    recoveredValue11 := recoveredValue7.
    recoveredValue12 := OSVariantarg.
    recoveredValue13 := (self) parameterForClass: (recoveredValue12).
    (recoveredValue11) add: (recoveredValue13).
    recoveredValue14 := recoveredValue7.
    recoveredValue15 := OSIErrorLog.
    recoveredValue16 := (self) parameterForClass: (recoveredValue15).
    (recoveredValue14) add: (recoveredValue16).
    recoveredValue17 := (recoveredValue7) asArray.
    (recoveredValue5) add: (recoveredValue17).
    recoveredValue18 := recoveredLocal2.
    (recoveredValue18) add: ('uint32').
    recoveredValue19 := recoveredLocal1.
    recoveredValue20 := OrderedCollection.
    recoveredValue21 := (recoveredValue20) new.
    recoveredValue22 := recoveredValue21.
    recoveredValue23 := OSOleStringZ.
    recoveredValue24 := (self) parameterForClass: (recoveredValue23).
    (recoveredValue22) add: (recoveredValue24).
    recoveredValue25 := recoveredValue21.
    recoveredValue26 := OSVariantarg.
    recoveredValue27 := (self) parameterForClass: (recoveredValue26).
    (recoveredValue25) add: (recoveredValue27).
    recoveredValue28 := (recoveredValue21) asArray.
    (recoveredValue19) add: (recoveredValue28).
    recoveredValue29 := Array.
    recoveredValue30 := recoveredLocal2.
    recoveredValue31 := recoveredLocal1.
    recoveredValue32 := (recoveredValue29) with: (recoveredValue30) with: (recoveredValue31).
    ^recoveredValue32
! !

