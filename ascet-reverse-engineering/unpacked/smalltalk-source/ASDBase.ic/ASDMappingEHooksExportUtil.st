"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x201ac6b0; bytecode file offset 0xaa8fa4"
!ASDMappingEHooksExportUtil methodsFor: 'recovered'!
exportXMLECUOutputVars: recoveredArg1 writer: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (self) mappingBase.
    recoveredValue2 := (recoveredValue1) class.
    recoveredValue3 := (recoveredValue2) ecuOutputVariablesTag.
    (recoveredValue0) openComplex: (recoveredValue3).
    recoveredValue4 := recoveredArg2.
    (recoveredValue4) writeVersionInfo.
    recoveredValue5 := (self) mappingBase.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := recoveredArg2.
    recoveredValue8 := (recoveredValue5) writeXMLECUOutputVariables: (recoveredValue6) writer: (recoveredValue7).
    recoveredLocal1 := recoveredValue8.
    recoveredValue9 := recoveredArg2.
    (recoveredValue9) closeComplex.
    ^self
! !

"ASDBase.ic method 0x201ac6d4; bytecode file offset 0xaa8fa4"
!ASDMappingEHooksExportUtil methodsFor: 'recovered'!
exportXMLECUInputVars: recoveredArg1 writer: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (self) mappingBase.
    recoveredValue2 := (recoveredValue1) class.
    recoveredValue3 := (recoveredValue2) ecuInputVariablesTag.
    (recoveredValue0) openComplex: (recoveredValue3).
    recoveredValue4 := recoveredArg2.
    (recoveredValue4) writeVersionInfo.
    recoveredValue5 := (self) mappingBase.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := recoveredArg2.
    recoveredValue8 := (recoveredValue5) writeXMLECUInputVariables: (recoveredValue6) writer: (recoveredValue7).
    recoveredLocal1 := recoveredValue8.
    recoveredValue9 := recoveredArg2.
    (recoveredValue9) closeComplex.
    ^self
! !

"ASDBase.ic method 0x20265874; bytecode file offset 0xb62188"
!ASDMappingEHooksExportUtil methodsFor: 'recovered'!
exportXMLMappingsOutput: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) mappingBase.
    recoveredValue2 := (recoveredValue1) class.
    recoveredValue3 := (recoveredValue2) mappingOutputTag.
    (recoveredValue0) openComplex: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    (recoveredValue4) writeVersionInfo.
    recoveredValue5 := (self) mappingBase.
    recoveredValue6 := (self) mapsForType: ('Output').
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue5) writeXMLElementMapping: (recoveredValue6) writer: (recoveredValue7) includeOIDs: (false).
    recoveredLocal1 := recoveredValue8.
    recoveredValue9 := recoveredArg1.
    (recoveredValue9) closeComplex.
    recoveredValue10 := recoveredLocal1.
    (self) numberSelectedMapsPassed: (recoveredValue10).
    recoveredValue11 := recoveredLocal1.
    (self) showOnMonitorEndNumber: (recoveredValue11).
    ^self
! !

"ASDBase.ic method 0x202658a8; bytecode file offset 0xb62188"
!ASDMappingEHooksExportUtil methodsFor: 'recovered'!
exportXMLMappingsInput: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) mappingBase.
    recoveredValue2 := (recoveredValue1) class.
    recoveredValue3 := (recoveredValue2) mappingInputTag.
    (recoveredValue0) openComplex: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    (recoveredValue4) writeVersionInfo.
    recoveredValue5 := (self) mappingBase.
    recoveredValue6 := (self) mapsForType: ('Input').
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue5) writeXMLElementMapping: (recoveredValue6) writer: (recoveredValue7) includeOIDs: (false).
    recoveredLocal1 := recoveredValue8.
    recoveredValue9 := recoveredArg1.
    (recoveredValue9) closeComplex.
    recoveredValue10 := recoveredLocal1.
    (self) numberSelectedMapsPassed: (recoveredValue10).
    recoveredValue11 := recoveredLocal1.
    (self) showOnMonitorEndNumber: (recoveredValue11).
    ^self
! !

