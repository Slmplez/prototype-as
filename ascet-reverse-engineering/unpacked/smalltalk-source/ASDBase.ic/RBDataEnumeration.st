"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20006590; bytecode file offset 0x902ecc"
!RBDataEnumeration methodsFor: 'recovered'!
updateRepresentationFromMasterFormulas: recoveredArg1 monitor: recoveredArg2 implConfig: recoveredArg3 variable: recoveredArg4
    ^self
! !

"ASDBase.ic method 0x200077a8; bytecode file offset 0x908be4"
!RBDataEnumeration methodsFor: 'recovered'!
asModelType
    | recoveredValue0 |
    recoveredValue0 := (self) name.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20009a64; bytecode file offset 0x908be4"
!RBDataEnumeration methodsFor: 'recovered'!
computeIntegerImplInterval
    | recoveredValue0 |
    recoveredValue0 := (self) getImplInterval.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000af28; bytecode file offset 0x908be4"
!RBDataEnumeration methodsFor: 'recovered'!
getCheckedImplInterval
    | recoveredValue0 |
    recoveredValue0 := (self) getImplInterval.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000b474; bytecode file offset 0x908be4"
!RBDataEnumeration methodsFor: 'recovered'!
getPhysInterval
    | recoveredValue0 |
    recoveredValue0 := (self) getImplInterval.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20014f64; bytecode file offset 0x912098"
!RBDataEnumeration methodsFor: 'recovered'!
apiClass
    | recoveredValue0 |
    recoveredValue0 := EtasAPIScalarDataElement.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2002d904; bytecode file offset 0x934580"
!RBDataEnumeration methodsFor: 'recovered'!
getBasicLogType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) getImplType.
    recoveredValue1 := (recoveredValue0) getBasicLogType.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20035354; bytecode file offset 0x934580"
!RBDataEnumeration methodsFor: 'recovered'!
valueTable
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) formula.
    recoveredValue1 := (recoveredValue0) valueTable.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20036314; bytecode file offset 0x934580"
!RBDataEnumeration methodsFor: 'recovered'!
getOrderedValues
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) formula.
    recoveredValue1 := (recoveredValue0) valueTable.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004de00; bytecode file offset 0x94a6d0"
!RBDataEnumeration methodsFor: 'recovered'!
maxAsap2DAMOSPostDigits
    (self) etasDevHalt.
    ^nil
! !

"ASDBase.ic method 0x200583a8; bytecode file offset 0x956284"
!RBDataEnumeration methodsFor: 'recovered'!
valueTable: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) formula.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) valueTable: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20072160; bytecode file offset 0x96ee04"
!RBDataEnumeration methodsFor: 'recovered'!
getPhysQuantization
    ^1
! !

"ASDBase.ic method 0x200769fc; bytecode file offset 0x9757c8"
!RBDataEnumeration methodsFor: 'recovered'!
isRBEnumeration
    ^true
! !

"ASDBase.ic method 0x20077044; bytecode file offset 0x9757c8"
!RBDataEnumeration methodsFor: 'recovered'!
isIleScalarType
    ^true
! !

"ASDBase.ic method 0x200778bc; bytecode file offset 0x9757c8"
!RBDataEnumeration methodsFor: 'recovered'!
isSymbolic
    ^true
! !

"ASDBase.ic method 0x20078274; bytecode file offset 0x9757c8"
!RBDataEnumeration methodsFor: 'recovered'!
isDataEnumeration
    ^true
! !

"ASDBase.ic method 0x200783d4; bytecode file offset 0x9757c8"
!RBDataEnumeration methodsFor: 'recovered'!
isImplementationMaster
    ^true
! !

"ASDBase.ic method 0x20078cc4; bytecode file offset 0x9757c8"
!RBDataEnumeration methodsFor: 'recovered'!
isRBDataEnumeration
    ^true
! !

"ASDBase.ic method 0x20079654; bytecode file offset 0x97c330"
!RBDataEnumeration methodsFor: 'recovered'!
supportsImplTypeEdit
    ^false
! !

"ASDBase.ic method 0x20079b9c; bytecode file offset 0x97c330"
!RBDataEnumeration methodsFor: 'recovered'!
supportsLimitAssignmentEdit
    ^false
! !

"ASDBase.ic method 0x2007a244; bytecode file offset 0x97c330"
!RBDataEnumeration methodsFor: 'recovered'!
supportsImplIntervalEdit
    ^false
! !

