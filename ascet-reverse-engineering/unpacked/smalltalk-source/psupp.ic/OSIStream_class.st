"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2003d700; bytecode file offset 0x190fcc"
!OSIStream class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    (self) interfaceSelectors: (#('queryInterface:ppvObject:' 'addRef' 'release' 'read:cb:pcbRead:' 'write:cb:pcbWritten:' 'seek:dwOrigin:plibNewPosition:' 'setSize:' 'copyTo:cb:pcbRead:pcbWritten:' 'commit:' 'revert' 'lockRegion:cb:dwLockType:' 'unlockRegion:cb:dwLockType:' 'stat:grfStatFlag:' 'clone:')).
    recoveredValue0 := (self) callOutPlatformFunctionAt: (14).
    Clone := recoveredValue0.
    recoveredValue1 := (self) callOutPlatformFunctionAt: (9).
    Commit := recoveredValue1.
    recoveredValue2 := (self) callOutPlatformFunctionAt: (8).
    CopyTo := recoveredValue2.
    recoveredValue3 := (self) callOutPlatformFunctionAt: (11).
    LockRegion := recoveredValue3.
    recoveredValue4 := (self) callOutPlatformFunctionAt: (4).
    Read := recoveredValue4.
    recoveredValue5 := (self) callOutPlatformFunctionAt: (10).
    Revert := recoveredValue5.
    recoveredValue6 := (self) callOutPlatformFunctionAt: (6).
    Seek := recoveredValue6.
    recoveredValue7 := (self) callOutPlatformFunctionAt: (7).
    SetSize := recoveredValue7.
    recoveredValue8 := (self) callOutPlatformFunctionAt: (13).
    Stat := recoveredValue8.
    recoveredValue9 := (self) callOutPlatformFunctionAt: (12).
    UnlockRegion := recoveredValue9.
    recoveredValue10 := (self) callOutPlatformFunctionAt: (5).
    Write := recoveredValue10.
    ^self
! !

"psupp.ic method 0x2004f01c; bytecode file offset 0x1a28f4"
!OSIStream class methodsFor: 'recovered'!
localDescriptions
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 recoveredValue57 recoveredValue58 recoveredValue59 recoveredValue60 recoveredValue61 recoveredValue62 recoveredValue63 recoveredValue64 recoveredValue65 recoveredValue66 recoveredValue67 recoveredValue68 recoveredValue69 recoveredValue70 recoveredValue71 recoveredValue72 recoveredValue73 recoveredValue74 recoveredValue75 recoveredValue76 recoveredValue77 recoveredValue78 recoveredValue79 recoveredValue80 recoveredValue81 recoveredValue82 recoveredValue83 recoveredValue84 recoveredValue85 recoveredValue86 recoveredValue87 recoveredValue88 recoveredValue89 recoveredValue90 recoveredValue91 recoveredValue92 recoveredValue93 recoveredValue94 recoveredValue95 recoveredValue96 recoveredValue97 recoveredValue98 recoveredValue99 recoveredValue100 recoveredValue101 recoveredValue102 recoveredValue103 recoveredValue104 recoveredValue105 recoveredValue106 recoveredValue107 recoveredValue108 recoveredValue109 recoveredValue110 recoveredValue111 recoveredValue112 recoveredValue113 recoveredValue114 recoveredValue115 recoveredValue116 recoveredValue117 recoveredValue118 recoveredValue119 recoveredValue120 recoveredValue121 recoveredValue122 recoveredValue123 recoveredValue124 |
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
    recoveredValue9 := OSUInt8.
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
    recoveredValue22 := OSUInt8.
    recoveredValue23 := (self) parameterForClass: (recoveredValue22).
    (recoveredValue21) add: (recoveredValue23).
    recoveredValue24 := recoveredValue20.
    recoveredValue25 := (self) parameterForType: ('uint32').
    (recoveredValue24) add: (recoveredValue25).
    recoveredValue26 := recoveredValue20.
    recoveredValue27 := OSUInt8.
    recoveredValue28 := (self) parameterForClass: (recoveredValue27).
    (recoveredValue26) add: (recoveredValue28).
    recoveredValue29 := (recoveredValue20) asArray.
    (recoveredValue18) add: (recoveredValue29).
    recoveredValue30 := recoveredLocal2.
    (recoveredValue30) add: ('uint32').
    recoveredValue31 := recoveredLocal1.
    recoveredValue32 := OrderedCollection.
    recoveredValue33 := (recoveredValue32) new.
    recoveredValue34 := recoveredValue33.
    recoveredValue35 := OSLargeInteger.
    recoveredValue36 := (self) parameterForType: ('stack') class: (recoveredValue35).
    (recoveredValue34) add: (recoveredValue36).
    recoveredValue37 := recoveredValue33.
    recoveredValue38 := (self) parameterForType: ('uint32').
    (recoveredValue37) add: (recoveredValue38).
    recoveredValue39 := recoveredValue33.
    recoveredValue40 := OSUlargeInteger.
    recoveredValue41 := (self) parameterForClass: (recoveredValue40).
    (recoveredValue39) add: (recoveredValue41).
    recoveredValue42 := (recoveredValue33) asArray.
    (recoveredValue31) add: (recoveredValue42).
    recoveredValue43 := recoveredLocal2.
    (recoveredValue43) add: ('uint32').
    recoveredValue44 := recoveredLocal1.
    recoveredValue45 := OrderedCollection.
    recoveredValue46 := (recoveredValue45) new.
    recoveredValue47 := recoveredValue46.
    recoveredValue48 := OSUlargeInteger.
    recoveredValue49 := (self) parameterForType: ('stack') class: (recoveredValue48).
    (recoveredValue47) add: (recoveredValue49).
    recoveredValue50 := (recoveredValue46) asArray.
    (recoveredValue44) add: (recoveredValue50).
    recoveredValue51 := recoveredLocal2.
    (recoveredValue51) add: ('uint32').
    recoveredValue52 := recoveredLocal1.
    recoveredValue53 := OrderedCollection.
    recoveredValue54 := (recoveredValue53) new.
    recoveredValue55 := recoveredValue54.
    recoveredValue56 := OSIStream.
    recoveredValue57 := (self) parameterForClass: (recoveredValue56).
    (recoveredValue55) add: (recoveredValue57).
    recoveredValue58 := recoveredValue54.
    recoveredValue59 := OSUlargeInteger.
    recoveredValue60 := (self) parameterForType: ('stack') class: (recoveredValue59).
    (recoveredValue58) add: (recoveredValue60).
    recoveredValue61 := recoveredValue54.
    recoveredValue62 := OSUlargeInteger.
    recoveredValue63 := (self) parameterForClass: (recoveredValue62).
    (recoveredValue61) add: (recoveredValue63).
    recoveredValue64 := recoveredValue54.
    recoveredValue65 := OSUlargeInteger.
    recoveredValue66 := (self) parameterForClass: (recoveredValue65).
    (recoveredValue64) add: (recoveredValue66).
    recoveredValue67 := (recoveredValue54) asArray.
    (recoveredValue52) add: (recoveredValue67).
    recoveredValue68 := recoveredLocal2.
    (recoveredValue68) add: ('uint32').
    recoveredValue69 := recoveredLocal1.
    recoveredValue70 := OrderedCollection.
    recoveredValue71 := (recoveredValue70) new.
    recoveredValue72 := recoveredValue71.
    recoveredValue73 := (self) parameterForType: ('uint32').
    (recoveredValue72) add: (recoveredValue73).
    recoveredValue74 := (recoveredValue71) asArray.
    (recoveredValue69) add: (recoveredValue74).
    recoveredValue75 := recoveredLocal2.
    (recoveredValue75) add: ('uint32').
    recoveredValue76 := recoveredLocal1.
    (recoveredValue76) add: (#()).
    recoveredValue77 := recoveredLocal2.
    (recoveredValue77) add: ('uint32').
    recoveredValue78 := recoveredLocal1.
    recoveredValue79 := OrderedCollection.
    recoveredValue80 := (recoveredValue79) new.
    recoveredValue81 := recoveredValue80.
    recoveredValue82 := OSUlargeInteger.
    recoveredValue83 := (self) parameterForType: ('stack') class: (recoveredValue82).
    (recoveredValue81) add: (recoveredValue83).
    recoveredValue84 := recoveredValue80.
    recoveredValue85 := OSUlargeInteger.
    recoveredValue86 := (self) parameterForType: ('stack') class: (recoveredValue85).
    (recoveredValue84) add: (recoveredValue86).
    recoveredValue87 := recoveredValue80.
    recoveredValue88 := (self) parameterForType: ('uint32').
    (recoveredValue87) add: (recoveredValue88).
    recoveredValue89 := (recoveredValue80) asArray.
    (recoveredValue78) add: (recoveredValue89).
    recoveredValue90 := recoveredLocal2.
    (recoveredValue90) add: ('uint32').
    recoveredValue91 := recoveredLocal1.
    recoveredValue92 := OrderedCollection.
    recoveredValue93 := (recoveredValue92) new.
    recoveredValue94 := recoveredValue93.
    recoveredValue95 := OSUlargeInteger.
    recoveredValue96 := (self) parameterForType: ('stack') class: (recoveredValue95).
    (recoveredValue94) add: (recoveredValue96).
    recoveredValue97 := recoveredValue93.
    recoveredValue98 := OSUlargeInteger.
    recoveredValue99 := (self) parameterForType: ('stack') class: (recoveredValue98).
    (recoveredValue97) add: (recoveredValue99).
    recoveredValue100 := recoveredValue93.
    recoveredValue101 := (self) parameterForType: ('uint32').
    (recoveredValue100) add: (recoveredValue101).
    recoveredValue102 := (recoveredValue93) asArray.
    (recoveredValue91) add: (recoveredValue102).
    recoveredValue103 := recoveredLocal2.
    (recoveredValue103) add: ('uint32').
    recoveredValue104 := recoveredLocal1.
    recoveredValue105 := OrderedCollection.
    recoveredValue106 := (recoveredValue105) new.
    recoveredValue107 := recoveredValue106.
    recoveredValue108 := OSStatstg.
    recoveredValue109 := (self) parameterForClass: (recoveredValue108).
    (recoveredValue107) add: (recoveredValue109).
    recoveredValue110 := recoveredValue106.
    recoveredValue111 := (self) parameterForType: ('uint32').
    (recoveredValue110) add: (recoveredValue111).
    recoveredValue112 := (recoveredValue106) asArray.
    (recoveredValue104) add: (recoveredValue112).
    recoveredValue113 := recoveredLocal2.
    (recoveredValue113) add: ('uint32').
    recoveredValue114 := recoveredLocal1.
    recoveredValue115 := OrderedCollection.
    recoveredValue116 := (recoveredValue115) new.
    recoveredValue117 := recoveredValue116.
    recoveredValue118 := OSUInt8.
    recoveredValue119 := (self) parameterForClass: (recoveredValue118).
    (recoveredValue117) add: (recoveredValue119).
    recoveredValue120 := (recoveredValue116) asArray.
    (recoveredValue114) add: (recoveredValue120).
    recoveredValue121 := Array.
    recoveredValue122 := recoveredLocal2.
    recoveredValue123 := recoveredLocal1.
    recoveredValue124 := (recoveredValue121) with: (recoveredValue122) with: (recoveredValue123).
    ^recoveredValue124
! !

