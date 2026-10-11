"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2002f254; bytecode file offset 0x934580"
!SGDependencyParamCtrl methodsFor: 'recovered'!
dataTypeCompatibility
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) dataTypeCompatibility.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002f7e4; bytecode file offset 0x934580"
!SGDependencyParamCtrl methodsFor: 'recovered'!
scopeCompatibility
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) scopeCompatibility.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20030934; bytecode file offset 0x934580"
!SGDependencyParamCtrl methodsFor: 'recovered'!
getParameterName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) parameter.
    recoveredValue1 := (recoveredValue0) label.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003eef8; bytecode file offset 0x93bf94"
!SGDependencyParamCtrl methodsFor: 'recovered'!
getUndefined
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGReservedNames.
    recoveredValue1 := (recoveredValue0) undefinedDependentFormulaMapping.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20051664; bytecode file offset 0x94f0e0"
!SGDependencyParamCtrl methodsFor: 'recovered'!
isWritable
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) parameter.
    recoveredValue1 := (recoveredValue0) owner.
    recoveredValue2 := (recoveredValue1) modifiable.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20065f5c; bytecode file offset 0x963428"
!SGDependencyParamCtrl methodsFor: 'recovered'!
parameter
    | recoveredValue0 |
    recoveredValue0 := parameter.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200673a4; bytecode file offset 0x9646f8"
!SGDependencyParamCtrl methodsFor: 'recovered'!
table
    | recoveredValue0 |
    recoveredValue0 := table.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200680b4; bytecode file offset 0x965b90"
!SGDependencyParamCtrl methodsFor: 'recovered'!
modelParameters
    | recoveredValue0 |
    recoveredValue0 := modelParameters.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200862ec; bytecode file offset 0x982e18"
!SGDependencyParamCtrl methodsFor: 'recovered'!
getModelElementForAliasName: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) parameter.
    recoveredValue1 := (recoveredValue0) owner.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) elementAliasName: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20086404; bytecode file offset 0x982e18"
!SGDependencyParamCtrl methodsFor: 'recovered'!
getIdentifierForAliasName: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) parameter.
    recoveredValue1 := (recoveredValue0) formula.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) getIdentifierForAliasName: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200be504; bytecode file offset 0x9bb178"
!SGDependencyParamCtrl methodsFor: 'recovered'!
parameter: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    parameter := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bf330; bytecode file offset 0x9bc0b4"
!SGDependencyParamCtrl methodsFor: 'recovered'!
table: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    table := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c067c; bytecode file offset 0x9bd228"
!SGDependencyParamCtrl methodsFor: 'recovered'!
modelParameters: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    modelParameters := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200e67f8; bytecode file offset 0x9e30bc"
!SGDependencyParamCtrl methodsFor: 'recovered'!
initialize
    | recoveredValue0 |
    super initialize.
    recoveredValue0 := (self) class.
    (recoveredValue0) initializeClass.
    ^self
! !

"ASDBase.ic method 0x2015a258; bytecode file offset 0xa56b1c"
!SGDependencyParamCtrl methodsFor: 'recovered'!
getModelElementName: recoveredArg1
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
            recoveredStack2 := 2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) getModelElementForAliasName: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) getUndefined.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) label.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2015bb14; bytecode file offset 0xa583dc"
!SGDependencyParamCtrl methodsFor: 'recovered'!
scopeCompatible: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) parameter.
    recoveredValue1 := (self) getScope: (recoveredValue0).
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) getScope: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := (self) scopeCompatibility.
    recoveredValue5 := recoveredLocal2.
    recoveredValue6 := (recoveredValue4) at: (recoveredValue5).
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (recoveredValue6) includes: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x201d0b84; bytecode file offset 0xacd44c"
!SGDependencyParamCtrl methodsFor: 'recovered'!
getFormulaWithParameterName
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) formula.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := ''.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) getParameterName.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := ' = '.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20215628; bytecode file offset 0xb11ef0"
!SGDependencyParamCtrl methodsFor: 'recovered'!
changeTableEntry: recoveredArg1 to: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) getModelElementForString: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) aliasName.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) table.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202169e8; bytecode file offset 0xb132b0"
!SGDependencyParamCtrl methodsFor: 'recovered'!
dataTypeCompatible: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) parameter.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) getDataType: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := false.
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) getDataType: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataTypeCompatibility.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2021b950; bytecode file offset 0xb1821c"
!SGDependencyParamCtrl methodsFor: 'recovered'!
getScope: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isExported.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 'Exported'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) isImported.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := 'Imported'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) isLocal.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 31].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := 'Local'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2021c734; bytecode file offset 0xb19004"
!SGDependencyParamCtrl methodsFor: 'recovered'!
getIdentifierName: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ('Kli') == ('Call_90978').
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) at: (1).
    recoveredValue3 := (self) getIdentifierForAliasName: (recoveredValue2).
    recoveredValue4 := [:recoveredBlock17Arg1 | 
    | recoveredBlock17Value0 recoveredBlock17Value1 |
    recoveredBlock17Value0 := recoveredBlock17Arg1.
    recoveredBlock17Value1 := (recoveredBlock17Value0) identifier.
    ^recoveredBlock17Value1
].
    (recoveredValue3) ifNotNil: (recoveredValue4).
    ^''
! !