"ASDBase.ic method 0x202a2f58; bytecode file offset 0xb9f824"
!ASDMappingEHooksExportUtil methodsFor: 'recovered'!
exportCSVECUVariables: recoveredArg1 withLabel: recoveredArg2 stream: recoveredArg3
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
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 recoveredBlock15Value3 recoveredBlock15Value4 recoveredBlock15Value5 recoveredBlock15Value6 recoveredBlock15Value7 |
    recoveredBlock15Value0 := recoveredArg3.
    recoveredBlock15Value1 := recoveredArg2.
    recoveredBlock15Value2 := (recoveredBlock15Value1) , (',').
    recoveredBlock15Value3 := recoveredBlock15Arg1.
    recoveredBlock15Value4 := (recoveredBlock15Value3) asCSVprintLine.
    recoveredBlock15Value5 := (recoveredBlock15Value2) , (recoveredBlock15Value4).
    (recoveredBlock15Value0) nextPutAll: (recoveredBlock15Value5).
    recoveredBlock15Value6 := recoveredArg3.
    recoveredBlock15Value7 := (recoveredBlock15Value6) cr.
    recoveredBlock15Value7
].
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20383b14; bytecode file offset 0xc803fc"
!ASDMappingEHooksExportUtil methodsFor: 'recovered'!
exportXMLMappingsProcess: recoveredArg1 writer: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (self) mappingBase.
    recoveredValue2 := (recoveredValue1) class.
    recoveredValue3 := (recoveredValue2) bypassFunctionsTag.
    (recoveredValue0) openComplex: (recoveredValue3).
    recoveredValue4 := recoveredArg2.
    (recoveredValue4) writeVersionInfo.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := [:recoveredBlock21Arg1 | 
    | recoveredBlock21Value0 recoveredBlock21Value1 recoveredBlock21Value2 recoveredBlock21Value3 recoveredBlock21Value4 |
    recoveredBlock21Value0 := recoveredBlock21Arg1.
    recoveredBlock21Value1 := recoveredArg2.
    recoveredBlock21Value2 := (self) mappingBase.
    recoveredBlock21Value3 := (recoveredBlock21Value2) project.
    recoveredBlock21Value4 := (recoveredBlock21Value0) writeXML: (recoveredBlock21Value1) includeOIDs: (false) usingProject: (recoveredBlock21Value3).
    recoveredBlock21Value4
].
    (recoveredValue5) do: (recoveredValue6).
    recoveredValue7 := recoveredArg2.
    (recoveredValue7) closeComplex.
    recoveredValue8 := (self) mappingBase.
    recoveredValue9 := (recoveredValue8) bypassFunctions.
    recoveredValue10 := (recoveredValue9) size.
    (self) numberSelectedMapsPassed: (recoveredValue10).
    recoveredValue11 := (self) mappingBase.
    recoveredValue12 := (recoveredValue11) bypassFunctions.
    recoveredValue13 := (recoveredValue12) size.
    (self) showOnMonitorEndNumber: (recoveredValue13).
    recoveredValue14 := (self) mappingBase.
    recoveredValue15 := (recoveredValue14) bypassFunctions.
    recoveredValue16 := (recoveredValue15) size.
    ^recoveredValue16
! !