"ASDBase.ic method 0x2007a67c; bytecode file offset 0x97c330"
!RBDataEnumeration methodsFor: 'recovered'!
supportsLimitOverflowEdit
    ^false
! !

"ASDBase.ic method 0x2007c6dc; bytecode file offset 0x97c330"
!RBDataEnumeration methodsFor: 'recovered'!
isUsingServiceRoutine
    ^false
! !

"ASDBase.ic method 0x2007cadc; bytecode file offset 0x97c330"
!RBDataEnumeration methodsFor: 'recovered'!
supportsFormula
    ^false
! !

"ASDBase.ic method 0x2007caec; bytecode file offset 0x97c330"
!RBDataEnumeration methodsFor: 'recovered'!
supportsModelIntervalEdit
    ^false
! !

"ASDBase.ic method 0x2007d2fc; bytecode file offset 0x97c330"
!RBDataEnumeration methodsFor: 'recovered'!
supportsZeroNotIncludedEdit
    ^false
! !

"ASDBase.ic method 0x2007e09c; bytecode file offset 0x97c330"
!RBDataEnumeration methodsFor: 'recovered'!
supportsImplMasterSetting
    ^false
! !

"ASDBase.ic method 0x200aa178; bytecode file offset 0x9a6a88"
!RBDataEnumeration methodsFor: 'recovered'!
updatePrimImplValues: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) extraImplInfo.
    recoveredValue2 := (recoveredValue1) text.
    (recoveredValue0) comment: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200b9390; bytecode file offset 0x9b5c5c"
!RBDataEnumeration methodsFor: 'recovered'!
getUnsignedPhysInterval: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ('Kk') == ('Call_74803').
    recoveredValue1 := recoveredArg1.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200db940; bytecode file offset 0x9d81fc"
!RBDataEnumeration methodsFor: 'recovered'!
replaceFormulaNamed: recoveredArg1 withFormula: recoveredArg2
    | recoveredValue0 |
    recoveredValue0 := ('Kk') == ('Call_68013').
    ^0
! !

"ASDBase.ic method 0x200f9ae4; bytecode file offset 0x9f63c8"
!RBDataEnumeration methodsFor: 'recovered'!
copy
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := super copy.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) implementationRepresentation.
    recoveredValue3 := (recoveredValue2) deepCopy.
    (recoveredValue1) implementationRepresentation: (recoveredValue3).
    ^recoveredValue0
! !

"ASDBase.ic method 0x20103f8c; bytecode file offset 0xa00860"
!RBDataEnumeration methodsFor: 'recovered'!
editImplConfig: recoveredArg1 context: recoveredArg2 instVar: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) implementationDialog.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue0) createForImpl: (recoveredValue1) instVar: (recoveredValue2) context: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (recoveredValue5) promptAtCurrentMousePosition.
    ^recoveredValue6
! !

"ASDBase.ic method 0x20149800; bytecode file offset 0xa460dc"
!RBDataEnumeration methodsFor: 'recovered'!
readAsyncData
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := access.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) readAsyncData.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) setImplValueDoNotRewrite: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20149844; bytecode file offset 0xa46120"
!RBDataEnumeration methodsFor: 'recovered'!
readOnlineData
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := access.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) readOnlineData.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) setImplValueDoNotRewrite: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2015aa9c; bytecode file offset 0xa57364"
!RBDataEnumeration methodsFor: 'recovered'!
decByStep: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) indexOfCurrentValue.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) - (recoveredValue1).
    recoveredValue3 := (recoveredValue2) max: (1).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := (self) getOrderedValues.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (recoveredValue4) at: (recoveredValue5).
    (self) setPhysValue: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x2017caf4; bytecode file offset 0xa793c0"
