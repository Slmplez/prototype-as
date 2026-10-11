"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20007ef8; bytecode file offset 0x908be4"
!SGCompileSourceCollector methodsFor: 'recovered'!
getAllRequiresSources
    | recoveredValue0 |
    recoveredValue0 := (self) toBeCompiledSOs.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000af7c; bytecode file offset 0x908be4"
!SGCompileSourceCollector methodsFor: 'recovered'!
toBeProcessedSources
    | recoveredValue0 |
    recoveredValue0 := (self) toBeCompiledSOs.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20034cd4; bytecode file offset 0x934580"
!SGCompileSourceCollector methodsFor: 'recovered'!
notEmpty
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) toBeCompiledSOsTable.
    recoveredValue1 := (recoveredValue0) notEmpty.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20069d88; bytecode file offset 0x966bdc"
!SGCompileSourceCollector methodsFor: 'recovered'!
toBeCompiledSOsTable
    | recoveredValue0 |
    recoveredValue0 := toBeCompiledSOsTable.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200766a4; bytecode file offset 0x9757c8"
!SGCompileSourceCollector methodsFor: 'recovered'!
requiresBanner
    ^true
! !

"ASDBase.ic method 0x200c0d40; bytecode file offset 0x9bdf14"
!SGCompileSourceCollector methodsFor: 'recovered'!
toBeCompiledSOsTable: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    toBeCompiledSOsTable := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200f9ff4; bytecode file offset 0x9f6a08"
!SGCompileSourceCollector methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    toBeCompiledSOsTable := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x2016f654; bytecode file offset 0xa6bf30"
!SGCompileSourceCollector methodsFor: 'recovered'!
toBeCompiledSOs
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := toBeCompiledSOs.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 |
    recoveredBlock6Value0 := (self) produceToBeCompiledSOs.
    recoveredBlock6Value1 := recoveredBlock6Value0.
    toBeCompiledSOs := recoveredBlock6Value1.
    recoveredBlock6Value0
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := toBeCompiledSOs.
    ^recoveredValue2
! !

