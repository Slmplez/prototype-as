"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2004ade4; bytecode file offset 0x947768"
!CTPartialKeyRequest methodsFor: 'recovered'!
btotal
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004ba54; bytecode file offset 0x948384"
!CTPartialKeyRequest methodsFor: 'recovered'!
bavail
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004c83c; bytecode file offset 0x949118"
!CTPartialKeyRequest methodsFor: 'recovered'!
breturn
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004ce38; bytecode file offset 0x949804"
!CTPartialKeyRequest methodsFor: 'recovered'!
bsiglen
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (12).
    ^recoveredValue0
! !

"ASDBase.ic method 0x20093da8; bytecode file offset 0x990690"
!CTPartialKeyRequest methodsFor: 'recovered'!
btotal: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) uint32At: (0) put: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20093eec; bytecode file offset 0x9907c8"
!CTPartialKeyRequest methodsFor: 'recovered'!
bavail: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) uint32At: (4) put: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20093fd0; bytecode file offset 0x990888"
!CTPartialKeyRequest methodsFor: 'recovered'!
breturn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) uint32At: (8) put: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20094048; bytecode file offset 0x990900"
!CTPartialKeyRequest methodsFor: 'recovered'!
bsiglen: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) uint16At: (12) put: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200d372c; bytecode file offset 0x9cffec"
!CTPartialKeyRequest methodsFor: 'recovered'!
target
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) fixedSize.
    recoveredValue2 := (recoveredValue1) + (-1).
    recoveredValue3 := (self) memcpyFrom: (14) to: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20175610; bytecode file offset 0xa71ed8"
!CTPartialKeyRequest methodsFor: 'recovered'!
target: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) size.
    recoveredValue3 := (recoveredValue2) + (-1).
    recoveredValue4 := (self) class.
    recoveredValue5 := (recoveredValue4) fixedSize.
    recoveredValue6 := (recoveredValue5) + (-1).
    recoveredValue7 := (recoveredValue3) min: (recoveredValue6).
    recoveredValue8 := (recoveredValue0) memcpyFrom: (0) to: (recoveredValue7) into: (self) startingAt: (14).
    ^recoveredValue8
! !

