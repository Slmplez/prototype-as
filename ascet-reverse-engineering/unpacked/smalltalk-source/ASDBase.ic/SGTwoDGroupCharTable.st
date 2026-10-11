"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20005d78; bytecode file offset 0x902744"
!SGTwoDGroupCharTable methodsFor: 'recovered'!
internalWriteXMLAxes: recoveredArg1 implementation: recoveredArg2
    ^self
! !

"ASDBase.ic method 0x20007bd4; bytecode file offset 0x908be4"
!SGTwoDGroupCharTable methodsFor: 'recovered'!
createData
    | recoveredValue0 |
    recoveredValue0 := (self) createDataElement.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000ccb4; bytecode file offset 0x909658"
!SGTwoDGroupCharTable methodsFor: 'recovered'!
setSourceAlias: recoveredArg1
    ^false
! !

"ASDBase.ic method 0x200134a0; bytecode file offset 0x912098"
!SGTwoDGroupCharTable methodsFor: 'recovered'!
dataElementClass
    | recoveredValue0 |
    recoveredValue0 := RBTwoDGroupCharTable.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20017624; bytecode file offset 0x92209c"
!SGTwoDGroupCharTable methodsFor: 'recovered'!
extendedInterfaceNames
    ^#()
! !

"ASDBase.ic method 0x20019ff4; bytecode file offset 0x92209c"
!SGTwoDGroupCharTable methodsFor: 'recovered'!
getXMLDistributionType
    ^'grouped'
! !

"ASDBase.ic method 0x2001dda4; bytecode file offset 0x92209c"
!SGTwoDGroupCharTable methodsFor: 'recovered'!
dataElementEditType
    ^'GKf'
! !

"ASDBase.ic method 0x2001de7c; bytecode file offset 0x92209c"
!SGTwoDGroupCharTable methodsFor: 'recovered'!
docuConfigType
    ^'groupTwoD'
! !

"ASDBase.ic method 0x20038fe8; bytecode file offset 0x935c54"
!SGTwoDGroupCharTable methodsFor: 'recovered'!
checkForAdequateData: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) isRBTwoDCharTable.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006e664; bytecode file offset 0x96af48"
!SGTwoDGroupCharTable methodsFor: 'recovered'!
xDistributionAlias
    | recoveredValue0 |
    recoveredValue0 := xDistributionAlias.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006e878; bytecode file offset 0x96b41c"
!SGTwoDGroupCharTable methodsFor: 'recovered'!
yDistributionAlias
    | recoveredValue0 |
    recoveredValue0 := yDistributionAlias.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006edec; bytecode file offset 0x96b8a0"
!SGTwoDGroupCharTable methodsFor: 'recovered'!
yDistribution
    | recoveredValue0 |
    recoveredValue0 := yDistribution.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006f0f8; bytecode file offset 0x96bc1c"
!SGTwoDGroupCharTable methodsFor: 'recovered'!
xDistribution
    | recoveredValue0 |
    recoveredValue0 := xDistribution.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200757bc; bytecode file offset 0x9757c8"
!SGTwoDGroupCharTable methodsFor: 'recovered'!
isGroupCharTable
    ^true
! !

"ASDBase.ic method 0x20085458; bytecode file offset 0x981d1c"
!SGTwoDGroupCharTable methodsFor: 'recovered'!
setDefaultFormula: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) setDefaultFormulaForValue: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20088624; bytecode file offset 0x985628"
!SGTwoDGroupCharTable methodsFor: 'recovered'!
methods
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := Array.
    recoveredValue1 := (self) interpolateMethod.
    recoveredValue2 := (recoveredValue0) with: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200b79e0; bytecode file offset 0x9b42ec"
!SGTwoDGroupCharTable methodsFor: 'recovered'!
implementationSubstitutionsFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Array.
    recoveredValue1 := EtasImplementationSubstitutionValue.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) createSubstFor: (recoveredValue2).
    recoveredValue4 := (recoveredValue0) with: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200c4b04; bytecode file offset 0x9c16b0"
