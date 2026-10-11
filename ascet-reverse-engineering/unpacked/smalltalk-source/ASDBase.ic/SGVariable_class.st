"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20016364; bytecode file offset 0x92209c"
!SGVariable class methodsFor: 'recovered'!
elementKindCTContinuous
    ^'CTContinuous'
! !

"ASDBase.ic method 0x20016610; bytecode file offset 0x92209c"
!SGVariable class methodsFor: 'recovered'!
elementKindInterrunnable
    ^'Interrunnable'
! !

"ASDBase.ic method 0x20016e14; bytecode file offset 0x92209c"
!SGVariable class methodsFor: 'recovered'!
elementKindVariable
    ^'Variable'
! !

"ASDBase.ic method 0x20017804; bytecode file offset 0x92209c"
!SGVariable class methodsFor: 'recovered'!
kindImportedString
    ^'imported'
! !

"ASDBase.ic method 0x20017a38; bytecode file offset 0x92209c"
!SGVariable class methodsFor: 'recovered'!
elementKindNone
    ^'None'
! !

"ASDBase.ic method 0x20018944; bytecode file offset 0x92209c"
!SGVariable class methodsFor: 'recovered'!
elementKindSystemConstant
    ^'SystemConstant'
! !

"ASDBase.ic method 0x2001a0a8; bytecode file offset 0x92209c"
!SGVariable class methodsFor: 'recovered'!
elementKindCTDependentParameter
    ^'CTDependentParameter'
! !

"ASDBase.ic method 0x2001a738; bytecode file offset 0x92209c"
!SGVariable class methodsFor: 'recovered'!
elementKindCTDiscrete
    ^'CTDiscrete'
! !

"ASDBase.ic method 0x2001b800; bytecode file offset 0x92209c"
!SGVariable class methodsFor: 'recovered'!
kindLocalString
    ^'local'
! !

"ASDBase.ic method 0x2001c304; bytecode file offset 0x92209c"
!SGVariable class methodsFor: 'recovered'!
elementKindCTStepLocal
    ^'CTStepLocal'
! !

"ASDBase.ic method 0x2001c8f8; bytecode file offset 0x92209c"
!SGVariable class methodsFor: 'recovered'!
kindExportedString
    ^'exported'
! !

"ASDBase.ic method 0x2001e26c; bytecode file offset 0x92209c"
!SGVariable class methodsFor: 'recovered'!
elementKindParameter
    ^'Parameter'
! !

"ASDBase.ic method 0x20020e1c; bytecode file offset 0x92209c"
!SGVariable class methodsFor: 'recovered'!
elementKindConstant
    ^'Constant'
! !

"ASDBase.ic method 0x20025640; bytecode file offset 0x92209c"
!SGVariable class methodsFor: 'recovered'!
elementKindMessage
    ^'Message'
! !

"ASDBase.ic method 0x20026758; bytecode file offset 0x923928"
!SGVariable class methodsFor: 'recovered'!
elementKindOutput
    ^'Output'
! !

"ASDBase.ic method 0x20027004; bytecode file offset 0x923928"
!SGVariable class methodsFor: 'recovered'!
elementKindInput
    ^'Input'
! !

"ASDBase.ic method 0x2005cde0; bytecode file offset 0x9599ac"
!SGVariable class methodsFor: 'recovered'!
createWrapAroundInteger
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGWrapAroundInteger.
    recoveredValue1 := (recoveredValue0) createDefault.
    recoveredValue2 := (self) createForType: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005cebc; bytecode file offset 0x9599ac"
!SGVariable class methodsFor: 'recovered'!
createUnsignedDiscrete
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGUnsignedInteger.
    recoveredValue1 := (recoveredValue0) createDefault.
    recoveredValue2 := (self) createForType: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005ced0; bytecode file offset 0x9599ac"
!SGVariable class methodsFor: 'recovered'!
createBoolean
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGModelDataType.
    recoveredValue1 := (recoveredValue0) createBoolean.
    recoveredValue2 := (self) createForType: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005d010; bytecode file offset 0x9599ac"
!SGVariable class methodsFor: 'recovered'!
createDiscrete
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGSignedInteger.
    recoveredValue1 := (recoveredValue0) createDefault.
    recoveredValue2 := (self) createForType: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005d074; bytecode file offset 0x9599ac"
