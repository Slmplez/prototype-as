"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2001d940; bytecode file offset 0x17124c"
!OSIRpcStubBuffer methodsFor: 'recovered'!
disconnect
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Disconnect.
    recoveredValue1 := (recoveredValue0) callWith: (4) with: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x2001db34; bytecode file offset 0x171410"
!OSIRpcStubBuffer methodsFor: 'recovered'!
countRefs
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := CountRefs.
    recoveredValue1 := (recoveredValue0) callWith: (7) with: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x200229bc; bytecode file offset 0x1762e8"
!OSIRpcStubBuffer methodsFor: 'recovered'!
connect: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := Connect.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) callWith: (3) with: (self) with: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2002316c; bytecode file offset 0x176a68"
!OSIRpcStubBuffer methodsFor: 'recovered'!
debugServerQueryInterface: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := DebugServerQueryInterface.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) callWith: (8) with: (self) with: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x200231fc; bytecode file offset 0x176b18"
!OSIRpcStubBuffer methodsFor: 'recovered'!
debugServerRelease: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := DebugServerRelease.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) callWith: (9) with: (self) with: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x200259f8; bytecode file offset 0x179334"
!OSIRpcStubBuffer methodsFor: 'recovered'!
invoke: recoveredArg1 pRpcChannelBuffer: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Invoke.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) callWith: (5) with: (self) with: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

"psupp.ic method 0x20029014; bytecode file offset 0x17c8b8"
!OSIRpcStubBuffer methodsFor: 'recovered'!
isIIDSupported: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OSIRpcStubBuffer.
    recoveredValue1 := IsIIDSupported.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) callWith: (6) with: (self) with: (recoveredValue2).
    recoveredValue4 := (recoveredValue0) address: (recoveredValue3).
    ^recoveredValue4
! !

