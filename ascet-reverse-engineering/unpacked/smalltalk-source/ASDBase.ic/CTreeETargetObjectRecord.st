"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000b4a4; bytecode file offset 0x908be4"
!CTreeETargetObjectRecord methodsFor: 'recovered'!
globalId
    | recoveredValue0 |
    recoveredValue0 := (self) pseudoAddress.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20014148; bytecode file offset 0x912098"
!CTreeETargetObjectRecord methodsFor: 'recovered'!
proxyClass
    | recoveredValue0 |
    recoveredValue0 := DBETargetProxy.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2003a3dc; bytecode file offset 0x938608"
!CTreeETargetObjectRecord methodsFor: 'recovered'!
globalId: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) pseudoAddress: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004b21c; bytecode file offset 0x947d20"
!CTreeETargetObjectRecord methodsFor: 'recovered'!
pseudoAddressLength
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (2).
    ^recoveredValue0
! !

"ASDBase.ic method 0x201ec290; bytecode file offset 0xae8b60"
!CTreeETargetObjectRecord methodsFor: 'recovered'!
pseudoAddress
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) pseudoAddressLength.
    recoveredValue2 := EtasETPseudoAddress.
    recoveredValue3 := (self) pseudoAddressLength.
    recoveredValue4 := (recoveredValue2) usedSize: (recoveredValue3).
    recoveredValue5 := (recoveredValue1) min: (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := EtasETPseudoAddress.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (recoveredValue6) new: (recoveredValue7).
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := (recoveredValue8) replaceFrom: (1) to: (recoveredValue9) with: (self) startingAt: (3).
    ^recoveredValue10
! !

"ASDBase.ic method 0x201ecfa4; bytecode file offset 0xae9874"
!CTreeETargetObjectRecord methodsFor: 'recovered'!
pseudoAddress: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := (self) fieldIndexAt: ('pseudoAddress').
    recoveredValue1 := recoveredValue0.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (self) class.
    recoveredValue4 := (recoveredValue3) pseudoAddressLength.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) size.
    recoveredValue7 := (recoveredValue4) min: (recoveredValue6).
    recoveredValue8 := (recoveredValue2) + (recoveredValue7).
    recoveredValue9 := (recoveredValue8) + (-1).
    recoveredValue10 := recoveredArg1.
    (self) replaceFrom: (recoveredValue0) to: (recoveredValue9) with: (recoveredValue10) startingAt: (1).
    ^self
! !