!SGVariable class methodsFor: 'recovered'!
createLimitedInteger
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGLimitedInteger.
    recoveredValue1 := (recoveredValue0) createDefault.
    recoveredValue2 := (self) createForType: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005d088; bytecode file offset 0x9599ac"
!SGVariable class methodsFor: 'recovered'!
createContinuous
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGReal.
    recoveredValue1 := (recoveredValue0) createDefault.
    recoveredValue2 := (self) createForType: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200a94b4; bytecode file offset 0x9a5d78"
!SGVariable class methodsFor: 'recovered'!
createTwoDCharTableParam: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) createTwoDCharTableParam: (recoveredValue0) fixed: (false) group: (false).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200a94c0; bytecode file offset 0x9a5d78"
!SGVariable class methodsFor: 'recovered'!
createOneDCharTableParam: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) createOneDCharTableParam: (recoveredValue0) fixed: (false) group: (false).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200fe580; bytecode file offset 0x9fae44"
!SGVariable class methodsFor: 'recovered'!
createForType: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) label.
    recoveredValue2 := (self) create: (recoveredValue1).
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) sgClass: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    (recoveredValue5) setCalibrationRead.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20112490; bytecode file offset 0xa0ed58"
!SGVariable class methodsFor: 'recovered'!
createScalar
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := SGModelDataType.
    recoveredValue1 := (recoveredValue0) createScalar.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) create: ('scalar').
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredLocal1.
    (recoveredValue3) sgClass: (recoveredValue4).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20133488; bytecode file offset 0xa2fddc"
!SGVariable class methodsFor: 'recovered'!
createVectorParam: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) createVector.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) setParameter: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) setCalibrationReadWriteDefaultForParameter: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := recoveredArg1.
    (recoveredValue5) updateVolatile: (recoveredValue6).
    ^recoveredValue0
! !

"ASDBase.ic method 0x201334a0; bytecode file offset 0xa2fddc"
!SGVariable class methodsFor: 'recovered'!
createContinuousParam: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) createContinuous.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) setParameter: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) setCalibrationReadWriteDefaultForParameter: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := recoveredArg1.
    (recoveredValue5) updateVolatile: (recoveredValue6).
    ^recoveredValue0
! !

"ASDBase.ic method 0x201334b8; bytecode file offset 0xa2fddc"
!SGVariable class methodsFor: 'recovered'!
createLimitedIntegerParam: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) createLimitedInteger.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) setParameter: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) setCalibrationReadWriteDefaultForParameter: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := recoveredArg1.
    (recoveredValue5) updateVolatile: (recoveredValue6).
    ^recoveredValue0
! !

"ASDBase.ic method 0x201334d0; bytecode file offset 0xa2fddc"
!SGVariable class methodsFor: 'recovered'!
createUnsignedDiscreteParam: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) createUnsignedDiscrete.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) setParameter: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) setCalibrationReadWriteDefaultForParameter: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := recoveredArg1.
    (recoveredValue5) updateVolatile: (recoveredValue6).
    ^recoveredValue0
! !

"ASDBase.ic method 0x201334e8; bytecode file offset 0xa2fddc"
!SGVariable class methodsFor: 'recovered'!
createWrapAroundIntegerParam: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) createWrapAroundInteger.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) setParameter: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) setCalibrationReadWriteDefaultForParameter: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := recoveredArg1.
    (recoveredValue5) updateVolatile: (recoveredValue6).
    ^recoveredValue0
! !

"ASDBase.ic method 0x20133500; bytecode file offset 0xa2fddc"
!SGVariable class methodsFor: 'recovered'!
createLogicParam: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) createBoolean.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) setParameter: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) setCalibrationReadWriteDefaultForParameter: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := recoveredArg1.
    (recoveredValue5) updateVolatile: (recoveredValue6).
    ^recoveredValue0
! !

"ASDBase.ic method 0x20133518; bytecode file offset 0xa2fddc"
!SGVariable class methodsFor: 'recovered'!
createDiscreteParam: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) createDiscrete.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) setParameter: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) setCalibrationReadWriteDefaultForParameter: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := recoveredArg1.
    (recoveredValue5) updateVolatile: (recoveredValue6).
    ^recoveredValue0
