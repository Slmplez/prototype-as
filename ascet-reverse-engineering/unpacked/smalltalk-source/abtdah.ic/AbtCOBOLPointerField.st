"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtdah.ic method 0x20000070; bytecode file offset 0x100e0"
!AbtCOBOLPointerField methodsFor: 'recovered'!
setInitialValue: recoveredArg1
    ^self
! !

"abtdah.ic method 0x20000300; bytecode file offset 0x10494"
!AbtCOBOLPointerField methodsFor: 'recovered'!
valueClass
    | recoveredValue0 |
    recoveredValue0 := KeyedCollection.
    ^recoveredValue0
! !

"abtdah.ic method 0x20000be4; bytecode file offset 0x10c14"
!AbtCOBOLPointerField methodsFor: 'recovered'!
pointerType
    | recoveredValue0 |
    recoveredValue0 := pointerType.
    ^recoveredValue0
! !

"abtdah.ic method 0x20000cd8; bytecode file offset 0x10d08"
!AbtCOBOLPointerField methodsFor: 'recovered'!
length
    ^4
! !

"abtdah.ic method 0x200017c0; bytecode file offset 0x11800"
!AbtCOBOLPointerField methodsFor: 'recovered'!
initialize
    | recoveredValue0 |
    type := self.
    recoveredValue0 := super initialize.
    ^recoveredValue0
! !

"abtdah.ic method 0x20001b64; bytecode file offset 0x11b94"
!AbtCOBOLPointerField methodsFor: 'recovered'!
pointerType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    pointerType := recoveredValue0.
    ^self
! !

"abtdah.ic method 0x20001c4c; bytecode file offset 0x11c9c"
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

"abtdah.ic method 0x200023e8; bytecode file offset 0x1241c"
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

