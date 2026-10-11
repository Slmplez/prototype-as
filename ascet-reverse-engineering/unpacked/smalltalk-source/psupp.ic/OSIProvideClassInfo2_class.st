"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20026d0c; bytecode file offset 0x17a5b0"
!OSIProvideClassInfo2 class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredValue0 |
    (self) interfaceSelectors: (#('queryInterface:ppvObject:' 'addRef' 'release' 'getClassInfo:' 'getGUID:pGUID:')).
    recoveredValue0 := (self) callOutPlatformFunctionAt: (5).
    GetGUID := recoveredValue0.
    ^self
! !

"psupp.ic method 0x200375d4; bytecode file offset 0x18aec0"
!OSIProvideClassInfo2 class methodsFor: 'recovered'!
localDescriptions
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
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
    recoveredValue11 := OSGuid.
    recoveredValue12 := (self) parameterForClass: (recoveredValue11).
    (recoveredValue10) add: (recoveredValue12).
    recoveredValue13 := (recoveredValue7) asArray.
    (recoveredValue5) add: (recoveredValue13).
    recoveredValue14 := Array.
    recoveredValue15 := recoveredLocal2.
    recoveredValue16 := recoveredLocal1.
    recoveredValue17 := (recoveredValue14) with: (recoveredValue15) with: (recoveredValue16).
    ^recoveredValue17
! !

