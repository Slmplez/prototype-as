"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20034d30; bytecode file offset 0x1885e4"
!OSIConnectionPoint class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    (self) interfaceSelectors: (#('queryInterface:ppvObject:' 'addRef' 'release' 'getConnectionInterface:' 'getConnectionPointContainer:' 'advise:pdwCookie:' 'unadvise:' 'enumConnections:')).
    recoveredValue0 := (self) callOutPlatformFunctionAt: (6).
    Advise := recoveredValue0.
    recoveredValue1 := (self) callOutPlatformFunctionAt: (8).
    EnumConnections := recoveredValue1.
    recoveredValue2 := (self) callOutPlatformFunctionAt: (4).
    GetConnectionInterface := recoveredValue2.
    recoveredValue3 := (self) callOutPlatformFunctionAt: (5).
    GetConnectionPointContainer := recoveredValue3.
    recoveredValue4 := (self) callOutPlatformFunctionAt: (7).
    Unadvise := recoveredValue4.
    ^self
! !

"psupp.ic method 0x20045338; bytecode file offset 0x198bfc"
!OSIConnectionPoint class methodsFor: 'recovered'!
localDescriptions
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 |
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
    recoveredValue11 := (recoveredValue7) asArray.
    (recoveredValue5) add: (recoveredValue11).
    recoveredValue12 := recoveredLocal2.
    (recoveredValue12) add: ('uint32').
    recoveredValue13 := recoveredLocal1.
    recoveredValue14 := OrderedCollection.
    recoveredValue15 := (recoveredValue14) new.
    recoveredValue16 := recoveredValue15.
    recoveredValue17 := OSUInt8.
    recoveredValue18 := (self) parameterForClass: (recoveredValue17).
    (recoveredValue16) add: (recoveredValue18).
    recoveredValue19 := (recoveredValue15) asArray.
    (recoveredValue13) add: (recoveredValue19).
    recoveredValue20 := recoveredLocal2.
    (recoveredValue20) add: ('uint32').
    recoveredValue21 := recoveredLocal1.
    recoveredValue22 := OrderedCollection.
    recoveredValue23 := (recoveredValue22) new.
    recoveredValue24 := recoveredValue23.
    recoveredValue25 := OSIUnknown.
    recoveredValue26 := (self) parameterForClass: (recoveredValue25).
    (recoveredValue24) add: (recoveredValue26).
    recoveredValue27 := recoveredValue23.
    recoveredValue28 := OSUInt8.
    recoveredValue29 := (self) parameterForClass: (recoveredValue28).
    (recoveredValue27) add: (recoveredValue29).
    recoveredValue30 := (recoveredValue23) asArray.
    (recoveredValue21) add: (recoveredValue30).
    recoveredValue31 := recoveredLocal2.
    (recoveredValue31) add: ('uint32').
    recoveredValue32 := recoveredLocal1.
    recoveredValue33 := OrderedCollection.
    recoveredValue34 := (recoveredValue33) new.
    recoveredValue35 := recoveredValue34.
    recoveredValue36 := (self) parameterForType: ('uint32').
    (recoveredValue35) add: (recoveredValue36).
    recoveredValue37 := (recoveredValue34) asArray.
    (recoveredValue32) add: (recoveredValue37).
    recoveredValue38 := recoveredLocal2.
    (recoveredValue38) add: ('uint32').
    recoveredValue39 := recoveredLocal1.
    recoveredValue40 := OrderedCollection.
    recoveredValue41 := (recoveredValue40) new.
    recoveredValue42 := recoveredValue41.
    recoveredValue43 := OSUInt8.
    recoveredValue44 := (self) parameterForClass: (recoveredValue43).
    (recoveredValue42) add: (recoveredValue44).
    recoveredValue45 := (recoveredValue41) asArray.
    (recoveredValue39) add: (recoveredValue45).
    recoveredValue46 := Array.
    recoveredValue47 := recoveredLocal2.
    recoveredValue48 := recoveredLocal1.
    recoveredValue49 := (recoveredValue46) with: (recoveredValue47) with: (recoveredValue48).
    ^recoveredValue49
! !

