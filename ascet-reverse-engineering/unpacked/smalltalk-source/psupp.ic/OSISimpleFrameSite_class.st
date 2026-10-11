"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2002ca10; bytecode file offset 0x1802f0"
!OSISimpleFrameSite class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredValue0 recoveredValue1 |
    (self) interfaceSelectors: (#('queryInterface:ppvObject:' 'addRef' 'release' 'preMessageFilter:msg:wp:lp:lplResult:lpdwCookie:' 'postMessageFilter:msg:wp:lp:lplResult:dwCookie:')).
    recoveredValue0 := (self) callOutPlatformFunctionAt: (5).
    PostMessageFilter := recoveredValue0.
    recoveredValue1 := (self) callOutPlatformFunctionAt: (4).
    PreMessageFilter := recoveredValue1.
    ^self
! !

"psupp.ic method 0x200465a0; bytecode file offset 0x199e6c"
!OSISimpleFrameSite class methodsFor: 'recovered'!
localDescriptions
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 |
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
    recoveredValue9 := OSHwnd.
    recoveredValue10 := (self) parameterForType: ('immediate') class: (recoveredValue9).
    (recoveredValue8) add: (recoveredValue10).
    recoveredValue11 := recoveredValue7.
    recoveredValue12 := (self) parameterForType: ('uint32').
    (recoveredValue11) add: (recoveredValue12).
    recoveredValue13 := recoveredValue7.
    recoveredValue14 := (self) parameterForType: ('uint32').
    (recoveredValue13) add: (recoveredValue14).
    recoveredValue15 := recoveredValue7.
    recoveredValue16 := (self) parameterForType: ('int32').
    (recoveredValue15) add: (recoveredValue16).
    recoveredValue17 := recoveredValue7.
    recoveredValue18 := OSUInt8.
    recoveredValue19 := (self) parameterForClass: (recoveredValue18).
    (recoveredValue17) add: (recoveredValue19).
    recoveredValue20 := recoveredValue7.
    recoveredValue21 := OSUInt8.
    recoveredValue22 := (self) parameterForClass: (recoveredValue21).
    (recoveredValue20) add: (recoveredValue22).
    recoveredValue23 := (recoveredValue7) asArray.
    (recoveredValue5) add: (recoveredValue23).
    recoveredValue24 := recoveredLocal2.
    (recoveredValue24) add: ('uint32').
    recoveredValue25 := recoveredLocal1.
    recoveredValue26 := OrderedCollection.
    recoveredValue27 := (recoveredValue26) new.
    recoveredValue28 := recoveredValue27.
    recoveredValue29 := OSHwnd.
    recoveredValue30 := (self) parameterForType: ('immediate') class: (recoveredValue29).
    (recoveredValue28) add: (recoveredValue30).
    recoveredValue31 := recoveredValue27.
    recoveredValue32 := (self) parameterForType: ('uint32').
    (recoveredValue31) add: (recoveredValue32).
    recoveredValue33 := recoveredValue27.
    recoveredValue34 := (self) parameterForType: ('uint32').
    (recoveredValue33) add: (recoveredValue34).
    recoveredValue35 := recoveredValue27.
    recoveredValue36 := (self) parameterForType: ('int32').
    (recoveredValue35) add: (recoveredValue36).
    recoveredValue37 := recoveredValue27.
    recoveredValue38 := OSUInt8.
    recoveredValue39 := (self) parameterForClass: (recoveredValue38).
    (recoveredValue37) add: (recoveredValue39).
    recoveredValue40 := recoveredValue27.
    recoveredValue41 := (self) parameterForType: ('uint32').
    (recoveredValue40) add: (recoveredValue41).
    recoveredValue42 := (recoveredValue27) asArray.
    (recoveredValue25) add: (recoveredValue42).
    recoveredValue43 := Array.
    recoveredValue44 := recoveredLocal2.
    recoveredValue45 := recoveredLocal1.
    recoveredValue46 := (recoveredValue43) with: (recoveredValue44) with: (recoveredValue45).
    ^recoveredValue46
! !

