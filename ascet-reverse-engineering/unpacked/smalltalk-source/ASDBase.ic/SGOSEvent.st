"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20068dac; bytecode file offset 0x965b90"
!SGOSEvent methodsFor: 'recovered'!
minPrio
    | recoveredValue0 |
    recoveredValue0 := minPrio.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200696e0; bytecode file offset 0x966bdc"
!SGOSEvent methodsFor: 'recovered'!
maxPrio
    | recoveredValue0 |
    recoveredValue0 := maxPrio.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006acf4; bytecode file offset 0x967a18"
!SGOSEvent methodsFor: 'recovered'!
isrAddress
    | recoveredValue0 |
    recoveredValue0 := isrAddress.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006b420; bytecode file offset 0x96873c"
!SGOSEvent methodsFor: 'recovered'!
displayName
    | recoveredValue0 |
    recoveredValue0 := displayName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c06ec; bytecode file offset 0x9bd228"
!SGOSEvent methodsFor: 'recovered'!
minPrio: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    minPrio := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c0cf8; bytecode file offset 0x9bdf14"
!SGOSEvent methodsFor: 'recovered'!
maxPrio: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    maxPrio := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c1a64; bytecode file offset 0x9beac8"
!SGOSEvent methodsFor: 'recovered'!
isrAddress: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    isrAddress := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2aa8; bytecode file offset 0x9bf474"
!SGOSEvent methodsFor: 'recovered'!
displayName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    displayName := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20152028; bytecode file offset 0xa4e8ec"
!SGOSEvent methodsFor: 'recovered'!
initialize
    super initialize.
    (self) maxPrio: (1).
    (self) minPrio: (1).
    ^self
! !

"ASDBase.ic method 0x20153d7c; bytecode file offset 0xa50648"
!SGOSEvent methodsFor: 'recovered'!
buildMdl: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) name.
    recoveredValue2 := (self) id.
    recoveredValue3 := (self) minPrio.
    recoveredValue4 := (self) maxPrio.
    recoveredValue5 := (self) isrAddress.
    (recoveredValue0) event: (recoveredValue1) id: (recoveredValue2) minPrio: (recoveredValue3) maxPrio: (recoveredValue4) isrAddress: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x201e59dc; bytecode file offset 0xae22b0"
!SGOSEvent methodsFor: 'recovered'!
updateForTargetFeature: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) id.
    (self) id: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) maxPrio.
    (self) maxPrio: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) minPrio.
    (self) minPrio: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) addressISR.
    (self) isrAddress: (recoveredValue7).
    ^self
! !

