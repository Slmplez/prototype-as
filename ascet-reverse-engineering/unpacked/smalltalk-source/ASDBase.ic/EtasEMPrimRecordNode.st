"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20037454; bytecode file offset 0x934580"
!EtasEMPrimRecordNode methodsFor: 'recovered'!
getParameterInformationForRecordNode
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) parent.
    recoveredValue1 := (recoveredValue0) isParameter.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2013bce4; bytecode file offset 0xa385a0"
!EtasEMPrimRecordNode methodsFor: 'recovered'!
isParameter
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := isParameter.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 |
    recoveredBlock6Value0 := (self) getParameterInformationForRecordNode.
    recoveredBlock6Value1 := recoveredBlock6Value0.
    isParameter := recoveredBlock6Value1.
    recoveredBlock6Value0
].
    recoveredValue2 := (recoveredValue0) ifNil: (recoveredValue1).
    ^recoveredValue2
! !