!RBDataEnumeration methodsFor: 'recovered'!
incByStep: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) indexOfCurrentValue.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) + (recoveredValue1).
    recoveredValue3 := (self) getOrderedValues.
    recoveredValue4 := (recoveredValue3) size.
    recoveredValue5 := (recoveredValue2) min: (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := (self) getOrderedValues.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (recoveredValue6) at: (recoveredValue7).
    (self) setPhysValue: (recoveredValue8).
    ^self
! !

"ASDBase.ic method 0x20183c74; bytecode file offset 0xa80548"
!RBDataEnumeration methodsFor: 'recovered'!
iaCopyImplementationForAssignFormula: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := RBArithmeticElement.
    recoveredValue1 := RBInterval.
    recoveredValue2 := (self) formula.
    recoveredValue3 := (recoveredValue2) physTab.
    recoveredValue4 := (recoveredValue3) size.
    recoveredValue5 := (recoveredValue4) + (-1).
    recoveredValue6 := (recoveredValue1) left: (0) right: (recoveredValue5).
    recoveredValue7 := (recoveredValue6) integerType.
    recoveredValue8 := (recoveredValue0) createForType: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x202125bc; bytecode file offset 0xb0ee88"
!RBDataEnumeration methodsFor: 'recovered'!
damosValueFormatBlock
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ('Cp') == ('bgz_2499').
    recoveredValue1 := ASDDAMOSOptions.
    recoveredValue2 := (recoveredValue1) instance.
    recoveredValue3 := (recoveredValue2) optionDamosEnumerationFormat.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Value0 recoveredBlock18Value1 recoveredBlock18Value2 |
    recoveredBlock18Value0 := recoveredLocal1.
    recoveredBlock18Value1 := recoveredBlock18Arg1.
    recoveredBlock18Value2 := (recoveredBlock18Value0) printEnumPhysValue: (recoveredBlock18Value1).
    recoveredBlock18Value2
].
    ^recoveredValue4
! !

"ASDBase.ic method 0x20230404; bytecode file offset 0xb2cd10"
!RBDataEnumeration methodsFor: 'recovered'!
shortPrintString
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := (self) getImplInterval.
    recoveredValue1 := (recoveredValue0) left.
    recoveredValue2 := (recoveredValue1) printString.
    recoveredValue3 := ('min=') , (recoveredValue2).
    recoveredValue4 := (recoveredValue3) , (', max=').
    recoveredValue5 := (self) getImplInterval.
    recoveredValue6 := (recoveredValue5) right.
    recoveredValue7 := (recoveredValue6) printString.
    recoveredValue8 := (recoveredValue4) , (recoveredValue7).
    recoveredValue9 := (recoveredValue8) , (' ').
    recoveredValue10 := (self) formula.
    recoveredValue11 := (recoveredValue10) shortPrintString.
    recoveredValue12 := (recoveredValue9) , (recoveredValue11).
    ^recoveredValue12
! !

"ASDBase.ic method 0x2024af20; bytecode file offset 0xb477f4"
!RBDataEnumeration methodsFor: 'recovered'!
asCValue: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isString.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) valueTable.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexOf: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) asCValue.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) asCComment.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) asCValue.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) formula.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) appliedInverseToNumber: (recoveredStack3).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := (recoveredStack2) asCValue.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) asCComment.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202e2a4c; bytecode file offset 0xbdf328"
!RBDataEnumeration methodsFor: 'recovered'!
setPhysValue: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isNumber.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) isString.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) isNumeric.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) physicsRepresentation.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) setValue: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) updateImplementationRepresentation.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredPC := 46.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) implementationRepresentation.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := (recoveredStack2) getImplValue: (recoveredStack3).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) setValue: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) updatePhysicsRepresentation.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) write.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) physicsRepresentation.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2031af48; bytecode file offset 0xc1788c"
!RBDataEnumeration methodsFor: 'recovered'!
initializeKFE
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := RBDataDescription.
    recoveredValue1 := (recoveredValue0) createDefault.
    description := recoveredValue1.
    recoveredValue2 := RBTypedValue.
    recoveredValue3 := (recoveredValue2) createDefault.
    (self) physicsRepresentation: (recoveredValue3).
    recoveredValue4 := RBTypedValue.
    recoveredValue5 := (recoveredValue4) createDefault.
    (self) implementationRepresentation: (recoveredValue5).
    recoveredValue6 := RBFormulaEnum.
    recoveredValue7 := (recoveredValue6) createDefault.
    recoveredValue8 := Array.
    recoveredValue9 := (recoveredValue8) with: ('Constant').
    recoveredValue10 := (recoveredValue7) valueTable: (recoveredValue9).
    (self) formula: (recoveredValue10).
    recoveredValue11 := RBInt32Unsigned.
    recoveredValue12 := (recoveredValue11) createDefault.
    (self) setImplType: (recoveredValue12).
    recoveredValue13 := SGEnumeration.
    recoveredValue14 := (recoveredValue13) createDefault.
    (self) setPhysType: (recoveredValue14).
    (self) setPhysValue: ('Constant').
    (self) setImplValue: (0).
    ^self
