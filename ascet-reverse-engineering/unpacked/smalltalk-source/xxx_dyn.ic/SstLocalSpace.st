"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20000200; bytecode file offset 0x6147c"
!SstLocalSpace methodsFor: 'recovered'!
localSpace
    ^self
! !

"xxx_dyn.ic method 0x20000218; bytecode file offset 0x6147c"
!SstLocalSpace methodsFor: 'recovered'!
cleanUpOnRestart
    ^self
! !

"xxx_dyn.ic method 0x20000be0; bytecode file offset 0x61ca4"
!SstLocalSpace methodsFor: 'recovered'!
referenceTo: recoveredArg1 using: recoveredArg2
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x200012c4; bytecode file offset 0x626a4"
!SstLocalSpace methodsFor: 'recovered'!
sstImportInstrumentPackSource
    ^'SST Instrument Pack Import Activity
Generated at: (1/1/11 11:11:11 PM)
Instrument: 3 SstTapInstrument ''State Tap''
Instrument: 1 SstMonitorPoint nil #''SstTag:Import'' nil ( SstLocalSpace ) #import:as: nil ''space''
Instrument: 2 SstValueProbe ''import'' nil ''1''
Instrument: 4 SstMonitorPoint nil #''SstTag:Import'' nil ( SstLocalSpace ) #import:as:for: nil ''space''
Instrument: 5 SstValueProbe ''import'' nil ''1''
Connection: 1	2 #event:from:
Connection: 2	3 #event:from:
Connection: 4	5 #event:from:
Connection: 5	3 #event:from:
Instrument: 6 SstMonitorPoint nil #''SstTag:Unimport'' nil ( SstLocalSpace ) #unimportHandle: nil ''space''
Instrument: 7 SstValueProbe ''unimport'' nil ''1''
Connection: 6	7 #event:from:
Connection: 7	3 #event:from:
SST Instrument Pack complete
'
! !

"xxx_dyn.ic method 0x200012dc; bytecode file offset 0x626a4"
!SstLocalSpace methodsFor: 'recovered'!
sstExportInstrumentPackSource
    ^'SST Instrument Pack Export Activity
Generated at: (1/1/11 11:11:11 PM)
Instrument: 3 SstTapInstrument ''State Tap''
Instrument: 1 SstMonitorPoint nil #''SstTag:Export'' nil ( SstLocalSpace ) #export:as: nil ''space''
Instrument: 2 SstValueProbe ''export'' nil ''1''
Instrument: 4 SstMonitorPoint nil #''SstTag:Export'' nil ( SstLocalSpace ) #export: nil ''space''
Instrument: 5 SstValueProbe ''export'' nil ''1''
Connection: 1	2 #event:from:
Connection: 2	3 #event:from:
Connection: 4	5 #event:from:
Connection: 5	3 #event:from:
Instrument: 6 SstMonitorPoint nil #''SstTag:Unexport'' nil ( SstLocalSpace ) #unexportId: nil ''space''
Instrument: 7 SstValueProbe ''unexport'' nil ''1''
Instrument: 8 SstMonitorPoint nil #''SstTag:Unexport'' nil ( SstLocalSpace ) #unexportObject: nil ''space''
Instrument: 9 SstValueProbe ''unexport'' nil ''1''
Connection: 6	7 #event:from:
Connection: 7	3 #event:from:
Connection: 8	9 #event:from:
Connection: 9	3 #event:from:
SST Instrument Pack complete
'
! !

"xxx_dyn.ic method 0x20001c20; bytecode file offset 0x62ce8"
!SstLocalSpace methodsFor: 'recovered'!
isTransientKey: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) sstIsTransientKey.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20003f40; bytecode file offset 0x650c4"
!SstLocalSpace methodsFor: 'recovered'!
configuration
    | recoveredValue0 |
    recoveredValue0 := configuration.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x200046b0; bytecode file offset 0x6592c"
!SstLocalSpace methodsFor: 'recovered'!
isLocalSpace
    ^true
! !

"xxx_dyn.ic method 0x20004a24; bytecode file offset 0x65b30"
!SstLocalSpace methodsFor: 'recovered'!
supportsLocalReset
    ^false
! !

"xxx_dyn.ic method 0x200085ac; bytecode file offset 0x69688"
!SstLocalSpace methodsFor: 'recovered'!
sstMonitor: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    monitor := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20008ffc; bytecode file offset 0x6a11c"
!SstLocalSpace methodsFor: 'recovered'!
startUp
    super startUp.
    (self) reset.
    ^self
! !

"xxx_dyn.ic method 0x20009390; bytecode file offset 0x6a458"
!SstLocalSpace methodsFor: 'recovered'!
configuration: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    configuration := recoveredValue0.
    recoveredValue1 := configuration.
    (recoveredValue1) owner: (self).
    ^self
! !

"xxx_dyn.ic method 0x20009710; bytecode file offset 0x6a7e4"
!SstLocalSpace methodsFor: 'recovered'!
sstInstrumentContextBindings
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) at: ('space') put: (self).
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x2000a894; bytecode file offset 0x6b95c"
!SstLocalSpace methodsFor: 'recovered'!
returnAddress
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := returnAddress.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) constructReturnAddress.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := returnAddress.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x2000ac20; bytecode file offset 0x6bcf0"
!SstLocalSpace methodsFor: 'recovered'!
shutDown
    super shutDown.
    (self) reset.
    returnAddress := nil.
    ^self
! !

"xxx_dyn.ic method 0x2000b6a4; bytecode file offset 0x6c770"
!SstLocalSpace methodsFor: 'recovered'!
imports
    | recoveredValue0 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 |
    recoveredBlock4Value0 := importSet.
    recoveredBlock4Value1 := (recoveredBlock4Value0) values.
    ^recoveredBlock4Value1
].
    (recoveredValue0) critical.
    ^self
