"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001841c; bytecode file offset 0x92209c"
!SGCg2DGroupCharTableType methodsFor: 'recovered'!
asCType
    ^'GroupCharTable2'
! !

"ASDBase.ic method 0x2001d174; bytecode file offset 0x92209c"
!SGCg2DGroupCharTableType methodsFor: 'recovered'!
errLabelNonCopyType
    ^'group char table type'
! !

"ASDBase.ic method 0x20023240; bytecode file offset 0x92209c"
!SGCg2DGroupCharTableType methodsFor: 'recovered'!
modelTypeClassName
    ^'SGTwoDGroupCharTable'
! !

"ASDBase.ic method 0x2006dd70; bytecode file offset 0x96a9dc"
!SGCg2DGroupCharTableType methodsFor: 'recovered'!
xDistributionAlias
    | recoveredValue0 |
    recoveredValue0 := xDistributionAlias.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006e3c4; bytecode file offset 0x96af48"
!SGCg2DGroupCharTableType methodsFor: 'recovered'!
yDistributionAlias
    | recoveredValue0 |
    recoveredValue0 := yDistributionAlias.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20074ee4; bytecode file offset 0x9757c8"
!SGCg2DGroupCharTableType methodsFor: 'recovered'!
isRBTwoDCharTable
    ^true
! !

"ASDBase.ic method 0x20075a84; bytecode file offset 0x9757c8"
!SGCg2DGroupCharTableType methodsFor: 'recovered'!
isRBGroupCharTable
    ^true
! !

"ASDBase.ic method 0x200762f4; bytecode file offset 0x9757c8"
!SGCg2DGroupCharTableType methodsFor: 'recovered'!
isMdlGroupCharTable
    ^true
! !

"ASDBase.ic method 0x2007631c; bytecode file offset 0x9757c8"
!SGCg2DGroupCharTableType methodsFor: 'recovered'!
isTwoDGroupCharTable
    ^true
! !

"ASDBase.ic method 0x2007769c; bytecode file offset 0x9757c8"
!SGCg2DGroupCharTableType methodsFor: 'recovered'!
isIleGroupCharTable
    ^true
! !

"ASDBase.ic method 0x200788fc; bytecode file offset 0x9757c8"
!SGCg2DGroupCharTableType methodsFor: 'recovered'!
isCgTwoDGroupCharTable
    ^true
! !

"ASDBase.ic method 0x20079ba4; bytecode file offset 0x97c330"
!SGCg2DGroupCharTableType methodsFor: 'recovered'!
isStatic
    ^false
! !

"ASDBase.ic method 0x2007b524; bytecode file offset 0x97c330"
!SGCg2DGroupCharTableType methodsFor: 'recovered'!
isStaticCharTable
    ^false
! !

"ASDBase.ic method 0x2009ab74; bytecode file offset 0x997438"
!SGCg2DGroupCharTableType methodsFor: 'recovered'!
expandPackedExprAssignment: recoveredArg1 argCount: recoveredArg2 on: recoveredArg3
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := recoveredArg2.
    (recoveredValue0) packedExprAssignment: (recoveredValue1) forGroupCharTable2D: (self).
    ^self
! !

"ASDBase.ic method 0x200c4528; bytecode file offset 0x9c11bc"
!SGCg2DGroupCharTableType methodsFor: 'recovered'!
xDistributionAlias: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    xDistributionAlias := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4cbc; bytecode file offset 0x9c16b0"
!SGCg2DGroupCharTableType methodsFor: 'recovered'!
yDistributionAlias: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    yDistributionAlias := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200e7e1c; bytecode file offset 0x9e4738"
!SGCg2DGroupCharTableType methodsFor: 'recovered'!
equalsType: recoveredArg1
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
            recoveredStack2 := (recoveredStack2) isMdlTwoDCharTable.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlGroupCharTable.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20132b18; bytecode file offset 0xa2f4dc"
!SGCg2DGroupCharTableType methodsFor: 'recovered'!
isCgTypeIdentical: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgTwoDGroupCharTable.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
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
            recoveredStack0 := super isCgTypeIdentical: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20132be0; bytecode file offset 0xa2f4dc"
!SGCg2DGroupCharTableType methodsFor: 'recovered'!
isCgTypeIdenticalNoImpl: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgTwoDGroupCharTable.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
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
            recoveredStack0 := super isCgTypeIdenticalNoImpl: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2020ecc4; bytecode file offset 0xb0b598"
!SGCg2DGroupCharTableType methodsFor: 'recovered'!
implementation: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := (self) xDistributionType.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) xDistribution.
    (recoveredValue0) implementation: (recoveredValue2).
    recoveredValue3 := (self) yDistributionType.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) yDistribution.
    (recoveredValue3) implementation: (recoveredValue5).
    recoveredValue6 := (self) valueElementType.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue7) values.
    (recoveredValue6) implementation: (recoveredValue8).
    recoveredValue9 := recoveredArg1.
    super implementation: (recoveredValue9).
    ^self
! !

