"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200127f8; bytecode file offset 0x912098"
!SGBehaviourGeneratorStrategy methodsFor: 'recovered'!
ileBuilderClass
    | recoveredValue0 |
    recoveredValue0 := SGIleBuilderImplAware.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20037544; bytecode file offset 0x934580"
!SGBehaviourGeneratorStrategy methodsFor: 'recovered'!
isQuantVariant
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) codeGenerationOptions.
    recoveredValue1 := (recoveredValue0) isQuantFloatExperimentVariant.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200fc514; bytecode file offset 0x9f8e68"
!SGBehaviourGeneratorStrategy methodsFor: 'recovered'!
methodCall: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super methodCall: (recoveredValue0).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) mdlClass.
    recoveredValue4 := (self) handleIaExpr: (recoveredValue1) mdlClass: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200fc55c; bytecode file offset 0x9f8e68"
!SGBehaviourGeneratorStrategy methodsFor: 'recovered'!
mdlDereferencedExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super mdlDereferencedExpr: (recoveredValue0).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) mdlClass.
    recoveredValue4 := (self) handleIaExpr: (recoveredValue1) mdlClass: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200fc574; bytecode file offset 0x9f8e68"
!SGBehaviourGeneratorStrategy methodsFor: 'recovered'!
identifier: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super identifier: (recoveredValue0).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) mdlClass.
    recoveredValue4 := (self) handleIaExpr: (recoveredValue1) mdlClass: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200fc58c; bytecode file offset 0x9f8e68"
!SGBehaviourGeneratorStrategy methodsFor: 'recovered'!
literal: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super literal: (recoveredValue0).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) mdlClass.
    recoveredValue4 := (self) handleIaExpr: (recoveredValue1) mdlClass: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200fc5a4; bytecode file offset 0x9f8e68"
!SGBehaviourGeneratorStrategy methodsFor: 'recovered'!
indexedExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super indexedExpr: (recoveredValue0).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) mdlClass.
    recoveredValue4 := (self) handleIaExpr: (recoveredValue1) mdlClass: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20109434; bytecode file offset 0xa05d94"
!SGBehaviourGeneratorStrategy methodsFor: 'recovered'!
commentElementDeclSource
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIntegerVariant.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := super commentElementDeclSource.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20109448; bytecode file offset 0xa05d94"
!SGBehaviourGeneratorStrategy methodsFor: 'recovered'!
generateLimiters
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIntegerVariant.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := super generateLimiters.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2010945c; bytecode file offset 0xa05d94"
!SGBehaviourGeneratorStrategy methodsFor: 'recovered'!
isRedundantDataFeatureActive
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIntegerVariant.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := super isRedundantDataFeatureActive.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20109470; bytecode file offset 0xa05d94"
!SGBehaviourGeneratorStrategy methodsFor: 'recovered'!
shiftForLiterals
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIntegerVariant.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := super shiftForLiterals.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20109484; bytecode file offset 0xa05d94"
!SGBehaviourGeneratorStrategy methodsFor: 'recovered'!
allowDouble
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIntegerVariant.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := super allowDouble.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20109498; bytecode file offset 0xa05d94"
!SGBehaviourGeneratorStrategy methodsFor: 'recovered'!
shiftForMul
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIntegerVariant.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := super shiftForMul.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201094ac; bytecode file offset 0xa05d94"
!SGBehaviourGeneratorStrategy methodsFor: 'recovered'!
resultByZeroIsMinMax
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIntegerVariant.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := super resultByZeroIsMinMax.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201094c0; bytecode file offset 0xa05d94"
!SGBehaviourGeneratorStrategy methodsFor: 'recovered'!
needsIntegerCode
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIntegerVariant.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := super needsIntegerCode.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201094d4; bytecode file offset 0xa05d94"
!SGBehaviourGeneratorStrategy methodsFor: 'recovered'!
shiftForDiv
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIntegerVariant.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := super shiftForDiv.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20109628; bytecode file offset 0xa05ee8"
!SGBehaviourGeneratorStrategy methodsFor: 'recovered'!
tempVarsAlways32Bit
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIntegerVariant.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := super tempVarsAlways32Bit.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20118b30; bytecode file offset 0xa15490"
!SGBehaviourGeneratorStrategy methodsFor: 'recovered'!
isPhysicalVariant
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) codeGenerationOptions.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) isPhysicalExperimentVariant.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) codeGenerationOptions.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) isPhysicalControllerVariant.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20118b44; bytecode file offset 0xa15490"
!SGBehaviourGeneratorStrategy methodsFor: 'recovered'!
isIntegerVariant
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) codeGenerationOptions.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) isIntegerExperimentVariant.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) codeGenerationOptions.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIntegerControllerVariant.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2011aca4; bytecode file offset 0xa17564"
!SGBehaviourGeneratorStrategy methodsFor: 'recovered'!
representableBitsOptionValue
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIntegerVariant.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 11] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := 32.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := super representableBitsOptionValue.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201210c0; bytecode file offset 0xa1d980"
!SGBehaviourGeneratorStrategy methodsFor: 'recovered'!
isMdlVarNeedsImpl: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIntegerVariant.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := super isMdlVarNeedsImpl: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2012118c; bytecode file offset 0xa1da4c"
!SGBehaviourGeneratorStrategy methodsFor: 'recovered'!
updateFixPointOptions: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIntegerVariant.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := super updateFixPointOptions: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201211dc; bytecode file offset 0xa1da9c"
!SGBehaviourGeneratorStrategy methodsFor: 'recovered'!
declGeneratesBody: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIntegerVariant.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := super declGeneratesBody: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2013511c; bytecode file offset 0xa319dc"
!SGBehaviourGeneratorStrategy methodsFor: 'recovered'!
addImplInfoComment: recoveredArg1 source: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIntegerVariant.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := super addImplInfoComment: (recoveredStack1) source: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20135144; bytecode file offset 0xa31a04"
!SGBehaviourGeneratorStrategy methodsFor: 'recovered'!
generateIleServiceRoutine: recoveredArg1 with: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIntegerVariant.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := super generateIleServiceRoutine: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2016c590; bytecode file offset 0xa68e60"
!SGBehaviourGeneratorStrategy methodsFor: 'recovered'!
unaryLogicExpr: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) child.
    recoveredValue2 := (self) visitMdlNode: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) ileExpr.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) mdlClass.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue7) source.
    recoveredValue9 := (recoveredValue5) cgNot: (recoveredValue6) source: (recoveredValue8).
    recoveredValue10 := (self) asIaExpr: (recoveredValue9).
    ^recoveredValue10
! !

"ASDBase.ic method 0x2017c87c; bytecode file offset 0xa79144"
!SGBehaviourGeneratorStrategy methodsFor: 'recovered'!
specialEnumCall: recoveredArg1
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
            recoveredStack0 := super specialEnumCall: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) expressionContext.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) isContextWithBehaviour.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileExpr.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20188e10; bytecode file offset 0xa85860"
!SGBehaviourGeneratorStrategy methodsFor: 'recovered'!
iaWarningNo: recoveredArg1 with: recoveredArg2 with: recoveredArg3 with: recoveredArg4 source: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) errorHandler.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := Array.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := recoveredArg4.
    recoveredValue6 := (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4) with: (recoveredValue5).
    recoveredValue7 := recoveredArg5.
    (recoveredValue0) warningNo: (recoveredValue1) args: (recoveredValue6) category: ('Ia') source: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x201a7768; bytecode file offset 0xaa4030"
!SGBehaviourGeneratorStrategy methodsFor: 'recovered'!
ansiCExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SGCgExpressionContext.
    recoveredValue1 := (recoveredValue0) voidContext.
    recoveredValue2 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 |
    recoveredBlock7Value0 := recoveredArg1.
    recoveredBlock7Value1 := super ansiCExpr: (recoveredBlock7Value0).
    recoveredBlock7Value1
].
    recoveredValue3 := (recoveredValue1) executeInContext: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x201e80a0; bytecode file offset 0xae4970"
!SGBehaviourGeneratorStrategy methodsFor: 'recovered'!
assignmentTypeForLValue: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isQuantVariant.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) type.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) getImplType.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRBQuantFloat.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) assignmentQuantType.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := super assignmentTypeForLValue: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2024ce4c; bytecode file offset 0xb49718"
!SGBehaviourGeneratorStrategy methodsFor: 'recovered'!
handleIaExpr: recoveredArg1 mdlClass: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) expressionContext.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 35] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) expressionContext.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isContextWithBehaviour.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 35].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgArithmeticLiteralType.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 29].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileExpr.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) expressionContext.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) contextType.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) createOpType: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileExpr.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) createOpType: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20265da4; bytecode file offset 0xb62680"
!SGBehaviourGeneratorStrategy methodsFor: 'recovered'!
implCast: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgNewDiscreteType.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightChild.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) visitMdlNode: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := (recoveredStack3) mdlClass.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack4 := (recoveredStack4) attributes.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) createModelImplCastAssign: (recoveredStack2) type: (recoveredStack3) attributes: (recoveredStack4).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := super implCast: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlClass.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) handleIaExpr: (recoveredStack1) mdlClass: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2026e2dc; bytecode file offset 0xb6abb4"
!SGBehaviourGeneratorStrategy methodsFor: 'recovered'!
annotateType: recoveredArg1 expr: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIaScalarTypedExpr.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 33].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileExpr.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := SGCgTypeFactory.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileExpr.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := (recoveredStack3) type.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := (recoveredStack3) getImplType.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack4 := (recoveredStack4) formula.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack6 := recoveredArg2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack6 := (recoveredStack6) ileExpr.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack6 := (recoveredStack6) interval.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) createContType: (recoveredStack3) formula: (recoveredStack4) physicalUnit: (recoveredStack5) implInterval: (recoveredStack6).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) createOpType: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileExpr.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) createOpType: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2030d490; bytecode file offset 0xc09d68"
!SGBehaviourGeneratorStrategy methodsFor: 'recovered'!
visitMdlNode: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack1 := true.
            recoveredBlock4PC := 11.
        ].
        recoveredBlock4Step = 11 ifTrue: [
            recoveredBlock4Stack2 := recoveredArg1.
            recoveredBlock4PC := 14.
        ].
        recoveredBlock4Step = 14 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) isMdlExpr.
            recoveredBlock4PC := 15.
        ].
        recoveredBlock4Step = 15 ifTrue: [
            (recoveredBlock4Stack2) ifTrue: [recoveredBlock4PC := 18] ifFalse: [recoveredBlock4PC := 35].
        ].
        recoveredBlock4Step = 18 ifTrue: [
            recoveredBlock4PC := 19.
        ].
        recoveredBlock4Step = 19 ifTrue: [
            recoveredBlock4Stack1 := true.
            recoveredBlock4PC := 20.
        ].
        recoveredBlock4Step = 20 ifTrue: [
            recoveredBlock4Stack2 := recoveredArg1.
            recoveredBlock4PC := 23.
        ].
        recoveredBlock4Step = 23 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) isMdlCreatesContext.
            recoveredBlock4PC := 24.
        ].
        recoveredBlock4Step = 24 ifTrue: [
            (recoveredBlock4Stack2) ifTrue: [recoveredBlock4PC := 35] ifFalse: [recoveredBlock4PC := 28].
        ].
        recoveredBlock4Step = 28 ifTrue: [
            recoveredBlock4PC := 29.
        ].
        recoveredBlock4Step = 29 ifTrue: [
            recoveredBlock4Stack1 := self.
            recoveredBlock4PC := 30.
        ].
        recoveredBlock4Step = 30 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) expressionContext.
            recoveredBlock4PC := 31.
        ].
        recoveredBlock4Step = 31 ifTrue: [
            recoveredBlock4Stack2 := recoveredArg1.
            recoveredBlock4PC := 34.
        ].
        recoveredBlock4Step = 34 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) typeConforms: (recoveredBlock4Stack2).
            recoveredBlock4PC := 35.
        ].
        recoveredBlock4Step = 35 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack1.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := [
    'Missing conversion between model types'
].
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := super visitMdlNode: (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2033eb5c; bytecode file offset 0xc3b444"
!SGBehaviourGeneratorStrategy methodsFor: 'recovered'!
genIleIntegerIndex: recoveredArg1 type: recoveredArg2 attrib: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) visitMdlNode: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileExpr.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) expressionContext.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isLimitedDiscreteContext.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) protectVecIndex.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleRepresentableDoubleBitSize.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) interval.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) left.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) interval.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) right.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) maxRepresentableUnsignedInDoubleBitSize.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) <= (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) maxRepresentableSignedInDoubleBitSize.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileBasicType.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) limitExprUpperBound: (recoveredStack1) type: (recoveredStack2).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20371a0c; bytecode file offset 0xc6e2ec"
!SGBehaviourGeneratorStrategy methodsFor: 'recovered'!
assignInOutTempVar: recoveredArg1 to: recoveredArg2 ileExpr: recoveredArg3 type: recoveredArg4
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgTypeWithBehaviour.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack5 := recoveredArg4.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := super assignInOutTempVar: (recoveredStack2) to: (recoveredStack3) ileExpr: (recoveredStack4) type: (recoveredStack5).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) type.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlClass.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := (recoveredStack3) source.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack4 := [
    | recoveredBlock44Value0 recoveredBlock44Value1 recoveredBlock44Value2 recoveredBlock44Value3 recoveredBlock44Value4 recoveredBlock44Value5 |
    recoveredBlock44Value0 := recoveredArg3.
    recoveredBlock44Value1 := (recoveredBlock44Value0) ileExpr.
    recoveredBlock44Value2 := (recoveredBlock44Value1) asIleLValue.
    recoveredBlock44Value3 := recoveredArg1.
    recoveredBlock44Value4 := (recoveredBlock44Value3) asIleCopy.
    recoveredBlock44Value5 := (recoveredBlock44Value2) assign: (recoveredBlock44Value4).
    recoveredBlock44Value5
].
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) withExpressionContextFrom: (recoveredStack1) lValueType: (recoveredStack2) source: (recoveredStack3) do: (recoveredStack4).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20373c14; bytecode file offset 0xc704fc"
!SGBehaviourGeneratorStrategy methodsFor: 'recovered'!
binaryLogicExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftChild.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) visitMdlNode: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileExpr.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightChild.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) visitMdlNode: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileExpr.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) operator.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := 'and'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 41].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack4 := (recoveredStack4) source.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) cgAnd: (recoveredStack2) with: (recoveredStack3) source: (recoveredStack4).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) asIaExpr: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) operator.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := 'or'.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 67].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack4 := (recoveredStack4) source.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) cgOr: (recoveredStack2) with: (recoveredStack3) source: (recoveredStack4).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) asIaExpr: (recoveredStack1).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20373f3c; bytecode file offset 0xc70838"
!SGBehaviourGeneratorStrategy methodsFor: 'recovered'!
specialConvertDiscCall: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := (self) expressionContext.
    recoveredValue1 := (recoveredValue0) isModularDiscreteContext.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := SGCgAdaptIntervalAttributes.
    recoveredValue3 := (recoveredValue2) create.
    recoveredValue4 := recoveredValue3.
    (recoveredValue4) cgAttrNoLimitAssignment.
    recoveredValue5 := recoveredValue3.
    (recoveredValue5) cgAttrNoLimitOverflow.
    recoveredLocal2 := recoveredValue3.
    recoveredValue6 := SGCgExpressionContext.
    recoveredValue7 := (self) representableBits.
    recoveredValue8 := (self) expressionContext.
    recoveredValue9 := (recoveredValue8) contextType.
    recoveredValue10 := (recoveredValue9) isSigned.
    recoveredValue11 := (recoveredValue6) intContext: (recoveredValue7) signed: (recoveredValue10).
    recoveredValue12 := [
    | recoveredBlock34Local1 recoveredBlock34Local2 recoveredBlock34Value0 recoveredBlock34Value1 recoveredBlock34Value2 recoveredBlock34Value3 recoveredBlock34Value4 recoveredBlock34Value5 recoveredBlock34Value6 recoveredBlock34Value7 recoveredBlock34Value8 recoveredBlock34Value9 recoveredBlock34Value10 |
    recoveredBlock34Value0 := recoveredArg1.
    recoveredBlock34Value1 := (recoveredBlock34Value0) receiver.
    recoveredBlock34Value2 := (self) visitMdlNode: (recoveredBlock34Value1).
    recoveredBlock34Local2 := recoveredBlock34Value2.
    recoveredBlock34Value3 := recoveredBlock34Local2.
    recoveredBlock34Value4 := (recoveredBlock34Value3) type.
    recoveredBlock34Value5 := (recoveredBlock34Value4) getImplType.
    recoveredBlock34Local1 := recoveredBlock34Value5.
    recoveredBlock34Value6 := recoveredBlock34Local2.
    recoveredBlock34Value7 := recoveredArg1.
    recoveredBlock34Value8 := (recoveredBlock34Value7) mdlClass.
    recoveredBlock34Value9 := recoveredLocal2.
    recoveredBlock34Value10 := (recoveredBlock34Value6) implCastAssign: (recoveredBlock34Value8) attributes: (recoveredBlock34Value9).
    recoveredBlock34Value10
].
    recoveredValue13 := (recoveredValue11) executeInContext: (recoveredValue12).
    ^recoveredValue13
! !