!SGTwoDGroupCharTable methodsFor: 'recovered'!
xDistributionAlias: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    xDistributionAlias := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5148; bytecode file offset 0x9c1afc"
!SGTwoDGroupCharTable methodsFor: 'recovered'!
yDistributionAlias: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    yDistributionAlias := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5698; bytecode file offset 0x9c1f64"
!SGTwoDGroupCharTable methodsFor: 'recovered'!
yDistribution: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    yDistribution := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c595c; bytecode file offset 0x9c22c8"
!SGTwoDGroupCharTable methodsFor: 'recovered'!
xDistribution: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    xDistribution := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200cc140; bytecode file offset 0x9c8a00"
!SGTwoDGroupCharTable methodsFor: 'recovered'!
distributionAliasNames
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Array.
    recoveredValue1 := (self) xDistributionAlias.
    recoveredValue2 := yDistributionAlias.
    recoveredValue3 := (recoveredValue0) with: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200e5560; bytecode file offset 0x9e1f3c"
!SGTwoDGroupCharTable methodsFor: 'recovered'!
xType
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) xDistribution.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := nil.
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
            recoveredStack0 := (recoveredStack0) xDistribution.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) basicType.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200e5600; bytecode file offset 0x9e1f3c"
!SGTwoDGroupCharTable methodsFor: 'recovered'!
yType
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) yDistribution.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := nil.
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
            recoveredStack0 := (recoveredStack0) yDistribution.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) basicType.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200e7e7c; bytecode file offset 0x9e4738"
!SGTwoDGroupCharTable methodsFor: 'recovered'!
conformsWith: recoveredArg1
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
            recoveredStack2 := (recoveredStack2) isSGTwoDCharTable.
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
            recoveredStack1 := (recoveredStack1) isGroupCharTable.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x200fe2c8; bytecode file offset 0x9fac64"
!SGTwoDGroupCharTable methodsFor: 'recovered'!
updateYDistributionFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) sgClass.
    (self) yDistribution: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) aliasName.
    (self) yDistributionAlias: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x200fe388; bytecode file offset 0x9fac64"
!SGTwoDGroupCharTable methodsFor: 'recovered'!
updateXDistributionFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) sgClass.
    (self) xDistribution: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) aliasName.
    (self) xDistributionAlias: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2010533c; bytecode file offset 0xa01c88"
!SGTwoDGroupCharTable methodsFor: 'recovered'!
methodPositions
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := SGReservedNames.
    recoveredValue4 := (recoveredValue3) interpolateMethod.
    (recoveredValue2) at: (recoveredValue4) put: (#(150)).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2014a994; bytecode file offset 0xa47254"
!SGTwoDGroupCharTable methodsFor: 'recovered'!
getYDistributionElementFor: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) owner.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) yDistributionAlias.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) elementAliasName: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201a6534; bytecode file offset 0xaa2e00"
!SGTwoDGroupCharTable methodsFor: 'recovered'!
convertAdequateData: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) getMaxSize.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) maxSize.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 17].
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
            recoveredStack2 := (recoveredStack2) maxSize.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) setMaxSize: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) valType.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) values.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) checkPhysTypeOf: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201d7474; bytecode file offset 0xad3d3c"
!SGTwoDGroupCharTable methodsFor: 'recovered'!
maxSize
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) xDistribution.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) yDistribution.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) xDistribution.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) maxSize.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) yDistribution.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) maxSize.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) @ (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultMaxSize.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2024a7f0; bytecode file offset 0xb470b8"
!SGTwoDGroupCharTable methodsFor: 'recovered'!
xmlFixupAfterImport: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := xDistributionAlias.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlElementByOID: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := [:block280dea74Arg1 | 
    | block280dea74Value0 block280dea74Value1 |
    block280dea74Value0 := block280dea74Arg1.
    block280dea74Value1 := (block280dea74Value0) sgClass.
    block280dea74Value1
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            xDistribution := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := yDistributionAlias.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlElementByOID: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := [:block280dea98Arg1 | 
    | block280dea98Value0 block280dea98Value1 |
    block280dea98Value0 := block280dea98Arg1.
    block280dea98Value1 := (block280dea98Value0) sgClass.
    block280dea98Value1
].
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            yDistribution := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2028483c; bytecode file offset 0xb81110"
!SGTwoDGroupCharTable methodsFor: 'recovered'!
checkForCompatibleData: recoveredArg1
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
            recoveredStack0 := (recoveredStack0) checkForAdequateData: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) getMaxSize.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) maxSize.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) valType.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultPhysType.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) values.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) getPhysType.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0 == recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202f8bd8; bytecode file offset 0xbf54c8"
