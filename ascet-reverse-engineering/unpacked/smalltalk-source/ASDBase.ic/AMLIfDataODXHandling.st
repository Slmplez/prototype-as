"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2008b39c; bytecode file offset 0x987c70"
!AMLIfDataODXHandling methodsFor: 'recovered'!
version
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := aml.
    recoveredValue1 := (recoveredValue0) parts.
    recoveredValue2 := (recoveredValue1) firstOrNil.
    recoveredValue3 := (recoveredValue2) value.
    ^recoveredValue3
! !

"ASDBase.ic method 0x20412ef8; bytecode file offset 0xd0f86c"
!AMLIfDataODXHandling methodsFor: 'recovered'!
generateClassAccessMethod: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 |
    recoveredValue0 := Smalltalk.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) generateClassName.
    recoveredValue3 := [
    | recoveredBlock8Value0 |
    recoveredBlock8Value0 := (self) etasDevHalt.
    recoveredBlock8Value0
].
    recoveredValue4 := (recoveredValue0) at: (recoveredValue2) ifAbsent: (recoveredValue3).
    recoveredLocal3 := recoveredValue4.
    recoveredValue5 := WriteStream.
    recoveredValue6 := (recoveredValue5) on: ('').
    recoveredLocal2 := recoveredValue6.
    recoveredValue7 := recoveredLocal2.
    recoveredValue8 := recoveredValue7.
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := (recoveredValue9) selectorName.
    recoveredValue11 := aml.
    recoveredValue12 := (recoveredValue11) definition.
    recoveredValue13 := (recoveredValue10) , (recoveredValue12).
    recoveredValue14 := recoveredValue13.
    recoveredLocal1 := recoveredValue14.
    (recoveredValue8) nextPutAll: (recoveredValue13).
    recoveredValue15 := recoveredValue7.
    (recoveredValue15) cr.
    (recoveredValue7) nextPutAll: ('">> ').
    recoveredValue16 := (self) pathName.
    recoveredValue17 := recoveredLocal2.
    (recoveredValue16) printOn: (recoveredValue17).
    recoveredValue18 := recoveredLocal2.
    recoveredValue19 := recoveredValue18.
    (recoveredValue19) nextPutAll: (' <<"').
    recoveredValue20 := recoveredValue18.
    (recoveredValue20) cr.
    recoveredValue21 := recoveredValue18.
    (recoveredValue21) nextPutAll: ('^( ').
    recoveredValue22 := recoveredValue18.
    recoveredValue23 := recoveredArg1.
    recoveredValue24 := (recoveredValue23) generateClassName.
    (recoveredValue22) nextPutAll: (recoveredValue24).
    recoveredValue25 := recoveredValue18.
    (recoveredValue25) nextPutAll: (' createFor: aml )').
    (recoveredValue18) cr.
    recoveredValue26 := aml.
    recoveredValue27 := recoveredLocal1.
    recoveredValue28 := recoveredLocal2.
    recoveredValue29 := (recoveredValue28) contents.
    recoveredValue30 := (self) class.
    recoveredValue31 := recoveredLocal3.
    recoveredValue32 := (recoveredValue31) getDefinedApplication.
    (recoveredValue26) generateMethod: (recoveredValue27) source: (recoveredValue29) for: (recoveredValue30) in: (recoveredValue32) categorizeIn: ('complexArgument').
    ^self
! !

