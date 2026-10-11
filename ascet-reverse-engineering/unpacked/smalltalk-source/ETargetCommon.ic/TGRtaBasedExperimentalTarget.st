"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ETargetCommon.ic method 0x20000288; bytecode file offset 0xf320"
!TGRtaBasedExperimentalTarget methodsFor: 'recovered'!
cHeadersForTasks
    ^#('RtaUndefine.h' 'RtaTraceIntegration.h')
! !

"ETargetCommon.ic method 0x200002d0; bytecode file offset 0xf320"
!TGRtaBasedExperimentalTarget methodsFor: 'recovered'!
necessaryCHeadersForOS
    ^#('RtaUndefine.h' 'osek.h')
! !

"ETargetCommon.ic method 0x200002dc; bytecode file offset 0xf320"
!TGRtaBasedExperimentalTarget methodsFor: 'recovered'!
minCycleTimeKey
    ^'MinCycleTime'
! !

"ETargetCommon.ic method 0x200003c4; bytecode file offset 0xf434"
!TGRtaBasedExperimentalTarget methodsFor: 'recovered'!
oilGeneratorClass
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) oilGeneratorClass.
    ^recoveredValue1
! !

"ETargetCommon.ic method 0x200008d0; bytecode file offset 0xf948"
!TGRtaBasedExperimentalTarget methodsFor: 'recovered'!
supportsCooperativeRTAScheduling
    ^true
! !

"ETargetCommon.ic method 0x200008e8; bytecode file offset 0xf948"
!TGRtaBasedExperimentalTarget methodsFor: 'recovered'!
supportsRTA
    ^true
! !

"ETargetCommon.ic method 0x20000900; bytecode file offset 0xf948"
!TGRtaBasedExperimentalTarget methodsFor: 'recovered'!
supportsNoneRTAScheduling
    ^true
! !

"ETargetCommon.ic method 0x20000938; bytecode file offset 0xf948"
!TGRtaBasedExperimentalTarget methodsFor: 'recovered'!
supportsFullRTAScheduling
    ^true
! !

"ETargetCommon.ic method 0x20000964; bytecode file offset 0xf994"
!TGRtaBasedExperimentalTarget methodsFor: 'recovered'!
supportsNonPreemptiveScheduling
    ^false
! !

"ETargetCommon.ic method 0x20000974; bytecode file offset 0xf994"
!TGRtaBasedExperimentalTarget methodsFor: 'recovered'!
supportsCooperativeScheduling
    ^false
! !

"ETargetCommon.ic method 0x2000097c; bytecode file offset 0xf994"
!TGRtaBasedExperimentalTarget methodsFor: 'recovered'!
supportsPreemptiveScheduling
    ^false
! !

"ETargetCommon.ic method 0x20000984; bytecode file offset 0xf994"
!TGRtaBasedExperimentalTarget methodsFor: 'recovered'!
requiresLoader
    ^false
! !

"ETargetCommon.ic method 0x2000098c; bytecode file offset 0xf994"
!TGRtaBasedExperimentalTarget methodsFor: 'recovered'!
hasGeneratedRomCode
    ^false
! !

"ETargetCommon.ic method 0x20000994; bytecode file offset 0xf994"
!TGRtaBasedExperimentalTarget methodsFor: 'recovered'!
supportsConfigurableTickDuration
    ^false
! !

"ETargetCommon.ic method 0x20001338; bytecode file offset 0x10344"
!TGRtaBasedExperimentalTarget methodsFor: 'recovered'!
supportedOS
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) osTool.
    recoveredValue1 := [
    | recoveredBlock5Value0 |
    recoveredBlock5Value0 := super supportedOS.
    ^recoveredBlock5Value0
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := (self) osTool.
    recoveredValue3 := (recoveredValue2) identifier.
    ^recoveredValue3
! !

"ETargetCommon.ic method 0x2000155c; bytecode file offset 0x10584"
!TGRtaBasedExperimentalTarget methodsFor: 'recovered'!
generateETargetHexCode: recoveredArg1 hexManager: recoveredArg2 monitorStream: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 recoveredBlock4Value4 recoveredBlock4Value5 |
    recoveredBlock4Value0 := recoveredArg2.
    recoveredBlock4Value1 := HEX_PPC_L1_RAM.
    recoveredBlock4Value2 := recoveredArg1.
    recoveredBlock4Value3 := (recoveredBlock4Value2) loadables.
    recoveredBlock4Value4 := (recoveredBlock4Value3) first.
    (recoveredBlock4Value0) addItem: (recoveredBlock4Value1) codeArray: (recoveredBlock4Value4).
    recoveredBlock4Value5 := recoveredArg2.
    ^recoveredBlock4Value5
].
    recoveredValue1 := (self) handleFatals: (recoveredValue0).
    ^recoveredValue1
! !

"ETargetCommon.ic method 0x20001578; bytecode file offset 0x10584"
!TGRtaBasedExperimentalTarget methodsFor: 'recovered'!
generateETargetHexROMCode: recoveredArg1 hexManager: recoveredArg2 monitorStream: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 recoveredBlock4Value4 recoveredBlock4Value5 |
    recoveredBlock4Value0 := recoveredArg2.
    recoveredBlock4Value1 := HEX_PPC_L1_ROM.
    recoveredBlock4Value2 := recoveredArg1.
    recoveredBlock4Value3 := (recoveredBlock4Value2) loadables.
    recoveredBlock4Value4 := (recoveredBlock4Value3) first.
    (recoveredBlock4Value0) addItem: (recoveredBlock4Value1) codeArray: (recoveredBlock4Value4).
    recoveredBlock4Value5 := recoveredArg2.
    ^recoveredBlock4Value5
].
    recoveredValue1 := (self) handleFatals: (recoveredValue0).
    ^recoveredValue1