"ASDBase.ic method 0x20395510; bytecode file offset 0xc91df4"
!SGBehaviourGeneratorStrategy methodsFor: 'recovered'!
asIaExpr: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) expressionContext.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) expressionContext.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isContextWithBehaviour.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleArithmeticExpr.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleConstant.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) typeOrNil.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) typeOrNil.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgAbstractType.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentIaBuilder.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) createConstant: (recoveredStack1) mdlNode: (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentIaBuilder.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := (recoveredStack2) type.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileExpr: (recoveredStack1) implementation: (recoveredStack2).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentIaBuilder.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) wrappedIleExpr: (recoveredStack1).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203cb2b8; bytecode file offset 0xcc7bac"
!SGBehaviourGeneratorStrategy methodsFor: 'recovered'!
asIaExpr: recoveredArg1 from: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := SGIlAbstractNode.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isKindOf: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstant.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) typeOrNil.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) typeOrNil.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgAbstractType.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentIaBuilder.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) createConstant: (recoveredStack2) mdlNode: (recoveredStack3).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := SGIaWrappedIleExpr.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) isKindOf: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleArithmeticExpr.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 65] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentIaBuilder.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) wrappedIleExpr: (recoveredStack2).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentIaBuilder.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := (recoveredStack2) formula.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack3 := (recoveredStack3) isRescalable.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := (recoveredStack0) createScalarTypedExprInterval: (recoveredStack1) formula: (recoveredStack2) isRescalable: (recoveredStack3).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack1) ileExpr: (recoveredStack2).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20406f64; bytecode file offset 0xd0385c"
!SGBehaviourGeneratorStrategy methodsFor: 'recovered'!
mdlInitValueAssign: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) rightChild.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) variable.
    recoveredValue4 := (recoveredValue3) mdlClass.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) source.
    recoveredValue7 := [
    | recoveredBlock17Local1 recoveredBlock17Stack0 recoveredBlock17Stack1 recoveredBlock17Stack2 recoveredBlock17Stack3 recoveredBlock17Stack4 recoveredBlock17Stack5 recoveredBlock17PC recoveredBlock17Step recoveredBlock17Done recoveredBlock17Result |
    recoveredBlock17Stack0 := self.
    recoveredBlock17PC := 24.
    recoveredBlock17Done := false.
    [recoveredBlock17Done not] whileTrue: [
        recoveredBlock17Step := recoveredBlock17PC.
        recoveredBlock17Step = 24 ifTrue: [
            recoveredBlock17Stack1 := recoveredArg1.
            recoveredBlock17PC := 27.
        ].
        recoveredBlock17Step = 27 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) mdlClass.
            recoveredBlock17PC := 28.
        ].
        recoveredBlock17Step = 28 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) isCgTypeWithBehaviour.
            recoveredBlock17PC := 30.
        ].
        recoveredBlock17Step = 30 ifTrue: [
            (recoveredBlock17Stack1) ifTrue: [recoveredBlock17PC := 52] ifFalse: [recoveredBlock17PC := 34].
        ].
        recoveredBlock17Step = 34 ifTrue: [
            recoveredBlock17Stack1 := self.
            recoveredBlock17PC := 35.
        ].
        recoveredBlock17Step = 35 ifTrue: [
            recoveredBlock17Stack2 := self.
            recoveredBlock17PC := 36.
        ].
        recoveredBlock17Step = 36 ifTrue: [
            recoveredBlock17Stack3 := recoveredArg1.
            recoveredBlock17PC := 39.
        ].
        recoveredBlock17Step = 39 ifTrue: [
            recoveredBlock17Stack2 := super mdlInitValueAssign: (recoveredBlock17Stack3).
            recoveredBlock17PC := 43.
        ].
        recoveredBlock17Step = 43 ifTrue: [
            recoveredBlock17Stack3 := recoveredArg1.
            recoveredBlock17PC := 46.
        ].
        recoveredBlock17Step = 46 ifTrue: [
            recoveredBlock17Stack3 := (recoveredBlock17Stack3) mdlClass.
            recoveredBlock17PC := 47.
        ].
        recoveredBlock17Step = 47 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) handleIaExpr: (recoveredBlock17Stack2) mdlClass: (recoveredBlock17Stack3).
            recoveredBlock17PC := 49.
        ].
        recoveredBlock17Step = 49 ifTrue: [
            recoveredBlock17PC := 91.
        ].
        recoveredBlock17Step = 52 ifTrue: [
            recoveredBlock17Stack1 := recoveredArg1.
            recoveredBlock17PC := 55.
        ].
        recoveredBlock17Step = 55 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) mdlClass.
            recoveredBlock17PC := 56.
        ].
        recoveredBlock17Step = 56 ifTrue: [
            recoveredBlock17Stack2 := self.
            recoveredBlock17PC := 57.
        ].
        recoveredBlock17Step = 57 ifTrue: [
            recoveredBlock17Stack3 := recoveredArg1.
            recoveredBlock17PC := 60.
        ].
        recoveredBlock17Step = 60 ifTrue: [
            recoveredBlock17Stack3 := (recoveredBlock17Stack3) rightChild.
            recoveredBlock17PC := 61.
        ].
        recoveredBlock17Step = 61 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) visitMdlNode: (recoveredBlock17Stack3).
            recoveredBlock17PC := 63.
        ].
        recoveredBlock17Step = 63 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) ileExpr.
            recoveredBlock17PC := 65.
        ].
        recoveredBlock17Step = 65 ifTrue: [
            recoveredBlock17Stack3 := recoveredArg1.
            recoveredBlock17PC := 68.
        ].
        recoveredBlock17Step = 68 ifTrue: [
            recoveredBlock17Stack3 := (recoveredBlock17Stack3) variable.
            recoveredBlock17PC := 69.
        ].
        recoveredBlock17Step = 69 ifTrue: [
            recoveredBlock17Stack3 := (recoveredBlock17Stack3) errLabel.
            recoveredBlock17PC := 71.
        ].
        recoveredBlock17Step = 71 ifTrue: [
            recoveredBlock17Stack4 := self.
            recoveredBlock17PC := 72.
        ].
        recoveredBlock17Step = 72 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) cgAssignmentConversion: (recoveredBlock17Stack2) lValue: (recoveredBlock17Stack3) generator: (recoveredBlock17Stack4).
            recoveredBlock17PC := 75.
        ].
        recoveredBlock17Step = 75 ifTrue: [
            recoveredBlock17Local1 := recoveredBlock17Stack1.
            recoveredBlock17PC := 76.
        ].
        recoveredBlock17Step = 76 ifTrue: [
            recoveredBlock17Stack1 := self.
            recoveredBlock17PC := 77.
        ].
        recoveredBlock17Step = 77 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) ileBuilder.
            recoveredBlock17PC := 79.
        ].
        recoveredBlock17Step = 79 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Local1.
            recoveredBlock17PC := 80.
        ].
        recoveredBlock17Step = 80 ifTrue: [
            recoveredBlock17Stack3 := recoveredArg1.
            recoveredBlock17PC := 83.
        ].
        recoveredBlock17Step = 83 ifTrue: [
            recoveredBlock17Stack3 := (recoveredBlock17Stack3) genIleType.
            recoveredBlock17PC := 85.
        ].
        recoveredBlock17Step = 85 ifTrue: [
            recoveredBlock17Stack4 := self.
            recoveredBlock17PC := 86.
        ].
        recoveredBlock17Step = 86 ifTrue: [
            recoveredBlock17Stack4 := (recoveredBlock17Stack4) expressionContext.
            recoveredBlock17PC := 88.
        ].
        recoveredBlock17Step = 88 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) createInitValueAssign: (recoveredBlock17Stack2) type: (recoveredBlock17Stack3) expressionContext: (recoveredBlock17Stack4).
            recoveredBlock17PC := 91.
        ].
        recoveredBlock17Step = 91 ifTrue: [
            recoveredBlock17Result := recoveredBlock17Stack1.
            recoveredBlock17Done := true.
        ].
    ].
    recoveredBlock17Result
].
    recoveredValue8 := (self) withExpressionContextFrom: (recoveredValue1) lValueType: (recoveredValue4) source: (recoveredValue6) do: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x2042b560; bytecode file offset 0xd27e50"
