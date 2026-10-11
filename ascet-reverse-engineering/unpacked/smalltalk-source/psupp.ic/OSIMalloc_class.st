"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20036930; bytecode file offset 0x18a1e8"
!OSIMalloc class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    (self) interfaceSelectors: (#('queryInterface:ppvObject:' 'addRef' 'release' 'alloc:' 'realloc:cb:' 'free:' 'getSize:' 'didAlloc:' 'heapMinimize')).
    recoveredValue0 := (self) callOutPlatformFunctionAt: (4).
    Alloc := recoveredValue0.
    recoveredValue1 := (self) callOutPlatformFunctionAt: (8).
    DidAlloc := recoveredValue1.
    recoveredValue2 := (self) callOutPlatformFunctionAt: (6).
    Free := recoveredValue2.
    recoveredValue3 := (self) callOutPlatformFunctionAt: (7).
    GetSize := recoveredValue3.
    recoveredValue4 := (self) callOutPlatformFunctionAt: (9).
    HeapMinimize := recoveredValue4.
    recoveredValue5 := (self) callOutPlatformFunctionAt: (5).
    Realloc := recoveredValue5.
    ^self
! !

"psupp.ic method 0x20046334; bytecode file offset 0x199bfc"
!OSIMalloc class methodsFor: 'recovered'!
localDescriptions
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 |
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
    recoveredValue10 := (recoveredValue7) asArray.
    (recoveredValue5) add: (recoveredValue10).
    recoveredValue11 := recoveredLocal2.
    (recoveredValue11) add: ('uint32').
    recoveredValue12 := recoveredLocal1.
    recoveredValue13 := OrderedCollection.
    recoveredValue14 := (recoveredValue13) new.
    recoveredValue15 := recoveredValue14.
    recoveredValue16 := OSUInt8.
    recoveredValue17 := (self) parameterForClass: (recoveredValue16).
    (recoveredValue15) add: (recoveredValue17).
    recoveredValue18 := recoveredValue14.
    recoveredValue19 := (self) parameterForType: ('uint32').
    (recoveredValue18) add: (recoveredValue19).
    recoveredValue20 := (recoveredValue14) asArray.
    (recoveredValue12) add: (recoveredValue20).
    recoveredValue21 := recoveredLocal2.
    (recoveredValue21) add: ('void').
    recoveredValue22 := recoveredLocal1.
    recoveredValue23 := OrderedCollection.
    recoveredValue24 := (recoveredValue23) new.
    recoveredValue25 := recoveredValue24.
    recoveredValue26 := OSUInt8.
    recoveredValue27 := (self) parameterForClass: (recoveredValue26).
    (recoveredValue25) add: (recoveredValue27).
    recoveredValue28 := (recoveredValue24) asArray.
    (recoveredValue22) add: (recoveredValue28).
    recoveredValue29 := recoveredLocal2.
    (recoveredValue29) add: ('uint32').
    recoveredValue30 := recoveredLocal1.
    recoveredValue31 := OrderedCollection.
    recoveredValue32 := (recoveredValue31) new.
    recoveredValue33 := recoveredValue32.
    recoveredValue34 := OSUInt8.
    recoveredValue35 := (self) parameterForClass: (recoveredValue34).
    (recoveredValue33) add: (recoveredValue35).
    recoveredValue36 := (recoveredValue32) asArray.
    (recoveredValue30) add: (recoveredValue36).
    recoveredValue37 := recoveredLocal2.
    (recoveredValue37) add: ('int32').
    recoveredValue38 := recoveredLocal1.
    recoveredValue39 := OrderedCollection.
    recoveredValue40 := (recoveredValue39) new.
    recoveredValue41 := recoveredValue40.
    recoveredValue42 := OSUInt8.
    recoveredValue43 := (self) parameterForClass: (recoveredValue42).
    (recoveredValue41) add: (recoveredValue43).
    recoveredValue44 := (recoveredValue40) asArray.
    (recoveredValue38) add: (recoveredValue44).
    recoveredValue45 := recoveredLocal2.
    (recoveredValue45) add: ('void').
    recoveredValue46 := recoveredLocal1.
    (recoveredValue46) add: (#()).
    recoveredValue47 := Array.
    recoveredValue48 := recoveredLocal2.
    recoveredValue49 := recoveredLocal1.
    recoveredValue50 := (recoveredValue47) with: (recoveredValue48) with: (recoveredValue49).
    ^recoveredValue50
! !

