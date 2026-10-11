"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000797c; bytecode file offset 0x908be4"
!SGMdInitValueAssign methodsFor: 'recovered'!
evaluateMdlConstantValue
    | recoveredValue0 |
    recoveredValue0 := (self) mdlNativeInitValue.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20018dd0; bytecode file offset 0x92209c"
!SGMdInitValueAssign methodsFor: 'recovered'!
dependentFormulaPlaceHolder
    ^'X'
! !

"ASDBase.ic method 0x20029f14; bytecode file offset 0x934580"
!SGMdInitValueAssign methodsFor: 'recovered'!
initName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) rightChild.
    recoveredValue1 := (recoveredValue0) initName.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002a334; bytecode file offset 0x934580"
!SGMdInitValueAssign methodsFor: 'recovered'!
yDistribution
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) rightChild.
    recoveredValue1 := (recoveredValue0) yDistribution.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002c4c4; bytecode file offset 0x934580"
!SGMdInitValueAssign methodsFor: 'recovered'!
yDistribVarName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) rightChild.
    recoveredValue1 := (recoveredValue0) yDistribVarName.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002e764; bytecode file offset 0x934580"
!SGMdInitValueAssign methodsFor: 'recovered'!
ySize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) rightChild.
    recoveredValue1 := (recoveredValue0) ySize.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002efa4; bytecode file offset 0x934580"
!SGMdInitValueAssign methodsFor: 'recovered'!
xDistribution
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) rightChild.
    recoveredValue1 := (recoveredValue0) xDistribution.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20030bd4; bytecode file offset 0x934580"
!SGMdInitValueAssign methodsFor: 'recovered'!
xDistribVarName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) rightChild.
    recoveredValue1 := (recoveredValue0) xDistribVarName.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20033a24; bytecode file offset 0x934580"
!SGMdInitValueAssign methodsFor: 'recovered'!
xSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) rightChild.
    recoveredValue1 := (recoveredValue0) xSize.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20034264; bytecode file offset 0x934580"
!SGMdInitValueAssign methodsFor: 'recovered'!
isMdlUninitializedReference
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) rightChild.
    recoveredValue1 := (recoveredValue0) isMdlNullReference.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200375f4; bytecode file offset 0x934580"
!SGMdInitValueAssign methodsFor: 'recovered'!
errLabelInitValue
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) rightChild.
    recoveredValue1 := (recoveredValue0) errLabelInitValue.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20037a54; bytecode file offset 0x934580"
!SGMdInitValueAssign methodsFor: 'recovered'!
isMdlDataSetInitValue
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) rightChild.
    recoveredValue1 := (recoveredValue0) isMdlDataSetInitValue.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200560dc; bytecode file offset 0x952a9c"
!SGMdInitValueAssign methodsFor: 'recovered'!
mdlAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) mdlInitValueAssign: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20064384; bytecode file offset 0x961970"
!SGMdInitValueAssign methodsFor: 'recovered'!
setCgAttrNeedsVariableArrayMatrixStruct
    | recoveredValue0 |
    recoveredValue0 := (self) rightChild.
    (recoveredValue0) setCgAttrNeedsVariableArrayMatrixStruct.
    ^self
! !

"ASDBase.ic method 0x20065798; bytecode file offset 0x962104"
!SGMdInitValueAssign methodsFor: 'recovered'!
errLabel
    | recoveredValue0 |
    recoveredValue0 := super errLabel.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20077f04; bytecode file offset 0x9757c8"
!SGMdInitValueAssign methodsFor: 'recovered'!
isMdlInitValueAssign
    ^true
! !

"ASDBase.ic method 0x2008c324; bytecode file offset 0x988be0"
!SGMdInitValueAssign methodsFor: 'recovered'!
isCgInitValue
    (self) assertDeprecated: ('mdlNativeInitValue').
    ^false
! !

"ASDBase.ic method 0x2008c340; bytecode file offset 0x988c1c"
!SGMdInitValueAssign methodsFor: 'recovered'!
isBoolean
    (self) assertDeprecated: ('mdlNativeInitValue').
    ^nil
