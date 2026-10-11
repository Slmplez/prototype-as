"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20149328; bytecode file offset 0xa45c74"
!ASDCalibrationWidget class methodsFor: 'recovered'!
errorLeftBoundsExceeded
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := RBUserInfo.
    recoveredValue1 := GMVLeftBoundsExceeded.
    recoveredValue2 := (recoveredValue0) errorMessage: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := UserInterface.
    (recoveredValue4) context: (recoveredValue5).
    recoveredValue6 := (recoveredValue3) prompt.
    ^recoveredValue6
! !

"ASDBase.ic method 0x20149348; bytecode file offset 0xa45c74"
!ASDCalibrationWidget class methodsFor: 'recovered'!
errorRightBoundsExceeded
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := RBUserInfo.
    recoveredValue1 := GMVRightBoundsExceeded.
    recoveredValue2 := (recoveredValue0) errorMessage: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := UserInterface.
    (recoveredValue4) context: (recoveredValue5).
    recoveredValue6 := (recoveredValue3) prompt.
    ^recoveredValue6
! !

"ASDBase.ic method 0x20149388; bytecode file offset 0xa45c74"
!ASDCalibrationWidget class methodsFor: 'recovered'!
errorFixedDistributionSize
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := RBUserInfo.
    recoveredValue1 := FixedAxisPointNumber.
    recoveredValue2 := (recoveredValue0) errorMessage: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := UserInterface.
    (recoveredValue4) context: (recoveredValue5).
    recoveredValue6 := (recoveredValue3) prompt.
    ^recoveredValue6
! !

"ASDBase.ic method 0x20198978; bytecode file offset 0xa95274"
!ASDCalibrationWidget class methodsFor: 'recovered'!
errorInconsistentValues
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := RBUserInfo.
    recoveredValue1 := DisplayInconsistentWithData.
    recoveredValue2 := (recoveredValue0) errorMessage: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := CloseEditor.
    (recoveredValue4) advice: (recoveredValue5).
    recoveredValue6 := recoveredValue3.
    recoveredValue7 := UserInterface.
    (recoveredValue6) context: (recoveredValue7).
    recoveredValue8 := (recoveredValue3) prompt.
    ^recoveredValue8
! !

"ASDBase.ic method 0x201bf210; bytecode file offset 0xabbb0c"
!ASDCalibrationWidget class methodsFor: 'recovered'!
errorCannotRemoveLastArgs: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := Array.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) with: (recoveredValue1).
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := RBUserInfo.
    recoveredValue4 := recoveredLocal2.
    recoveredValue5 := (recoveredValue3) errorMessage: ('The variable must have at least %1 axis points. For that reason no axis point can be removed.') with: (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := recoveredValue6.
    recoveredValue8 := UserInterface.
    (recoveredValue7) context: (recoveredValue8).
    recoveredValue9 := (recoveredValue6) prompt.
    ^recoveredValue9
! !

"ASDBase.ic method 0x201ef434; bytecode file offset 0xaebd64"
!ASDCalibrationWidget class methodsFor: 'recovered'!
errorMaxYDistributionSizeReached: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := Array.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) with: (recoveredValue1) with: ('y').
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := RBUserInfo.
    recoveredValue4 := MaxSupportingValueSizeReached.
    recoveredValue5 := recoveredLocal2.
    recoveredValue6 := (recoveredValue3) errorMessage: (recoveredValue4) with: (recoveredValue5).
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := recoveredValue7.
    recoveredValue9 := UserInterface.
    (recoveredValue8) context: (recoveredValue9).
    recoveredValue10 := (recoveredValue7) prompt.
    ^recoveredValue10
! !

"ASDBase.ic method 0x201ef460; bytecode file offset 0xaebd64"
!ASDCalibrationWidget class methodsFor: 'recovered'!
errorMaxXDistributionSizeReached: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := Array.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) with: (recoveredValue1) with: ('x').
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := RBUserInfo.
    recoveredValue4 := MaxSupportingValueSizeReached.
    recoveredValue5 := recoveredLocal2.
    recoveredValue6 := (recoveredValue3) errorMessage: (recoveredValue4) with: (recoveredValue5).
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := recoveredValue7.
    recoveredValue9 := UserInterface.
    (recoveredValue8) context: (recoveredValue9).
    recoveredValue10 := (recoveredValue7) prompt.
    ^recoveredValue10