"ASDBase.ic method 0x203068b4; bytecode file offset 0xc03198"
!SGCompileSourceCollector methodsFor: 'recovered'!
addGlobalProjectDefinitionHeaderHandle: recoveredArg1 makeNode: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) toBeCompiledSOsTable.
    recoveredValue1 := (self) fileStructureStrategy.
    recoveredValue2 := (recoveredValue1) projectDefinitionsHeaderNoExtension.
    recoveredValue3 := [
    | recoveredBlock8Local1 recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 recoveredBlock8Value4 recoveredBlock8Value5 recoveredBlock8Value6 recoveredBlock8Value7 recoveredBlock8Value8 recoveredBlock8Value9 recoveredBlock8Value10 recoveredBlock8Value11 recoveredBlock8Value12 recoveredBlock8Value13 |
    recoveredBlock8Value0 := TGCompilingSourceObject.
    recoveredBlock8Value1 := (self) fileStructureStrategy.
    recoveredBlock8Value2 := (recoveredBlock8Value1) projectDefinitionsHeaderNoExtension.
    recoveredBlock8Value3 := recoveredArg2.
    recoveredBlock8Value4 := (recoveredBlock8Value3) globalDefsHDescription.
    recoveredBlock8Value5 := recoveredArg2.
    recoveredBlock8Value6 := (recoveredBlock8Value5) makeGlobalDefsHSource.
    recoveredBlock8Value7 := (recoveredBlock8Value0) fileName: (recoveredBlock8Value2) description: (recoveredBlock8Value4) userReference: (recoveredBlock8Value6) sourceCollector: (self).
    recoveredBlock8Local1 := recoveredBlock8Value7.
    recoveredBlock8Value8 := recoveredBlock8Local1.
    recoveredBlock8Value9 := recoveredBlock8Value8.
    (recoveredBlock8Value9) hSource: ('
/* this file can be used externally to include all relevant header information of the current ASCET project */
').
    recoveredBlock8Value10 := recoveredBlock8Value8.
    recoveredBlock8Value11 := (self) fileStructureStrategy.
    recoveredBlock8Value12 := recoveredArg2.
    recoveredBlock8Value13 := (recoveredBlock8Value11) necessaryGlobalDefsPreprocessorCommandsForProject: (recoveredBlock8Value12).
    (recoveredBlock8Value10) preprocessorCommands: (recoveredBlock8Value13).
    recoveredBlock8Value8
].
    (recoveredValue0) at: (recoveredValue2) ifAbsentPut: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2030d9f4; bytecode file offset 0xc0a2d0"
!SGCompileSourceCollector methodsFor: 'recovered'!
addInitCodeHandle: recoveredArg1 makeNode: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileStructureStrategy.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSoftwareDevelopmentMode.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) toBeCompiledSOsTable.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock15Local1 recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 recoveredBlock15Value3 recoveredBlock15Value4 recoveredBlock15Value5 recoveredBlock15Value6 recoveredBlock15Value7 recoveredBlock15Value8 recoveredBlock15Value9 recoveredBlock15Value10 recoveredBlock15Value11 |
    recoveredBlock15Value0 := TGCompilingSourceObject.
    recoveredBlock15Value1 := recoveredArg2.
    recoveredBlock15Value2 := (recoveredBlock15Value1) initFileName.
    recoveredBlock15Value3 := recoveredArg2.
    recoveredBlock15Value4 := (recoveredBlock15Value3) initInstDescription.
    recoveredBlock15Value5 := recoveredArg2.
    recoveredBlock15Value6 := (recoveredBlock15Value5) makeInitSource.
    recoveredBlock15Value7 := (recoveredBlock15Value0) fileName: (recoveredBlock15Value2) description: (recoveredBlock15Value4) userReference: (recoveredBlock15Value6) sourceCollector: (self).
    recoveredBlock15Local1 := recoveredBlock15Value7.
    recoveredBlock15Value8 := (self) fileStructureStrategy.
    recoveredBlock15Value9 := recoveredBlock15Local1.
    recoveredBlock15Value10 := recoveredArg2.
    recoveredBlock15Value11 := (recoveredBlock15Value8) toBeCompiledInitSO: (recoveredBlock15Value9) forComponent: (recoveredBlock15Value10).
    recoveredBlock15Value11
].
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2032fb2c; bytecode file offset 0xc2c40c"
!SGCompileSourceCollector methodsFor: 'recovered'!
addERCOSEKHCodeHandle: recoveredArg1 makeNode: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) ercosek_h.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 59].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) toBeCompiledSOsTable.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) fileStructureStrategy.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) ercosekHeaderFileNameNoExtension.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock22Local1 recoveredBlock22Value0 recoveredBlock22Value1 recoveredBlock22Value2 recoveredBlock22Value3 recoveredBlock22Value4 recoveredBlock22Value5 recoveredBlock22Value6 recoveredBlock22Value7 recoveredBlock22Value8 recoveredBlock22Value9 recoveredBlock22Value10 |
    recoveredBlock22Value0 := TGCompilingSourceObject.
    recoveredBlock22Value1 := (self) fileStructureStrategy.
    recoveredBlock22Value2 := (recoveredBlock22Value1) ercosekHeaderFileNameNoExtension.
    recoveredBlock22Value3 := recoveredArg2.
    recoveredBlock22Value4 := (recoveredBlock22Value3) ercosekHDescription.
    recoveredBlock22Value5 := recoveredArg2.
    recoveredBlock22Value6 := (recoveredBlock22Value5) makeERCOSEKHSource.
    recoveredBlock22Value7 := (recoveredBlock22Value0) fileName: (recoveredBlock22Value2) description: (recoveredBlock22Value4) userReference: (recoveredBlock22Value6) sourceCollector: (self).
    recoveredBlock22Local1 := recoveredBlock22Value7.
    recoveredBlock22Value8 := recoveredBlock22Local1.
    recoveredBlock22Value9 := recoveredBlock22Value8.
    recoveredBlock22Value10 := recoveredLocal1.
    (recoveredBlock22Value9) hSource: (recoveredBlock22Value10).
    recoveredBlock22Value8
].
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) ifAbsentPut: (recoveredStack3).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20379764; bytecode file offset 0xc76088"
!SGCompileSourceCollector methodsFor: 'recovered'!
addBypassFunctionsHandle: recoveredArg1 makeNode: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) ehooksBypassFunctions.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 69].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) toBeCompiledSOsTable.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) fileStructureStrategy.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) projectBypassFunctionsModuleNoExtension.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock22Local1 recoveredBlock22Value0 recoveredBlock22Value1 recoveredBlock22Value2 recoveredBlock22Value3 recoveredBlock22Value4 recoveredBlock22Value5 recoveredBlock22Value6 recoveredBlock22Value7 recoveredBlock22Value8 recoveredBlock22Value9 recoveredBlock22Value10 recoveredBlock22Value11 recoveredBlock22Value12 recoveredBlock22Value13 recoveredBlock22Value14 |
    recoveredBlock22Value0 := TGCompilingSourceObject.
    recoveredBlock22Value1 := (self) fileStructureStrategy.
    recoveredBlock22Value2 := (recoveredBlock22Value1) projectBypassFunctionsModuleNoExtension.
    recoveredBlock22Value3 := recoveredArg2.
    recoveredBlock22Value4 := (recoveredBlock22Value3) conversionsHDescription.
    recoveredBlock22Value5 := recoveredArg2.
    recoveredBlock22Value6 := (recoveredBlock22Value5) makeConversionsHSource.
    recoveredBlock22Value7 := (recoveredBlock22Value0) fileName: (recoveredBlock22Value2) description: (recoveredBlock22Value4) userReference: (recoveredBlock22Value6) sourceCollector: (self).
    recoveredBlock22Local1 := recoveredBlock22Value7.
    recoveredBlock22Value8 := recoveredBlock22Local1.
    recoveredBlock22Value9 := recoveredBlock22Value8.
    recoveredBlock22Value10 := recoveredLocal1.
    (recoveredBlock22Value9) cSource: (recoveredBlock22Value10).
    recoveredBlock22Value11 := recoveredBlock22Value8.
    recoveredBlock22Value12 := (self) fileStructureStrategy.
    recoveredBlock22Value13 := recoveredArg2.
    recoveredBlock22Value14 := (recoveredBlock22Value12) necessaryConversionsPreprocessorCommandsForProject: (recoveredBlock22Value13).
    (recoveredBlock22Value11) preprocessorCommands: (recoveredBlock22Value14).
    recoveredBlock22Value8
].
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) ifAbsentPut: (recoveredStack3).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203797a0; bytecode file offset 0xc76088"
!SGCompileSourceCollector methodsFor: 'recovered'!
addConversionsHeaderHandle: recoveredArg1 makeNode: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) ehooksConversions.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 69].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) toBeCompiledSOsTable.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) fileStructureStrategy.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) projectConversionHeaderNoExtension.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock22Local1 recoveredBlock22Value0 recoveredBlock22Value1 recoveredBlock22Value2 recoveredBlock22Value3 recoveredBlock22Value4 recoveredBlock22Value5 recoveredBlock22Value6 recoveredBlock22Value7 recoveredBlock22Value8 recoveredBlock22Value9 recoveredBlock22Value10 recoveredBlock22Value11 recoveredBlock22Value12 recoveredBlock22Value13 recoveredBlock22Value14 |
    recoveredBlock22Value0 := TGCompilingSourceObject.
    recoveredBlock22Value1 := (self) fileStructureStrategy.
    recoveredBlock22Value2 := (recoveredBlock22Value1) projectConversionHeaderNoExtension.
    recoveredBlock22Value3 := recoveredArg2.
    recoveredBlock22Value4 := (recoveredBlock22Value3) conversionsHDescription.
    recoveredBlock22Value5 := recoveredArg2.
    recoveredBlock22Value6 := (recoveredBlock22Value5) makeConversionsHSource.
    recoveredBlock22Value7 := (recoveredBlock22Value0) fileName: (recoveredBlock22Value2) description: (recoveredBlock22Value4) userReference: (recoveredBlock22Value6) sourceCollector: (self).
    recoveredBlock22Local1 := recoveredBlock22Value7.
    recoveredBlock22Value8 := recoveredBlock22Local1.
    recoveredBlock22Value9 := recoveredBlock22Value8.
    recoveredBlock22Value10 := recoveredLocal1.
    (recoveredBlock22Value9) hSource: (recoveredBlock22Value10).
    recoveredBlock22Value11 := recoveredBlock22Value8.
    recoveredBlock22Value12 := (self) fileStructureStrategy.
    recoveredBlock22Value13 := recoveredArg2.
    recoveredBlock22Value14 := (recoveredBlock22Value12) necessaryConversionsPreprocessorCommandsForProject: (recoveredBlock22Value13).
    (recoveredBlock22Value11) preprocessorCommands: (recoveredBlock22Value14).
    recoveredBlock22Value8
].
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) ifAbsentPut: (recoveredStack3).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2038fd74; bytecode file offset 0xc8c658"
!SGCompileSourceCollector methodsFor: 'recovered'!
addAdditionalFilesHandle: recoveredArg1 makeNode: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) toBeCompiledSOsTable.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    | recoveredBlock8Local1 recoveredBlock8Stack0 recoveredBlock8Stack1 recoveredBlock8Stack2 recoveredBlock8Stack3 recoveredBlock8Stack4 recoveredBlock8Stack5 recoveredBlock8Stack6 recoveredBlock8PC recoveredBlock8Step recoveredBlock8Done recoveredBlock8Result |
    recoveredBlock8Stack0 := self.
    recoveredBlock8PC := 14.
    recoveredBlock8Done := false.
    [recoveredBlock8Done not] whileTrue: [
        recoveredBlock8Step := recoveredBlock8PC.
        recoveredBlock8Step = 14 ifTrue: [
            recoveredBlock8Stack1 := SGAdditionalFileSource.
            recoveredBlock8PC := 16.
        ].
        recoveredBlock8Step = 16 ifTrue: [
            recoveredBlock8Stack2 := recoveredArg2.
            recoveredBlock8PC := 19.
        ].
        recoveredBlock8Step = 19 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) moduleFileName.
            recoveredBlock8PC := 20.
        ].
        recoveredBlock8Step = 20 ifTrue: [
            recoveredBlock8Stack3 := recoveredArg2.
            recoveredBlock8PC := 23.
        ].
        recoveredBlock8Step = 23 ifTrue: [
            recoveredBlock8Stack3 := (recoveredBlock8Stack3) additionalFilesDescription.
            recoveredBlock8PC := 24.
        ].
        recoveredBlock8Step = 24 ifTrue: [
            recoveredBlock8Stack4 := recoveredArg2.
            recoveredBlock8PC := 27.
        ].
        recoveredBlock8Step = 27 ifTrue: [
            recoveredBlock8Stack4 := (recoveredBlock8Stack4) makeAdditionalFileSource.
            recoveredBlock8PC := 29.
        ].
        recoveredBlock8Step = 29 ifTrue: [
            recoveredBlock8Stack5 := self.
            recoveredBlock8PC := 30.
        ].
        recoveredBlock8Step = 30 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) fileName: (recoveredBlock8Stack2) description: (recoveredBlock8Stack3) userReference: (recoveredBlock8Stack4) sourceCollector: (recoveredBlock8Stack5).
            recoveredBlock8PC := 33.
        ].
        recoveredBlock8Step = 33 ifTrue: [
            recoveredBlock8Local1 := recoveredBlock8Stack1.
            recoveredBlock8PC := 34.
        ].
        recoveredBlock8Step = 34 ifTrue: [
            recoveredBlock8Stack1 := recoveredArg1.
            recoveredBlock8PC := 37.
        ].
        recoveredBlock8Step = 37 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) hasCSource.
            recoveredBlock8PC := 39.
        ].
        recoveredBlock8Step = 39 ifTrue: [
            (recoveredBlock8Stack1) ifTrue: [recoveredBlock8PC := 42] ifFalse: [recoveredBlock8PC := 53].
        ].
        recoveredBlock8Step = 42 ifTrue: [
            recoveredBlock8Stack1 := recoveredArg2.
            recoveredBlock8PC := 45.
        ].
        recoveredBlock8Step = 45 ifTrue: [
            (recoveredBlock8Stack1) checkPermissionToCompile.
            recoveredBlock8PC := 47.
        ].
        recoveredBlock8Step = 47 ifTrue: [
            recoveredBlock8Stack1 := recoveredBlock8Local1.
            recoveredBlock8PC := 48.
        ].
        recoveredBlock8Step = 48 ifTrue: [
            recoveredBlock8Stack2 := recoveredArg1.
            recoveredBlock8PC := 51.
        ].
        recoveredBlock8Step = 51 ifTrue: [
            (recoveredBlock8Stack1) cSource: (recoveredBlock8Stack2).
            recoveredBlock8PC := 53.
        ].
        recoveredBlock8Step = 53 ifTrue: [
            recoveredBlock8Stack1 := recoveredArg1.
            recoveredBlock8PC := 56.
        ].
        recoveredBlock8Step = 56 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) hasHSource.
            recoveredBlock8PC := 58.
        ].
        recoveredBlock8Step = 58 ifTrue: [
            (recoveredBlock8Stack1) ifTrue: [recoveredBlock8PC := 62] ifFalse: [recoveredBlock8PC := 68].
        ].
        recoveredBlock8Step = 62 ifTrue: [
            recoveredBlock8Stack1 := recoveredBlock8Local1.
            recoveredBlock8PC := 63.
        ].
        recoveredBlock8Step = 63 ifTrue: [
            recoveredBlock8Stack2 := recoveredArg1.
            recoveredBlock8PC := 66.
        ].
        recoveredBlock8Step = 66 ifTrue: [
            (recoveredBlock8Stack1) hSource: (recoveredBlock8Stack2).
            recoveredBlock8PC := 68.
        ].
        recoveredBlock8Step = 68 ifTrue: [
            recoveredBlock8Stack1 := recoveredBlock8Local1.
            recoveredBlock8PC := 69.
        ].
        recoveredBlock8Step = 69 ifTrue: [
            recoveredBlock8Result := recoveredBlock8Stack1.
            recoveredBlock8Done := true.
        ].
    ].
    recoveredBlock8Result
].
    (recoveredValue0) at: (recoveredValue1) ifAbsentPut: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20391f4c; bytecode file offset 0xc8e82c"
