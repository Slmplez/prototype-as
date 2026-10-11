"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20009c5c; bytecode file offset 0x6ad30"
!SstSoapEnvelope class methodsFor: 'recovered'!
withPayload: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) new.
    recoveredValue1 := SstSoapBody.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) addElement: (recoveredValue4).
    recoveredValue5 := (recoveredValue0) body: (recoveredValue2).
    ^recoveredValue5
! !

