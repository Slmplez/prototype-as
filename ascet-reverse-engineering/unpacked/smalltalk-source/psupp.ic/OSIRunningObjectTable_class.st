"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200388b8; bytecode file offset 0x18c174"
!OSIRunningObjectTable class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    (self) interfaceSelectors: (#('queryInterface:ppvObject:' 'addRef' 'release' 'register:punkObject:pmkObjectName:pdwRegister:' 'revoke:' 'isRunning:' 'getObject:ppunkObject:' 'noteChangeTime:pfiletime:' 'getTimeOfLastChange:pfiletime:' 'enumRunning:')).
    recoveredValue0 := (self) callOutPlatformFunctionAt: (10).
    EnumRunning := recoveredValue0.
    recoveredValue1 := (self) callOutPlatformFunctionAt: (7).
    GetObject := recoveredValue1.
    recoveredValue2 := (self) callOutPlatformFunctionAt: (9).
    GetTimeOfLastChange := recoveredValue2.
    recoveredValue3 := (self) callOutPlatformFunctionAt: (6).
    IsRunning := recoveredValue3.
    recoveredValue4 := (self) callOutPlatformFunctionAt: (8).
    NoteChangeTime := recoveredValue4.
    recoveredValue5 := (self) callOutPlatformFunctionAt: (4).
    Register := recoveredValue5.
    recoveredValue6 := (self) callOutPlatformFunctionAt: (5).
    Revoke := recoveredValue6.
    ^self
! !

"psupp.ic method 0x2004aae8; bytecode file offset 0x19e3b0"
!OSIRunningObjectTable class methodsFor: 'recovered'!
localDescriptions
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 recoveredValue57 recoveredValue58 recoveredValue59 recoveredValue60 recoveredValue61 recoveredValue62 recoveredValue63 recoveredValue64 recoveredValue65 recoveredValue66 recoveredValue67 recoveredValue68 recoveredValue69 recoveredValue70 recoveredValue71 recoveredValue72 recoveredValue73 recoveredValue74 recoveredValue75 recoveredValue76 recoveredValue77 recoveredValue78 |
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
    recoveredValue11 := OSIUnknown.
    recoveredValue12 := (self) parameterForClass: (recoveredValue11).
    (recoveredValue10) add: (recoveredValue12).
    recoveredValue13 := recoveredValue7.
    recoveredValue14 := OSIMoniker.
    recoveredValue15 := (self) parameterForClass: (recoveredValue14).
    (recoveredValue13) add: (recoveredValue15).
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
    recoveredValue25 := (self) parameterForType: ('uint32').
    (recoveredValue24) add: (recoveredValue25).
    recoveredValue26 := (recoveredValue23) asArray.
    (recoveredValue21) add: (recoveredValue26).
    recoveredValue27 := recoveredLocal2.
    (recoveredValue27) add: ('uint32').
    recoveredValue28 := recoveredLocal1.
    recoveredValue29 := OrderedCollection.
    recoveredValue30 := (recoveredValue29) new.
    recoveredValue31 := recoveredValue30.
    recoveredValue32 := OSIMoniker.
    recoveredValue33 := (self) parameterForClass: (recoveredValue32).
    (recoveredValue31) add: (recoveredValue33).
    recoveredValue34 := (recoveredValue30) asArray.
    (recoveredValue28) add: (recoveredValue34).
    recoveredValue35 := recoveredLocal2.
    (recoveredValue35) add: ('uint32').
    recoveredValue36 := recoveredLocal1.
    recoveredValue37 := OrderedCollection.
    recoveredValue38 := (recoveredValue37) new.
    recoveredValue39 := recoveredValue38.
    recoveredValue40 := OSIMoniker.
    recoveredValue41 := (self) parameterForClass: (recoveredValue40).
    (recoveredValue39) add: (recoveredValue41).
    recoveredValue42 := recoveredValue38.
    recoveredValue43 := OSUInt8.
    recoveredValue44 := (self) parameterForClass: (recoveredValue43).
    (recoveredValue42) add: (recoveredValue44).
    recoveredValue45 := (recoveredValue38) asArray.
    (recoveredValue36) add: (recoveredValue45).
    recoveredValue46 := recoveredLocal2.
    (recoveredValue46) add: ('uint32').
    recoveredValue47 := recoveredLocal1.
    recoveredValue48 := OrderedCollection.
    recoveredValue49 := (recoveredValue48) new.
    recoveredValue50 := recoveredValue49.
    recoveredValue51 := (self) parameterForType: ('uint32').
    (recoveredValue50) add: (recoveredValue51).
    recoveredValue52 := recoveredValue49.
    recoveredValue53 := OSFiletime.
    recoveredValue54 := (self) parameterForClass: (recoveredValue53).
    (recoveredValue52) add: (recoveredValue54).
    recoveredValue55 := (recoveredValue49) asArray.
    (recoveredValue47) add: (recoveredValue55).
    recoveredValue56 := recoveredLocal2.
    (recoveredValue56) add: ('uint32').
    recoveredValue57 := recoveredLocal1.
    recoveredValue58 := OrderedCollection.
    recoveredValue59 := (recoveredValue58) new.
    recoveredValue60 := recoveredValue59.
    recoveredValue61 := OSIMoniker.
    recoveredValue62 := (self) parameterForClass: (recoveredValue61).
    (recoveredValue60) add: (recoveredValue62).
    recoveredValue63 := recoveredValue59.
    recoveredValue64 := OSFiletime.
    recoveredValue65 := (self) parameterForClass: (recoveredValue64).
    (recoveredValue63) add: (recoveredValue65).
    recoveredValue66 := (recoveredValue59) asArray.
    (recoveredValue57) add: (recoveredValue66).
    recoveredValue67 := recoveredLocal2.
    (recoveredValue67) add: ('uint32').
    recoveredValue68 := recoveredLocal1.
    recoveredValue69 := OrderedCollection.
    recoveredValue70 := (recoveredValue69) new.
    recoveredValue71 := recoveredValue70.
    recoveredValue72 := OSUInt8.
    recoveredValue73 := (self) parameterForClass: (recoveredValue72).
    (recoveredValue71) add: (recoveredValue73).
    recoveredValue74 := (recoveredValue70) asArray.
    (recoveredValue68) add: (recoveredValue74).
    recoveredValue75 := Array.
    recoveredValue76 := recoveredLocal2.
    recoveredValue77 := recoveredLocal1.
    recoveredValue78 := (recoveredValue75) with: (recoveredValue76) with: (recoveredValue77).
    ^recoveredValue78
! !