! !

"ETargetCommon.ic method 0x20002ff0; bytecode file offset 0x12020"
!TGRtaBasedExperimentalTarget methodsFor: 'recovered'!
convertLinkResult: recoveredArg1 monitorStream: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) linkSource.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) exeSource: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := ReadWriteStream.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) linkSource.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := 'Converting Executable'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) newlinePutAll: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredPC := 57.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := '.'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := access.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) convertBinaryStream: (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 57] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyWith: (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) atEnd.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 63] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack1) linkSource: (recoveredStack2).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ETargetCommon.ic method 0x200032e8; bytecode file offset 0x1232c"
!TGRtaBasedExperimentalTarget methodsFor: 'recovered'!
minCycleTime
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) features.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) minCycleTimeKey.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) includesKey: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 67] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := WinProfile.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) initialize.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) sectionName.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) targetIniFile.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) getSectionEntries: (recoveredStack1) from: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) minCycleTimeKey.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := [
    ''
].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) subStrings.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := [:block28000d6cArg1 | 
    | block28000d6cValue0 block28000d6cValue1 |
    block28000d6cValue0 := block28000d6cArg1.
    block28000d6cValue1 := (block28000d6cValue0) asInteger.
    block28000d6cValue1
].
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) minCycleTimeKey.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) featureAt: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) minCycleTimeKey.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := #().
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) featureAt: (recoveredStack1) default: (recoveredStack2).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ETargetCommon.ic method 0x2000383c; bytecode file offset 0x128a0"
!TGRtaBasedExperimentalTarget methodsFor: 'recovered'!
generateMakefileDynamicProcessOSExternal: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) createWriteStream.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) asExternalMakeStream.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := 'Makefile generated by ASCET'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) paragraphBanner: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := 'Variable definitions'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) bannerSectionRowLabel: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := 'C_SRC_TASKS'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := (recoveredStack3) cSources.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack4 := [:block28000d90Arg1 | 
    | block28000d90Value0 block28000d90Value1 block28000d90Value2 |
    block28000d90Value0 := block28000d90Arg1.
    block28000d90Value1 := (block28000d90Value0) userReference.
    block28000d90Value2 := (block28000d90Value1) isOSEKTaskCode.
    block28000d90Value2
].
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack5 := [:block28000db4Arg1 | 
    | block28000db4Value0 block28000db4Value1 |
    block28000db4Value0 := block28000db4Arg1.
    block28000db4Value1 := (block28000db4Value0) moduleFileName.
    block28000db4Value1
].
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := (recoveredStack3) select: (recoveredStack4) collect: (recoveredStack5).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) listNamed: (recoveredStack2) value: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := 'OBJ_SRC_TASKS'.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := (recoveredStack3) cSources.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack4 := [:block28000dd8Arg1 | 
    | block28000dd8Value0 block28000dd8Value1 block28000dd8Value2 |
    block28000dd8Value0 := block28000dd8Arg1.
    block28000dd8Value1 := (block28000dd8Value0) userReference.
    block28000dd8Value2 := (block28000dd8Value1) isOSEKTaskCode.
    block28000dd8Value2
].
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack5 := [:recoveredBlock68Arg1 | 
    | recoveredBlock68Value0 recoveredBlock68Value1 recoveredBlock68Value2 recoveredBlock68Value3 recoveredBlock68Value4 |
    recoveredBlock68Value0 := recoveredBlock68Arg1.
    recoveredBlock68Value1 := (recoveredBlock68Value0) fileName.
    recoveredBlock68Value2 := (self) compilerTool.
    recoveredBlock68Value3 := (recoveredBlock68Value2) getObjectExtension.
    recoveredBlock68Value4 := (recoveredBlock68Value1) , (recoveredBlock68Value3).
    recoveredBlock68Value4
].
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack3 := (recoveredStack3) select: (recoveredStack4) collect: (recoveredStack5).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack1) listNamed: (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := 'OIL_CONFIG'.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := (recoveredStack2) cSources.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack3 := [:block28000dfcArg1 | 
    | block28000dfcValue0 block28000dfcValue1 block28000dfcValue2 |
    block28000dfcValue0 := block28000dfcArg1.
    block28000dfcValue1 := (block28000dfcValue0) userReference.
    block28000dfcValue2 := (block28000dfcValue1) isOILCode.
    block28000dfcValue2
].
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack4 := [:block28000e20Arg1 | 
    | block28000e20Value0 block28000e20Value1 |
    block28000e20Value0 := block28000e20Arg1.
    block28000e20Value1 := (block28000e20Value0) oilFileName.
    block28000e20Value1
].
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack2 := (recoveredStack2) select: (recoveredStack3) collect: (recoveredStack4).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            (recoveredStack0) listNamed: (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := (recoveredStack0) contents.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

