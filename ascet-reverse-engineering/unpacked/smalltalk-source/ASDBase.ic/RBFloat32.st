"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001727c; bytecode file offset 0x92209c"
!RBFloat32 methodsFor: 'recovered'!
maxValue
    ^#[173 223 140 199 51 249 239 71]
! !

"ASDBase.ic method 0x20018be4; bytecode file offset 0x92209c"
!RBFloat32 methodsFor: 'recovered'!
asASAP2DataType
    ^'FLOAT32_IEEE'
! !

"ASDBase.ic method 0x20038d9c; bytecode file offset 0x935c54"
!RBFloat32 methodsFor: 'recovered'!
equalsType: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) isIleFloat32Type.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20072ce0; bytecode file offset 0x96f6d4"
!RBFloat32 methodsFor: 'recovered'!
byteSize
    ^4
! !

"ASDBase.ic method 0x200742bc; bytecode file offset 0x970bc8"
!RBFloat32 methodsFor: 'recovered'!
famosType
    ^7
! !

"ASDBase.ic method 0x2007543c; bytecode file offset 0x9757c8"
!RBFloat32 methodsFor: 'recovered'!
isIleFloat32Type
    ^true
! !

"ASDBase.ic method 0x200772a4; bytecode file offset 0x9757c8"
!RBFloat32 methodsFor: 'recovered'!
isRBFloat32
    ^true
! !

"ASDBase.ic method 0x2007db9c; bytecode file offset 0x97c330"
!RBFloat32 methodsFor: 'recovered'!
isIleFloat64Type
    ^false
! !

"ASDBase.ic method 0x2008829c; bytecode file offset 0x984bc0"
!RBFloat32 methodsFor: 'recovered'!
onlineDLLDataType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := RBOnlineDLLConstants.
    recoveredValue1 := (recoveredValue0) at: ('Dfloat').
    ^recoveredValue1
! !

"ASDBase.ic method 0x200d8f68; bytecode file offset 0x9d5824"
!RBFloat32 methodsFor: 'recovered'!
byteArrayFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) byteArrayFrom: (recoveredValue0) byteSize: (4) putMethod: ('float32At:put:').
    ^recoveredValue1
! !