"ASDBase.ic method 0x2023f78c; bytecode file offset 0xb3c058"
!SGDependencyParamCtrl methodsFor: 'recovered'!
getModelElementForString: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) getUndefined.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) parameter.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) owner.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Value0 recoveredBlock18Value1 recoveredBlock18Value2 recoveredBlock18Value3 |
    recoveredBlock18Value0 := recoveredBlock18Arg1.
    recoveredBlock18Value1 := (recoveredBlock18Value0) label.
    recoveredBlock18Value2 := recoveredArg1.
    recoveredBlock18Value3 := (recoveredBlock18Value1) = (recoveredBlock18Value2).
    recoveredBlock18Value3
].
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) allVariablesDetect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20270320; bytecode file offset 0xb6cbf4"
!SGDependencyParamCtrl methodsFor: 'recovered'!
getModelParameterNamens
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) modelParameters.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 |
    recoveredBlock11Value0 := recoveredLocal1.
    recoveredBlock11Value1 := recoveredBlock11Arg1.
    recoveredBlock11Value2 := (recoveredBlock11Value1) label.
    recoveredBlock11Value3 := (recoveredBlock11Value0) add: (recoveredBlock11Value2).
    recoveredBlock11Value3
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (self) getUndefined.
    (recoveredValue4) addFirst: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x20298f50; bytecode file offset 0xb9581c"
