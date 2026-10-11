"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2002ca2c; bytecode file offset 0x1802f0"
!OSIOleWindow class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredValue0 recoveredValue1 |
    (self) interfaceSelectors: (#('queryInterface:ppvObject:' 'addRef' 'release' 'getWindow:' 'contextSensitiveHelp:')).
    recoveredValue0 := (self) callOutPlatformFunctionAt: (5).
    ContextSensitiveHelp := recoveredValue0.
    recoveredValue1 := (self) callOutPlatformFunctionAt: (4).
    GetWindow := recoveredValue1.
    ^self
! !

"psupp.ic method 0x2003a9a8; bytecode file offset 0x18e268"
!OSIOleWindow class methodsFor: 'recovered'!
localDescriptions
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 |
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
    recoveredValue17 := (self) parameterForType: ('bool').
    (recoveredValue16) add: (recoveredValue17).
    recoveredValue18 := (recoveredValue15) asArray.
    (recoveredValue13) add: (recoveredValue18).
    recoveredValue19 := Array.
    recoveredValue20 := recoveredLocal2.
    recoveredValue21 := recoveredLocal1.
    recoveredValue22 := (recoveredValue19) with: (recoveredValue20) with: (recoveredValue21).
    ^recoveredValue22
! !

