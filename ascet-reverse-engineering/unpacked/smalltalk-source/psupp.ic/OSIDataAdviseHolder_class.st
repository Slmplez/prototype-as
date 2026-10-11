"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20032944; bytecode file offset 0x186218"
!OSIDataAdviseHolder class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    (self) interfaceSelectors: (#('queryInterface:ppvObject:' 'addRef' 'release' 'advise:pFetc:advf:pAdvise:pdwConnection:' 'unadvise:' 'enumAdvise:' 'sendOnDataChange:dwReserved:advf:')).
    recoveredValue0 := (self) callOutPlatformFunctionAt: (4).
    Advise := recoveredValue0.
    recoveredValue1 := (self) callOutPlatformFunctionAt: (6).
    EnumAdvise := recoveredValue1.
    recoveredValue2 := (self) callOutPlatformFunctionAt: (7).
    SendOnDataChange := recoveredValue2.
    recoveredValue3 := (self) callOutPlatformFunctionAt: (5).
    Unadvise := recoveredValue3.
    ^self
! !

"psupp.ic method 0x20047108; bytecode file offset 0x19a9d0"
!OSIDataAdviseHolder class methodsFor: 'recovered'!
localDescriptions
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 |
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
    recoveredValue9 := OSIDataObject.
    recoveredValue10 := (self) parameterForClass: (recoveredValue9).
    (recoveredValue8) add: (recoveredValue10).
    recoveredValue11 := recoveredValue7.
    recoveredValue12 := OSFormatetc.
    recoveredValue13 := (self) parameterForClass: (recoveredValue12).
    (recoveredValue11) add: (recoveredValue13).
    recoveredValue14 := recoveredValue7.
    recoveredValue15 := (self) parameterForType: ('uint32').
    (recoveredValue14) add: (recoveredValue15).
    recoveredValue16 := recoveredValue7.
    recoveredValue17 := OSIAdviseSink.
    recoveredValue18 := (self) parameterForClass: (recoveredValue17).
    (recoveredValue16) add: (recoveredValue18).
    recoveredValue19 := recoveredValue7.
    recoveredValue20 := OSUInt8.
    recoveredValue21 := (self) parameterForClass: (recoveredValue20).
    (recoveredValue19) add: (recoveredValue21).
    recoveredValue22 := (recoveredValue7) asArray.
    (recoveredValue5) add: (recoveredValue22).
    recoveredValue23 := recoveredLocal2.
    (recoveredValue23) add: ('uint32').
    recoveredValue24 := recoveredLocal1.
    recoveredValue25 := OrderedCollection.
    recoveredValue26 := (recoveredValue25) new.
    recoveredValue27 := recoveredValue26.
    recoveredValue28 := (self) parameterForType: ('uint32').
    (recoveredValue27) add: (recoveredValue28).
    recoveredValue29 := (recoveredValue26) asArray.
    (recoveredValue24) add: (recoveredValue29).
    recoveredValue30 := recoveredLocal2.
    (recoveredValue30) add: ('uint32').
    recoveredValue31 := recoveredLocal1.
    recoveredValue32 := OrderedCollection.
    recoveredValue33 := (recoveredValue32) new.
    recoveredValue34 := recoveredValue33.
    recoveredValue35 := OSUInt8.
    recoveredValue36 := (self) parameterForClass: (recoveredValue35).
    (recoveredValue34) add: (recoveredValue36).
    recoveredValue37 := (recoveredValue33) asArray.
    (recoveredValue31) add: (recoveredValue37).
    recoveredValue38 := recoveredLocal2.
    (recoveredValue38) add: ('uint32').
    recoveredValue39 := recoveredLocal1.
    recoveredValue40 := OrderedCollection.
    recoveredValue41 := (recoveredValue40) new.
    recoveredValue42 := recoveredValue41.
    recoveredValue43 := OSIDataObject.
    recoveredValue44 := (self) parameterForClass: (recoveredValue43).
    (recoveredValue42) add: (recoveredValue44).
    recoveredValue45 := recoveredValue41.
    recoveredValue46 := (self) parameterForType: ('uint32').
    (recoveredValue45) add: (recoveredValue46).
    recoveredValue47 := recoveredValue41.
    recoveredValue48 := (self) parameterForType: ('uint32').
    (recoveredValue47) add: (recoveredValue48).
    recoveredValue49 := (recoveredValue41) asArray.
    (recoveredValue39) add: (recoveredValue49).
    recoveredValue50 := Array.
    recoveredValue51 := recoveredLocal2.
    recoveredValue52 := recoveredLocal1.
    recoveredValue53 := (recoveredValue50) with: (recoveredValue51) with: (recoveredValue52).
    ^recoveredValue53
! !

