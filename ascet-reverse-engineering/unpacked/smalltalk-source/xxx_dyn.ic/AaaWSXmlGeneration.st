"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x2001b724; bytecode file offset 0x7c814"
!AaaWSXmlGeneration methodsFor: 'recovered'!
methodsToBeMappedFor: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodCategories.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block2800b7a8Arg1 | 
    | block2800b7a8Value0 block2800b7a8Value1 block2800b7a8Value2 |
    block2800b7a8Value0 := SstWSToolsDefaultMethodCategory.
    block2800b7a8Value1 := block2800b7a8Arg1.
    block2800b7a8Value2 := (block2800b7a8Value0) match: (block2800b7a8Value1).
    block2800b7a8Value2
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodNamesCategorizedIn: (recoveredStack2) all: (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) superclass.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := Object.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 45].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal1.
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
            recoveredStack3 := (recoveredStack3) superclass.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := (recoveredStack2) methodsToBeMappedFor: (recoveredStack3).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) addAll: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x2001cba8; bytecode file offset 0x7dc84"
!AaaWSXmlGeneration methodsFor: 'recovered'!
comment: recoveredArg1 withResultCodes: recoveredArg2
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
            recoveredStack2 := '@example'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexOfString: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := '@'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexOfString: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (-1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack4 := (recoveredStack4) size.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := (recoveredStack2) copyFrom: (recoveredStack3) to: (recoveredStack4).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x20023390; bytecode file offset 0x84484"
!AaaWSXmlGeneration methodsFor: 'recovered'!
createParameterSelectorForActionSpec: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) parameters.
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
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) selector.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := WriteStream.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) parameters.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := [:recoveredBlock45Arg1 | 
    | recoveredBlock45Value0 recoveredBlock45Value1 recoveredBlock45Value2 recoveredBlock45Value3 recoveredBlock45Value4 recoveredBlock45Value5 |
    recoveredBlock45Value0 := recoveredLocal2.
    recoveredBlock45Value1 := recoveredBlock45Arg1.
    recoveredBlock45Value2 := (recoveredBlock45Value1) parameterName.
    recoveredBlock45Value3 := (recoveredBlock45Value2) asString.
    (recoveredBlock45Value0) nextPutAll: (recoveredBlock45Value3).
    recoveredBlock45Value4 := recoveredLocal2.
    recoveredBlock45Value5 := (recoveredBlock45Value4) nextPut: ($:).
    recoveredBlock45Value5
].
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := (recoveredStack1) contents.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x200236dc; bytecode file offset 0x847e0"
!AaaWSXmlGeneration methodsFor: 'recovered'!
createInterfaceObjectForClass: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) name.
    recoveredLocal5 := recoveredValue1.
    recoveredValue2 := recoveredLocal5.
    recoveredValue3 := (self) wsdlInterfaceNamespaceFor: (recoveredValue2).
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := (self) createWSObjectWithDefaultNamespaces.
    recoveredValue5 := recoveredValue4.
    recoveredLocal6 := recoveredValue5.
    recoveredValue6 := recoveredValue4.
    recoveredValue7 := recoveredLocal5.
    recoveredValue8 := SstWSToolsDashInterfaceString.
    recoveredValue9 := (recoveredValue7) , (recoveredValue8).
    (recoveredValue6) name: (recoveredValue9).
    recoveredValue10 := recoveredLocal2.
    (recoveredValue4) namespace: (recoveredValue10).
    recoveredValue11 := recoveredLocal6.
    recoveredValue12 := recoveredArg1.
    recoveredValue13 := (recoveredValue12) comment.
    (recoveredValue11) documentation: (recoveredValue13).
    recoveredValue14 := recoveredLocal6.
    recoveredValue15 := SstWSToolsTnsString.
    recoveredValue16 := recoveredLocal2.
    (recoveredValue14) declarePrefix: (recoveredValue15) uri: (recoveredValue16).
    recoveredValue17 := recoveredArg1.
    recoveredValue18 := recoveredLocal6.
    (self) createTypesForClass: (recoveredValue17) in: (recoveredValue18).
    recoveredValue19 := recoveredLocal6.
    recoveredValue20 := recoveredValue19.
    recoveredValue21 := recoveredArg1.
    recoveredValue22 := recoveredLocal6.
    recoveredValue23 := (self) createPortTypesForClass: (recoveredValue21) in: (recoveredValue22).
    (recoveredValue20) portTypes: (recoveredValue23).
    recoveredValue24 := recoveredLocal6.
    recoveredValue25 := recoveredLocal6.
    recoveredValue26 := recoveredLocal5.
    recoveredValue27 := (self) createBindingsForInterface: (recoveredValue24) in: (recoveredValue25) baseName: (recoveredValue26).
    (recoveredValue19) bindings: (recoveredValue27).
    recoveredValue28 := recoveredLocal6.
    ^recoveredValue28
