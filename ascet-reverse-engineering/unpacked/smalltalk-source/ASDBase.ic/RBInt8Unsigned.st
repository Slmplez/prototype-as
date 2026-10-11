"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001b980; bytecode file offset 0x92209c"
!RBInt8Unsigned methodsFor: 'recovered'!
asASAP2DataType
    ^'UBYTE'
! !

"ASDBase.ic method 0x2003e388; bytecode file offset 0x93bf94"
!RBInt8Unsigned methodsFor: 'recovered'!
asSigned
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := RBInt8Signed.
    recoveredValue1 := (recoveredValue0) createDefault.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200720f8; bytecode file offset 0x96ee04"
!RBInt8Unsigned methodsFor: 'recovered'!
byteSize
    ^1
! !

"ASDBase.ic method 0x20072268; bytecode file offset 0x96ee04"
!RBInt8Unsigned methodsFor: 'recovered'!
famosType
    ^1
! !

"ASDBase.ic method 0x2007547c; bytecode file offset 0x9757c8"
!RBInt8Unsigned methodsFor: 'recovered'!
isRBInt8Unsigned
    ^true
! !

"ASDBase.ic method 0x200882ec; bytecode file offset 0x984bc0"
!RBInt8Unsigned methodsFor: 'recovered'!
onlineDLLDataType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := RBOnlineDLLConstants.
    recoveredValue1 := (recoveredValue0) at: ('Duchar').
    ^recoveredValue1
! !

"ASDBase.ic method 0x200d8e9c; bytecode file offset 0x9d5758"
!RBInt8Unsigned methodsFor: 'recovered'!
byteArrayFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) byteArrayFrom: (recoveredValue0) byteSize: (1) putMethod: ('uint8At:put:').
    ^recoveredValue1
! !

