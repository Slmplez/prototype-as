"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2002ca7c; bytecode file offset 0x180324"
!OSIOleContainer class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredValue0 recoveredValue1 |
    (self) interfaceSelectors: (#('queryInterface:ppvObject:' 'addRef' 'release' 'parseDisplayName:pszDisplayName:pchEaten:ppmkOut:' 'enumObjects:ppenum:' 'lockContainer:')).
    recoveredValue0 := (self) callOutPlatformFunctionAt: (5).
    EnumObjects := recoveredValue0.
    recoveredValue1 := (self) callOutPlatformFunctionAt: (6).
    LockContainer := recoveredValue1.
    ^self
! !

"psupp.ic method 0x2003c52c; bytecode file offset 0x18fdec"
!OSIOleContainer class methodsFor: 'recovered'!
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
    recoveredValue9 := (self) parameterForType: ('uint32').
    (recoveredValue8) add: (recoveredValue9).
    recoveredValue10 := recoveredValue7.
    recoveredValue11 := OSUInt8.
    recoveredValue12 := (self) parameterForClass: (recoveredValue11).
    (recoveredValue10) add: (recoveredValue12).
    recoveredValue13 := (recoveredValue7) asArray.
    (recoveredValue5) add: (recoveredValue13).
    recoveredValue14 := recoveredLocal2.
    (recoveredValue14) add: ('uint32').
    recoveredValue15 := recoveredLocal1.
    recoveredValue16 := OrderedCollection.
    recoveredValue17 := (recoveredValue16) new.
    recoveredValue18 := recoveredValue17.
    recoveredValue19 := (self) parameterForType: ('bool').
    (recoveredValue18) add: (recoveredValue19).
    recoveredValue20 := (recoveredValue17) asArray.
    (recoveredValue15) add: (recoveredValue20).
    recoveredValue21 := Array.
    recoveredValue22 := recoveredLocal2.
    recoveredValue23 := recoveredLocal1.
    recoveredValue24 := (recoveredValue21) with: (recoveredValue22) with: (recoveredValue23).
    ^recoveredValue24
! !

