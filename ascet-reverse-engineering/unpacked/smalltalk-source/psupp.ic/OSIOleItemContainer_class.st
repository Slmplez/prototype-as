"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20030844; bytecode file offset 0x1840f0"
!OSIOleItemContainer class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    (self) interfaceSelectors: (#('queryInterface:ppvObject:' 'addRef' 'release' 'parseDisplayName:pszDisplayName:pchEaten:ppmkOut:' 'enumObjects:ppenum:' 'lockContainer:' 'getObject:dwSpeedNeeded:pbc:riid:ppvObject:' 'getObjectStorage:pbc:riid:ppvStorage:' 'isRunning:')).
    recoveredValue0 := (self) callOutPlatformFunctionAt: (7).
    GetObject := recoveredValue0.
    recoveredValue1 := (self) callOutPlatformFunctionAt: (8).
    GetObjectStorage := recoveredValue1.
    recoveredValue2 := (self) callOutPlatformFunctionAt: (9).
    IsRunning := recoveredValue2.
    ^self
! !

"psupp.ic method 0x20045e70; bytecode file offset 0x199738"
!OSIOleItemContainer class methodsFor: 'recovered'!
localDescriptions
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 |
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
    recoveredValue12 := (self) parameterForType: ('uint32').
    (recoveredValue11) add: (recoveredValue12).
    recoveredValue13 := recoveredValue7.
    recoveredValue14 := OSIBindCtx.
    recoveredValue15 := (self) parameterForClass: (recoveredValue14).
    (recoveredValue13) add: (recoveredValue15).
    recoveredValue16 := recoveredValue7.
    recoveredValue17 := OSIid.
    recoveredValue18 := (self) parameterForClass: (recoveredValue17).
    (recoveredValue16) add: (recoveredValue18).
    recoveredValue19 := recoveredValue7.
    recoveredValue20 := OSUInt8.
    recoveredValue21 := (self) parameterForClass: (recoveredValue20).
    (recoveredValue19) add: (recoveredValue21).
    recoveredValue22 := (recoveredValue7) asArray.
    (recoveredValue5) add: (recoveredValue22).
    recoveredValue23 := recoveredLocal2.
    (recoveredValue23) add: ('uint32').
    recoveredValue24 := recoveredLocal1.
    recoveredValue25 := OrderedCollection.
    recoveredValue26 := (recoveredValue25) new.
    recoveredValue27 := recoveredValue26.
    recoveredValue28 := OSOleStringZ.
    recoveredValue29 := (self) parameterForClass: (recoveredValue28).
    (recoveredValue27) add: (recoveredValue29).
    recoveredValue30 := recoveredValue26.
    recoveredValue31 := OSIBindCtx.
    recoveredValue32 := (self) parameterForClass: (recoveredValue31).
    (recoveredValue30) add: (recoveredValue32).
    recoveredValue33 := recoveredValue26.
    recoveredValue34 := OSIid.
    recoveredValue35 := (self) parameterForClass: (recoveredValue34).
    (recoveredValue33) add: (recoveredValue35).
    recoveredValue36 := recoveredValue26.
    recoveredValue37 := OSUInt8.
    recoveredValue38 := (self) parameterForClass: (recoveredValue37).
    (recoveredValue36) add: (recoveredValue38).
    recoveredValue39 := (recoveredValue26) asArray.
    (recoveredValue24) add: (recoveredValue39).
    recoveredValue40 := recoveredLocal2.
    (recoveredValue40) add: ('uint32').
    recoveredValue41 := recoveredLocal1.
    recoveredValue42 := OrderedCollection.
    recoveredValue43 := (recoveredValue42) new.
    recoveredValue44 := recoveredValue43.
    recoveredValue45 := OSOleStringZ.
    recoveredValue46 := (self) parameterForClass: (recoveredValue45).
    (recoveredValue44) add: (recoveredValue46).
    recoveredValue47 := (recoveredValue43) asArray.
    (recoveredValue41) add: (recoveredValue47).
    recoveredValue48 := Array.
    recoveredValue49 := recoveredLocal2.
    recoveredValue50 := recoveredLocal1.
    recoveredValue51 := (recoveredValue48) with: (recoveredValue49) with: (recoveredValue50).
    ^recoveredValue51
! !

