"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200139ec; bytecode file offset 0x912098"
!RBTwoDStaticCharTable class methodsFor: 'recovered'!
typeName
    | recoveredValue0 |
    recoveredValue0 := SCCharMap.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20016b2c; bytecode file offset 0x92209c"
!RBTwoDStaticCharTable class methodsFor: 'recovered'!
defaultExtrapolationSelector
    ^'extrapolateConstX1:x2:'
! !

"ASDBase.ic method 0x20017138; bytecode file offset 0x92209c"
!RBTwoDStaticCharTable class methodsFor: 'recovered'!
defaultInterpolationSelector
    ^'interpolateLinearX1:x2:'
! !

"ASDBase.ic method 0x20081010; bytecode file offset 0x97d8c4"
!RBTwoDStaticCharTable class methodsFor: 'recovered'!
emBehaviorId
    ^106
! !

"ASDBase.ic method 0x20216204; bytecode file offset 0xb12adc"
!RBTwoDStaticCharTable class methodsFor: 'recovered'!
createForxDistrib: recoveredArg1 yDistrib: recoveredArg2 withValues: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initialize.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) xDistribution: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) yDistribution: (recoveredValue5).
    recoveredValue6 := recoveredArg3.
    recoveredValue7 := (recoveredValue1) values: (recoveredValue6).
    recoveredLocal1 := recoveredValue7.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := recoveredValue8.
    recoveredValue10 := (self) defaultInterpolationSelector.
    (recoveredValue9) interpolation: (recoveredValue10).
    recoveredValue11 := (self) defaultExtrapolationSelector.
    (recoveredValue8) extrapolation: (recoveredValue11).
    recoveredValue12 := recoveredLocal1.
    ^recoveredValue12
! !

