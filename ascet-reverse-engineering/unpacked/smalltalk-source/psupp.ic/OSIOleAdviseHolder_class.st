"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200368d4; bytecode file offset 0x18a18c"
!OSIOleAdviseHolder class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    (self) interfaceSelectors: (#('queryInterface:ppvObject:' 'addRef' 'release' 'advise:pdwConnection:' 'unadvise:' 'enumAdvise:' 'sendOnRename:' 'sendOnSave' 'sendOnClose')).
    recoveredValue0 := (self) callOutPlatformFunctionAt: (4).
    Advise := recoveredValue0.
    recoveredValue1 := (self) callOutPlatformFunctionAt: (6).
    EnumAdvise := recoveredValue1.
    recoveredValue2 := (self) callOutPlatformFunctionAt: (9).
    SendOnClose := recoveredValue2.
    recoveredValue3 := (self) callOutPlatformFunctionAt: (7).
    SendOnRename := recoveredValue3.
    recoveredValue4 := (self) callOutPlatformFunctionAt: (8).
    SendOnSave := recoveredValue4.
    recoveredValue5 := (self) callOutPlatformFunctionAt: (5).
    Unadvise := recoveredValue5.
    ^self
! !

"psupp.ic method 0x200450e0; bytecode file offset 0x1989a8"
!OSIOleAdviseHolder class methodsFor: 'recovered'!
localDescriptions
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 |
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
    recoveredValue9 := OSIAdviseSink.
    recoveredValue10 := (self) parameterForClass: (recoveredValue9).
    (recoveredValue8) add: (recoveredValue10).
    recoveredValue11 := recoveredValue7.
    recoveredValue12 := OSUInt8.
    recoveredValue13 := (self) parameterForClass: (recoveredValue12).
    (recoveredValue11) add: (recoveredValue13).
    recoveredValue14 := (recoveredValue7) asArray.
    (recoveredValue5) add: (recoveredValue14).
    recoveredValue15 := recoveredLocal2.
    (recoveredValue15) add: ('uint32').
    recoveredValue16 := recoveredLocal1.
    recoveredValue17 := OrderedCollection.
    recoveredValue18 := (recoveredValue17) new.
    recoveredValue19 := recoveredValue18.
    recoveredValue20 := (self) parameterForType: ('uint32').
    (recoveredValue19) add: (recoveredValue20).
    recoveredValue21 := (recoveredValue18) asArray.
    (recoveredValue16) add: (recoveredValue21).
    recoveredValue22 := recoveredLocal2.
    (recoveredValue22) add: ('uint32').
    recoveredValue23 := recoveredLocal1.
    recoveredValue24 := OrderedCollection.
    recoveredValue25 := (recoveredValue24) new.
    recoveredValue26 := recoveredValue25.
    recoveredValue27 := OSUInt8.
    recoveredValue28 := (self) parameterForClass: (recoveredValue27).
    (recoveredValue26) add: (recoveredValue28).
    recoveredValue29 := (recoveredValue25) asArray.
    (recoveredValue23) add: (recoveredValue29).
    recoveredValue30 := recoveredLocal2.
    (recoveredValue30) add: ('uint32').
    recoveredValue31 := recoveredLocal1.
    recoveredValue32 := OrderedCollection.
    recoveredValue33 := (recoveredValue32) new.
    recoveredValue34 := recoveredValue33.
    recoveredValue35 := OSIMoniker.
    recoveredValue36 := (self) parameterForClass: (recoveredValue35).
    (recoveredValue34) add: (recoveredValue36).
    recoveredValue37 := (recoveredValue33) asArray.
    (recoveredValue31) add: (recoveredValue37).
    recoveredValue38 := recoveredLocal2.
    (recoveredValue38) add: ('uint32').
    recoveredValue39 := recoveredLocal1.
    (recoveredValue39) add: (#()).
    recoveredValue40 := recoveredLocal2.
    (recoveredValue40) add: ('uint32').
    recoveredValue41 := recoveredLocal1.
    (recoveredValue41) add: (#()).
    recoveredValue42 := Array.
    recoveredValue43 := recoveredLocal2.
    recoveredValue44 := recoveredLocal1.
    recoveredValue45 := (recoveredValue42) with: (recoveredValue43) with: (recoveredValue44).
    ^recoveredValue45
! !

