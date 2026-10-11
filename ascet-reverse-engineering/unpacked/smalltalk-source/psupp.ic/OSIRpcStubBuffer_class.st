"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2003878c; bytecode file offset 0x18c048"
!OSIRpcStubBuffer class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    (self) interfaceSelectors: (#('queryInterface:ppvObject:' 'addRef' 'release' 'connect:' 'disconnect' 'invoke:pRpcChannelBuffer:' 'isIIDSupported:' 'countRefs' 'debugServerQueryInterface:' 'debugServerRelease:')).
    recoveredValue0 := (self) callOutPlatformFunctionAt: (4).
    Connect := recoveredValue0.
    recoveredValue1 := (self) callOutPlatformFunctionAt: (8).
    CountRefs := recoveredValue1.
    recoveredValue2 := (self) callOutPlatformFunctionAt: (9).
    DebugServerQueryInterface := recoveredValue2.
    recoveredValue3 := (self) callOutPlatformFunctionAt: (10).
    DebugServerRelease := recoveredValue3.
    recoveredValue4 := (self) callOutPlatformFunctionAt: (5).
    Disconnect := recoveredValue4.
    recoveredValue5 := (self) callOutPlatformFunctionAt: (6).
    Invoke := recoveredValue5.
    recoveredValue6 := (self) callOutPlatformFunctionAt: (7).
    IsIIDSupported := recoveredValue6.
    ^self
! !

"psupp.ic method 0x20047478; bytecode file offset 0x19ad48"
!OSIRpcStubBuffer class methodsFor: 'recovered'!
localDescriptions
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 |
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
    recoveredValue9 := OSIUnknown.
    recoveredValue10 := (self) parameterForClass: (recoveredValue9).
    (recoveredValue8) add: (recoveredValue10).
    recoveredValue11 := (recoveredValue7) asArray.
    (recoveredValue5) add: (recoveredValue11).
    recoveredValue12 := recoveredLocal2.
    (recoveredValue12) add: ('void').
    recoveredValue13 := recoveredLocal1.
    (recoveredValue13) add: (#()).
    recoveredValue14 := recoveredLocal2.
    (recoveredValue14) add: ('uint32').
    recoveredValue15 := recoveredLocal1.
    recoveredValue16 := OrderedCollection.
    recoveredValue17 := (recoveredValue16) new.
    recoveredValue18 := recoveredValue17.
    recoveredValue19 := OSRpcolemessage.
    recoveredValue20 := (self) parameterForClass: (recoveredValue19).
    (recoveredValue18) add: (recoveredValue20).
    recoveredValue21 := recoveredValue17.
    recoveredValue22 := OSIRpcChannelBuffer.
    recoveredValue23 := (self) parameterForClass: (recoveredValue22).
    (recoveredValue21) add: (recoveredValue23).
    recoveredValue24 := (recoveredValue17) asArray.
    (recoveredValue15) add: (recoveredValue24).
    recoveredValue25 := recoveredLocal2.
    (recoveredValue25) add: ('uint32').
    recoveredValue26 := recoveredLocal1.
    recoveredValue27 := OrderedCollection.
    recoveredValue28 := (recoveredValue27) new.
    recoveredValue29 := recoveredValue28.
    recoveredValue30 := OSIid.
    recoveredValue31 := (self) parameterForClass: (recoveredValue30).
    (recoveredValue29) add: (recoveredValue31).
    recoveredValue32 := (recoveredValue28) asArray.
    (recoveredValue26) add: (recoveredValue32).
    recoveredValue33 := recoveredLocal2.
    (recoveredValue33) add: ('uint32').
    recoveredValue34 := recoveredLocal1.
    (recoveredValue34) add: (#()).
    recoveredValue35 := recoveredLocal2.
    (recoveredValue35) add: ('uint32').
    recoveredValue36 := recoveredLocal1.
    recoveredValue37 := OrderedCollection.
    recoveredValue38 := (recoveredValue37) new.
    recoveredValue39 := recoveredValue38.
    recoveredValue40 := OSUInt8.
    recoveredValue41 := (self) parameterForClass: (recoveredValue40).
    (recoveredValue39) add: (recoveredValue41).
    recoveredValue42 := (recoveredValue38) asArray.
    (recoveredValue36) add: (recoveredValue42).
    recoveredValue43 := recoveredLocal2.
    (recoveredValue43) add: ('void').
    recoveredValue44 := recoveredLocal1.
    recoveredValue45 := OrderedCollection.
    recoveredValue46 := (recoveredValue45) new.
    recoveredValue47 := recoveredValue46.
    recoveredValue48 := OSUInt8.
    recoveredValue49 := (self) parameterForClass: (recoveredValue48).
    (recoveredValue47) add: (recoveredValue49).
    recoveredValue50 := (recoveredValue46) asArray.
    (recoveredValue44) add: (recoveredValue50).
    recoveredValue51 := Array.
    recoveredValue52 := recoveredLocal2.
    recoveredValue53 := recoveredLocal1.
    recoveredValue54 := (recoveredValue51) with: (recoveredValue52) with: (recoveredValue53).
    ^recoveredValue54
! !

