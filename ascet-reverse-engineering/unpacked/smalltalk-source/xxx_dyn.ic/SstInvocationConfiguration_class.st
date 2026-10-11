"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20000750; bytecode file offset 0x619a4"
!SstInvocationConfiguration class methodsFor: 'recovered'!
byReferenceConfiguration
    | recoveredValue0 |
    recoveredValue0 := (self) baseConfiguration.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20000834; bytecode file offset 0x619a4"
!SstInvocationConfiguration class methodsFor: 'recovered'!
baseConfiguration
    | recoveredValue0 |
    recoveredValue0 := (self) new.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20006814; bytecode file offset 0x678e4"
!SstInvocationConfiguration class methodsFor: 'recovered'!
byValueConfiguration
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) baseConfiguration.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := SstSimpleObjectSpace.
    (recoveredValue1) space: (recoveredValue2).
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20014314; bytecode file offset 0x75400"
!SstInvocationConfiguration class methodsFor: 'recovered'!
httpConfiguration
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := SstInvocationConfiguration.
    recoveredValue1 := (recoveredValue0) baseConfiguration.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := SstHttpMarshaler.
    recoveredValue4 := (recoveredValue3) defaultConfiguration.
    (recoveredValue2) marshaler: (recoveredValue4).
    recoveredValue5 := recoveredValue1.
    recoveredValue6 := SstSimpleObjectSpace.
    (recoveredValue5) space: (recoveredValue6).
    recoveredValue7 := recoveredValue1.
    recoveredValue8 := SstPooledDispatcher.
    recoveredValue9 := (recoveredValue8) templateHigh: (20) low: (0) strict: (true).
    (recoveredValue7) dispatcher: (recoveredValue9).
    ^recoveredValue1
! !