"ASDBase.ic method 0x203896c8; bytecode file offset 0xc85fb0"
!ASDMappingEHooksExportUtil methodsFor: 'recovered'!
exportXMLMappingsProcess: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) mappingBase.
    recoveredValue2 := (recoveredValue1) class.
    recoveredValue3 := (recoveredValue2) bypassFunctionsTag.
    (recoveredValue0) openComplex: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    (recoveredValue4) writeVersionInfo.
    recoveredValue5 := (self) mappingBase.
    recoveredValue6 := (recoveredValue5) bypassFunctions.
    recoveredValue7 := [:recoveredBlock21Arg1 | 
    | recoveredBlock21Value0 recoveredBlock21Value1 recoveredBlock21Value2 recoveredBlock21Value3 recoveredBlock21Value4 |
    recoveredBlock21Value0 := recoveredBlock21Arg1.
    recoveredBlock21Value1 := recoveredArg1.
    recoveredBlock21Value2 := (self) mappingBase.
    recoveredBlock21Value3 := (recoveredBlock21Value2) project.
    recoveredBlock21Value4 := (recoveredBlock21Value0) writeXML: (recoveredBlock21Value1) includeOIDs: (false) usingProject: (recoveredBlock21Value3).
    recoveredBlock21Value4
].
    (recoveredValue6) do: (recoveredValue7).
    recoveredValue8 := recoveredArg1.
    (recoveredValue8) closeComplex.
    recoveredValue9 := (self) mappingBase.
    recoveredValue10 := (recoveredValue9) bypassFunctions.
    recoveredValue11 := (recoveredValue10) size.
    (self) numberSelectedMapsPassed: (recoveredValue11).
    recoveredValue12 := (self) mappingBase.
    recoveredValue13 := (recoveredValue12) bypassFunctions.
    recoveredValue14 := (recoveredValue13) size.
    (self) showOnMonitorEndNumber: (recoveredValue14).
    recoveredValue15 := (self) mappingBase.
    recoveredValue16 := (recoveredValue15) bypassFunctions.
    recoveredValue17 := (recoveredValue16) size.
    ^recoveredValue17
! !

