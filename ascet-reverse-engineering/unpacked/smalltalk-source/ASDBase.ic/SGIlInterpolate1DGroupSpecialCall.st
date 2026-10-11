"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20025e28; bytecode file offset 0x923928"
!SGIlInterpolate1DGroupSpecialCall methodsFor: 'recovered'!
label
    ^'interpolateOneDGroup'
! !

"ASDBase.ic method 0x20054f0c; bytecode file offset 0x952a9c"
!SGIlInterpolate1DGroupSpecialCall methodsFor: 'recovered'!
ileAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) interpolate1DGroupSpecialCall: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x201006b0; bytecode file offset 0x9fcf74"
!SGIlInterpolate1DGroupSpecialCall methodsFor: 'recovered'!
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

"ASDBase.ic method 0x201ec484; bytecode file offset 0xae8d5c"
!SGIlInterpolate1DGroupSpecialCall methodsFor: 'recovered'!
serviceFullKey
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := (self) receiver.
    recoveredValue1 := (recoveredValue0) type.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := Array.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (recoveredValue3) xDistribution.
    recoveredValue5 := (recoveredValue4) getImplType.
    recoveredValue6 := (recoveredValue5) asShortCType.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (recoveredValue7) values.
    recoveredValue9 := (recoveredValue8) getImplType.
    recoveredValue10 := (recoveredValue9) asShortCType.
    recoveredValue11 := (recoveredValue2) with: ('INTERPOLGROUP1') with: (recoveredValue6) with: (recoveredValue10).
    ^recoveredValue11
! !

