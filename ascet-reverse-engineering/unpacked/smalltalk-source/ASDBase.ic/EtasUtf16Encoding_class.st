"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001455c; bytecode file offset 0x912098"
!EtasUtf16Encoding class methodsFor: 'recovered'!
stringRepresentation
    | recoveredValue0 |
    recoveredValue0 := SCWideCharacter.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2002036c; bytecode file offset 0x92209c"
!EtasUtf16Encoding class methodsFor: 'recovered'!
xmlEncodingString
    ^'utf-16'
! !

"ASDBase.ic method 0x2003dc28; bytecode file offset 0x93bf94"
!EtasUtf16Encoding class methodsFor: 'recovered'!
byteOrderMark
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := EsLeadEncodedBytes.
    recoveredValue1 := (recoveredValue0) utf16FileMark.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2008111c; bytecode file offset 0x97d9d0"
!EtasUtf16Encoding class methodsFor: 'recovered'!
codePage
    ^-16
! !

"ASDBase.ic method 0x20087edc; bytecode file offset 0x984bc0"
!EtasUtf16Encoding class methodsFor: 'recovered'!
byteOrderCharacter
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Character.
    recoveredValue1 := (recoveredValue0) value: (65279).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200956d8; bytecode file offset 0x991fb4"
!EtasUtf16Encoding class methodsFor: 'recovered'!
putByteOrderMarkIn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) byteOrderCharacter.
    (recoveredValue0) nextPut: (recoveredValue1).
    ^self
! !

