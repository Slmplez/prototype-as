"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x2000b064; bytecode file offset 0x6c13c"
!SstWSHttpResponseHandler methodsFor: 'recovered'!
invoke: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := SstWSSoapHttpBinding.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) currentInputMessage.
    recoveredValue3 := (recoveredValue2) namespaceUri.
    recoveredValue4 := (recoveredValue0) lookup: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := recoveredArg1.
    (recoveredValue5) setResponseHeaderProperties: (recoveredValue6).
    ^self
! !