!SGDependencyParamCtrl methodsFor: 'recovered'!
compatible: recoveredArg1 with: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'PROD1767'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 'Call_45302'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := 'Call_12902'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) isValidMappingElementForDependentParameter.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) isValidMappingElementForDependentParameter.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) isVariable.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) isVariable.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203baa94; bytecode file offset 0xcb7388"
!SGDependencyParamCtrl methodsFor: 'recovered'!
getDataType: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) sgClassKey.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSGScalar.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClassKey.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSGBoolean.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 'Scalar'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClassKey.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSGVector.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 29].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := 'Array'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClassKey.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSGDistribution.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 39].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := 'Distribution'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClassKey.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSGMatrix.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 49].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := 'Matrix'.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClassKey.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSGOneDCharTable.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 59].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := 'OneDTable'.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClassKey.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSGTwoDCharTable.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 69].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := 'TwoDTable'.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClassKey.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSGEnumeration.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 79].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := 'Enumeration'.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203c3610; bytecode file offset 0xcbfee0"
!SGDependencyParamCtrl methodsFor: 'recovered'!
checkBooleanCompatibility: recoveredArg1 with: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isComposite.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClass.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) basicType.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClass.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) isComposite.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClass.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) basicType.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredPC := 37.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClass.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSGBoolean.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDependent.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) formula.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) formula.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) containsBooleanOperator.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSGBoolean.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := (recoveredStack2) isSGBoolean.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203f3f04; bytecode file offset 0xcf07e8"
!SGDependencyParamCtrl methodsFor: 'recovered'!
getModelParameters
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SortedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280f9684Arg1 :block280f9684Arg2 | 
    | block280f9684Value0 block280f9684Value1 block280f9684Value2 block280f9684Value3 block280f9684Value4 |
    block280f9684Value0 := block280f9684Arg1.
    block280f9684Value1 := (block280f9684Value0) label.
    block280f9684Value2 := block280f9684Arg2.
    block280f9684Value3 := (block280f9684Value2) label.
    block280f9684Value4 := (block280f9684Value1) < (block280f9684Value3).
    block280f9684Value4
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) sortBlock: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) parameter.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) owner.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := [:recoveredBlock26Arg1 | 
    | recoveredBlock26Stack0 recoveredBlock26Stack1 recoveredBlock26Stack2 recoveredBlock26Stack3 recoveredBlock26Stack4 recoveredBlock26Stack5 recoveredBlock26PC recoveredBlock26Step recoveredBlock26Done recoveredBlock26Result |
    recoveredBlock26Stack0 := self.
    recoveredBlock26PC := 32.
    recoveredBlock26Done := false.
    [recoveredBlock26Done not] whileTrue: [
        recoveredBlock26Step := recoveredBlock26PC.
        recoveredBlock26Step = 32 ifTrue: [
            recoveredBlock26Stack1 := nil.
            recoveredBlock26PC := 33.
        ].
        recoveredBlock26Step = 33 ifTrue: [
            recoveredBlock26Stack2 := self.
            recoveredBlock26PC := 34.
        ].
        recoveredBlock26Step = 34 ifTrue: [
            recoveredBlock26Stack3 := recoveredBlock26Arg1.
            recoveredBlock26PC := 35.
        ].
        recoveredBlock26Step = 35 ifTrue: [
            recoveredBlock26Stack4 := self.
            recoveredBlock26PC := 36.
        ].
        recoveredBlock26Step = 36 ifTrue: [
            recoveredBlock26Stack4 := (recoveredBlock26Stack4) parameter.
            recoveredBlock26PC := 38.
        ].
        recoveredBlock26Step = 38 ifTrue: [
            recoveredBlock26Stack2 := (recoveredBlock26Stack2) checkBooleanCompatibility: (recoveredBlock26Stack3) with: (recoveredBlock26Stack4).
            recoveredBlock26PC := 40.
        ].
        recoveredBlock26Step = 40 ifTrue: [
            (recoveredBlock26Stack2) ifTrue: [recoveredBlock26PC := 44] ifFalse: [recoveredBlock26PC := 85].
        ].
        recoveredBlock26Step = 44 ifTrue: [
            recoveredBlock26Stack2 := self.
            recoveredBlock26PC := 45.
        ].
        recoveredBlock26Step = 45 ifTrue: [
            recoveredBlock26Stack3 := recoveredBlock26Arg1.
            recoveredBlock26PC := 46.
        ].
        recoveredBlock26Step = 46 ifTrue: [
            recoveredBlock26Stack4 := self.
            recoveredBlock26PC := 47.
        ].
        recoveredBlock26Step = 47 ifTrue: [
            recoveredBlock26Stack4 := (recoveredBlock26Stack4) parameter.
            recoveredBlock26PC := 49.
        ].
        recoveredBlock26Step = 49 ifTrue: [
            recoveredBlock26Stack2 := (recoveredBlock26Stack2) compatible: (recoveredBlock26Stack3) with: (recoveredBlock26Stack4).
            recoveredBlock26PC := 51.
        ].
        recoveredBlock26Step = 51 ifTrue: [
            (recoveredBlock26Stack2) ifTrue: [recoveredBlock26PC := 54] ifFalse: [recoveredBlock26PC := 85].
        ].
        recoveredBlock26Step = 54 ifTrue: [
            recoveredBlock26Stack2 := recoveredBlock26Arg1.
            recoveredBlock26PC := 55.
        ].
        recoveredBlock26Step = 55 ifTrue: [
            recoveredBlock26Stack3 := parameter.
            recoveredBlock26PC := 57.
        ].
        recoveredBlock26Step = 57 ifTrue: [
            recoveredBlock26Stack2 := (recoveredBlock26Stack2) = (recoveredBlock26Stack3).
            recoveredBlock26PC := 58.
        ].
        recoveredBlock26Step = 58 ifTrue: [
            (recoveredBlock26Stack2) ifTrue: [recoveredBlock26PC := 85] ifFalse: [recoveredBlock26PC := 62].
        ].
        recoveredBlock26Step = 62 ifTrue: [
            recoveredBlock26Stack2 := self.
            recoveredBlock26PC := 63.
        ].
        recoveredBlock26Step = 63 ifTrue: [
            recoveredBlock26Stack3 := recoveredBlock26Arg1.
            recoveredBlock26PC := 64.
        ].
        recoveredBlock26Step = 64 ifTrue: [
            recoveredBlock26Stack2 := (recoveredBlock26Stack2) dataTypeCompatible: (recoveredBlock26Stack3).
            recoveredBlock26PC := 66.
        ].
        recoveredBlock26Step = 66 ifTrue: [
            (recoveredBlock26Stack2) ifTrue: [recoveredBlock26PC := 70] ifFalse: [recoveredBlock26PC := 85].
        ].
        recoveredBlock26Step = 70 ifTrue: [
            recoveredBlock26Stack2 := self.
            recoveredBlock26PC := 71.
        ].
        recoveredBlock26Step = 71 ifTrue: [
            recoveredBlock26Stack3 := recoveredBlock26Arg1.
            recoveredBlock26PC := 72.
        ].
        recoveredBlock26Step = 72 ifTrue: [
            recoveredBlock26Stack2 := (recoveredBlock26Stack2) scopeCompatible: (recoveredBlock26Stack3).
            recoveredBlock26PC := 74.
        ].
        recoveredBlock26Step = 74 ifTrue: [
            (recoveredBlock26Stack2) ifTrue: [recoveredBlock26PC := 78] ifFalse: [recoveredBlock26PC := 85].
        ].
        recoveredBlock26Step = 78 ifTrue: [
            recoveredBlock26PC := 79.
        ].
        recoveredBlock26Step = 79 ifTrue: [
            recoveredBlock26Stack1 := recoveredLocal1.
            recoveredBlock26PC := 82.
        ].
        recoveredBlock26Step = 82 ifTrue: [
            recoveredBlock26Stack2 := recoveredBlock26Arg1.
            recoveredBlock26PC := 83.
        ].
        recoveredBlock26Step = 83 ifTrue: [
            recoveredBlock26Stack1 := (recoveredBlock26Stack1) add: (recoveredBlock26Stack2).
            recoveredBlock26PC := 85.
        ].
        recoveredBlock26Step = 85 ifTrue: [
            recoveredBlock26Result := recoveredBlock26Stack1.
            recoveredBlock26Done := true.
        ].
    ].
    recoveredBlock26Result
].
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack0) allPrimitiveVariablesDo: (recoveredStack1).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2041dca0; bytecode file offset 0xd1a594"
!SGDependencyParamCtrl methodsFor: 'recovered'!
getTableAsList
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := SortedCollection.
    recoveredValue1 := [:recoveredBlock6Arg1 :recoveredBlock6Arg2 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 recoveredBlock6Value4 recoveredBlock6Value5 recoveredBlock6Value6 recoveredBlock6Value7 recoveredBlock6Value8 recoveredBlock6Value9 recoveredBlock6Value10 recoveredBlock6Value11 recoveredBlock6Value12 |
    recoveredBlock6Value0 := (self) parameter.
    recoveredBlock6Value1 := (recoveredBlock6Value0) formula.
    recoveredBlock6Value2 := recoveredBlock6Arg1.
    recoveredBlock6Value3 := (recoveredBlock6Value2) at: (1).
    recoveredBlock6Value4 := (recoveredBlock6Value1) getIdentifierForAliasName: (recoveredBlock6Value3).
    recoveredBlock6Value5 := (recoveredBlock6Value4) identifier.
    recoveredBlock6Value6 := (self) parameter.
    recoveredBlock6Value7 := (recoveredBlock6Value6) formula.
    recoveredBlock6Value8 := recoveredBlock6Arg2.
    recoveredBlock6Value9 := (recoveredBlock6Value8) at: (1).
    recoveredBlock6Value10 := (recoveredBlock6Value7) getIdentifierForAliasName: (recoveredBlock6Value9).
    recoveredBlock6Value11 := (recoveredBlock6Value10) identifier.
    recoveredBlock6Value12 := (recoveredBlock6Value5) < (recoveredBlock6Value11).
    recoveredBlock6Value12
].
    recoveredValue2 := (recoveredValue0) sortBlock: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := (self) table.
    recoveredValue4 := [:recoveredBlock42Arg1 :recoveredBlock42Arg2 | 
    | recoveredBlock42Local1 recoveredBlock42Local2 recoveredBlock42Stack0 recoveredBlock42Stack1 recoveredBlock42Stack2 recoveredBlock42Stack3 recoveredBlock42Stack4 recoveredBlock42PC recoveredBlock42Step recoveredBlock42Done recoveredBlock42Result |
    recoveredBlock42Stack0 := self.
    recoveredBlock42PC := 48.
    recoveredBlock42Done := false.
    [recoveredBlock42Done not] whileTrue: [
        recoveredBlock42Step := recoveredBlock42PC.
        recoveredBlock42Step = 48 ifTrue: [
            recoveredBlock42Stack1 := recoveredBlock42Arg2.
            recoveredBlock42PC := 49.
        ].
        recoveredBlock42Step = 49 ifTrue: [
            recoveredBlock42Stack0 := (recoveredBlock42Stack0) getModelElementForAliasName: (recoveredBlock42Stack1).
            recoveredBlock42PC := 51.
        ].
        recoveredBlock42Step = 51 ifTrue: [
            recoveredBlock42Local2 := recoveredBlock42Stack0.
            recoveredBlock42PC := 52.
        ].
        recoveredBlock42Step = 52 ifTrue: [
            recoveredBlock42Stack0 := recoveredBlock42Local2.
            recoveredBlock42PC := 53.
        ].
        recoveredBlock42Step = 53 ifTrue: [
            (recoveredBlock42Stack0 == nil) ifTrue: [recoveredBlock42PC := 72] ifFalse: [recoveredBlock42PC := 56].
        ].
        recoveredBlock42Step = 56 ifTrue: [
            recoveredBlock42Stack0 := self.
            recoveredBlock42PC := 57.
        ].
        recoveredBlock42Step = 57 ifTrue: [
            recoveredBlock42Stack1 := self.
            recoveredBlock42PC := 58.
        ].
        recoveredBlock42Step = 58 ifTrue: [
            recoveredBlock42Stack1 := (recoveredBlock42Stack1) parameter.
            recoveredBlock42PC := 59.
        ].
        recoveredBlock42Step = 59 ifTrue: [
            recoveredBlock42Stack2 := recoveredBlock42Local2.
            recoveredBlock42PC := 60.
        ].
        recoveredBlock42Step = 60 ifTrue: [
            recoveredBlock42Stack0 := (recoveredBlock42Stack0) compatible: (recoveredBlock42Stack1) with: (recoveredBlock42Stack2).
            recoveredBlock42PC := 62.
        ].
        recoveredBlock42Step = 62 ifTrue: [
            (recoveredBlock42Stack0) ifTrue: [recoveredBlock42PC := 66] ifFalse: [recoveredBlock42PC := 72].
        ].
        recoveredBlock42Step = 66 ifTrue: [
            recoveredBlock42Stack0 := recoveredBlock42Arg2.
            recoveredBlock42PC := 67.
        ].
        recoveredBlock42Step = 67 ifTrue: [
            recoveredBlock42Local1 := recoveredBlock42Stack0.
            recoveredBlock42PC := 68.
        ].
        recoveredBlock42Step = 68 ifTrue: [
            recoveredBlock42PC := 81.
        ].
        recoveredBlock42Step = 72 ifTrue: [
            recoveredBlock42Stack0 := nil.
            recoveredBlock42PC := 73.
        ].
        recoveredBlock42Step = 73 ifTrue: [
            recoveredBlock42Local1 := recoveredBlock42Stack0.
            recoveredBlock42PC := 74.
        ].
        recoveredBlock42Step = 74 ifTrue: [
            recoveredBlock42Stack0 := self.
            recoveredBlock42PC := 75.
        ].
        recoveredBlock42Step = 75 ifTrue: [
            recoveredBlock42Stack0 := (recoveredBlock42Stack0) table.
            recoveredBlock42PC := 77.
        ].
        recoveredBlock42Step = 77 ifTrue: [
            recoveredBlock42Stack1 := recoveredBlock42Arg1.
            recoveredBlock42PC := 78.
        ].
        recoveredBlock42Step = 78 ifTrue: [
            recoveredBlock42Stack2 := nil.
            recoveredBlock42PC := 79.
        ].
        recoveredBlock42Step = 79 ifTrue: [
            (recoveredBlock42Stack0) at: (recoveredBlock42Stack1) put: (recoveredBlock42Stack2).
            recoveredBlock42PC := 81.
        ].
        recoveredBlock42Step = 81 ifTrue: [
            recoveredBlock42Stack0 := recoveredLocal1.
            recoveredBlock42PC := 84.
        ].
        recoveredBlock42Step = 84 ifTrue: [
            recoveredBlock42Stack1 := Array.
            recoveredBlock42PC := 86.
        ].
        recoveredBlock42Step = 86 ifTrue: [
            recoveredBlock42Stack2 := recoveredBlock42Arg1.
            recoveredBlock42PC := 87.
        ].
        recoveredBlock42Step = 87 ifTrue: [
            recoveredBlock42Stack3 := recoveredBlock42Local1.
            recoveredBlock42PC := 88.
        ].
        recoveredBlock42Step = 88 ifTrue: [
            recoveredBlock42Stack1 := (recoveredBlock42Stack1) with: (recoveredBlock42Stack2) with: (recoveredBlock42Stack3).
            recoveredBlock42PC := 90.
        ].
        recoveredBlock42Step = 90 ifTrue: [
            recoveredBlock42Stack0 := (recoveredBlock42Stack0) add: (recoveredBlock42Stack1).
            recoveredBlock42PC := 92.
        ].
        recoveredBlock42Step = 92 ifTrue: [
            recoveredBlock42Result := recoveredBlock42Stack0.
            recoveredBlock42Done := true.
        ].
    ].
    recoveredBlock42Result
].
    (recoveredValue3) keysAndValuesDo: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (recoveredValue5) asArray.
    ^recoveredValue6
