"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001458c; bytecode file offset 0x912098"
!EtasUtf8Encoding class methodsFor: 'recovered'!
stringRepresentation
    | recoveredValue0 |
    recoveredValue0 := SCEncodingUniversal.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200205b8; bytecode file offset 0x92209c"
!EtasUtf8Encoding class methodsFor: 'recovered'!
xmlEncodingString
    ^'utf-8'
! !

"ASDBase.ic method 0x200240e0; bytecode file offset 0x92209c"
!EtasUtf8Encoding class methodsFor: 'recovered'!
codePage
    ^65001
! !

"ASDBase.ic method 0x2003d2a8; bytecode file offset 0x93bf94"
!EtasUtf8Encoding class methodsFor: 'recovered'!
byteOrderMark
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := EsLeadEncodedBytes.
    recoveredValue1 := (recoveredValue0) utf8FileMark.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20095498; bytecode file offset 0x991fb4"
!EtasUtf8Encoding class methodsFor: 'recovered'!
putByteOrderMarkIn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) byteOrderMark.
    (recoveredValue0) nextPutAll: (recoveredValue1).
    ^self
! !

