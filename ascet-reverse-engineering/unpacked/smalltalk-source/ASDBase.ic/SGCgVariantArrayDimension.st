"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000f45c; bytecode file offset 0x90bd10"
!SGCgVariantArrayDimension methodsFor: 'recovered'!
isCgTypeAssignmentCompatibleTo: recoveredArg1 generator: recoveredArg2
    ^true
! !

"ASDBase.ic method 0x2003a4c0; bytecode file offset 0x938608"
!SGCgVariantArrayDimension methodsFor: 'recovered'!
ileMaxSize: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) buildMaxSizeSpecialCall: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006a5cc; bytecode file offset 0x967a18"
!SGCgVariantArrayDimension methodsFor: 'recovered'!
sysConstDecl
    | recoveredValue0 |
    recoveredValue0 := sysConstDecl.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20076f1c; bytecode file offset 0x9757c8"
!SGCgVariantArrayDimension methodsFor: 'recovered'!
isCgVariantDimension
    ^true
! !

"ASDBase.ic method 0x2007b50c; bytecode file offset 0x97c330"
!SGCgVariantArrayDimension methodsFor: 'recovered'!
isCgFixedDimension
    ^false
! !

"ASDBase.ic method 0x200c1cd4; bytecode file offset 0x9beac8"
!SGCgVariantArrayDimension methodsFor: 'recovered'!
sysConstDecl: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    sysConstDecl := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200eab74; bytecode file offset 0x9e743c"
!SGCgVariantArrayDimension methodsFor: 'recovered'!
ileMaxSizeUseConstant: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) ileBuilder.
    recoveredValue1 := (self) sysConstDecl.
    recoveredValue2 := (recoveredValue1) asMdlIdentifier.
    recoveredValue3 := (self) sysConstDecl.
    recoveredValue4 := (recoveredValue3) mdlClass.
    recoveredValue5 := (recoveredValue0) createModelIdentifier: (recoveredValue2) type: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x2011e86c; bytecode file offset 0xa1b148"
!SGCgVariantArrayDimension methodsFor: 'recovered'!
isCgTypeIdentical: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) isCgVariantDimension.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) sysConstDecl.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) sysConstDecl.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2013fc94; bytecode file offset 0xa3c570"
!SGCgVariantArrayDimension methodsFor: 'recovered'!
sizeLabel
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) sysConstDecl.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isByteArray.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := '?'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) sysConstDecl.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) errLabel.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2013fcac; bytecode file offset 0xa3c570"
!SGCgVariantArrayDimension methodsFor: 'recovered'!
sysConstLabel
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) sysConstDecl.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isByteArray.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := '?'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) sysConstDecl.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) errLabel.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20141acc; bytecode file offset 0xa3e394"
!SGCgVariantArrayDimension methodsFor: 'recovered'!
asCgFixedDimension: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := SGCgTypeFactory.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) specialCallName.
    recoveredValue3 := (recoveredValue0) arrayDimension: (recoveredValue1) variant: (nil) specialCallName: (recoveredValue2).
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := (self) maxSize.
    (recoveredValue4) elementMaxSize: (recoveredValue5).
    ^recoveredValue3
! !