! !

"ASDBase.ic method 0x201476a8; bytecode file offset 0xa43f6c"
!SGVariable class methodsFor: 'recovered'!
createDiscreteParam: recoveredArg1 isSigned: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (self) createDiscreteIsSigned: (recoveredValue0).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) setParameter: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) setCalibrationReadWriteDefaultForParameter: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := recoveredArg1.
    (recoveredValue6) updateVolatile: (recoveredValue7).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20149608; bytecode file offset 0xa45f14"
!SGVariable class methodsFor: 'recovered'!
createMatrix
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := SGModelDataType.
    recoveredValue1 := (recoveredValue0) createMatrix.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) create: ('matrix').
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) setCalibrationRead.
    recoveredValue4 := recoveredValue2.
    recoveredValue5 := recoveredLocal1.
    (recoveredValue4) sgClass: (recoveredValue5).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20149628; bytecode file offset 0xa45f14"
!SGVariable class methodsFor: 'recovered'!
createDistribution
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := SGModelDataType.
    recoveredValue1 := (recoveredValue0) createDistribution.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) create: ('distrib').
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) setCalibrationRead.
    recoveredValue4 := recoveredValue2.
    recoveredValue5 := recoveredLocal1.
    (recoveredValue4) sgClass: (recoveredValue5).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20149648; bytecode file offset 0xa45f14"
!SGVariable class methodsFor: 'recovered'!
createVector
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := SGModelDataType.
    recoveredValue1 := (recoveredValue0) createVector.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) create: ('array').
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) setCalibrationRead.
    recoveredValue4 := recoveredValue2.
    recoveredValue5 := recoveredLocal1.
    (recoveredValue4) sgClass: (recoveredValue5).
    ^recoveredValue2
! !

"ASDBase.ic method 0x201496ac; bytecode file offset 0xa45f78"
!SGVariable class methodsFor: 'recovered'!
createResource
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := SGModelDataType.
    recoveredValue1 := (recoveredValue0) createResource.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (recoveredValue2) label.
    recoveredValue4 := (self) create: (recoveredValue3).
    recoveredValue5 := recoveredValue4.
    recoveredValue6 := recoveredLocal1.
    (recoveredValue5) sgClass: (recoveredValue6).
    recoveredValue7 := recoveredValue4.
    (recoveredValue7) setToImported.
    ^recoveredValue4
! !

"ASDBase.ic method 0x2015eaec; bytecode file offset 0xa5b3bc"
!SGVariable class methodsFor: 'recovered'!
createInterrunnableVariable
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) create: ('interrunnable').
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := SGReal.
    recoveredValue3 := (recoveredValue2) createDefault.
    (recoveredValue1) sgClass: (recoveredValue3).
    recoveredValue4 := recoveredValue0.
    (recoveredValue4) setParameter: (false).
    recoveredValue5 := recoveredValue0.
    (recoveredValue5) setInterrunnable.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2016c1fc; bytecode file offset 0xa68ac0"
!SGVariable class methodsFor: 'recovered'!
createDiscreteIsSigned: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := SGSignedInteger.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDefault.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := SGUnsignedInteger.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDefault.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) createForType: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20188ce0; bytecode file offset 0xa8559c"
!SGVariable class methodsFor: 'recovered'!
mutateObjects: recoveredArg1 fromPlatform: recoveredArg2 named: recoveredArg3 withDefinition: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := recoveredArg4.
    recoveredBlock7Value2 := (self) fromArray: (recoveredBlock7Value0) with: (recoveredBlock7Value1).
    recoveredBlock7Value2
].
    recoveredValue2 := (recoveredValue0) collect: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x201b5de4; bytecode file offset 0xab26ac"
