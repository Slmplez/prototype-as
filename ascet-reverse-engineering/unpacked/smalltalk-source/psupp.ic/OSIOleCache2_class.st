"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2002cab0; bytecode file offset 0x180358"
!OSIOleCache2 class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredValue0 recoveredValue1 |
    (self) interfaceSelectors: (#('queryInterface:ppvObject:' 'addRef' 'release' 'cache:advf:pdwConnection:' 'uncache:' 'enumCache:' 'initCache:' 'setData:pmedium:fRelease:' 'updateCache:grfUpdf:pReserved:' 'discardCache:')).
    recoveredValue0 := (self) callOutPlatformFunctionAt: (10).
    DiscardCache := recoveredValue0.
    recoveredValue1 := (self) callOutPlatformFunctionAt: (9).
    UpdateCache := recoveredValue1.
    ^self
! !

"psupp.ic method 0x2003def0; bytecode file offset 0x1917b0"
!OSIOleCache2 class methodsFor: 'recovered'!
localDescriptions
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 |
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
    recoveredValue9 := OSIDataObject.
    recoveredValue10 := (self) parameterForClass: (recoveredValue9).
    (recoveredValue8) add: (recoveredValue10).
    recoveredValue11 := recoveredValue7.
    recoveredValue12 := (self) parameterForType: ('uint32').
    (recoveredValue11) add: (recoveredValue12).
    recoveredValue13 := recoveredValue7.
    recoveredValue14 := OSUInt8.
    recoveredValue15 := (self) parameterForClass: (recoveredValue14).
    (recoveredValue13) add: (recoveredValue15).
    recoveredValue16 := (recoveredValue7) asArray.
    (recoveredValue5) add: (recoveredValue16).
    recoveredValue17 := recoveredLocal2.
    (recoveredValue17) add: ('uint32').
    recoveredValue18 := recoveredLocal1.
    recoveredValue19 := OrderedCollection.
    recoveredValue20 := (recoveredValue19) new.
    recoveredValue21 := recoveredValue20.
    recoveredValue22 := (self) parameterForType: ('uint32').
    (recoveredValue21) add: (recoveredValue22).
    recoveredValue23 := (recoveredValue20) asArray.
    (recoveredValue18) add: (recoveredValue23).
    recoveredValue24 := Array.
    recoveredValue25 := recoveredLocal2.
    recoveredValue26 := recoveredLocal1.
    recoveredValue27 := (recoveredValue24) with: (recoveredValue25) with: (recoveredValue26).
    ^recoveredValue27
! !