! !

"ASDBase.ic method 0x2042b068; bytecode file offset 0xd27958"
!SGDependencyParamCtrl methodsFor: 'recovered'!
formula
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) table.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := [:recoveredBlock11Arg1 :recoveredBlock11Arg2 | 
    | recoveredBlock11Local1 recoveredBlock11Local2 recoveredBlock11Stack0 recoveredBlock11Stack1 recoveredBlock11Stack2 recoveredBlock11Stack3 recoveredBlock11Stack4 recoveredBlock11PC recoveredBlock11Step recoveredBlock11Done recoveredBlock11Result |
    recoveredBlock11Stack0 := self.
    recoveredBlock11PC := 18.
    recoveredBlock11Done := false.
    [recoveredBlock11Done not] whileTrue: [
        recoveredBlock11Step := recoveredBlock11PC.
        recoveredBlock11Step = 18 ifTrue: [
            recoveredBlock11Stack0 := (recoveredBlock11Stack0) parameter.
            recoveredBlock11PC := 19.
        ].
        recoveredBlock11Step = 19 ifTrue: [
            recoveredBlock11Stack0 := (recoveredBlock11Stack0) formula.
            recoveredBlock11PC := 21.
        ].
        recoveredBlock11Step = 21 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Arg1.
            recoveredBlock11PC := 22.
        ].
        recoveredBlock11Step = 22 ifTrue: [
            recoveredBlock11Stack0 := (recoveredBlock11Stack0) getIdentifierForAliasName: (recoveredBlock11Stack1).
            recoveredBlock11PC := 24.
        ].
        recoveredBlock11Step = 24 ifTrue: [
            recoveredBlock11Local2 := recoveredBlock11Stack0.
            recoveredBlock11PC := 25.
        ].
        recoveredBlock11Step = 25 ifTrue: [
            recoveredBlock11Stack0 := self.
            recoveredBlock11PC := 26.
        ].
        recoveredBlock11Step = 26 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Arg2.
            recoveredBlock11PC := 27.
        ].
        recoveredBlock11Step = 27 ifTrue: [
            recoveredBlock11Stack0 := (recoveredBlock11Stack0) getModelElementForAliasName: (recoveredBlock11Stack1).
            recoveredBlock11PC := 29.
        ].
        recoveredBlock11Step = 29 ifTrue: [
            recoveredBlock11Local1 := recoveredBlock11Stack0.
            recoveredBlock11PC := 30.
        ].
        recoveredBlock11Step = 30 ifTrue: [
            recoveredBlock11Stack0 := nil.
            recoveredBlock11PC := 31.
        ].
        recoveredBlock11Step = 31 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Local2.
            recoveredBlock11PC := 32.
        ].
        recoveredBlock11Step = 32 ifTrue: [
            (recoveredBlock11Stack1 == nil) ifTrue: [recoveredBlock11PC := 62] ifFalse: [recoveredBlock11PC := 36].
        ].
        recoveredBlock11Step = 36 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Local1.
            recoveredBlock11PC := 37.
        ].
        recoveredBlock11Step = 37 ifTrue: [
            (recoveredBlock11Stack1 == nil) ifTrue: [recoveredBlock11PC := 62] ifFalse: [recoveredBlock11PC := 40].
        ].
        recoveredBlock11Step = 40 ifTrue: [
            recoveredBlock11Stack1 := self.
            recoveredBlock11PC := 41.
        ].
        recoveredBlock11Step = 41 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Local1.
            recoveredBlock11PC := 42.
        ].
        recoveredBlock11Step = 42 ifTrue: [
            recoveredBlock11Stack3 := self.
            recoveredBlock11PC := 43.
        ].
        recoveredBlock11Step = 43 ifTrue: [
            recoveredBlock11Stack3 := (recoveredBlock11Stack3) parameter.
            recoveredBlock11PC := 44.
        ].
        recoveredBlock11Step = 44 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) compatible: (recoveredBlock11Stack2) with: (recoveredBlock11Stack3).
            recoveredBlock11PC := 46.
        ].
        recoveredBlock11Step = 46 ifTrue: [
            (recoveredBlock11Stack1) ifTrue: [recoveredBlock11PC := 50] ifFalse: [recoveredBlock11PC := 62].
        ].
        recoveredBlock11Step = 50 ifTrue: [
            recoveredBlock11PC := 51.
        ].
        recoveredBlock11Step = 51 ifTrue: [
            recoveredBlock11Stack0 := recoveredLocal1.
            recoveredBlock11PC := 54.
        ].
        recoveredBlock11Step = 54 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Local2.
            recoveredBlock11PC := 55.
        ].
        recoveredBlock11Step = 55 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) identifier.
            recoveredBlock11PC := 57.
        ].
        recoveredBlock11Step = 57 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Local1.
            recoveredBlock11PC := 58.
        ].
        recoveredBlock11Step = 58 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) label.
            recoveredBlock11PC := 60.
        ].
        recoveredBlock11Step = 60 ifTrue: [
            recoveredBlock11Stack0 := (recoveredBlock11Stack0) at: (recoveredBlock11Stack1) put: (recoveredBlock11Stack2).
            recoveredBlock11PC := 62.
        ].
        recoveredBlock11Step = 62 ifTrue: [
            recoveredBlock11Result := recoveredBlock11Stack0.
            recoveredBlock11Done := true.
        ].
    ].
    recoveredBlock11Result
].
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) keysAndValuesDo: (recoveredStack1).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) parameter.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) formula.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 75] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := ''.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 93].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := (recoveredStack0) parameter.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := (recoveredStack0) formula.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := (recoveredStack0) formula.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := parameter.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := (recoveredStack2) formula.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) substituteIdentifiers: (recoveredStack1) inFormula: (recoveredStack2).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2043c874; bytecode file offset 0xd391b8"
!SGDependencyParamCtrl methodsFor: 'recovered'!
getIDsAndIndizes: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) getFuncKeys.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredValue4.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) getUnaryOpsKeys.
    (recoveredValue5) addAll: (recoveredValue7).
    recoveredValue8 := recoveredValue4.
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := (recoveredValue9) getBinaryOpsKeys.
    (recoveredValue8) addAll: (recoveredValue10).
    recoveredValue11 := recoveredValue4.
    recoveredValue12 := recoveredArg1.
    recoveredValue13 := (recoveredValue12) leftBracket.
    recoveredValue14 := (recoveredValue13) asString.
    (recoveredValue11) add: (recoveredValue14).
    recoveredValue15 := recoveredValue4.
    recoveredValue16 := recoveredArg1.
    recoveredValue17 := (recoveredValue16) rightBracket.
    recoveredValue18 := (recoveredValue17) asString.
    (recoveredValue15) add: (recoveredValue18).
    recoveredValue19 := recoveredArg1.
    recoveredValue20 := (recoveredValue19) parameterSeparator.
    recoveredValue21 := (recoveredValue20) asString.
    (recoveredValue4) add: (recoveredValue21).
    recoveredValue22 := ('Kk') == ('Call_66074').
    recoveredValue23 := recoveredArg1.
    recoveredValue24 := (recoveredValue23) formula.
    recoveredValue25 := recoveredLocal1.
    recoveredValue26 := (recoveredValue24) subStringsAndPositionInString: (recoveredValue25).
    recoveredValue27 := [:recoveredBlock80Arg1 | 
    | recoveredBlock80Stack0 recoveredBlock80Stack1 recoveredBlock80Stack2 recoveredBlock80Stack3 recoveredBlock80PC recoveredBlock80Step recoveredBlock80Done recoveredBlock80Result |
    recoveredBlock80Stack0 := self.
    recoveredBlock80PC := 86.
    recoveredBlock80Done := false.
    [recoveredBlock80Done not] whileTrue: [
        recoveredBlock80Step := recoveredBlock80PC.
        recoveredBlock80Step = 86 ifTrue: [
            recoveredBlock80Stack1 := nil.
            recoveredBlock80PC := 87.
        ].
        recoveredBlock80Step = 87 ifTrue: [
            recoveredBlock80Stack2 := recoveredBlock80Arg1.
            recoveredBlock80PC := 88.
        ].
        recoveredBlock80Step = 88 ifTrue: [
            recoveredBlock80Stack2 := (recoveredBlock80Stack2) isLiteral.
            recoveredBlock80PC := 90.
        ].
        recoveredBlock80Step = 90 ifTrue: [
            (recoveredBlock80Stack2) ifTrue: [recoveredBlock80PC := 101] ifFalse: [recoveredBlock80PC := 94].
        ].
        recoveredBlock80Step = 94 ifTrue: [
            recoveredBlock80PC := 95.
        ].
        recoveredBlock80Step = 95 ifTrue: [
            recoveredBlock80Stack1 := recoveredLocal2.
            recoveredBlock80PC := 98.
        ].
        recoveredBlock80Step = 98 ifTrue: [
            recoveredBlock80Stack2 := recoveredBlock80Arg1.
            recoveredBlock80PC := 99.
        ].
        recoveredBlock80Step = 99 ifTrue: [
            recoveredBlock80Stack1 := (recoveredBlock80Stack1) add: (recoveredBlock80Stack2).
            recoveredBlock80PC := 101.
        ].
        recoveredBlock80Step = 101 ifTrue: [
            recoveredBlock80Result := recoveredBlock80Stack1.
            recoveredBlock80Done := true.
        ].
    ].
    recoveredBlock80Result
].
    (recoveredValue26) do: (recoveredValue27).
    recoveredValue28 := recoveredLocal2.
    ^recoveredValue28