!SGCompileSourceCollector methodsFor: 'recovered'!
addAdditionalCodeHandle: recoveredArg1 makeNode: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) toBeCompiledSOsTable.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    | recoveredBlock8Stack0 recoveredBlock8Stack1 recoveredBlock8Stack2 recoveredBlock8Stack3 recoveredBlock8Stack4 recoveredBlock8PC recoveredBlock8Step recoveredBlock8Done recoveredBlock8Result |
    recoveredBlock8Stack0 := self.
    recoveredBlock8PC := 14.
    recoveredBlock8Done := false.
    [recoveredBlock8Done not] whileTrue: [
        recoveredBlock8Step := recoveredBlock8PC.
        recoveredBlock8Step = 14 ifTrue: [
            recoveredBlock8Stack1 := nil.
            recoveredBlock8PC := 15.
        ].
        recoveredBlock8Step = 15 ifTrue: [
            recoveredBlock8Stack2 := recoveredArg1.
            recoveredBlock8PC := 18.
        ].
        recoveredBlock8Step = 18 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) codeOfOILConfiguration.
            recoveredBlock8PC := 19.
        ].
        recoveredBlock8Step = 19 ifTrue: [
            recoveredBlock8Stack3 := recoveredBlock8Stack2.
            recoveredBlock8PC := 20.
        ].
        recoveredBlock8Step = 20 ifTrue: [
            recoveredLocal1 := recoveredBlock8Stack3.
            recoveredBlock8PC := 23.
        ].
        recoveredBlock8Step = 23 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) notEmpty.
            recoveredBlock8PC := 24.
        ].
        recoveredBlock8Step = 24 ifTrue: [
            (recoveredBlock8Stack2) ifTrue: [recoveredBlock8PC := 28] ifFalse: [recoveredBlock8PC := 69].
        ].
        recoveredBlock8Step = 28 ifTrue: [
            recoveredBlock8PC := 29.
        ].
        recoveredBlock8Step = 29 ifTrue: [
            recoveredBlock8Stack1 := self.
            recoveredBlock8PC := 30.
        ].
        recoveredBlock8Step = 30 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) toBeCompiledSOsTable.
            recoveredBlock8PC := 31.
        ].
        recoveredBlock8Step = 31 ifTrue: [
            recoveredBlock8Stack2 := 'temp.oil'.
            recoveredBlock8PC := 33.
        ].
        recoveredBlock8Step = 33 ifTrue: [
            recoveredBlock8Stack3 := [
    | recoveredBlock8Block33Local1 recoveredBlock8Block33Value0 recoveredBlock8Block33Value1 recoveredBlock8Block33Value2 recoveredBlock8Block33Value3 recoveredBlock8Block33Value4 recoveredBlock8Block33Value5 recoveredBlock8Block33Value6 recoveredBlock8Block33Value7 recoveredBlock8Block33Value8 |
    recoveredBlock8Block33Value0 := TGCompilingSourceObject.
    recoveredBlock8Block33Value1 := recoveredArg2.
    recoveredBlock8Block33Value2 := (recoveredBlock8Block33Value1) oilDescription.
    recoveredBlock8Block33Value3 := recoveredArg2.
    recoveredBlock8Block33Value4 := (recoveredBlock8Block33Value3) makeOILHSource.
    recoveredBlock8Block33Value5 := (recoveredBlock8Block33Value0) fileName: ('temp') description: (recoveredBlock8Block33Value2) userReference: (recoveredBlock8Block33Value4) sourceCollector: (self).
    recoveredBlock8Block33Local1 := recoveredBlock8Block33Value5.
    recoveredBlock8Block33Value6 := recoveredBlock8Block33Local1.
    recoveredBlock8Block33Value7 := recoveredBlock8Block33Value6.
    recoveredBlock8Block33Value8 := recoveredLocal1.
    (recoveredBlock8Block33Value7) oilSource: (recoveredBlock8Block33Value8).
    recoveredBlock8Block33Value6
].
            recoveredBlock8PC := 67.
        ].
        recoveredBlock8Step = 67 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) at: (recoveredBlock8Stack2) ifAbsentPut: (recoveredBlock8Stack3).
            recoveredBlock8PC := 69.
        ].
        recoveredBlock8Step = 69 ifTrue: [
            recoveredBlock8Result := recoveredBlock8Stack1.
            recoveredBlock8Done := true.
        ].
    ].
    recoveredBlock8Result
].
    (recoveredValue0) at: (recoveredValue1) ifAbsentPut: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x203a4604; bytecode file offset 0xca0ef4"