! !

"ASDBase.ic method 0x201fc028; bytecode file offset 0xaf8904"
!ASDCalibrationWidget class methodsFor: 'recovered'!
errorNoSetupInHexDisplayMode
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := RBUserInfo.
    recoveredValue3 := recoveredLocal2.
    recoveredValue4 := (recoveredValue2) errorMessage: ('No Setup possible in this display mode, because the underlying implementation type is float.') with: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := recoveredValue5.
    recoveredValue7 := UserInterface.
    (recoveredValue6) context: (recoveredValue7).
    recoveredValue8 := recoveredValue5.
    (recoveredValue8) advice: ('Change to physical display').
    recoveredValue9 := (recoveredValue5) prompt.
    ^recoveredValue9
! !

"ASDBase.ic method 0x20209270; bytecode file offset 0xb05ccc"
!ASDCalibrationWidget class methodsFor: 'recovered'!
errorNoPhysDisplay: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := Array.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) with: (recoveredValue1).
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := RBUserInfo.
    recoveredValue4 := NoPhysDisplay.
    recoveredValue5 := recoveredLocal2.
    recoveredValue6 := (recoveredValue3) errorMessage: (recoveredValue4) with: (recoveredValue5).
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := recoveredValue7.
    recoveredValue9 := NoPhysDisplayAdvice.
    (recoveredValue8) advice: (recoveredValue9).
    recoveredValue10 := recoveredValue7.
    recoveredValue11 := UserInterface.
    (recoveredValue10) context: (recoveredValue11).
    recoveredValue12 := (recoveredValue7) prompt.
    ^recoveredValue12
! !

"ASDBase.ic method 0x202092d0; bytecode file offset 0xb05ccc"
!ASDCalibrationWidget class methodsFor: 'recovered'!
errorCannotEditCurveWithOneArg: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := Array.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) with: (recoveredValue1).
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := RBUserInfo.
    recoveredValue4 := CannotEditCurveWithOneArg.
    recoveredValue5 := recoveredLocal2.
    recoveredValue6 := (recoveredValue3) errorMessage: (recoveredValue4) with: (recoveredValue5).
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := recoveredValue7.
    recoveredValue9 := OpenTableEditor.
    (recoveredValue8) advice: (recoveredValue9).
    recoveredValue10 := recoveredValue7.
    recoveredValue11 := UserInterface.
    (recoveredValue10) context: (recoveredValue11).
    recoveredValue12 := (recoveredValue7) prompt.
    ^recoveredValue12
! !

"ASDBase.ic method 0x20209330; bytecode file offset 0xb05ccc"
!ASDCalibrationWidget class methodsFor: 'recovered'!
errorNotMonotonous: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := Array.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) with: (recoveredValue1).
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := RBUserInfo.
    recoveredValue4 := NotMonotonousArgs.
    recoveredValue5 := recoveredLocal2.
    recoveredValue6 := (recoveredValue3) errorMessage: (recoveredValue4) with: (recoveredValue5).
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := recoveredValue7.
    recoveredValue9 := NoPhysDisplayAdvice.
    (recoveredValue8) advice: (recoveredValue9).
    recoveredValue10 := recoveredValue7.
    recoveredValue11 := UserInterface.
    (recoveredValue10) context: (recoveredValue11).
    recoveredValue12 := (recoveredValue7) prompt.
    ^recoveredValue12
! !

"ASDBase.ic method 0x202093c0; bytecode file offset 0xb05ccc"
!ASDCalibrationWidget class methodsFor: 'recovered'!
errorNoPhysDisplayNotMonotonous: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := Array.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) with: (recoveredValue1).
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := RBUserInfo.
    recoveredValue4 := NoPhysDisplayNotMonotonousArgs.
    recoveredValue5 := recoveredLocal2.
    recoveredValue6 := (recoveredValue3) errorMessage: (recoveredValue4) with: (recoveredValue5).
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := recoveredValue7.
    recoveredValue9 := NoPhysDisplayAdvice.
    (recoveredValue8) advice: (recoveredValue9).
    recoveredValue10 := recoveredValue7.
    recoveredValue11 := UserInterface.
    (recoveredValue10) context: (recoveredValue11).
    recoveredValue12 := (recoveredValue7) prompt.
    ^recoveredValue12