"ASDBase.ic method 0x20223b40; bytecode file offset 0xb2041c"
!SGCg2DGroupCharTableType methodsFor: 'recovered'!
asContModelType
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := SGCgTypeFactory.
    recoveredValue1 := (self) maxSize.
    recoveredValue2 := (self) isCgFixedCharTableInModel.
    recoveredValue3 := (self) xDistributionAlias.
    recoveredValue4 := (self) yDistributionAlias.
    recoveredValue5 := (self) valueElementType.
    recoveredValue6 := (recoveredValue5) asContModelType.
    recoveredValue7 := (self) xDistributionType.
    recoveredValue8 := (recoveredValue7) asContModelType.
    recoveredValue9 := (self) yDistributionType.
    recoveredValue10 := (recoveredValue9) asContModelType.
    recoveredValue11 := (recoveredValue0) create2DGroupCharTable: (recoveredValue1) fixed: (recoveredValue2) xDistributionAlias: (recoveredValue3) yDistributionAlias: (recoveredValue4) valueType: (recoveredValue6) xDistributionType: (recoveredValue8) yDistributionType: (recoveredValue10).
    ^recoveredValue11
! !

"ASDBase.ic method 0x20250898; bytecode file offset 0xb4d178"
!SGCg2DGroupCharTableType methodsFor: 'recovered'!
computeImplDataFor: recoveredArg1 withImpl: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
    recoveredValue0 := (self) createDataElement.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := (recoveredValue1) values.
    recoveredValue3 := (self) valueElementType.
    recoveredValue4 := (recoveredValue3) getImplType.
    (recoveredValue2) setImplType: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (recoveredValue5) values.
    recoveredValue7 := (self) valueElementType.
    recoveredValue8 := (recoveredValue7) getImplInterval.
    (recoveredValue6) setImplInterval: (recoveredValue8).
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := (recoveredValue9) values.
    recoveredValue11 := (self) valueElementType.
    recoveredValue12 := recoveredArg1.
    recoveredValue13 := (recoveredValue12) value.
    recoveredValue14 := (recoveredValue13) values.
    recoveredValue15 := (recoveredValue14) getPhysValue.
    recoveredValue16 := (recoveredValue11) computeImplDataForMatrix: (recoveredValue15).
    (recoveredValue10) setImplValue: (recoveredValue16).
    recoveredValue17 := recoveredLocal1.
    ^recoveredValue17
! !

"ASDBase.ic method 0x202c3e34; bytecode file offset 0xbc0720"
!SGCg2DGroupCharTableType methodsFor: 'recovered'!
errLabel
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 |
    recoveredValue0 := (self) xDistributionType.
    recoveredValue1 := (recoveredValue0) errLabel.
    recoveredValue2 := ('2DGroup[') , (recoveredValue1).
    recoveredValue3 := (recoveredValue2) , (',').
    recoveredValue4 := (self) yDistributionType.
    recoveredValue5 := (recoveredValue4) errLabel.
    recoveredValue6 := (recoveredValue3) , (recoveredValue5).
    recoveredValue7 := (recoveredValue6) , ('->').
    recoveredValue8 := (self) valueElementType.
    recoveredValue9 := (recoveredValue8) errLabel.
    recoveredValue10 := (recoveredValue7) , (recoveredValue9).
    recoveredValue11 := (recoveredValue10) , ('][').
    recoveredValue12 := (self) maxXSize.
    recoveredValue13 := (recoveredValue12) asString.
    recoveredValue14 := (recoveredValue11) , (recoveredValue13).
    recoveredValue15 := (recoveredValue14) , (' @ ').
    recoveredValue16 := (self) maxYSize.
    recoveredValue17 := (recoveredValue16) asString.
    recoveredValue18 := (recoveredValue15) , (recoveredValue17).
    recoveredValue19 := (recoveredValue18) , (']').
    ^recoveredValue19
! !

