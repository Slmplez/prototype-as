"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20017960; bytecode file offset 0x92209c"
!AbtWrapperExecutableFeature methodsFor: 'recovered'!
basicEvent
    ^'abtWhenIn:perform:'
! !

"ASDBase.ic method 0x20081e1c; bytecode file offset 0x97e6e0"
!AbtWrapperExecutableFeature methodsFor: 'recovered'!
getValueIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := feature.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) getValueIn: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008448c; bytecode file offset 0x981ca4"
!AbtWrapperExecutableFeature methodsFor: 'recovered'!
name: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) featureName: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200ac7c4; bytecode file offset 0x9a9094"
!AbtWrapperExecutableFeature methodsFor: 'recovered'!
abtWhenIn: recoveredArg1 perform: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := feature.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) abtWhenIn: (recoveredValue1) perform: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x201131e4; bytecode file offset 0xa0faa4"
!AbtWrapperExecutableFeature methodsFor: 'recovered'!
performIn: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := feature.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) performIn: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (self) featureName.
    (recoveredValue3) signalActionEvents: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x20138f3c; bytecode file offset 0xa35810"
!AbtWrapperExecutableFeature methodsFor: 'recovered'!
performIn: recoveredArg1 arguments: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := feature.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) performIn: (recoveredValue1) arguments: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (self) featureName.
    (recoveredValue4) signalActionEvents: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x20138f50; bytecode file offset 0xa35810"
!AbtWrapperExecutableFeature methodsFor: 'recovered'!
setValueIn: recoveredArg1 to: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := feature.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) setValueIn: (recoveredValue1) to: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (self) featureName.
    (recoveredValue4) signalAttributeEvents: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

