"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200088f4; bytecode file offset 0x908be4"
!ASDInterpolationDefaultOptions class methodsFor: 'recovered'!
allSystemDefinedInterpolationRoutineIdentifiers
    | recoveredValue0 |
    recoveredValue0 := (self) allSystemDefinedInterpolationRoutineLabels.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001fce8; bytecode file offset 0x92209c"
!ASDInterpolationDefaultOptions class methodsFor: 'recovered'!
allSystemDefinedInterpolationRoutineLabels
    ^#('Rounded' 'Linear')
! !

"ASDBase.ic method 0x200324b4; bytecode file offset 0x934580"
!ASDInterpolationDefaultOptions class methodsFor: 'recovered'!
systemDefaultInterpolation
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) allSystemDefinedInterpolationRoutineIdentifiers.
    recoveredValue1 := (recoveredValue0) last.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20081698; bytecode file offset 0x97e234"
!ASDInterpolationDefaultOptions class methodsFor: 'recovered'!
availableInterpolationSet: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := TGInterpolationRoutineSet.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) availableInterpolationSet: (recoveredValue1).
    ^recoveredValue2
! !

