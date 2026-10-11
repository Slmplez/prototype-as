"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20047d8c; bytecode file offset 0x9451f8"
!ASDExperimentEnvironmentApiWrapper methodsFor: 'recovered'!
scripting
    | recoveredValue0 |
    recoveredValue0 := (self) propertyAt: (1610743808).
    ^recoveredValue0
! !

"ASDBase.ic method 0x20047fdc; bytecode file offset 0x9451f8"
!ASDExperimentEnvironmentApiWrapper methodsFor: 'recovered'!
processID
    | recoveredValue0 |
    recoveredValue0 := (self) propertyAt: (1610743810).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004ae08; bytecode file offset 0x947768"
!ASDExperimentEnvironmentApiWrapper methodsFor: 'recovered'!
toString
    | recoveredValue0 |
    recoveredValue0 := (self) propertyAt: (0).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200d0fc4; bytecode file offset 0x9ce734"
!ASDExperimentEnvironmentApiWrapper methodsFor: 'recovered'!
addRef
    | recoveredValue0 |
    recoveredValue0 := (self) invoke: (1610612737) withArguments: (#()) returnType: (true).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200d117c; bytecode file offset 0x9ce734"
!ASDExperimentEnvironmentApiWrapper methodsFor: 'recovered'!
oleRelease
    | recoveredValue0 |
    recoveredValue0 := (self) invoke: (1610612738) withArguments: (#()) returnType: (true).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200d16b8; bytecode file offset 0x9ce734"
!ASDExperimentEnvironmentApiWrapper methodsFor: 'recovered'!
getHashCode
    | recoveredValue0 |
    recoveredValue0 := (self) invoke: (1610743810) withArguments: (#()) returnType: (true).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200d1b40; bytecode file offset 0x9ce734"
!ASDExperimentEnvironmentApiWrapper methodsFor: 'recovered'!
getType
    | recoveredValue0 |
    recoveredValue0 := (self) invoke: (1610743811) withArguments: (#()) returnType: (true).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2011e734; bytecode file offset 0xa1b070"
!ASDExperimentEnvironmentApiWrapper methodsFor: 'recovered'!
scripting: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) propertyAt: (1610743808) put: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) signalEvent: ('scriptingChanged') with: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2011e764; bytecode file offset 0xa1b070"
!ASDExperimentEnvironmentApiWrapper methodsFor: 'recovered'!
core: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) propertyAt: (1610743809) put: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) signalEvent: ('coreChanged') with: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2011e77c; bytecode file offset 0xa1b070"
!ASDExperimentEnvironmentApiWrapper methodsFor: 'recovered'!
processID: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) propertyAt: (1610743810) put: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) signalEvent: ('processIDChanged') with: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2011ed68; bytecode file offset 0xa1b650"
!ASDExperimentEnvironmentApiWrapper methodsFor: 'recovered'!
toString: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) propertyAt: (0) put: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) signalEvent: ('toStringChanged') with: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2019a1dc; bytecode file offset 0xa97444"
!ASDExperimentEnvironmentApiWrapper methodsFor: 'recovered'!
equals: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (1).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) at: (1) put: (recoveredValue3).
    recoveredLocal1 := recoveredValue1.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (self) invoke: (1610743809) withArguments: (recoveredValue4) returnType: (true).
    ^recoveredValue5
! !

"ASDBase.ic method 0x2019a850; bytecode file offset 0xa97444"
!ASDExperimentEnvironmentApiWrapper methodsFor: 'recovered'!
getTypeInfoCount: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (1).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) at: (1) put: (recoveredValue3).
    recoveredLocal1 := recoveredValue1.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (self) invoke: (1610678272) withArguments: (recoveredValue4) returnType: (true).
    ^recoveredValue5
! !

