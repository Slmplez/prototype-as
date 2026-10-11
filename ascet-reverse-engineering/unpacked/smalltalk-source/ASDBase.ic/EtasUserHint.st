"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2022fb90; bytecode file offset 0xb2c470"
!EtasUserHint methodsFor: 'recovered'!
prompterTitle
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := ASDHintOptions.
    recoveredValue1 := (recoveredValue0) instance.
    recoveredValue2 := (recoveredValue1) availableCustomizableDialogs.
    recoveredValue3 := (self) prompterID.
    recoveredValue4 := [
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 |
    recoveredBlock10Value0 := (self) prompterID.
    recoveredBlock10Value1 := (recoveredBlock10Value0) asString.
    recoveredBlock10Value2 := ('Missing Customizable Dialog Class:') , (recoveredBlock10Value1).
    (self) runtimeAssert: (false) additionalInfo: (recoveredBlock10Value2).
    #('ASCET')
].
    recoveredValue5 := (recoveredValue2) at: (recoveredValue3) ifAbsent: (recoveredValue4).
    recoveredValue6 := (recoveredValue5) first.
    ^recoveredValue6
! !

