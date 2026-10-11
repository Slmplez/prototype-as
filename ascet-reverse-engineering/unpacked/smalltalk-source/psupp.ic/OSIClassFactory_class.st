"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2002c9a4; bytecode file offset 0x180284"
!OSIClassFactory class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredValue0 recoveredValue1 |
    (self) interfaceSelectors: (#('queryInterface:ppvObject:' 'addRef' 'release' 'createInstance:riid:ppvObject:' 'lockServer:')).
    recoveredValue0 := (self) callOutPlatformFunctionAt: (4).
    CreateInstance := recoveredValue0.
    recoveredValue1 := (self) callOutPlatformFunctionAt: (5).
    LockServer := recoveredValue1.
    ^self
! !

"psupp.ic method 0x2003de64; bytecode file offset 0x19172c"
!OSIClassFactory class methodsFor: 'recovered'!
localDescriptions
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 |
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
    recoveredValue9 := OSIUnknown.
    recoveredValue10 := (self) parameterForClass: (recoveredValue9).
    (recoveredValue8) add: (recoveredValue10).
    recoveredValue11 := recoveredValue7.
    recoveredValue12 := OSIid.
    recoveredValue13 := (self) parameterForClass: (recoveredValue12).
    (recoveredValue11) add: (recoveredValue13).
    recoveredValue14 := recoveredValue7.
    recoveredValue15 := OSUInt8.
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
    recoveredValue23 := (self) parameterForType: ('bool').
    (recoveredValue22) add: (recoveredValue23).
    recoveredValue24 := (recoveredValue21) asArray.
    (recoveredValue19) add: (recoveredValue24).
    recoveredValue25 := Array.
    recoveredValue26 := recoveredLocal2.
    recoveredValue27 := recoveredLocal1.
    recoveredValue28 := (recoveredValue25) with: (recoveredValue26) with: (recoveredValue27).
    ^recoveredValue28
! !

