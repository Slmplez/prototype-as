"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20032b18; bytecode file offset 0x1864e8"
!OSIOleControl class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    (self) interfaceSelectors: (#('queryInterface:ppvObject:' 'addRef' 'release' 'getControlInfo:' 'onMnemonic:' 'onAmbientPropertyChange:' 'freezeEvents:')).
    recoveredValue0 := (self) callOutPlatformFunctionAt: (7).
    FreezeEvents := recoveredValue0.
    recoveredValue1 := (self) callOutPlatformFunctionAt: (4).
    GetControlInfo := recoveredValue1.
    recoveredValue2 := (self) callOutPlatformFunctionAt: (6).
    OnAmbientPropertyChange := recoveredValue2.
    recoveredValue3 := (self) callOutPlatformFunctionAt: (5).
    OnMnemonic := recoveredValue3.
    ^self
! !

"psupp.ic method 0x200417c8; bytecode file offset 0x195090"
!OSIOleControl class methodsFor: 'recovered'!
localDescriptions
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 |
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
    recoveredValue9 := OSControlinfo.
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
    recoveredValue17 := OSMsg.
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
    recoveredValue25 := (self) parameterForType: ('int32').
    (recoveredValue24) add: (recoveredValue25).
    recoveredValue26 := (recoveredValue23) asArray.
    (recoveredValue21) add: (recoveredValue26).
    recoveredValue27 := recoveredLocal2.
    (recoveredValue27) add: ('uint32').
    recoveredValue28 := recoveredLocal1.
    recoveredValue29 := OrderedCollection.
    recoveredValue30 := (recoveredValue29) new.
    recoveredValue31 := recoveredValue30.
    recoveredValue32 := (self) parameterForType: ('bool').
    (recoveredValue31) add: (recoveredValue32).
    recoveredValue33 := (recoveredValue30) asArray.
    (recoveredValue28) add: (recoveredValue33).
    recoveredValue34 := Array.
    recoveredValue35 := recoveredLocal2.
    recoveredValue36 := recoveredLocal1.
    recoveredValue37 := (recoveredValue34) with: (recoveredValue35) with: (recoveredValue36).
    ^recoveredValue37
! !

