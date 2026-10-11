"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2006c494; bytecode file offset 0x9692b0"
!FamosComponentRange methodsFor: 'recovered'!
transform
    | recoveredValue0 |
    recoveredValue0 := transform.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006cf70; bytecode file offset 0x969c04"
!FamosComponentRange methodsFor: 'recovered'!
m
    | recoveredValue0 |
    recoveredValue0 := m.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d94c; bytecode file offset 0x96a390"
!FamosComponentRange methodsFor: 'recovered'!
y0
    | recoveredValue0 |
    recoveredValue0 := y0.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006dc18; bytecode file offset 0x96a9dc"
!FamosComponentRange methodsFor: 'recovered'!
calibrated
    | recoveredValue0 |
    recoveredValue0 := calibrated.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006e464; bytecode file offset 0x96af48"
!FamosComponentRange methodsFor: 'recovered'!
unitLength
    | recoveredValue0 |
    recoveredValue0 := unitLength.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006e8e8; bytecode file offset 0x96b41c"
!FamosComponentRange methodsFor: 'recovered'!
unit
    | recoveredValue0 |
    recoveredValue0 := unit.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20075c2c; bytecode file offset 0x9757c8"
!FamosComponentRange methodsFor: 'recovered'!
isFamosRange
    ^true
! !

"ASDBase.ic method 0x200c2d34; bytecode file offset 0x9bfde0"
!FamosComponentRange methodsFor: 'recovered'!
transform: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    transform := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c3be8; bytecode file offset 0x9c058c"
!FamosComponentRange methodsFor: 'recovered'!
m: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    m := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c3ee4; bytecode file offset 0x9c0bf0"
!FamosComponentRange methodsFor: 'recovered'!
y0: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    y0 := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4500; bytecode file offset 0x9c11bc"
!FamosComponentRange methodsFor: 'recovered'!
calibrated: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    calibrated := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4b84; bytecode file offset 0x9c16b0"
!FamosComponentRange methodsFor: 'recovered'!
unitLength: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    unitLength := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5010; bytecode file offset 0x9c1afc"
!FamosComponentRange methodsFor: 'recovered'!
unit: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    unit := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d936c; bytecode file offset 0x9d5d08"
!FamosComponentRange methodsFor: 'recovered'!
addToSuper: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) parent: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (recoveredValue1) range: (self).
    ^true
! !

"ASDBase.ic method 0x200faf68; bytecode file offset 0x9f7824"
!FamosComponentRange methodsFor: 'recovered'!
putTransformIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) putSeparatorIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := transform.
    (self) putIn: (recoveredValue1) boolean: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200fafb8; bytecode file offset 0x9f78a4"
!FamosComponentRange methodsFor: 'recovered'!
putMIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) putSeparatorIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := m.
    (self) putIn: (recoveredValue1) number: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200fb018; bytecode file offset 0x9f78f4"
!FamosComponentRange methodsFor: 'recovered'!
putY0In: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) putSeparatorIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := y0.
    (self) putIn: (recoveredValue1) number: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x201d7d10; bytecode file offset 0xad45dc"
!FamosComponentRange methodsFor: 'recovered'!
initialize
    super initialize.
    transform := nil.
    m := nil.
    y0 := nil.
    calibrated := nil.
    unitLength := nil.
    unit := nil.
    ^self
! !

"ASDBase.ic method 0x2021a79c; bytecode file offset 0xb17144"
!FamosComponentRange methodsFor: 'recovered'!
putFieldsIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    (self) putTransformIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) putMIn: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (self) putY0In: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (self) putCalibratedIn: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    (self) putUnitLengthIn: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    (self) putUnitIn: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    (self) putEndIn: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x202a1854; bytecode file offset 0xb9e120"
!FamosComponentRange methodsFor: 'recovered'!
getFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := recoveredArg1.
    super getFrom: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) getBoolean: (recoveredValue1).
    transform := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (self) getNumber: (recoveredValue3).
    m := recoveredValue4.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (self) getNumber: (recoveredValue5).
    y0 := recoveredValue6.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (self) getBoolean: (recoveredValue7).
    calibrated := recoveredValue8.
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := (self) getInteger: (recoveredValue9).
    unitLength := recoveredValue10.
    recoveredValue11 := unitLength.
    recoveredValue12 := recoveredArg1.
    recoveredValue13 := (self) getString: (recoveredValue11) from: (recoveredValue12).
    unit := recoveredValue13.
    ^self
! !

