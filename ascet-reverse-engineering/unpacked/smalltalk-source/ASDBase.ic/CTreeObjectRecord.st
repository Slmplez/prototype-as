"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20015684; bytecode file offset 0x912098"
!CTreeObjectRecord methodsFor: 'recovered'!
proxyClass
    | recoveredValue0 |
    recoveredValue0 := DBProxy.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2016e568; bytecode file offset 0xa6ae30"
!CTreeObjectRecord methodsFor: 'recovered'!
globalId
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := ByteArray.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) globalIdLength.
    recoveredValue3 := (recoveredValue0) new: (recoveredValue2).
    recoveredValue4 := (self) class.
    recoveredValue5 := (recoveredValue4) globalIdLength.
    recoveredValue6 := (recoveredValue3) replaceFrom: (1) to: (recoveredValue5) with: (self) startingAt: (3).
    ^recoveredValue6
! !

"ASDBase.ic method 0x2019b160; bytecode file offset 0xa97a7c"
!CTreeObjectRecord methodsFor: 'recovered'!
transactionId: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) fieldIndexAt: ('transactionId').
    recoveredValue1 := recoveredValue0.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (self) class.
    recoveredValue4 := (recoveredValue3) transactionIdLength.
    recoveredValue5 := (recoveredValue2) + (recoveredValue4).
    recoveredValue6 := (recoveredValue5) + (-1).
    recoveredValue7 := recoveredArg1.
    (self) replaceFrom: (recoveredValue0) to: (recoveredValue6) with: (recoveredValue7) startingAt: (1).
    ^self
! !

"ASDBase.ic method 0x2019b17c; bytecode file offset 0xa97a7c"
!CTreeObjectRecord methodsFor: 'recovered'!
pcId: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) fieldIndexAt: ('pcId').
    recoveredValue1 := recoveredValue0.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (self) class.
    recoveredValue4 := (recoveredValue3) pcIdLength.
    recoveredValue5 := (recoveredValue2) + (recoveredValue4).
    recoveredValue6 := (recoveredValue5) + (-1).
    recoveredValue7 := recoveredArg1.
    (self) replaceFrom: (recoveredValue0) to: (recoveredValue6) with: (recoveredValue7) startingAt: (1).
    ^self
! !

"ASDBase.ic method 0x2019b1b4; bytecode file offset 0xa97a7c"
!CTreeObjectRecord methodsFor: 'recovered'!
tsThisVersion: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) fieldIndexAt: ('tsThisVersion').
    recoveredValue1 := recoveredValue0.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (self) class.
    recoveredValue4 := (recoveredValue3) timeLength.
    recoveredValue5 := (recoveredValue2) + (recoveredValue4).
    recoveredValue6 := (recoveredValue5) + (-1).
    recoveredValue7 := recoveredArg1.
    (self) replaceFrom: (recoveredValue0) to: (recoveredValue6) with: (recoveredValue7) startingAt: (1).
    ^self
! !

"ASDBase.ic method 0x2019dfd8; bytecode file offset 0xa9a938"
!CTreeObjectRecord methodsFor: 'recovered'!
transactionId
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := ByteArray.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) transactionIdLength.
    recoveredValue3 := (recoveredValue0) new: (recoveredValue2).
    recoveredValue4 := (self) class.
    recoveredValue5 := (recoveredValue4) transactionIdLength.
    recoveredValue6 := (self) fieldIndexAt: ('transactionId').
    recoveredValue7 := (recoveredValue3) replaceFrom: (1) to: (recoveredValue5) with: (self) startingAt: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x2019e020; bytecode file offset 0xa9a938"
!CTreeObjectRecord methodsFor: 'recovered'!
pcId
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := ByteArray.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) pcIdLength.
    recoveredValue3 := (recoveredValue0) new: (recoveredValue2).
    recoveredValue4 := (self) class.
    recoveredValue5 := (recoveredValue4) pcIdLength.
    recoveredValue6 := (self) fieldIndexAt: ('pcId').
    recoveredValue7 := (recoveredValue3) replaceFrom: (1) to: (recoveredValue5) with: (self) startingAt: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x2019e044; bytecode file offset 0xa9a938"
