"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20096874; bytecode file offset 0x9932f0"
!OSStringZ methodsFor: 'recovered'!
byteAt: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super at: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200adc74; bytecode file offset 0x9aa550"
!OSStringZ methodsFor: 'recovered'!
byteAt: recoveredArg1 put: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := super uint8At: (recoveredValue0) put: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200b3058; bytecode file offset 0x9af934"
!OSStringZ methodsFor: 'recovered'!
asLocaleString
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) size.
    recoveredValue1 := (recoveredValue0) + (-1).
    recoveredValue2 := (self) memcpyLocaleStringFrom: (0) to: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200e8558; bytecode file offset 0x9e4e18"
!OSStringZ methodsFor: 'recovered'!
asString: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) size.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) min: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) + (-1).
    recoveredValue4 := (self) memcpyStringFrom: (0) to: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x2017d4a4; bytecode file offset 0xa79d68"
!OSStringZ methodsFor: 'recovered'!
memcpyLocaleStringFrom: recoveredArg1 to: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := EsLeadEncodedBytes.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue3) - (recoveredValue4).
    recoveredValue6 := (recoveredValue5) + (1).
    recoveredValue7 := (recoveredValue2) new: (recoveredValue6).
    recoveredValue8 := (self) memcpyFrom: (recoveredValue0) to: (recoveredValue1) into: (recoveredValue7) startingAt: (0).
    recoveredLocal1 := recoveredValue8.
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := (recoveredValue9) asString.
    ^recoveredValue10
! !