"ASDBase.ic method 0x203c7a08; bytecode file offset 0xcc42dc"
!ASDMappingEHooksExportUtil methodsFor: 'recovered'!
exportCSVBypassFuncNodes: recoveredArg1 forType: recoveredArg2 stream: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) showOnMonitorStartType: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := [:recoveredBlock26Arg1 | 
    | recoveredBlock26Value0 recoveredBlock26Value1 recoveredBlock26Value2 recoveredBlock26Value3 |
    recoveredBlock26Value0 := recoveredBlock26Arg1.
    recoveredBlock26Value1 := (self) bypassFuncNodeAsCSVprintLine: (recoveredBlock26Value0).
    recoveredBlock26Value2 := [:recoveredBlock26Block34Arg1 | 
    | recoveredBlock26Block34Value0 recoveredBlock26Block34Value1 recoveredBlock26Block34Value2 recoveredBlock26Block34Value3 recoveredBlock26Block34Value4 recoveredBlock26Block34Value5 |
    recoveredBlock26Block34Value0 := recoveredArg3.
    recoveredBlock26Block34Value1 := recoveredBlock26Block34Arg1.
    (recoveredBlock26Block34Value0) nextPutAll: (recoveredBlock26Block34Value1).
    recoveredBlock26Block34Value2 := recoveredArg3.
    (recoveredBlock26Block34Value2) cr.
    recoveredBlock26Block34Value3 := recoveredLocal1.
    recoveredBlock26Block34Value4 := (recoveredBlock26Block34Value3) + (1).
    recoveredBlock26Block34Value5 := recoveredBlock26Block34Value4.
    recoveredLocal1 := recoveredBlock26Block34Value5.
    recoveredBlock26Block34Value4
].
    recoveredBlock26Value3 := (recoveredBlock26Value1) do: (recoveredBlock26Value2).
    recoveredBlock26Value3
].
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0) numberMapsPassedSet: (recoveredStack1) forType: (recoveredStack2).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) showOnMonitorEndNumber: (recoveredStack1).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203d1a20; bytecode file offset 0xcce33c"
!ASDMappingEHooksExportUtil methodsFor: 'recovered'!
getSelectedEcuVarsInput
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Set.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) selectedMappings.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 |
    recoveredBlock11Value0 := (self) mappingBase.
    recoveredBlock11Value1 := (recoveredBlock11Value0) ecuVarsInput.
    recoveredBlock11Value2 := [:recoveredBlock11Block21Arg1 | 
    | recoveredBlock11Block21Stack0 recoveredBlock11Block21Stack1 recoveredBlock11Block21Stack2 recoveredBlock11Block21Stack3 recoveredBlock11Block21Stack4 recoveredBlock11Block21PC recoveredBlock11Block21Step recoveredBlock11Block21Done recoveredBlock11Block21Result |
    recoveredBlock11Block21Stack0 := nil.
    recoveredBlock11Block21PC := 28.
    recoveredBlock11Block21Done := false.
    [recoveredBlock11Block21Done not] whileTrue: [
        recoveredBlock11Block21Step := recoveredBlock11Block21PC.
        recoveredBlock11Block21Step = 28 ifTrue: [
            recoveredBlock11Block21Stack1 := nil.
            recoveredBlock11Block21PC := 29.
        ].
        recoveredBlock11Block21Step = 29 ifTrue: [
            recoveredBlock11Block21Stack2 := recoveredBlock11Arg1.
            recoveredBlock11Block21PC := 32.
        ].
        recoveredBlock11Block21Step = 32 ifTrue: [
            recoveredBlock11Block21Stack2 := (recoveredBlock11Block21Stack2) needsTarget.
            recoveredBlock11Block21PC := 34.
        ].
        recoveredBlock11Block21Step = 34 ifTrue: [
            (recoveredBlock11Block21Stack2) ifTrue: [recoveredBlock11Block21PC := 75] ifFalse: [recoveredBlock11Block21PC := 38].
        ].
        recoveredBlock11Block21Step = 38 ifTrue: [
            recoveredBlock11Block21Stack2 := recoveredBlock11Arg1.
            recoveredBlock11Block21PC := 41.
        ].
        recoveredBlock11Block21Step = 41 ifTrue: [
            recoveredBlock11Block21Stack2 := (recoveredBlock11Block21Stack2) targetObject.
            recoveredBlock11Block21PC := 43.
        ].
        recoveredBlock11Block21Step = 43 ifTrue: [
            recoveredBlock11Block21Stack2 := (recoveredBlock11Block21Stack2) ehooksAttributesNode.
            recoveredBlock11Block21PC := 45.
        ].
        recoveredBlock11Block21Step = 45 ifTrue: [
            (recoveredBlock11Block21Stack2 == nil) ifTrue: [recoveredBlock11Block21PC := 75] ifFalse: [recoveredBlock11Block21PC := 48].
        ].
        recoveredBlock11Block21Step = 48 ifTrue: [
            recoveredBlock11Block21PC := 49.
        ].
        recoveredBlock11Block21Step = 49 ifTrue: [
            recoveredBlock11Block21Stack1 := nil.
            recoveredBlock11Block21PC := 50.
        ].
        recoveredBlock11Block21Step = 50 ifTrue: [
            recoveredBlock11Block21Stack2 := recoveredBlock11Block21Arg1.
            recoveredBlock11Block21PC := 51.
        ].
        recoveredBlock11Block21Step = 51 ifTrue: [
            recoveredBlock11Block21Stack2 := (recoveredBlock11Block21Stack2) name.
            recoveredBlock11Block21PC := 53.
        ].
        recoveredBlock11Block21Step = 53 ifTrue: [
            recoveredBlock11Block21Stack3 := recoveredBlock11Arg1.
            recoveredBlock11Block21PC := 56.
        ].
        recoveredBlock11Block21Step = 56 ifTrue: [
            recoveredBlock11Block21Stack3 := (recoveredBlock11Block21Stack3) targetObject.
            recoveredBlock11Block21PC := 58.
        ].
        recoveredBlock11Block21Step = 58 ifTrue: [
            recoveredBlock11Block21Stack3 := (recoveredBlock11Block21Stack3) ehooksAttributesNode.
            recoveredBlock11Block21PC := 60.
        ].
        recoveredBlock11Block21Step = 60 ifTrue: [
            recoveredBlock11Block21Stack3 := (recoveredBlock11Block21Stack3) name.
            recoveredBlock11Block21PC := 62.
        ].
        recoveredBlock11Block21Step = 62 ifTrue: [
            recoveredBlock11Block21Stack2 := (recoveredBlock11Block21Stack2) equals: (recoveredBlock11Block21Stack3).
            recoveredBlock11Block21PC := 64.
        ].
        recoveredBlock11Block21Step = 64 ifTrue: [
            (recoveredBlock11Block21Stack2) ifTrue: [recoveredBlock11Block21PC := 68] ifFalse: [recoveredBlock11Block21PC := 75].
        ].
        recoveredBlock11Block21Step = 68 ifTrue: [
            recoveredBlock11Block21PC := 69.
        ].
        recoveredBlock11Block21Step = 69 ifTrue: [
            recoveredBlock11Block21Stack1 := recoveredLocal1.
            recoveredBlock11Block21PC := 72.
        ].
        recoveredBlock11Block21Step = 72 ifTrue: [
            recoveredBlock11Block21Stack2 := recoveredBlock11Block21Arg1.
            recoveredBlock11Block21PC := 73.
        ].
        recoveredBlock11Block21Step = 73 ifTrue: [
            recoveredBlock11Block21Stack1 := (recoveredBlock11Block21Stack1) add: (recoveredBlock11Block21Stack2).
            recoveredBlock11Block21PC := 75.
        ].
        recoveredBlock11Block21Step = 75 ifTrue: [
            recoveredBlock11Block21Result := recoveredBlock11Block21Stack1.
            recoveredBlock11Block21Done := true.
        ].
    ].
    recoveredBlock11Block21Result
].
    recoveredBlock11Value3 := (recoveredBlock11Value1) do: (recoveredBlock11Value2).
    recoveredBlock11Value3
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x203d1a58; bytecode file offset 0xcce33c"
!ASDMappingEHooksExportUtil methodsFor: 'recovered'!
getSelectedEcuVarsOutput
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Set.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) selectedMappings.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 |
    recoveredBlock11Value0 := (self) mappingBase.
    recoveredBlock11Value1 := (recoveredBlock11Value0) ecuVarsOutput.
    recoveredBlock11Value2 := [:recoveredBlock11Block21Arg1 | 
    | recoveredBlock11Block21Stack0 recoveredBlock11Block21Stack1 recoveredBlock11Block21Stack2 recoveredBlock11Block21Stack3 recoveredBlock11Block21Stack4 recoveredBlock11Block21PC recoveredBlock11Block21Step recoveredBlock11Block21Done recoveredBlock11Block21Result |
    recoveredBlock11Block21Stack0 := nil.
    recoveredBlock11Block21PC := 28.
    recoveredBlock11Block21Done := false.
    [recoveredBlock11Block21Done not] whileTrue: [
        recoveredBlock11Block21Step := recoveredBlock11Block21PC.
        recoveredBlock11Block21Step = 28 ifTrue: [
            recoveredBlock11Block21Stack1 := nil.
            recoveredBlock11Block21PC := 29.
        ].
        recoveredBlock11Block21Step = 29 ifTrue: [
            recoveredBlock11Block21Stack2 := recoveredBlock11Arg1.
            recoveredBlock11Block21PC := 32.
        ].
        recoveredBlock11Block21Step = 32 ifTrue: [
            recoveredBlock11Block21Stack2 := (recoveredBlock11Block21Stack2) needsTarget.
            recoveredBlock11Block21PC := 34.
        ].
        recoveredBlock11Block21Step = 34 ifTrue: [
            (recoveredBlock11Block21Stack2) ifTrue: [recoveredBlock11Block21PC := 75] ifFalse: [recoveredBlock11Block21PC := 38].
        ].
        recoveredBlock11Block21Step = 38 ifTrue: [
            recoveredBlock11Block21Stack2 := recoveredBlock11Arg1.
            recoveredBlock11Block21PC := 41.
        ].
        recoveredBlock11Block21Step = 41 ifTrue: [
            recoveredBlock11Block21Stack2 := (recoveredBlock11Block21Stack2) targetObject.
            recoveredBlock11Block21PC := 43.
        ].
        recoveredBlock11Block21Step = 43 ifTrue: [
            recoveredBlock11Block21Stack2 := (recoveredBlock11Block21Stack2) ehooksAttributesNode.
            recoveredBlock11Block21PC := 45.
        ].
        recoveredBlock11Block21Step = 45 ifTrue: [
            (recoveredBlock11Block21Stack2 == nil) ifTrue: [recoveredBlock11Block21PC := 75] ifFalse: [recoveredBlock11Block21PC := 48].
        ].
        recoveredBlock11Block21Step = 48 ifTrue: [
            recoveredBlock11Block21PC := 49.
        ].
        recoveredBlock11Block21Step = 49 ifTrue: [
            recoveredBlock11Block21Stack1 := nil.
            recoveredBlock11Block21PC := 50.
        ].
        recoveredBlock11Block21Step = 50 ifTrue: [
            recoveredBlock11Block21Stack2 := recoveredBlock11Block21Arg1.
            recoveredBlock11Block21PC := 51.
        ].
        recoveredBlock11Block21Step = 51 ifTrue: [
            recoveredBlock11Block21Stack2 := (recoveredBlock11Block21Stack2) name.
            recoveredBlock11Block21PC := 53.
        ].
        recoveredBlock11Block21Step = 53 ifTrue: [
            recoveredBlock11Block21Stack3 := recoveredBlock11Arg1.
            recoveredBlock11Block21PC := 56.
        ].
        recoveredBlock11Block21Step = 56 ifTrue: [
            recoveredBlock11Block21Stack3 := (recoveredBlock11Block21Stack3) targetObject.
            recoveredBlock11Block21PC := 58.
        ].
        recoveredBlock11Block21Step = 58 ifTrue: [
            recoveredBlock11Block21Stack3 := (recoveredBlock11Block21Stack3) ehooksAttributesNode.
            recoveredBlock11Block21PC := 60.
        ].
        recoveredBlock11Block21Step = 60 ifTrue: [
            recoveredBlock11Block21Stack3 := (recoveredBlock11Block21Stack3) name.
            recoveredBlock11Block21PC := 62.
        ].
        recoveredBlock11Block21Step = 62 ifTrue: [
            recoveredBlock11Block21Stack2 := (recoveredBlock11Block21Stack2) equals: (recoveredBlock11Block21Stack3).
            recoveredBlock11Block21PC := 64.
        ].
        recoveredBlock11Block21Step = 64 ifTrue: [
            (recoveredBlock11Block21Stack2) ifTrue: [recoveredBlock11Block21PC := 68] ifFalse: [recoveredBlock11Block21PC := 75].
        ].
        recoveredBlock11Block21Step = 68 ifTrue: [
            recoveredBlock11Block21PC := 69.
        ].
        recoveredBlock11Block21Step = 69 ifTrue: [
            recoveredBlock11Block21Stack1 := recoveredLocal1.
            recoveredBlock11Block21PC := 72.
        ].
        recoveredBlock11Block21Step = 72 ifTrue: [
            recoveredBlock11Block21Stack2 := recoveredBlock11Block21Arg1.
            recoveredBlock11Block21PC := 73.
        ].
        recoveredBlock11Block21Step = 73 ifTrue: [
            recoveredBlock11Block21Stack1 := (recoveredBlock11Block21Stack1) add: (recoveredBlock11Block21Stack2).
            recoveredBlock11Block21PC := 75.
        ].
        recoveredBlock11Block21Step = 75 ifTrue: [
            recoveredBlock11Block21Result := recoveredBlock11Block21Stack1.
            recoveredBlock11Block21Done := true.
        ].
    ].
    recoveredBlock11Block21Result
].
    recoveredBlock11Value3 := (recoveredBlock11Value1) do: (recoveredBlock11Value2).
    recoveredBlock11Value3
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x204591c0; bytecode file offset 0xd55ad4"
!ASDMappingEHooksExportUtil methodsFor: 'recovered'!
exportXMLMappingsNotSelected
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ASDXMLExportWriter.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) exportController.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := fileName.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack4 := 'component_main.xsd'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack5 := false.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) initOn: (recoveredStack2) filename: (recoveredStack3) schema: (recoveredStack4) sign: (recoveredStack5).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) mappingBase.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) exportTagForMapping.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) openComplex: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := 'Input'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) useMappingsGetForType: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 55].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) showOnMonitorStartType: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) exportXMLMappingsInput: (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) mappingBase.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) ecuVarsInput.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) exportXMLECUInputVars: (recoveredStack1) writer: (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := 'Output'.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) useMappingsGetForType: (recoveredStack1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 83].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) showOnMonitorStartType: (recoveredStack1).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0) exportXMLMappingsOutput: (recoveredStack1).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := (recoveredStack1) mappingBase.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) ecuVarsOutput.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0) exportXMLECUOutputVars: (recoveredStack1) writer: (recoveredStack2).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := 'Process'.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := (recoveredStack0) useMappingsGetForType: (recoveredStack1).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 94] ifFalse: [recoveredPC := 107].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack0) showOnMonitorStartType: (recoveredStack1).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := (recoveredStack1) mappingBase.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := (recoveredStack1) bypassFunctions.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack0) exportXMLMappingsProcess: (recoveredStack1) writer: (recoveredStack2).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack0) closeComplex.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2048ca30; bytecode file offset 0xd89350"
!ASDMappingEHooksExportUtil methodsFor: 'recovered'!
exportXMLMappingsSelected
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectedMappingsType.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) showOnMonitorStartType: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := ASDXMLExportWriter.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) exportController.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := fileName.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := 'component_main.xsd'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack4 := false.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) initOn: (recoveredStack1) filename: (recoveredStack2) schema: (recoveredStack3) sign: (recoveredStack4).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) mappingBase.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) eHooksConfigurationTag.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) openComplex: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedMappingsType.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := 'Process'.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectedMappings.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) exportXMLMappingsProcess: (recoveredStack1) writer: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredPC := 84.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) mappingBase.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := (recoveredStack2) selectedMappingsType.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) exportTagForMappingType: (recoveredStack2).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0) openComplex: (recoveredStack1).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) writeVersionInfo.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) mappingBase.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectedMappings.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) writeXMLElementMapping: (recoveredStack1) writer: (recoveredStack2) includeOIDs: (recoveredStack3).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack0) closeComplex.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedMappingsType.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := 'Input'.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 92] ifFalse: [recoveredPC := 99].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := (recoveredStack1) getSelectedEcuVarsInput.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack0) exportXMLECUInputVars: (recoveredStack1) writer: (recoveredStack2).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedMappingsType.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := 'Output'.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 108] ifFalse: [recoveredPC := 115].
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := (recoveredStack1) getSelectedEcuVarsOutput.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack0) exportXMLECUOutputVars: (recoveredStack1) writer: (recoveredStack2).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack0) closeComplex.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            (recoveredStack0) numberSelectedMapsPassed: (recoveredStack1).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            (recoveredStack0) showOnMonitorEnd.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204dd204; bytecode file offset 0xdd9b10"
!ASDMappingEHooksExportUtil methodsFor: 'recovered'!
exportCSVMappingsNotSelected
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CfsWriteFileStream.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) fileName.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) openEmpty: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := -2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) writeVersion: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) mappingBase.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) mappingTypeProcess.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := (recoveredStack2) mappingBase.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := (recoveredStack2) bypassFunctions.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) exportCSVBypassFuncNodes: (recoveredStack2) forType: (recoveredStack3) stream: (recoveredStack4).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) mappingBase.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) ecuVarsInput.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredPC := 67.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) mappingBase.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) ecuVarsInput.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) inputVarTag.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := (recoveredStack2) mappingBase.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := (recoveredStack2) ecuVarsInput.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack1) exportCSVECUVariables: (recoveredStack2) withLabel: (recoveredStack3) stream: (recoveredStack4).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := (recoveredStack1) mappingBase.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) ecuVarsOutput.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 94].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredPC := 105.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := (recoveredStack1) mappingBase.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := (recoveredStack1) ecuVarsOutput.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := (recoveredStack1) outputVarTag.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := (recoveredStack2) mappingBase.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := (recoveredStack2) ecuVarsOutput.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack1) exportCSVECUVariables: (recoveredStack2) withLabel: (recoveredStack3) stream: (recoveredStack4).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := (recoveredStack1) mappingBase.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := (recoveredStack1) mappingTypeInput.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack2 := (recoveredStack2) mapsForType: (recoveredStack3).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            (recoveredStack1) exportCSVMappings: (recoveredStack2) forType: (recoveredStack3) stream: (recoveredStack4).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := (recoveredStack1) mappingBase.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := (recoveredStack1) mappingTypeOutput.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack2 := (recoveredStack2) mapsForType: (recoveredStack3).
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            (recoveredStack1) exportCSVMappings: (recoveredStack2) forType: (recoveredStack3) stream: (recoveredStack4).
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            (recoveredStack1) close.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