! !

"xxx_dyn.ic method 0x2000c1dc; bytecode file offset 0x6d2b4"
!SstLocalSpace methodsFor: 'recovered'!
removeHandler: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := configuration.
    recoveredValue1 := (recoveredValue0) callbacks.
    recoveredValue2 := SstRemoveHandlerCallback.
    recoveredValue3 := recoveredArg1.
    (recoveredValue1) callCallbacks: (recoveredValue2) callData: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := super removeHandler: (recoveredValue4).
    ^recoveredValue5
! !

"xxx_dyn.ic method 0x2000c484; bytecode file offset 0x6d55c"
!SstLocalSpace methodsFor: 'recovered'!
finalizeImportKey: recoveredArg1 value: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := configuration.
    recoveredValue1 := (recoveredValue0) callbacks.
    recoveredValue2 := SstFinalizeImportCallback.
    recoveredValue3 := Array.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := (recoveredValue3) with: (recoveredValue4) with: (recoveredValue5).
    (recoveredValue1) callCallbacks: (recoveredValue2) callData: (recoveredValue6).
    ^self
! !

"xxx_dyn.ic method 0x2000ca5c; bytecode file offset 0x6db34"
!SstLocalSpace methodsFor: 'recovered'!
reset
    super reset.
    (self) invalidateHandles.
    (self) resetExportSet.
    (self) resetImportSet.
    ^self
! !

"xxx_dyn.ic method 0x2000cbe4; bytecode file offset 0x6dcbc"
!SstLocalSpace methodsFor: 'recovered'!
addHandler: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    super addHandler: (recoveredValue0).
    recoveredValue1 := configuration.
    recoveredValue2 := (recoveredValue1) callbacks.
    recoveredValue3 := SstAddHandlerCallback.
    recoveredValue4 := recoveredArg1.
    (recoveredValue2) callCallbacks: (recoveredValue3) callData: (recoveredValue4).
    ^self
! !

"xxx_dyn.ic method 0x2000d1a0; bytecode file offset 0x6e2cc"
!SstLocalSpace methodsFor: 'recovered'!
sstAdminPackMethods
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := super sstAdminPackMethods.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) sstImportAdminPacks.
    (recoveredValue1) add: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := (self) sstExportAdminPacks.
    (recoveredValue3) add: (recoveredValue4).
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x2000d1f4; bytecode file offset 0x6e2cc"
!SstLocalSpace methodsFor: 'recovered'!
sstInstrumentPackMethods
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := super sstInstrumentPackMethods.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) sstImportInstrumentPackSource.
    (recoveredValue1) add: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := (self) sstExportInstrumentPackSource.
    (recoveredValue3) add: (recoveredValue4).
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x2000e8d8; bytecode file offset 0x6f9a8"
!SstLocalSpace methodsFor: 'recovered'!
clear
    super clear.
    (self) invalidateHandles.
    returnAddress := nil.
    importSet := nil.
    exportSet := nil.
    ^self
! !

"xxx_dyn.ic method 0x2000eb10; bytecode file offset 0x6fbe0"
!SstLocalSpace methodsFor: 'recovered'!
exportIdFor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 |
    recoveredBlock4Value0 := exportSet.
    recoveredBlock4Value1 := recoveredArg1.
    recoveredBlock4Value2 := [].
    recoveredBlock4Value3 := (recoveredBlock4Value0) atObject: (recoveredBlock4Value1) ifAbsent: (recoveredBlock4Value2).
    recoveredBlock4Value3
].
    recoveredValue1 := (recoveredValue0) critical.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x2000f654; bytecode file offset 0x70720"
!SstLocalSpace methodsFor: 'recovered'!
objectExportedAs: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 |
    recoveredBlock4Value0 := exportSet.
    recoveredBlock4Value1 := recoveredArg1.
    recoveredBlock4Value2 := recoveredArg2.
    recoveredBlock4Value3 := (recoveredBlock4Value0) at: (recoveredBlock4Value1) ifAbsent: (recoveredBlock4Value2).
    recoveredBlock4Value3
].
    recoveredValue1 := (recoveredValue0) critical.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20011c08; bytecode file offset 0x72cdc"
!SstLocalSpace methodsFor: 'recovered'!
objectImportedAs: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 |
    recoveredBlock7Value0 := SstError.
    recoveredBlock7Value1 := SstObjectNotFoundError.
    recoveredBlock7Value2 := recoveredArg1.
    recoveredBlock7Value3 := (recoveredBlock7Value0) for: (recoveredBlock7Value1) with: (recoveredBlock7Value2).
    ^recoveredBlock7Value3
].
    recoveredValue2 := (self) objectImportedAs: (recoveredValue0) ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x20013968; bytecode file offset 0x74a44"
!SstLocalSpace methodsFor: 'recovered'!
startUpOnRestart
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) configuration.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) restartMode.
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
            recoveredStack1 := SstClearMode.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) clear.
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
            recoveredStack1 := SstRestartMode.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) startUp.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x20015d68; bytecode file offset 0x76e48"
