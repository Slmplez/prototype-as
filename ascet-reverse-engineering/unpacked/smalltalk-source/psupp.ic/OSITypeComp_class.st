"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2002c96c; bytecode file offset 0x180284"
!OSITypeComp class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredValue0 recoveredValue1 |
    (self) interfaceSelectors: (#('queryInterface:ppvObject:' 'addRef' 'release' 'bind:lHashVal:fFlags:pptinfo:pdesckind:pbindptr:' 'bindType:lHashVal:pptinfo:pptcomp:')).
    recoveredValue0 := (self) callOutPlatformFunctionAt: (4).
    Bind := recoveredValue0.
    recoveredValue1 := (self) callOutPlatformFunctionAt: (5).
    BindType := recoveredValue1.
    ^self
! !

"psupp.ic method 0x20044744; bytecode file offset 0x19800c"
!OSITypeComp class methodsFor: 'recovered'!
localDescriptions
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 |
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
    recoveredValue9 := OSOleStringZ.
    recoveredValue10 := (self) parameterForClass: (recoveredValue9).
    (recoveredValue8) add: (recoveredValue10).
    recoveredValue11 := recoveredValue7.
    recoveredValue12 := (self) parameterForType: ('uint32').
    (recoveredValue11) add: (recoveredValue12).
    recoveredValue13 := recoveredValue7.
    recoveredValue14 := (self) parameterForType: ('uint16').
    (recoveredValue13) add: (recoveredValue14).
    recoveredValue15 := recoveredValue7.
    recoveredValue16 := OSUInt8.
    recoveredValue17 := (self) parameterForClass: (recoveredValue16).
    (recoveredValue15) add: (recoveredValue17).
    recoveredValue18 := recoveredValue7.
    recoveredValue19 := OSUInt8.
    recoveredValue20 := (self) parameterForClass: (recoveredValue19).
    (recoveredValue18) add: (recoveredValue20).
    recoveredValue21 := recoveredValue7.
    recoveredValue22 := OSBindptr.
    recoveredValue23 := (self) parameterForClass: (recoveredValue22).
    (recoveredValue21) add: (recoveredValue23).
    recoveredValue24 := (recoveredValue7) asArray.
    (recoveredValue5) add: (recoveredValue24).
    recoveredValue25 := recoveredLocal2.
    (recoveredValue25) add: ('uint32').
    recoveredValue26 := recoveredLocal1.
    recoveredValue27 := OrderedCollection.
    recoveredValue28 := (recoveredValue27) new.
    recoveredValue29 := recoveredValue28.
    recoveredValue30 := OSOleStringZ.
    recoveredValue31 := (self) parameterForClass: (recoveredValue30).
    (recoveredValue29) add: (recoveredValue31).
    recoveredValue32 := recoveredValue28.
    recoveredValue33 := (self) parameterForType: ('uint32').
    (recoveredValue32) add: (recoveredValue33).
    recoveredValue34 := recoveredValue28.
    recoveredValue35 := OSUInt8.
    recoveredValue36 := (self) parameterForClass: (recoveredValue35).
    (recoveredValue34) add: (recoveredValue36).
    recoveredValue37 := recoveredValue28.
    recoveredValue38 := OSUInt8.
    recoveredValue39 := (self) parameterForClass: (recoveredValue38).
    (recoveredValue37) add: (recoveredValue39).
    recoveredValue40 := (recoveredValue28) asArray.
    (recoveredValue26) add: (recoveredValue40).
    recoveredValue41 := Array.
    recoveredValue42 := recoveredLocal2.
    recoveredValue43 := recoveredLocal1.
    recoveredValue44 := (recoveredValue41) with: (recoveredValue42) with: (recoveredValue43).
    ^recoveredValue44
! !