! !

"ASDBase.ic method 0x2031af94; bytecode file offset 0xc1788c"
!RBDataEnumeration methodsFor: 'recovered'!
initializeKLE
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := RBDataDescription.
    recoveredValue1 := (recoveredValue0) createDefault.
    description := recoveredValue1.
    recoveredValue2 := RBTypedValue.
    recoveredValue3 := (recoveredValue2) createDefault.
    (self) physicsRepresentation: (recoveredValue3).
    recoveredValue4 := RBTypedValue.
    recoveredValue5 := (recoveredValue4) createDefault.
    (self) implementationRepresentation: (recoveredValue5).
    recoveredValue6 := RBFormulaEnum.
    recoveredValue7 := (recoveredValue6) createDefault.
    recoveredValue8 := Array.
    recoveredValue9 := (recoveredValue8) with: ('Constant').
    recoveredValue10 := (recoveredValue7) valueTable: (recoveredValue9).
    (self) formula: (recoveredValue10).
    recoveredValue11 := RBInt32Unsigned.
    recoveredValue12 := (recoveredValue11) createDefault.
    (self) setImplType: (recoveredValue12).
    recoveredValue13 := SGEnumeration.
    recoveredValue14 := (recoveredValue13) createDefault.
    (self) setPhysType: (recoveredValue14).
    (self) setPhysValue: ('Constant').
    (self) setImplValue: (0).
    ^self
! !

"ASDBase.ic method 0x203233dc; bytecode file offset 0xc1fcd4"
!RBDataEnumeration methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := RBDataDescription.
    recoveredValue1 := (recoveredValue0) createDefault.
    description := recoveredValue1.
    (self) state: (0).
    recoveredValue2 := RBTypedValue.
    recoveredValue3 := (recoveredValue2) createDefault.
    (self) physicsRepresentation: (recoveredValue3).
    recoveredValue4 := RBTypedValue.
    recoveredValue5 := (recoveredValue4) createDefault.
    (self) implementationRepresentation: (recoveredValue5).
    recoveredValue6 := RBFormulaEnum.
    recoveredValue7 := (recoveredValue6) createDefault.
    recoveredValue8 := (recoveredValue7) valueTable: (#('aaa' 'bbb' 'ccc')).
    (self) formula: (recoveredValue8).
    recoveredValue9 := RBInt8Unsigned.
    recoveredValue10 := (recoveredValue9) createDefault.
    (self) setImplType: (recoveredValue10).
    recoveredValue11 := RBStringType.
    recoveredValue12 := (recoveredValue11) createDefault.
    (self) setPhysType: (recoveredValue12).
    (self) setPhysValue: ('aaa').
    (self) setImplValue: (1).
    ^self
! !

"ASDBase.ic method 0x20334058; bytecode file offset 0xc3093c"
!RBDataEnumeration methodsFor: 'recovered'!
hasCompatibleTypeWith: recoveredArg1
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
            recoveredStack0 := super hasCompatibleTypeWith: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) isArithmeticElement.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 59].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDataEnumeration.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 35].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) formula.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) physTab.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) getPhysValue.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
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
            recoveredStack0 := (recoveredStack0) isArithmeticElement.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 53].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) formula.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) hexTab.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) getPhysValue.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := 'Kk'.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := 'Call_72260'.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2033f368; bytecode file offset 0xc3bc50"