!SGBehaviourGeneratorStrategy methodsFor: 'recovered'!
betweenAndExpr: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlCommonType.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgTypeWithBehaviour.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 35] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := super betweenAndExpr: (recoveredStack3).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := (recoveredStack3) mdlClass.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) handleIaExpr: (recoveredStack2) mdlClass: (recoveredStack3).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock38Local1 recoveredBlock38Local2 recoveredBlock38Local3 recoveredBlock38Local4 recoveredBlock38Value0 recoveredBlock38Value1 recoveredBlock38Value2 recoveredBlock38Value3 recoveredBlock38Value4 recoveredBlock38Value5 recoveredBlock38Value6 recoveredBlock38Value7 recoveredBlock38Value8 recoveredBlock38Value9 recoveredBlock38Value10 recoveredBlock38Value11 recoveredBlock38Value12 recoveredBlock38Value13 recoveredBlock38Value14 recoveredBlock38Value15 recoveredBlock38Value16 recoveredBlock38Value17 recoveredBlock38Value18 recoveredBlock38Value19 recoveredBlock38Value20 recoveredBlock38Value21 recoveredBlock38Value22 |
    recoveredBlock38Value0 := recoveredArg1.
    recoveredBlock38Value1 := (recoveredBlock38Value0) exprChild.
    recoveredBlock38Value2 := (self) visitMdlNode: (recoveredBlock38Value1).
    recoveredBlock38Value3 := (recoveredBlock38Value2) ileExpr.
    recoveredBlock38Local4 := recoveredBlock38Value3.
    recoveredBlock38Value4 := recoveredArg1.
    recoveredBlock38Value5 := (recoveredBlock38Value4) leftChild.
    recoveredBlock38Value6 := (self) visitMdlNode: (recoveredBlock38Value5).
    recoveredBlock38Value7 := (recoveredBlock38Value6) ileExpr.
    recoveredBlock38Local3 := recoveredBlock38Value7.
    recoveredBlock38Value8 := recoveredArg1.
    recoveredBlock38Value9 := (recoveredBlock38Value8) rightChild.
    recoveredBlock38Value10 := (self) visitMdlNode: (recoveredBlock38Value9).
    recoveredBlock38Value11 := (recoveredBlock38Value10) ileExpr.
    recoveredBlock38Local2 := recoveredBlock38Value11.
    recoveredBlock38Value12 := recoveredArg1.
    recoveredBlock38Value13 := (recoveredBlock38Value12) exprChild.
    recoveredBlock38Value14 := (recoveredBlock38Value13) mdlClass.
    recoveredBlock38Value15 := recoveredBlock38Local4.
    recoveredBlock38Value16 := recoveredBlock38Local3.
    recoveredBlock38Value17 := recoveredBlock38Local2.
    recoveredBlock38Value18 := recoveredArg1.
    recoveredBlock38Value19 := (recoveredBlock38Value18) source.
    recoveredBlock38Value20 := (recoveredBlock38Value14) cgBetween: (recoveredBlock38Value15) left: (recoveredBlock38Value16) right: (recoveredBlock38Value17) source: (recoveredBlock38Value19).
    recoveredBlock38Local1 := recoveredBlock38Value20.
    recoveredBlock38Value21 := recoveredBlock38Local1.
    recoveredBlock38Value22 := (self) asIaExpr: (recoveredBlock38Value21).
    ^recoveredBlock38Value22
].
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack0) withExpressionContextFrom: (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20433bf0; bytecode file offset 0xd304d4"
!SGBehaviourGeneratorStrategy methodsFor: 'recovered'!
binaryEqualityExpr: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightChild.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftChild.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlClass.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgTypeCompatibleTo: (recoveredStack2) generator: (recoveredStack3).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftChild.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightChild.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgTypeWithBehaviour.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 57] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := super binaryEqualityExpr: (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock60Local1 recoveredBlock60Local2 recoveredBlock60Local3 recoveredBlock60Value0 recoveredBlock60Value1 recoveredBlock60Value2 recoveredBlock60Value3 recoveredBlock60Value4 recoveredBlock60Value5 recoveredBlock60Value6 recoveredBlock60Value7 recoveredBlock60Value8 recoveredBlock60Value9 recoveredBlock60Value10 recoveredBlock60Value11 recoveredBlock60Value12 recoveredBlock60Value13 recoveredBlock60Value14 |
    recoveredBlock60Value0 := recoveredArg1.
    recoveredBlock60Value1 := (recoveredBlock60Value0) leftChild.
    recoveredBlock60Value2 := (self) visitMdlNode: (recoveredBlock60Value1).
    recoveredBlock60Value3 := (recoveredBlock60Value2) ileExpr.
    recoveredBlock60Local3 := recoveredBlock60Value3.
    recoveredBlock60Value4 := recoveredArg1.
    recoveredBlock60Value5 := (recoveredBlock60Value4) rightChild.
    recoveredBlock60Value6 := (self) visitMdlNode: (recoveredBlock60Value5).
    recoveredBlock60Value7 := (recoveredBlock60Value6) ileExpr.
    recoveredBlock60Local2 := recoveredBlock60Value7.
    recoveredBlock60Value8 := recoveredLocal1.
    recoveredBlock60Value9 := recoveredBlock60Local3.
    recoveredBlock60Value10 := recoveredBlock60Local2.
    recoveredBlock60Value11 := recoveredArg1.
    recoveredBlock60Value12 := (recoveredBlock60Value8) cgCompare: (recoveredBlock60Value9) and: (recoveredBlock60Value10) operator: (recoveredBlock60Value11).
    recoveredBlock60Local1 := recoveredBlock60Value12.
    recoveredBlock60Value13 := recoveredBlock60Local1.
    recoveredBlock60Value14 := (self) asIaExpr: (recoveredBlock60Value13).
    ^recoveredBlock60Value14
].
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack0) withExpressionContextFrom: (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20438c9c; bytecode file offset 0xd35594"
!SGBehaviourGeneratorStrategy methodsFor: 'recovered'!
createIaExprPropagatedImpl: recoveredArg1 expr: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) expressionContext.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) expressionContext.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isContextWithBehaviour.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := super createIaExprPropagatedImpl: (recoveredStack1) expr: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileExpr.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 105] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleArithmeticExpr.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 105].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleConstant.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 94] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) type.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgArithmeticLiteralType.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) type.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) getImplInterval.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) createIlePropagatedImplType.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) type.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := (recoveredStack2) interval.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack3 := (recoveredStack3) getImplInterval.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := (recoveredStack2) intersect: (recoveredStack3).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) createWithImplType: (recoveredStack1) interval: (recoveredStack2).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := (recoveredStack0) createOpType: (recoveredStack1).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := (recoveredStack2) asIaExpr: (recoveredStack3).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            super createIaExprPropagatedImpl: (recoveredStack1) expr: (recoveredStack2).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20441350; bytecode file offset 0xd3dc44"
!SGBehaviourGeneratorStrategy methodsFor: 'recovered'!
muxExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgTypeWithBehaviour.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := super muxExpr: (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := (recoveredStack3) mdlClass.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) handleIaExpr: (recoveredStack2) mdlClass: (recoveredStack3).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := SGCgExpressionContext.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) nonArithmeticContext.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock32Value0 recoveredBlock32Value1 recoveredBlock32Value2 recoveredBlock32Value3 |
    recoveredBlock32Value0 := recoveredArg1.
    recoveredBlock32Value1 := (recoveredBlock32Value0) exprChild.
    recoveredBlock32Value2 := (self) visitMdlNode: (recoveredBlock32Value1).
    recoveredBlock32Value3 := (recoveredBlock32Value2) ileExpr.
    recoveredBlock32Value3
].
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) executeInContext: (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftChild.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) visitMdlNode: (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileExpr.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightChild.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) visitMdlNode: (recoveredStack1).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileExpr.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClass.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack4 := (recoveredStack4) source.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := (recoveredStack0) cgMux: (recoveredStack1) left: (recoveredStack2) right: (recoveredStack3) source: (recoveredStack4).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := (recoveredStack0) asIaExpr: (recoveredStack1).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2045e5ec; bytecode file offset 0xd5aedc"
!SGBehaviourGeneratorStrategy methodsFor: 'recovered'!
multiplexExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgTypeWithBehaviour.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := super multiplexExpr: (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := (recoveredStack3) mdlClass.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) handleIaExpr: (recoveredStack2) mdlClass: (recoveredStack3).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) choiceChildren.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := [:recoveredBlock33Arg1 | 
    | recoveredBlock33Value0 recoveredBlock33Value1 recoveredBlock33Value2 |
    recoveredBlock33Value0 := recoveredBlock33Arg1.
    recoveredBlock33Value1 := (self) visitMdlNode: (recoveredBlock33Value0).
    recoveredBlock33Value2 := (recoveredBlock33Value1) ileExpr.
    recoveredBlock33Value2
].
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultExprChild.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) visitMdlNode: (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileExpr.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) switchExprChild.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock69Value0 recoveredBlock69Value1 recoveredBlock69Value2 recoveredBlock69Value3 recoveredBlock69Value4 recoveredBlock69Value5 recoveredBlock69Value6 recoveredBlock69Value7 recoveredBlock69Value8 recoveredBlock69Value9 recoveredBlock69Value10 |
    recoveredBlock69Value0 := recoveredArg1.
    recoveredBlock69Value1 := (recoveredBlock69Value0) mdlClass.
    recoveredBlock69Value2 := recoveredArg1.
    recoveredBlock69Value3 := (recoveredBlock69Value2) switchExprChild.
    recoveredBlock69Value4 := (self) visitMdlNode: (recoveredBlock69Value3).
    recoveredBlock69Value5 := (recoveredBlock69Value4) ileExpr.
    recoveredBlock69Value6 := recoveredLocal3.
    recoveredBlock69Value7 := recoveredLocal2.
    recoveredBlock69Value8 := recoveredArg1.
    recoveredBlock69Value9 := (recoveredBlock69Value8) source.
    recoveredBlock69Value10 := (recoveredBlock69Value1) cgMultiplex: (recoveredBlock69Value5) choices: (recoveredBlock69Value6) defaultExpr: (recoveredBlock69Value7) source: (recoveredBlock69Value9).
    recoveredBlock69Value10
].
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := (recoveredStack0) withExpressionContextFrom: (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := (recoveredStack0) asIaExpr: (recoveredStack1).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2048df50; bytecode file offset 0xd8a864"
!SGBehaviourGeneratorStrategy methodsFor: 'recovered'!
returnStmnt: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgTypeWithBehaviour.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := super returnStmnt: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) child.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlClass.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := (recoveredStack3) source.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack4 := [
    | recoveredBlock35Local1 recoveredBlock35Local2 recoveredBlock35Stack0 recoveredBlock35Stack1 recoveredBlock35Stack2 recoveredBlock35Stack3 recoveredBlock35Stack4 recoveredBlock35Stack5 recoveredBlock35PC recoveredBlock35Step recoveredBlock35Done recoveredBlock35Result |
    recoveredBlock35Stack0 := self.
    recoveredBlock35PC := 42.
    recoveredBlock35Done := false.
    [recoveredBlock35Done not] whileTrue: [
        recoveredBlock35Step := recoveredBlock35PC.
        recoveredBlock35Step = 42 ifTrue: [
            recoveredBlock35Stack1 := recoveredArg1.
            recoveredBlock35PC := 45.
        ].
        recoveredBlock35Step = 45 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) mdlClass.
            recoveredBlock35PC := 46.
        ].
        recoveredBlock35Step = 46 ifTrue: [
            recoveredBlock35Stack2 := self.
            recoveredBlock35PC := 47.
        ].
        recoveredBlock35Step = 47 ifTrue: [
            recoveredBlock35Stack3 := recoveredArg1.
            recoveredBlock35PC := 50.
        ].
        recoveredBlock35Step = 50 ifTrue: [
            recoveredBlock35Stack3 := (recoveredBlock35Stack3) child.
            recoveredBlock35PC := 52.
        ].
        recoveredBlock35Step = 52 ifTrue: [
            recoveredBlock35Stack2 := (recoveredBlock35Stack2) visitMdlNode: (recoveredBlock35Stack3).
            recoveredBlock35PC := 54.
        ].
        recoveredBlock35Step = 54 ifTrue: [
            recoveredBlock35Stack2 := (recoveredBlock35Stack2) ileExpr.
            recoveredBlock35PC := 56.
        ].
        recoveredBlock35Step = 56 ifTrue: [
            recoveredBlock35Stack3 := 'return/'.
            recoveredBlock35PC := 58.
        ].
        recoveredBlock35Step = 58 ifTrue: [
            recoveredBlock35Stack4 := recoveredArg1.
            recoveredBlock35PC := 61.
        ].
        recoveredBlock35Step = 61 ifTrue: [
            recoveredBlock35Stack4 := (recoveredBlock35Stack4) methodDecl.
            recoveredBlock35PC := 63.
        ].
        recoveredBlock35Step = 63 ifTrue: [
            recoveredBlock35Stack4 := (recoveredBlock35Stack4) errLabel.
            recoveredBlock35PC := 65.
        ].
        recoveredBlock35Step = 65 ifTrue: [
            recoveredBlock35Stack3 := (recoveredBlock35Stack3) , (recoveredBlock35Stack4).
            recoveredBlock35PC := 67.
        ].
        recoveredBlock35Step = 67 ifTrue: [
            recoveredBlock35Stack4 := self.
            recoveredBlock35PC := 68.
        ].
        recoveredBlock35Step = 68 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) cgAssignmentConversion: (recoveredBlock35Stack2) lValue: (recoveredBlock35Stack3) generator: (recoveredBlock35Stack4).
            recoveredBlock35PC := 71.
        ].
        recoveredBlock35Step = 71 ifTrue: [
            recoveredBlock35Local2 := recoveredBlock35Stack1.
            recoveredBlock35PC := 72.
        ].
        recoveredBlock35Step = 72 ifTrue: [
            recoveredBlock35Stack1 := recoveredArg1.
            recoveredBlock35PC := 75.
        ].
        recoveredBlock35Step = 75 ifTrue: [
            recoveredBlock35Stack2 := recoveredBlock35Local2.
            recoveredBlock35PC := 76.
        ].
        recoveredBlock35Step = 76 ifTrue: [
            recoveredBlock35Stack2 := (recoveredBlock35Stack2) ileExpr.
            recoveredBlock35PC := 78.
        ].
        recoveredBlock35Step = 78 ifTrue: [
            recoveredBlock35Stack3 := recoveredArg1.
            recoveredBlock35PC := 81.
        ].
        recoveredBlock35Step = 81 ifTrue: [
            recoveredBlock35Stack3 := (recoveredBlock35Stack3) genIleType.
            recoveredBlock35PC := 83.
        ].
        recoveredBlock35Step = 83 ifTrue: [
            recoveredBlock35Stack4 := recoveredArg1.
            recoveredBlock35PC := 86.
        ].
        recoveredBlock35Step = 86 ifTrue: [
            recoveredBlock35Stack4 := (recoveredBlock35Stack4) methodDecl.
            recoveredBlock35PC := 88.
        ].
        recoveredBlock35Step = 88 ifTrue: [
            recoveredBlock35Stack4 := (recoveredBlock35Stack4) attributes.
            recoveredBlock35PC := 90.
        ].
        recoveredBlock35Step = 90 ifTrue: [
            recoveredBlock35Stack4 := (recoveredBlock35Stack4) returnAttributes.
            recoveredBlock35PC := 92.
        ].
        recoveredBlock35Step = 92 ifTrue: [
            recoveredBlock35Stack2 := (recoveredBlock35Stack2) parmAssign: (recoveredBlock35Stack3) attributes: (recoveredBlock35Stack4).
            recoveredBlock35PC := 94.
        ].
        recoveredBlock35Step = 94 ifTrue: [
            recoveredBlock35Stack0 := (recoveredBlock35Stack0) createIleReturnStmnt: (recoveredBlock35Stack1) expr: (recoveredBlock35Stack2).
            recoveredBlock35PC := 96.
        ].
        recoveredBlock35Step = 96 ifTrue: [
            recoveredBlock35Local1 := recoveredBlock35Stack0.
            recoveredBlock35PC := 97.
        ].
        recoveredBlock35Step = 97 ifTrue: [
            recoveredBlock35Stack0 := recoveredBlock35Local1.
            recoveredBlock35PC := 98.
        ].
        recoveredBlock35Step = 98 ifTrue: [
            recoveredBlock35Stack1 := recoveredBlock35Local1.
            recoveredBlock35PC := 99.
        ].
        recoveredBlock35Step = 99 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) source.
            recoveredBlock35PC := 101.
        ].
        recoveredBlock35Step = 101 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) copy.
            recoveredBlock35PC := 103.
        ].
        recoveredBlock35Step = 103 ifTrue: [
            (recoveredBlock35Stack0) source: (recoveredBlock35Stack1).
            recoveredBlock35PC := 105.
        ].
        recoveredBlock35Step = 105 ifTrue: [
            recoveredBlock35Stack0 := recoveredBlock35Local2.
            recoveredBlock35PC := 106.
        ].
        recoveredBlock35Step = 106 ifTrue: [
            recoveredBlock35Stack0 := (recoveredBlock35Stack0) type.
            recoveredBlock35PC := 108.
        ].
        recoveredBlock35Step = 108 ifTrue: [
            recoveredBlock35Stack0 := (recoveredBlock35Stack0) isCgArithmeticType.
            recoveredBlock35PC := 110.
        ].
        recoveredBlock35Step = 110 ifTrue: [
            (recoveredBlock35Stack0) ifTrue: [recoveredBlock35PC := 114] ifFalse: [recoveredBlock35PC := 125].
        ].
        recoveredBlock35Step = 114 ifTrue: [
            recoveredBlock35Stack0 := self.
            recoveredBlock35PC := 115.
        ].
        recoveredBlock35Step = 115 ifTrue: [
            recoveredBlock35Stack1 := recoveredArg1.
            recoveredBlock35PC := 118.
        ].
        recoveredBlock35Step = 118 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) methodDecl.
            recoveredBlock35PC := 120.
        ].
        recoveredBlock35Step = 120 ifTrue: [
            recoveredBlock35Stack2 := recoveredBlock35Local1.
            recoveredBlock35PC := 121.
        ].
        recoveredBlock35Step = 121 ifTrue: [
            recoveredBlock35Stack2 := (recoveredBlock35Stack2) source.
            recoveredBlock35PC := 123.
        ].
        recoveredBlock35Step = 123 ifTrue: [
            (recoveredBlock35Stack0) addImplInfoComment: (recoveredBlock35Stack1) source: (recoveredBlock35Stack2).
            recoveredBlock35PC := 125.
        ].
        recoveredBlock35Step = 125 ifTrue: [
            recoveredBlock35Stack0 := recoveredBlock35Local1.
            recoveredBlock35PC := 126.
        ].
        recoveredBlock35Step = 126 ifTrue: [
            ^recoveredBlock35Stack0
        ].
    ].
    recoveredBlock35Result
].
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack0) withExpressionContextFrom: (recoveredStack1) lValueType: (recoveredStack2) source: (recoveredStack3) do: (recoveredStack4).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204e3f44; bytecode file offset 0xde0864"
!SGBehaviourGeneratorStrategy methodsFor: 'recovered'!
specialConvertContCall: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Local1 recoveredBlock4Local2 recoveredBlock4Local3 recoveredBlock4Local4 recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4Stack4 recoveredBlock4Stack5 recoveredBlock4Stack6 recoveredBlock4Stack7 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack1 := recoveredArg1.
            recoveredBlock4PC := 13.
        ].
        recoveredBlock4Step = 13 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) receiver.
            recoveredBlock4PC := 14.
        ].
        recoveredBlock4Step = 14 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) visitMdlNode: (recoveredBlock4Stack1).
            recoveredBlock4PC := 15.
        ].
        recoveredBlock4Step = 15 ifTrue: [
            recoveredBlock4Local4 := recoveredBlock4Stack0.
            recoveredBlock4PC := 16.
        ].
        recoveredBlock4Step = 16 ifTrue: [
            recoveredBlock4Stack0 := recoveredArg1.
            recoveredBlock4PC := 19.
        ].
        recoveredBlock4Step = 19 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) receiver.
            recoveredBlock4PC := 20.
        ].
        recoveredBlock4Step = 20 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) mdlClass.
            recoveredBlock4PC := 21.
        ].
        recoveredBlock4Step = 21 ifTrue: [
            recoveredBlock4Local3 := recoveredBlock4Stack0.
            recoveredBlock4PC := 22.
        ].
        recoveredBlock4Step = 22 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 23.
        ].
        recoveredBlock4Step = 23 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) needsComponentIntegerCode.
            recoveredBlock4PC := 24.
        ].
        recoveredBlock4Step = 24 ifTrue: [
            (recoveredBlock4Stack0) ifTrue: [recoveredBlock4PC := 28] ifFalse: [recoveredBlock4PC := 79].
        ].
        recoveredBlock4Step = 28 ifTrue: [
            recoveredBlock4Stack0 := recoveredBlock4Local3.
            recoveredBlock4PC := 29.
        ].
        recoveredBlock4Step = 29 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) isCgLinearFixedPointType.
            recoveredBlock4PC := 31.
        ].
        recoveredBlock4Step = 31 ifTrue: [
            (recoveredBlock4Stack0) ifTrue: [recoveredBlock4PC := 34] ifFalse: [recoveredBlock4PC := 79].
        ].
        recoveredBlock4Step = 34 ifTrue: [
            recoveredBlock4Stack0 := recoveredBlock4Local4.
            recoveredBlock4PC := 35.
        ].
        recoveredBlock4Step = 35 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) ileExpr.
            recoveredBlock4PC := 37.
        ].
        recoveredBlock4Step = 37 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) interval.
            recoveredBlock4PC := 39.
        ].
        recoveredBlock4Step = 39 ifTrue: [
            recoveredBlock4Local2 := recoveredBlock4Stack0.
            recoveredBlock4PC := 40.
        ].
        recoveredBlock4Step = 40 ifTrue: [
            recoveredBlock4Stack0 := recoveredBlock4Local3.
            recoveredBlock4PC := 41.
        ].
        recoveredBlock4Step = 41 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) getImplType.
            recoveredBlock4PC := 43.
        ].
        recoveredBlock4Step = 43 ifTrue: [
            recoveredBlock4Local1 := recoveredBlock4Stack0.
            recoveredBlock4PC := 44.
        ].
        recoveredBlock4Step = 44 ifTrue: [
            recoveredBlock4Stack0 := recoveredBlock4Local1.
            recoveredBlock4PC := 45.
        ].
        recoveredBlock4Step = 45 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) getImplInterval.
            recoveredBlock4PC := 47.
        ].
        recoveredBlock4Step = 47 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Local2.
            recoveredBlock4PC := 48.
        ].
        recoveredBlock4Step = 48 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) includes: (recoveredBlock4Stack1).
            recoveredBlock4PC := 50.
        ].
        recoveredBlock4Step = 50 ifTrue: [
            (recoveredBlock4Stack0) ifTrue: [recoveredBlock4PC := 61] ifFalse: [recoveredBlock4PC := 54].
        ].
        recoveredBlock4Step = 54 ifTrue: [
            recoveredBlock4Stack0 := recoveredBlock4Local4.
            recoveredBlock4PC := 55.
        ].
        recoveredBlock4Step = 55 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) ileExpr.
            recoveredBlock4PC := 57.
        ].
        recoveredBlock4Step = 57 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Local2.
            recoveredBlock4PC := 58.
        ].
        recoveredBlock4Step = 58 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) createImplTypeFromInterval: (recoveredBlock4Stack1).
            recoveredBlock4PC := 60.
        ].
        recoveredBlock4Step = 60 ifTrue: [
            recoveredBlock4Local1 := recoveredBlock4Stack0.
            recoveredBlock4PC := 61.
        ].
        recoveredBlock4Step = 61 ifTrue: [
            recoveredBlock4Stack0 := SGCgTypeFactory.
            recoveredBlock4PC := 63.
        ].
        recoveredBlock4Step = 63 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Local1.
            recoveredBlock4PC := 64.
        ].
        recoveredBlock4Step = 64 ifTrue: [
            recoveredBlock4Stack2 := recoveredBlock4Local4.
            recoveredBlock4PC := 65.
        ].
        recoveredBlock4Step = 65 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) formula.
            recoveredBlock4PC := 67.
        ].
        recoveredBlock4Step = 67 ifTrue: [
            recoveredBlock4Stack3 := recoveredBlock4Local3.
            recoveredBlock4PC := 68.
        ].
        recoveredBlock4Step = 68 ifTrue: [
            recoveredBlock4Stack3 := (recoveredBlock4Stack3) physicalUnit.
            recoveredBlock4PC := 70.
        ].
        recoveredBlock4Step = 70 ifTrue: [
            recoveredBlock4Stack4 := recoveredBlock4Local2.
            recoveredBlock4PC := 71.
        ].
        recoveredBlock4Step = 71 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) createContType: (recoveredBlock4Stack1) formula: (recoveredBlock4Stack2) physicalUnit: (recoveredBlock4Stack3) implInterval: (recoveredBlock4Stack4).
            recoveredBlock4PC := 74.
        ].
        recoveredBlock4Step = 74 ifTrue: [
            recoveredBlock4Local3 := recoveredBlock4Stack0.
            recoveredBlock4PC := 75.
        ].
        recoveredBlock4Step = 75 ifTrue: [
            recoveredBlock4Stack0 := nil.
            recoveredBlock4PC := 76.
        ].
        recoveredBlock4Step = 76 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Stack0.
            recoveredBlock4PC := 77.
        ].
        recoveredBlock4Step = 77 ifTrue: [
            recoveredBlock4Local2 := recoveredBlock4Stack1.
            recoveredBlock4PC := 78.
        ].
        recoveredBlock4Step = 78 ifTrue: [
            recoveredBlock4Local1 := recoveredBlock4Stack0.
            recoveredBlock4PC := 79.
        ].
        recoveredBlock4Step = 79 ifTrue: [
            recoveredBlock4Stack0 := recoveredArg1.
            recoveredBlock4PC := 82.
        ].
        recoveredBlock4Step = 82 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) mdlClass.
            recoveredBlock4PC := 83.
        ].
        recoveredBlock4Step = 83 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Local4.
            recoveredBlock4PC := 84.
        ].
        recoveredBlock4Step = 84 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) ileExpr.
            recoveredBlock4PC := 86.
        ].
        recoveredBlock4Step = 86 ifTrue: [
            recoveredBlock4Stack2 := recoveredBlock4Local3.
            recoveredBlock4PC := 87.
        ].
        recoveredBlock4Step = 87 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) createOpType: (recoveredBlock4Stack2).
            recoveredBlock4PC := 89.
        ].
        recoveredBlock4Step = 89 ifTrue: [
            recoveredBlock4Stack2 := recoveredArg1.
            recoveredBlock4PC := 92.
        ].
        recoveredBlock4Step = 92 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) chooseInterval.
            recoveredBlock4PC := 94.
        ].
        recoveredBlock4Step = 94 ifTrue: [
            recoveredBlock4Stack3 := recoveredArg1.
            recoveredBlock4PC := 97.
        ].
        recoveredBlock4Step = 97 ifTrue: [
            recoveredBlock4Stack3 := (recoveredBlock4Stack3) isTypeOfLeftHandSide.
            recoveredBlock4PC := 99.
        ].
        recoveredBlock4Step = 99 ifTrue: [
            recoveredBlock4Stack4 := recoveredArg1.
            recoveredBlock4PC := 102.
        ].
        recoveredBlock4Step = 102 ifTrue: [
            recoveredBlock4Stack4 := (recoveredBlock4Stack4) isImplicitConversion.
            recoveredBlock4PC := 104.
        ].
        recoveredBlock4Step = 104 ifTrue: [
            recoveredBlock4Stack5 := 'conversion'.
            recoveredBlock4PC := 106.
        ].
        recoveredBlock4Step = 106 ifTrue: [
            recoveredBlock4Stack6 := self.
            recoveredBlock4PC := 107.
        ].
        recoveredBlock4Step = 107 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) cgConversion: (recoveredBlock4Stack1) chooseInterval: (recoveredBlock4Stack2) isTypeOfLeftHandSide: (recoveredBlock4Stack3) implicit: (recoveredBlock4Stack4) lValue: (recoveredBlock4Stack5) generator: (recoveredBlock4Stack6).
            recoveredBlock4PC := 110.
        ].
        recoveredBlock4Step = 110 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack0.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := (recoveredStack1) receiver.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgArithmeticLiteralType.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 124] ifFalse: [recoveredPC := 144].
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := SGCgExpressionContext.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlClass.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := (recoveredStack1) forContextType: (recoveredStack2).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := (recoveredStack1) executeInContext: (recoveredStack2).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredPC := 157.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack2 := (recoveredStack2) receiver.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := (recoveredStack1) withExpressionContextFrom: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack0 := (recoveredStack0) asIaExpr: (recoveredStack1).
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2056ed4c; bytecode file offset 0xe6b688"
!SGBehaviourGeneratorStrategy methodsFor: 'recovered'!
parmAssign: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgTypeWithBehaviour.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := super parmAssign: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightChild.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlClass.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := (recoveredStack3) source.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack4 := [
    | recoveredBlock35Local1 recoveredBlock35Local2 recoveredBlock35Local3 recoveredBlock35Stack0 recoveredBlock35Stack1 recoveredBlock35Stack2 recoveredBlock35Stack3 recoveredBlock35Stack4 recoveredBlock35Stack5 recoveredBlock35Stack6 recoveredBlock35Stack7 recoveredBlock35Stack8 recoveredBlock35Stack9 recoveredBlock35Stack10 recoveredBlock35Stack11 recoveredBlock35PC recoveredBlock35Step recoveredBlock35Done recoveredBlock35Result |
    recoveredBlock35Stack0 := self.
    recoveredBlock35PC := 42.
    recoveredBlock35Done := false.
    [recoveredBlock35Done not] whileTrue: [
        recoveredBlock35Step := recoveredBlock35PC.
        recoveredBlock35Step = 42 ifTrue: [
            recoveredBlock35Stack1 := recoveredArg1.
            recoveredBlock35PC := 45.
        ].
        recoveredBlock35Step = 45 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) rightChild.
            recoveredBlock35PC := 47.
        ].
        recoveredBlock35Step = 47 ifTrue: [
            recoveredBlock35Stack2 := recoveredBlock35Stack1.
            recoveredBlock35PC := 48.
        ].
        recoveredBlock35Step = 48 ifTrue: [
            recoveredBlock35Local1 := recoveredBlock35Stack2.
            recoveredBlock35PC := 49.
        ].
        recoveredBlock35Step = 49 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) isMdlReferencedExpr.
            recoveredBlock35PC := 51.
        ].
        recoveredBlock35Step = 51 ifTrue: [
            (recoveredBlock35Stack1) ifTrue: [recoveredBlock35PC := 54] ifFalse: [recoveredBlock35PC := 58].
        ].
        recoveredBlock35Step = 54 ifTrue: [
            recoveredBlock35Stack1 := recoveredBlock35Local1.
            recoveredBlock35PC := 55.
        ].
        recoveredBlock35Step = 55 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) asMdlDereferencedExpr.
            recoveredBlock35PC := 57.
        ].
        recoveredBlock35Step = 57 ifTrue: [
            recoveredBlock35Local1 := recoveredBlock35Stack1.
            recoveredBlock35PC := 58.
        ].
        recoveredBlock35Step = 58 ifTrue: [
            recoveredBlock35Stack1 := recoveredBlock35Local1.
            recoveredBlock35PC := 59.
        ].
        recoveredBlock35Step = 59 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) isMdlConvertSpecialCall.
            recoveredBlock35PC := 61.
        ].
        recoveredBlock35Step = 61 ifTrue: [
            (recoveredBlock35Stack1) ifTrue: [recoveredBlock35PC := 64] ifFalse: [recoveredBlock35PC := 74].
        ].
        recoveredBlock35Step = 64 ifTrue: [
            recoveredBlock35Stack1 := recoveredBlock35Local1.
            recoveredBlock35PC := 65.
        ].
        recoveredBlock35Step = 65 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) isImplicitConversion.
            recoveredBlock35PC := 67.
        ].
        recoveredBlock35Step = 67 ifTrue: [
            (recoveredBlock35Stack1) ifTrue: [recoveredBlock35PC := 70] ifFalse: [recoveredBlock35PC := 74].
        ].
        recoveredBlock35Step = 70 ifTrue: [
            recoveredBlock35Stack1 := recoveredBlock35Local1.
            recoveredBlock35PC := 71.
        ].
        recoveredBlock35Step = 71 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) receiver.
            recoveredBlock35PC := 73.
        ].
        recoveredBlock35Step = 73 ifTrue: [
            recoveredBlock35Local1 := recoveredBlock35Stack1.
            recoveredBlock35PC := 74.
        ].
        recoveredBlock35Step = 74 ifTrue: [
            recoveredBlock35Stack1 := recoveredArg1.
            recoveredBlock35PC := 77.
        ].
        recoveredBlock35Step = 77 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) mdlClass.
            recoveredBlock35PC := 78.
        ].
        recoveredBlock35Step = 78 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) isCgArithmeticType.
            recoveredBlock35PC := 80.
        ].
        recoveredBlock35Step = 80 ifTrue: [
            (recoveredBlock35Stack1) ifTrue: [recoveredBlock35PC := 84] ifFalse: [recoveredBlock35PC := 197].
        ].
        recoveredBlock35Step = 84 ifTrue: [
            recoveredBlock35Stack1 := recoveredBlock35Local1.
            recoveredBlock35PC := 85.
        ].
        recoveredBlock35Step = 85 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) isMdlModelTypedExpression.
            recoveredBlock35PC := 87.
        ].
        recoveredBlock35Step = 87 ifTrue: [
            (recoveredBlock35Stack1) ifTrue: [recoveredBlock35PC := 90] ifFalse: [recoveredBlock35PC := 197].
        ].
        recoveredBlock35Step = 90 ifTrue: [
            recoveredBlock35Stack1 := recoveredArg1.
            recoveredBlock35PC := 93.
        ].
        recoveredBlock35Step = 93 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) mdlClass.
            recoveredBlock35PC := 94.
        ].
        recoveredBlock35Step = 94 ifTrue: [
            recoveredBlock35Stack2 := recoveredBlock35Local1.
            recoveredBlock35PC := 95.
        ].
        recoveredBlock35Step = 95 ifTrue: [
            recoveredBlock35Stack2 := (recoveredBlock35Stack2) mdlClass.
            recoveredBlock35PC := 96.
        ].
        recoveredBlock35Step = 96 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) isCgFormulaIdentical: (recoveredBlock35Stack2).
            recoveredBlock35PC := 98.
        ].
        recoveredBlock35Step = 98 ifTrue: [
            (recoveredBlock35Stack1) ifTrue: [recoveredBlock35PC := 102] ifFalse: [recoveredBlock35PC := 118].
        ].
        recoveredBlock35Step = 102 ifTrue: [
            recoveredBlock35Stack1 := recoveredArg1.
            recoveredBlock35PC := 105.
        ].
        recoveredBlock35Step = 105 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) mdlClass.
            recoveredBlock35PC := 106.
        ].
        recoveredBlock35Step = 106 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) getImplInterval.
            recoveredBlock35PC := 108.
        ].
        recoveredBlock35Step = 108 ifTrue: [
            recoveredBlock35Stack2 := recoveredBlock35Local1.
            recoveredBlock35PC := 109.
        ].
        recoveredBlock35Step = 109 ifTrue: [
            recoveredBlock35Stack2 := (recoveredBlock35Stack2) mdlClass.
            recoveredBlock35PC := 110.
        ].
        recoveredBlock35Step = 110 ifTrue: [
            recoveredBlock35Stack2 := (recoveredBlock35Stack2) getImplInterval.
            recoveredBlock35PC := 112.
        ].
        recoveredBlock35Step = 112 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) includes: (recoveredBlock35Stack2).
            recoveredBlock35PC := 114.
        ].
        recoveredBlock35Step = 114 ifTrue: [
            (recoveredBlock35Stack1) ifTrue: [recoveredBlock35PC := 197] ifFalse: [recoveredBlock35PC := 118].
        ].
        recoveredBlock35Step = 118 ifTrue: [
            recoveredBlock35Stack1 := recoveredArg1.
            recoveredBlock35PC := 121.
        ].
        recoveredBlock35Step = 121 ifTrue: [
            recoveredBlock35Stack2 := 7.
            recoveredBlock35PC := 123.
        ].
        recoveredBlock35Step = 123 ifTrue: [
            recoveredBlock35Stack3 := recoveredBlock35Local1.
            recoveredBlock35PC := 124.
        ].
        recoveredBlock35Step = 124 ifTrue: [
            recoveredBlock35Stack3 := (recoveredBlock35Stack3) errLabel.
            recoveredBlock35PC := 126.
        ].
        recoveredBlock35Step = 126 ifTrue: [
            recoveredBlock35Stack4 := recoveredArg1.
            recoveredBlock35PC := 129.
        ].
        recoveredBlock35Step = 129 ifTrue: [
            recoveredBlock35Stack4 := (recoveredBlock35Stack4) variable.
            recoveredBlock35PC := 131.
        ].
        recoveredBlock35Step = 131 ifTrue: [
            recoveredBlock35Stack4 := (recoveredBlock35Stack4) errLabel.
            recoveredBlock35PC := 133.
        ].
        recoveredBlock35Step = 133 ifTrue: [
            recoveredBlock35Stack5 := recoveredArg1.
            recoveredBlock35PC := 136.
        ].
        recoveredBlock35Step = 136 ifTrue: [
            recoveredBlock35Stack5 := (recoveredBlock35Stack5) source.
            recoveredBlock35PC := 138.
        ].
        recoveredBlock35Step = 138 ifTrue: [
            recoveredBlock35Stack6 := Array.
            recoveredBlock35PC := 140.
        ].
        recoveredBlock35Step = 140 ifTrue: [
            recoveredBlock35Stack7 := recoveredArg1.
            recoveredBlock35PC := 143.
        ].
        recoveredBlock35Step = 143 ifTrue: [
            recoveredBlock35Stack7 := (recoveredBlock35Stack7) source.
            recoveredBlock35PC := 145.
        ].
        recoveredBlock35Step = 145 ifTrue: [
            recoveredBlock35Stack8 := recoveredBlock35Local1.
            recoveredBlock35PC := 146.
        ].
        recoveredBlock35Step = 146 ifTrue: [
            recoveredBlock35Stack8 := (recoveredBlock35Stack8) source.
            recoveredBlock35PC := 148.
        ].
        recoveredBlock35Step = 148 ifTrue: [
            recoveredBlock35Stack6 := (recoveredBlock35Stack6) with: (recoveredBlock35Stack7) with: (recoveredBlock35Stack8).
            recoveredBlock35PC := 150.
        ].
        recoveredBlock35Step = 150 ifTrue: [
            recoveredBlock35Stack7 := Array.
            recoveredBlock35PC := 152.
        ].
        recoveredBlock35Step = 152 ifTrue: [
            recoveredBlock35Stack8 := 'Implementation of '.
            recoveredBlock35PC := 154.
        ].
        recoveredBlock35Step = 154 ifTrue: [
            recoveredBlock35Stack9 := recoveredArg1.
            recoveredBlock35PC := 157.
        ].
        recoveredBlock35Step = 157 ifTrue: [
            recoveredBlock35Stack9 := (recoveredBlock35Stack9) errLabel.
            recoveredBlock35PC := 159.
        ].
        recoveredBlock35Step = 159 ifTrue: [
            recoveredBlock35Stack8 := (recoveredBlock35Stack8) , (recoveredBlock35Stack9).
            recoveredBlock35PC := 161.
        ].
        recoveredBlock35Step = 161 ifTrue: [
            recoveredBlock35Stack9 := ': '.
            recoveredBlock35PC := 163.
        ].
        recoveredBlock35Step = 163 ifTrue: [
            recoveredBlock35Stack8 := (recoveredBlock35Stack8) , (recoveredBlock35Stack9).
            recoveredBlock35PC := 165.
        ].
        recoveredBlock35Step = 165 ifTrue: [
            recoveredBlock35Stack9 := recoveredArg1.
            recoveredBlock35PC := 168.
        ].
        recoveredBlock35Step = 168 ifTrue: [
            recoveredBlock35Stack9 := (recoveredBlock35Stack9) mdlClass.
            recoveredBlock35PC := 169.
        ].
        recoveredBlock35Step = 169 ifTrue: [
            recoveredBlock35Stack9 := (recoveredBlock35Stack9) errLabelWithImpl.
            recoveredBlock35PC := 171.
        ].
        recoveredBlock35Step = 171 ifTrue: [
            recoveredBlock35Stack8 := (recoveredBlock35Stack8) , (recoveredBlock35Stack9).
            recoveredBlock35PC := 173.
        ].
        recoveredBlock35Step = 173 ifTrue: [
            recoveredBlock35Stack9 := 'Implementation of '.
            recoveredBlock35PC := 175.
        ].
        recoveredBlock35Step = 175 ifTrue: [
            recoveredBlock35Stack10 := recoveredBlock35Local1.
            recoveredBlock35PC := 176.
        ].
        recoveredBlock35Step = 176 ifTrue: [
            recoveredBlock35Stack10 := (recoveredBlock35Stack10) errLabel.
            recoveredBlock35PC := 178.
        ].
        recoveredBlock35Step = 178 ifTrue: [
            recoveredBlock35Stack9 := (recoveredBlock35Stack9) , (recoveredBlock35Stack10).
            recoveredBlock35PC := 180.
        ].
        recoveredBlock35Step = 180 ifTrue: [
            recoveredBlock35Stack10 := ': '.
            recoveredBlock35PC := 182.
        ].
        recoveredBlock35Step = 182 ifTrue: [
            recoveredBlock35Stack9 := (recoveredBlock35Stack9) , (recoveredBlock35Stack10).
            recoveredBlock35PC := 184.
        ].
        recoveredBlock35Step = 184 ifTrue: [
            recoveredBlock35Stack10 := recoveredBlock35Local1.
            recoveredBlock35PC := 185.
        ].
        recoveredBlock35Step = 185 ifTrue: [
            recoveredBlock35Stack10 := (recoveredBlock35Stack10) mdlClass.
            recoveredBlock35PC := 186.
        ].
        recoveredBlock35Step = 186 ifTrue: [
            recoveredBlock35Stack10 := (recoveredBlock35Stack10) errLabelWithImpl.
            recoveredBlock35PC := 188.
        ].
        recoveredBlock35Step = 188 ifTrue: [
            recoveredBlock35Stack9 := (recoveredBlock35Stack9) , (recoveredBlock35Stack10).
            recoveredBlock35PC := 190.
        ].
        recoveredBlock35Step = 190 ifTrue: [
            recoveredBlock35Stack7 := (recoveredBlock35Stack7) with: (recoveredBlock35Stack8) with: (recoveredBlock35Stack9).
            recoveredBlock35PC := 192.
        ].
        recoveredBlock35Step = 192 ifTrue: [
            recoveredBlock35Stack5 := (recoveredBlock35Stack5) createMultiSource: (recoveredBlock35Stack6) labels: (recoveredBlock35Stack7).
            recoveredBlock35PC := 194.
        ].
        recoveredBlock35Step = 194 ifTrue: [
            (recoveredBlock35Stack1) iaWarningNo: (recoveredBlock35Stack2) with: (recoveredBlock35Stack3) with: (recoveredBlock35Stack4) source: (recoveredBlock35Stack5).
            recoveredBlock35PC := 197.
        ].
        recoveredBlock35Step = 197 ifTrue: [
            recoveredBlock35Stack1 := recoveredArg1.
            recoveredBlock35PC := 200.
        ].
        recoveredBlock35Step = 200 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) mdlClass.
            recoveredBlock35PC := 201.
        ].
        recoveredBlock35Step = 201 ifTrue: [
            recoveredBlock35Stack2 := self.
            recoveredBlock35PC := 202.
        ].
        recoveredBlock35Step = 202 ifTrue: [
            recoveredBlock35Stack3 := recoveredArg1.
            recoveredBlock35PC := 205.
        ].
        recoveredBlock35Step = 205 ifTrue: [
            recoveredBlock35Stack3 := (recoveredBlock35Stack3) rightChild.
            recoveredBlock35PC := 207.
        ].
        recoveredBlock35Step = 207 ifTrue: [
            recoveredBlock35Stack2 := (recoveredBlock35Stack2) visitMdlNode: (recoveredBlock35Stack3).
            recoveredBlock35PC := 209.
        ].
        recoveredBlock35Step = 209 ifTrue: [
            recoveredBlock35Stack2 := (recoveredBlock35Stack2) ileExpr.
            recoveredBlock35PC := 211.
        ].
        recoveredBlock35Step = 211 ifTrue: [
            recoveredBlock35Stack3 := recoveredArg1.
            recoveredBlock35PC := 214.
        ].
        recoveredBlock35Step = 214 ifTrue: [
            recoveredBlock35Stack3 := (recoveredBlock35Stack3) variable.
            recoveredBlock35PC := 216.
        ].
        recoveredBlock35Step = 216 ifTrue: [
            recoveredBlock35Stack3 := (recoveredBlock35Stack3) errLabel.
            recoveredBlock35PC := 218.
        ].
        recoveredBlock35Step = 218 ifTrue: [
            recoveredBlock35Stack4 := self.
            recoveredBlock35PC := 219.
        ].
        recoveredBlock35Step = 219 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) cgAssignmentConversion: (recoveredBlock35Stack2) lValue: (recoveredBlock35Stack3) generator: (recoveredBlock35Stack4).
            recoveredBlock35PC := 222.
        ].
        recoveredBlock35Step = 222 ifTrue: [
            recoveredBlock35Local2 := recoveredBlock35Stack1.
            recoveredBlock35PC := 223.
        ].
        recoveredBlock35Step = 223 ifTrue: [
            recoveredBlock35Stack1 := recoveredBlock35Local2.
            recoveredBlock35PC := 224.
        ].
        recoveredBlock35Step = 224 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) ileExpr.
            recoveredBlock35PC := 226.
        ].
        recoveredBlock35Step = 226 ifTrue: [
            recoveredBlock35Stack2 := recoveredArg1.
            recoveredBlock35PC := 229.
        ].
        recoveredBlock35Step = 229 ifTrue: [
            recoveredBlock35Stack2 := (recoveredBlock35Stack2) genIleType.
            recoveredBlock35PC := 231.
        ].
        recoveredBlock35Step = 231 ifTrue: [
            recoveredBlock35Stack3 := recoveredArg1.
            recoveredBlock35PC := 234.
        ].
        recoveredBlock35Step = 234 ifTrue: [
            recoveredBlock35Stack3 := (recoveredBlock35Stack3) attributes.
            recoveredBlock35PC := 236.
        ].
        recoveredBlock35Step = 236 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) parmAssign: (recoveredBlock35Stack2) attributes: (recoveredBlock35Stack3).
            recoveredBlock35PC := 238.
        ].
        recoveredBlock35Step = 238 ifTrue: [
            recoveredBlock35Stack0 := (recoveredBlock35Stack0) asIaExpr: (recoveredBlock35Stack1).
            recoveredBlock35PC := 240.
        ].
        recoveredBlock35Step = 240 ifTrue: [
            ^recoveredBlock35Stack0
        ].
    ].
    recoveredBlock35Result
].
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            (recoveredStack0) withExpressionContextFrom: (recoveredStack1) lValueType: (recoveredStack2) source: (recoveredStack3) do: (recoveredStack4).
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2057e0c4; bytecode file offset 0xe7a9f0"
!SGBehaviourGeneratorStrategy methodsFor: 'recovered'!
binaryArithmeticExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredStack12 recoveredStack13 recoveredStack14 recoveredStack15 recoveredStack16 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgTypeWithBehaviour.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := super binaryArithmeticExpr: (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := (recoveredStack3) mdlClass.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) handleIaExpr: (recoveredStack2) mdlClass: (recoveredStack3).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftChild.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) visitMdlNode: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileExpr.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightChild.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) visitMdlNode: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileExpr.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClass.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := [
    | recoveredBlock60Value0 recoveredBlock60Value1 |
    recoveredBlock60Value0 := recoveredArg1.
    recoveredBlock60Value1 := (recoveredBlock60Value0) operator.
    recoveredBlock60Value1
].
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := 'add'.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock74Value0 recoveredBlock74Value1 recoveredBlock74Value2 recoveredBlock74Value3 |
    recoveredBlock74Value0 := recoveredLocal2.
    recoveredBlock74Value1 := recoveredLocal4.
    recoveredBlock74Value2 := recoveredLocal3.
    recoveredBlock74Value3 := (recoveredBlock74Value0) cgAdd: (recoveredBlock74Value1) and: (recoveredBlock74Value2).
    recoveredBlock74Value3
].
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack3 := 'sub'.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack4 := [
    | recoveredBlock94Value0 recoveredBlock94Value1 recoveredBlock94Value2 recoveredBlock94Value3 |
    recoveredBlock94Value0 := recoveredLocal2.
    recoveredBlock94Value1 := recoveredLocal4.
    recoveredBlock94Value2 := recoveredLocal3.
    recoveredBlock94Value3 := (recoveredBlock94Value0) cgSub: (recoveredBlock94Value1) and: (recoveredBlock94Value2).
    recoveredBlock94Value3
].
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack5 := 'mul'.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack6 := [
    | recoveredBlock114Value0 recoveredBlock114Value1 recoveredBlock114Value2 recoveredBlock114Value3 |
    recoveredBlock114Value0 := recoveredLocal2.
    recoveredBlock114Value1 := recoveredLocal4.
    recoveredBlock114Value2 := recoveredLocal3.
    recoveredBlock114Value3 := (recoveredBlock114Value0) cgMul: (recoveredBlock114Value1) and: (recoveredBlock114Value2).
    recoveredBlock114Value3
].
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack7 := 'div'.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack8 := [
    | recoveredBlock134Value0 recoveredBlock134Value1 recoveredBlock134Value2 recoveredBlock134Value3 |
    recoveredBlock134Value0 := recoveredLocal2.
    recoveredBlock134Value1 := recoveredLocal4.
    recoveredBlock134Value2 := recoveredLocal3.
    recoveredBlock134Value3 := (recoveredBlock134Value0) cgDiv: (recoveredBlock134Value1) and: (recoveredBlock134Value2).
    recoveredBlock134Value3
].
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack9 := 'rem'.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack10 := [
    | recoveredBlock154Value0 recoveredBlock154Value1 recoveredBlock154Value2 recoveredBlock154Value3 |
    recoveredBlock154Value0 := recoveredLocal2.
    recoveredBlock154Value1 := recoveredLocal4.
    recoveredBlock154Value2 := recoveredLocal3.
    recoveredBlock154Value3 := (recoveredBlock154Value0) cgRem: (recoveredBlock154Value1) and: (recoveredBlock154Value2).
    recoveredBlock154Value3
].
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack11 := 'min'.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack12 := [
    | recoveredBlock174Value0 recoveredBlock174Value1 recoveredBlock174Value2 recoveredBlock174Value3 |
    recoveredBlock174Value0 := recoveredLocal2.
    recoveredBlock174Value1 := recoveredLocal4.
    recoveredBlock174Value2 := recoveredLocal3.
    recoveredBlock174Value3 := (recoveredBlock174Value0) cgMin: (recoveredBlock174Value1) and: (recoveredBlock174Value2).
    recoveredBlock174Value3
].
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack13 := 'max'.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack14 := [
    | recoveredBlock194Value0 recoveredBlock194Value1 recoveredBlock194Value2 recoveredBlock194Value3 |
    recoveredBlock194Value0 := recoveredLocal2.
    recoveredBlock194Value1 := recoveredLocal4.
    recoveredBlock194Value2 := recoveredLocal3.
    recoveredBlock194Value3 := (recoveredBlock194Value0) cgMax: (recoveredBlock194Value1) and: (recoveredBlock194Value2).
    recoveredBlock194Value3
].
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack15 := [
    | recoveredBlock212Stack0 recoveredBlock212Stack1 recoveredBlock212Stack2 recoveredBlock212Stack3 recoveredBlock212PC recoveredBlock212Step recoveredBlock212Done recoveredBlock212Result |
    recoveredBlock212Stack0 := self.
    recoveredBlock212PC := 218.
    recoveredBlock212Done := false.
    [recoveredBlock212Done not] whileTrue: [
        recoveredBlock212Step := recoveredBlock212PC.
        recoveredBlock212Step = 218 ifTrue: [
            recoveredBlock212Stack1 := [
    false
].
            recoveredBlock212PC := 220.
        ].
        recoveredBlock212Step = 220 ifTrue: [
            recoveredBlock212PC := 226.
        ].
        recoveredBlock212Step = 226 ifTrue: [
            recoveredBlock212Stack2 := [
    | recoveredBlock212Block226Value0 recoveredBlock212Block226Value1 recoveredBlock212Block226Value2 |
    recoveredBlock212Block226Value0 := recoveredArg1.
    recoveredBlock212Block226Value1 := (recoveredBlock212Block226Value0) operator.
    recoveredBlock212Block226Value2 := ('Unknown operation ') , (recoveredBlock212Block226Value1).
    recoveredBlock212Block226Value2
].
            recoveredBlock212PC := 242.
        ].
        recoveredBlock212Step = 242 ifTrue: [
            (recoveredBlock212Stack0) ileAssert: (recoveredBlock212Stack1) message: (recoveredBlock212Stack2).
            recoveredBlock212PC := 244.
        ].
        recoveredBlock212Step = 244 ifTrue: [
            recoveredBlock212Stack0 := nil.
            recoveredBlock212PC := 245.
        ].
        recoveredBlock212Step = 245 ifTrue: [
            recoveredBlock212Result := recoveredBlock212Stack0.
            recoveredBlock212Done := true.
        ].
    ].
    recoveredBlock212Result
].
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack0 := (recoveredStack0) case: (recoveredStack1) do: (recoveredStack2) case: (recoveredStack3) do: (recoveredStack4) case: (recoveredStack5) do: (recoveredStack6) case: (recoveredStack7) do: (recoveredStack8) case: (recoveredStack9) do: (recoveredStack10) case: (recoveredStack11) do: (recoveredStack12) case: (recoveredStack13) do: (recoveredStack14) others: (recoveredStack15).
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack0 := (recoveredStack0) asIaExpr: (recoveredStack1).
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2059557c; bytecode file offset 0xe91ec4"
!SGBehaviourGeneratorStrategy methodsFor: 'recovered'!
assignExpr: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgTypeWithBehaviour.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := super assignExpr: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightChild.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) variable.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlClass.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := (recoveredStack3) source.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack4 := [
    | recoveredBlock37Local1 recoveredBlock37Local2 recoveredBlock37Local3 recoveredBlock37Local4 recoveredBlock37Local5 recoveredBlock37Local6 recoveredBlock37Stack0 recoveredBlock37Stack1 recoveredBlock37Stack2 recoveredBlock37Stack3 recoveredBlock37Stack4 recoveredBlock37Stack5 recoveredBlock37PC recoveredBlock37Step recoveredBlock37Done recoveredBlock37Result |
    recoveredBlock37Stack0 := self.
    recoveredBlock37PC := 44.
    recoveredBlock37Done := false.
    [recoveredBlock37Done not] whileTrue: [
        recoveredBlock37Step := recoveredBlock37PC.
        recoveredBlock37Step = 44 ifTrue: [
            recoveredBlock37Stack1 := recoveredArg1.
            recoveredBlock37PC := 47.
        ].
        recoveredBlock37Step = 47 ifTrue: [
            recoveredBlock37Stack1 := (recoveredBlock37Stack1) rightChild.
            recoveredBlock37PC := 49.
        ].
        recoveredBlock37Step = 49 ifTrue: [
            recoveredBlock37Local6 := recoveredBlock37Stack1.
            recoveredBlock37PC := 51.
        ].
        recoveredBlock37Step = 51 ifTrue: [
            recoveredBlock37Stack1 := recoveredBlock37Local6.
            recoveredBlock37PC := 53.
        ].
        recoveredBlock37Step = 53 ifTrue: [
            recoveredBlock37Stack1 := (recoveredBlock37Stack1) isMdlDereferencedExpr.
            recoveredBlock37PC := 55.
        ].
        recoveredBlock37Step = 55 ifTrue: [
            (recoveredBlock37Stack1) ifTrue: [recoveredBlock37PC := 58] ifFalse: [recoveredBlock37PC := 64].
        ].
        recoveredBlock37Step = 58 ifTrue: [
            recoveredBlock37Stack1 := recoveredBlock37Local6.
            recoveredBlock37PC := 60.
        ].
        recoveredBlock37Step = 60 ifTrue: [
            recoveredBlock37Stack1 := (recoveredBlock37Stack1) expr.
            recoveredBlock37PC := 62.
        ].
        recoveredBlock37Step = 62 ifTrue: [
            recoveredBlock37Local6 := recoveredBlock37Stack1.
            recoveredBlock37PC := 64.
        ].
        recoveredBlock37Step = 64 ifTrue: [
            recoveredBlock37Stack1 := recoveredBlock37Local6.
            recoveredBlock37PC := 66.
        ].
        recoveredBlock37Step = 66 ifTrue: [
            recoveredBlock37Stack1 := (recoveredBlock37Stack1) isRteRead.
            recoveredBlock37PC := 68.
        ].
        recoveredBlock37Step = 68 ifTrue: [
            (recoveredBlock37Stack1) ifTrue: [recoveredBlock37PC := 72] ifFalse: [recoveredBlock37PC := 92].
        ].
        recoveredBlock37Step = 72 ifTrue: [
            recoveredBlock37Stack1 := self.
            recoveredBlock37PC := 73.
        ].
        recoveredBlock37Step = 73 ifTrue: [
            recoveredBlock37Stack2 := recoveredBlock37Local6.
            recoveredBlock37PC := 75.
        ].
        recoveredBlock37Step = 75 ifTrue: [
            recoveredBlock37Stack3 := recoveredArg1.
            recoveredBlock37PC := 78.
        ].
        recoveredBlock37Step = 78 ifTrue: [
            recoveredBlock37Stack3 := (recoveredBlock37Stack3) variable.
            recoveredBlock37PC := 80.
        ].
        recoveredBlock37Step = 80 ifTrue: [
            recoveredBlock37Stack1 := (recoveredBlock37Stack1) autosarRTERead: (recoveredBlock37Stack2) assignedTo: (recoveredBlock37Stack3).
            recoveredBlock37PC := 82.
        ].
        recoveredBlock37Step = 82 ifTrue: [
            recoveredBlock37Stack2 := recoveredBlock37Stack1.
            recoveredBlock37PC := 83.
        ].
        recoveredBlock37Step = 83 ifTrue: [
            recoveredBlock37Local1 := recoveredBlock37Stack2.
            recoveredBlock37PC := 84.
        ].
        recoveredBlock37Step = 84 ifTrue: [
            (recoveredBlock37Stack1 == nil) ifTrue: [recoveredBlock37PC := 90] ifFalse: [recoveredBlock37PC := 88].
        ].
        recoveredBlock37Step = 88 ifTrue: [
            recoveredBlock37Stack1 := recoveredBlock37Local1.
            recoveredBlock37PC := 89.
        ].
        recoveredBlock37Step = 89 ifTrue: [
            ^recoveredBlock37Stack1
        ].
        recoveredBlock37Step = 90 ifTrue: [
            recoveredBlock37Stack1 := nil.
            recoveredBlock37PC := 91.
        ].
        recoveredBlock37Step = 91 ifTrue: [
            recoveredBlock37Local1 := recoveredBlock37Stack1.
            recoveredBlock37PC := 92.
        ].
        recoveredBlock37Step = 92 ifTrue: [
            recoveredBlock37Stack1 := recoveredArg1.
            recoveredBlock37PC := 95.
        ].
        recoveredBlock37Step = 95 ifTrue: [
            recoveredBlock37Stack1 := (recoveredBlock37Stack1) rightChild.
            recoveredBlock37PC := 97.
        ].
        recoveredBlock37Step = 97 ifTrue: [
            recoveredBlock37Stack0 := (recoveredBlock37Stack0) visitMdlNode: (recoveredBlock37Stack1).
            recoveredBlock37PC := 99.
        ].
        recoveredBlock37Step = 99 ifTrue: [
            recoveredBlock37Stack0 := (recoveredBlock37Stack0) ileExpr.
            recoveredBlock37PC := 101.
        ].
        recoveredBlock37Step = 101 ifTrue: [
            recoveredBlock37Local4 := recoveredBlock37Stack0.
            recoveredBlock37PC := 102.
        ].
        recoveredBlock37Step = 102 ifTrue: [
            recoveredBlock37Stack0 := recoveredArg1.
            recoveredBlock37PC := 105.
        ].
        recoveredBlock37Step = 105 ifTrue: [
            recoveredBlock37Stack0 := (recoveredBlock37Stack0) variable.
            recoveredBlock37PC := 107.
        ].
        recoveredBlock37Step = 107 ifTrue: [
            recoveredBlock37Stack0 := (recoveredBlock37Stack0) isMdlNeedsImplAssign.
            recoveredBlock37PC := 109.
        ].
        recoveredBlock37Step = 109 ifTrue: [
            (recoveredBlock37Stack0) ifTrue: [recoveredBlock37PC := 112] ifFalse: [recoveredBlock37PC := 126].
        ].
        recoveredBlock37Step = 112 ifTrue: [
            recoveredBlock37Stack0 := self.
            recoveredBlock37PC := 113.
        ].
        recoveredBlock37Step = 113 ifTrue: [
            recoveredBlock37Stack1 := recoveredArg1.
            recoveredBlock37PC := 116.
        ].
        recoveredBlock37Step = 116 ifTrue: [
            recoveredBlock37Stack1 := (recoveredBlock37Stack1) variable.
            recoveredBlock37PC := 118.
        ].
        recoveredBlock37Step = 118 ifTrue: [
            recoveredBlock37Stack1 := (recoveredBlock37Stack1) varDecl.
            recoveredBlock37PC := 120.
        ].
        recoveredBlock37Step = 120 ifTrue: [
            recoveredBlock37Stack2 := self.
            recoveredBlock37PC := 121.
        ].
        recoveredBlock37Step = 121 ifTrue: [
            recoveredBlock37Stack3 := recoveredBlock37Local4.
            recoveredBlock37PC := 122.
        ].
        recoveredBlock37Step = 122 ifTrue: [
            recoveredBlock37Stack2 := (recoveredBlock37Stack2) asIaExpr: (recoveredBlock37Stack3).
            recoveredBlock37PC := 124.
        ].
        recoveredBlock37Step = 124 ifTrue: [
            (recoveredBlock37Stack0) createIaExprPropagatedImpl: (recoveredBlock37Stack1) expr: (recoveredBlock37Stack2).
            recoveredBlock37PC := 126.
        ].
        recoveredBlock37Step = 126 ifTrue: [
            recoveredBlock37Stack0 := recoveredArg1.
            recoveredBlock37PC := 129.
        ].
        recoveredBlock37Step = 129 ifTrue: [
            recoveredBlock37Stack0 := (recoveredBlock37Stack0) mdlClass.
            recoveredBlock37PC := 130.
        ].
        recoveredBlock37Step = 130 ifTrue: [
            recoveredBlock37Stack1 := recoveredBlock37Local4.
            recoveredBlock37PC := 131.
        ].
        recoveredBlock37Step = 131 ifTrue: [
            recoveredBlock37Stack2 := recoveredArg1.
            recoveredBlock37PC := 134.
        ].
        recoveredBlock37Step = 134 ifTrue: [
            recoveredBlock37Stack2 := (recoveredBlock37Stack2) variable.
            recoveredBlock37PC := 136.
        ].
        recoveredBlock37Step = 136 ifTrue: [
            recoveredBlock37Stack2 := (recoveredBlock37Stack2) errLabel.
            recoveredBlock37PC := 138.
        ].
        recoveredBlock37Step = 138 ifTrue: [
            recoveredBlock37Stack3 := self.
            recoveredBlock37PC := 139.
        ].
        recoveredBlock37Step = 139 ifTrue: [
            recoveredBlock37Stack0 := (recoveredBlock37Stack0) cgAssignmentConversion: (recoveredBlock37Stack1) lValue: (recoveredBlock37Stack2) generator: (recoveredBlock37Stack3).
            recoveredBlock37PC := 142.
        ].
        recoveredBlock37Step = 142 ifTrue: [
            recoveredBlock37Local4 := recoveredBlock37Stack0.
            recoveredBlock37PC := 143.
        ].
        recoveredBlock37Step = 143 ifTrue: [
            recoveredBlock37Stack0 := self.
            recoveredBlock37PC := 144.
        ].
        recoveredBlock37Step = 144 ifTrue: [
            recoveredBlock37Stack0 := (recoveredBlock37Stack0) ileBuilder.
            recoveredBlock37PC := 146.
        ].
        recoveredBlock37Step = 146 ifTrue: [
            recoveredBlock37Stack1 := self.
            recoveredBlock37PC := 147.
        ].
        recoveredBlock37Step = 147 ifTrue: [
            recoveredBlock37Stack2 := recoveredArg1.
            recoveredBlock37PC := 150.
        ].
        recoveredBlock37Step = 150 ifTrue: [
            recoveredBlock37Stack2 := (recoveredBlock37Stack2) variable.
            recoveredBlock37PC := 152.
        ].
        recoveredBlock37Step = 152 ifTrue: [
            recoveredBlock37Stack1 := (recoveredBlock37Stack1) visitMdlNode: (recoveredBlock37Stack2).
            recoveredBlock37PC := 154.
        ].
        recoveredBlock37Step = 154 ifTrue: [
            recoveredBlock37Stack1 := (recoveredBlock37Stack1) ileExpr.
            recoveredBlock37PC := 156.
        ].
        recoveredBlock37Step = 156 ifTrue: [
            recoveredBlock37Stack0 := (recoveredBlock37Stack0) createLValue: (recoveredBlock37Stack1).
            recoveredBlock37PC := 158.
        ].
        recoveredBlock37Step = 158 ifTrue: [
            recoveredBlock37Local5 := recoveredBlock37Stack0.
            recoveredBlock37PC := 160.
        ].
        recoveredBlock37Step = 160 ifTrue: [
            recoveredBlock37Stack0 := recoveredArg1.
            recoveredBlock37PC := 163.
        ].
        recoveredBlock37Step = 163 ifTrue: [
            recoveredBlock37Stack0 := (recoveredBlock37Stack0) attributes.
            recoveredBlock37PC := 165.
        ].
        recoveredBlock37Step = 165 ifTrue: [
            recoveredBlock37Local3 := recoveredBlock37Stack0.
            recoveredBlock37PC := 166.
        ].
        recoveredBlock37Step = 166 ifTrue: [
            recoveredBlock37Stack0 := recoveredBlock37Local5.
            recoveredBlock37PC := 168.
        ].
        recoveredBlock37Step = 168 ifTrue: [
            recoveredBlock37Stack0 := (recoveredBlock37Stack0) type.
            recoveredBlock37PC := 170.
        ].
        recoveredBlock37Step = 170 ifTrue: [
            recoveredBlock37Stack0 := (recoveredBlock37Stack0) isCgWrapAroundIntegerype.
            recoveredBlock37PC := 172.
        ].
        recoveredBlock37Step = 172 ifTrue: [
            (recoveredBlock37Stack0) ifTrue: [recoveredBlock37PC := 176] ifFalse: [recoveredBlock37PC := 179].
        ].
        recoveredBlock37Step = 176 ifTrue: [
            recoveredBlock37Stack0 := recoveredBlock37Local3.
            recoveredBlock37PC := 177.
        ].
        recoveredBlock37Step = 177 ifTrue: [
            (recoveredBlock37Stack0) cgAttrNoLimitOverflow.
            recoveredBlock37PC := 179.
        ].
        recoveredBlock37Step = 179 ifTrue: [
            recoveredBlock37Stack0 := recoveredArg1.
            recoveredBlock37PC := 182.
        ].
        recoveredBlock37Step = 182 ifTrue: [
            recoveredBlock37Stack0 := (recoveredBlock37Stack0) mdlClass.
            recoveredBlock37PC := 183.
        ].
        recoveredBlock37Step = 183 ifTrue: [
            recoveredBlock37Stack0 := (recoveredBlock37Stack0) isCgCopyByMemcpyType.
            recoveredBlock37PC := 185.
        ].
        recoveredBlock37Step = 185 ifTrue: [
            (recoveredBlock37Stack0) ifTrue: [recoveredBlock37PC := 188] ifFalse: [recoveredBlock37PC := 206].
        ].
        recoveredBlock37Step = 188 ifTrue: [
            recoveredBlock37Stack0 := self.
            recoveredBlock37PC := 189.
        ].
        recoveredBlock37Step = 189 ifTrue: [
            recoveredBlock37Stack0 := (recoveredBlock37Stack0) dataStructureGenerator.
            recoveredBlock37PC := 191.
        ].
        recoveredBlock37Step = 191 ifTrue: [
            recoveredBlock37Stack1 := recoveredArg1.
            recoveredBlock37PC := 194.
        ].
        recoveredBlock37Step = 194 ifTrue: [
            recoveredBlock37Stack1 := (recoveredBlock37Stack1) mdlClass.
            recoveredBlock37PC := 195.
        ].
        recoveredBlock37Step = 195 ifTrue: [
            recoveredBlock37Stack2 := recoveredBlock37Local5.
            recoveredBlock37PC := 197.
        ].
        recoveredBlock37Step = 197 ifTrue: [
            recoveredBlock37Stack3 := recoveredBlock37Local4.
            recoveredBlock37PC := 198.
        ].
        recoveredBlock37Step = 198 ifTrue: [
            recoveredBlock37Stack4 := false.
            recoveredBlock37PC := 199.
        ].
        recoveredBlock37Step = 199 ifTrue: [
            recoveredBlock37Stack0 := (recoveredBlock37Stack0) createCopyStatement: (recoveredBlock37Stack1) lhs: (recoveredBlock37Stack2) rhs: (recoveredBlock37Stack3) messageCopy: (recoveredBlock37Stack4).
            recoveredBlock37PC := 202.
        ].
        recoveredBlock37Step = 202 ifTrue: [
            recoveredBlock37Local2 := recoveredBlock37Stack0.
            recoveredBlock37PC := 203.
        ].
        recoveredBlock37Step = 203 ifTrue: [
            recoveredBlock37PC := 221.
        ].
        recoveredBlock37Step = 206 ifTrue: [
            recoveredBlock37Stack0 := self.
            recoveredBlock37PC := 207.
        ].
        recoveredBlock37Step = 207 ifTrue: [
            recoveredBlock37Stack0 := (recoveredBlock37Stack0) ileBuilder.
            recoveredBlock37PC := 209.
        ].
        recoveredBlock37Step = 209 ifTrue: [
            recoveredBlock37Stack1 := recoveredBlock37Local4.
            recoveredBlock37PC := 210.
        ].
        recoveredBlock37Step = 210 ifTrue: [
            recoveredBlock37Stack2 := recoveredBlock37Local5.
            recoveredBlock37PC := 212.
        ].
        recoveredBlock37Step = 212 ifTrue: [
            recoveredBlock37Stack3 := recoveredArg1.
            recoveredBlock37PC := 215.
        ].
        recoveredBlock37Step = 215 ifTrue: [
            recoveredBlock37Stack3 := (recoveredBlock37Stack3) attributes.
            recoveredBlock37PC := 217.
        ].
        recoveredBlock37Step = 217 ifTrue: [
            recoveredBlock37Stack0 := (recoveredBlock37Stack0) assignExpr: (recoveredBlock37Stack1) to: (recoveredBlock37Stack2) attributes: (recoveredBlock37Stack3).
            recoveredBlock37PC := 220.
        ].
        recoveredBlock37Step = 220 ifTrue: [
            recoveredBlock37Local2 := recoveredBlock37Stack0.
            recoveredBlock37PC := 221.
        ].
        recoveredBlock37Step = 221 ifTrue: [
            recoveredBlock37Stack0 := recoveredArg1.
            recoveredBlock37PC := 224.
        ].
        recoveredBlock37Step = 224 ifTrue: [
            recoveredBlock37Stack0 := (recoveredBlock37Stack0) needsIntegerCode.
            recoveredBlock37PC := 226.
        ].
        recoveredBlock37Step = 226 ifTrue: [
            (recoveredBlock37Stack0) ifTrue: [recoveredBlock37PC := 230] ifFalse: [recoveredBlock37PC := 273].
        ].
        recoveredBlock37Step = 230 ifTrue: [
            recoveredBlock37Stack0 := recoveredBlock37Local2.
            recoveredBlock37PC := 231.
        ].
        recoveredBlock37Step = 231 ifTrue: [
            recoveredBlock37Stack0 := (recoveredBlock37Stack0) isIleAssignExpr.
            recoveredBlock37PC := 233.
        ].
        recoveredBlock37Step = 233 ifTrue: [
            (recoveredBlock37Stack0) ifTrue: [recoveredBlock37PC := 236] ifFalse: [recoveredBlock37PC := 273].
        ].
        recoveredBlock37Step = 236 ifTrue: [
            recoveredBlock37Stack0 := recoveredBlock37Local2.
            recoveredBlock37PC := 237.
        ].
        recoveredBlock37Step = 237 ifTrue: [
            recoveredBlock37Stack0 := (recoveredBlock37Stack0) lValue.
            recoveredBlock37PC := 239.
        ].
        recoveredBlock37Step = 239 ifTrue: [
            recoveredBlock37Stack0 := (recoveredBlock37Stack0) expr.
            recoveredBlock37PC := 241.
        ].
        recoveredBlock37Step = 241 ifTrue: [
            recoveredBlock37Stack0 := (recoveredBlock37Stack0) isIleTempVarIdentifier.
            recoveredBlock37PC := 243.
        ].
        recoveredBlock37Step = 243 ifTrue: [
            (recoveredBlock37Stack0) ifTrue: [recoveredBlock37PC := 273] ifFalse: [recoveredBlock37PC := 246].
        ].
        recoveredBlock37Step = 246 ifTrue: [
            recoveredBlock37Stack0 := recoveredBlock37Local2.
            recoveredBlock37PC := 247.
        ].
        recoveredBlock37Step = 247 ifTrue: [
            recoveredBlock37Stack0 := (recoveredBlock37Stack0) lValue.
            recoveredBlock37PC := 249.
        ].
        recoveredBlock37Step = 249 ifTrue: [
            recoveredBlock37Stack1 := recoveredBlock37Local2.
            recoveredBlock37PC := 250.
        ].
        recoveredBlock37Step = 250 ifTrue: [
            recoveredBlock37Stack1 := (recoveredBlock37Stack1) lValue.
            recoveredBlock37PC := 252.
        ].
        recoveredBlock37Step = 252 ifTrue: [
            recoveredBlock37Stack1 := (recoveredBlock37Stack1) source.
            recoveredBlock37PC := 254.
        ].
        recoveredBlock37Step = 254 ifTrue: [
            recoveredBlock37Stack1 := (recoveredBlock37Stack1) copy.
            recoveredBlock37PC := 256.
        ].
        recoveredBlock37Step = 256 ifTrue: [
            (recoveredBlock37Stack0) source: (recoveredBlock37Stack1).
            recoveredBlock37PC := 258.
        ].
        recoveredBlock37Step = 258 ifTrue: [
            recoveredBlock37Stack0 := self.
            recoveredBlock37PC := 259.
        ].
        recoveredBlock37Step = 259 ifTrue: [
            recoveredBlock37Stack1 := recoveredArg1.
            recoveredBlock37PC := 262.
        ].
        recoveredBlock37Step = 262 ifTrue: [
            recoveredBlock37Stack1 := (recoveredBlock37Stack1) variable.
            recoveredBlock37PC := 264.
        ].
        recoveredBlock37Step = 264 ifTrue: [
            recoveredBlock37Stack1 := (recoveredBlock37Stack1) varDecl.
            recoveredBlock37PC := 266.
        ].
        recoveredBlock37Step = 266 ifTrue: [
            recoveredBlock37Stack2 := recoveredBlock37Local2.
            recoveredBlock37PC := 267.
        ].
        recoveredBlock37Step = 267 ifTrue: [
            recoveredBlock37Stack2 := (recoveredBlock37Stack2) lValue.
            recoveredBlock37PC := 269.
        ].
        recoveredBlock37Step = 269 ifTrue: [
            recoveredBlock37Stack2 := (recoveredBlock37Stack2) source.
            recoveredBlock37PC := 271.
        ].
        recoveredBlock37Step = 271 ifTrue: [
            (recoveredBlock37Stack0) addImplInfoComment: (recoveredBlock37Stack1) source: (recoveredBlock37Stack2).
            recoveredBlock37PC := 273.
        ].
        recoveredBlock37Step = 273 ifTrue: [
            recoveredBlock37Stack0 := self.
            recoveredBlock37PC := 274.
        ].
        recoveredBlock37Step = 274 ifTrue: [
            recoveredBlock37Stack1 := recoveredBlock37Local2.
            recoveredBlock37PC := 275.
        ].
        recoveredBlock37Step = 275 ifTrue: [
            recoveredBlock37Stack0 := (recoveredBlock37Stack0) asIaExpr: (recoveredBlock37Stack1).
            recoveredBlock37PC := 277.
        ].
        recoveredBlock37Step = 277 ifTrue: [
            ^recoveredBlock37Stack0
        ].
    ].
    recoveredBlock37Result
].
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            (recoveredStack0) withExpressionContextFrom: (recoveredStack1) lValueType: (recoveredStack2) source: (recoveredStack3) do: (recoveredStack4).
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205a08b8; bytecode file offset 0xe9d1d0"
!SGBehaviourGeneratorStrategy methodsFor: 'recovered'!
assignInOutTempVar: recoveredArg1 to: recoveredArg2 type: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgTypeWithBehaviour.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 35] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgTypeWithBehaviour.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 35] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := super assignInOutTempVar: (recoveredStack2) to: (recoveredStack3) type: (recoveredStack4).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlConvertSpecialCall.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 157] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack4 := (recoveredStack4) source.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock56Value0 recoveredBlock56Value1 recoveredBlock56Value2 recoveredBlock56Value3 recoveredBlock56Value4 recoveredBlock56Value5 |
    recoveredBlock56Value0 := recoveredArg2.
    recoveredBlock56Value1 := (recoveredBlock56Value0) mdlClass.
    recoveredBlock56Value2 := recoveredArg1.
    recoveredBlock56Value3 := recoveredArg2.
    recoveredBlock56Value4 := (recoveredBlock56Value3) errLabel.
    recoveredBlock56Value5 := (recoveredBlock56Value1) cgConversion: (recoveredBlock56Value2) chooseInterval: (true) isTypeOfLeftHandSide: (true) implicit: (true) lValue: (recoveredBlock56Value4) generator: (self).
    recoveredBlock56Value5
].
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) withExpressionContextFrom: (recoveredStack2) lValueType: (recoveredStack3) source: (recoveredStack4) do: (recoveredStack5).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := (recoveredStack2) type.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack3 := (recoveredStack3) mdlClass.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack4 := (recoveredStack4) source.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock103Value0 recoveredBlock103Value1 recoveredBlock103Value2 recoveredBlock103Value3 recoveredBlock103Value4 recoveredBlock103Value5 recoveredBlock103Value6 recoveredBlock103Value7 recoveredBlock103Value8 recoveredBlock103Value9 recoveredBlock103Value10 recoveredBlock103Value11 recoveredBlock103Value12 recoveredBlock103Value13 recoveredBlock103Value14 |
    recoveredBlock103Value0 := recoveredArg2.
    recoveredBlock103Value1 := (recoveredBlock103Value0) mdlClass.
    recoveredBlock103Value2 := recoveredLocal2.
    recoveredBlock103Value3 := recoveredArg2.
    recoveredBlock103Value4 := (recoveredBlock103Value3) errLabel.
    recoveredBlock103Value5 := (recoveredBlock103Value1) cgAssignmentConversion: (recoveredBlock103Value2) lValue: (recoveredBlock103Value4) generator: (self).
    recoveredLocal2 := recoveredBlock103Value5.
    recoveredBlock103Value6 := (self) ileBuilder.
    recoveredBlock103Value7 := recoveredLocal2.
    recoveredBlock103Value8 := recoveredArg2.
    recoveredBlock103Value9 := (self) visitMdlNode: (recoveredBlock103Value8).
    recoveredBlock103Value10 := (recoveredBlock103Value9) ileExpr.
    recoveredBlock103Value11 := (recoveredBlock103Value10) asIleLValue.
    recoveredBlock103Value12 := recoveredArg2.
    recoveredBlock103Value13 := (recoveredBlock103Value12) attributes.
    recoveredBlock103Value14 := (recoveredBlock103Value6) assignExpr: (recoveredBlock103Value7) to: (recoveredBlock103Value11) attributes: (recoveredBlock103Value13).
    recoveredBlock103Value14
].
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := (recoveredStack1) withExpressionContextFrom: (recoveredStack2) lValueType: (recoveredStack3) source: (recoveredStack4) do: (recoveredStack5).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := (recoveredStack1) type.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlClass.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack3 := (recoveredStack3) source.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack4 := [
    | recoveredBlock171Value0 recoveredBlock171Value1 recoveredBlock171Value2 recoveredBlock171Value3 recoveredBlock171Value4 recoveredBlock171Value5 recoveredBlock171Value6 recoveredBlock171Value7 recoveredBlock171Value8 recoveredBlock171Value9 recoveredBlock171Value10 recoveredBlock171Value11 |
    recoveredBlock171Value0 := recoveredArg2.
    recoveredBlock171Value1 := (recoveredBlock171Value0) receiver.
    recoveredBlock171Value2 := (recoveredBlock171Value1) mdlClass.
    recoveredBlock171Value3 := recoveredArg1.
    recoveredBlock171Value4 := recoveredArg2.
    recoveredBlock171Value5 := (recoveredBlock171Value4) chooseInterval.
    recoveredBlock171Value6 := recoveredArg2.
    recoveredBlock171Value7 := (recoveredBlock171Value6) isTypeOfLeftHandSide.
    recoveredBlock171Value8 := recoveredArg2.
    recoveredBlock171Value9 := (recoveredBlock171Value8) isImplicitConversion.
    recoveredBlock171Value10 := recoveredLocal1.
    recoveredBlock171Value11 := (recoveredBlock171Value2) cgConversion: (recoveredBlock171Value3) chooseInterval: (recoveredBlock171Value5) isTypeOfLeftHandSide: (recoveredBlock171Value7) implicit: (recoveredBlock171Value9) lValue: (recoveredBlock171Value10) generator: (self).
    recoveredBlock171Value11
].
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack0 := (recoveredStack0) withExpressionContextFrom: (recoveredStack1) lValueType: (recoveredStack2) source: (recoveredStack3) do: (recoveredStack4).
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack1 := (recoveredStack1) receiver.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock222Value0 recoveredBlock222Value1 recoveredBlock222Value2 recoveredBlock222Value3 recoveredBlock222Value4 recoveredBlock222Value5 recoveredBlock222Value6 recoveredBlock222Value7 recoveredBlock222Value8 recoveredBlock222Value9 recoveredBlock222Value10 recoveredBlock222Value11 recoveredBlock222Value12 recoveredBlock222Value13 recoveredBlock222Value14 recoveredBlock222Value15 recoveredBlock222Value16 recoveredBlock222Value17 recoveredBlock222Value18 recoveredBlock222Value19 recoveredBlock222Value20 recoveredBlock222Value21 |
    recoveredBlock222Value0 := recoveredArg2.
    recoveredBlock222Value1 := (recoveredBlock222Value0) receiver.
    recoveredBlock222Value2 := recoveredArg2.
    recoveredBlock222Value3 := (recoveredBlock222Value2) receiver.
    recoveredBlock222Value4 := (recoveredBlock222Value3) mdlClass.
    (recoveredBlock222Value1) setExactGoalScaleFromImpl: (recoveredBlock222Value4).
    recoveredBlock222Value5 := recoveredArg2.
    recoveredBlock222Value6 := (recoveredBlock222Value5) receiver.
    recoveredBlock222Value7 := recoveredArg2.
    recoveredBlock222Value8 := (recoveredBlock222Value7) receiver.
    recoveredBlock222Value9 := (recoveredBlock222Value8) varDecl.
    recoveredBlock222Value10 := (recoveredBlock222Value9) attributes.
    (recoveredBlock222Value6) attributes: (recoveredBlock222Value10).
    recoveredBlock222Value11 := recoveredArg2.
    recoveredBlock222Value12 := (recoveredBlock222Value11) receiver.
    recoveredBlock222Value13 := (self) visitMdlNode: (recoveredBlock222Value12).
    recoveredLocal1 := recoveredBlock222Value13.
    recoveredBlock222Value14 := (self) ileBuilder.
    recoveredBlock222Value15 := recoveredLocal2.
    recoveredBlock222Value16 := recoveredLocal1.
    recoveredBlock222Value17 := (recoveredBlock222Value16) asIleLValue.
    recoveredBlock222Value18 := recoveredArg2.
    recoveredBlock222Value19 := (recoveredBlock222Value18) receiver.
    recoveredBlock222Value20 := (recoveredBlock222Value19) attributes.
    recoveredBlock222Value21 := (recoveredBlock222Value14) assignExpr: (recoveredBlock222Value15) to: (recoveredBlock222Value17) attributes: (recoveredBlock222Value20).
    recoveredBlock222Value21
].
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack0 := (recoveredStack0) withExpressionContextFrom: (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205ab45c; bytecode file offset 0xea7d7c"
!SGBehaviourGeneratorStrategy methodsFor: 'recovered'!
assertIntervalSpecialCall: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Local1 recoveredBlock4Local2 recoveredBlock4Local3 recoveredBlock4Local4 recoveredBlock4Local5 recoveredBlock4Local6 recoveredBlock4Local7 recoveredBlock4Local8 recoveredBlock4Local9 recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4Stack4 recoveredBlock4Stack5 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack1 := recoveredArg1.
            recoveredBlock4PC := 13.
        ].
        recoveredBlock4Step = 13 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) receiver.
            recoveredBlock4PC := 14.
        ].
        recoveredBlock4Step = 14 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) visitMdlNode: (recoveredBlock4Stack1).
            recoveredBlock4PC := 15.
        ].
        recoveredBlock4Step = 15 ifTrue: [
            recoveredBlock4Local6 := recoveredBlock4Stack0.
            recoveredBlock4PC := 17.
        ].
        recoveredBlock4Step = 17 ifTrue: [
            recoveredBlock4Stack0 := recoveredBlock4Local6.
            recoveredBlock4PC := 19.
        ].
        recoveredBlock4Step = 19 ifTrue: [
            recoveredBlock4Stack1 := SGIlAbstractExpr.
            recoveredBlock4PC := 21.
        ].
        recoveredBlock4Step = 21 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) isKindOf: (recoveredBlock4Stack1).
            recoveredBlock4PC := 22.
        ].
        recoveredBlock4Step = 22 ifTrue: [
            (recoveredBlock4Stack0) ifTrue: [recoveredBlock4PC := 26] ifFalse: [recoveredBlock4PC := 42].
        ].
        recoveredBlock4Step = 26 ifTrue: [
            recoveredBlock4Stack0 := recoveredArg1.
            recoveredBlock4PC := 29.
        ].
        recoveredBlock4Step = 29 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) interval.
            recoveredBlock4PC := 31.
        ].
        recoveredBlock4Step = 31 ifTrue: [
            recoveredBlock4Local8 := recoveredBlock4Stack0.
            recoveredBlock4PC := 33.
        ].
        recoveredBlock4Step = 33 ifTrue: [
            recoveredBlock4Stack0 := recoveredBlock4Local6.
            recoveredBlock4PC := 35.
        ].
        recoveredBlock4Step = 35 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) interval.
            recoveredBlock4PC := 37.
        ].
        recoveredBlock4Step = 37 ifTrue: [
            recoveredBlock4Local7 := recoveredBlock4Stack0.
            recoveredBlock4PC := 39.
        ].
        recoveredBlock4Step = 39 ifTrue: [
            recoveredBlock4PC := 95.
        ].
        recoveredBlock4Step = 42 ifTrue: [
            recoveredBlock4Stack0 := recoveredBlock4Local6.
            recoveredBlock4PC := 44.
        ].
        recoveredBlock4Step = 44 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) isIaScalarTypedExpr.
            recoveredBlock4PC := 46.
        ].
        recoveredBlock4Step = 46 ifTrue: [
            (recoveredBlock4Stack0) ifTrue: [recoveredBlock4PC := 50] ifFalse: [recoveredBlock4PC := 80].
        ].
        recoveredBlock4Step = 50 ifTrue: [
            recoveredBlock4Stack0 := recoveredArg1.
            recoveredBlock4PC := 53.
        ].
        recoveredBlock4Step = 53 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) interval.
            recoveredBlock4PC := 55.
        ].
        recoveredBlock4Step = 55 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Local6.
            recoveredBlock4PC := 57.
        ].
        recoveredBlock4Step = 57 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) formula.
            recoveredBlock4PC := 59.
        ].
        recoveredBlock4Step = 59 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) transformedBy: (recoveredBlock4Stack1).
            recoveredBlock4PC := 61.
        ].
        recoveredBlock4Step = 61 ifTrue: [
            recoveredBlock4Local8 := recoveredBlock4Stack0.
            recoveredBlock4PC := 63.
        ].
        recoveredBlock4Step = 63 ifTrue: [
            recoveredBlock4Stack0 := recoveredBlock4Local6.
            recoveredBlock4PC := 65.
        ].
        recoveredBlock4Step = 65 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) ileExpr.
            recoveredBlock4PC := 67.
        ].
        recoveredBlock4Step = 67 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) interval.
            recoveredBlock4PC := 69.
        ].
        recoveredBlock4Step = 69 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Local6.
            recoveredBlock4PC := 71.
        ].
        recoveredBlock4Step = 71 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) formula.
            recoveredBlock4PC := 73.
        ].
        recoveredBlock4Step = 73 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) transformedByInverse: (recoveredBlock4Stack1).
            recoveredBlock4PC := 75.
        ].
        recoveredBlock4Step = 75 ifTrue: [
            recoveredBlock4Local7 := recoveredBlock4Stack0.
            recoveredBlock4PC := 77.
        ].
        recoveredBlock4Step = 77 ifTrue: [
            recoveredBlock4PC := 95.
        ].
        recoveredBlock4Step = 80 ifTrue: [
            recoveredBlock4Stack0 := recoveredArg1.
            recoveredBlock4PC := 83.
        ].
        recoveredBlock4Step = 83 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) interval.
            recoveredBlock4PC := 85.
        ].
        recoveredBlock4Step = 85 ifTrue: [
            recoveredBlock4Local8 := recoveredBlock4Stack0.
            recoveredBlock4PC := 87.
        ].
        recoveredBlock4Step = 87 ifTrue: [
            recoveredBlock4Stack0 := recoveredBlock4Local6.
            recoveredBlock4PC := 89.
        ].
        recoveredBlock4Step = 89 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) ileExpr.
            recoveredBlock4PC := 91.
        ].
        recoveredBlock4Step = 91 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) interval.
            recoveredBlock4PC := 93.
        ].
        recoveredBlock4Step = 93 ifTrue: [
            recoveredBlock4Local7 := recoveredBlock4Stack0.
            recoveredBlock4PC := 95.
        ].
        recoveredBlock4Step = 95 ifTrue: [
            recoveredBlock4Stack0 := recoveredBlock4Local6.
            recoveredBlock4PC := 97.
        ].
        recoveredBlock4Step = 97 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) ileExpr.
            recoveredBlock4PC := 99.
        ].
        recoveredBlock4Step = 99 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) interval.
            recoveredBlock4PC := 101.
        ].
        recoveredBlock4Step = 101 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Local8.
            recoveredBlock4PC := 103.
        ].
        recoveredBlock4Step = 103 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) intersect: (recoveredBlock4Stack1).
            recoveredBlock4PC := 105.
        ].
        recoveredBlock4Step = 105 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) isEmpty.
            recoveredBlock4PC := 107.
        ].
        recoveredBlock4Step = 107 ifTrue: [
            (recoveredBlock4Stack0) ifTrue: [recoveredBlock4PC := 110] ifFalse: [recoveredBlock4PC := 136].
        ].
        recoveredBlock4Step = 110 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 111.
        ].
        recoveredBlock4Step = 111 ifTrue: [
            recoveredBlock4Stack1 := 76.
            recoveredBlock4PC := 114.
        ].
        recoveredBlock4Step = 114 ifTrue: [
            recoveredBlock4Stack2 := recoveredArg1.
            recoveredBlock4PC := 117.
        ].
        recoveredBlock4Step = 117 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) interval.
            recoveredBlock4PC := 119.
        ].
        recoveredBlock4Step = 119 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) asString.
            recoveredBlock4PC := 121.
        ].
        recoveredBlock4Step = 121 ifTrue: [
            recoveredBlock4Stack3 := recoveredBlock4Local7.
            recoveredBlock4PC := 123.
        ].
        recoveredBlock4Step = 123 ifTrue: [
            recoveredBlock4Stack3 := (recoveredBlock4Stack3) asString.
            recoveredBlock4PC := 125.
        ].
        recoveredBlock4Step = 125 ifTrue: [
            recoveredBlock4Stack4 := recoveredArg1.
            recoveredBlock4PC := 128.
        ].
        recoveredBlock4Step = 128 ifTrue: [
            recoveredBlock4Stack4 := (recoveredBlock4Stack4) source.
            recoveredBlock4PC := 130.
        ].
        recoveredBlock4Step = 130 ifTrue: [
            (recoveredBlock4Stack0) ileErrorNo: (recoveredBlock4Stack1) with: (recoveredBlock4Stack2) with: (recoveredBlock4Stack3) source: (recoveredBlock4Stack4).
            recoveredBlock4PC := 133.
        ].
        recoveredBlock4Step = 133 ifTrue: [
            recoveredBlock4Stack0 := recoveredBlock4Local6.
            recoveredBlock4PC := 135.
        ].
        recoveredBlock4Step = 135 ifTrue: [
            ^recoveredBlock4Stack0
        ].
        recoveredBlock4Step = 136 ifTrue: [
            recoveredBlock4Stack0 := recoveredBlock4Local8.
            recoveredBlock4PC := 138.
        ].
        recoveredBlock4Step = 138 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Local6.
            recoveredBlock4PC := 140.
        ].
        recoveredBlock4Step = 140 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) ileExpr.
            recoveredBlock4PC := 142.
        ].
        recoveredBlock4Step = 142 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) interval.
            recoveredBlock4PC := 144.
        ].
        recoveredBlock4Step = 144 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) includes: (recoveredBlock4Stack1).
            recoveredBlock4PC := 146.
        ].
        recoveredBlock4Step = 146 ifTrue: [
            (recoveredBlock4Stack0) ifTrue: [recoveredBlock4PC := 150] ifFalse: [recoveredBlock4PC := 178].
        ].
        recoveredBlock4Step = 150 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 151.
        ].
        recoveredBlock4Step = 151 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) expander.
            recoveredBlock4PC := 153.
        ].
        recoveredBlock4Step = 153 ifTrue: [
            recoveredBlock4Stack1 := 77.
            recoveredBlock4PC := 156.
        ].
        recoveredBlock4Step = 156 ifTrue: [
            recoveredBlock4Stack2 := recoveredArg1.
            recoveredBlock4PC := 159.
        ].
        recoveredBlock4Step = 159 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) interval.
            recoveredBlock4PC := 161.
        ].
        recoveredBlock4Step = 161 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) asString.
            recoveredBlock4PC := 163.
        ].
        recoveredBlock4Step = 163 ifTrue: [
            recoveredBlock4Stack3 := recoveredBlock4Local7.
            recoveredBlock4PC := 165.
        ].
        recoveredBlock4Step = 165 ifTrue: [
            recoveredBlock4Stack3 := (recoveredBlock4Stack3) asString.
            recoveredBlock4PC := 167.
        ].
        recoveredBlock4Step = 167 ifTrue: [
            recoveredBlock4Stack4 := recoveredArg1.
            recoveredBlock4PC := 170.
        ].
        recoveredBlock4Step = 170 ifTrue: [
            recoveredBlock4Stack4 := (recoveredBlock4Stack4) source.
            recoveredBlock4PC := 172.
        ].
        recoveredBlock4Step = 172 ifTrue: [
            (recoveredBlock4Stack0) ileInfoNo: (recoveredBlock4Stack1) with: (recoveredBlock4Stack2) with: (recoveredBlock4Stack3) source: (recoveredBlock4Stack4).
            recoveredBlock4PC := 175.
        ].
        recoveredBlock4Step = 175 ifTrue: [
            recoveredBlock4PC := 214.
        ].
        recoveredBlock4Step = 178 ifTrue: [
            recoveredBlock4Stack0 := recoveredBlock4Local6.
            recoveredBlock4PC := 180.
        ].
        recoveredBlock4Step = 180 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) ileExpr.
            recoveredBlock4PC := 182.
        ].
        recoveredBlock4Step = 182 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) interval.
            recoveredBlock4PC := 184.
        ].
        recoveredBlock4Step = 184 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Local8.
            recoveredBlock4PC := 186.
        ].
        recoveredBlock4Step = 186 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) includes: (recoveredBlock4Stack1).
            recoveredBlock4PC := 188.
        ].
        recoveredBlock4Step = 188 ifTrue: [
            (recoveredBlock4Stack0) ifTrue: [recoveredBlock4PC := 214] ifFalse: [recoveredBlock4PC := 192].
        ].
        recoveredBlock4Step = 192 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 193.
        ].
        recoveredBlock4Step = 193 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) expander.
            recoveredBlock4PC := 195.
        ].
        recoveredBlock4Step = 195 ifTrue: [
            recoveredBlock4Stack1 := 76.
            recoveredBlock4PC := 198.
        ].
        recoveredBlock4Step = 198 ifTrue: [
            recoveredBlock4Stack2 := recoveredBlock4Local8.
            recoveredBlock4PC := 200.
        ].
        recoveredBlock4Step = 200 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) asString.
            recoveredBlock4PC := 202.
        ].
        recoveredBlock4Step = 202 ifTrue: [
            recoveredBlock4Stack3 := recoveredBlock4Local7.
            recoveredBlock4PC := 204.
        ].
        recoveredBlock4Step = 204 ifTrue: [
            recoveredBlock4Stack3 := (recoveredBlock4Stack3) asString.
            recoveredBlock4PC := 206.
        ].
        recoveredBlock4Step = 206 ifTrue: [
            recoveredBlock4Stack4 := recoveredArg1.
            recoveredBlock4PC := 209.
        ].
        recoveredBlock4Step = 209 ifTrue: [
            recoveredBlock4Stack4 := (recoveredBlock4Stack4) source.
            recoveredBlock4PC := 211.
        ].
        recoveredBlock4Step = 211 ifTrue: [
            (recoveredBlock4Stack0) ileInfoNo: (recoveredBlock4Stack1) with: (recoveredBlock4Stack2) with: (recoveredBlock4Stack3) source: (recoveredBlock4Stack4).
            recoveredBlock4PC := 214.
        ].
        recoveredBlock4Step = 214 ifTrue: [
            recoveredBlock4Stack0 := recoveredBlock4Local6.
            recoveredBlock4PC := 216.
        ].
        recoveredBlock4Step = 216 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) ileExpr.
            recoveredBlock4PC := 218.
        ].
        recoveredBlock4Step = 218 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) isIleConstant.
            recoveredBlock4PC := 220.
        ].
        recoveredBlock4Step = 220 ifTrue: [
            (recoveredBlock4Stack0) ifTrue: [recoveredBlock4PC := 224] ifFalse: [recoveredBlock4PC := 227].
        ].
        recoveredBlock4Step = 224 ifTrue: [
            recoveredBlock4Stack0 := recoveredBlock4Local6.
            recoveredBlock4PC := 226.
        ].
        recoveredBlock4Step = 226 ifTrue: [
            ^recoveredBlock4Stack0
        ].
        recoveredBlock4Step = 227 ifTrue: [
            recoveredBlock4Stack0 := recoveredArg1.
            recoveredBlock4PC := 230.
        ].
        recoveredBlock4Step = 230 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) mdlClass.
            recoveredBlock4PC := 232.
        ].
        recoveredBlock4Step = 232 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) getImplType.
            recoveredBlock4PC := 234.
        ].
        recoveredBlock4Step = 234 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) isRBInteger.
            recoveredBlock4PC := 236.
        ].
        recoveredBlock4Step = 236 ifTrue: [
            (recoveredBlock4Stack0) ifTrue: [recoveredBlock4PC := 240] ifFalse: [recoveredBlock4PC := 246].
        ].
        recoveredBlock4Step = 240 ifTrue: [
            recoveredBlock4Stack0 := recoveredBlock4Local8.
            recoveredBlock4PC := 242.
        ].
        recoveredBlock4Step = 242 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) asInteger.
            recoveredBlock4PC := 244.
        ].
        recoveredBlock4Step = 244 ifTrue: [
            recoveredBlock4Local8 := recoveredBlock4Stack0.
            recoveredBlock4PC := 246.
        ].
        recoveredBlock4Step = 246 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 247.
        ].
        recoveredBlock4Step = 247 ifTrue: [
            recoveredBlock4Stack1 := recoveredArg1.
            recoveredBlock4PC := 250.
        ].
        recoveredBlock4Step = 250 ifTrue: [
            recoveredBlock4Stack2 := recoveredBlock4Local6.
            recoveredBlock4PC := 252.
        ].
        recoveredBlock4Step = 252 ifTrue: [
            recoveredBlock4Stack3 := recoveredBlock4Local8.
            recoveredBlock4PC := 254.
        ].
        recoveredBlock4Step = 254 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) buildAssertIntervalSpecialCall: (recoveredBlock4Stack1) receiver: (recoveredBlock4Stack2) interval: (recoveredBlock4Stack3).
            recoveredBlock4PC := 257.
        ].
        recoveredBlock4Step = 257 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack0.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack0 := (recoveredStack0) expressionContext.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 298] ifFalse: [recoveredPC := 266].
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack1 := (recoveredStack1) receiver.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack2 := (recoveredStack2) receiver.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlClass.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack3 := (recoveredStack3) source.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack4 := [
    | recoveredBlock282Value0 recoveredBlock282Value1 |
    recoveredBlock282Value0 := recoveredLocal1.
    recoveredBlock282Value1 := (recoveredBlock282Value0) value.
    recoveredBlock282Value1
].
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack0 := (recoveredStack0) withExpressionContextFrom: (recoveredStack1) lValueType: (recoveredStack2) source: (recoveredStack3) do: (recoveredStack4).
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205cafa4; bytecode file offset 0xec78dc"
!SGBehaviourGeneratorStrategy methodsFor: 'recovered'!
unaryArithmeticExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgTypeWithBehaviour.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := super unaryArithmeticExpr: (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := (recoveredStack3) mdlClass.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) handleIaExpr: (recoveredStack2) mdlClass: (recoveredStack3).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlIncrement.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlDecrement.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 230].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := (recoveredStack2) child.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock50Value0 recoveredBlock50Value1 recoveredBlock50Value2 recoveredBlock50Value3 recoveredBlock50Value4 recoveredBlock50Value5 recoveredBlock50Value6 recoveredBlock50Value7 recoveredBlock50Value8 recoveredBlock50Value9 recoveredBlock50Value10 recoveredBlock50Value11 recoveredBlock50Value12 |
    recoveredBlock50Value0 := recoveredArg1.
    recoveredBlock50Value1 := (recoveredBlock50Value0) child.
    recoveredBlock50Value2 := (self) visitMdlNode: (recoveredBlock50Value1).
    recoveredBlock50Value3 := (recoveredBlock50Value2) ileExpr.
    recoveredLocal4 := recoveredBlock50Value3.
    recoveredBlock50Value4 := recoveredArg1.
    recoveredBlock50Value5 := (recoveredBlock50Value4) mdlClass.
    recoveredLocal2 := recoveredBlock50Value5.
    recoveredBlock50Value6 := [
    | recoveredBlock50Block75Value0 recoveredBlock50Block75Value1 |
    recoveredBlock50Block75Value0 := recoveredArg1.
    recoveredBlock50Block75Value1 := (recoveredBlock50Block75Value0) operator.
    recoveredBlock50Block75Value1
].
    recoveredBlock50Value7 := [
    | recoveredBlock50Block90Value0 recoveredBlock50Block90Value1 recoveredBlock50Block90Value2 recoveredBlock50Block90Value3 recoveredBlock50Block90Value4 recoveredBlock50Block90Value5 |
    recoveredBlock50Block90Value0 := recoveredLocal2.
    recoveredBlock50Block90Value1 := recoveredLocal4.
    recoveredBlock50Block90Value2 := recoveredArg1.
    recoveredBlock50Block90Value3 := (recoveredBlock50Block90Value2) child.
    recoveredBlock50Block90Value4 := (recoveredBlock50Block90Value3) attributes.
    recoveredBlock50Block90Value5 := (recoveredBlock50Block90Value0) cgPreInc: (recoveredBlock50Block90Value1) attributes: (recoveredBlock50Block90Value4).
    recoveredBlock50Block90Value5
].
    recoveredBlock50Value8 := [
    | recoveredBlock50Block114Value0 recoveredBlock50Block114Value1 recoveredBlock50Block114Value2 recoveredBlock50Block114Value3 recoveredBlock50Block114Value4 recoveredBlock50Block114Value5 |
    recoveredBlock50Block114Value0 := recoveredLocal2.
    recoveredBlock50Block114Value1 := recoveredLocal4.
    recoveredBlock50Block114Value2 := recoveredArg1.
    recoveredBlock50Block114Value3 := (recoveredBlock50Block114Value2) child.
    recoveredBlock50Block114Value4 := (recoveredBlock50Block114Value3) attributes.
    recoveredBlock50Block114Value5 := (recoveredBlock50Block114Value0) cgPreDec: (recoveredBlock50Block114Value1) attributes: (recoveredBlock50Block114Value4).
    recoveredBlock50Block114Value5
].
    recoveredBlock50Value9 := [
    | recoveredBlock50Block138Value0 recoveredBlock50Block138Value1 recoveredBlock50Block138Value2 recoveredBlock50Block138Value3 recoveredBlock50Block138Value4 recoveredBlock50Block138Value5 |
    recoveredBlock50Block138Value0 := recoveredLocal2.
    recoveredBlock50Block138Value1 := recoveredLocal4.
    recoveredBlock50Block138Value2 := recoveredArg1.
    recoveredBlock50Block138Value3 := (recoveredBlock50Block138Value2) child.
    recoveredBlock50Block138Value4 := (recoveredBlock50Block138Value3) attributes.
    recoveredBlock50Block138Value5 := (recoveredBlock50Block138Value0) cgPostInc: (recoveredBlock50Block138Value1) attributes: (recoveredBlock50Block138Value4).
    recoveredBlock50Block138Value5
].
    recoveredBlock50Value10 := [
    | recoveredBlock50Block162Value0 recoveredBlock50Block162Value1 recoveredBlock50Block162Value2 recoveredBlock50Block162Value3 recoveredBlock50Block162Value4 recoveredBlock50Block162Value5 |
    recoveredBlock50Block162Value0 := recoveredLocal2.
    recoveredBlock50Block162Value1 := recoveredLocal4.
    recoveredBlock50Block162Value2 := recoveredArg1.
    recoveredBlock50Block162Value3 := (recoveredBlock50Block162Value2) child.
    recoveredBlock50Block162Value4 := (recoveredBlock50Block162Value3) attributes.
    recoveredBlock50Block162Value5 := (recoveredBlock50Block162Value0) cgPostDec: (recoveredBlock50Block162Value1) attributes: (recoveredBlock50Block162Value4).
    recoveredBlock50Block162Value5
].
    recoveredBlock50Value11 := [
    | recoveredBlock50Block184Stack0 recoveredBlock50Block184Stack1 recoveredBlock50Block184Stack2 recoveredBlock50Block184Stack3 recoveredBlock50Block184PC recoveredBlock50Block184Step recoveredBlock50Block184Done recoveredBlock50Block184Result |
    recoveredBlock50Block184Stack0 := self.
    recoveredBlock50Block184PC := 190.
    recoveredBlock50Block184Done := false.
    [recoveredBlock50Block184Done not] whileTrue: [
        recoveredBlock50Block184Step := recoveredBlock50Block184PC.
        recoveredBlock50Block184Step = 190 ifTrue: [
            recoveredBlock50Block184Stack1 := [
    false
].
            recoveredBlock50Block184PC := 192.
        ].
        recoveredBlock50Block184Step = 192 ifTrue: [
            recoveredBlock50Block184PC := 198.
        ].
        recoveredBlock50Block184Step = 198 ifTrue: [
            recoveredBlock50Block184Stack2 := [
    | recoveredBlock50Block184Block198Value0 recoveredBlock50Block184Block198Value1 recoveredBlock50Block184Block198Value2 |
    recoveredBlock50Block184Block198Value0 := recoveredArg1.
    recoveredBlock50Block184Block198Value1 := (recoveredBlock50Block184Block198Value0) operator.
    recoveredBlock50Block184Block198Value2 := ('Unknown operation ') , (recoveredBlock50Block184Block198Value1).
    recoveredBlock50Block184Block198Value2
].
            recoveredBlock50Block184PC := 214.
        ].
        recoveredBlock50Block184Step = 214 ifTrue: [
            (recoveredBlock50Block184Stack0) ileAssert: (recoveredBlock50Block184Stack1) message: (recoveredBlock50Block184Stack2).
            recoveredBlock50Block184PC := 216.
        ].
        recoveredBlock50Block184Step = 216 ifTrue: [
            recoveredBlock50Block184Stack0 := nil.
            recoveredBlock50Block184PC := 217.
        ].
        recoveredBlock50Block184Step = 217 ifTrue: [
            recoveredBlock50Block184Result := recoveredBlock50Block184Stack0.
            recoveredBlock50Block184Done := true.
        ].
    ].
    recoveredBlock50Block184Result
].
    recoveredBlock50Value12 := (recoveredBlock50Value6) case: ('preInc') do: (recoveredBlock50Value7) case: ('preDec') do: (recoveredBlock50Value8) case: ('postInc') do: (recoveredBlock50Value9) case: ('postDec') do: (recoveredBlock50Value10) others: (recoveredBlock50Value11).
    recoveredBlock50Value12
].
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack1 := (recoveredStack1) withExpressionContextFrom: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredPC := 338.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack2 := (recoveredStack2) child.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack1 := (recoveredStack1) visitMdlNode: (recoveredStack2).
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileExpr.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock250Value0 recoveredBlock250Value1 |
    recoveredBlock250Value0 := recoveredArg1.
    recoveredBlock250Value1 := (recoveredBlock250Value0) operator.
    recoveredBlock250Value1
].
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack2 := 'neg'.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock264Value0 recoveredBlock264Value1 recoveredBlock264Value2 |
    recoveredBlock264Value0 := recoveredLocal2.
    recoveredBlock264Value1 := recoveredLocal4.
    recoveredBlock264Value2 := (recoveredBlock264Value0) cgNeg: (recoveredBlock264Value1).
    recoveredBlock264Value2
].
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack4 := 'abs'.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock281Value0 recoveredBlock281Value1 recoveredBlock281Value2 |
    recoveredBlock281Value0 := recoveredLocal2.
    recoveredBlock281Value1 := recoveredLocal4.
    recoveredBlock281Value2 := (recoveredBlock281Value0) cgAbs: (recoveredBlock281Value1).
    recoveredBlock281Value2
].
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack6 := [
    | recoveredBlock297Stack0 recoveredBlock297Stack1 recoveredBlock297Stack2 recoveredBlock297Stack3 recoveredBlock297PC recoveredBlock297Step recoveredBlock297Done recoveredBlock297Result |
    recoveredBlock297Stack0 := self.
    recoveredBlock297PC := 304.
    recoveredBlock297Done := false.
    [recoveredBlock297Done not] whileTrue: [
        recoveredBlock297Step := recoveredBlock297PC.
        recoveredBlock297Step = 304 ifTrue: [
            recoveredBlock297Stack1 := [
    false
].
            recoveredBlock297PC := 306.
        ].
        recoveredBlock297Step = 306 ifTrue: [
            recoveredBlock297PC := 312.
        ].
        recoveredBlock297Step = 312 ifTrue: [
            recoveredBlock297Stack2 := [
    | recoveredBlock297Block312Value0 recoveredBlock297Block312Value1 recoveredBlock297Block312Value2 |
    recoveredBlock297Block312Value0 := recoveredArg1.
    recoveredBlock297Block312Value1 := (recoveredBlock297Block312Value0) operator.
    recoveredBlock297Block312Value2 := ('Unknown operation ') , (recoveredBlock297Block312Value1).
    recoveredBlock297Block312Value2
].
            recoveredBlock297PC := 328.
        ].
        recoveredBlock297Step = 328 ifTrue: [
            (recoveredBlock297Stack0) ileAssert: (recoveredBlock297Stack1) message: (recoveredBlock297Stack2).
            recoveredBlock297PC := 330.
        ].
        recoveredBlock297Step = 330 ifTrue: [
            recoveredBlock297Stack0 := nil.
            recoveredBlock297PC := 331.
        ].
        recoveredBlock297Step = 331 ifTrue: [
            recoveredBlock297Result := recoveredBlock297Stack0.
            recoveredBlock297Done := true.
        ].
    ].
    recoveredBlock297Result
].
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            recoveredStack1 := (recoveredStack1) case: (recoveredStack2) do: (recoveredStack3) case: (recoveredStack4) do: (recoveredStack5) others: (recoveredStack6).
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            recoveredStack0 := (recoveredStack0) asIaExpr: (recoveredStack1).
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20620574; bytecode file offset 0xf1cf00"
!SGBehaviourGeneratorStrategy methodsFor: 'recovered'!
buildAssertIntervalSpecialCall: recoveredArg1 receiver: recoveredArg2 interval: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isControllerVariant.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) interval.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) left.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) isInfinite.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) interval.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) right.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) isInfinite.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClass.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgContRealType.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileExpr.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlClass.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) assertInterval: (recoveredStack1) type: (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredPC := 530.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileExpr.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) asIleSideEffectFreeBufferedExpr.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClass.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgContRealType.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 216] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) interval.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) union: (recoveredStack1).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgLinearFixedPointType.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 106] ifFalse: [recoveredPC := 130].
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := SGCgTypeFactory.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := RBFloat.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDefault.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack2 := RBFormulaId.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := (recoveredStack2) createDefault.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := (recoveredStack0) createContType: (recoveredStack1) formula: (recoveredStack2) physicalUnit: (recoveredStack3) implInterval: (recoveredStack4).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredPC := 216.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := (recoveredStack0) getImplInterval.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 216] ifFalse: [recoveredPC := 144].
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileExpr.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := (recoveredStack0) createImplTypeFromInterval: (recoveredStack1).
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 171] ifFalse: [recoveredPC := 164].
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack0 := RBFloat.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack0 := (recoveredStack0) createDefault.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRBFloat.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 180] ifFalse: [recoveredPC := 202].
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack0 := SGCgTypeFactory.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack2 := RBFormulaId.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack2 := (recoveredStack2) createDefault.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack0 := (recoveredStack0) createContType: (recoveredStack1) formula: (recoveredStack2) physicalUnit: (recoveredStack3) implInterval: (recoveredStack4).
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredPC := 216.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack0 := (recoveredStack0) createWithImplType: (recoveredStack1) interval: (recoveredStack2).
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClass.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgNewDiscreteType.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 226] ifFalse: [recoveredPC := 236].
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredPC := 313.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack1 := (recoveredStack1) receiver.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack3 := (recoveredStack3) source.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack4 := [
    | recoveredBlock250Stack0 recoveredBlock250Stack1 recoveredBlock250Stack2 recoveredBlock250Stack3 recoveredBlock250Stack4 recoveredBlock250Stack5 recoveredBlock250PC recoveredBlock250Step recoveredBlock250Done recoveredBlock250Result |
    recoveredBlock250Stack0 := self.
    recoveredBlock250PC := 256.
    recoveredBlock250Done := false.
    [recoveredBlock250Done not] whileTrue: [
        recoveredBlock250Step := recoveredBlock250PC.
        recoveredBlock250Step = 256 ifTrue: [
            recoveredBlock250Stack1 := recoveredArg1.
            recoveredBlock250PC := 259.
        ].
        recoveredBlock250Step = 259 ifTrue: [
            recoveredBlock250Stack1 := (recoveredBlock250Stack1) mdlClass.
            recoveredBlock250PC := 261.
        ].
        recoveredBlock250Step = 261 ifTrue: [
            recoveredBlock250Stack1 := (recoveredBlock250Stack1) isCgContRealType.
            recoveredBlock250PC := 263.
        ].
        recoveredBlock250Step = 263 ifTrue: [
            (recoveredBlock250Stack1) ifTrue: [recoveredBlock250PC := 266] ifFalse: [recoveredBlock250PC := 272].
        ].
        recoveredBlock250Step = 266 ifTrue: [
            recoveredBlock250Stack1 := recoveredLocal7.
            recoveredBlock250PC := 269.
        ].
        recoveredBlock250Step = 269 ifTrue: [
            recoveredBlock250PC := 290.
        ].
        recoveredBlock250Step = 272 ifTrue: [
            recoveredBlock250Stack1 := recoveredArg1.
            recoveredBlock250PC := 275.
        ].
        recoveredBlock250Step = 275 ifTrue: [
            recoveredBlock250Stack1 := (recoveredBlock250Stack1) mdlClass.
            recoveredBlock250PC := 277.
        ].
        recoveredBlock250Step = 277 ifTrue: [
            recoveredBlock250Stack2 := self.
            recoveredBlock250PC := 278.
        ].
        recoveredBlock250Step = 278 ifTrue: [
            recoveredBlock250Stack3 := recoveredLocal7.
            recoveredBlock250PC := 281.
        ].
        recoveredBlock250Step = 281 ifTrue: [
            recoveredBlock250Stack4 := recoveredArg2.
            recoveredBlock250PC := 284.
        ].
        recoveredBlock250Step = 284 ifTrue: [
            recoveredBlock250Stack2 := (recoveredBlock250Stack2) asIaExpr: (recoveredBlock250Stack3) from: (recoveredBlock250Stack4).
            recoveredBlock250PC := 286.
        ].
        recoveredBlock250Step = 286 ifTrue: [
            recoveredBlock250Stack1 := (recoveredBlock250Stack1) cgConvertToIdent: (recoveredBlock250Stack2).
            recoveredBlock250PC := 288.
        ].
        recoveredBlock250Step = 288 ifTrue: [
            recoveredBlock250Stack1 := (recoveredBlock250Stack1) ileExpr.
            recoveredBlock250PC := 290.
        ].
        recoveredBlock250Step = 290 ifTrue: [
            recoveredBlock250Stack2 := recoveredLocal6.
            recoveredBlock250PC := 293.
        ].
        recoveredBlock250Step = 293 ifTrue: [
            recoveredBlock250Stack3 := SGCgAdaptIntervalAttributes.
            recoveredBlock250PC := 295.
        ].
        recoveredBlock250Step = 295 ifTrue: [
            recoveredBlock250Stack3 := (recoveredBlock250Stack3) create.
            recoveredBlock250PC := 297.
        ].
        recoveredBlock250Step = 297 ifTrue: [
            recoveredBlock250Stack4 := recoveredBlock250Stack3.
            recoveredBlock250PC := 298.
        ].
        recoveredBlock250Step = 298 ifTrue: [
            (recoveredBlock250Stack4) cgAttrNoLimitAssignment.
            recoveredBlock250Stack4 := recoveredBlock250Stack3.
            recoveredBlock250PC := 301.
        ].
        recoveredBlock250Step = 301 ifTrue: [
            (recoveredBlock250Stack4) cgAttrNoLimitOverflow.
            recoveredBlock250PC := 303.
        ].
        recoveredBlock250Step = 303 ifTrue: [
            recoveredBlock250Stack1 := (recoveredBlock250Stack1) implCastAssign: (recoveredBlock250Stack2) attributes: (recoveredBlock250Stack3).
            recoveredBlock250PC := 305.
        ].
        recoveredBlock250Step = 305 ifTrue: [
            recoveredBlock250Stack2 := recoveredBlock250Stack1.
            recoveredBlock250PC := 306.
        ].
        recoveredBlock250Step = 306 ifTrue: [
            recoveredLocal5 := recoveredBlock250Stack2.
            recoveredBlock250PC := 309.
        ].
        recoveredBlock250Step = 309 ifTrue: [
            recoveredBlock250Result := recoveredBlock250Stack1.
            recoveredBlock250Done := true.
        ].
    ].
    recoveredBlock250Result
].
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            (recoveredStack0) withExpressionContextFrom: (recoveredStack1) lValueType: (recoveredStack2) source: (recoveredStack3) do: (recoveredStack4).
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClass.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgContRealType.
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 324] ifFalse: [recoveredPC := 414].
        ].
        recoveredStep = 324 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            recoveredStack0 := (recoveredStack0) interval.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack0 := (recoveredStack0) left.
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            recoveredStack0 := (recoveredStack0) isInfinite.
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 334] ifFalse: [recoveredPC := 370].
        ].
        recoveredStep = 334 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            recoveredStack0 := (recoveredStack0) interval.
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack0 := (recoveredStack0) right.
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack0 := (recoveredStack0) isInfinite.
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 344] ifFalse: [recoveredPC := 370].
        ].
        recoveredStep = 344 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileBuilder.
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            recoveredStack2 := (recoveredStack2) doNotOptimizeExpr: (recoveredStack3).
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            recoveredStack1 := (recoveredStack1) equal: (recoveredStack2).
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            recoveredStack0 := (recoveredStack0) doNotOptimizeExpr: (recoveredStack1).
            recoveredPC := 362.
        ].
        recoveredStep = 362 ifTrue: [
            recoveredStack0 := (recoveredStack0) not.
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            recoveredPC := 410.
        ].
        recoveredStep = 370 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 371.
        ].
        recoveredStep = 371 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 376.
        ].
        recoveredStep = 376 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 377.
        ].
        recoveredStep = 377 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileBuilder.
            recoveredPC := 379.
        ].
        recoveredStep = 379 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 382.
        ].
        recoveredStep = 382 ifTrue: [
            recoveredStack3 := (recoveredStack3) left.
            recoveredPC := 383.
        ].
        recoveredStep = 383 ifTrue: [
            recoveredStack2 := (recoveredStack2) scalarConstant: (recoveredStack3).
            recoveredPC := 385.
        ].
        recoveredStep = 385 ifTrue: [
            recoveredStack1 := (recoveredStack1) greaterEqualThan: (recoveredStack2).
            recoveredPC := 387.
        ].
        recoveredStep = 387 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 390.
        ].
        recoveredStep = 390 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 391.
        ].
        recoveredStep = 391 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBuilder.
            recoveredPC := 393.
        ].
        recoveredStep = 393 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 396.
        ].
        recoveredStep = 396 ifTrue: [
            recoveredStack4 := (recoveredStack4) right.
            recoveredPC := 398.
        ].
        recoveredStep = 398 ifTrue: [
            recoveredStack3 := (recoveredStack3) scalarConstant: (recoveredStack4).
            recoveredPC := 400.
        ].
        recoveredStep = 400 ifTrue: [
            recoveredStack2 := (recoveredStack2) lessEqualThan: (recoveredStack3).
            recoveredPC := 402.
        ].
        recoveredStep = 402 ifTrue: [
            recoveredStack1 := (recoveredStack1) andExpr: (recoveredStack2).
            recoveredPC := 404.
        ].
        recoveredStep = 404 ifTrue: [
            recoveredStack0 := (recoveredStack0) doNotOptimizeExpr: (recoveredStack1).
            recoveredPC := 406.
        ].
        recoveredStep = 406 ifTrue: [
            recoveredStack0 := (recoveredStack0) not.
            recoveredPC := 407.
        ].
        recoveredStep = 407 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 410.
        ].
        recoveredStep = 410 ifTrue: [
            recoveredPC := 448.
        ].
        recoveredStep = 414 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 417.
        ].
        recoveredStep = 417 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 418.
        ].
        recoveredStep = 418 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 420.
        ].
        recoveredStep = 420 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 423.
        ].
        recoveredStep = 423 ifTrue: [
            recoveredStack2 := (recoveredStack2) left.
            recoveredPC := 424.
        ].
        recoveredStep = 424 ifTrue: [
            recoveredStack1 := (recoveredStack1) scalarConstant: (recoveredStack2).
            recoveredPC := 426.
        ].
        recoveredStep = 426 ifTrue: [
            recoveredStack0 := (recoveredStack0) lessThan: (recoveredStack1).
            recoveredPC := 428.
        ].
        recoveredStep = 428 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 431.
        ].
        recoveredStep = 431 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 432.
        ].
        recoveredStep = 432 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileBuilder.
            recoveredPC := 434.
        ].
        recoveredStep = 434 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 437.
        ].
        recoveredStep = 437 ifTrue: [
            recoveredStack3 := (recoveredStack3) right.
            recoveredPC := 439.
        ].
        recoveredStep = 439 ifTrue: [
            recoveredStack2 := (recoveredStack2) scalarConstant: (recoveredStack3).
            recoveredPC := 441.
        ].
        recoveredStep = 441 ifTrue: [
            recoveredStack1 := (recoveredStack1) greaterThan: (recoveredStack2).
            recoveredPC := 443.
        ].
        recoveredStep = 443 ifTrue: [
            recoveredStack0 := (recoveredStack0) orExpr: (recoveredStack1).
            recoveredPC := 445.
        ].
        recoveredStep = 445 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 448.
        ].
        recoveredStep = 448 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 449.
        ].
        recoveredStep = 449 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 451.
        ].
        recoveredStep = 451 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 454.
        ].
        recoveredStep = 454 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 455.
        ].
        recoveredStep = 455 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileBuilder.
            recoveredPC := 457.
        ].
        recoveredStep = 457 ifTrue: [
            recoveredStack3 := Array.
            recoveredPC := 459.
        ].
        recoveredStep = 459 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 460.
        ].
        recoveredStep = 460 ifTrue: [
            recoveredStack4 := (recoveredStack4) ileBuilder.
            recoveredPC := 462.
        ].
        recoveredStep = 462 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 465.
        ].
        recoveredStep = 465 ifTrue: [
            recoveredStack5 := (recoveredStack5) interval.
            recoveredPC := 466.
        ].
        recoveredStep = 466 ifTrue: [
            recoveredStack6 := recoveredLocal5.
            recoveredPC := 469.
        ].
        recoveredStep = 469 ifTrue: [
            recoveredStack7 := recoveredLocal6.
            recoveredPC := 472.
        ].
        recoveredStep = 472 ifTrue: [
            recoveredStack7 := (recoveredStack7) assertIntervalMessageNumber.
            recoveredPC := 474.
        ].
        recoveredStep = 474 ifTrue: [
            recoveredStack4 := (recoveredStack4) assertIntervalFailure: (recoveredStack5) value: (recoveredStack6) msgNumber: (recoveredStack7).
            recoveredPC := 477.
        ].
        recoveredStep = 477 ifTrue: [
            recoveredStack4 := (recoveredStack4) asIleExprStmnt.
            recoveredPC := 479.
        ].
        recoveredStep = 479 ifTrue: [
            recoveredStack3 := (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 481.
        ].
        recoveredStep = 481 ifTrue: [
            recoveredStack2 := (recoveredStack2) blockedStmntList: (recoveredStack3).
            recoveredPC := 483.
        ].
        recoveredStep = 483 ifTrue: [
            recoveredStack0 := (recoveredStack0) createIfExpr: (recoveredStack1) thenStmnt: (recoveredStack2).
            recoveredPC := 485.
        ].
        recoveredStep = 485 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 488.
        ].
        recoveredStep = 488 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 489.
        ].
        recoveredStep = 489 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 491.
        ].
        recoveredStep = 491 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 493.
        ].
        recoveredStep = 493 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 496.
        ].
        recoveredStep = 496 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 497.
        ].
        recoveredStep = 497 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBuilder.
            recoveredPC := 499.
        ].
        recoveredStep = 499 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 502.
        ].
        recoveredStep = 502 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 503.
        ].
        recoveredStep = 503 ifTrue: [
            recoveredStack5 := (recoveredStack5) ileBuilder.
            recoveredPC := 505.
        ].
        recoveredStep = 505 ifTrue: [
            recoveredStack5 := (recoveredStack5) ileVoid.
            recoveredPC := 507.
        ].
        recoveredStep = 507 ifTrue: [
            recoveredStack3 := (recoveredStack3) createStatementExpression: (recoveredStack4) type: (recoveredStack5).
            recoveredPC := 509.
        ].
        recoveredStep = 509 ifTrue: [
            recoveredStack4 := recoveredLocal7.
            recoveredPC := 512.
        ].
        recoveredStep = 512 ifTrue: [
            recoveredStack5 := recoveredArg3.
            recoveredPC := 515.
        ].
        recoveredStep = 515 ifTrue: [
            recoveredStack6 := recoveredArg1.
            recoveredPC := 518.
        ].
        recoveredStep = 518 ifTrue: [
            recoveredStack6 := (recoveredStack6) mdlClass.
            recoveredPC := 520.
        ].
        recoveredStep = 520 ifTrue: [
            recoveredStack4 := (recoveredStack4) assertInterval: (recoveredStack5) type: (recoveredStack6).
            recoveredPC := 522.
        ].
        recoveredStep = 522 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 525.
        ].
        recoveredStep = 525 ifTrue: [
            recoveredStack0 := (recoveredStack0) commaExpr: (recoveredStack1).
            recoveredPC := 527.
        ].
        recoveredStep = 527 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 530.
        ].
        recoveredStep = 530 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 531.
        ].
        recoveredStep = 531 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 534.
        ].
        recoveredStep = 534 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 537.
        ].
        recoveredStep = 537 ifTrue: [
            recoveredStack0 := (recoveredStack0) asIaExpr: (recoveredStack1) from: (recoveredStack2).
            recoveredPC := 539.
        ].
        recoveredStep = 539 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

