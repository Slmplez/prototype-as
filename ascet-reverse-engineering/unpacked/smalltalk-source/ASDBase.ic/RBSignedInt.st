"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001b794; bytecode file offset 0x92209c"
!RBSignedInt methodsFor: 'recovered'!
modelLabel
    ^'sdisc'
! !

"ASDBase.ic method 0x20025d20; bytecode file offset 0x923928"
!RBSignedInt methodsFor: 'recovered'!
asModelType
    ^'sdisc'
! !

"ASDBase.ic method 0x2003e0b8; bytecode file offset 0x93bf94"
!RBSignedInt methodsFor: 'recovered'!
modelType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGSignedInteger.
    recoveredValue1 := (recoveredValue0) createDefault.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200722a8; bytecode file offset 0x96ee04"
!RBSignedInt methodsFor: 'recovered'!
getBasicLogType
    ^1
! !

"ASDBase.ic method 0x20076d84; bytecode file offset 0x9757c8"
!RBSignedInt methodsFor: 'recovered'!
isIleSignedIntegerType
    ^true
! !

"ASDBase.ic method 0x20076e6c; bytecode file offset 0x9757c8"
!RBSignedInt methodsFor: 'recovered'!
isSigned
    ^true
! !

"ASDBase.ic method 0x200e1d38; bytecode file offset 0x9de5fc"
!RBSignedInt methodsFor: 'recovered'!
asShortCType
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) byteSize.
    recoveredValue1 := (recoveredValue0) * (8).
    recoveredValue2 := (recoveredValue1) asString.
    recoveredValue3 := ('s') , (recoveredValue2).
    ^recoveredValue3
! !

