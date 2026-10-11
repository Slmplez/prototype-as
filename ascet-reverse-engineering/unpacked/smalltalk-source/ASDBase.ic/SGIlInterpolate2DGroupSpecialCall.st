"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001c208; bytecode file offset 0x92209c"
!SGIlInterpolate2DGroupSpecialCall methodsFor: 'recovered'!
label
    ^'interpolateTwoDGroup'
! !

"ASDBase.ic method 0x20054f9c; bytecode file offset 0x952a9c"
!SGIlInterpolate2DGroupSpecialCall methodsFor: 'recovered'!
ileAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) interpolate2DGroupSpecialCall: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20100698; bytecode file offset 0x9fcf74"
!SGIlInterpolate2DGroupSpecialCall methodsFor: 'recovered'!
expandSpecialCall: recoveredArg1 on: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) receiver.
    recoveredValue3 := (recoveredValue2) type.
    recoveredValue4 := (self) hasCustomSearchResult.
    (recoveredValue0) interpolGroupServices: (recoveredValue1) type: (recoveredValue3) hasCustomSearchResult: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20242da8; bytecode file offset 0xb3f684"
!SGIlInterpolate2DGroupSpecialCall methodsFor: 'recovered'!
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
    recoveredValue15 := (recoveredValue2) with: ('INTERPOLGROUP2') with: (recoveredValue6) with: (recoveredValue10) with: (recoveredValue14).
    ^recoveredValue15
! !