! !

"ASDBase.ic method 0x2022333c; bytecode file offset 0xb1fc18"
!ASDCalibrationWidget class methodsFor: 'recovered'!
errorNoPhysDisplay: recoveredArg1 bounds: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := Array.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) with: (recoveredValue1) with: (recoveredValue2).
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := RBUserInfo.
    recoveredValue5 := NoPhysDisplayWithBounds.
    recoveredValue6 := recoveredLocal2.
    recoveredValue7 := (recoveredValue4) errorMessage: (recoveredValue5) with: (recoveredValue6).
    recoveredLocal1 := recoveredValue7.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := recoveredValue8.
    recoveredValue10 := NoPhysDisplayAdvice.
    (recoveredValue9) advice: (recoveredValue10).
    recoveredValue11 := recoveredValue8.
    recoveredValue12 := UserInterface.
    (recoveredValue11) context: (recoveredValue12).
    recoveredValue13 := (recoveredValue8) prompt.
    ^recoveredValue13
! !

"ASDBase.ic method 0x2036ed70; bytecode file offset 0xc6b654"
!ASDCalibrationWidget class methodsFor: 'recovered'!
cannotEditDistributionOf: recoveredArg1 type: recoveredArg2 groupDistribution: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 35] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := RBUserInfo.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := CannotChangeSupportingValue.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) message: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := UserInterface.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack2) context: (recoveredStack3).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) prompt.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := EditGroupSupportingValues.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := Array.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack3 := (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) convertStringTemplateKeepStrings: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := RBUserInfo.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := CannotChangeSupportingValue.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) message: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack2) advice: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack3 := UserInterface.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack2) context: (recoveredStack3).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) prompt.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x204b93b0; bytecode file offset 0xdb5cf8"
!ASDCalibrationWidget class methodsFor: 'recovered'!
convertStringTemplateKeepStrings: recoveredArg1 with: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) deepCopy.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 113.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack4 := '%'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack5 := (recoveredStack5) printString.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack4 := (recoveredStack4) , (recoveredStack5).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := (recoveredStack3) asArrayOfSubstringsSeparatedBy: (recoveredStack4).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal4 := recoveredStack3.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := ''.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal3 := recoveredStack3.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack4 := (recoveredStack4) size.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (-1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack3 := (recoveredStack3) to: (recoveredStack4).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack4 := [:recoveredBlock53Arg1 | 
    | recoveredBlock53Value0 recoveredBlock53Value1 recoveredBlock53Value2 recoveredBlock53Value3 recoveredBlock53Value4 recoveredBlock53Value5 recoveredBlock53Value6 recoveredBlock53Value7 recoveredBlock53Value8 recoveredBlock53Value9 recoveredBlock53Value10 |
    recoveredBlock53Value0 := recoveredLocal3.
    recoveredBlock53Value1 := recoveredLocal4.
    recoveredBlock53Value2 := recoveredBlock53Arg1.
    recoveredBlock53Value3 := (recoveredBlock53Value1) at: (recoveredBlock53Value2).
    recoveredBlock53Value4 := (recoveredBlock53Value0) , (recoveredBlock53Value3).
    recoveredBlock53Value5 := recoveredArg2.
    recoveredBlock53Value6 := recoveredLocal1.
    recoveredBlock53Value7 := (recoveredBlock53Value5) at: (recoveredBlock53Value6).
    recoveredBlock53Value8 := (recoveredBlock53Value7) asString.
    recoveredBlock53Value9 := (recoveredBlock53Value4) , (recoveredBlock53Value8).
    recoveredBlock53Value10 := recoveredBlock53Value9.
    recoveredLocal3 := recoveredBlock53Value10.
    recoveredBlock53Value9
].
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack3) do: (recoveredStack4).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack5 := recoveredLocal4.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack5 := (recoveredStack5) size.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredLocal3 := recoveredStack3.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredStack2 isInteger]) ifTrue: [(recoveredStack2 + 1 <= recoveredStack1) ifTrue: [recoveredStack2 := recoveredStack2 + 1. recoveredStack3 := recoveredStack2. recoveredPC := 20] ifFalse: [recoveredPC := 141]] ifFalse: [recoveredPC := 116].
        ].
        recoveredStep = 116 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 137] ifFalse: [recoveredPC := 132].
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