!RBDataEnumeration methodsFor: 'recovered'!
getImplInterval
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) formula.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isFormulaString.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := super getImplInterval.
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
            recoveredStack0 := (recoveredStack0) formula.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) hexTab.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := super getImplInterval.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := [:block280edd74Arg1 | 
    | block280edd74Value0 block280edd74Value1 |
    block280edd74Value0 := block280edd74Arg1.
    block280edd74Value1 := (block280edd74Value0) asInteger.
    block280edd74Value1
].
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := RBInterval.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) min.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := (recoveredStack2) max.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) left: (recoveredStack1) right: (recoveredStack2).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2034d2e0; bytecode file offset 0xc49bc8"
!RBDataEnumeration methodsFor: 'recovered'!
updateWithDataElement: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_70140'.
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasCompatibleTypeWith: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := 'Kk'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := 'Call_72260'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) isArithmeticElement.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) formula.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) physTab.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) formula.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) hexTab.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := (recoveredStack2) getPhysValue.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexOf: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredPC := 56.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) getPhysValue.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) setPhysValue: (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203684ac; bytecode file offset 0xc64e08"
!RBDataEnumeration methodsFor: 'recovered'!
initializeKLI
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 |
    recoveredValue0 := RBDataDescription.
    recoveredValue1 := (recoveredValue0) createDefault.
    description := recoveredValue1.
    recoveredValue2 := RBTypedValue.
    recoveredValue3 := (recoveredValue2) createDefault.
    (self) physicsRepresentation: (recoveredValue3).
    recoveredValue4 := RBTypedValue.
    recoveredValue5 := (recoveredValue4) createDefault.
    (self) implementationRepresentation: (recoveredValue5).
    recoveredValue6 := RBFormulaEnum.
    recoveredValue7 := (recoveredValue6) createDefault.
    recoveredValue8 := ASDInterpolationDefaultOptions.
    recoveredValue9 := (recoveredValue8) instance.
    recoveredValue10 := (recoveredValue9) availableInterpolationRoutineLabels.
    recoveredValue11 := (recoveredValue7) valueTable: (recoveredValue10).
    (self) formula: (recoveredValue11).
    recoveredValue12 := RBInt32Unsigned.
    recoveredValue13 := (recoveredValue12) createDefault.
    (self) setImplType: (recoveredValue13).
    recoveredValue14 := SGEnumeration.
    recoveredValue15 := (recoveredValue14) createDefault.
    (self) setPhysType: (recoveredValue15).
    recoveredValue16 := ('Kli') == ('Call_71502').
    (self) setImplValue: (0).
    recoveredValue17 := ASDInterpolationDefaultOptions.
    recoveredValue18 := (recoveredValue17) instance.
    recoveredValue19 := (recoveredValue18) optionDefaultsInterpolation1DValue.
    (self) setPhysValue: (recoveredValue19).
    ^self
! !

"ASDBase.ic method 0x20368504; bytecode file offset 0xc64e08"
!RBDataEnumeration methodsFor: 'recovered'!
initializeKFI
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 |
    recoveredValue0 := RBDataDescription.
    recoveredValue1 := (recoveredValue0) createDefault.
    description := recoveredValue1.
    recoveredValue2 := RBTypedValue.
    recoveredValue3 := (recoveredValue2) createDefault.
    (self) physicsRepresentation: (recoveredValue3).
    recoveredValue4 := RBTypedValue.
    recoveredValue5 := (recoveredValue4) createDefault.
    (self) implementationRepresentation: (recoveredValue5).
    recoveredValue6 := RBFormulaEnum.
    recoveredValue7 := (recoveredValue6) createDefault.
    recoveredValue8 := ASDInterpolationDefaultOptions.
    recoveredValue9 := (recoveredValue8) instance.
    recoveredValue10 := (recoveredValue9) availableInterpolationRoutineLabels.
    recoveredValue11 := (recoveredValue7) valueTable: (recoveredValue10).
    (self) formula: (recoveredValue11).
    recoveredValue12 := RBInt32Unsigned.
    recoveredValue13 := (recoveredValue12) createDefault.
    (self) setImplType: (recoveredValue13).
    recoveredValue14 := SGEnumeration.
    recoveredValue15 := (recoveredValue14) createDefault.
    (self) setPhysType: (recoveredValue15).
    recoveredValue16 := ('Kli') == ('Call_71502').
    (self) setImplValue: (0).
    recoveredValue17 := ASDInterpolationDefaultOptions.
    recoveredValue18 := (recoveredValue17) instance.
    recoveredValue19 := (recoveredValue18) optionDefaultsInterpolation2DValue.
    (self) setPhysValue: (recoveredValue19).
    ^self
! !

"ASDBase.ic method 0x203b4698; bytecode file offset 0xcb0f9c"
!RBDataEnumeration methodsFor: 'recovered'!
printDamosValuesOn: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Ca'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'bgz_2499'.
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
            recoveredStack1 := 'Kk'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 'Call_73315'.
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
            recoveredStack1 := ASDDAMOSOptions.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionDamosFormatVersion.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := ASDDAMOSOptions.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionDamosEnumerationFormat.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := String.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := '   TEXT "'.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := (recoveredStack3) getPhysValue.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := '"'.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredPC := 75.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := '   WERT '.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := (recoveredStack3) damosValueFormatBlock.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack4 := (recoveredStack4) getImplValue.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack3 := (recoveredStack3) value: (recoveredStack4).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

