"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20038854; bytecode file offset 0x18c110"
!OSILockBytes class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    (self) interfaceSelectors: (#('queryInterface:ppvObject:' 'addRef' 'release' 'readAt:pv:cb:pcbRead:' 'writeAt:pv:cb:pcbWritten:' 'flush' 'setSize:' 'lockRegion:cb:dwLockType:' 'unlockRegion:cb:dwLockType:' 'stat:grfStatFlag:')).
    recoveredValue0 := (self) callOutPlatformFunctionAt: (6).
    Flush := recoveredValue0.
    recoveredValue1 := (self) callOutPlatformFunctionAt: (8).
    LockRegion := recoveredValue1.
    recoveredValue2 := (self) callOutPlatformFunctionAt: (4).
    ReadAt := recoveredValue2.
    recoveredValue3 := (self) callOutPlatformFunctionAt: (7).
    SetSize := recoveredValue3.
    recoveredValue4 := (self) callOutPlatformFunctionAt: (10).
    Stat := recoveredValue4.
    recoveredValue5 := (self) callOutPlatformFunctionAt: (9).
    UnlockRegion := recoveredValue5.
    recoveredValue6 := (self) callOutPlatformFunctionAt: (5).
    WriteAt := recoveredValue6.
    ^self
! !

"psupp.ic method 0x2004c980; bytecode file offset 0x1a0250"
!OSILockBytes class methodsFor: 'recovered'!
localDescriptions
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 recoveredValue57 recoveredValue58 recoveredValue59 recoveredValue60 recoveredValue61 recoveredValue62 recoveredValue63 recoveredValue64 recoveredValue65 recoveredValue66 recoveredValue67 recoveredValue68 recoveredValue69 recoveredValue70 recoveredValue71 recoveredValue72 recoveredValue73 recoveredValue74 recoveredValue75 recoveredValue76 recoveredValue77 recoveredValue78 recoveredValue79 recoveredValue80 recoveredValue81 recoveredValue82 recoveredValue83 recoveredValue84 recoveredValue85 |
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
    recoveredValue9 := OSUlargeInteger.
    recoveredValue10 := (self) parameterForType: ('stack') class: (recoveredValue9).
    (recoveredValue8) add: (recoveredValue10).
    recoveredValue11 := recoveredValue7.
    recoveredValue12 := OSUInt8.
    recoveredValue13 := (self) parameterForClass: (recoveredValue12).
    (recoveredValue11) add: (recoveredValue13).
    recoveredValue14 := recoveredValue7.
    recoveredValue15 := (self) parameterForType: ('uint32').
    (recoveredValue14) add: (recoveredValue15).
    recoveredValue16 := recoveredValue7.
    recoveredValue17 := OSUInt8.
    recoveredValue18 := (self) parameterForClass: (recoveredValue17).
    (recoveredValue16) add: (recoveredValue18).
    recoveredValue19 := (recoveredValue7) asArray.
    (recoveredValue5) add: (recoveredValue19).
    recoveredValue20 := recoveredLocal2.
    (recoveredValue20) add: ('uint32').
    recoveredValue21 := recoveredLocal1.
    recoveredValue22 := OrderedCollection.
    recoveredValue23 := (recoveredValue22) new.
    recoveredValue24 := recoveredValue23.
    recoveredValue25 := OSUlargeInteger.
    recoveredValue26 := (self) parameterForType: ('stack') class: (recoveredValue25).
    (recoveredValue24) add: (recoveredValue26).
    recoveredValue27 := recoveredValue23.
    recoveredValue28 := OSUInt8.
    recoveredValue29 := (self) parameterForClass: (recoveredValue28).
    (recoveredValue27) add: (recoveredValue29).
    recoveredValue30 := recoveredValue23.
    recoveredValue31 := (self) parameterForType: ('uint32').
    (recoveredValue30) add: (recoveredValue31).
    recoveredValue32 := recoveredValue23.
    recoveredValue33 := OSUInt8.
    recoveredValue34 := (self) parameterForClass: (recoveredValue33).
    (recoveredValue32) add: (recoveredValue34).
    recoveredValue35 := (recoveredValue23) asArray.
    (recoveredValue21) add: (recoveredValue35).
    recoveredValue36 := recoveredLocal2.
    (recoveredValue36) add: ('uint32').
    recoveredValue37 := recoveredLocal1.
    (recoveredValue37) add: (#()).
    recoveredValue38 := recoveredLocal2.
    (recoveredValue38) add: ('uint32').
    recoveredValue39 := recoveredLocal1.
    recoveredValue40 := OrderedCollection.
    recoveredValue41 := (recoveredValue40) new.
    recoveredValue42 := recoveredValue41.
    recoveredValue43 := OSUlargeInteger.
    recoveredValue44 := (self) parameterForType: ('stack') class: (recoveredValue43).
    (recoveredValue42) add: (recoveredValue44).
    recoveredValue45 := (recoveredValue41) asArray.
    (recoveredValue39) add: (recoveredValue45).
    recoveredValue46 := recoveredLocal2.
    (recoveredValue46) add: ('uint32').
    recoveredValue47 := recoveredLocal1.
    recoveredValue48 := OrderedCollection.
    recoveredValue49 := (recoveredValue48) new.
    recoveredValue50 := recoveredValue49.
    recoveredValue51 := OSUlargeInteger.
    recoveredValue52 := (self) parameterForType: ('stack') class: (recoveredValue51).
    (recoveredValue50) add: (recoveredValue52).
    recoveredValue53 := recoveredValue49.
    recoveredValue54 := OSUlargeInteger.
    recoveredValue55 := (self) parameterForType: ('stack') class: (recoveredValue54).
    (recoveredValue53) add: (recoveredValue55).
    recoveredValue56 := recoveredValue49.
    recoveredValue57 := (self) parameterForType: ('uint32').
    (recoveredValue56) add: (recoveredValue57).
    recoveredValue58 := (recoveredValue49) asArray.
    (recoveredValue47) add: (recoveredValue58).
    recoveredValue59 := recoveredLocal2.
    (recoveredValue59) add: ('uint32').
    recoveredValue60 := recoveredLocal1.
    recoveredValue61 := OrderedCollection.
    recoveredValue62 := (recoveredValue61) new.
    recoveredValue63 := recoveredValue62.
    recoveredValue64 := OSUlargeInteger.
    recoveredValue65 := (self) parameterForType: ('stack') class: (recoveredValue64).
    (recoveredValue63) add: (recoveredValue65).
    recoveredValue66 := recoveredValue62.
    recoveredValue67 := OSUlargeInteger.
    recoveredValue68 := (self) parameterForType: ('stack') class: (recoveredValue67).
    (recoveredValue66) add: (recoveredValue68).
    recoveredValue69 := recoveredValue62.
    recoveredValue70 := (self) parameterForType: ('uint32').
    (recoveredValue69) add: (recoveredValue70).
    recoveredValue71 := (recoveredValue62) asArray.
    (recoveredValue60) add: (recoveredValue71).
    recoveredValue72 := recoveredLocal2.
    (recoveredValue72) add: ('uint32').
    recoveredValue73 := recoveredLocal1.
    recoveredValue74 := OrderedCollection.
    recoveredValue75 := (recoveredValue74) new.
    recoveredValue76 := recoveredValue75.
    recoveredValue77 := OSStatstg.
    recoveredValue78 := (self) parameterForClass: (recoveredValue77).
    (recoveredValue76) add: (recoveredValue78).
    recoveredValue79 := recoveredValue75.
    recoveredValue80 := (self) parameterForType: ('uint32').
    (recoveredValue79) add: (recoveredValue80).
    recoveredValue81 := (recoveredValue75) asArray.
    (recoveredValue73) add: (recoveredValue81).
    recoveredValue82 := Array.
    recoveredValue83 := recoveredLocal2.
    recoveredValue84 := recoveredLocal1.
    recoveredValue85 := (recoveredValue82) with: (recoveredValue83) with: (recoveredValue84).
    ^recoveredValue85
! !

