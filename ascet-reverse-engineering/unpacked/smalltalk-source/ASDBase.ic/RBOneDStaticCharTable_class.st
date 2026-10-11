"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20013434; bytecode file offset 0x912098"
!RBOneDStaticCharTable class methodsFor: 'recovered'!
typeName
    | recoveredValue0 |
    recoveredValue0 := SCCharTable.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001a9a8; bytecode file offset 0x92209c"
!RBOneDStaticCharTable class methodsFor: 'recovered'!
defaultInterpolationSelector
    ^'interpolateLinear:'
! !

"ASDBase.ic method 0x20023b04; bytecode file offset 0x92209c"
!RBOneDStaticCharTable class methodsFor: 'recovered'!
defaultExtrapolationSelector
    ^'extrapolateConst:'
! !

"ASDBase.ic method 0x20035494; bytecode file offset 0x934580"
!RBOneDStaticCharTable class methodsFor: 'recovered'!
createDefault
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initializeASD.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20081088; bytecode file offset 0x97d93c"
!RBOneDStaticCharTable class methodsFor: 'recovered'!
emBehaviorId
    ^109
! !

"ASDBase.ic method 0x201d3e8c; bytecode file offset 0xad0760"
!RBOneDStaticCharTable class methodsFor: 'recovered'!
createForDistrib: recoveredArg1 withValues: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initialize.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) xDistribution: (recoveredValue3).
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue1) values: (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := recoveredValue6.
    recoveredValue8 := (self) defaultInterpolationSelector.
    (recoveredValue7) interpolation: (recoveredValue8).
    recoveredValue9 := (self) defaultExtrapolationSelector.
    (recoveredValue6) extrapolation: (recoveredValue9).
    recoveredValue10 := recoveredLocal1.
    ^recoveredValue10
! !

