"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20030790; bytecode file offset 0x18403c"
!OSIUnknown class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    (self) interfaceSelectors: (#('queryInterface:ppvObject:' 'addRef' 'release')).
    recoveredValue0 := (self) callOutPlatformFunctionAt: (2).
    AddRef := recoveredValue0.
    recoveredValue1 := (self) callOutPlatformFunctionAt: (1).
    QueryInterface := recoveredValue1.
    recoveredValue2 := (self) callOutPlatformFunctionAt: (3).
    Release := recoveredValue2.
    ^self
! !

"psupp.ic method 0x2003c2ec; bytecode file offset 0x18fbac"
!OSIUnknown class methodsFor: 'recovered'!
localDescriptions
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 |
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
    recoveredValue9 := OSIid.
    recoveredValue10 := (self) parameterForClass: (recoveredValue9).
    (recoveredValue8) add: (recoveredValue10).
    recoveredValue11 := recoveredValue7.
    recoveredValue12 := OSUInt8.
    recoveredValue13 := (self) parameterForClass: (recoveredValue12).
    (recoveredValue11) add: (recoveredValue13).
    recoveredValue14 := (recoveredValue7) asArray.
    (recoveredValue5) add: (recoveredValue14).
    recoveredValue15 := recoveredLocal2.
    (recoveredValue15) add: ('uint32').
    recoveredValue16 := recoveredLocal1.
    (recoveredValue16) add: (#()).
    recoveredValue17 := recoveredLocal2.
    (recoveredValue17) add: ('uint32').
    recoveredValue18 := recoveredLocal1.
    (recoveredValue18) add: (#()).
    recoveredValue19 := Array.
    recoveredValue20 := recoveredLocal2.
    recoveredValue21 := recoveredLocal1.
    recoveredValue22 := (recoveredValue19) with: (recoveredValue20) with: (recoveredValue21).
    ^recoveredValue22
! !

