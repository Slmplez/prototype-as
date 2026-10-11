"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200329b0; bytecode file offset 0x186260"
!OSIPropertyPageSite class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    (self) interfaceSelectors: (#('queryInterface:ppvObject:' 'addRef' 'release' 'onStatusChange:' 'getLocaleID:' 'getPageContainer:' 'translateAccelerator:')).
    recoveredValue0 := (self) callOutPlatformFunctionAt: (5).
    GetLocaleID := recoveredValue0.
    recoveredValue1 := (self) callOutPlatformFunctionAt: (6).
    GetPageContainer := recoveredValue1.
    recoveredValue2 := (self) callOutPlatformFunctionAt: (4).
    OnStatusChange := recoveredValue2.
    recoveredValue3 := (self) callOutPlatformFunctionAt: (7).
    TranslateAccelerator := recoveredValue3.
    ^self
! !

"psupp.ic method 0x2004186c; bytecode file offset 0x19512c"
!OSIPropertyPageSite class methodsFor: 'recovered'!
localDescriptions
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 |
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
    recoveredValue24 := OSUInt8.
    recoveredValue25 := (self) parameterForClass: (recoveredValue24).
    (recoveredValue23) add: (recoveredValue25).
    recoveredValue26 := (recoveredValue22) asArray.
    (recoveredValue20) add: (recoveredValue26).
    recoveredValue27 := recoveredLocal2.
    (recoveredValue27) add: ('uint32').
    recoveredValue28 := recoveredLocal1.
    recoveredValue29 := OrderedCollection.
    recoveredValue30 := (recoveredValue29) new.
    recoveredValue31 := recoveredValue30.
    recoveredValue32 := OSMsg.
    recoveredValue33 := (self) parameterForClass: (recoveredValue32).
    (recoveredValue31) add: (recoveredValue33).
    recoveredValue34 := (recoveredValue30) asArray.
    (recoveredValue28) add: (recoveredValue34).
    recoveredValue35 := Array.
    recoveredValue36 := recoveredLocal2.
    recoveredValue37 := recoveredLocal1.
    recoveredValue38 := (recoveredValue35) with: (recoveredValue36) with: (recoveredValue37).
    ^recoveredValue38
! !

