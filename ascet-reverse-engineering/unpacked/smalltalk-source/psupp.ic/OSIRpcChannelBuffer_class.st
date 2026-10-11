"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20034c18; bytecode file offset 0x1884cc"
!OSIRpcChannelBuffer class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    (self) interfaceSelectors: (#('queryInterface:ppvObject:' 'addRef' 'release' 'getBuffer:riid:' 'sendReceive:pStatus:' 'freeBuffer:' 'getDestCtx:ppvDestContext:' 'isConnected')).
    recoveredValue0 := (self) callOutPlatformFunctionAt: (6).
    FreeBuffer := recoveredValue0.
    recoveredValue1 := (self) callOutPlatformFunctionAt: (4).
    GetBuffer := recoveredValue1.
    recoveredValue2 := (self) callOutPlatformFunctionAt: (7).
    GetDestCtx := recoveredValue2.
    recoveredValue3 := (self) callOutPlatformFunctionAt: (8).
    IsConnected := recoveredValue3.
    recoveredValue4 := (self) callOutPlatformFunctionAt: (5).
    SendReceive := recoveredValue4.
    ^self
! !

"psupp.ic method 0x20045cc0; bytecode file offset 0x199584"
!OSIRpcChannelBuffer class methodsFor: 'recovered'!
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
    recoveredValue9 := OSRpcolemessage.
    recoveredValue10 := (self) parameterForClass: (recoveredValue9).
    (recoveredValue8) add: (recoveredValue10).
    recoveredValue11 := recoveredValue7.
    recoveredValue12 := OSIid.
    recoveredValue13 := (self) parameterForClass: (recoveredValue12).
    (recoveredValue11) add: (recoveredValue13).
    recoveredValue14 := (recoveredValue7) asArray.
    (recoveredValue5) add: (recoveredValue14).
    recoveredValue15 := recoveredLocal2.
    (recoveredValue15) add: ('uint32').
    recoveredValue16 := recoveredLocal1.
    recoveredValue17 := OrderedCollection.
    recoveredValue18 := (recoveredValue17) new.
    recoveredValue19 := recoveredValue18.
    recoveredValue20 := OSRpcolemessage.
    recoveredValue21 := (self) parameterForClass: (recoveredValue20).
    (recoveredValue19) add: (recoveredValue21).
    recoveredValue22 := recoveredValue18.
    recoveredValue23 := OSUInt8.
    recoveredValue24 := (self) parameterForClass: (recoveredValue23).
    (recoveredValue22) add: (recoveredValue24).
    recoveredValue25 := (recoveredValue18) asArray.
    (recoveredValue16) add: (recoveredValue25).
    recoveredValue26 := recoveredLocal2.
    (recoveredValue26) add: ('uint32').
    recoveredValue27 := recoveredLocal1.
    recoveredValue28 := OrderedCollection.
    recoveredValue29 := (recoveredValue28) new.
    recoveredValue30 := recoveredValue29.
    recoveredValue31 := OSRpcolemessage.
    recoveredValue32 := (self) parameterForClass: (recoveredValue31).
    (recoveredValue30) add: (recoveredValue32).
    recoveredValue33 := (recoveredValue29) asArray.
    (recoveredValue27) add: (recoveredValue33).
    recoveredValue34 := recoveredLocal2.
    (recoveredValue34) add: ('uint32').
    recoveredValue35 := recoveredLocal1.
    recoveredValue36 := OrderedCollection.
    recoveredValue37 := (recoveredValue36) new.
    recoveredValue38 := recoveredValue37.
    recoveredValue39 := OSUInt8.
    recoveredValue40 := (self) parameterForClass: (recoveredValue39).
    (recoveredValue38) add: (recoveredValue40).
    recoveredValue41 := recoveredValue37.
    recoveredValue42 := OSUInt8.
    recoveredValue43 := (self) parameterForClass: (recoveredValue42).
    (recoveredValue41) add: (recoveredValue43).
    recoveredValue44 := (recoveredValue37) asArray.
    (recoveredValue35) add: (recoveredValue44).
    recoveredValue45 := recoveredLocal2.
    (recoveredValue45) add: ('uint32').
    recoveredValue46 := recoveredLocal1.
    (recoveredValue46) add: (#()).
    recoveredValue47 := Array.
    recoveredValue48 := recoveredLocal2.
    recoveredValue49 := recoveredLocal1.
    recoveredValue50 := (recoveredValue47) with: (recoveredValue48) with: (recoveredValue49).
    ^recoveredValue50
! !

