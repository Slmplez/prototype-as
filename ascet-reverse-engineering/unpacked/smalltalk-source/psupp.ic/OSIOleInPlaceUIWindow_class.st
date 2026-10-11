"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20032a40; bytecode file offset 0x1862f0"
!OSIOleInPlaceUIWindow class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    (self) interfaceSelectors: (#('queryInterface:ppvObject:' 'addRef' 'release' 'getWindow:' 'contextSensitiveHelp:' 'getBorder:' 'requestBorderSpace:' 'setBorderSpace:' 'setActiveObject:pszObjName:')).
    recoveredValue0 := (self) callOutPlatformFunctionAt: (6).
    GetBorder := recoveredValue0.
    recoveredValue1 := (self) callOutPlatformFunctionAt: (7).
    RequestBorderSpace := recoveredValue1.
    recoveredValue2 := (self) callOutPlatformFunctionAt: (9).
    SetActiveObject := recoveredValue2.
    recoveredValue3 := (self) callOutPlatformFunctionAt: (8).
    SetBorderSpace := recoveredValue3.
    ^self
! !

"psupp.ic method 0x20042ac8; bytecode file offset 0x196388"
!OSIOleInPlaceUIWindow class methodsFor: 'recovered'!
localDescriptions
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 |
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
    recoveredValue9 := OSRect.
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
    recoveredValue17 := OSRect.
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
    recoveredValue25 := OSRect.
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
    recoveredValue33 := OSIOleInPlaceActiveObject.
    recoveredValue34 := (self) parameterForClass: (recoveredValue33).
    (recoveredValue32) add: (recoveredValue34).
    recoveredValue35 := recoveredValue31.
    recoveredValue36 := OSOleStringZ.
    recoveredValue37 := (self) parameterForClass: (recoveredValue36).
    (recoveredValue35) add: (recoveredValue37).
    recoveredValue38 := (recoveredValue31) asArray.
    (recoveredValue29) add: (recoveredValue38).
    recoveredValue39 := Array.
    recoveredValue40 := recoveredLocal2.
    recoveredValue41 := recoveredLocal1.
    recoveredValue42 := (recoveredValue39) with: (recoveredValue40) with: (recoveredValue41).
    ^recoveredValue42
! !

