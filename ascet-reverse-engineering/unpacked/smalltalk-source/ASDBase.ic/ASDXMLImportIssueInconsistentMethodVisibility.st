"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2013c578; bytecode file offset 0xa38e40"
!ASDXMLImportIssueInconsistentMethodVisibility methodsFor: 'recovered'!
autofixText
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := method.
    recoveredValue1 := (recoveredValue0) methodName.
    recoveredValue2 := ('Set pin visibility for the method ') , (recoveredValue1).
    recoveredValue3 := (recoveredValue2) , (' to: ').
    recoveredValue4 := visibilityFlag.
    recoveredValue5 := (recoveredValue4) asString.
    recoveredValue6 := (recoveredValue3) , (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20210e14; bytecode file offset 0xb0d6e4"
!ASDXMLImportIssueInconsistentMethodVisibility methodsFor: 'recovered'!
initOn: recoveredArg1 visibilityFlag: recoveredArg2 pins: recoveredArg3 protoClass: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) methodName.
    recoveredValue2 := ('Pin visibility in method ') , (recoveredValue1).
    recoveredValue3 := (recoveredValue2) , (' not consistent').
    recoveredValue4 := recoveredArg4.
    super initOn: (recoveredValue3) item: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    method := recoveredValue5.
    recoveredValue6 := recoveredArg2.
    visibilityFlag := recoveredValue6.
    recoveredValue7 := recoveredArg3.
    pins := recoveredValue7.
    issueType := 'warning'.
    ^self
! !

"ASDBase.ic method 0x20297820; bytecode file offset 0xb940f4"
!ASDXMLImportIssueInconsistentMethodVisibility methodsFor: 'recovered'!
repair: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := method.
    recoveredValue2 := (recoveredValue1) methodName.
    recoveredValue3 := ('Set the pin visibility for the method ') , (recoveredValue2).
    recoveredValue4 := (recoveredValue3) , (' to: ').
    recoveredValue5 := visibilityFlag.
    recoveredValue6 := (recoveredValue5) asString.
    recoveredValue7 := (recoveredValue4) , (recoveredValue6).
    (recoveredValue0) logWarning: (recoveredValue7).
    done := true.
    recoveredValue8 := pins.
    recoveredValue9 := [:recoveredBlock26Arg1 | 
    | recoveredBlock26Value0 recoveredBlock26Value1 recoveredBlock26Value2 |
    recoveredBlock26Value0 := recoveredBlock26Arg1.
    recoveredBlock26Value1 := visibilityFlag.
    recoveredBlock26Value2 := (recoveredBlock26Value0) at: (4) put: (recoveredBlock26Value1).
    recoveredBlock26Value2
].
    (recoveredValue8) do: (recoveredValue9).
    ^true
! !