!SGCompileSourceCollector methodsFor: 'recovered'!
addGlobalStructHeaderCodeHandle: recoveredArg1 makeNode: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) globalStructHeader.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) toBeCompiledSOsTable.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) globalStructHeaderFileName.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock22Local1 recoveredBlock22Value0 recoveredBlock22Value1 recoveredBlock22Value2 recoveredBlock22Value3 recoveredBlock22Value4 recoveredBlock22Value5 recoveredBlock22Value6 recoveredBlock22Value7 recoveredBlock22Value8 recoveredBlock22Value9 recoveredBlock22Value10 recoveredBlock22Value11 recoveredBlock22Value12 recoveredBlock22Value13 recoveredBlock22Value14 recoveredBlock22Value15 recoveredBlock22Value16 |
    recoveredBlock22Value0 := TGCompilingSourceObject.
    recoveredBlock22Value1 := recoveredArg2.
    recoveredBlock22Value2 := (recoveredBlock22Value1) globalStructHeaderFileName.
    recoveredBlock22Value3 := recoveredArg2.
    recoveredBlock22Value4 := (recoveredBlock22Value3) globalStructHeaderDescription.
    recoveredBlock22Value5 := recoveredArg2.
    recoveredBlock22Value6 := (recoveredBlock22Value5) makeGlobalStructHeaderSource.
    recoveredBlock22Value7 := (recoveredBlock22Value0) fileName: (recoveredBlock22Value2) description: (recoveredBlock22Value4) userReference: (recoveredBlock22Value6) sourceCollector: (self).
    recoveredBlock22Local1 := recoveredBlock22Value7.
    recoveredBlock22Value8 := recoveredBlock22Local1.
    recoveredBlock22Value9 := recoveredLocal1.
    (recoveredBlock22Value8) hSource: (recoveredBlock22Value9).
    recoveredBlock22Value10 := recoveredArg2.
    recoveredBlock22Value11 := (recoveredBlock22Value10) fileStructureStrategy.
    recoveredBlock22Value12 := (recoveredBlock22Value11) globalHeaders.
    recoveredBlock22Value13 := recoveredArg2.
    recoveredBlock22Value14 := (recoveredBlock22Value13) globalStructHeaderFileName.
    recoveredBlock22Value15 := (recoveredBlock22Value14) , ('.h').
    (recoveredBlock22Value12) add: (recoveredBlock22Value15).
    recoveredBlock22Value16 := recoveredBlock22Local1.
    recoveredBlock22Value16
].
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) ifAbsentPut: (recoveredStack3).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2043abf4; bytecode file offset 0xd374e4"
!SGCompileSourceCollector methodsFor: 'recovered'!
addModuleCodeHandle: recoveredArg1 makeNode: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) toBeCompiledSOsTable.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    | recoveredBlock8Local1 recoveredBlock8Stack0 recoveredBlock8Stack1 recoveredBlock8Stack2 recoveredBlock8Stack3 recoveredBlock8Stack4 recoveredBlock8Stack5 recoveredBlock8Stack6 recoveredBlock8PC recoveredBlock8Step recoveredBlock8Done recoveredBlock8Result |
    recoveredBlock8Stack0 := self.
    recoveredBlock8PC := 14.
    recoveredBlock8Done := false.
    [recoveredBlock8Done not] whileTrue: [
        recoveredBlock8Step := recoveredBlock8PC.
        recoveredBlock8Step = 14 ifTrue: [
            recoveredBlock8Stack1 := TGCompilingSourceObject.
            recoveredBlock8PC := 16.
        ].
        recoveredBlock8Step = 16 ifTrue: [
            recoveredBlock8Stack2 := recoveredArg2.
            recoveredBlock8PC := 19.
        ].
        recoveredBlock8Step = 19 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) moduleFileName.
            recoveredBlock8PC := 20.
        ].
        recoveredBlock8Step = 20 ifTrue: [
            recoveredBlock8Stack3 := recoveredArg2.
            recoveredBlock8PC := 23.
        ].
        recoveredBlock8Step = 23 ifTrue: [
            recoveredBlock8Stack3 := (recoveredBlock8Stack3) moduleDescription.
            recoveredBlock8PC := 24.
        ].
        recoveredBlock8Step = 24 ifTrue: [
            recoveredBlock8Stack4 := recoveredArg2.
            recoveredBlock8PC := 27.
        ].
        recoveredBlock8Step = 27 ifTrue: [
            recoveredBlock8Stack5 := recoveredArg1.
            recoveredBlock8PC := 30.
        ].
        recoveredBlock8Step = 30 ifTrue: [
            recoveredBlock8Stack4 := (recoveredBlock8Stack4) makeModuleSource: (recoveredBlock8Stack5).
            recoveredBlock8PC := 32.
        ].
        recoveredBlock8Step = 32 ifTrue: [
            recoveredBlock8Stack5 := self.
            recoveredBlock8PC := 33.
        ].
        recoveredBlock8Step = 33 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) fileName: (recoveredBlock8Stack2) description: (recoveredBlock8Stack3) userReference: (recoveredBlock8Stack4) sourceCollector: (recoveredBlock8Stack5).
            recoveredBlock8PC := 36.
        ].
        recoveredBlock8Step = 36 ifTrue: [
            recoveredBlock8Local1 := recoveredBlock8Stack1.
            recoveredBlock8PC := 37.
        ].
        recoveredBlock8Step = 37 ifTrue: [
            recoveredBlock8Stack1 := recoveredArg2.
            recoveredBlock8PC := 40.
        ].
        recoveredBlock8Step = 40 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) isClassNode.
            recoveredBlock8PC := 42.
        ].
        recoveredBlock8Step = 42 ifTrue: [
            (recoveredBlock8Stack1) ifTrue: [recoveredBlock8PC := 54] ifFalse: [recoveredBlock8PC := 46].
        ].
        recoveredBlock8Step = 46 ifTrue: [
            recoveredBlock8Stack1 := recoveredArg2.
            recoveredBlock8PC := 49.
        ].
        recoveredBlock8Step = 49 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) isRecordNode.
            recoveredBlock8PC := 51.
        ].
        recoveredBlock8Step = 51 ifTrue: [
            (recoveredBlock8Stack1) ifTrue: [recoveredBlock8PC := 54] ifFalse: [recoveredBlock8PC := 66].
        ].
        recoveredBlock8Step = 54 ifTrue: [
            recoveredBlock8Stack1 := self.
            recoveredBlock8PC := 55.
        ].
        recoveredBlock8Step = 55 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) fileStructureStrategy.
            recoveredBlock8PC := 57.
        ].
        recoveredBlock8Step = 57 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Local1.
            recoveredBlock8PC := 58.
        ].
        recoveredBlock8Step = 58 ifTrue: [
            recoveredBlock8Stack3 := recoveredArg2.
            recoveredBlock8PC := 61.
        ].
        recoveredBlock8Step = 61 ifTrue: [
            (recoveredBlock8Stack1) toBeCompiledModuleSO: (recoveredBlock8Stack2) forASDClass: (recoveredBlock8Stack3).
            recoveredBlock8PC := 63.
        ].
        recoveredBlock8Step = 63 ifTrue: [
            recoveredBlock8PC := 95.
        ].
        recoveredBlock8Step = 66 ifTrue: [
            recoveredBlock8Stack1 := recoveredArg2.
            recoveredBlock8PC := 69.
        ].
        recoveredBlock8Step = 69 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) isARSWComponentNode.
            recoveredBlock8PC := 71.
        ].
        recoveredBlock8Step = 71 ifTrue: [
            (recoveredBlock8Stack1) ifTrue: [recoveredBlock8PC := 74] ifFalse: [recoveredBlock8PC := 86].
        ].
        recoveredBlock8Step = 74 ifTrue: [
            recoveredBlock8Stack1 := self.
            recoveredBlock8PC := 75.
        ].
        recoveredBlock8Step = 75 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) fileStructureStrategy.
            recoveredBlock8PC := 77.
        ].
        recoveredBlock8Step = 77 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Local1.
            recoveredBlock8PC := 78.
        ].
        recoveredBlock8Step = 78 ifTrue: [
            recoveredBlock8Stack3 := recoveredArg2.
            recoveredBlock8PC := 81.
        ].
        recoveredBlock8Step = 81 ifTrue: [
            (recoveredBlock8Stack1) toBeCompiledModuleSO: (recoveredBlock8Stack2) forARSWComponent: (recoveredBlock8Stack3).
            recoveredBlock8PC := 83.
        ].
        recoveredBlock8Step = 83 ifTrue: [
            recoveredBlock8PC := 95.
        ].
        recoveredBlock8Step = 86 ifTrue: [
            recoveredBlock8Stack1 := self.
            recoveredBlock8PC := 87.
        ].
        recoveredBlock8Step = 87 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) fileStructureStrategy.
            recoveredBlock8PC := 89.
        ].
        recoveredBlock8Step = 89 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Local1.
            recoveredBlock8PC := 90.
        ].
        recoveredBlock8Step = 90 ifTrue: [
            recoveredBlock8Stack3 := recoveredArg2.
            recoveredBlock8PC := 93.
        ].
        recoveredBlock8Step = 93 ifTrue: [
            (recoveredBlock8Stack1) toBeCompiledModuleSO: (recoveredBlock8Stack2) forASDModule: (recoveredBlock8Stack3).
            recoveredBlock8PC := 95.
        ].
        recoveredBlock8Step = 95 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) fileStructureStrategy.
            recoveredBlock8PC := 97.
        ].
        recoveredBlock8Step = 97 ifTrue: [
            recoveredBlock8Stack1 := recoveredBlock8Local1.
            recoveredBlock8PC := 98.
        ].
        recoveredBlock8Step = 98 ifTrue: [
            recoveredBlock8Stack2 := recoveredArg2.
            recoveredBlock8PC := 101.
        ].
        recoveredBlock8Step = 101 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) toBeCompiledModuleSO: (recoveredBlock8Stack1) forComponent: (recoveredBlock8Stack2).
            recoveredBlock8PC := 103.
        ].
        recoveredBlock8Step = 103 ifTrue: [
            recoveredBlock8Result := recoveredBlock8Stack0.
            recoveredBlock8Done := true.
        ].
    ].
    recoveredBlock8Result
].
    (recoveredValue0) at: (recoveredValue1) ifAbsentPut: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20473da8; bytecode file offset 0xd706a8"