!SstLocalSpace methodsFor: 'recovered'!
resetExportSet
    | recoveredValue0 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 recoveredBlock4Value4 recoveredBlock4Value5 recoveredBlock4Value6 recoveredBlock4Value7 recoveredBlock4Value8 recoveredBlock4Value9 |
    recoveredBlock4Value0 := SstDualRegistry.
    recoveredBlock4Value1 := IdentityDictionary.
    recoveredBlock4Value2 := IdentityDictionary.
    recoveredBlock4Value3 := configuration.
    recoveredBlock4Value4 := (recoveredBlock4Value3) exportSize.
    recoveredBlock4Value5 := (recoveredBlock4Value0) keysClass: (recoveredBlock4Value1) objectsClass: (recoveredBlock4Value2) size: (recoveredBlock4Value4).
    exportSet := recoveredBlock4Value5.
    recoveredBlock4Value6 := exportSet.
    recoveredBlock4Value7 := configuration.
    recoveredBlock4Value8 := (recoveredBlock4Value7) firstExportId.
    recoveredBlock4Value9 := (recoveredBlock4Value6) initialKey: (recoveredBlock4Value8).
    recoveredBlock4Value9
].
    (recoveredValue0) critical.
    ^self
! !

"xxx_dyn.ic method 0x20015dfc; bytecode file offset 0x76eec"
!SstLocalSpace methodsFor: 'recovered'!
constructReturnAddress
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) handlers.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := Set.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := [:block2800af5cArg1 :block2800af5cArg2 | 
    | block2800af5cValue0 block2800af5cValue1 block2800af5cValue2 block2800af5cValue3 block2800af5cValue4 block2800af5cValue5 block2800af5cValue6 |
    block2800af5cValue0 := block2800af5cArg1.
    block2800af5cValue1 := block2800af5cValue0.
    block2800af5cValue2 := block2800af5cArg2.
    block2800af5cValue3 := (block2800af5cValue2) endpoint.
    block2800af5cValue4 := (block2800af5cValue3) transport.
    block2800af5cValue5 := (block2800af5cValue4) returnAddress.
    block2800af5cValue6 := (block2800af5cValue5) printString.
    (block2800af5cValue1) add: (block2800af5cValue6).
    block2800af5cValue0
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) inject: (recoveredStack1) into: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) asArray.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            returnAddress := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x20016468; bytecode file offset 0x77548"
!SstLocalSpace methodsFor: 'recovered'!
initialize
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            super initialize.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := configuration.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := SstSpaceConfiguration.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) for: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            configuration := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 29.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := configuration.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) owner: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) resetExportSet.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) resetImportSet.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x2001650c; bytecode file offset 0x77620"
!SstLocalSpace methodsFor: 'recovered'!
sstImportAdminPacks
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := Smalltalk.
    recoveredValue1 := [
    ^nil
].
    recoveredValue2 := (recoveredValue0) classAt: ('SstAdminPack') ifAbsent: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) named: ('Import Activity').
    recoveredValue4 := recoveredValue3.
    (recoveredValue4) addInstrument: ('SstTag:Import') in: ('space').
    recoveredValue5 := recoveredValue3.
    (recoveredValue5) addInstrument: ('SstTag:Unimport') in: ('space').
    ^recoveredValue3
! !

"xxx_dyn.ic method 0x20016538; bytecode file offset 0x77620"
!SstLocalSpace methodsFor: 'recovered'!
sstExportAdminPacks
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := Smalltalk.
    recoveredValue1 := [
    ^nil
].
    recoveredValue2 := (recoveredValue0) classAt: ('SstAdminPack') ifAbsent: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) named: ('Export Activity').
    recoveredValue4 := recoveredValue3.
    (recoveredValue4) addInstrument: ('SstTag:Export') in: ('space').
    recoveredValue5 := recoveredValue3.
    (recoveredValue5) addInstrument: ('SstTag:Unexport') in: ('space').
    ^recoveredValue3
! !

"xxx_dyn.ic method 0x20016e08; bytecode file offset 0x77ee0"
!SstLocalSpace methodsFor: 'recovered'!
objectExportedAs: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 |
    recoveredBlock4Value0 := exportSet.
    recoveredBlock4Value1 := recoveredArg1.
    recoveredBlock4Value2 := [
    | recoveredBlock4Block15Value0 recoveredBlock4Block15Value1 recoveredBlock4Block15Value2 recoveredBlock4Block15Value3 |
    recoveredBlock4Block15Value0 := SstError.
    recoveredBlock4Block15Value1 := SstObjectNotFoundError.
    recoveredBlock4Block15Value2 := recoveredArg1.
    recoveredBlock4Block15Value3 := (recoveredBlock4Block15Value0) for: (recoveredBlock4Block15Value1) with: (recoveredBlock4Block15Value2).
    ^recoveredBlock4Block15Value3
].
    recoveredBlock4Value3 := (recoveredBlock4Value0) at: (recoveredBlock4Value1) ifAbsent: (recoveredBlock4Value2).
    recoveredBlock4Value3
].
    recoveredValue1 := (recoveredValue0) critical.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x2001715c; bytecode file offset 0x78238"
!SstLocalSpace methodsFor: 'recovered'!
resolve: recoveredArg1 ifAbsent: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) space.
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
            recoveredStack1 := (recoveredStack1) sstIsSpace.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) id.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := id.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 33] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) object.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) objectExportedAs: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) objectImportedAs: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x200184d8; bytecode file offset 0x795ac"