"ASDBase.ic method 0x2035ee98; bytecode file offset 0xc5b7a4"
!SGCg2DGroupCharTableType methodsFor: 'recovered'!
mdlLabel
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) xDistribution.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := SGReservedNames.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) undefName.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) valueElementType.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) label.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) xDistribution.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := SGReservedNames.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) undefName.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) valueElementType.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) label.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := '2DGroup['.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := ','.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := '->'.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) valueElementType.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) label.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := ']'.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20401a2c; bytecode file offset 0xcfe33c"
!SGCg2DGroupCharTableType methodsFor: 'recovered'!
modelType
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 |
    recoveredValue0 := SGTwoDGroupCharTable.
    recoveredValue1 := (recoveredValue0) createDefault.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) maxSize.
    (recoveredValue2) maxSize: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) xDistributionType.
    recoveredValue6 := (recoveredValue5) modelType.
    (recoveredValue4) xType: (recoveredValue6).
    recoveredValue7 := recoveredValue1.
    recoveredValue8 := (self) yDistributionType.
    recoveredValue9 := (recoveredValue8) modelType.
    (recoveredValue7) yType: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := (self) valueElementType.
    recoveredValue12 := (recoveredValue11) modelType.
    (recoveredValue10) valType: (recoveredValue12).
    recoveredValue13 := recoveredValue1.
    recoveredValue14 := (self) isCgFixedCharTableInModel.
    (recoveredValue13) fixed: (recoveredValue14).
    recoveredValue15 := recoveredValue1.
    recoveredValue16 := (self) xDistributionAlias.
    (recoveredValue15) xDistributionAlias: (recoveredValue16).
    recoveredValue17 := recoveredValue1.
    recoveredValue18 := SGDistribution.
    recoveredValue19 := (recoveredValue18) createDefault.
    recoveredValue20 := recoveredValue19.
    recoveredValue21 := (self) xDistributionType.
    recoveredValue22 := (recoveredValue21) modelType.
    (recoveredValue20) basicType: (recoveredValue22).
    recoveredValue23 := recoveredValue19.
    recoveredValue24 := (self) maxXSize.
    (recoveredValue23) maxSize: (recoveredValue24).
    (recoveredValue17) xDistribution: (recoveredValue19).
    recoveredValue25 := recoveredValue1.
    recoveredValue26 := (self) yDistributionAlias.
    (recoveredValue25) yDistributionAlias: (recoveredValue26).
    recoveredValue27 := recoveredValue1.
    recoveredValue28 := SGDistribution.
    recoveredValue29 := (recoveredValue28) createDefault.
    recoveredValue30 := recoveredValue29.
    recoveredValue31 := (self) yDistributionType.
    recoveredValue32 := (recoveredValue31) modelType.
    (recoveredValue30) basicType: (recoveredValue32).
    recoveredValue33 := recoveredValue29.
    recoveredValue34 := (self) maxYSize.
    (recoveredValue33) maxSize: (recoveredValue34).
    (recoveredValue27) yDistribution: (recoveredValue29).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20538c50; bytecode file offset 0xe3555c"
!SGCg2DGroupCharTableType methodsFor: 'recovered'!
checkForSpecialCall: recoveredArg1 receiver: recoveredArg2 args: recoveredArg3 mdBuilder: recoveredArg4
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'interpolate'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) label.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack5 := recoveredArg2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) pushArgs: (recoveredStack2) number: (recoveredStack3) specialCall: (recoveredStack4) receiver: (recoveredStack5).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) specialCallInterpolateTwoDGroup.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := 'getValue'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) label.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack5 := recoveredArg2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) pushArgs: (recoveredStack2) number: (recoveredStack3) specialCall: (recoveredStack4) receiver: (recoveredStack5).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) specialCallGetValueTwoDGroup.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := 'setValue'.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := (recoveredStack2) label.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := 3.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack5 := recoveredArg2.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack1) pushArgs: (recoveredStack2) number: (recoveredStack3) specialCall: (recoveredStack4) receiver: (recoveredStack5).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack1) specialCallSetValueTwoDGroup.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := 'getMaxSizeX'.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := (recoveredStack2) label.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 92].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack5 := recoveredArg2.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack1) pushArgs: (recoveredStack2) number: (recoveredStack3) specialCall: (recoveredStack4) receiver: (recoveredStack5).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack1) specialCallGetMaxSizeXTwoDGroup.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := 'getMaxSizeY'.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := (recoveredStack2) label.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 114].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack5 := recoveredArg2.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack1) pushArgs: (recoveredStack2) number: (recoveredStack3) specialCall: (recoveredStack4) receiver: (recoveredStack5).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack1) specialCallGetMaxSizeYTwoDGroup.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := 'getCurrentSizeX'.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack2 := (recoveredStack2) label.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 122] ifFalse: [recoveredPC := 136].
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack5 := recoveredArg2.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            (recoveredStack1) pushArgs: (recoveredStack2) number: (recoveredStack3) specialCall: (recoveredStack4) receiver: (recoveredStack5).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            (recoveredStack1) specialCallGetCurrentSizeXTwoDGroup.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := 'setCurrentSizeX'.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack2 := (recoveredStack2) label.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 144] ifFalse: [recoveredPC := 158].
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack5 := recoveredArg2.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            (recoveredStack1) pushArgs: (recoveredStack2) number: (recoveredStack3) specialCall: (recoveredStack4) receiver: (recoveredStack5).
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            (recoveredStack1) specialCallSetCurrentSizeXTwoDGroup.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := 'getCurrentSizeY'.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack2 := (recoveredStack2) label.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 166] ifFalse: [recoveredPC := 180].
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack5 := recoveredArg2.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            (recoveredStack1) pushArgs: (recoveredStack2) number: (recoveredStack3) specialCall: (recoveredStack4) receiver: (recoveredStack5).
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            (recoveredStack1) specialCallGetCurrentSizeYTwoDGroup.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack1 := 'setCurrentSizeY'.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack2 := (recoveredStack2) label.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 188] ifFalse: [recoveredPC := 202].
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack5 := recoveredArg2.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            (recoveredStack1) pushArgs: (recoveredStack2) number: (recoveredStack3) specialCall: (recoveredStack4) receiver: (recoveredStack5).
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            (recoveredStack1) specialCallSetCurrentSizeYTwoDGroup.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlSemErrUndefinedMethod: (recoveredStack2) receiver: (recoveredStack3).
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