! !

"ASDBase.ic method 0x204527dc; bytecode file offset 0xd4f0bc"
!SGDependencyParamCtrl methodsFor: 'recovered'!
validateFormulaForComposite
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) table.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 112] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) table.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := [:recoveredBlock22Arg1 | 
    | recoveredBlock22Value0 recoveredBlock22Value1 |
    recoveredBlock22Value0 := recoveredBlock22Arg1.
    recoveredBlock22Value1 := (self) getModelElementForAliasName: (recoveredBlock22Value0).
    recoveredBlock22Value1
].
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := [:recoveredBlock32Arg1 | 
    | recoveredBlock32Stack0 recoveredBlock32Stack1 recoveredBlock32Stack2 recoveredBlock32Stack3 recoveredBlock32PC recoveredBlock32Step recoveredBlock32Done recoveredBlock32Result |
    recoveredBlock32Stack0 := self.
    recoveredBlock32PC := 38.
    recoveredBlock32Done := false.
    [recoveredBlock32Done not] whileTrue: [
        recoveredBlock32Step := recoveredBlock32PC.
        recoveredBlock32Step = 38 ifTrue: [
            recoveredBlock32Stack1 := nil.
            recoveredBlock32PC := 39.
        ].
        recoveredBlock32Step = 39 ifTrue: [
            recoveredBlock32Stack2 := recoveredBlock32Arg1.
            recoveredBlock32PC := 40.
        ].
        recoveredBlock32Step = 40 ifTrue: [
            (recoveredBlock32Stack2 == nil) ifTrue: [recoveredBlock32PC := 72] ifFalse: [recoveredBlock32PC := 44].
        ].
        recoveredBlock32Step = 44 ifTrue: [
            recoveredBlock32PC := 45.
        ].
        recoveredBlock32Step = 45 ifTrue: [
            recoveredBlock32Stack1 := recoveredBlock32Arg1.
            recoveredBlock32PC := 46.
        ].
        recoveredBlock32Step = 46 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) isComposite.
            recoveredBlock32PC := 48.
        ].
        recoveredBlock32Step = 48 ifTrue: [
            (recoveredBlock32Stack1) ifTrue: [recoveredBlock32PC := 52] ifFalse: [recoveredBlock32PC := 64].
        ].
        recoveredBlock32Step = 52 ifTrue: [
            recoveredBlock32Stack1 := recoveredLocal1.
            recoveredBlock32PC := 55.
        ].
        recoveredBlock32Step = 55 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) + (1).
            recoveredBlock32PC := 56.
        ].
        recoveredBlock32Step = 56 ifTrue: [
            recoveredBlock32Stack2 := recoveredBlock32Stack1.
            recoveredBlock32PC := 57.
        ].
        recoveredBlock32Step = 57 ifTrue: [
            recoveredLocal1 := recoveredBlock32Stack2.
            recoveredBlock32PC := 60.
        ].
        recoveredBlock32Step = 60 ifTrue: [
            recoveredBlock32PC := 72.
        ].
        recoveredBlock32Step = 64 ifTrue: [
            recoveredBlock32Stack1 := recoveredLocal2.
            recoveredBlock32PC := 67.
        ].
        recoveredBlock32Step = 67 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) + (1).
            recoveredBlock32PC := 68.
        ].
        recoveredBlock32Step = 68 ifTrue: [
            recoveredBlock32Stack2 := recoveredBlock32Stack1.
            recoveredBlock32PC := 69.
        ].
        recoveredBlock32Step = 69 ifTrue: [
            recoveredLocal2 := recoveredBlock32Stack2.
            recoveredBlock32PC := 72.
        ].
        recoveredBlock32Step = 72 ifTrue: [
            recoveredBlock32Result := recoveredBlock32Stack1.
            recoveredBlock32Done := true.
        ].
    ].
    recoveredBlock32Result
].
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := (recoveredStack0) >= (recoveredStack1).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 94].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := 'Invalid mapping: There cannot be more than one composite element.'.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 112] ifFalse: [recoveredPC := 102].
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := 'Invalid mapping: There should be at least one composite element.'.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20535070; bytecode file offset 0xe31954"
!SGDependencyParamCtrl methodsFor: 'recovered'!
substituteIdentifiers: recoveredArg1 inFormula: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := String.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) getIDsAndIndizes: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := [:recoveredBlock20Arg1 | 
    | recoveredBlock20Local1 recoveredBlock20Stack0 recoveredBlock20Stack1 recoveredBlock20Stack2 recoveredBlock20Stack3 recoveredBlock20Stack4 recoveredBlock20Stack5 recoveredBlock20PC recoveredBlock20Step recoveredBlock20Done recoveredBlock20Result |
    recoveredBlock20Stack0 := self.
    recoveredBlock20PC := 26.
    recoveredBlock20Done := false.
    [recoveredBlock20Done not] whileTrue: [
        recoveredBlock20Step := recoveredBlock20PC.
        recoveredBlock20Step = 26 ifTrue: [
            recoveredBlock20Stack1 := recoveredLocal3.
            recoveredBlock20PC := 29.
        ].
        recoveredBlock20Step = 29 ifTrue: [
            (recoveredBlock20Stack1 ~~ nil) ifTrue: [recoveredBlock20PC := 40] ifFalse: [recoveredBlock20PC := 32].
        ].
        recoveredBlock20Step = 32 ifTrue: [
            recoveredBlock20Stack1 := 1.
            recoveredBlock20PC := 34.
        ].
        recoveredBlock20Step = 34 ifTrue: [
            recoveredLocal2 := recoveredBlock20Stack1.
            recoveredBlock20PC := 37.
        ].
        recoveredBlock20Step = 37 ifTrue: [
            recoveredBlock20PC := 58.
        ].
        recoveredBlock20Step = 40 ifTrue: [
            recoveredBlock20Stack1 := recoveredLocal3.
            recoveredBlock20PC := 43.
        ].
        recoveredBlock20Step = 43 ifTrue: [
            recoveredBlock20Stack2 := 1.
            recoveredBlock20PC := 45.
        ].
        recoveredBlock20Step = 45 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) at: (recoveredBlock20Stack2).
            recoveredBlock20PC := 46.
        ].
        recoveredBlock20Step = 46 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) size.
            recoveredBlock20PC := 48.
        ].
        recoveredBlock20Step = 48 ifTrue: [
            recoveredBlock20Stack2 := recoveredLocal3.
            recoveredBlock20PC := 51.
        ].
        recoveredBlock20Step = 51 ifTrue: [
            recoveredBlock20Stack3 := 2.
            recoveredBlock20PC := 53.
        ].
        recoveredBlock20Step = 53 ifTrue: [
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) at: (recoveredBlock20Stack3).
            recoveredBlock20PC := 54.
        ].
        recoveredBlock20Step = 54 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) + (recoveredBlock20Stack2).
            recoveredBlock20PC := 55.
        ].
        recoveredBlock20Step = 55 ifTrue: [
            recoveredLocal2 := recoveredBlock20Stack1.
            recoveredBlock20PC := 58.
        ].
        recoveredBlock20Step = 58 ifTrue: [
            recoveredBlock20Stack1 := recoveredBlock20Arg1.
            recoveredBlock20PC := 59.
        ].
        recoveredBlock20Step = 59 ifTrue: [
            recoveredBlock20Stack2 := 2.
            recoveredBlock20PC := 61.
        ].
        recoveredBlock20Step = 61 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) at: (recoveredBlock20Stack2).
            recoveredBlock20PC := 62.
        ].
        recoveredBlock20Step = 62 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) + (-1).
            recoveredBlock20PC := 63.
        ].
        recoveredBlock20Step = 63 ifTrue: [
            recoveredLocal1 := recoveredBlock20Stack1.
            recoveredBlock20PC := 66.
        ].
        recoveredBlock20Step = 66 ifTrue: [
            recoveredBlock20Stack1 := recoveredLocal4.
            recoveredBlock20PC := 69.
        ].
        recoveredBlock20Step = 69 ifTrue: [
            recoveredBlock20Stack2 := recoveredArg2.
            recoveredBlock20PC := 72.
        ].
        recoveredBlock20Step = 72 ifTrue: [
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) formula.
            recoveredBlock20PC := 74.
        ].
        recoveredBlock20Step = 74 ifTrue: [
            recoveredBlock20Stack3 := recoveredLocal2.
            recoveredBlock20PC := 77.
        ].
        recoveredBlock20Step = 77 ifTrue: [
            recoveredBlock20Stack4 := recoveredLocal1.
            recoveredBlock20PC := 80.
        ].
        recoveredBlock20Step = 80 ifTrue: [
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) copyFrom: (recoveredBlock20Stack3) to: (recoveredBlock20Stack4).
            recoveredBlock20PC := 82.
        ].
        recoveredBlock20Step = 82 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) , (recoveredBlock20Stack2).
            recoveredBlock20PC := 84.
        ].
        recoveredBlock20Step = 84 ifTrue: [
            recoveredLocal4 := recoveredBlock20Stack1.
            recoveredBlock20PC := 87.
        ].
        recoveredBlock20Step = 87 ifTrue: [
            recoveredBlock20Stack1 := recoveredArg1.
            recoveredBlock20PC := 90.
        ].
        recoveredBlock20Step = 90 ifTrue: [
            recoveredBlock20Stack2 := recoveredBlock20Arg1.
            recoveredBlock20PC := 91.
        ].
        recoveredBlock20Step = 91 ifTrue: [
            recoveredBlock20Stack3 := 1.
            recoveredBlock20PC := 93.
        ].
        recoveredBlock20Step = 93 ifTrue: [
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) at: (recoveredBlock20Stack3).
            recoveredBlock20PC := 94.
        ].
        recoveredBlock20Step = 94 ifTrue: [
            recoveredBlock20Stack3 := [].
            recoveredBlock20PC := 96.
        ].
        recoveredBlock20Step = 96 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) at: (recoveredBlock20Stack2) ifAbsent: (recoveredBlock20Stack3).
            recoveredBlock20PC := 98.
        ].
        recoveredBlock20Step = 98 ifTrue: [
            recoveredBlock20Local1 := recoveredBlock20Stack1.
            recoveredBlock20PC := 99.
        ].
        recoveredBlock20Step = 99 ifTrue: [
            recoveredBlock20Stack1 := recoveredBlock20Local1.
            recoveredBlock20PC := 100.
        ].
        recoveredBlock20Step = 100 ifTrue: [
            (recoveredBlock20Stack1 ~~ nil) ifTrue: [recoveredBlock20PC := 120] ifFalse: [recoveredBlock20PC := 104].
        ].
        recoveredBlock20Step = 104 ifTrue: [
            recoveredBlock20Stack1 := recoveredLocal4.
            recoveredBlock20PC := 107.
        ].
        recoveredBlock20Step = 107 ifTrue: [
            recoveredBlock20Stack2 := recoveredBlock20Arg1.
            recoveredBlock20PC := 108.
        ].
        recoveredBlock20Step = 108 ifTrue: [
            recoveredBlock20Stack3 := 1.
            recoveredBlock20PC := 110.
        ].
        recoveredBlock20Step = 110 ifTrue: [
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) at: (recoveredBlock20Stack3).
            recoveredBlock20PC := 111.
        ].
        recoveredBlock20Step = 111 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) , (recoveredBlock20Stack2).
            recoveredBlock20PC := 113.
        ].
        recoveredBlock20Step = 113 ifTrue: [
            recoveredLocal4 := recoveredBlock20Stack1.
            recoveredBlock20PC := 116.
        ].
        recoveredBlock20Step = 116 ifTrue: [
            recoveredBlock20PC := 129.
        ].
        recoveredBlock20Step = 120 ifTrue: [
            recoveredBlock20Stack1 := recoveredLocal4.
            recoveredBlock20PC := 123.
        ].
        recoveredBlock20Step = 123 ifTrue: [
            recoveredBlock20Stack2 := recoveredBlock20Local1.
            recoveredBlock20PC := 124.
        ].
        recoveredBlock20Step = 124 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) , (recoveredBlock20Stack2).
            recoveredBlock20PC := 126.
        ].
        recoveredBlock20Step = 126 ifTrue: [
            recoveredLocal4 := recoveredBlock20Stack1.
            recoveredBlock20PC := 129.
        ].
        recoveredBlock20Step = 129 ifTrue: [
            recoveredBlock20Stack1 := recoveredBlock20Arg1.
            recoveredBlock20PC := 130.
        ].
        recoveredBlock20Step = 130 ifTrue: [
            recoveredBlock20Stack2 := recoveredBlock20Stack1.
            recoveredBlock20PC := 131.
        ].
        recoveredBlock20Step = 131 ifTrue: [
            recoveredLocal3 := recoveredBlock20Stack2.
            recoveredBlock20PC := 134.
        ].
        recoveredBlock20Step = 134 ifTrue: [
            recoveredBlock20Result := recoveredBlock20Stack1.
            recoveredBlock20Done := true.
        ].
    ].
    recoveredBlock20Result
].
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := (recoveredStack0) formula.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := (recoveredStack0) last.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := (recoveredStack1) last.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack0 := (recoveredStack0) <= (recoveredStack1).
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 180] ifFalse: [recoveredPC := 201].
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack1 := (recoveredStack1) formula.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