!SGTwoDGroupCharTable methodsFor: 'recovered'!
computeImplDataFor: recoveredArg1 withImpl: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (self) createDataElementWithImpl: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) value.
    recoveredValue6 := (recoveredValue5) extrapolationValue.
    (recoveredValue3) extrapolationValue: (recoveredValue6).
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue7) value.
    recoveredValue9 := (recoveredValue8) interpolationValue.
    (recoveredValue2) interpolationValue: (recoveredValue9).
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := (recoveredValue10) values.
    recoveredValue12 := recoveredValue11.
    recoveredValue13 := recoveredArg1.
    recoveredValue14 := (recoveredValue13) value.
    recoveredValue15 := (recoveredValue14) xDistribution.
    recoveredValue16 := (recoveredValue15) maxSize.
    recoveredValue17 := recoveredArg1.
    recoveredValue18 := (recoveredValue17) value.
    recoveredValue19 := (recoveredValue18) yDistribution.
    recoveredValue20 := (recoveredValue19) maxSize.
    recoveredValue21 := (recoveredValue16) @ (recoveredValue20).
    (recoveredValue12) maxSize: (recoveredValue21).
    recoveredValue22 := recoveredValue11.
    recoveredValue23 := recoveredArg1.
    recoveredValue24 := (recoveredValue23) value.
    recoveredValue25 := (recoveredValue24) values.
    recoveredValue26 := (recoveredValue25) getPhysValue.
    (recoveredValue22) setPhysValue: (recoveredValue26).
    (recoveredValue11) updateImplementationRepresentation.
    recoveredValue27 := recoveredLocal1.
    ^recoveredValue27
! !

"ASDBase.ic method 0x20318838; bytecode file offset 0xc15108"
!SGTwoDGroupCharTable methodsFor: 'recovered'!
replaceAliasNames: recoveredArg1 sgClass: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) xDistributionAlias.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) includesKey: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := (recoveredStack3) xDistributionAlias.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) elementAliasName: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) updateXDistributionFor: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := (recoveredStack2) yDistributionAlias.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) includesKey: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack3 := (recoveredStack3) yDistributionAlias.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) elementAliasName: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1) updateYDistributionFor: (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2033480c; bytecode file offset 0xc310d8"
!SGTwoDGroupCharTable methodsFor: 'recovered'!
replaceAliasNames: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) xDistributionAlias.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := recoveredArg1.
    recoveredBlock5Value1 := recoveredBlock5Arg1.
    recoveredBlock5Value2 := [:recoveredBlock5Block16Arg1 | 
    | recoveredBlock5Block16Value0 recoveredBlock5Block16Value1 |
    recoveredBlock5Block16Value0 := recoveredBlock5Block16Arg1.
    recoveredBlock5Block16Value1 := (self) xDistributionAlias: (recoveredBlock5Block16Value0).
    recoveredBlock5Block16Value1
].
    recoveredBlock5Value3 := (recoveredBlock5Value0) at: (recoveredBlock5Value1) ifPresent: (recoveredBlock5Value2).
    recoveredBlock5Value3
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    recoveredValue2 := (self) yDistributionAlias.
    recoveredValue3 := [:recoveredBlock33Arg1 | 
    | recoveredBlock33Value0 recoveredBlock33Value1 recoveredBlock33Value2 recoveredBlock33Value3 |
    recoveredBlock33Value0 := recoveredArg1.
    recoveredBlock33Value1 := recoveredBlock33Arg1.
    recoveredBlock33Value2 := [:recoveredBlock33Block44Arg1 | 
    | recoveredBlock33Block44Value0 recoveredBlock33Block44Value1 |
    recoveredBlock33Block44Value0 := recoveredBlock33Block44Arg1.
    recoveredBlock33Block44Value1 := (self) yDistributionAlias: (recoveredBlock33Block44Value0).
    recoveredBlock33Block44Value1
].
    recoveredBlock33Value3 := (recoveredBlock33Value0) at: (recoveredBlock33Value1) ifPresent: (recoveredBlock33Value2).
    recoveredBlock33Value3
].
    (recoveredValue2) ifNotNil: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2035d860; bytecode file offset 0xc5a144"
