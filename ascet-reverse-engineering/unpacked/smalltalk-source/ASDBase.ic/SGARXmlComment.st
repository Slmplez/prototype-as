"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2023daf4; bytecode file offset 0xb3a3c4"
!SGARXmlComment methodsFor: 'recovered'!
arXmlPrintOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) newline.
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) nextPutAll: ('<!!--').
    recoveredValue3 := recoveredValue0.
    (recoveredValue3) incIndent.
    recoveredValue4 := recoveredValue0.
    (recoveredValue4) newline.
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := (self) text.
    (recoveredValue5) nextPutAll: (recoveredValue6).
    recoveredValue7 := recoveredValue0.
    (recoveredValue7) decIndent.
    recoveredValue8 := recoveredValue0.
    (recoveredValue8) newline.
    (recoveredValue0) nextPutAll: ('-->').
    ^self
! !

