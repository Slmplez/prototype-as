"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001682c; bytecode file offset 0x92209c"
!SGEnumeration methodsFor: 'recovered'!
modelTypeForView
    ^'Enumeration'
! !

"ASDBase.ic method 0x2001a294; bytecode file offset 0x92209c"
!SGEnumeration methodsFor: 'recovered'!
iconName
    ^'ElementTypeVariableEnumeration'
! !

"ASDBase.ic method 0x20021ee4; bytecode file offset 0x92209c"
!SGEnumeration methodsFor: 'recovered'!
label
    ^'enum'
! !

"ASDBase.ic method 0x2007878c; bytecode file offset 0x9757c8"
!SGEnumeration methodsFor: 'recovered'!
isSGEnumeration
    ^true
! !

"ASDBase.ic method 0x201520d8; bytecode file offset 0xa4e9a0"
!SGEnumeration methodsFor: 'recovered'!
initialize
    super initialize.
    (self) initializeEmpty.
    (self) at: ('enumerator') put: (0).
    ^self
! !

"ASDBase.ic method 0x202c38e4; bytecode file offset 0xbc01f0"
!SGEnumeration methodsFor: 'recovered'!
possibleTypes
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := SGReal.
    recoveredValue4 := (recoveredValue3) createDefault.
    (recoveredValue2) add: (recoveredValue4).
    recoveredValue5 := recoveredValue1.
    recoveredValue6 := SGSignedInteger.
    recoveredValue7 := (recoveredValue6) createDefault.
    (recoveredValue5) add: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := SGUnsignedInteger.
    recoveredValue10 := (recoveredValue9) createDefault.
    (recoveredValue8) add: (recoveredValue10).
    recoveredValue11 := recoveredValue1.
    recoveredValue12 := SGLimitedInteger.
    recoveredValue13 := (recoveredValue12) createDefault.
    (recoveredValue11) add: (recoveredValue13).
    recoveredValue14 := recoveredValue1.
    recoveredValue15 := SGWrapAroundInteger.
    recoveredValue16 := (recoveredValue15) createDefault.
    (recoveredValue14) add: (recoveredValue16).
    recoveredValue17 := recoveredValue1.
    recoveredValue18 := SGBoolean.
    recoveredValue19 := (recoveredValue18) createDefault.
    (recoveredValue17) add: (recoveredValue19).
    recoveredValue20 := recoveredValue1.
    (recoveredValue20) add: (self).
    ^recoveredValue1
! !