!SstLocalSpace methodsFor: 'recovered'!
objectImportedAs: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    | recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4Stack4 recoveredBlock4Stack5 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack1 := nil.
            recoveredBlock4PC := 11.
        ].
        recoveredBlock4Step = 11 ifTrue: [
            recoveredBlock4Stack2 := importSet.
            recoveredBlock4PC := 13.
        ].
        recoveredBlock4Step = 13 ifTrue: [
            recoveredBlock4Stack3 := recoveredArg1.
            recoveredBlock4PC := 16.
        ].
        recoveredBlock4Step = 16 ifTrue: [
            recoveredBlock4Stack4 := [].
            recoveredBlock4PC := 18.
        ].
        recoveredBlock4Step = 18 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) at: (recoveredBlock4Stack3) ifAbsent: (recoveredBlock4Stack4).
            recoveredBlock4PC := 20.
        ].
        recoveredBlock4Step = 20 ifTrue: [
            recoveredBlock4Stack3 := recoveredBlock4Stack2.
            recoveredBlock4PC := 21.
        ].
        recoveredBlock4Step = 21 ifTrue: [
            recoveredLocal1 := recoveredBlock4Stack3.
            recoveredBlock4PC := 24.
        ].
        recoveredBlock4Step = 24 ifTrue: [
            (recoveredBlock4Stack2 ~~ nil) ifTrue: [recoveredBlock4PC := 34] ifFalse: [recoveredBlock4PC := 28].
        ].
        recoveredBlock4Step = 28 ifTrue: [
            recoveredBlock4PC := 29.
        ].
        recoveredBlock4Step = 29 ifTrue: [
            recoveredBlock4Stack1 := recoveredArg2.
            recoveredBlock4PC := 32.
        ].
        recoveredBlock4Step = 32 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) value.
            recoveredBlock4PC := 33.
        ].
        recoveredBlock4Step = 33 ifTrue: [
            ^recoveredBlock4Stack1
        ].
        recoveredBlock4Step = 34 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack1.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
    (recoveredValue0) critical.
    recoveredValue1 := recoveredLocal1.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x2001ae64; bytecode file offset 0x7bf4c"
!SstLocalSpace methodsFor: 'recovered'!
resetImportSet
    | recoveredValue0 |
    recoveredValue0 := [
    | recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4Stack4 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack1 := configuration.
            recoveredBlock4PC := 12.
        ].
        recoveredBlock4Step = 12 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) supportFinalization.
            recoveredBlock4PC := 13.
        ].
        recoveredBlock4Step = 13 ifTrue: [
            (recoveredBlock4Stack1) ifTrue: [recoveredBlock4PC := 16] ifFalse: [recoveredBlock4PC := 34].
        ].
        recoveredBlock4Step = 16 ifTrue: [
            recoveredBlock4Stack1 := EsWeakDictionary.
            recoveredBlock4PC := 18.
        ].
        recoveredBlock4Step = 18 ifTrue: [
            recoveredBlock4Stack2 := configuration.
            recoveredBlock4PC := 20.
        ].
        recoveredBlock4Step = 20 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) importSize.
            recoveredBlock4PC := 21.
        ].
        recoveredBlock4Step = 21 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) new: (recoveredBlock4Stack2).
            recoveredBlock4PC := 22.
        ].
        recoveredBlock4Step = 22 ifTrue: [
            recoveredBlock4Stack2 := recoveredBlock4Stack1.
            recoveredBlock4PC := 23.
        ].
        recoveredBlock4Step = 23 ifTrue: [
            recoveredBlock4Stack3 := self.
            recoveredBlock4PC := 24.
        ].
        recoveredBlock4Step = 24 ifTrue: [
            (recoveredBlock4Stack2) owner: (recoveredBlock4Stack3).
            recoveredBlock4Stack2 := recoveredBlock4Stack1.
            recoveredBlock4PC := 27.
        ].
        recoveredBlock4Step = 27 ifTrue: [
            recoveredBlock4Stack3 := 'finalizeImportKey:value:'.
            recoveredBlock4PC := 29.
        ].
        recoveredBlock4Step = 29 ifTrue: [
            (recoveredBlock4Stack2) finalizeSelector: (recoveredBlock4Stack3).
            recoveredBlock4PC := 31.
        ].
        recoveredBlock4Step = 31 ifTrue: [
            recoveredBlock4PC := 40.
        ].
        recoveredBlock4Step = 34 ifTrue: [
            recoveredBlock4Stack1 := LookupTable.
            recoveredBlock4PC := 36.
        ].
        recoveredBlock4Step = 36 ifTrue: [
            recoveredBlock4Stack2 := configuration.
            recoveredBlock4PC := 38.
        ].
        recoveredBlock4Step = 38 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) importSize.
            recoveredBlock4PC := 39.
        ].
        recoveredBlock4Step = 39 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) new: (recoveredBlock4Stack2).
            recoveredBlock4PC := 40.
        ].
        recoveredBlock4Step = 40 ifTrue: [
            recoveredBlock4Stack2 := recoveredBlock4Stack1.
            recoveredBlock4PC := 41.
        ].
        recoveredBlock4Step = 41 ifTrue: [
            importSet := recoveredBlock4Stack2.
            recoveredBlock4PC := 43.
        ].
        recoveredBlock4Step = 43 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack1.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
    (recoveredValue0) critical.
    ^self
! !