!SGVariable class methodsFor: 'recovered'!
createModeGroupParam: recoveredArg1 modeGroupType: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 'mode_group'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) create: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) initWithSgClass: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) setParameter: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) updateVolatile: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201deb88; bytecode file offset 0xadb45c"
!SGVariable class methodsFor: 'recovered'!
createDistributionParam: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := SGModelDataType.
    recoveredValue1 := (recoveredValue0) createDistribution.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) create: ('distrib').
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredLocal1.
    (recoveredValue3) sgClass: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := recoveredArg1.
    (recoveredValue5) setParameter: (recoveredValue6).
    recoveredValue7 := recoveredValue2.
    recoveredValue8 := recoveredArg1.
    (recoveredValue7) setCalibrationReadWriteDefaultForParameter: (recoveredValue8).
    recoveredValue9 := recoveredValue2.
    recoveredValue10 := recoveredArg1.
    (recoveredValue9) updateVolatile: (recoveredValue10).
    ^recoveredValue2
! !

"ASDBase.ic method 0x201eb8a8; bytecode file offset 0xae8180"
!SGVariable class methodsFor: 'recovered'!
createSmVar
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := SGReservedNames.
    recoveredValue1 := (recoveredValue0) smName.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (self) create: (recoveredValue2).
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := SGEnumeration.
    recoveredValue6 := (recoveredValue5) createDefault.
    (recoveredValue4) sgClass: (recoveredValue6).
    recoveredValue7 := recoveredValue3.
    (recoveredValue7) setVariable: (true).
    recoveredValue8 := recoveredValue3.
    (recoveredValue8) setCalibrationRead.
    recoveredValue9 := recoveredValue3.
    recoveredValue10 := recoveredLocal1.
    (recoveredValue9) label: (recoveredValue10).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2020a240; bytecode file offset 0xb06b1c"
!SGVariable class methodsFor: 'recovered'!
createDeltaT
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := SGReservedNames.
    recoveredValue1 := (recoveredValue0) dtName.
    recoveredValue2 := (self) create: (recoveredValue1).
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := SGDeltaT.
    recoveredValue5 := (recoveredValue4) createDefault.
    (recoveredValue3) sgClass: (recoveredValue5).
    recoveredValue6 := recoveredValue2.
    (recoveredValue6) setToImported.
    recoveredValue7 := recoveredValue2.
    (recoveredValue7) setCalibrationRead.
    recoveredValue8 := recoveredValue2.
    (recoveredValue8) setVariable: (true).
    recoveredValue9 := recoveredValue2.
    recoveredValue10 := SGReservedNames.
    recoveredValue11 := (recoveredValue10) dtName.
    (recoveredValue9) label: (recoveredValue11).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2021d14c; bytecode file offset 0xb19a1c"
!SGVariable class methodsFor: 'recovered'!
createEnumerationParam: recoveredArg1 enumType: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 'enum'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) create: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) sgClass: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) setCalibrationRead.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) setParameter: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) setCalibrationReadWriteDefaultForParameter: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) updateVolatile: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2022479c; bytecode file offset 0xb2107c"
!SGVariable class methodsFor: 'recovered'!
createMessage
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := (self) create: ('message').
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := SGReal.
    recoveredValue3 := (recoveredValue2) createDefault.
    (recoveredValue1) sgClass: (recoveredValue3).
    recoveredValue4 := recoveredValue0.
    (recoveredValue4) setElementKindMessage.
    recoveredValue5 := recoveredValue0.
    (recoveredValue5) setCalibrationRead.
    recoveredValue6 := recoveredValue0.
    (recoveredValue6) clearCalibrationWrite.
    recoveredValue7 := recoveredValue0.
    (recoveredValue7) setSend: (true).
    recoveredValue8 := recoveredValue0.
    (recoveredValue8) setReceive: (true).
    recoveredValue9 := recoveredValue0.
    (recoveredValue9) setToImported.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2027c64c; bytecode file offset 0xb78f50"