"ASDBase.ic method 0x201b5e8c; bytecode file offset 0xab274c"
!SGCgVariantArrayDimension methodsFor: 'recovered'!
isCgTypeCompatibleTo: recoveredArg1 generator: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) resolveSystemConstantsAtRunTime.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgVariantDimension.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) sysConstDecl.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) sysConstDecl.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2023e528; bytecode file offset 0xb3adfc"
!SGCgVariantArrayDimension methodsFor: 'recovered'!
convertCgDimensionWith: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgVariableDimension.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgTypeIdentical: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := SGCgTypeFactory.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := OrderedCollection.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack4 := (recoveredStack4) dimensions.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack3) addAll: (recoveredStack4).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) mixedArrayDimension: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203ac36c; bytecode file offset 0xca8c4c"
!SGCgVariantArrayDimension methodsFor: 'recovered'!
maxSizeInterval
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) resolveSystemConstantsAtRunTime.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) sysConstDecl.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClass.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) getImplInterval.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) suppressCheckForUpperVariantBound.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) sysConstDecl.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClass.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) getImplInterval.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) asInterval.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) max: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := [:recoveredBlock37Arg1 :recoveredBlock37Arg2 :recoveredBlock37Arg3 | 
    | recoveredBlock37Stack0 recoveredBlock37Stack1 recoveredBlock37Stack2 recoveredBlock37Stack3 recoveredBlock37PC recoveredBlock37Step recoveredBlock37Done recoveredBlock37Result |
    recoveredBlock37Stack0 := self.
    recoveredBlock37PC := 44.
    recoveredBlock37Done := false.
    [recoveredBlock37Done not] whileTrue: [
        recoveredBlock37Step := recoveredBlock37PC.
        recoveredBlock37Step = 44 ifTrue: [
            recoveredBlock37Stack1 := recoveredBlock37Arg2.
            recoveredBlock37PC := 45.
        ].
        recoveredBlock37Step = 45 ifTrue: [
            (recoveredBlock37Stack1) ifTrue: [recoveredBlock37PC := 48] ifFalse: [recoveredBlock37PC := 52].
        ].
        recoveredBlock37Step = 48 ifTrue: [
            recoveredBlock37Stack1 := recoveredBlock37Arg1.
            recoveredBlock37PC := 49.
        ].
        recoveredBlock37Step = 49 ifTrue: [
            recoveredLocal2 := recoveredBlock37Stack1.
            recoveredBlock37PC := 52.
        ].
        recoveredBlock37Step = 52 ifTrue: [
            recoveredBlock37Stack1 := nil.
            recoveredBlock37PC := 53.
        ].
        recoveredBlock37Step = 53 ifTrue: [
            recoveredBlock37Stack2 := recoveredBlock37Arg3.
            recoveredBlock37PC := 54.
        ].
        recoveredBlock37Step = 54 ifTrue: [
            (recoveredBlock37Stack2) ifTrue: [recoveredBlock37PC := 58] ifFalse: [recoveredBlock37PC := 64].
        ].
        recoveredBlock37Step = 58 ifTrue: [
            recoveredBlock37PC := 59.
        ].
        recoveredBlock37Step = 59 ifTrue: [
            recoveredBlock37Stack1 := recoveredBlock37Arg1.
            recoveredBlock37PC := 60.
        ].
        recoveredBlock37Step = 60 ifTrue: [
            recoveredBlock37Stack2 := recoveredBlock37Stack1.
            recoveredBlock37PC := 61.
        ].
        recoveredBlock37Step = 61 ifTrue: [
            recoveredLocal1 := recoveredBlock37Stack2.
            recoveredBlock37PC := 64.
        ].
        recoveredBlock37Step = 64 ifTrue: [
            recoveredBlock37Result := recoveredBlock37Stack1.
            recoveredBlock37Done := true.
        ].
    ].
    recoveredBlock37Result
].
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0) maxSizeValuesDo: (recoveredStack1).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := RBInterval.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) left: (recoveredStack1) right: (recoveredStack2).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2054724c; bytecode file offset 0xe43b58"
!SGCgVariantArrayDimension methodsFor: 'recovered'!
maxSizeValuesDo: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := super maxSizeInterval.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) sysConstDecl.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClass.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgDiscreteType.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 112].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) sysConstDecl.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) getImplInterval.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) intersect: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) right.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) left.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredPC := 78.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack5 := recoveredLocal2.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack5 := (recoveredStack5) left.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack4 := (recoveredStack4) = (recoveredStack5).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack6 := recoveredLocal2.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack6 := (recoveredStack6) right.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack5 := (recoveredStack5) = (recoveredStack6).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack2) value: (recoveredStack3) value: (recoveredStack4) value: (recoveredStack5).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredStack1 isInteger]) ifTrue: [(recoveredStack1 + 1 <= recoveredStack0) ifTrue: [recoveredStack1 := recoveredStack1 + 1. recoveredStack2 := recoveredStack1. recoveredPC := 48] ifFalse: [recoveredPC := 107]] ifFalse: [recoveredPC := 81].
        ].
        recoveredStep = 81 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 103] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredPC := 51.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredPC := 215.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := (recoveredStack0) sysConstDecl.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClass.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlEnumerationType.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 120] ifFalse: [recoveredPC := 196].
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := (recoveredStack0) sysConstDecl.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClass.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := (recoveredStack0) enumerationMap.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := [:recoveredBlock131Arg1 | 
    | recoveredBlock131Value0 recoveredBlock131Value1 recoveredBlock131Value2 recoveredBlock131Value3 |
    recoveredBlock131Value0 := recoveredLocal2.
    recoveredBlock131Value1 := recoveredBlock131Arg1.
    recoveredBlock131Value2 := (recoveredBlock131Value1) enumeratorCode.
    recoveredBlock131Value3 := (recoveredBlock131Value0) contains: (recoveredBlock131Value2).
    recoveredBlock131Value3
].
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := [:recoveredBlock155Arg1 | 
    | recoveredBlock155Value0 recoveredBlock155Value1 recoveredBlock155Value2 recoveredBlock155Value3 recoveredBlock155Value4 recoveredBlock155Value5 recoveredBlock155Value6 recoveredBlock155Value7 recoveredBlock155Value8 recoveredBlock155Value9 recoveredBlock155Value10 recoveredBlock155Value11 |
    recoveredBlock155Value0 := recoveredArg1.
    recoveredBlock155Value1 := recoveredBlock155Arg1.
    recoveredBlock155Value2 := (recoveredBlock155Value1) enumeratorCode.
    recoveredBlock155Value3 := recoveredLocal1.
    recoveredBlock155Value4 := (recoveredBlock155Value3) first.
    recoveredBlock155Value5 := recoveredBlock155Arg1.
    recoveredBlock155Value6 := (recoveredBlock155Value4) == (recoveredBlock155Value5).
    recoveredBlock155Value7 := recoveredLocal1.
    recoveredBlock155Value8 := (recoveredBlock155Value7) last.
    recoveredBlock155Value9 := recoveredBlock155Arg1.
    recoveredBlock155Value10 := (recoveredBlock155Value8) == (recoveredBlock155Value9).
    recoveredBlock155Value11 := (recoveredBlock155Value0) value: (recoveredBlock155Value2) value: (recoveredBlock155Value6) value: (recoveredBlock155Value10).
    recoveredBlock155Value11
].
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredPC := 215.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack1 := [
    false
].
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack2 := [
    'System constants used as variant max size must be of type udisc or enum'
].
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205791e0; bytecode file offset 0xe75af4"
!SGCgVariantArrayDimension methodsFor: 'recovered'!
checkVariantSizeRestrictions: recoveredArg1 reason: recoveredArg2 on: recoveredArg3 source: recoveredArg4
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) genContext.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) generationSettings.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) resolveSystemConstantsAtCompileTime.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgVariantDimension.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 142].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) sysConstDecl.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) sysConstDecl.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 138] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock38Value0 recoveredBlock38Value1 recoveredBlock38Value2 recoveredBlock38Value3 recoveredBlock38Value4 recoveredBlock38Value5 recoveredBlock38Value6 recoveredBlock38Value7 recoveredBlock38Value8 recoveredBlock38Value9 recoveredBlock38Value10 |
    recoveredBlock38Value0 := (self) sysConstDecl.
    recoveredBlock38Value1 := (recoveredBlock38Value0) errLabel.
    recoveredBlock38Value2 := ('System constants <') , (recoveredBlock38Value1).
    recoveredBlock38Value3 := (recoveredBlock38Value2) , ('> and <').
    recoveredBlock38Value4 := recoveredArg1.
    recoveredBlock38Value5 := (recoveredBlock38Value4) sysConstDecl.
    recoveredBlock38Value6 := (recoveredBlock38Value5) errLabel.
    recoveredBlock38Value7 := (recoveredBlock38Value3) , (recoveredBlock38Value6).
    recoveredBlock38Value8 := (recoveredBlock38Value7) , ('> must have the same value, due to ').
    recoveredBlock38Value9 := recoveredArg2.
    recoveredBlock38Value10 := (recoveredBlock38Value8) , (recoveredBlock38Value9).
    recoveredBlock38Value10
].
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack3 := [:recoveredBlock76Arg1 | 
    | recoveredBlock76Value0 recoveredBlock76Value1 recoveredBlock76Value2 recoveredBlock76Value3 recoveredBlock76Value4 recoveredBlock76Value5 recoveredBlock76Value6 recoveredBlock76Value7 recoveredBlock76Value8 |
    recoveredBlock76Value0 := recoveredBlock76Arg1.
    recoveredBlock76Value1 := recoveredBlock76Value0.
    recoveredBlock76Value2 := (self) sysConstDecl.
    recoveredBlock76Value3 := (recoveredBlock76Value2) asMdlIdentifier.
    (recoveredBlock76Value1) pushId: (recoveredBlock76Value3).
    recoveredBlock76Value4 := recoveredBlock76Value0.
    recoveredBlock76Value5 := recoveredArg1.
    recoveredBlock76Value6 := (recoveredBlock76Value5) sysConstDecl.
    recoveredBlock76Value7 := (recoveredBlock76Value6) asMdlIdentifier.
    (recoveredBlock76Value4) pushId: (recoveredBlock76Value7).
    recoveredBlock76Value8 := (recoveredBlock76Value0) ne.
    recoveredBlock76Value8
].
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack4 := [
    | recoveredBlock104Value0 recoveredBlock104Value1 recoveredBlock104Value2 recoveredBlock104Value3 recoveredBlock104Value4 recoveredBlock104Value5 recoveredBlock104Value6 |
    recoveredBlock104Value0 := (self) sysConstDecl.
    recoveredBlock104Value1 := (recoveredBlock104Value0) errLabel.
    recoveredBlock104Value2 := recoveredArg1.
    recoveredBlock104Value3 := (recoveredBlock104Value2) sysConstDecl.
    recoveredBlock104Value4 := (recoveredBlock104Value3) errLabel.
    recoveredBlock104Value5 := recoveredArg4.
    recoveredBlock104Value6 := (self) mdlWarningNo: (651) with: (recoveredBlock104Value1) with: (recoveredBlock104Value4) source: (recoveredBlock104Value5).
    recoveredBlock104Value6
].
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := (recoveredStack1) compileTimeRestriction: (recoveredStack2) block: (recoveredStack3) onWarningDo: (recoveredStack4).
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredPC := 252.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgFixedDimension.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 150] ifFalse: [recoveredPC := 252].
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock154Value0 recoveredBlock154Value1 recoveredBlock154Value2 recoveredBlock154Value3 recoveredBlock154Value4 recoveredBlock154Value5 recoveredBlock154Value6 recoveredBlock154Value7 recoveredBlock154Value8 recoveredBlock154Value9 recoveredBlock154Value10 |
    recoveredBlock154Value0 := (self) sysConstDecl.
    recoveredBlock154Value1 := (recoveredBlock154Value0) errLabel.
    recoveredBlock154Value2 := ('System constant <') , (recoveredBlock154Value1).
    recoveredBlock154Value3 := (recoveredBlock154Value2) , ('> must have the value ').
    recoveredBlock154Value4 := recoveredArg1.
    recoveredBlock154Value5 := (recoveredBlock154Value4) maxSize.
    recoveredBlock154Value6 := (recoveredBlock154Value5) asString.
    recoveredBlock154Value7 := (recoveredBlock154Value3) , (recoveredBlock154Value6).
    recoveredBlock154Value8 := (recoveredBlock154Value7) , (', due to ').
    recoveredBlock154Value9 := recoveredArg2.
    recoveredBlock154Value10 := (recoveredBlock154Value8) , (recoveredBlock154Value9).
    recoveredBlock154Value10
].
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack3 := [:recoveredBlock192Arg1 | 
    | recoveredBlock192Value0 recoveredBlock192Value1 recoveredBlock192Value2 recoveredBlock192Value3 recoveredBlock192Value4 recoveredBlock192Value5 recoveredBlock192Value6 recoveredBlock192Value7 |
    recoveredBlock192Value0 := recoveredBlock192Arg1.
    recoveredBlock192Value1 := recoveredBlock192Value0.
    recoveredBlock192Value2 := (self) sysConstDecl.
    recoveredBlock192Value3 := (recoveredBlock192Value2) asMdlIdentifier.
    (recoveredBlock192Value1) pushId: (recoveredBlock192Value3).
    recoveredBlock192Value4 := recoveredBlock192Value0.
    recoveredBlock192Value5 := recoveredArg1.
    recoveredBlock192Value6 := (recoveredBlock192Value5) maxSize.
    (recoveredBlock192Value4) literal: (recoveredBlock192Value6).
    recoveredBlock192Value7 := (recoveredBlock192Value0) ne.
    recoveredBlock192Value7
].
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack4 := [
    | recoveredBlock218Value0 recoveredBlock218Value1 recoveredBlock218Value2 recoveredBlock218Value3 recoveredBlock218Value4 recoveredBlock218Value5 recoveredBlock218Value6 |
    recoveredBlock218Value0 := (self) sysConstDecl.
    recoveredBlock218Value1 := (recoveredBlock218Value0) errLabel.
    recoveredBlock218Value2 := recoveredArg1.
    recoveredBlock218Value3 := (recoveredBlock218Value2) maxSize.
    recoveredBlock218Value4 := (recoveredBlock218Value3) asString.
    recoveredBlock218Value5 := recoveredArg4.
    recoveredBlock218Value6 := (self) mdlWarningNo: (651) with: (recoveredBlock218Value1) with: (recoveredBlock218Value4) source: (recoveredBlock218Value5).
    recoveredBlock218Value6
].
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack1 := (recoveredStack1) compileTimeRestriction: (recoveredStack2) block: (recoveredStack3) onWarningDo: (recoveredStack4).
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