! !

"ASDBase.ic method 0x2008c350; bytecode file offset 0x988c1c"
!SGMdInitValueAssign methodsFor: 'recovered'!
asString
    (self) assertDeprecated: ('mdlNativeInitValue').
    ^nil
! !

"ASDBase.ic method 0x2008c360; bytecode file offset 0x988c1c"
!SGMdInitValueAssign methodsFor: 'recovered'!
asCValue
    (self) assertDeprecated: ('mdlNativeInitValue').
    ^nil
! !

"ASDBase.ic method 0x2009509c; bytecode file offset 0x991c58"
!SGMdInitValueAssign methodsFor: 'recovered'!
dependentFormulaPlaceHolder: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) dependencyList.
    recoveredValue2 := (self) dependentFormulaPlaceHolder: (recoveredValue0) in: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20095db4; bytecode file offset 0x992670"
!SGMdInitValueAssign methodsFor: 'recovered'!
isIdenticalTo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) initName.
    recoveredValue2 := (self) initName.
    recoveredValue3 := (recoveredValue1) equals: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200aaf4c; bytecode file offset 0x9a7960"
!SGMdInitValueAssign methodsFor: 'recovered'!
updatedDependencyList: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) dependencies.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) at: ('ASD_UPDATED_DEPENDENT_LIST') put: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200aafec; bytecode file offset 0x9a7960"
!SGMdInitValueAssign methodsFor: 'recovered'!
updatedFormula: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) dependencies.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) at: ('ASD_UPDATED_FORMULA') put: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200bbedc; bytecode file offset 0x9b8ddc"
!SGMdInitValueAssign methodsFor: 'recovered'!
dependencyListMapping: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) dependencies.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) at: ('ASD_DEPENDENT_LIST_MAPPING') put: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200bc1ac; bytecode file offset 0x9b8ddc"
!SGMdInitValueAssign methodsFor: 'recovered'!
dependencyList: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) dependencies.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) at: ('ASD_DEPENDENT_LIST') put: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200c422c; bytecode file offset 0x9c0bf0"
!SGMdInitValueAssign methodsFor: 'recovered'!
dependencies: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    dependencies := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20117b34; bytecode file offset 0xa143f4"
!SGMdInitValueAssign methodsFor: 'recovered'!
hasDependencies
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
            recoveredStack2 := dependencies.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) dependencies.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 'ASD_DEPENDENT_LIST_MAPPING'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) includesKey: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201220bc; bytecode file offset 0xa1e984"
!SGMdInitValueAssign methodsFor: 'recovered'!
asMdlComplementServiceExpr: recoveredArg1 for: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) rightChild.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) asMdlComplementServiceExpr: (recoveredValue1).
    (self) rightChild: (recoveredValue2).
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue3) asMdlIdentifier.
    (self) variable: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x2012a07c; bytecode file offset 0xa269a8"
!SGMdInitValueAssign methodsFor: 'recovered'!
compileTimeRestrictions
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := compileTimeRestrictions.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            compileTimeRestrictions := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := compileTimeRestrictions.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2012ccd8; bytecode file offset 0xa29840"
!SGMdInitValueAssign methodsFor: 'recovered'!
updatedFormula
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) dependencies.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 'ASD_UPDATED_FORMULA'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [
    ''
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20142a44; bytecode file offset 0xa3f310"
!SGMdInitValueAssign methodsFor: 'recovered'!
asMdlComplementServiceExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) rightChild.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) asMdlComplementServiceExpr: (recoveredValue1).
    (self) rightChild: (recoveredValue2).
    recoveredValue3 := (self) variable.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) asRedundantModelType.
    (recoveredValue3) mdlClass: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x2014f6d0; bytecode file offset 0xa4c0bc"