!CTreeObjectRecord methodsFor: 'recovered'!
tsThisVersion
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := ByteArray.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) timeLength.
    recoveredValue3 := (recoveredValue0) new: (recoveredValue2).
    recoveredValue4 := (self) class.
    recoveredValue5 := (recoveredValue4) timeLength.
    recoveredValue6 := (self) fieldIndexAt: ('tsThisVersion').
    recoveredValue7 := (recoveredValue3) replaceFrom: (1) to: (recoveredValue5) with: (self) startingAt: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x201ecf64; bytecode file offset 0xae9830"
!CTreeObjectRecord methodsFor: 'recovered'!
thisVersionId: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := (self) fieldIndexAt: ('pcId').
    recoveredValue1 := recoveredValue0.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (self) class.
    recoveredValue4 := (recoveredValue3) pcIdLength.
    recoveredValue5 := (recoveredValue2) + (recoveredValue4).
    recoveredValue6 := (self) class.
    recoveredValue7 := (recoveredValue6) timeLength.
    recoveredValue8 := (recoveredValue5) + (recoveredValue7).
    recoveredValue9 := (recoveredValue8) + (-1).
    recoveredValue10 := recoveredArg1.
    (self) replaceFrom: (recoveredValue0) to: (recoveredValue9) with: (recoveredValue10) startingAt: (1).
    ^self
! !

"ASDBase.ic method 0x20223bbc; bytecode file offset 0xb20490"
!CTreeObjectRecord methodsFor: 'recovered'!
thisVersionId
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := ByteArray.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) pcIdLength.
    recoveredValue3 := (self) class.
    recoveredValue4 := (recoveredValue3) timeLength.
    recoveredValue5 := (recoveredValue2) + (recoveredValue4).
    recoveredValue6 := (recoveredValue0) new: (recoveredValue5).
    recoveredValue7 := (self) class.
    recoveredValue8 := (recoveredValue7) pcIdLength.
    recoveredValue9 := (self) class.
    recoveredValue10 := (recoveredValue9) timeLength.
    recoveredValue11 := (recoveredValue8) + (recoveredValue10).
    recoveredValue12 := (self) fieldIndexAt: ('pcId').
    recoveredValue13 := (recoveredValue6) replaceFrom: (1) to: (recoveredValue11) with: (self) startingAt: (recoveredValue12).
    ^recoveredValue13
! !

"ASDBase.ic method 0x202e8650; bytecode file offset 0xbe4f24"
!CTreeObjectRecord methodsFor: 'recovered'!
globalId: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 |
    recoveredValue0 := (self) fieldIndexAt: ('pcId').
    recoveredValue1 := recoveredValue0.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := recoveredLocal2.
    recoveredValue3 := (self) class.
    recoveredValue4 := (recoveredValue3) pcIdLength.
    recoveredValue5 := (self) class.
    recoveredValue6 := (recoveredValue5) timeLength.
    recoveredValue7 := (recoveredValue4) + (recoveredValue6).
    recoveredValue8 := recoveredValue7.
    recoveredLocal1 := recoveredValue8.
    recoveredValue9 := (recoveredValue2) + (recoveredValue7).
    recoveredValue10 := (recoveredValue9) + (-1).
    recoveredValue11 := recoveredArg1.
    (self) replaceFrom: (recoveredValue0) to: (recoveredValue10) with: (recoveredValue11) startingAt: (1).
    recoveredValue12 := (self) fieldIndexAt: ('transactionId').
    recoveredValue13 := recoveredValue12.
    recoveredLocal2 := recoveredValue13.
    recoveredValue14 := recoveredLocal2.
    recoveredValue15 := (self) class.
    recoveredValue16 := (recoveredValue15) transactionIdLength.
    recoveredValue17 := (recoveredValue14) + (recoveredValue16).
    recoveredValue18 := (recoveredValue17) + (-1).
    recoveredValue19 := recoveredArg1.
    recoveredValue20 := recoveredLocal1.
    recoveredValue21 := (recoveredValue20) + (1).
    (self) replaceFrom: (recoveredValue12) to: (recoveredValue18) with: (recoveredValue19) startingAt: (recoveredValue21).
    ^self
! !

