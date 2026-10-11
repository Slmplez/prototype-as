"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20015ddc; bytecode file offset 0x92209c"
!RBUnsignedInt methodsFor: 'recovered'!
getCharacterFilter
    ^'checkUnsignedInteger:'
! !

"ASDBase.ic method 0x20018200; bytecode file offset 0x92209c"
!RBUnsignedInt methodsFor: 'recovered'!
asModelType
    ^'udisc'
! !

"ASDBase.ic method 0x20024218; bytecode file offset 0x92209c"
!RBUnsignedInt methodsFor: 'recovered'!
modelLabel
    ^'udisc'
! !

"ASDBase.ic method 0x2003ea48; bytecode file offset 0x93bf94"
!RBUnsignedInt methodsFor: 'recovered'!
modelType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGUnsignedInteger.
    recoveredValue1 := (recoveredValue0) createDefault.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20071b04; bytecode file offset 0x96e578"
!RBUnsignedInt methodsFor: 'recovered'!
getBasicLogType
    ^0
! !

"ASDBase.ic method 0x20078834; bytecode file offset 0x9757c8"
!RBUnsignedInt methodsFor: 'recovered'!
isIleUnsignedIntegerType
    ^true
! !

"ASDBase.ic method 0x2007cbe4; bytecode file offset 0x97c330"
!RBUnsignedInt methodsFor: 'recovered'!
isSigned
    ^false
! !

"ASDBase.ic method 0x200e1d08; bytecode file offset 0x9de5fc"
!RBUnsignedInt methodsFor: 'recovered'!
asShortCType
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) byteSize.
    recoveredValue1 := (recoveredValue0) * (8).
    recoveredValue2 := (recoveredValue1) asString.
    recoveredValue3 := ('u') , (recoveredValue2).
    ^recoveredValue3
! !

