"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20026c3c; bytecode file offset 0x17a588"
!OSIStdMarshalInfo class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredValue0 |
    (self) interfaceSelectors: (#('queryInterface:ppvObject:' 'addRef' 'release' 'getClassForHandler:pvDestContext:pClsid:')).
    recoveredValue0 := (self) callOutPlatformFunctionAt: (4).
    GetClassForHandler := recoveredValue0.
    ^self
! !

"psupp.ic method 0x200395a0; bytecode file offset 0x18ce60"
!OSIStdMarshalInfo class methodsFor: 'recovered'!
localDescriptions
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 |
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
    recoveredValue11 := OSUInt8.
    recoveredValue12 := (self) parameterForClass: (recoveredValue11).
    (recoveredValue10) add: (recoveredValue12).
    recoveredValue13 := recoveredValue7.
    recoveredValue14 := OSClsid.
    recoveredValue15 := (self) parameterForClass: (recoveredValue14).
    (recoveredValue13) add: (recoveredValue15).
    recoveredValue16 := (recoveredValue7) asArray.
    (recoveredValue5) add: (recoveredValue16).
    recoveredValue17 := Array.
    recoveredValue18 := recoveredLocal2.
    recoveredValue19 := recoveredLocal1.
    recoveredValue20 := (recoveredValue17) with: (recoveredValue18) with: (recoveredValue19).
    ^recoveredValue20
! !