"xxx_dyn.ic method 0x2001b2a0; bytecode file offset 0x7c384"
!SstLocalSpace methodsFor: 'recovered'!
invalidateHandles
    | recoveredValue0 |
    recoveredValue0 := [
    | recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack1 := importSet.
            recoveredBlock4PC := 12.
        ].
        recoveredBlock4Step = 12 ifTrue: [
            (recoveredBlock4Stack1 ~~ nil) ifTrue: [recoveredBlock4PC := 19] ifFalse: [recoveredBlock4PC := 16].
        ].
        recoveredBlock4Step = 16 ifTrue: [
            recoveredBlock4Stack1 := self.
            recoveredBlock4PC := 17.
        ].
        recoveredBlock4Step = 17 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) resetImportSet.
            recoveredBlock4PC := 18.
        ].
        recoveredBlock4Step = 18 ifTrue: [
            ^recoveredBlock4Stack1
        ].
        recoveredBlock4Step = 19 ifTrue: [
            recoveredBlock4Stack1 := importSet.
            recoveredBlock4PC := 21.
        ].
        recoveredBlock4Step = 21 ifTrue: [
            recoveredBlock4Stack2 := [:block2800b73cArg1 :block2800b73cArg2 | 
    | block2800b73cStack0 block2800b73cStack1 block2800b73cStack2 block2800b73cStack3 block2800b73cPC block2800b73cStep block2800b73cDone block2800b73cResult |
    block2800b73cStack0 := self.
    block2800b73cPC := 4.
    block2800b73cDone := false.
    [block2800b73cDone not] whileTrue: [
        block2800b73cStep := block2800b73cPC.
        block2800b73cStep = 4 ifTrue: [
            block2800b73cStack1 := nil.
            block2800b73cPC := 5.
        ].
        block2800b73cStep = 5 ifTrue: [
            block2800b73cStack2 := block2800b73cArg2.
            block2800b73cPC := 6.
        ].
        block2800b73cStep = 6 ifTrue: [
            block2800b73cStack2 := (block2800b73cStack2) sstIsRemote.
            block2800b73cPC := 7.
        ].
        block2800b73cStep = 7 ifTrue: [
            (block2800b73cStack2) ifTrue: [block2800b73cPC := 10] ifFalse: [block2800b73cPC := 18].
        ].
        block2800b73cStep = 10 ifTrue: [
            block2800b73cPC := 11.
        ].
        block2800b73cStep = 11 ifTrue: [
            block2800b73cStack1 := block2800b73cArg2.
            block2800b73cPC := 12.
        ].
        block2800b73cStep = 12 ifTrue: [
            block2800b73cStack2 := block2800b73cArg2.
            block2800b73cPC := 13.
        ].
        block2800b73cStep = 13 ifTrue: [
            block2800b73cStack2 := (block2800b73cStack2) sstTarget.
            block2800b73cPC := 14.
        ].
        block2800b73cStep = 14 ifTrue: [
            block2800b73cStack2 := (block2800b73cStack2) asInvalidHandle.
            block2800b73cPC := 16.
        ].
        block2800b73cStep = 16 ifTrue: [
            block2800b73cStack1 := (block2800b73cStack1) sstTarget: (block2800b73cStack2).
            block2800b73cPC := 18.
        ].
        block2800b73cStep = 18 ifTrue: [
            block2800b73cResult := block2800b73cStack1.
            block2800b73cDone := true.
        ].
    ].
    block2800b73cResult
].
            recoveredBlock4PC := 23.
        ].
        recoveredBlock4Step = 23 ifTrue: [
            recoveredBlock4PC := 41.
        ].
        recoveredBlock4Step = 41 ifTrue: [
            (recoveredBlock4Stack1) keysAndValuesDo: (recoveredBlock4Stack2).
            recoveredBlock4PC := 43.
        ].
        recoveredBlock4Step = 43 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) resetImportSet.
            recoveredBlock4PC := 44.
        ].
        recoveredBlock4Step = 44 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack0.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
    (recoveredValue0) critical.
    ^self
! !