!SGMdInitValueAssign methodsFor: 'recovered'!
dependencyListMapping
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) dependencies.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 'ASD_DEPENDENT_LIST_MAPPING'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [
    | block280cd1e8Value0 block280cd1e8Value1 |
    block280cd1e8Value0 := LookupTable.
    block280cd1e8Value1 := (block280cd1e8Value0) new.
    block280cd1e8Value1
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2014f790; bytecode file offset 0xa4c0bc"
!SGMdInitValueAssign methodsFor: 'recovered'!
dependencyList
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) dependencies.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 'ASD_DEPENDENT_LIST'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [
    | block280cd2c0Value0 block280cd2c0Value1 |
    block280cd2c0Value0 := OrderedCollection.
    block280cd2c0Value1 := (block280cd2c0Value0) new.
    block280cd2c0Value1
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2014f7d0; bytecode file offset 0xa4c0bc"
!SGMdInitValueAssign methodsFor: 'recovered'!
updatedDependencyList
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) dependencies.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 'ASD_UPDATED_DEPENDENT_LIST'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [
    | block280cd308Value0 block280cd308Value1 |
    block280cd308Value0 := OrderedCollection.
    block280cd308Value1 := (block280cd308Value0) new.
    block280cd308Value1
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20164dec; bytecode file offset 0xa616ac"
!SGMdInitValueAssign methodsFor: 'recovered'!
mdlHasSameValueAs: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := (recoveredStack3) class.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightChild.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightChild.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlHasSameValueAs: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2018dfc0; bytecode file offset 0xa8a880"
!SGMdInitValueAssign methodsFor: 'recovered'!
dependencies
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := dependencies.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := LookupTable.
    recoveredBlock6Value1 := (recoveredBlock6Value0) new.
    recoveredBlock6Value2 := recoveredBlock6Value1.
    dependencies := recoveredBlock6Value2.
    recoveredBlock6Value1
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := dependencies.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2018e078; bytecode file offset 0xa8a938"
!SGMdInitValueAssign methodsFor: 'recovered'!
ileInitValue
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ileInitValue.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := (self) generator.
    recoveredBlock6Value1 := (recoveredBlock6Value0) visitInitValueAndCastMdlNode: (self).
    recoveredBlock6Value2 := recoveredBlock6Value1.
    ileInitValue := recoveredBlock6Value2.
    recoveredBlock6Value1
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := ileInitValue.
    ^recoveredValue2
! !

"ASDBase.ic method 0x201a0a44; bytecode file offset 0xa9d308"
!SGMdInitValueAssign methodsFor: 'recovered'!
isReferenceData
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    false
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := [
    'Do not call isReferenceData on SGMdInitValueAssign.'
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201a89dc; bytecode file offset 0xaa52a4"
!SGMdInitValueAssign methodsFor: 'recovered'!
dependentFormulaPlaceHolder: recoveredArg1 in: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) dependentFormulaPlaceHolder.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20253818; bytecode file offset 0xb500e8"
!SGMdInitValueAssign methodsFor: 'recovered'!
mdlNativeInitValue
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
            recoveredBlock4Stack2 := self.
            recoveredBlock4PC := 12.
        ].
        recoveredBlock4Step = 12 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) rightChild.
            recoveredBlock4PC := 13.
        ].
        recoveredBlock4Step = 13 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) isMdlLiteral.
            recoveredBlock4PC := 14.
        ].
        recoveredBlock4Step = 14 ifTrue: [
            (recoveredBlock4Stack2) ifTrue: [recoveredBlock4PC := 22] ifFalse: [recoveredBlock4PC := 18].
        ].
        recoveredBlock4Step = 18 ifTrue: [
            recoveredBlock4PC := 19.
        ].
        recoveredBlock4Step = 19 ifTrue: [
            recoveredBlock4Stack1 := self.
            recoveredBlock4PC := 20.
        ].
        recoveredBlock4Step = 20 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) rightChild.
            recoveredBlock4PC := 21.
        ].
        recoveredBlock4Step = 21 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) isMdlPackedExprAssignment.
            recoveredBlock4PC := 22.
        ].
        recoveredBlock4Step = 22 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack1.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := [
    'nativeLiteralValue should only be called for types which are initialized by a MdlLiteral node.'
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) rightChild.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) evaluateMdlConstantValue.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