! !

"xxx_dyn.ic method 0x2002a200; bytecode file offset 0x8b308"
!AaaWSXmlGeneration methodsFor: 'recovered'!
createProviderOperationsFor: recoveredArg1 in: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) sstIsWsdlObject.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 22].
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
            recoveredStack1 := (recoveredStack1) createProviderOperationsForInterface: (recoveredStack2) in: (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) schemaNamespaceFor: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) abtXmlDefaultNamespacePrefix.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) abtInstanceInterfaceSpec.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodsToBeMappedFor: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := [:recoveredBlock52Arg1 | 
    | recoveredBlock52Local1 recoveredBlock52Value0 recoveredBlock52Value1 recoveredBlock52Value2 recoveredBlock52Value3 recoveredBlock52Value4 recoveredBlock52Value5 recoveredBlock52Value6 recoveredBlock52Value7 recoveredBlock52Value8 recoveredBlock52Value9 recoveredBlock52Value10 recoveredBlock52Value11 recoveredBlock52Value12 recoveredBlock52Value13 recoveredBlock52Value14 recoveredBlock52Value15 recoveredBlock52Value16 |
    recoveredBlock52Value0 := recoveredLocal1.
    recoveredBlock52Value1 := (recoveredBlock52Value0) features.
    recoveredBlock52Value2 := recoveredLocal1.
    recoveredBlock52Value3 := (recoveredBlock52Value2) features.
    recoveredBlock52Value4 := [:recoveredBlock52Block68Arg1 | 
    | recoveredBlock52Block68Value0 recoveredBlock52Block68Value1 recoveredBlock52Block68Value2 recoveredBlock52Block68Value3 |
    recoveredBlock52Block68Value0 := recoveredBlock52Block68Arg1.
    recoveredBlock52Block68Value1 := (recoveredBlock52Block68Value0) selector.
    recoveredBlock52Block68Value2 := recoveredBlock52Arg1.
    recoveredBlock52Block68Value3 := (recoveredBlock52Block68Value1) = (recoveredBlock52Block68Value2).
    recoveredBlock52Block68Value3
].
    recoveredBlock52Value5 := (recoveredBlock52Value3) findFirst: (recoveredBlock52Value4).
    recoveredBlock52Value6 := [
    | recoveredBlock52Block84Value0 recoveredBlock52Block84Value1 |
    recoveredBlock52Block84Value0 := recoveredBlock52Arg1.
    recoveredBlock52Block84Value1 := (self) operationNameFor: (recoveredBlock52Block84Value0).
    recoveredBlock52Block84Value1
].
    recoveredBlock52Value7 := (recoveredBlock52Value1) keyAtIndex: (recoveredBlock52Value5) ifAbsent: (recoveredBlock52Value6).
    recoveredBlock52Local1 := recoveredBlock52Value7.
    recoveredBlock52Value8 := recoveredLocal2.
    recoveredBlock52Value9 := (recoveredBlock52Value8) , (':').
    recoveredBlock52Value10 := recoveredBlock52Local1.
    recoveredBlock52Value11 := (recoveredBlock52Value9) , (recoveredBlock52Value10).
    recoveredBlock52Local1 := recoveredBlock52Value11.
    recoveredBlock52Value12 := recoveredArg2.
    recoveredBlock52Value13 := recoveredBlock52Local1.
    recoveredBlock52Value14 := recoveredBlock52Arg1.
    recoveredBlock52Value15 := (self) selectorNameFrom: (recoveredBlock52Value14).
    recoveredBlock52Value16 := (recoveredBlock52Value12) addMethodNamed: (recoveredBlock52Value13) selector: (recoveredBlock52Value15).
    recoveredBlock52Value16
].
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x2002a4b8; bytecode file offset 0x8b5d8"
!AaaWSXmlGeneration methodsFor: 'recovered'!
apiResultCodesFor: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := DictPossibleAPIErrorsForMethod.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := [
    | block2800c060Value0 block2800c060Value1 |
    block2800c060Value0 := Dictionary.
    block2800c060Value1 := (block2800c060Value0) new.
    block2800c060Value1
].
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := '<P/>API-Result-Codes:<BR/>\'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := 'NO RESULT CODES!!<BR/>\'.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := SortedCollection.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := [:block2800c084Arg1 :block2800c084Arg2 | 
    | block2800c084Value0 block2800c084Value1 block2800c084Value2 block2800c084Value3 block2800c084Value4 |
    block2800c084Value0 := block2800c084Arg1.
    block2800c084Value1 := (block2800c084Value0) code.
    block2800c084Value2 := block2800c084Arg2.
    block2800c084Value3 := (block2800c084Value2) code.
    block2800c084Value4 := (block2800c084Value1) < (block2800c084Value3).
    block2800c084Value4
].
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) sortBlock: (recoveredStack2).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := [:recoveredBlock70Arg1 | 
    | recoveredBlock70Local1 recoveredBlock70Value0 recoveredBlock70Value1 recoveredBlock70Value2 recoveredBlock70Value3 recoveredBlock70Value4 |
    recoveredBlock70Value0 := recoveredLocal1.
    recoveredBlock70Value1 := AaaResult.
    recoveredBlock70Value2 := recoveredBlock70Arg1.
    recoveredBlock70Value3 := (recoveredBlock70Value1) perform: (recoveredBlock70Value2).
    recoveredBlock70Value4 := (recoveredBlock70Value0) add: (recoveredBlock70Value3).
    recoveredBlock70Value4
].
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := [:recoveredBlock92Arg1 | 
    | recoveredBlock92Value0 recoveredBlock92Value1 recoveredBlock92Value2 recoveredBlock92Value3 recoveredBlock92Value4 recoveredBlock92Value5 recoveredBlock92Value6 recoveredBlock92Value7 recoveredBlock92Value8 recoveredBlock92Value9 recoveredBlock92Value10 |
    recoveredBlock92Value0 := recoveredLocal2.
    recoveredBlock92Value1 := recoveredBlock92Arg1.
    recoveredBlock92Value2 := (recoveredBlock92Value1) code.
    recoveredBlock92Value3 := (recoveredBlock92Value2) asString.
    recoveredBlock92Value4 := (recoveredBlock92Value0) , (recoveredBlock92Value3).
    recoveredBlock92Value5 := (recoveredBlock92Value4) , (' ').
    recoveredBlock92Value6 := recoveredBlock92Arg1.
    recoveredBlock92Value7 := (recoveredBlock92Value6) text.
    recoveredBlock92Value8 := (recoveredBlock92Value5) , (recoveredBlock92Value7).
    recoveredBlock92Value9 := (recoveredBlock92Value8) , ('<BR/>\').
    recoveredBlock92Value10 := recoveredBlock92Value9.
    recoveredLocal2 := recoveredBlock92Value10.
    recoveredBlock92Value9
].
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack2 := '\'.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := (recoveredStack1) withCrLfs.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x2002eb98; bytecode file offset 0x8fce0"
!AaaWSXmlGeneration methodsFor: 'recovered'!
createOperationsForPortType: recoveredArg1 fromClass: recoveredArg2 in: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) encodingStrategy.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) abtInstanceInterfaceSpec.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) features.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) abtInstanceInterfaceSpec.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) features.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) addAll: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) superclass.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodsToBeMappedFor: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := [:recoveredBlock52Arg1 | 
    | recoveredBlock52Local1 recoveredBlock52Local2 recoveredBlock52Local3 recoveredBlock52Local4 recoveredBlock52Local5 recoveredBlock52Local6 recoveredBlock52Stack0 recoveredBlock52Stack1 recoveredBlock52Stack2 recoveredBlock52Stack3 recoveredBlock52Stack4 recoveredBlock52Stack5 recoveredBlock52Stack6 recoveredBlock52PC recoveredBlock52Step recoveredBlock52Done recoveredBlock52Result |
    recoveredBlock52Stack0 := self.
    recoveredBlock52PC := 58.
    recoveredBlock52Done := false.
    [recoveredBlock52Done not] whileTrue: [
        recoveredBlock52Step := recoveredBlock52PC.
        recoveredBlock52Step = 58 ifTrue: [
            recoveredBlock52Stack1 := recoveredLocal2.
            recoveredBlock52PC := 61.
        ].
        recoveredBlock52Step = 61 ifTrue: [
            recoveredBlock52Stack1 := (recoveredBlock52Stack1) features.
            recoveredBlock52PC := 62.
        ].
        recoveredBlock52Step = 62 ifTrue: [
            recoveredBlock52Stack2 := recoveredLocal2.
            recoveredBlock52PC := 65.
        ].
        recoveredBlock52Step = 65 ifTrue: [
            recoveredBlock52Stack2 := (recoveredBlock52Stack2) features.
            recoveredBlock52PC := 66.
        ].
        recoveredBlock52Step = 66 ifTrue: [
            recoveredBlock52Stack3 := [:recoveredBlock52Block66Arg1 | 
    | recoveredBlock52Block66Value0 recoveredBlock52Block66Value1 recoveredBlock52Block66Value2 recoveredBlock52Block66Value3 |
    recoveredBlock52Block66Value0 := recoveredBlock52Block66Arg1.
    recoveredBlock52Block66Value1 := (recoveredBlock52Block66Value0) selector.
    recoveredBlock52Block66Value2 := recoveredBlock52Arg1.
    recoveredBlock52Block66Value3 := (recoveredBlock52Block66Value1) = (recoveredBlock52Block66Value2).
    recoveredBlock52Block66Value3
].
            recoveredBlock52PC := 80.
        ].
        recoveredBlock52Step = 80 ifTrue: [
            recoveredBlock52Stack2 := (recoveredBlock52Stack2) findFirst: (recoveredBlock52Stack3).
            recoveredBlock52PC := 82.
        ].
        recoveredBlock52Step = 82 ifTrue: [
            recoveredBlock52Stack3 := recoveredBlock52Stack2.
            recoveredBlock52PC := 83.
        ].
        recoveredBlock52Step = 83 ifTrue: [
            recoveredBlock52Local2 := recoveredBlock52Stack3.
            recoveredBlock52PC := 86.
        ].
        recoveredBlock52Step = 86 ifTrue: [
            recoveredBlock52Stack3 := [
    | recoveredBlock52Block86Value0 recoveredBlock52Block86Value1 |
    recoveredBlock52Block86Value0 := recoveredBlock52Arg1.
    recoveredBlock52Block86Value1 := (self) operationNameFor: (recoveredBlock52Block86Value0).
    recoveredBlock52Block86Value1
].
            recoveredBlock52PC := 98.
        ].
        recoveredBlock52Step = 98 ifTrue: [
            recoveredBlock52Stack1 := (recoveredBlock52Stack1) keyAtIndex: (recoveredBlock52Stack2) ifAbsent: (recoveredBlock52Stack3).
            recoveredBlock52PC := 100.
        ].
        recoveredBlock52Step = 100 ifTrue: [
            recoveredBlock52Local6 := recoveredBlock52Stack1.
            recoveredBlock52PC := 103.
        ].
        recoveredBlock52Step = 103 ifTrue: [
            recoveredBlock52Stack1 := SstWsdlOperation.
            recoveredBlock52PC := 105.
        ].
        recoveredBlock52Step = 105 ifTrue: [
            recoveredBlock52Stack2 := recoveredArg3.
            recoveredBlock52PC := 108.
        ].
        recoveredBlock52Step = 108 ifTrue: [
            recoveredBlock52Stack1 := (recoveredBlock52Stack1) new: (recoveredBlock52Stack2).
            recoveredBlock52PC := 110.
        ].
        recoveredBlock52Step = 110 ifTrue: [
            recoveredBlock52Stack2 := recoveredBlock52Stack1.
            recoveredBlock52PC := 111.
        ].
        recoveredBlock52Step = 111 ifTrue: [
            recoveredBlock52Local5 := recoveredBlock52Stack2.
            recoveredBlock52PC := 114.
        ].
        recoveredBlock52Step = 114 ifTrue: [
            recoveredBlock52Stack2 := recoveredBlock52Local6.
            recoveredBlock52PC := 117.
        ].
        recoveredBlock52Step = 117 ifTrue: [
            (recoveredBlock52Stack1) name: (recoveredBlock52Stack2).
            recoveredBlock52PC := 119.
        ].
        recoveredBlock52Step = 119 ifTrue: [
            recoveredBlock52Stack1 := recoveredArg2.
            recoveredBlock52PC := 122.
        ].
        recoveredBlock52Step = 122 ifTrue: [
            recoveredBlock52Stack2 := recoveredBlock52Arg1.
            recoveredBlock52PC := 125.
        ].
        recoveredBlock52Step = 125 ifTrue: [
            recoveredBlock52Stack1 := (recoveredBlock52Stack1) allMethodsNamed: (recoveredBlock52Stack2).
            recoveredBlock52PC := 127.
        ].
        recoveredBlock52Step = 127 ifTrue: [
            recoveredBlock52Stack1 := (recoveredBlock52Stack1) anyElement.
            recoveredBlock52PC := 129.
        ].
        recoveredBlock52Step = 129 ifTrue: [
            recoveredBlock52Stack2 := [:recoveredBlock52Block129Arg1 | 
    | recoveredBlock52Block129Value0 recoveredBlock52Block129Value1 recoveredBlock52Block129Value2 recoveredBlock52Block129Value3 recoveredBlock52Block129Value4 recoveredBlock52Block129Value5 recoveredBlock52Block129Value6 |
    recoveredBlock52Block129Value0 := recoveredBlock52Local5.
    recoveredBlock52Block129Value1 := recoveredBlock52Block129Arg1.
    recoveredBlock52Block129Value2 := (recoveredBlock52Block129Value1) comment.
    recoveredBlock52Block129Value3 := recoveredBlock52Block129Arg1.
    recoveredBlock52Block129Value4 := (self) apiResultCodesFor: (recoveredBlock52Block129Value3).
    recoveredBlock52Block129Value5 := (self) comment: (recoveredBlock52Block129Value2) withResultCodes: (recoveredBlock52Block129Value4).
    recoveredBlock52Block129Value6 := (recoveredBlock52Block129Value0) documentation: (recoveredBlock52Block129Value5).
    recoveredBlock52Block129Value6
].
            recoveredBlock52PC := 152.
        ].
        recoveredBlock52Step = 152 ifTrue: [
            (recoveredBlock52Stack1) ifNotNil: (recoveredBlock52Stack2).
            recoveredBlock52PC := 154.
        ].
        recoveredBlock52Step = 154 ifTrue: [
            recoveredBlock52Stack1 := SstWsdlMessage.
            recoveredBlock52PC := 156.
        ].
        recoveredBlock52Step = 156 ifTrue: [
            recoveredBlock52Stack2 := recoveredArg3.
            recoveredBlock52PC := 159.
        ].
        recoveredBlock52Step = 159 ifTrue: [
            recoveredBlock52Stack1 := (recoveredBlock52Stack1) new: (recoveredBlock52Stack2).
            recoveredBlock52PC := 161.
        ].
        recoveredBlock52Step = 161 ifTrue: [
            recoveredBlock52Stack2 := recoveredBlock52Stack1.
            recoveredBlock52PC := 162.
        ].
        recoveredBlock52Step = 162 ifTrue: [
            recoveredBlock52Local4 := recoveredBlock52Stack2.
            recoveredBlock52PC := 165.
        ].
        recoveredBlock52Step = 165 ifTrue: [
            recoveredBlock52Stack2 := self.
            recoveredBlock52PC := 166.
        ].
        recoveredBlock52Step = 166 ifTrue: [
            recoveredBlock52Stack3 := recoveredBlock52Local6.
            recoveredBlock52PC := 169.
        ].
        recoveredBlock52Step = 169 ifTrue: [
            recoveredBlock52Stack2 := (recoveredBlock52Stack2) inputMessageNameForOperation: (recoveredBlock52Stack3).
            recoveredBlock52PC := 171.
        ].
        recoveredBlock52Step = 171 ifTrue: [
            (recoveredBlock52Stack1) name: (recoveredBlock52Stack2).
            recoveredBlock52PC := 173.
        ].
        recoveredBlock52Step = 173 ifTrue: [
            recoveredBlock52Stack1 := recoveredBlock52Local2.
            recoveredBlock52PC := 176.
        ].
        recoveredBlock52Step = 176 ifTrue: [
            recoveredBlock52Stack2 := 0.
            recoveredBlock52PC := 178.
        ].
        recoveredBlock52Step = 178 ifTrue: [
            recoveredBlock52Stack1 := (recoveredBlock52Stack1) = (recoveredBlock52Stack2).
            recoveredBlock52PC := 179.
        ].
        recoveredBlock52Step = 179 ifTrue: [
            (recoveredBlock52Stack1) ifTrue: [recoveredBlock52PC := 182] ifFalse: [recoveredBlock52PC := 188].
        ].
        recoveredBlock52Step = 182 ifTrue: [
            recoveredBlock52Stack1 := recoveredBlock52Arg1.
            recoveredBlock52PC := 185.
        ].
        recoveredBlock52Step = 185 ifTrue: [
            recoveredBlock52PC := 200.
        ].
        recoveredBlock52Step = 188 ifTrue: [
            recoveredBlock52Stack1 := self.
            recoveredBlock52PC := 189.
        ].
        recoveredBlock52Step = 189 ifTrue: [
            recoveredBlock52Stack2 := recoveredLocal2.
            recoveredBlock52PC := 192.
        ].
        recoveredBlock52Step = 192 ifTrue: [
            recoveredBlock52Stack2 := (recoveredBlock52Stack2) features.
            recoveredBlock52PC := 193.
        ].
        recoveredBlock52Step = 193 ifTrue: [
            recoveredBlock52Stack3 := recoveredBlock52Local2.
            recoveredBlock52PC := 196.
        ].
        recoveredBlock52Step = 196 ifTrue: [
            recoveredBlock52Stack2 := (recoveredBlock52Stack2) atIndex: (recoveredBlock52Stack3).
            recoveredBlock52PC := 198.
        ].
        recoveredBlock52Step = 198 ifTrue: [
            recoveredBlock52Stack1 := (recoveredBlock52Stack1) createParameterSelectorForActionSpec: (recoveredBlock52Stack2).
            recoveredBlock52PC := 200.
        ].
        recoveredBlock52Step = 200 ifTrue: [
            recoveredBlock52Local1 := recoveredBlock52Stack1.
            recoveredBlock52PC := 203.
        ].
        recoveredBlock52Step = 203 ifTrue: [
            recoveredBlock52Stack1 := recoveredArg3.
            recoveredBlock52PC := 206.
        ].
        recoveredBlock52Step = 206 ifTrue: [
            recoveredBlock52Stack1 := (recoveredBlock52Stack1) messages.
            recoveredBlock52PC := 208.
        ].
        recoveredBlock52Step = 208 ifTrue: [
            recoveredBlock52Stack2 := recoveredBlock52Local4.
            recoveredBlock52PC := 211.
        ].
        recoveredBlock52Step = 211 ifTrue: [
            (recoveredBlock52Stack1) add: (recoveredBlock52Stack2).
            recoveredBlock52PC := 213.
        ].
        recoveredBlock52Step = 213 ifTrue: [
            recoveredBlock52Stack1 := recoveredBlock52Local5.
            recoveredBlock52PC := 216.
        ].
        recoveredBlock52Step = 216 ifTrue: [
            recoveredBlock52Stack2 := recoveredBlock52Local4.
            recoveredBlock52PC := 219.
        ].
        recoveredBlock52Step = 219 ifTrue: [
            (recoveredBlock52Stack1) input: (recoveredBlock52Stack2).
            recoveredBlock52PC := 221.
        ].
        recoveredBlock52Step = 221 ifTrue: [
            recoveredBlock52Stack1 := recoveredLocal3.
            recoveredBlock52PC := 224.
        ].
        recoveredBlock52Step = 224 ifTrue: [
            recoveredBlock52Stack2 := recoveredBlock52Local4.
            recoveredBlock52PC := 227.
        ].
        recoveredBlock52Step = 227 ifTrue: [
            recoveredBlock52Stack3 := recoveredArg2.
            recoveredBlock52PC := 230.
        ].
        recoveredBlock52Step = 230 ifTrue: [
            recoveredBlock52Stack4 := recoveredBlock52Local1.
            recoveredBlock52PC := 233.
        ].
        recoveredBlock52Step = 233 ifTrue: [
            recoveredBlock52Stack5 := recoveredArg3.
            recoveredBlock52PC := 236.
        ].
        recoveredBlock52Step = 236 ifTrue: [
            (recoveredBlock52Stack1) createInputPartsForMessage: (recoveredBlock52Stack2) class: (recoveredBlock52Stack3) method: (recoveredBlock52Stack4) definitions: (recoveredBlock52Stack5).
            recoveredBlock52PC := 239.
        ].
        recoveredBlock52Step = 239 ifTrue: [
            recoveredBlock52Stack1 := SstWsdlMessage.
            recoveredBlock52PC := 241.
        ].
        recoveredBlock52Step = 241 ifTrue: [
            recoveredBlock52Stack2 := recoveredArg3.
            recoveredBlock52PC := 244.
        ].
        recoveredBlock52Step = 244 ifTrue: [
            recoveredBlock52Stack1 := (recoveredBlock52Stack1) new: (recoveredBlock52Stack2).
            recoveredBlock52PC := 246.
        ].
        recoveredBlock52Step = 246 ifTrue: [
            recoveredBlock52Stack2 := recoveredBlock52Stack1.
            recoveredBlock52PC := 247.
        ].
        recoveredBlock52Step = 247 ifTrue: [
            recoveredBlock52Local3 := recoveredBlock52Stack2.
            recoveredBlock52PC := 250.
        ].
        recoveredBlock52Step = 250 ifTrue: [
            recoveredBlock52Stack2 := self.
            recoveredBlock52PC := 251.
        ].
        recoveredBlock52Step = 251 ifTrue: [
            recoveredBlock52Stack3 := recoveredBlock52Local6.
            recoveredBlock52PC := 254.
        ].
        recoveredBlock52Step = 254 ifTrue: [
            recoveredBlock52Stack2 := (recoveredBlock52Stack2) outputMessageNameForOperation: (recoveredBlock52Stack3).
            recoveredBlock52PC := 256.
        ].
        recoveredBlock52Step = 256 ifTrue: [
            (recoveredBlock52Stack1) name: (recoveredBlock52Stack2).
            recoveredBlock52PC := 258.
        ].
        recoveredBlock52Step = 258 ifTrue: [
            recoveredBlock52Stack1 := recoveredLocal3.
            recoveredBlock52PC := 261.
        ].
        recoveredBlock52Step = 261 ifTrue: [
            recoveredBlock52Stack2 := recoveredBlock52Local3.
            recoveredBlock52PC := 264.
        ].
        recoveredBlock52Step = 264 ifTrue: [
            recoveredBlock52Stack3 := recoveredArg2.
            recoveredBlock52PC := 267.
        ].
        recoveredBlock52Step = 267 ifTrue: [
            recoveredBlock52Stack4 := recoveredBlock52Arg1.
            recoveredBlock52PC := 270.
        ].
        recoveredBlock52Step = 270 ifTrue: [
            recoveredBlock52Stack5 := recoveredArg3.
            recoveredBlock52PC := 273.
        ].
        recoveredBlock52Step = 273 ifTrue: [
            (recoveredBlock52Stack1) createOutputPartsForMessage: (recoveredBlock52Stack2) class: (recoveredBlock52Stack3) method: (recoveredBlock52Stack4) definitions: (recoveredBlock52Stack5).
            recoveredBlock52PC := 276.
        ].
        recoveredBlock52Step = 276 ifTrue: [
            recoveredBlock52Stack1 := recoveredBlock52Local5.
            recoveredBlock52PC := 279.
        ].
        recoveredBlock52Step = 279 ifTrue: [
            recoveredBlock52Stack2 := recoveredBlock52Local3.
            recoveredBlock52PC := 282.
        ].
        recoveredBlock52Step = 282 ifTrue: [
            (recoveredBlock52Stack1) output: (recoveredBlock52Stack2).
            recoveredBlock52PC := 284.
        ].
        recoveredBlock52Step = 284 ifTrue: [
            recoveredBlock52Stack1 := recoveredArg1.
            recoveredBlock52PC := 287.
        ].
        recoveredBlock52Step = 287 ifTrue: [
            recoveredBlock52Stack2 := recoveredBlock52Local5.
            recoveredBlock52PC := 290.
        ].
        recoveredBlock52Step = 290 ifTrue: [
            (recoveredBlock52Stack1) addOperation: (recoveredBlock52Stack2).
            recoveredBlock52PC := 292.
        ].
        recoveredBlock52Step = 292 ifTrue: [
            recoveredBlock52Stack1 := recoveredArg3.
            recoveredBlock52PC := 295.
        ].
        recoveredBlock52Step = 295 ifTrue: [
            recoveredBlock52Stack1 := (recoveredBlock52Stack1) messages.
            recoveredBlock52PC := 297.
        ].
        recoveredBlock52Step = 297 ifTrue: [
            recoveredBlock52Stack2 := recoveredBlock52Local3.
            recoveredBlock52PC := 300.
        ].
        recoveredBlock52Step = 300 ifTrue: [
            recoveredBlock52Stack1 := (recoveredBlock52Stack1) add: (recoveredBlock52Stack2).
            recoveredBlock52PC := 302.
        ].
        recoveredBlock52Step = 302 ifTrue: [
            recoveredBlock52Result := recoveredBlock52Stack1.
            recoveredBlock52Done := true.
        ].
    ].
    recoveredBlock52Result
].
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

