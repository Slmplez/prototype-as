"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20034bc8; bytecode file offset 0x18847c"
!OSIOleCache class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    (self) interfaceSelectors: (#('queryInterface:ppvObject:' 'addRef' 'release' 'cache:advf:pdwConnection:' 'uncache:' 'enumCache:' 'initCache:' 'setData:pmedium:fRelease:')).
    recoveredValue0 := (self) callOutPlatformFunctionAt: (4).
    Cache := recoveredValue0.
    recoveredValue1 := (self) callOutPlatformFunctionAt: (6).
    EnumCache := recoveredValue1.
    recoveredValue2 := (self) callOutPlatformFunctionAt: (7).
    InitCache := recoveredValue2.
    recoveredValue3 := (self) callOutPlatformFunctionAt: (8).
    SetData := recoveredValue3.
    recoveredValue4 := (self) callOutPlatformFunctionAt: (5).
    Uncache := recoveredValue4.
    ^self
! !

"psupp.ic method 0x2004785c; bytecode file offset 0x19b128"
!OSIOleCache class methodsFor: 'recovered'!
localDescriptions
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 |
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
    recoveredValue9 := OSFormatetc.
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
    recoveredValue24 := recoveredLocal2.
    (recoveredValue24) add: ('uint32').
    recoveredValue25 := recoveredLocal1.
    recoveredValue26 := OrderedCollection.
    recoveredValue27 := (recoveredValue26) new.
    recoveredValue28 := recoveredValue27.
    recoveredValue29 := OSUInt8.
    recoveredValue30 := (self) parameterForClass: (recoveredValue29).
    (recoveredValue28) add: (recoveredValue30).
    recoveredValue31 := (recoveredValue27) asArray.
    (recoveredValue25) add: (recoveredValue31).
    recoveredValue32 := recoveredLocal2.
    (recoveredValue32) add: ('uint32').
    recoveredValue33 := recoveredLocal1.
    recoveredValue34 := OrderedCollection.
    recoveredValue35 := (recoveredValue34) new.
    recoveredValue36 := recoveredValue35.
    recoveredValue37 := OSIDataObject.
    recoveredValue38 := (self) parameterForClass: (recoveredValue37).
    (recoveredValue36) add: (recoveredValue38).
    recoveredValue39 := (recoveredValue35) asArray.
    (recoveredValue33) add: (recoveredValue39).
    recoveredValue40 := recoveredLocal2.
    (recoveredValue40) add: ('uint32').
    recoveredValue41 := recoveredLocal1.
    recoveredValue42 := OrderedCollection.
    recoveredValue43 := (recoveredValue42) new.
    recoveredValue44 := recoveredValue43.
    recoveredValue45 := OSFormatetc.
    recoveredValue46 := (self) parameterForClass: (recoveredValue45).
    (recoveredValue44) add: (recoveredValue46).
    recoveredValue47 := recoveredValue43.
    recoveredValue48 := OSStgmedium.
    recoveredValue49 := (self) parameterForClass: (recoveredValue48).
    (recoveredValue47) add: (recoveredValue49).
    recoveredValue50 := recoveredValue43.
    recoveredValue51 := (self) parameterForType: ('bool').
    (recoveredValue50) add: (recoveredValue51).
    recoveredValue52 := (recoveredValue43) asArray.
    (recoveredValue41) add: (recoveredValue52).
    recoveredValue53 := Array.
    recoveredValue54 := recoveredLocal2.
    recoveredValue55 := recoveredLocal1.
    recoveredValue56 := (recoveredValue53) with: (recoveredValue54) with: (recoveredValue55).
    ^recoveredValue56
! !

