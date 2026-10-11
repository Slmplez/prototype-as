"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20048cc0; bytecode file offset 0x945728"
!SGESDLCodeStream class methodsFor: 'recovered'!
prepareCodeGeneration
    OperatorMapping := nil.
    ^self
! !

"ASDBase.ic method 0x2013a1ec; bytecode file offset 0xa36aac"
!SGESDLCodeStream class methodsFor: 'recovered'!
operatorMapping
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OperatorMapping.
    recoveredValue1 := [
    | recoveredBlock6Value0 |
    recoveredBlock6Value0 := (self) initOperatorMapping.
    recoveredBlock6Value0
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := OperatorMapping.
    ^recoveredValue2
! !

"ASDBase.ic method 0x201779f8; bytecode file offset 0xa742b8"
!SGESDLCodeStream class methodsFor: 'recovered'!
mapOperator: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) operatorMapping.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    | recoveredBlock8Value0 recoveredBlock8Value1 |
    recoveredBlock8Value0 := recoveredArg1.
    recoveredBlock8Value1 := (recoveredBlock8Value0) asString.
    recoveredBlock8Value1
].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x204c03f4; bytecode file offset 0xdbcd4c"
!SGESDLCodeStream class methodsFor: 'recovered'!
initOperatorMapping
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) at: ('abs') put: ('.abs()').
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) at: ('add') put: ('+').
    recoveredValue4 := recoveredValue1.
    (recoveredValue4) at: ('and') put: ('&&').
    recoveredValue5 := recoveredValue1.
    (recoveredValue5) at: ('div') put: ('/').
    recoveredValue6 := recoveredValue1.
    (recoveredValue6) at: ('eq') put: ('==').
    recoveredValue7 := recoveredValue1.
    (recoveredValue7) at: ('ge') put: ('>=').
    recoveredValue8 := recoveredValue1.
    (recoveredValue8) at: ('gt') put: ('>').
    recoveredValue9 := recoveredValue1.
    (recoveredValue9) at: ('le') put: ('<=').
    recoveredValue10 := recoveredValue1.
    (recoveredValue10) at: ('lt') put: ('<').
    recoveredValue11 := recoveredValue1.
    (recoveredValue11) at: ('mul') put: ('*').
    recoveredValue12 := recoveredValue1.
    (recoveredValue12) at: ('ne') put: ('!!=').
    recoveredValue13 := recoveredValue1.
    (recoveredValue13) at: ('neg') put: ('-').
    recoveredValue14 := recoveredValue1.
    (recoveredValue14) at: ('not') put: ('!!').
    recoveredValue15 := recoveredValue1.
    (recoveredValue15) at: ('or') put: ('||').
    recoveredValue16 := recoveredValue1.
    (recoveredValue16) at: ('postDec') put: ('--').
    recoveredValue17 := recoveredValue1.
    (recoveredValue17) at: ('postInc') put: ('++').
    recoveredValue18 := recoveredValue1.
    (recoveredValue18) at: ('preInc') put: ('++').
    recoveredValue19 := recoveredValue1.
    (recoveredValue19) at: ('preDec') put: ('--').
    recoveredValue20 := recoveredValue1.
    (recoveredValue20) at: ('rem') put: ('%').
    recoveredValue21 := recoveredValue1.
    (recoveredValue21) at: ('sub') put: ('-').
    OperatorMapping := recoveredValue1.
    ^self
! !