!SGVariable class methodsFor: 'recovered'!
createTwoDCharTableParam: recoveredArg1 fixed: recoveredArg2 group: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := SGModelDataType.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) createTwoDCharTableGroup.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := SGModelDataType.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) createTwoDCharTable.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) fixed: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := 'Two D'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) create: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) sgClass: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) setParameter: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) updateVolatile: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2027c678; bytecode file offset 0xb78f50"
!SGVariable class methodsFor: 'recovered'!
createOneDCharTableParam: recoveredArg1 fixed: recoveredArg2 group: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := SGModelDataType.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) createOneDCharTableGroup.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := SGModelDataType.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) createOneDCharTable.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) fixed: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := 'One D'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) create: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) sgClass: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) setParameter: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) updateVolatile: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2032a154; bytecode file offset 0xc26a20"
!SGVariable class methodsFor: 'recovered'!
fromArray: recoveredArg1 with: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) allInstVarNames.
    recoveredLocal3 := recoveredValue0.
    recoveredValue1 := (self) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := [:recoveredBlock16Arg1 :recoveredBlock16Arg2 | 
    | recoveredBlock16Stack0 recoveredBlock16Stack1 recoveredBlock16Stack2 recoveredBlock16Stack3 recoveredBlock16Stack4 recoveredBlock16Stack5 recoveredBlock16PC recoveredBlock16Step recoveredBlock16Done recoveredBlock16Result |
    recoveredBlock16Stack0 := self.
    recoveredBlock16PC := 22.
    recoveredBlock16Done := false.
    [recoveredBlock16Done not] whileTrue: [
        recoveredBlock16Step := recoveredBlock16PC.
        recoveredBlock16Step = 22 ifTrue: [
            recoveredBlock16Stack1 := nil.
            recoveredBlock16PC := 23.
        ].
        recoveredBlock16Step = 23 ifTrue: [
            recoveredBlock16Stack2 := recoveredLocal3.
            recoveredBlock16PC := 26.
        ].
        recoveredBlock16Step = 26 ifTrue: [
            recoveredBlock16Stack3 := recoveredBlock16Arg1.
            recoveredBlock16PC := 27.
        ].
        recoveredBlock16Step = 27 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) indexOf: (recoveredBlock16Stack3).
            recoveredBlock16PC := 28.
        ].
        recoveredBlock16Step = 28 ifTrue: [
            recoveredBlock16Stack3 := recoveredBlock16Stack2.
            recoveredBlock16PC := 29.
        ].
        recoveredBlock16Step = 29 ifTrue: [
            recoveredLocal1 := recoveredBlock16Stack3.
            recoveredBlock16PC := 32.
        ].
        recoveredBlock16Step = 32 ifTrue: [
            recoveredBlock16Stack3 := 0.
            recoveredBlock16PC := 34.
        ].
        recoveredBlock16Step = 34 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) = (recoveredBlock16Stack3).
            recoveredBlock16PC := 35.
        ].
        recoveredBlock16Step = 35 ifTrue: [
            (recoveredBlock16Stack2) ifTrue: [recoveredBlock16PC := 52] ifFalse: [recoveredBlock16PC := 38].
        ].
        recoveredBlock16Step = 38 ifTrue: [
            recoveredBlock16PC := 39.
        ].
        recoveredBlock16Step = 39 ifTrue: [
            recoveredBlock16Stack1 := recoveredLocal2.
            recoveredBlock16PC := 42.
        ].
        recoveredBlock16Step = 42 ifTrue: [
            recoveredBlock16Stack2 := recoveredLocal1.
            recoveredBlock16PC := 45.
        ].
        recoveredBlock16Step = 45 ifTrue: [
            recoveredBlock16Stack3 := recoveredArg1.
            recoveredBlock16PC := 48.
        ].
        recoveredBlock16Step = 48 ifTrue: [
            recoveredBlock16Stack4 := recoveredBlock16Arg2.
            recoveredBlock16PC := 49.
        ].
        recoveredBlock16Step = 49 ifTrue: [
            recoveredBlock16Stack3 := (recoveredBlock16Stack3) at: (recoveredBlock16Stack4).
            recoveredBlock16PC := 50.
        ].
        recoveredBlock16Step = 50 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) instVarAt: (recoveredBlock16Stack2) put: (recoveredBlock16Stack3).
            recoveredBlock16PC := 52.
        ].
        recoveredBlock16Step = 52 ifTrue: [
            recoveredBlock16Result := recoveredBlock16Stack1.
            recoveredBlock16Done := true.
        ].
    ].
    recoveredBlock16Result
].
    (recoveredValue2) keysAndValuesDo: (recoveredValue3).
    recoveredValue4 := recoveredLocal2.
    ^recoveredValue4
! !