"ASDBase.ic method 0x201fadcc; bytecode file offset 0xaf7758"
!ASDExperimentEnvironmentApiWrapper methodsFor: 'recovered'!
queryInterface: recoveredArg1 ppvObj: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (2).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) at: (1) put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) at: (2) put: (recoveredValue5).
    recoveredLocal1 := recoveredValue1.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (self) invoke: (1610612736) withArguments: (recoveredValue6) returnType: (true).
    ^recoveredValue7
! !

"ASDBase.ic method 0x20200008; bytecode file offset 0xafc938"
!ASDExperimentEnvironmentApiWrapper methodsFor: 'recovered'!
core
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) propertyAt: (1610743809).
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 |
    recoveredBlock7Value0 := ASDExperimentEnvironmentApiWrapperCore.
    recoveredBlock7Value1 := (recoveredBlock7Value0) new.
    recoveredBlock7Value2 := recoveredBlock7Arg1.
    recoveredBlock7Value3 := (recoveredBlock7Value1) automationObject: (recoveredBlock7Value2).
    ^recoveredBlock7Value3
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    recoveredValue2 := ExASDExperimentEnvironmentError.
    (recoveredValue2) signalWith: ('Error getting core object').
    ^nil
! !

"ASDBase.ic method 0x20244ed4; bytecode file offset 0xb41860"
!ASDExperimentEnvironmentApiWrapper methodsFor: 'recovered'!
getTypeInfo: recoveredArg1 lcid: recoveredArg2 pptinfo: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (3).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) at: (1) put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) at: (2) put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := recoveredArg3.
    (recoveredValue6) at: (3) put: (recoveredValue7).
    recoveredLocal1 := recoveredValue1.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := (self) invoke: (1610678273) withArguments: (recoveredValue8) returnType: (true).
    ^recoveredValue9
! !

"ASDBase.ic method 0x202debc0; bytecode file offset 0xbdb530"
!ASDExperimentEnvironmentApiWrapper methodsFor: 'recovered'!
getIDsOfNames: recoveredArg1 rgszNames: recoveredArg2 cNames: recoveredArg3 lcid: recoveredArg4 rgdispid: recoveredArg5
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (5).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) at: (1) put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) at: (2) put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := recoveredArg3.
    (recoveredValue6) at: (3) put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := recoveredArg4.
    (recoveredValue8) at: (4) put: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := recoveredArg5.
    (recoveredValue10) at: (5) put: (recoveredValue11).
    recoveredLocal1 := recoveredValue1.
    recoveredValue12 := recoveredLocal1.
    recoveredValue13 := (self) invoke: (1610678274) withArguments: (recoveredValue12) returnType: (true).
    ^recoveredValue13
! !

"ASDBase.ic method 0x20380054; bytecode file offset 0xc7c9e0"
!ASDExperimentEnvironmentApiWrapper methodsFor: 'recovered'!
invoke: recoveredArg1 riid: recoveredArg2 lcid: recoveredArg3 wFlags: recoveredArg4 pdispparams: recoveredArg5 pvarResult: recoveredArg6 pexcepinfo: recoveredArg7 puArgErr: recoveredArg8
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (8).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) at: (1) put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) at: (2) put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := recoveredArg3.
    (recoveredValue6) at: (3) put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := recoveredArg4.
    (recoveredValue8) at: (4) put: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := recoveredArg5.
    (recoveredValue10) at: (5) put: (recoveredValue11).
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := recoveredArg6.
    (recoveredValue12) at: (6) put: (recoveredValue13).
    recoveredValue14 := recoveredValue1.
    recoveredValue15 := recoveredArg7.
    (recoveredValue14) at: (7) put: (recoveredValue15).
    recoveredValue16 := recoveredValue1.
    recoveredValue17 := recoveredArg8.
    (recoveredValue16) at: (8) put: (recoveredValue17).
    recoveredLocal1 := recoveredValue1.
    recoveredValue18 := recoveredLocal1.
    recoveredValue19 := (self) invoke: (1610678275) withArguments: (recoveredValue18) returnType: (true).
    ^recoveredValue19
! !