"xxx_dyn.ic method 0x2001bdb8; bytecode file offset 0x7ce94"
!SstLocalSpace methodsFor: 'recovered'!
objectsIn: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := [
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 |
    recoveredBlock10Value0 := importSet.
    recoveredBlock10Value1 := [:recoveredBlock10Block18Arg1 | 
    | recoveredBlock10Block18Stack0 recoveredBlock10Block18Stack1 recoveredBlock10Block18Stack2 recoveredBlock10Block18Stack3 recoveredBlock10Block18Stack4 recoveredBlock10Block18PC recoveredBlock10Block18Step recoveredBlock10Block18Done recoveredBlock10Block18Result |
    recoveredBlock10Block18Stack0 := nil.
    recoveredBlock10Block18PC := 24.
    recoveredBlock10Block18Done := false.
    [recoveredBlock10Block18Done not] whileTrue: [
        recoveredBlock10Block18Step := recoveredBlock10Block18PC.
        recoveredBlock10Block18Step = 24 ifTrue: [
            recoveredBlock10Block18Stack1 := nil.
            recoveredBlock10Block18PC := 25.
        ].
        recoveredBlock10Block18Step = 25 ifTrue: [
            recoveredBlock10Block18Stack2 := recoveredBlock10Block18Arg1.
            recoveredBlock10Block18PC := 26.
        ].
        recoveredBlock10Block18Step = 26 ifTrue: [
            recoveredBlock10Block18Stack2 := (recoveredBlock10Block18Stack2) sstSpace.
            recoveredBlock10Block18PC := 27.
        ].
        recoveredBlock10Block18Step = 27 ifTrue: [
            recoveredBlock10Block18Stack3 := recoveredArg1.
            recoveredBlock10Block18PC := 30.
        ].
        recoveredBlock10Block18Step = 30 ifTrue: [
            (recoveredBlock10Block18Stack2 ~~ recoveredBlock10Block18Stack3) ifTrue: [recoveredBlock10Block18PC := 40] ifFalse: [recoveredBlock10Block18PC := 34].
        ].
        recoveredBlock10Block18Step = 34 ifTrue: [
            recoveredBlock10Block18PC := 35.
        ].
        recoveredBlock10Block18Step = 35 ifTrue: [
            recoveredBlock10Block18Stack1 := recoveredLocal1.
            recoveredBlock10Block18PC := 38.
        ].
        recoveredBlock10Block18Step = 38 ifTrue: [
            recoveredBlock10Block18Stack2 := recoveredBlock10Block18Arg1.
            recoveredBlock10Block18PC := 39.
        ].
        recoveredBlock10Block18Step = 39 ifTrue: [
            recoveredBlock10Block18Stack1 := (recoveredBlock10Block18Stack1) add: (recoveredBlock10Block18Stack2).
            recoveredBlock10Block18PC := 40.
        ].
        recoveredBlock10Block18Step = 40 ifTrue: [
            recoveredBlock10Block18Result := recoveredBlock10Block18Stack1.
            recoveredBlock10Block18Done := true.
        ].
    ].
    recoveredBlock10Block18Result
].
    recoveredBlock10Value2 := (recoveredBlock10Value0) do: (recoveredBlock10Value1).
    recoveredBlock10Value2
].
    (recoveredValue2) critical.
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"xxx_dyn.ic method 0x2001c280; bytecode file offset 0x7d358"
!SstLocalSpace methodsFor: 'recovered'!
unimportObject: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) sstIsRemote.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 19].
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
            recoveredStack2 := (recoveredStack2) sstTarget.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) unimportHandle: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock19Local1 recoveredBlock19Value0 recoveredBlock19Value1 recoveredBlock19Value2 recoveredBlock19Value3 recoveredBlock19Value4 recoveredBlock19Value5 |
    recoveredBlock19Value0 := importSet.
    recoveredBlock19Value1 := recoveredArg1.
    recoveredBlock19Value2 := [
    | recoveredBlock19Block31Value0 |
    recoveredBlock19Block31Value0 := recoveredArg1.
    ^recoveredBlock19Block31Value0
].
    recoveredBlock19Value3 := (recoveredBlock19Value0) keyAtValue: (recoveredBlock19Value1) ifAbsent: (recoveredBlock19Value2).
    recoveredBlock19Local1 := recoveredBlock19Value3.
    recoveredBlock19Value4 := recoveredBlock19Local1.
    recoveredBlock19Value5 := (self) unimportHandle: (recoveredBlock19Value4).
    recoveredBlock19Value5
].
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) critical.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x2001dc08; bytecode file offset 0x7ecec"
!SstLocalSpace methodsFor: 'recovered'!
exportReferenceFor: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) sstIsRemote.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
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
            recoveredStack2 := configuration.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) exportSelector.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) perform: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) sstIsRemote.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) sstIsImportKey.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := configuration.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) remoteReferenceClass.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) for: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := configuration.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) remoteReferenceClass.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := configuration.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := (recoveredStack2) handleClass.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := (recoveredStack2) for: (recoveredStack3) in: (recoveredStack4).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) for: (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x2001f20c; bytecode file offset 0x802f4"
!SstLocalSpace methodsFor: 'recovered'!
export: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 |
    recoveredBlock4Value0 := exportSet.
    recoveredBlock4Value1 := recoveredArg1.
    recoveredBlock4Value2 := (recoveredBlock4Value0) add: (recoveredBlock4Value1).
    recoveredBlock4Value2
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) critical.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := 'SstTag:Export'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := monitor.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := monitor.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := 'SstTag:Export'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) event: (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := configuration.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) callbacks.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := SstExportCallback.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := Array.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack1) callCallbacks: (recoveredStack2) callData: (recoveredStack3).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x2001f78c; bytecode file offset 0x80874"
!SstLocalSpace methodsFor: 'recovered'!
import: recoveredArg1 as: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 |
    recoveredBlock4Value0 := importSet.
    recoveredBlock4Value1 := recoveredArg1.
    recoveredBlock4Value2 := recoveredArg2.
    recoveredBlock4Value3 := (recoveredBlock4Value0) at: (recoveredBlock4Value1) put: (recoveredBlock4Value2).
    recoveredBlock4Value3
].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) critical.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := 'SstTag:Import'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := monitor.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := monitor.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := 'SstTag:Import'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) event: (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := configuration.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) callbacks.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := SstImportCallback.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := Array.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack5 := recoveredArg2.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack6 := nil.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5) with: (recoveredStack6).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack1) callCallbacks: (recoveredStack2) callData: (recoveredStack3).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x2002063c; bytecode file offset 0x81724"
!SstLocalSpace methodsFor: 'recovered'!
export: recoveredArg1 as: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 |
    recoveredBlock4Value0 := exportSet.
    recoveredBlock4Value1 := recoveredArg2.
    recoveredBlock4Value2 := recoveredArg1.
    recoveredBlock4Value3 := (recoveredBlock4Value0) at: (recoveredBlock4Value1) put: (recoveredBlock4Value2).
    recoveredBlock4Value3
].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) critical.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := 'SstTag:Export'.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := monitor.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := monitor.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := 'SstTag:Export'.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1) event: (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := configuration.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) callbacks.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := SstExportCallback.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := Array.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack1) callCallbacks: (recoveredStack2) callData: (recoveredStack3).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x20020730; bytecode file offset 0x8181c"
!SstLocalSpace methodsFor: 'recovered'!
import: recoveredArg1 as: recoveredArg2 for: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 |
    recoveredBlock4Value0 := importSet.
    recoveredBlock4Value1 := recoveredArg1.
    recoveredBlock4Value2 := recoveredArg2.
    recoveredBlock4Value3 := (recoveredBlock4Value0) at: (recoveredBlock4Value1) put: (recoveredBlock4Value2).
    recoveredBlock4Value3
].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) critical.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := 'SstTag:Import'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := monitor.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := monitor.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := 'SstTag:Import'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) event: (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := configuration.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) callbacks.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := SstImportCallback.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := Array.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack5 := recoveredArg2.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack6 := recoveredArg3.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack6 := (recoveredStack6) root.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5) with: (recoveredStack6).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack1) callCallbacks: (recoveredStack2) callData: (recoveredStack3).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x20021ba4; bytecode file offset 0x82c8c"
!SstLocalSpace methodsFor: 'recovered'!
unexportId: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 |
    recoveredBlock4Value0 := exportSet.
    recoveredBlock4Value1 := recoveredArg1.
    recoveredBlock4Value2 := [
    ^nil
].
    recoveredBlock4Value3 := (recoveredBlock4Value0) removeKey: (recoveredBlock4Value1) ifAbsent: (recoveredBlock4Value2).
    recoveredBlock4Value3
].
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) critical.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := 'SstTag:Unexport'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := monitor.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := monitor.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := 'SstTag:Unexport'.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) event: (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := configuration.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) callbacks.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := SstUnexportCallback.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := Array.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack5 := recoveredLocal2.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack1) callCallbacks: (recoveredStack2) callData: (recoveredStack3).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x20021c18; bytecode file offset 0x82d00"
!SstLocalSpace methodsFor: 'recovered'!
unimportHandle: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 |
    recoveredBlock4Value0 := importSet.
    recoveredBlock4Value1 := recoveredArg1.
    recoveredBlock4Value2 := [
    ^nil
].
    recoveredBlock4Value3 := (recoveredBlock4Value0) removeKey: (recoveredBlock4Value1) ifAbsent: (recoveredBlock4Value2).
    recoveredBlock4Value3
].
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) critical.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := 'SstTag:Unimport'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := monitor.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := monitor.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := 'SstTag:Unimport'.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) event: (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := configuration.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) callbacks.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := SstUnimportCallback.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := Array.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack5 := recoveredLocal2.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack1) callCallbacks: (recoveredStack2) callData: (recoveredStack3).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x20023918; bytecode file offset 0x84a00"
!SstLocalSpace methodsFor: 'recovered'!
unexportObject: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4Stack4 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack1 := exportSet.
            recoveredBlock4PC := 12.
        ].
        recoveredBlock4Step = 12 ifTrue: [
            (recoveredBlock4Stack1 ~~ nil) ifTrue: [recoveredBlock4PC := 18] ifFalse: [recoveredBlock4PC := 16].
        ].
        recoveredBlock4Step = 16 ifTrue: [
            recoveredBlock4Stack1 := nil.
            recoveredBlock4PC := 17.
        ].
        recoveredBlock4Step = 17 ifTrue: [
            ^recoveredBlock4Stack1
        ].
        recoveredBlock4Step = 18 ifTrue: [
            recoveredBlock4Stack1 := exportSet.
            recoveredBlock4PC := 20.
        ].
        recoveredBlock4Step = 20 ifTrue: [
            recoveredBlock4Stack2 := recoveredArg1.
            recoveredBlock4PC := 23.
        ].
        recoveredBlock4Step = 23 ifTrue: [
            recoveredBlock4Stack3 := [
    ^nil
].
            recoveredBlock4PC := 32.
        ].
        recoveredBlock4Step = 32 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) remove: (recoveredBlock4Stack2) ifAbsent: (recoveredBlock4Stack3).
            recoveredBlock4PC := 34.
        ].
        recoveredBlock4Step = 34 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack1.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) critical.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := 'SstTag:Unexport'.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := monitor.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := monitor.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := 'SstTag:Unexport'.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack1) event: (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := configuration.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) callbacks.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := SstUnexportCallback.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := Array.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack3 := (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack1) callCallbacks: (recoveredStack2) callData: (recoveredStack3).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x20025268; bytecode file offset 0x8635c"