!SGCompileSourceCollector methodsFor: 'recovered'!
addExternCodeHandle: recoveredArg1 hSource: recoveredArg2 cSource: recoveredArg3 makeNode: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) toBeCompiledSOsTable.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    | recoveredBlock8Local1 recoveredBlock8Stack0 recoveredBlock8Stack1 recoveredBlock8Stack2 recoveredBlock8Stack3 recoveredBlock8Stack4 recoveredBlock8Stack5 recoveredBlock8Stack6 recoveredBlock8PC recoveredBlock8Step recoveredBlock8Done recoveredBlock8Result |
    recoveredBlock8Stack0 := self.
    recoveredBlock8PC := 14.
    recoveredBlock8Done := false.
    [recoveredBlock8Done not] whileTrue: [
        recoveredBlock8Step := recoveredBlock8PC.
        recoveredBlock8Step = 14 ifTrue: [
            recoveredBlock8Stack1 := recoveredArg2.
            recoveredBlock8PC := 17.
        ].
        recoveredBlock8Step = 17 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) containsPrintables.
            recoveredBlock8PC := 18.
        ].
        recoveredBlock8Step = 18 ifTrue: [
            (recoveredBlock8Stack1) ifTrue: [recoveredBlock8PC := 22] ifFalse: [recoveredBlock8PC := 53].
        ].
        recoveredBlock8Step = 22 ifTrue: [
            recoveredBlock8Stack1 := recoveredArg4.
            recoveredBlock8PC := 25.
        ].
        recoveredBlock8Step = 25 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) isUseHeaderGlobal.
            recoveredBlock8PC := 26.
        ].
        recoveredBlock8Step = 26 ifTrue: [
            (recoveredBlock8Stack1) ifTrue: [recoveredBlock8PC := 30] ifFalse: [recoveredBlock8PC := 41].
        ].
        recoveredBlock8Step = 30 ifTrue: [
            recoveredBlock8Stack1 := self.
            recoveredBlock8PC := 31.
        ].
        recoveredBlock8Step = 31 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) fileStructureStrategy.
            recoveredBlock8PC := 32.
        ].
        recoveredBlock8Step = 32 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) globalHeaders.
            recoveredBlock8PC := 34.
        ].
        recoveredBlock8Step = 34 ifTrue: [
            recoveredBlock8Stack2 := recoveredArg4.
            recoveredBlock8PC := 37.
        ].
        recoveredBlock8Step = 37 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) externHeaderFileName.
            recoveredBlock8PC := 39.
        ].
        recoveredBlock8Step = 39 ifTrue: [
            (recoveredBlock8Stack1) add: (recoveredBlock8Stack2).
            recoveredBlock8PC := 41.
        ].
        recoveredBlock8Step = 41 ifTrue: [
            recoveredBlock8Stack1 := recoveredArg4.
            recoveredBlock8PC := 44.
        ].
        recoveredBlock8Step = 44 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) additionalPrereqHeaders.
            recoveredBlock8PC := 46.
        ].
        recoveredBlock8Step = 46 ifTrue: [
            recoveredBlock8Stack2 := recoveredArg4.
            recoveredBlock8PC := 49.
        ].
        recoveredBlock8Step = 49 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) externHeaderFileName.
            recoveredBlock8PC := 51.
        ].
        recoveredBlock8Step = 51 ifTrue: [
            (recoveredBlock8Stack1) add: (recoveredBlock8Stack2).
            recoveredBlock8PC := 53.
        ].
        recoveredBlock8Step = 53 ifTrue: [
            recoveredBlock8Stack1 := recoveredArg4.
            recoveredBlock8PC := 56.
        ].
        recoveredBlock8Step = 56 ifTrue: [
            (recoveredBlock8Stack1) checkPermissionToCompile.
            recoveredBlock8PC := 58.
        ].
        recoveredBlock8Step = 58 ifTrue: [
            recoveredBlock8Stack1 := TGCompilingSourceObject.
            recoveredBlock8PC := 60.
        ].
        recoveredBlock8Step = 60 ifTrue: [
            recoveredBlock8Stack2 := recoveredArg4.
            recoveredBlock8PC := 63.
        ].
        recoveredBlock8Step = 63 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) externFileName.
            recoveredBlock8PC := 65.
        ].
        recoveredBlock8Step = 65 ifTrue: [
            recoveredBlock8Stack3 := recoveredArg4.
            recoveredBlock8PC := 68.
        ].
        recoveredBlock8Step = 68 ifTrue: [
            recoveredBlock8Stack3 := (recoveredBlock8Stack3) externDescription.
            recoveredBlock8PC := 70.
        ].
        recoveredBlock8Step = 70 ifTrue: [
            recoveredBlock8Stack4 := recoveredArg4.
            recoveredBlock8PC := 73.
        ].
        recoveredBlock8Step = 73 ifTrue: [
            recoveredBlock8Stack4 := (recoveredBlock8Stack4) makeExternalSource.
            recoveredBlock8PC := 75.
        ].
        recoveredBlock8Step = 75 ifTrue: [
            recoveredBlock8Stack5 := self.
            recoveredBlock8PC := 76.
        ].
        recoveredBlock8Step = 76 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) fileName: (recoveredBlock8Stack2) description: (recoveredBlock8Stack3) userReference: (recoveredBlock8Stack4) sourceCollector: (recoveredBlock8Stack5).
            recoveredBlock8PC := 79.
        ].
        recoveredBlock8Step = 79 ifTrue: [
            recoveredBlock8Local1 := recoveredBlock8Stack1.
            recoveredBlock8PC := 80.
        ].
        recoveredBlock8Step = 80 ifTrue: [
            recoveredBlock8Stack1 := recoveredBlock8Local1.
            recoveredBlock8PC := 81.
        ].
        recoveredBlock8Step = 81 ifTrue: [
            recoveredBlock8Stack2 := self.
            recoveredBlock8PC := 82.
        ].
        recoveredBlock8Step = 82 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) fileStructureStrategy.
            recoveredBlock8PC := 83.
        ].
        recoveredBlock8Step = 83 ifTrue: [
            recoveredBlock8Stack3 := recoveredArg4.
            recoveredBlock8PC := 86.
        ].
        recoveredBlock8Step = 86 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) necessaryExternCppCommandsForComponent: (recoveredBlock8Stack3).
            recoveredBlock8PC := 88.
        ].
        recoveredBlock8Step = 88 ifTrue: [
            (recoveredBlock8Stack1) preprocessorCommands: (recoveredBlock8Stack2).
            recoveredBlock8PC := 90.
        ].
        recoveredBlock8Step = 90 ifTrue: [
            recoveredBlock8Stack1 := recoveredArg2.
            recoveredBlock8PC := 93.
        ].
        recoveredBlock8Step = 93 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) containsPrintables.
            recoveredBlock8PC := 94.
        ].
        recoveredBlock8Step = 94 ifTrue: [
            (recoveredBlock8Stack1) ifTrue: [recoveredBlock8PC := 98] ifFalse: [recoveredBlock8PC := 104].
        ].
        recoveredBlock8Step = 98 ifTrue: [
            recoveredBlock8Stack1 := recoveredBlock8Local1.
            recoveredBlock8PC := 99.
        ].
        recoveredBlock8Step = 99 ifTrue: [
            recoveredBlock8Stack2 := recoveredArg2.
            recoveredBlock8PC := 102.
        ].
        recoveredBlock8Step = 102 ifTrue: [
            (recoveredBlock8Stack1) hSource: (recoveredBlock8Stack2).
            recoveredBlock8PC := 104.
        ].
        recoveredBlock8Step = 104 ifTrue: [
            recoveredBlock8Stack1 := recoveredArg3.
            recoveredBlock8PC := 107.
        ].
        recoveredBlock8Step = 107 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) containsPrintables.
            recoveredBlock8PC := 108.
        ].
        recoveredBlock8Step = 108 ifTrue: [
            (recoveredBlock8Stack1) ifTrue: [recoveredBlock8PC := 112] ifFalse: [recoveredBlock8PC := 118].
        ].
        recoveredBlock8Step = 112 ifTrue: [
            recoveredBlock8Stack1 := recoveredBlock8Local1.
            recoveredBlock8PC := 113.
        ].
        recoveredBlock8Step = 113 ifTrue: [
            recoveredBlock8Stack2 := recoveredArg3.
            recoveredBlock8PC := 116.
        ].
        recoveredBlock8Step = 116 ifTrue: [
            (recoveredBlock8Stack1) cSource: (recoveredBlock8Stack2).
            recoveredBlock8PC := 118.
        ].
        recoveredBlock8Step = 118 ifTrue: [
            recoveredBlock8Stack1 := recoveredBlock8Local1.
            recoveredBlock8PC := 119.
        ].
        recoveredBlock8Step = 119 ifTrue: [
            recoveredBlock8Result := recoveredBlock8Stack1.
            recoveredBlock8Done := true.
        ].
    ].
    recoveredBlock8Result
].
    (recoveredValue0) at: (recoveredValue1) ifAbsentPut: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x205c9744; bytecode file offset 0xec607c"
