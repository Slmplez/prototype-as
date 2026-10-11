"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000d674; bytecode file offset 0x90a4b8"
!EtasEncoding methodsFor: 'recovered'!
convert: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200153c0; bytecode file offset 0x912098"
!EtasEncoding methodsFor: 'recovered'!
preferredStringClass
    | recoveredValue0 |
    recoveredValue0 := String.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006681c; bytecode file offset 0x963428"
!EtasEncoding methodsFor: 'recovered'!
codePage
    | recoveredValue0 |
    recoveredValue0 := codePage.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006740c; bytecode file offset 0x9646f8"
!EtasEncoding methodsFor: 'recovered'!
codePageName
    | recoveredValue0 |
    recoveredValue0 := codePageName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007a87c; bytecode file offset 0x97c330"
!EtasEncoding methodsFor: 'recovered'!
isSingleByte
    ^false
! !

"ASDBase.ic method 0x2007b66c; bytecode file offset 0x97c330"
!EtasEncoding methodsFor: 'recovered'!
isDoubleByte
    ^false
! !

"ASDBase.ic method 0x20081568; bytecode file offset 0x97e234"
!EtasEncoding methodsFor: 'recovered'!
openEmpty: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := CfsProgressingReadWriteFileStream.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) openEmpty: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20081628; bytecode file offset 0x97e234"
!EtasEncoding methodsFor: 'recovered'!
createFileStreamOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := RBBcrtl32DLL.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) removeCCommentAndWhiteSpacesFromReturnStream: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200818b8; bytecode file offset 0x97e234"
!EtasEncoding methodsFor: 'recovered'!
openAppend: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := CfsProgressingReadWriteFileStream.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) openAppend: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200be08c; bytecode file offset 0x9bb178"
!EtasEncoding methodsFor: 'recovered'!
codePage: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    codePage := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bf308; bytecode file offset 0x9bc0b4"
!EtasEncoding methodsFor: 'recovered'!
codePageName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    codePageName := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x201cd410; bytecode file offset 0xac9cd0"
!EtasEncoding methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (recoveredValue1) cr.
    recoveredValue2 := codePageName.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) printOn: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    (recoveredValue4) cr.
    recoveredValue5 := codePage.
    recoveredValue6 := recoveredArg1.
    (recoveredValue5) printOn: (recoveredValue6).
    ^self
! !

