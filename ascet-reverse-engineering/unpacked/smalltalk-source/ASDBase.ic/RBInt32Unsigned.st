"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20021164; bytecode file offset 0x92209c"
!RBInt32Unsigned methodsFor: 'recovered'!
asASAP2DataType
    ^'ULONG'
! !

"ASDBase.ic method 0x2003cd08; bytecode file offset 0x93bf94"
!RBInt32Unsigned methodsFor: 'recovered'!
asSigned
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := RBInt32Signed.
    recoveredValue1 := (recoveredValue0) createDefault.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20072dc0; bytecode file offset 0x96f6d4"
!RBInt32Unsigned methodsFor: 'recovered'!
byteSize
    ^4
! !

"ASDBase.ic method 0x20072e48; bytecode file offset 0x96f7ac"
!RBInt32Unsigned methodsFor: 'recovered'!
famosType
    ^5
! !

"ASDBase.ic method 0x200765cc; bytecode file offset 0x9757c8"
!RBInt32Unsigned methodsFor: 'recovered'!
isRBInt32Unsigned
    ^true
! !

"ASDBase.ic method 0x200881c0; bytecode file offset 0x984bc0"
!RBInt32Unsigned methodsFor: 'recovered'!
onlineDLLDataType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := RBOnlineDLLConstants.
    recoveredValue1 := (recoveredValue0) at: ('Dulong').
    ^recoveredValue1
! !

"ASDBase.ic method 0x200d8f48; bytecode file offset 0x9d5824"
!RBInt32Unsigned methodsFor: 'recovered'!
byteArrayFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) byteArrayFrom: (recoveredValue0) byteSize: (4) putMethod: ('uint32At:put:').
    ^recoveredValue1
! !