!SGTwoDGroupCharTable methodsFor: 'recovered'!
createDataElementForPhysQuantWithImpl: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) valType.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSGReal.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
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
            recoveredStack0 := (recoveredStack0) createDataElementWithImpl: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) createDataElement.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) valType.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSGReal.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) values.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) values.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) updateDataElementForPhysQuantWithImpl: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) xType.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSGReal.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) xDistribution.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) physQuantImplType.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) setImplType: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) yType.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSGReal.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) yDistribution.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) physQuantImplType.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) setImplType: (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2035eec8; bytecode file offset 0xc5b7a4"
!SGTwoDGroupCharTable methodsFor: 'recovered'!
label
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
            recoveredStack0 := (recoveredStack0) valType.
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
            recoveredStack0 := (recoveredStack0) valType.
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
            recoveredStack1 := (recoveredStack1) valType.
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

"ASDBase.ic method 0x2036984c; bytecode file offset 0xc6612c"
!SGTwoDGroupCharTable methodsFor: 'recovered'!
checkData: recoveredArg1 valueConfig: recoveredArg2
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
            recoveredStack2 := [:block280f1038Arg1 | 
    nil
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClassIfUndefined: (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 recoveredBlock13Value3 recoveredBlock13Value4 recoveredBlock13Value5 recoveredBlock13Value6 recoveredBlock13Value7 recoveredBlock13Value8 |
    recoveredBlock13Value0 := recoveredBlock13Arg1.
    recoveredBlock13Value1 := (self) xDistributionAlias.
    recoveredBlock13Value2 := (recoveredBlock13Value0) elementAliasName: (recoveredBlock13Value1).
    recoveredBlock13Value3 := [:recoveredBlock13Block24Arg1 | 
    | recoveredBlock13Block24Value0 recoveredBlock13Block24Value1 recoveredBlock13Block24Value2 |
    recoveredBlock13Block24Value0 := recoveredBlock13Block24Arg1.
    recoveredBlock13Block24Value1 := (recoveredBlock13Block24Value0) sgClass.
    recoveredBlock13Block24Value2 := (self) xDistribution: (recoveredBlock13Block24Value1).
    recoveredBlock13Block24Value2
].
    (recoveredBlock13Value2) ifNotNil: (recoveredBlock13Value3).
    recoveredBlock13Value4 := recoveredBlock13Arg1.
    recoveredBlock13Value5 := (self) yDistributionAlias.
    recoveredBlock13Value6 := (recoveredBlock13Value4) elementAliasName: (recoveredBlock13Value5).
    recoveredBlock13Value7 := [:recoveredBlock13Block43Arg1 | 
    | recoveredBlock13Block43Value0 recoveredBlock13Block43Value1 recoveredBlock13Block43Value2 |
    recoveredBlock13Block43Value0 := recoveredBlock13Block43Arg1.
    recoveredBlock13Block43Value1 := (recoveredBlock13Block43Value0) sgClass.
    recoveredBlock13Block43Value2 := (self) yDistribution: (recoveredBlock13Block43Value1).
    recoveredBlock13Block43Value2
].
    recoveredBlock13Value8 := (recoveredBlock13Value6) ifNotNil: (recoveredBlock13Value7).
    recoveredBlock13Value8
].
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := super checkData: (recoveredStack1) valueConfig: (recoveredStack2).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2038c7e4; bytecode file offset 0xc890bc"
!SGTwoDGroupCharTable methodsFor: 'recovered'!
distributionLabel: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) xDistributionAlias.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) elementAliasName: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := SGReservedNames.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) undefName.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := (recoveredStack2) elementName.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := ','.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := (recoveredStack2) yDistributionAlias.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) elementAliasName: (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := SGReservedNames.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := (recoveredStack2) undefName.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredPC := 71.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := (recoveredStack2) elementName.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20391264; bytecode file offset 0xc8db64"
!SGTwoDGroupCharTable methodsFor: 'recovered'!
createDataElementWithImpl: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 |
    recoveredValue0 := (self) createDataElement.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := (self) xDistribution.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) xDistribution.
    recoveredValue5 := (recoveredValue2) createDataElementWithImpl: (recoveredValue4).
    (recoveredValue1) xDistribution: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (self) yDistribution.
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := (recoveredValue8) yDistribution.
    recoveredValue10 := (recoveredValue7) createDataElementWithImpl: (recoveredValue9).
    (recoveredValue6) yDistribution: (recoveredValue10).
    recoveredValue11 := recoveredLocal1.
    recoveredValue12 := (recoveredValue11) values.
    recoveredValue13 := recoveredValue12.
    recoveredValue14 := recoveredArg1.
    recoveredValue15 := (recoveredValue14) values.
    recoveredValue16 := (recoveredValue15) formula.
    (recoveredValue13) formula: (recoveredValue16).
    recoveredValue17 := recoveredValue12.
    recoveredValue18 := recoveredArg1.
    recoveredValue19 := (recoveredValue18) values.
    recoveredValue20 := (recoveredValue19) getImplType.
    (recoveredValue17) setImplType: (recoveredValue20).
    recoveredValue21 := recoveredValue12.
    recoveredValue22 := recoveredArg1.
    recoveredValue23 := (recoveredValue22) values.
    recoveredValue24 := (recoveredValue23) getPhysInterval.
    (recoveredValue21) setPhysInterval: (recoveredValue24).
    recoveredValue25 := recoveredValue12.
    recoveredValue26 := recoveredArg1.
    recoveredValue27 := (recoveredValue26) values.
    recoveredValue28 := (recoveredValue27) access.
    (recoveredValue25) access: (recoveredValue28).
    recoveredValue29 := recoveredArg1.
    recoveredValue30 := (recoveredValue29) values.
    recoveredValue31 := (recoveredValue30) maxSize.
    (recoveredValue12) maxSize: (recoveredValue31).
    recoveredValue32 := recoveredLocal1.
    recoveredValue33 := recoveredArg1.
    recoveredValue34 := (recoveredValue33) interpolationValue.
    (recoveredValue32) interpolationValue: (recoveredValue34).
    recoveredValue35 := recoveredLocal1.
    ^recoveredValue35
