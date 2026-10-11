"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20016874; bytecode file offset 0x92209c"
!SGIlInterpolate2DSpecialCall methodsFor: 'recovered'!
label
    ^'interpolateTwoD'
! !

"ASDBase.ic method 0x20055a94; bytecode file offset 0x952a9c"
!SGIlInterpolate2DSpecialCall methodsFor: 'recovered'!
ileAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) interpolate2DSpecialCall: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200c8368; bytecode file offset 0x9c4d2c"
!SGIlInterpolate2DSpecialCall methodsFor: 'recovered'!
expandSpecialCall: recoveredArg1 on: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) receiver.
    recoveredValue3 := (recoveredValue2) type.
    (recoveredValue0) interpolServices: (recoveredValue1) type: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20242d78; bytecode file offset 0xb3f684"
!SGIlInterpolate2DSpecialCall methodsFor: 'recovered'!
serviceFullKey
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := (self) receiver.
    recoveredValue1 := (recoveredValue0) type.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := Array.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (recoveredValue3) xDistribution.
    recoveredValue5 := (recoveredValue4) getImplType.
    recoveredValue6 := (recoveredValue5) asShortCType.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (recoveredValue7) yDistribution.
    recoveredValue9 := (recoveredValue8) getImplType.
    recoveredValue10 := (recoveredValue9) asShortCType.
    recoveredValue11 := recoveredLocal1.
    recoveredValue12 := (recoveredValue11) values.
    recoveredValue13 := (recoveredValue12) getImplType.
    recoveredValue14 := (recoveredValue13) asShortCType.
    recoveredValue15 := (recoveredValue2) with: ('INTERPOL2') with: (recoveredValue6) with: (recoveredValue10) with: (recoveredValue14).
    ^recoveredValue15
! !

