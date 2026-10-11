"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2002c9dc; bytecode file offset 0x180284"
!OSIExternalConnection class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredValue0 recoveredValue1 |
    (self) interfaceSelectors: (#('queryInterface:ppvObject:' 'addRef' 'release' 'addConnection:reserved:' 'releaseConnection:reserved:fLastReleaseCloses:')).
    recoveredValue0 := (self) callOutPlatformFunctionAt: (4).
    AddConnection := recoveredValue0.
    recoveredValue1 := (self) callOutPlatformFunctionAt: (5).
    ReleaseConnection := recoveredValue1.
    ^self
! !

"psupp.ic method 0x2003f388; bytecode file offset 0x192c40"
!OSIExternalConnection class methodsFor: 'recovered'!
localDescriptions
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 |
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
    recoveredValue11 := (self) parameterForType: ('uint32').
    (recoveredValue10) add: (recoveredValue11).
    recoveredValue12 := (recoveredValue7) asArray.
    (recoveredValue5) add: (recoveredValue12).
    recoveredValue13 := recoveredLocal2.
    (recoveredValue13) add: ('uint32').
    recoveredValue14 := recoveredLocal1.
    recoveredValue15 := OrderedCollection.
    recoveredValue16 := (recoveredValue15) new.
    recoveredValue17 := recoveredValue16.
    recoveredValue18 := (self) parameterForType: ('uint32').
    (recoveredValue17) add: (recoveredValue18).
    recoveredValue19 := recoveredValue16.
    recoveredValue20 := (self) parameterForType: ('uint32').
    (recoveredValue19) add: (recoveredValue20).
    recoveredValue21 := recoveredValue16.
    recoveredValue22 := (self) parameterForType: ('bool').
    (recoveredValue21) add: (recoveredValue22).
    recoveredValue23 := (recoveredValue16) asArray.
    (recoveredValue14) add: (recoveredValue23).
    recoveredValue24 := Array.
    recoveredValue25 := recoveredLocal2.
    recoveredValue26 := recoveredLocal1.
    recoveredValue27 := (recoveredValue24) with: (recoveredValue25) with: (recoveredValue26).
    ^recoveredValue27
! !