! !

"ASDBase.ic method 0x203e08e4; bytecode file offset 0xcdd1c0"
!SGTwoDGroupCharTable methodsFor: 'recovered'!
writeXMLElementInfo: recoveredArg1 class: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    super writeXMLElementInfo: (recoveredValue0) class: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := xDistributionAlias.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (self) xmlNameForElement: (recoveredValue3) class: (recoveredValue4).
    (recoveredValue2) attr: ('xDistributionName') nmToken: (recoveredValue5).
    recoveredValue6 := xDistributionAlias.
    recoveredValue7 := [
    | recoveredBlock31Value0 recoveredBlock31Value1 recoveredBlock31Value2 |
    recoveredBlock31Value0 := recoveredArg1.
    recoveredBlock31Value1 := xDistributionAlias.
    recoveredBlock31Value2 := (recoveredBlock31Value0) attr: ('xDistributionOID') localId: (recoveredBlock31Value1).
    recoveredBlock31Value2
].
    (recoveredValue6) notNil: (recoveredValue7).
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := yDistributionAlias.
    recoveredValue10 := recoveredArg2.
    recoveredValue11 := (self) xmlNameForElement: (recoveredValue9) class: (recoveredValue10).
    (recoveredValue8) attr: ('yDistributionName') nmToken: (recoveredValue11).
    recoveredValue12 := yDistributionAlias.
    recoveredValue13 := [
    | recoveredBlock67Value0 recoveredBlock67Value1 recoveredBlock67Value2 |
    recoveredBlock67Value0 := recoveredArg1.
    recoveredBlock67Value1 := yDistributionAlias.
    recoveredBlock67Value2 := (recoveredBlock67Value0) attr: ('yDistributionOID') localId: (recoveredBlock67Value1).
    recoveredBlock67Value2
].
    (recoveredValue12) notNil: (recoveredValue13).
    ^self
! !

