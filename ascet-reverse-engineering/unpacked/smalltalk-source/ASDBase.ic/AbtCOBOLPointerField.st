"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20003778; bytecode file offset 0x90206c"
!AbtCOBOLPointerField methodsFor: 'recovered'!
setInitialValue: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20014fb8; bytecode file offset 0x912098"
!AbtCOBOLPointerField methodsFor: 'recovered'!
valueClass
    | recoveredValue0 |
    recoveredValue0 := OSPtr.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006f060; bytecode file offset 0x96bc1c"
!AbtCOBOLPointerField methodsFor: 'recovered'!
pointerType
    | recoveredValue0 |
    recoveredValue0 := pointerType.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20072ba8; bytecode file offset 0x96f6d4"
!AbtCOBOLPointerField methodsFor: 'recovered'!
length
    ^4
! !

"ASDBase.ic method 0x200afbd8; bytecode file offset 0x9ac4a4"
!AbtCOBOLPointerField methodsFor: 'recovered'!
initialize
    | recoveredValue0 |
    type := self.
    recoveredValue0 := super initialize.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c5724; bytecode file offset 0x9c22c8"
!AbtCOBOLPointerField methodsFor: 'recovered'!
pointerType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    pointerType := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c9134; bytecode file offset 0x9c5a00"
!AbtCOBOLPointerField methodsFor: 'recovered'!
valueInRecord: recoveredArg1 parentOffset: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) data.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := offset.
    recoveredValue4 := (recoveredValue2) + (recoveredValue3).
    recoveredValue5 := (recoveredValue1) abtPointerAt: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x20101e68; bytecode file offset 0x9fe728"
!AbtCOBOLPointerField methodsFor: 'recovered'!
put: recoveredArg1 intoRecord: recoveredArg2 parentOffset: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (recoveredValue0) data.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := offset.
    recoveredValue4 := (recoveredValue2) + (recoveredValue3).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) abtAsAddress.
    (recoveredValue1) uint32At: (recoveredValue4) put: (recoveredValue6).
    ^self
! !

