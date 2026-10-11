"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20026c54; bytecode file offset 0x17a588"
!OSIParseDisplayName class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredValue0 |
    (self) interfaceSelectors: (#('queryInterface:ppvObject:' 'addRef' 'release' 'parseDisplayName:pszDisplayName:pchEaten:ppmkOut:')).
    recoveredValue0 := (self) callOutPlatformFunctionAt: (4).
    ParseDisplayName := recoveredValue0.
    ^self
! !

"psupp.ic method 0x2003b728; bytecode file offset 0x18efe8"
!OSIParseDisplayName class methodsFor: 'recovered'!
localDescriptions
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 |
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
    recoveredValue9 := OSIBindCtx.
    recoveredValue10 := (self) parameterForClass: (recoveredValue9).
    (recoveredValue8) add: (recoveredValue10).
    recoveredValue11 := recoveredValue7.
    recoveredValue12 := OSOleStringZ.
    recoveredValue13 := (self) parameterForClass: (recoveredValue12).
    (recoveredValue11) add: (recoveredValue13).
    recoveredValue14 := recoveredValue7.
    recoveredValue15 := OSUInt8.
    recoveredValue16 := (self) parameterForClass: (recoveredValue15).
    (recoveredValue14) add: (recoveredValue16).
    recoveredValue17 := recoveredValue7.
    recoveredValue18 := OSUInt8.
    recoveredValue19 := (self) parameterForClass: (recoveredValue18).
    (recoveredValue17) add: (recoveredValue19).
    recoveredValue20 := (recoveredValue7) asArray.
    (recoveredValue5) add: (recoveredValue20).
    recoveredValue21 := Array.
    recoveredValue22 := recoveredLocal2.
    recoveredValue23 := recoveredLocal1.
    recoveredValue24 := (recoveredValue21) with: (recoveredValue22) with: (recoveredValue23).
    ^recoveredValue24
! !