"ASDBase.ic method 0x2042b1d4; bytecode file offset 0xd27ad4"
!SGTwoDGroupCharTable methodsFor: 'recovered'!
checkImplementation: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isUserDefined.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) createImplementation.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) values.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) getPhysType.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) valType.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) defaultPhysType.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 93] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) values.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := (recoveredStack2) valType.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := (recoveredStack2) defaultPhysType.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) setPhysType: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) values.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) getPhysType.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRBInteger.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 77].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := 'Call_55714'.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := RBInteger.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := (recoveredStack2) values.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := (recoveredStack2) getImplType.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) providesImplType: (recoveredStack2).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 77] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) values.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := (recoveredStack2) valType.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := (recoveredStack2) defaultImplType.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack1) setImplType: (recoveredStack2).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) values.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack1) updateImplementationRepresentation.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := (recoveredStack2) values.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack1) checkImplementationIntervalAdaption: (recoveredStack2).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := (recoveredStack2) values.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack1) adjustImplementationLimiter: (recoveredStack2).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 98] ifFalse: [recoveredPC := 102].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredPC := 103.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2043b2fc; bytecode file offset 0xd37c18"
!SGTwoDGroupCharTable methodsFor: 'recovered'!
createDataElement
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) xDistribution.
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
            recoveredStack0 := (recoveredStack0) yDistribution.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := nil.
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
            recoveredStack0 := (recoveredStack0) dataElementClass.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) xDistribution.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) createDataElement.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) xDistribution: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) yDistribution.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) createDataElement.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) yDistribution: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := RBDataMatrix.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := (recoveredStack3) valType.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := (recoveredStack3) defaultPhysType.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := (recoveredStack2) createForType: (recoveredStack3).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) values: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) updateInterpolationFromElementType: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) xDistribution.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) description.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) groupDistributionElementEditType.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) typ: (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) yDistribution.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) description.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) groupDistributionElementEditType.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0) typ: (recoveredStack1).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) values.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) formula.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := SGReservedNames.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultFormulaName.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0) name: (recoveredStack1).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) values.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) maxSize.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack0) maxSize: (recoveredStack1).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := (recoveredStack0) values.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := (recoveredStack1) valType.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := (recoveredStack1) unit.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack0) unit: (recoveredStack1).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := (recoveredStack0) values.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := (recoveredStack0) description.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := (recoveredStack1) dataElementEditType.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack0) typ: (recoveredStack1).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204469cc; bytecode file offset 0xd432e8"
!SGTwoDGroupCharTable methodsFor: 'recovered'!
createDataElementForPlatform: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) xDistribution.
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
            recoveredStack0 := (recoveredStack0) yDistribution.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := nil.
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
            recoveredStack0 := (recoveredStack0) dataElementClass.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) xDistribution.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) createDataElementForPlatform: (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) xDistribution: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) yDistribution.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) createDataElementForPlatform: (recoveredStack3).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) yDistribution: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := RBDataMatrix.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := (recoveredStack3) valType.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := (recoveredStack3) defaultPhysTypeForPlatform: (recoveredStack4).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := (recoveredStack2) createForType: (recoveredStack3).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) values: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) updateInterpolationFromElementType: (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) xDistribution.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) description.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) groupDistributionElementEditType.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) typ: (recoveredStack1).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) yDistribution.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) description.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) groupDistributionElementEditType.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) typ: (recoveredStack1).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) values.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) formula.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := SGReservedNames.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultFormulaName.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0) name: (recoveredStack1).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) values.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := (recoveredStack1) maxSize.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack0) maxSize: (recoveredStack1).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := (recoveredStack0) values.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := (recoveredStack1) valType.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := (recoveredStack1) unit.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack0) unit: (recoveredStack1).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := (recoveredStack0) values.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := (recoveredStack0) description.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := (recoveredStack1) dataElementEditType.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack0) typ: (recoveredStack1).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204b466c; bytecode file offset 0xdb0f58"
