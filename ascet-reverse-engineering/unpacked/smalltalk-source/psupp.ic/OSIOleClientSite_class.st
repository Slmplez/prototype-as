"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2003698c; bytecode file offset 0x18a244"
!OSIOleClientSite class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    (self) interfaceSelectors: (#('queryInterface:ppvObject:' 'addRef' 'release' 'saveObject' 'getMoniker:dwWhichMoniker:ppmk:' 'getContainer:' 'showObject' 'onShowWindow:' 'requestNewObjectLayout')).
    recoveredValue0 := (self) callOutPlatformFunctionAt: (6).
    GetContainer := recoveredValue0.
    recoveredValue1 := (self) callOutPlatformFunctionAt: (5).
    GetMoniker := recoveredValue1.
    recoveredValue2 := (self) callOutPlatformFunctionAt: (8).
    OnShowWindow := recoveredValue2.
    recoveredValue3 := (self) callOutPlatformFunctionAt: (9).
    RequestNewObjectLayout := recoveredValue3.
    recoveredValue4 := (self) callOutPlatformFunctionAt: (4).
    SaveObject := recoveredValue4.
    recoveredValue5 := (self) callOutPlatformFunctionAt: (7).
    ShowObject := recoveredValue5.
    ^self
! !

"psupp.ic method 0x20044bb8; bytecode file offset 0x19847c"
!OSIOleClientSite class methodsFor: 'recovered'!
localDescriptions
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal2.
    (recoveredValue4) add: ('uint32').
    recoveredValue5 := recoveredLocal1.
    (recoveredValue5) add: (#()).
    recoveredValue6 := recoveredLocal2.
    (recoveredValue6) add: ('uint32').
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := OrderedCollection.
    recoveredValue9 := (recoveredValue8) new.
    recoveredValue10 := recoveredValue9.
    recoveredValue11 := (self) parameterForType: ('uint32').
    (recoveredValue10) add: (recoveredValue11).
    recoveredValue12 := recoveredValue9.
    recoveredValue13 := (self) parameterForType: ('uint32').
    (recoveredValue12) add: (recoveredValue13).
    recoveredValue14 := recoveredValue9.
    recoveredValue15 := OSUInt8.
    recoveredValue16 := (self) parameterForClass: (recoveredValue15).
    (recoveredValue14) add: (recoveredValue16).
    recoveredValue17 := (recoveredValue9) asArray.
    (recoveredValue7) add: (recoveredValue17).
    recoveredValue18 := recoveredLocal2.
    (recoveredValue18) add: ('uint32').
    recoveredValue19 := recoveredLocal1.
    recoveredValue20 := OrderedCollection.
    recoveredValue21 := (recoveredValue20) new.
    recoveredValue22 := recoveredValue21.
    recoveredValue23 := OSUInt8.
    recoveredValue24 := (self) parameterForClass: (recoveredValue23).
    (recoveredValue22) add: (recoveredValue24).
    recoveredValue25 := (recoveredValue21) asArray.
    (recoveredValue19) add: (recoveredValue25).
    recoveredValue26 := recoveredLocal2.
    (recoveredValue26) add: ('uint32').
    recoveredValue27 := recoveredLocal1.
    (recoveredValue27) add: (#()).
    recoveredValue28 := recoveredLocal2.
    (recoveredValue28) add: ('uint32').
    recoveredValue29 := recoveredLocal1.
    recoveredValue30 := OrderedCollection.
    recoveredValue31 := (recoveredValue30) new.
    recoveredValue32 := recoveredValue31.
    recoveredValue33 := (self) parameterForType: ('bool').
    (recoveredValue32) add: (recoveredValue33).
    recoveredValue34 := (recoveredValue31) asArray.
    (recoveredValue29) add: (recoveredValue34).
    recoveredValue35 := recoveredLocal2.
    (recoveredValue35) add: ('uint32').
    recoveredValue36 := recoveredLocal1.
    (recoveredValue36) add: (#()).
    recoveredValue37 := Array.
    recoveredValue38 := recoveredLocal2.
    recoveredValue39 := recoveredLocal1.
    recoveredValue40 := (recoveredValue37) with: (recoveredValue38) with: (recoveredValue39).
    ^recoveredValue40
! !

