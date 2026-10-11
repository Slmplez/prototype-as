"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20032c38; bytecode file offset 0x1864e8"
!OSIEnumSTATDATA class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    (self) interfaceSelectors: (#('queryInterface:ppvObject:' 'addRef' 'release' 'next:rgelt:pceltFetched:' 'skip:' 'reset' 'clone:')).
    recoveredValue0 := (self) callOutPlatformFunctionAt: (7).
    Clone := recoveredValue0.
    recoveredValue1 := (self) callOutPlatformFunctionAt: (4).
    Next := recoveredValue1.
    recoveredValue2 := (self) callOutPlatformFunctionAt: (6).
    Reset := recoveredValue2.
    recoveredValue3 := (self) callOutPlatformFunctionAt: (5).
    Skip := recoveredValue3.
    ^self
! !

"psupp.ic method 0x200420f0; bytecode file offset 0x195a94"
!OSIEnumSTATDATA class methodsFor: 'recovered'!
localDescriptions
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 |
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
    recoveredValue9 := (self) parameterForType: ('uint32').
    (recoveredValue8) add: (recoveredValue9).
    recoveredValue10 := recoveredValue7.
    recoveredValue11 := OSStatdata.
    recoveredValue12 := (self) parameterForClass: (recoveredValue11).
    (recoveredValue10) add: (recoveredValue12).
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
    recoveredValue24 := recoveredLocal2.
    (recoveredValue24) add: ('uint32').
    recoveredValue25 := recoveredLocal1.
    (recoveredValue25) add: (#()).
    recoveredValue26 := recoveredLocal2.
    (recoveredValue26) add: ('uint32').
    recoveredValue27 := recoveredLocal1.
    recoveredValue28 := OrderedCollection.
    recoveredValue29 := (recoveredValue28) new.
    recoveredValue30 := recoveredValue29.
    recoveredValue31 := OSUInt8.
    recoveredValue32 := (self) parameterForClass: (recoveredValue31).
    (recoveredValue30) add: (recoveredValue32).
    recoveredValue33 := (recoveredValue29) asArray.
    (recoveredValue27) add: (recoveredValue33).
    recoveredValue34 := Array.
    recoveredValue35 := recoveredLocal2.
    recoveredValue36 := recoveredLocal1.
    recoveredValue37 := (recoveredValue34) with: (recoveredValue35) with: (recoveredValue36).
    ^recoveredValue37
! !

