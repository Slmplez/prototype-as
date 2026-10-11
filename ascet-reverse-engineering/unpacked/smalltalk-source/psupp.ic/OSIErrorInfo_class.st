"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20034c90; bytecode file offset 0x188544"
!OSIErrorInfo class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    (self) interfaceSelectors: (#('queryInterface:ppvObject:' 'addRef' 'release' 'getGUID:' 'getSource:' 'getDescription:' 'getHelpFile:' 'getHelpContext:')).
    recoveredValue0 := (self) callOutPlatformFunctionAt: (6).
    GetDescription := recoveredValue0.
    recoveredValue1 := (self) callOutPlatformFunctionAt: (4).
    GetGUID := recoveredValue1.
    recoveredValue2 := (self) callOutPlatformFunctionAt: (8).
    GetHelpContext := recoveredValue2.
    recoveredValue3 := (self) callOutPlatformFunctionAt: (7).
    GetHelpFile := recoveredValue3.
    recoveredValue4 := (self) callOutPlatformFunctionAt: (5).
    GetSource := recoveredValue4.
    ^self
! !

"psupp.ic method 0x200445e8; bytecode file offset 0x197ea4"
!OSIErrorInfo class methodsFor: 'recovered'!
localDescriptions
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 |
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
    recoveredValue9 := OSGuid.
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
    recoveredValue25 := OSUInt8.
    recoveredValue26 := (self) parameterForClass: (recoveredValue25).
    (recoveredValue24) add: (recoveredValue26).
    recoveredValue27 := (recoveredValue23) asArray.
    (recoveredValue21) add: (recoveredValue27).
    recoveredValue28 := recoveredLocal2.
    (recoveredValue28) add: ('uint32').
    recoveredValue29 := recoveredLocal1.
    recoveredValue30 := OrderedCollection.
    recoveredValue31 := (recoveredValue30) new.
    recoveredValue32 := recoveredValue31.
    recoveredValue33 := OSUInt8.
    recoveredValue34 := (self) parameterForClass: (recoveredValue33).
    (recoveredValue32) add: (recoveredValue34).
    recoveredValue35 := (recoveredValue31) asArray.
    (recoveredValue29) add: (recoveredValue35).
    recoveredValue36 := recoveredLocal2.
    (recoveredValue36) add: ('uint32').
    recoveredValue37 := recoveredLocal1.
    recoveredValue38 := OrderedCollection.
    recoveredValue39 := (recoveredValue38) new.
    recoveredValue40 := recoveredValue39.
    recoveredValue41 := OSUInt8.
    recoveredValue42 := (self) parameterForClass: (recoveredValue41).
    (recoveredValue40) add: (recoveredValue42).
    recoveredValue43 := (recoveredValue39) asArray.
    (recoveredValue37) add: (recoveredValue43).
    recoveredValue44 := Array.
    recoveredValue45 := recoveredLocal2.
    recoveredValue46 := recoveredLocal1.
    recoveredValue47 := (recoveredValue44) with: (recoveredValue45) with: (recoveredValue46).
    ^recoveredValue47
! !