!SstLocalSpace methodsFor: 'recovered'!
invalidateHandlesFromSpace: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := [
    | recoveredBlock4Local1 recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack1 := importSet.
            recoveredBlock4PC := 12.
        ].
        recoveredBlock4Step = 12 ifTrue: [
            (recoveredBlock4Stack1 ~~ nil) ifTrue: [recoveredBlock4PC := 18] ifFalse: [recoveredBlock4PC := 16].
        ].
        recoveredBlock4Step = 16 ifTrue: [
            recoveredBlock4Stack1 := self.
            recoveredBlock4PC := 17.
        ].
        recoveredBlock4Step = 17 ifTrue: [
            ^recoveredBlock4Stack1
        ].
        recoveredBlock4Step = 18 ifTrue: [
            recoveredBlock4Stack1 := OrderedCollection.
            recoveredBlock4PC := 20.
        ].
        recoveredBlock4Step = 20 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) new.
            recoveredBlock4PC := 21.
        ].
        recoveredBlock4Step = 21 ifTrue: [
            recoveredBlock4Local1 := recoveredBlock4Stack1.
            recoveredBlock4PC := 24.
        ].
        recoveredBlock4Step = 24 ifTrue: [
            recoveredBlock4Stack1 := importSet.
            recoveredBlock4PC := 26.
        ].
        recoveredBlock4Step = 26 ifTrue: [
            recoveredBlock4Stack2 := [:recoveredBlock4Block26Arg1 :recoveredBlock4Block26Arg2 | 
    | recoveredBlock4Block26Stack0 recoveredBlock4Block26Stack1 recoveredBlock4Block26Stack2 recoveredBlock4Block26Stack3 recoveredBlock4Block26Stack4 recoveredBlock4Block26PC recoveredBlock4Block26Step recoveredBlock4Block26Done recoveredBlock4Block26Result |
    recoveredBlock4Block26Stack0 := nil.
    recoveredBlock4Block26PC := 32.
    recoveredBlock4Block26Done := false.
    [recoveredBlock4Block26Done not] whileTrue: [
        recoveredBlock4Block26Step := recoveredBlock4Block26PC.
        recoveredBlock4Block26Step = 32 ifTrue: [
            recoveredBlock4Block26Stack1 := nil.
            recoveredBlock4Block26PC := 33.
        ].
        recoveredBlock4Block26Step = 33 ifTrue: [
            recoveredBlock4Block26Stack2 := recoveredBlock4Block26Arg1.
            recoveredBlock4Block26PC := 34.
        ].
        recoveredBlock4Block26Step = 34 ifTrue: [
            recoveredBlock4Block26Stack2 := (recoveredBlock4Block26Stack2) space.
            recoveredBlock4Block26PC := 35.
        ].
        recoveredBlock4Block26Step = 35 ifTrue: [
            recoveredBlock4Block26Stack3 := recoveredArg1.
            recoveredBlock4Block26PC := 38.
        ].
        recoveredBlock4Block26Step = 38 ifTrue: [
            (recoveredBlock4Block26Stack2 ~~ recoveredBlock4Block26Stack3) ifTrue: [recoveredBlock4Block26PC := 65] ifFalse: [recoveredBlock4Block26PC := 42].
        ].
        recoveredBlock4Block26Step = 42 ifTrue: [
            recoveredBlock4Block26PC := 43.
        ].
        recoveredBlock4Block26Step = 43 ifTrue: [
            recoveredBlock4Block26Stack1 := recoveredBlock4Local1.
            recoveredBlock4Block26PC := 46.
        ].
        recoveredBlock4Block26Step = 46 ifTrue: [
            recoveredBlock4Block26Stack2 := recoveredBlock4Block26Arg1.
            recoveredBlock4Block26PC := 47.
        ].
        recoveredBlock4Block26Step = 47 ifTrue: [
            (recoveredBlock4Block26Stack1) add: (recoveredBlock4Block26Stack2).
            recoveredBlock4Block26PC := 49.
        ].
        recoveredBlock4Block26Step = 49 ifTrue: [
            recoveredBlock4Block26Stack1 := nil.
            recoveredBlock4Block26PC := 50.
        ].
        recoveredBlock4Block26Step = 50 ifTrue: [
            recoveredBlock4Block26Stack2 := recoveredBlock4Block26Arg2.
            recoveredBlock4Block26PC := 51.
        ].
        recoveredBlock4Block26Step = 51 ifTrue: [
            recoveredBlock4Block26Stack2 := (recoveredBlock4Block26Stack2) sstIsRemote.
            recoveredBlock4Block26PC := 53.
        ].
        recoveredBlock4Block26Step = 53 ifTrue: [
            (recoveredBlock4Block26Stack2) ifTrue: [recoveredBlock4Block26PC := 56] ifFalse: [recoveredBlock4Block26PC := 65].
        ].
        recoveredBlock4Block26Step = 56 ifTrue: [
            recoveredBlock4Block26PC := 57.
        ].
        recoveredBlock4Block26Step = 57 ifTrue: [
            recoveredBlock4Block26Stack1 := recoveredBlock4Block26Arg2.
            recoveredBlock4Block26PC := 58.
        ].
        recoveredBlock4Block26Step = 58 ifTrue: [
            recoveredBlock4Block26Stack2 := recoveredBlock4Block26Arg2.
            recoveredBlock4Block26PC := 59.
        ].
        recoveredBlock4Block26Step = 59 ifTrue: [
            recoveredBlock4Block26Stack2 := (recoveredBlock4Block26Stack2) sstTarget.
            recoveredBlock4Block26PC := 61.
        ].
        recoveredBlock4Block26Step = 61 ifTrue: [
            recoveredBlock4Block26Stack2 := (recoveredBlock4Block26Stack2) asInvalidHandle.
            recoveredBlock4Block26PC := 63.
        ].
        recoveredBlock4Block26Step = 63 ifTrue: [
            recoveredBlock4Block26Stack1 := (recoveredBlock4Block26Stack1) sstTarget: (recoveredBlock4Block26Stack2).
            recoveredBlock4Block26PC := 65.
        ].
        recoveredBlock4Block26Step = 65 ifTrue: [
            recoveredBlock4Block26Result := recoveredBlock4Block26Stack1.
            recoveredBlock4Block26Done := true.
        ].
    ].
    recoveredBlock4Block26Result
].
            recoveredBlock4PC := 66.
        ].
        recoveredBlock4Step = 66 ifTrue: [
            (recoveredBlock4Stack1) keysAndValuesDo: (recoveredBlock4Stack2).
            recoveredBlock4PC := 68.
        ].
        recoveredBlock4Step = 68 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Local1.
            recoveredBlock4PC := 71.
        ].
        recoveredBlock4Step = 71 ifTrue: [
            recoveredBlock4Stack2 := [:recoveredBlock4Block71Arg1 | 
    | recoveredBlock4Block71Value0 recoveredBlock4Block71Value1 recoveredBlock4Block71Value2 |
    recoveredBlock4Block71Value0 := importSet.
    recoveredBlock4Block71Value1 := recoveredBlock4Block71Arg1.
    recoveredBlock4Block71Value2 := (recoveredBlock4Block71Value0) removeKey: (recoveredBlock4Block71Value1).
    recoveredBlock4Block71Value2
].
            recoveredBlock4PC := 84.
        ].
        recoveredBlock4Step = 84 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) do: (recoveredBlock4Stack2).
            recoveredBlock4PC := 86.
        ].
        recoveredBlock4Step = 86 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack1.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
    (recoveredValue0) critical.
    ^self
! !

