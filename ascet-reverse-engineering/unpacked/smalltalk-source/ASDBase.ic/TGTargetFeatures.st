"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20065b64; bytecode file offset 0x963428"
!TGTargetFeatures methodsFor: 'recovered'!
events
    | recoveredValue0 |
    recoveredValue0 := events.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200675c4; bytecode file offset 0x9646f8"
!TGTargetFeatures methodsFor: 'recovered'!
coopLevels
    | recoveredValue0 |
    recoveredValue0 := coopLevels.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20068424; bytecode file offset 0x965b90"
!TGTargetFeatures methodsFor: 'recovered'!
preempLevels
    | recoveredValue0 |
    recoveredValue0 := preempLevels.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006a1f0; bytecode file offset 0x966bdc"
!TGTargetFeatures methodsFor: 'recovered'!
networkPorts
    | recoveredValue0 |
    recoveredValue0 := networkPorts.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006a994; bytecode file offset 0x967a18"
!TGTargetFeatures methodsFor: 'recovered'!
noOfChannels
    | recoveredValue0 |
    recoveredValue0 := noOfChannels.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200bdd14; bytecode file offset 0x9bb178"
!TGTargetFeatures methodsFor: 'recovered'!
events: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    events := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bea38; bytecode file offset 0x9bc0b4"
!TGTargetFeatures methodsFor: 'recovered'!
coopLevels: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    coopLevels := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bfbec; bytecode file offset 0x9bd228"
!TGTargetFeatures methodsFor: 'recovered'!
preempLevels: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    preempLevels := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c0ef8; bytecode file offset 0x9bdf14"
!TGTargetFeatures methodsFor: 'recovered'!
networkPorts: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    networkPorts := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c1dc4; bytecode file offset 0x9beac8"
!TGTargetFeatures methodsFor: 'recovered'!
noOfChannels: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    noOfChannels := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x203c56dc; bytecode file offset 0xcc1fc4"
!TGTargetFeatures methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (recoveredValue1) cr.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) nextPutAll: ('coop: ').
    recoveredValue4 := recoveredValue2.
    recoveredValue5 := coopLevels.
    recoveredValue6 := (recoveredValue5) printString.
    (recoveredValue4) nextPutAll: (recoveredValue6).
    recoveredValue7 := recoveredValue2.
    (recoveredValue7) nextPutAll: ('  preemp: ').
    recoveredValue8 := recoveredValue2.
    recoveredValue9 := preempLevels.
    recoveredValue10 := (recoveredValue9) printString.
    (recoveredValue8) nextPutAll: (recoveredValue10).
    recoveredValue11 := recoveredValue2.
    (recoveredValue11) nextPutAll: ('  Events: ').
    recoveredValue12 := recoveredValue2.
    recoveredValue13 := events.
    recoveredValue14 := (recoveredValue13) size.
    recoveredValue15 := (recoveredValue14) printString.
    (recoveredValue12) nextPutAll: (recoveredValue15).
    recoveredValue16 := recoveredValue2.
    (recoveredValue16) cr.
    recoveredValue17 := recoveredValue2.
    (recoveredValue17) nextPutAll: ('NoOfChannels: ').
    recoveredValue18 := recoveredValue2.
    recoveredValue19 := (self) noOfChannels.
    recoveredValue20 := (recoveredValue19) printString.
    (recoveredValue18) nextPutAll: (recoveredValue20).
    recoveredValue21 := recoveredValue2.
    (recoveredValue21) nextPutAll: ('  NetworkPorts: ').
    recoveredValue22 := (self) networkPorts.
    recoveredValue23 := (recoveredValue22) size.
    recoveredValue24 := (recoveredValue23) printString.
    (recoveredValue2) nextPutAll: (recoveredValue24).
    ^self
! !

