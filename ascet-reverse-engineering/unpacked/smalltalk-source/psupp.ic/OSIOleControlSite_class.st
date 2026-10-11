"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200387f0; bytecode file offset 0x18c0ac"
!OSIOleControlSite class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    (self) interfaceSelectors: (#('queryInterface:ppvObject:' 'addRef' 'release' 'onControlInfoChanged' 'lockInPlaceActive:' 'getExtendedControl:' 'transformCoords:lpptfContainer:flags:' 'translateAccelerator:grfModifiers:' 'onFocus:' 'showPropertyFrame')).
    recoveredValue0 := (self) callOutPlatformFunctionAt: (6).
    GetExtendedControl := recoveredValue0.
    recoveredValue1 := (self) callOutPlatformFunctionAt: (5).
    LockInPlaceActive := recoveredValue1.
    recoveredValue2 := (self) callOutPlatformFunctionAt: (4).
    OnControlInfoChanged := recoveredValue2.
    recoveredValue3 := (self) callOutPlatformFunctionAt: (9).
    OnFocus := recoveredValue3.
    recoveredValue4 := (self) callOutPlatformFunctionAt: (10).
    ShowPropertyFrame := recoveredValue4.
    recoveredValue5 := (self) callOutPlatformFunctionAt: (7).
    TransformCoords := recoveredValue5.
    recoveredValue6 := (self) callOutPlatformFunctionAt: (8).
    TranslateAccelerator := recoveredValue6.
    ^self
! !

"psupp.ic method 0x20048360; bytecode file offset 0x19bc30"
!OSIOleControlSite class methodsFor: 'recovered'!
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
    (recoveredValue5) add: (#()).
    recoveredValue6 := recoveredLocal2.
    (recoveredValue6) add: ('uint32').
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := OrderedCollection.
    recoveredValue9 := (recoveredValue8) new.
    recoveredValue10 := recoveredValue9.
    recoveredValue11 := (self) parameterForType: ('bool').
    (recoveredValue10) add: (recoveredValue11).
    recoveredValue12 := (recoveredValue9) asArray.
    (recoveredValue7) add: (recoveredValue12).
    recoveredValue13 := recoveredLocal2.
    (recoveredValue13) add: ('uint32').
    recoveredValue14 := recoveredLocal1.
    recoveredValue15 := OrderedCollection.
    recoveredValue16 := (recoveredValue15) new.
    recoveredValue17 := recoveredValue16.
    recoveredValue18 := OSUInt8.
    recoveredValue19 := (self) parameterForClass: (recoveredValue18).
    (recoveredValue17) add: (recoveredValue19).
    recoveredValue20 := (recoveredValue16) asArray.
    (recoveredValue14) add: (recoveredValue20).
    recoveredValue21 := recoveredLocal2.
    (recoveredValue21) add: ('uint32').
    recoveredValue22 := recoveredLocal1.
    recoveredValue23 := OrderedCollection.
    recoveredValue24 := (recoveredValue23) new.
    recoveredValue25 := recoveredValue24.
    recoveredValue26 := OSPointl.
    recoveredValue27 := (self) parameterForClass: (recoveredValue26).
    (recoveredValue25) add: (recoveredValue27).
    recoveredValue28 := recoveredValue24.
    recoveredValue29 := OSPointf.
    recoveredValue30 := (self) parameterForClass: (recoveredValue29).
    (recoveredValue28) add: (recoveredValue30).
    recoveredValue31 := recoveredValue24.
    recoveredValue32 := (self) parameterForType: ('uint32').
    (recoveredValue31) add: (recoveredValue32).
    recoveredValue33 := (recoveredValue24) asArray.
    (recoveredValue22) add: (recoveredValue33).
    recoveredValue34 := recoveredLocal2.
    (recoveredValue34) add: ('uint32').
    recoveredValue35 := recoveredLocal1.
    recoveredValue36 := OrderedCollection.
    recoveredValue37 := (recoveredValue36) new.
    recoveredValue38 := recoveredValue37.
    recoveredValue39 := OSMsg.
    recoveredValue40 := (self) parameterForClass: (recoveredValue39).
    (recoveredValue38) add: (recoveredValue40).
    recoveredValue41 := recoveredValue37.
    recoveredValue42 := (self) parameterForType: ('uint32').
    (recoveredValue41) add: (recoveredValue42).
    recoveredValue43 := (recoveredValue37) asArray.
    (recoveredValue35) add: (recoveredValue43).
    recoveredValue44 := recoveredLocal2.
    (recoveredValue44) add: ('uint32').
    recoveredValue45 := recoveredLocal1.
    recoveredValue46 := OrderedCollection.
    recoveredValue47 := (recoveredValue46) new.
    recoveredValue48 := recoveredValue47.
    recoveredValue49 := (self) parameterForType: ('bool').
    (recoveredValue48) add: (recoveredValue49).
    recoveredValue50 := (recoveredValue47) asArray.
    (recoveredValue45) add: (recoveredValue50).
    recoveredValue51 := recoveredLocal2.
    (recoveredValue51) add: ('uint32').
    recoveredValue52 := recoveredLocal1.
    (recoveredValue52) add: (#()).
    recoveredValue53 := Array.
    recoveredValue54 := recoveredLocal2.
    recoveredValue55 := recoveredLocal1.
    recoveredValue56 := (recoveredValue53) with: (recoveredValue54) with: (recoveredValue55).
    ^recoveredValue56
! !

