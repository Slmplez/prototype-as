"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2002c988; bytecode file offset 0x180284"
!OSIRpcProxyBuffer class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredValue0 recoveredValue1 |
    (self) interfaceSelectors: (#('queryInterface:ppvObject:' 'addRef' 'release' 'connect:' 'disconnect')).
    recoveredValue0 := (self) callOutPlatformFunctionAt: (4).
    Connect := recoveredValue0.
    recoveredValue1 := (self) callOutPlatformFunctionAt: (5).
    Disconnect := recoveredValue1.
    ^self
! !

"psupp.ic method 0x2003808c; bytecode file offset 0x18b94c"
!OSIRpcProxyBuffer class methodsFor: 'recovered'!
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
    recoveredValue9 := OSIRpcChannelBuffer.
    recoveredValue10 := (self) parameterForClass: (recoveredValue9).
    (recoveredValue8) add: (recoveredValue10).
    recoveredValue11 := (recoveredValue7) asArray.
    (recoveredValue5) add: (recoveredValue11).
    recoveredValue12 := recoveredLocal2.
    (recoveredValue12) add: ('void').
    recoveredValue13 := recoveredLocal1.
    (recoveredValue13) add: (#()).
    recoveredValue14 := Array.
    recoveredValue15 := recoveredLocal2.
    recoveredValue16 := recoveredLocal1.
    recoveredValue17 := (recoveredValue14) with: (recoveredValue15) with: (recoveredValue16).
    ^recoveredValue17
! !

