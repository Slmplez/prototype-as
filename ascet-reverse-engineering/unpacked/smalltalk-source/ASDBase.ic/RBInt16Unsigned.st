"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20016ef8; bytecode file offset 0x92209c"
!RBInt16Unsigned methodsFor: 'recovered'!
asASAP2DataType
    ^'UWORD'
! !

"ASDBase.ic method 0x2003e148; bytecode file offset 0x93bf94"
!RBInt16Unsigned methodsFor: 'recovered'!
asSigned
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := RBInt16Signed.
    recoveredValue1 := (recoveredValue0) createDefault.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200728c8; bytecode file offset 0x96f1c4"
!RBInt16Unsigned methodsFor: 'recovered'!
byteSize
    ^2
! !

"ASDBase.ic method 0x20072a58; bytecode file offset 0x96f3cc"
!RBInt16Unsigned methodsFor: 'recovered'!
famosType
    ^3
! !

"ASDBase.ic method 0x200749bc; bytecode file offset 0x9757c8"
!RBInt16Unsigned methodsFor: 'recovered'!
isRBInt16Unsigned
    ^true
! !

"ASDBase.ic method 0x20087f7c; bytecode file offset 0x984bc0"
!RBInt16Unsigned methodsFor: 'recovered'!
onlineDLLDataType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := RBOnlineDLLConstants.
    recoveredValue1 := (recoveredValue0) at: ('Dushort').
    ^recoveredValue1
! !

"ASDBase.ic method 0x200d8ed8; bytecode file offset 0x9d57a4"
!RBInt16Unsigned methodsFor: 'recovered'!
byteArrayFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) byteArrayFrom: (recoveredValue0) byteSize: (2) putMethod: ('uint16At:put:').
    ^recoveredValue1
! !

