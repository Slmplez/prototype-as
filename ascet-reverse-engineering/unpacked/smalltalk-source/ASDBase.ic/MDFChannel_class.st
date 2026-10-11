"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20017d08; bytecode file offset 0x92209c"
!MDFChannel class methodsFor: 'recovered'!
id
    ^'CN'
! !

"ASDBase.ic method 0x20026db8; bytecode file offset 0x923928"
!MDFChannel class methodsFor: 'recovered'!
formulaAccessClasses
    ^#(DBLinearFormulaItem DBInterpolatedFormulaItem DBNonInterpolatedFormulaItem nil nil nil DBPolynomFormulaItem DBExponentialFormulaItem DBLogarithmFormulaItem DBRationalFormulaItem nil DBVerbalTableFormulaItem DBVerbalRangeTableFormulaItem nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil Date Time)
! !

"ASDBase.ic method 0x20080c44; bytecode file offset 0x97d500"
!MDFChannel class methodsFor: 'recovered'!
fixedSize
    ^218
! !

"ASDBase.ic method 0x200b6950; bytecode file offset 0x9b39ac"
!MDFChannel class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('cnPtr' 'ccPtr' 'cePtr' 'cdPtr' 'txPtr' 'channelType' 'cnName' 'cnDescription' 'firstBit' 'noOfBits' 'sourceInfo' 'dataType' 'minMaxOk' 'min' 'max' 'step' 'longName' 'displayIdentifier')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2036a610; bytecode file offset 0xc66ef0"
!MDFChannel class methodsFor: 'recovered'!
integerAccessClasses
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (17).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := DBU8Item.
    (recoveredValue3) at: (2) put: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := DBS8Item.
    (recoveredValue5) at: (3) put: (recoveredValue6).
    recoveredValue7 := recoveredValue2.
    recoveredValue8 := DBU16Item.
    (recoveredValue7) at: (4) put: (recoveredValue8).
    recoveredValue9 := recoveredValue2.
    recoveredValue10 := DBS16Item.
    (recoveredValue9) at: (5) put: (recoveredValue10).
    recoveredValue11 := recoveredValue2.
    recoveredValue12 := DBU32Item.
    (recoveredValue11) at: (8) put: (recoveredValue12).
    recoveredValue13 := recoveredValue2.
    recoveredValue14 := DBS32Item.
    (recoveredValue13) at: (9) put: (recoveredValue14).
    recoveredValue15 := recoveredValue2.
    recoveredValue16 := DBU64Item.
    (recoveredValue15) at: (16) put: (recoveredValue16).
    recoveredValue17 := DBS64Item.
    (recoveredValue2) at: (17) put: (recoveredValue17).
    recoveredValue18 := recoveredLocal1.
    ^recoveredValue18
! !

"ASDBase.ic method 0x20473e78; bytecode file offset 0xd70758"
!MDFChannel class methodsFor: 'recovered'!
bitFieldAccessClasses
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (16).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := DB8BitFieldItem.
    (recoveredValue3) at: (1) put: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := DB8SignedBitFieldItem.
    (recoveredValue5) at: (2) put: (recoveredValue6).
    recoveredValue7 := recoveredValue2.
    recoveredValue8 := DB16BitFieldItem.
    (recoveredValue7) at: (3) put: (recoveredValue8).
    recoveredValue9 := recoveredValue2.
    recoveredValue10 := DB16SignedBitFieldItem.
    (recoveredValue9) at: (4) put: (recoveredValue10).
    recoveredValue11 := recoveredValue2.
    recoveredValue12 := DB32BitFieldItem.
    (recoveredValue11) at: (5) put: (recoveredValue12).
    recoveredValue13 := recoveredValue2.
    recoveredValue14 := DB32SignedBitFieldItem.
    (recoveredValue13) at: (6) put: (recoveredValue14).
    recoveredValue15 := recoveredValue2.
    recoveredValue16 := DB32BitFieldItem.
    (recoveredValue15) at: (7) put: (recoveredValue16).
    recoveredValue17 := recoveredValue2.
    recoveredValue18 := DB32SignedBitFieldItem.
    (recoveredValue17) at: (8) put: (recoveredValue18).
    recoveredValue19 := recoveredValue2.
    recoveredValue20 := DB64BitFieldItem.
    (recoveredValue19) at: (9) put: (recoveredValue20).
    recoveredValue21 := recoveredValue2.
    recoveredValue22 := DB64SignedBitFieldItem.
    (recoveredValue21) at: (10) put: (recoveredValue22).
    recoveredValue23 := recoveredValue2.
    recoveredValue24 := DB64BitFieldItem.
    (recoveredValue23) at: (11) put: (recoveredValue24).
    recoveredValue25 := recoveredValue2.
    recoveredValue26 := DB64SignedBitFieldItem.
    (recoveredValue25) at: (12) put: (recoveredValue26).
    recoveredValue27 := recoveredValue2.
    recoveredValue28 := DB64BitFieldItem.
    (recoveredValue27) at: (13) put: (recoveredValue28).
    recoveredValue29 := recoveredValue2.
    recoveredValue30 := DB64SignedBitFieldItem.
    (recoveredValue29) at: (14) put: (recoveredValue30).
    recoveredValue31 := recoveredValue2.
    recoveredValue32 := DB64BitFieldItem.
    (recoveredValue31) at: (15) put: (recoveredValue32).
    recoveredValue33 := DB64SignedBitFieldItem.
    (recoveredValue2) at: (16) put: (recoveredValue33).
    recoveredValue34 := recoveredLocal1.
    ^recoveredValue34
! !