!SGTwoDGroupCharTable methodsFor: 'recovered'!
createAndAddAccessForKey: recoveredArg1 dataElem: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isString.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 141] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := EtasETPseudoAddress.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) createInstVarAtOffset: (recoveredStack3).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := EtasETPseudoAddress.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) createInstVarAtOffset: (recoveredStack3).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := EtasETPseudoAddress.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := (recoveredStack2) createInstVarAtOffset: (recoveredStack3).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := SGAccessScalar.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := recoveredLocal11.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForSimKey: (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal6 := recoveredStack2.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := SGAccessScalar.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := recoveredLocal10.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForSimKey: (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredLocal5 := recoveredStack2.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := SGAccessMatrix.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForSimKey: (recoveredStack2).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := (recoveredStack1) getInterpolation.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack3 := (recoveredStack3) getInterpolation.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := (recoveredStack2) charElement: (recoveredStack3).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack1) access: (recoveredStack2).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := (recoveredStack1) getExtrapolation.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack3 := (recoveredStack3) getExtrapolation.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack2 := (recoveredStack2) charElement: (recoveredStack3).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack1) access: (recoveredStack2).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := (recoveredStack1) values.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack3 := (recoveredStack3) values.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := (recoveredStack2) charElement: (recoveredStack3).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack1) access: (recoveredStack2).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := (recoveredStack1) readMaxSize.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := (recoveredStack1) values.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            (recoveredStack1) maxSize: (recoveredStack2).
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack2) getInterpolation.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            (recoveredStack1) getExtrapolation.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20531b70; bytecode file offset 0xe2e478"
!SGTwoDGroupCharTable methodsFor: 'recovered'!
editValueConfig: recoveredArg1 elementName: recoveredArg2 context: recoveredArg3 parentValueConfig: recoveredArg4 mainController: recoveredArg5
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := CwMessagePrompter.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 'No Data selected'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := [:recoveredBlock21Arg1 | 
    ^nil
].
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClassIfUndefined: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := (recoveredStack2) xDistributionAlias.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) elementAliasName: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal5 := recoveredStack2.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 59] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := RBUserInfo.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := 'The x-distribution is not valid. Please assign a distribution first!!'.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack1) prompt.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := recoveredArg4.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack3 := (recoveredStack3) project.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) getDataConfigForDistribution: (recoveredStack1) parentValueConfig: (recoveredStack2) rootClass: (recoveredStack3).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := (recoveredStack1) yDistributionAlias.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := (recoveredStack0) elementAliasName: (recoveredStack1).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 107] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := 'The y-distribution is not valid. Please assign a distribution first!!'.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack2 := recoveredArg4.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack3 := (recoveredStack3) project.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := (recoveredStack0) getDataConfigForDistribution: (recoveredStack1) parentValueConfig: (recoveredStack2) rootClass: (recoveredStack3).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 132] ifFalse: [recoveredPC := 130].
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack0 := (recoveredStack0) deepCopy.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            (recoveredStack0) updateWithXDis: (recoveredStack1) xDisVal: (recoveredStack2) yDis: (recoveredStack3) yDisVal: (recoveredStack4).
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack0 := (recoveredStack0) xDistribution.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := (recoveredStack1) label.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            (recoveredStack0) name: (recoveredStack1).
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack0 := (recoveredStack0) yDistribution.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := (recoveredStack1) label.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            (recoveredStack0) name: (recoveredStack1).
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack5 := recoveredArg5.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack0 := super editValueConfig: (recoveredStack1) elementName: (recoveredStack2) context: (recoveredStack3) parentValueConfig: (recoveredStack4) mainController: (recoveredStack5).
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2053b914; bytecode file offset 0xe3820c"
!SGTwoDGroupCharTable methodsFor: 'recovered'!
createDataElementWithName: recoveredArg1 dataConfig: recoveredArg2 parentValueConfig: recoveredArg3 rootClass: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := super createDataElementWithName: (recoveredStack1) dataConfig: (recoveredStack2) parentValueConfig: (recoveredStack3) rootClass: (recoveredStack4).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := [:recoveredBlock33Arg1 | 
    ^nil
].
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClassIfUndefined: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) xDistributionAlias.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) elementAliasName: (recoveredStack1).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) yDistributionAlias.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) elementAliasName: (recoveredStack1).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack3 := recoveredArg4.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := (recoveredStack0) getDataConfigForDistribution: (recoveredStack1) parentValueConfig: (recoveredStack2) rootClass: (recoveredStack3).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack3 := recoveredArg4.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := (recoveredStack0) getDataConfigForDistribution: (recoveredStack1) parentValueConfig: (recoveredStack2) rootClass: (recoveredStack3).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack0) updateWithXDis: (recoveredStack1) xDisVal: (recoveredStack2) yDis: (recoveredStack3) yDisVal: (recoveredStack4).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := $..
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexOf: (recoveredStack1).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 144] ifFalse: [recoveredPC := 166].
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack2 := $..
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexOf: (recoveredStack2).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyFrom: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredPC := 168.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack0 := ''.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack0 := (recoveredStack0) xDistribution.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack1 := (recoveredStack1) label.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            (recoveredStack0) name: (recoveredStack1).
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack0 := (recoveredStack0) yDistribution.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack1 := (recoveredStack1) label.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            (recoveredStack0) name: (recoveredStack1).
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