!SGCompileSourceCollector methodsFor: 'recovered'!
produceToBeCompiledSOs
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) toBeCompiledSOsTable.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) values.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) new: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) new: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := [:recoveredBlock41Arg1 | 
    | recoveredBlock41Stack0 recoveredBlock41Stack1 recoveredBlock41Stack2 recoveredBlock41Stack3 recoveredBlock41PC recoveredBlock41Step recoveredBlock41Done recoveredBlock41Result |
    recoveredBlock41Stack0 := self.
    recoveredBlock41PC := 48.
    recoveredBlock41Done := false.
    [recoveredBlock41Done not] whileTrue: [
        recoveredBlock41Step := recoveredBlock41PC.
        recoveredBlock41Step = 48 ifTrue: [
            recoveredBlock41Stack1 := recoveredBlock41Arg1.
            recoveredBlock41PC := 49.
        ].
        recoveredBlock41Step = 49 ifTrue: [
            recoveredBlock41Stack1 := (recoveredBlock41Stack1) userReference.
            recoveredBlock41PC := 51.
        ].
        recoveredBlock41Step = 51 ifTrue: [
            recoveredBlock41Stack1 := (recoveredBlock41Stack1) isAdditional.
            recoveredBlock41PC := 53.
        ].
        recoveredBlock41Step = 53 ifTrue: [
            (recoveredBlock41Stack1) ifTrue: [recoveredBlock41PC := 56] ifFalse: [recoveredBlock41PC := 66].
        ].
        recoveredBlock41Step = 56 ifTrue: [
            recoveredBlock41Stack1 := recoveredLocal5.
            recoveredBlock41PC := 59.
        ].
        recoveredBlock41Step = 59 ifTrue: [
            recoveredBlock41Stack2 := recoveredBlock41Arg1.
            recoveredBlock41PC := 60.
        ].
        recoveredBlock41Step = 60 ifTrue: [
            recoveredBlock41Stack1 := (recoveredBlock41Stack1) add: (recoveredBlock41Stack2).
            recoveredBlock41PC := 62.
        ].
        recoveredBlock41Step = 62 ifTrue: [
            recoveredBlock41PC := 88.
        ].
        recoveredBlock41Step = 66 ifTrue: [
            recoveredBlock41Stack1 := recoveredBlock41Arg1.
            recoveredBlock41PC := 67.
        ].
        recoveredBlock41Step = 67 ifTrue: [
            recoveredBlock41Stack1 := (recoveredBlock41Stack1) hasCSource.
            recoveredBlock41PC := 69.
        ].
        recoveredBlock41Step = 69 ifTrue: [
            (recoveredBlock41Stack1) ifTrue: [recoveredBlock41PC := 72] ifFalse: [recoveredBlock41PC := 82].
        ].
        recoveredBlock41Step = 72 ifTrue: [
            recoveredBlock41Stack1 := recoveredLocal7.
            recoveredBlock41PC := 75.
        ].
        recoveredBlock41Step = 75 ifTrue: [
            recoveredBlock41Stack2 := recoveredBlock41Arg1.
            recoveredBlock41PC := 76.
        ].
        recoveredBlock41Step = 76 ifTrue: [
            recoveredBlock41Stack1 := (recoveredBlock41Stack1) add: (recoveredBlock41Stack2).
            recoveredBlock41PC := 78.
        ].
        recoveredBlock41Step = 78 ifTrue: [
            recoveredBlock41PC := 88.
        ].
        recoveredBlock41Step = 82 ifTrue: [
            recoveredBlock41Stack1 := recoveredLocal6.
            recoveredBlock41PC := 85.
        ].
        recoveredBlock41Step = 85 ifTrue: [
            recoveredBlock41Stack2 := recoveredBlock41Arg1.
            recoveredBlock41PC := 86.
        ].
        recoveredBlock41Step = 86 ifTrue: [
            recoveredBlock41Stack1 := (recoveredBlock41Stack1) add: (recoveredBlock41Stack2).
            recoveredBlock41PC := 88.
        ].
        recoveredBlock41Step = 88 ifTrue: [
            recoveredBlock41Result := recoveredBlock41Stack1.
            recoveredBlock41Done := true.
        ].
    ].
    recoveredBlock41Result
].
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 103].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := #().
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 112] ifFalse: [recoveredPC := 116].
        ].
        recoveredStep = 112 ifTrue: [
            recoveredPC := 311.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := [:recoveredBlock119Arg1 | 
    | recoveredBlock119Value0 recoveredBlock119Value1 recoveredBlock119Value2 |
    recoveredBlock119Value0 := recoveredBlock119Arg1.
    recoveredBlock119Value1 := (recoveredBlock119Value0) headerFileName.
    recoveredBlock119Value2 := (self) removeFileName: (recoveredBlock119Value1).
    recoveredBlock119Value2
].
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := Set.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack0 := (recoveredStack0) new: (recoveredStack1).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := [:recoveredBlock151Arg1 | 
    | recoveredBlock151Value0 recoveredBlock151Value1 recoveredBlock151Value2 recoveredBlock151Value3 |
    recoveredBlock151Value0 := recoveredBlock151Arg1.
    recoveredBlock151Value1 := (recoveredBlock151Value0) allUsedHeaders.
    recoveredBlock151Value2 := [:recoveredBlock151Block161Arg1 | 
    | recoveredBlock151Block161Value0 recoveredBlock151Block161Value1 recoveredBlock151Block161Value2 |
    recoveredBlock151Block161Value0 := recoveredLocal3.
    recoveredBlock151Block161Value1 := recoveredBlock151Block161Arg1.
    recoveredBlock151Block161Value2 := (recoveredBlock151Block161Value0) add: (recoveredBlock151Block161Value1).
    recoveredBlock151Block161Value2
].
    recoveredBlock151Value3 := (recoveredBlock151Value1) do: (recoveredBlock151Value2).
    recoveredBlock151Value3
].
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredPC := 300.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack1 := [:recoveredBlock187Arg1 | 
    | recoveredBlock187Stack0 recoveredBlock187Stack1 recoveredBlock187Stack2 recoveredBlock187Stack3 recoveredBlock187Stack4 recoveredBlock187Stack5 recoveredBlock187PC recoveredBlock187Step recoveredBlock187Done recoveredBlock187Result |
    recoveredBlock187Stack0 := self.
    recoveredBlock187PC := 194.
    recoveredBlock187Done := false.
    [recoveredBlock187Done not] whileTrue: [
        recoveredBlock187Step := recoveredBlock187PC.
        recoveredBlock187Step = 194 ifTrue: [
            recoveredBlock187Stack1 := true.
            recoveredBlock187PC := 195.
        ].
        recoveredBlock187Step = 195 ifTrue: [
            recoveredBlock187Stack2 := recoveredLocal3.
            recoveredBlock187PC := 198.
        ].
        recoveredBlock187Step = 198 ifTrue: [
            recoveredBlock187Stack3 := recoveredBlock187Arg1.
            recoveredBlock187PC := 199.
        ].
        recoveredBlock187Step = 199 ifTrue: [
            recoveredBlock187Stack3 := (recoveredBlock187Stack3) fileName.
            recoveredBlock187PC := 201.
        ].
        recoveredBlock187Step = 201 ifTrue: [
            recoveredBlock187Stack4 := '.h'.
            recoveredBlock187PC := 203.
        ].
        recoveredBlock187Step = 203 ifTrue: [
            recoveredBlock187Stack3 := (recoveredBlock187Stack3) , (recoveredBlock187Stack4).
            recoveredBlock187PC := 205.
        ].
        recoveredBlock187Step = 205 ifTrue: [
            recoveredBlock187Stack2 := (recoveredBlock187Stack2) includes: (recoveredBlock187Stack3).
            recoveredBlock187PC := 207.
        ].
        recoveredBlock187Step = 207 ifTrue: [
            (recoveredBlock187Stack2) ifTrue: [recoveredBlock187PC := 230] ifFalse: [recoveredBlock187PC := 210].
        ].
        recoveredBlock187Step = 210 ifTrue: [
            recoveredBlock187PC := 211.
        ].
        recoveredBlock187Step = 211 ifTrue: [
            recoveredBlock187Stack1 := recoveredLocal3.
            recoveredBlock187PC := 214.
        ].
        recoveredBlock187Step = 214 ifTrue: [
            recoveredBlock187Stack2 := recoveredBlock187Arg1.
            recoveredBlock187PC := 215.
        ].
        recoveredBlock187Step = 215 ifTrue: [
            recoveredBlock187Stack2 := (recoveredBlock187Stack2) hasInlineHeaderSource.
            recoveredBlock187PC := 217.
        ].
        recoveredBlock187Step = 217 ifTrue: [
            (recoveredBlock187Stack2) ifTrue: [recoveredBlock187PC := 220] ifFalse: [recoveredBlock187PC := 226].
        ].
        recoveredBlock187Step = 220 ifTrue: [
            recoveredBlock187Stack2 := recoveredBlock187Arg1.
            recoveredBlock187PC := 221.
        ].
        recoveredBlock187Step = 221 ifTrue: [
            recoveredBlock187Stack2 := (recoveredBlock187Stack2) inlineHeaderFileName.
            recoveredBlock187PC := 223.
        ].
        recoveredBlock187Step = 223 ifTrue: [
            recoveredBlock187PC := 228.
        ].
        recoveredBlock187Step = 226 ifTrue: [
            recoveredBlock187Stack2 := ''.
            recoveredBlock187PC := 228.
        ].
        recoveredBlock187Step = 228 ifTrue: [
            recoveredBlock187Stack1 := (recoveredBlock187Stack1) includes: (recoveredBlock187Stack2).
            recoveredBlock187PC := 230.
        ].
        recoveredBlock187Step = 230 ifTrue: [
            recoveredBlock187Result := recoveredBlock187Stack1.
            recoveredBlock187Done := true.
        ].
    ].
    recoveredBlock187Result
].
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack0 := Set.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack0 := (recoveredStack0) new: (recoveredStack1).
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack1 := [:recoveredBlock253Arg1 | 
    | recoveredBlock253Value0 recoveredBlock253Value1 recoveredBlock253Value2 recoveredBlock253Value3 recoveredBlock253Value4 recoveredBlock253Value5 recoveredBlock253Value6 recoveredBlock253Value7 recoveredBlock253Value8 recoveredBlock253Value9 recoveredBlock253Value10 |
    recoveredBlock253Value0 := recoveredBlock253Arg1.
    recoveredBlock253Value1 := (recoveredBlock253Value0) allUsedHeaders.
    recoveredBlock253Value2 := [:recoveredBlock253Block263Arg1 | 
    | recoveredBlock253Block263Value0 recoveredBlock253Block263Value1 recoveredBlock253Block263Value2 |
    recoveredBlock253Block263Value0 := recoveredLocal3.
    recoveredBlock253Block263Value1 := recoveredBlock253Block263Arg1.
    recoveredBlock253Block263Value2 := (recoveredBlock253Block263Value0) add: (recoveredBlock253Block263Value1).
    recoveredBlock253Block263Value2
].
    (recoveredBlock253Value1) do: (recoveredBlock253Value2).
    recoveredBlock253Value3 := recoveredLocal6.
    recoveredBlock253Value4 := recoveredBlock253Arg1.
    (recoveredBlock253Value3) remove: (recoveredBlock253Value4).
    recoveredBlock253Value5 := recoveredLocal7.
    recoveredBlock253Value6 := recoveredBlock253Arg1.
    (recoveredBlock253Value5) add: (recoveredBlock253Value6).
    recoveredBlock253Value7 := recoveredBlock253Arg1.
    recoveredBlock253Value8 := (recoveredBlock253Value7) headerFileName.
    recoveredBlock253Value9 := recoveredBlock253Arg1.
    recoveredBlock253Value10 := (self) addFileName: (recoveredBlock253Value8) sourceObject: (recoveredBlock253Value9).
    recoveredBlock253Value10
].
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 184] ifFalse: [recoveredPC := 307].
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            (recoveredStack0) addAll: (recoveredStack1).
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack1 := [:block28118be8Arg1 :block28118be8Arg2 | 
    | block28118be8Value0 block28118be8Value1 block28118be8Value2 block28118be8Value3 block28118be8Value4 |
    block28118be8Value0 := block28118be8Arg1.
    block28118be8Value1 := (block28118be8Value0) description.
    block28118be8Value2 := block28118be8Arg2.
    block28118be8Value3 := (block28118be8Value2) description.
    block28118be8Value4 := (block28118be8Value1) <= (block28118be8Value3).
    block28118be8Value4
].
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack0 := (recoveredStack0) asArray.
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

