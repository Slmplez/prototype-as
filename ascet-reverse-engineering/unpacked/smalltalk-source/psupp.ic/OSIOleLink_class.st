"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2003d674; bytecode file offset 0x190f40"
!OSIOleLink class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    (self) interfaceSelectors: (#('queryInterface:ppvObject:' 'addRef' 'release' 'setUpdateOptions:' 'getUpdateOptions:' 'setSourceMoniker:rclsid:' 'getSourceMoniker:' 'setSourceDisplayName:' 'getSourceDisplayName:' 'bindToSource:pbc:' 'bindIfRunning' 'getBoundSource:' 'unbindSource' 'update:')).
    recoveredValue0 := (self) callOutPlatformFunctionAt: (11).
    BindIfRunning := recoveredValue0.
    recoveredValue1 := (self) callOutPlatformFunctionAt: (10).
    BindToSource := recoveredValue1.
    recoveredValue2 := (self) callOutPlatformFunctionAt: (12).
    GetBoundSource := recoveredValue2.
    recoveredValue3 := (self) callOutPlatformFunctionAt: (9).
    GetSourceDisplayName := recoveredValue3.
    recoveredValue4 := (self) callOutPlatformFunctionAt: (7).
    GetSourceMoniker := recoveredValue4.
    recoveredValue5 := (self) callOutPlatformFunctionAt: (5).
    GetUpdateOptions := recoveredValue5.
    recoveredValue6 := (self) callOutPlatformFunctionAt: (8).
    SetSourceDisplayName := recoveredValue6.
    recoveredValue7 := (self) callOutPlatformFunctionAt: (6).
    SetSourceMoniker := recoveredValue7.
    recoveredValue8 := (self) callOutPlatformFunctionAt: (4).
    SetUpdateOptions := recoveredValue8.
    recoveredValue9 := (self) callOutPlatformFunctionAt: (13).
    UnbindSource := recoveredValue9.
    recoveredValue10 := (self) callOutPlatformFunctionAt: (14).
    Update := recoveredValue10.
    ^self
! !

"psupp.ic method 0x2004bd9c; bytecode file offset 0x19f66c"
!OSIOleLink class methodsFor: 'recovered'!
localDescriptions
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 recoveredValue57 recoveredValue58 recoveredValue59 recoveredValue60 recoveredValue61 recoveredValue62 recoveredValue63 recoveredValue64 recoveredValue65 recoveredValue66 recoveredValue67 recoveredValue68 recoveredValue69 recoveredValue70 recoveredValue71 recoveredValue72 recoveredValue73 recoveredValue74 recoveredValue75 recoveredValue76 recoveredValue77 recoveredValue78 recoveredValue79 recoveredValue80 recoveredValue81 recoveredValue82 recoveredValue83 recoveredValue84 recoveredValue85 recoveredValue86 recoveredValue87 |
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
    recoveredValue10 := (recoveredValue7) asArray.
    (recoveredValue5) add: (recoveredValue10).
    recoveredValue11 := recoveredLocal2.
    (recoveredValue11) add: ('uint32').
    recoveredValue12 := recoveredLocal1.
    recoveredValue13 := OrderedCollection.
    recoveredValue14 := (recoveredValue13) new.
    recoveredValue15 := recoveredValue14.
    recoveredValue16 := OSUInt8.
    recoveredValue17 := (self) parameterForClass: (recoveredValue16).
    (recoveredValue15) add: (recoveredValue17).
    recoveredValue18 := (recoveredValue14) asArray.
    (recoveredValue12) add: (recoveredValue18).
    recoveredValue19 := recoveredLocal2.
    (recoveredValue19) add: ('uint32').
    recoveredValue20 := recoveredLocal1.
    recoveredValue21 := OrderedCollection.
    recoveredValue22 := (recoveredValue21) new.
    recoveredValue23 := recoveredValue22.
    recoveredValue24 := OSIMoniker.
    recoveredValue25 := (self) parameterForClass: (recoveredValue24).
    (recoveredValue23) add: (recoveredValue25).
    recoveredValue26 := recoveredValue22.
    recoveredValue27 := OSClsid.
    recoveredValue28 := (self) parameterForClass: (recoveredValue27).
    (recoveredValue26) add: (recoveredValue28).
    recoveredValue29 := (recoveredValue22) asArray.
    (recoveredValue20) add: (recoveredValue29).
    recoveredValue30 := recoveredLocal2.
    (recoveredValue30) add: ('uint32').
    recoveredValue31 := recoveredLocal1.
    recoveredValue32 := OrderedCollection.
    recoveredValue33 := (recoveredValue32) new.
    recoveredValue34 := recoveredValue33.
    recoveredValue35 := OSUInt8.
    recoveredValue36 := (self) parameterForClass: (recoveredValue35).
    (recoveredValue34) add: (recoveredValue36).
    recoveredValue37 := (recoveredValue33) asArray.
    (recoveredValue31) add: (recoveredValue37).
    recoveredValue38 := recoveredLocal2.
    (recoveredValue38) add: ('uint32').
    recoveredValue39 := recoveredLocal1.
    recoveredValue40 := OrderedCollection.
    recoveredValue41 := (recoveredValue40) new.
    recoveredValue42 := recoveredValue41.
    recoveredValue43 := OSOleStringZ.
    recoveredValue44 := (self) parameterForClass: (recoveredValue43).
    (recoveredValue42) add: (recoveredValue44).
    recoveredValue45 := (recoveredValue41) asArray.
    (recoveredValue39) add: (recoveredValue45).
    recoveredValue46 := recoveredLocal2.
    (recoveredValue46) add: ('uint32').
    recoveredValue47 := recoveredLocal1.
    recoveredValue48 := OrderedCollection.
    recoveredValue49 := (recoveredValue48) new.
    recoveredValue50 := recoveredValue49.
    recoveredValue51 := OSUInt8.
    recoveredValue52 := (self) parameterForClass: (recoveredValue51).
    (recoveredValue50) add: (recoveredValue52).
    recoveredValue53 := (recoveredValue49) asArray.
    (recoveredValue47) add: (recoveredValue53).
    recoveredValue54 := recoveredLocal2.
    (recoveredValue54) add: ('uint32').
    recoveredValue55 := recoveredLocal1.
    recoveredValue56 := OrderedCollection.
    recoveredValue57 := (recoveredValue56) new.
    recoveredValue58 := recoveredValue57.
    recoveredValue59 := (self) parameterForType: ('uint32').
    (recoveredValue58) add: (recoveredValue59).
    recoveredValue60 := recoveredValue57.
    recoveredValue61 := OSIBindCtx.
    recoveredValue62 := (self) parameterForClass: (recoveredValue61).
    (recoveredValue60) add: (recoveredValue62).
    recoveredValue63 := (recoveredValue57) asArray.
    (recoveredValue55) add: (recoveredValue63).
    recoveredValue64 := recoveredLocal2.
    (recoveredValue64) add: ('uint32').
    recoveredValue65 := recoveredLocal1.
    (recoveredValue65) add: (#()).
    recoveredValue66 := recoveredLocal2.
    (recoveredValue66) add: ('uint32').
    recoveredValue67 := recoveredLocal1.
    recoveredValue68 := OrderedCollection.
    recoveredValue69 := (recoveredValue68) new.
    recoveredValue70 := recoveredValue69.
    recoveredValue71 := OSUInt8.
    recoveredValue72 := (self) parameterForClass: (recoveredValue71).
    (recoveredValue70) add: (recoveredValue72).
    recoveredValue73 := (recoveredValue69) asArray.
    (recoveredValue67) add: (recoveredValue73).
    recoveredValue74 := recoveredLocal2.
    (recoveredValue74) add: ('uint32').
    recoveredValue75 := recoveredLocal1.
    (recoveredValue75) add: (#()).
    recoveredValue76 := recoveredLocal2.
    (recoveredValue76) add: ('uint32').
    recoveredValue77 := recoveredLocal1.
    recoveredValue78 := OrderedCollection.
    recoveredValue79 := (recoveredValue78) new.
    recoveredValue80 := recoveredValue79.
    recoveredValue81 := OSIBindCtx.
    recoveredValue82 := (self) parameterForClass: (recoveredValue81).
    (recoveredValue80) add: (recoveredValue82).
    recoveredValue83 := (recoveredValue79) asArray.
    (recoveredValue77) add: (recoveredValue83).
    recoveredValue84 := Array.
    recoveredValue85 := recoveredLocal2.
    recoveredValue86 := recoveredLocal1.
    recoveredValue87 := (recoveredValue84) with: (recoveredValue85) with: (recoveredValue86).
    ^recoveredValue87
! !

