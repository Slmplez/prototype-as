"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"lib.ic method 0x200006e4; bytecode file offset 0x3c804"
!EmConfigurationMapRecord class methodsFor: 'recovered'!
privilegesKey
    ^'*EM-CMP'
! !

"lib.ic method 0x20000720; bytecode file offset 0x3c804"
!EmConfigurationMapRecord class methodsFor: 'recovered'!
requiredMapsKey
    ^'ENVYRequiredMaps'
! !

"lib.ic method 0x20000750; bytecode file offset 0x3c804"
!EmConfigurationMapRecord class methodsFor: 'recovered'!
privilegeNames
    ^#('releaseApplications' 'deleteApplications')
! !

"lib.ic method 0x2000075c; bytecode file offset 0x3c804"
!EmConfigurationMapRecord class methodsFor: 'recovered'!
registryKey
    ^'ConfigurationMaps'
! !

"lib.ic method 0x200029f8; bytecode file offset 0x3ea18"
!EmConfigurationMapRecord class methodsFor: 'recovered'!
tag
    ^12305
! !

"lib.ic method 0x20002b34; bytecode file offset 0x3eb54"
!EmConfigurationMapRecord class methodsFor: 'recovered'!
defaultLength
    ^37
! !

"lib.ic method 0x20002e58; bytecode file offset 0x3ee80"
!EmConfigurationMapRecord class methodsFor: 'recovered'!
for: recoveredArg1 using: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (self) using: (recoveredValue0).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) map: (recoveredValue2).
    ^recoveredValue3
! !

"lib.ic method 0x20004038; bytecode file offset 0x40064"
!EmConfigurationMapRecord class methodsFor: 'recovered'!
editionsDictionaryFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) rootDictionary.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := EmEditionsDictionary.
    recoveredValue3 := (recoveredValue0) obtainRecordAt: (recoveredValue1) ofType: (recoveredValue2).
    ^recoveredValue3
! !

"lib.ic method 0x20005a34; bytecode file offset 0x41a74"
!EmConfigurationMapRecord class methodsFor: 'recovered'!
salvage: recoveredArg1 at: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) purgedRegistryKey.
    recoveredValue3 := (self) registryKey.
    recoveredValue4 := (self) move: (recoveredValue0) at: (recoveredValue1) in: (recoveredValue2) to: (recoveredValue3).
    ^recoveredValue4
! !

"lib.ic method 0x20005a48; bytecode file offset 0x41a74"
!EmConfigurationMapRecord class methodsFor: 'recovered'!
purge: recoveredArg1 at: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) registryKey.
    recoveredValue3 := (self) purgedRegistryKey.
    recoveredValue4 := (self) move: (recoveredValue0) at: (recoveredValue1) in: (recoveredValue2) to: (recoveredValue3).
    ^recoveredValue4
! !

"lib.ic method 0x20009734; bytecode file offset 0x45770"
!EmConfigurationMapRecord class methodsFor: 'recovered'!
for: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) name.
    recoveredValue2 := (self) editionsDictionaryFor: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) timeStamp.
    recoveredValue6 := recoveredArg2.
    recoveredValue7 := (recoveredValue3) at: (recoveredValue5) ifAbsent: (recoveredValue6).
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := (recoveredValue8) library.
    recoveredValue10 := (self) using: (recoveredValue7) from: (recoveredValue9).
    recoveredValue11 := recoveredArg1.
    recoveredValue12 := (recoveredValue10) map: (recoveredValue11).
    ^recoveredValue12
! !

"lib.ic method 0x2001474c; bytecode file offset 0x507e4"
!EmConfigurationMapRecord class methodsFor: 'recovered'!
relocateRootDictionaryUsing: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := EmLibrary.
    recoveredValue1 := (recoveredValue0) default.
    (recoveredValue1) transactionBegin.
    recoveredValue2 := EmFixedDiskDictionary.
    recoveredValue3 := (recoveredValue2) updateRecordRegistry.
    recoveredValue4 := recoveredValue3.
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := (self) registryKey.
    recoveredValue6 := [:recoveredBlock20Arg1 | 
    | recoveredBlock20Value0 recoveredBlock20Value1 recoveredBlock20Value2 recoveredBlock20Value3 recoveredBlock20Value4 recoveredBlock20Value5 recoveredBlock20Value6 recoveredBlock20Value7 recoveredBlock20Value8 recoveredBlock20Value9 |
    recoveredBlock20Value0 := recoveredArg1.
    recoveredBlock20Value1 := EmLibrary.
    recoveredBlock20Value2 := (recoveredBlock20Value1) cache.
    recoveredBlock20Value3 := EmDiskDictionary.
    recoveredBlock20Value4 := recoveredBlock20Arg1.
    recoveredBlock20Value5 := recoveredLocal1.
    recoveredBlock20Value6 := (recoveredBlock20Value5) library.
    recoveredBlock20Value7 := (recoveredBlock20Value3) updating: (recoveredBlock20Value4) from: (recoveredBlock20Value6).
    recoveredBlock20Value8 := (recoveredBlock20Value2) renewMapRootDictionary: (recoveredBlock20Value7).
    recoveredBlock20Value9 := (recoveredBlock20Value0) value: (recoveredBlock20Value8).
    recoveredBlock20Value9
].
    (recoveredValue3) at: (recoveredValue5) putPointerFrom: (recoveredValue6).
    recoveredValue7 := EmLibrary.
    recoveredValue8 := (recoveredValue7) default.
    (recoveredValue8) transactionEnd.
    ^self
! !

"lib.ic method 0x2001a974; bytecode file offset 0x569c4"
!EmConfigurationMapRecord class methodsFor: 'recovered'!
for: recoveredArg1 relocateUsing: recoveredArg2
    | recoveredValue0 |
    recoveredValue0 := [:recoveredBlock4Arg1 | 
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 recoveredBlock4Value4 |
    recoveredBlock4Value0 := recoveredBlock4Arg1.
    recoveredBlock4Value1 := recoveredArg1.
    recoveredBlock4Value2 := (recoveredBlock4Value1) name.
    recoveredBlock4Value3 := [:recoveredBlock4Block17Arg1 | 
    | recoveredBlock4Block17Value0 recoveredBlock4Block17Value1 recoveredBlock4Block17Value2 recoveredBlock4Block17Value3 recoveredBlock4Block17Value4 recoveredBlock4Block17Value5 recoveredBlock4Block17Value6 recoveredBlock4Block17Value7 recoveredBlock4Block17Value8 |
    recoveredBlock4Block17Value0 := EmEditionsDictionary.
    recoveredBlock4Block17Value1 := recoveredBlock4Block17Arg1.
    recoveredBlock4Block17Value2 := recoveredBlock4Arg1.
    recoveredBlock4Block17Value3 := (recoveredBlock4Block17Value2) library.
    recoveredBlock4Block17Value4 := (recoveredBlock4Block17Value0) updating: (recoveredBlock4Block17Value1) from: (recoveredBlock4Block17Value3).
    recoveredBlock4Block17Value5 := recoveredArg1.
    recoveredBlock4Block17Value6 := (recoveredBlock4Block17Value5) timeStamp.
    recoveredBlock4Block17Value7 := [:recoveredBlock4Block17Block38Arg1 | 
    | recoveredBlock4Block17Block38Value0 recoveredBlock4Block17Block38Value1 recoveredBlock4Block17Block38Value2 recoveredBlock4Block17Block38Value3 recoveredBlock4Block17Block38Value4 recoveredBlock4Block17Block38Value5 recoveredBlock4Block17Block38Value6 recoveredBlock4Block17Block38Value7 recoveredBlock4Block17Block38Value8 recoveredBlock4Block17Block38Value9 recoveredBlock4Block17Block38Value10 recoveredBlock4Block17Block38Value11 |
    recoveredBlock4Block17Block38Value0 := recoveredArg2.
    recoveredBlock4Block17Block38Value1 := EmLibrary.
    recoveredBlock4Block17Block38Value2 := (recoveredBlock4Block17Block38Value1) cache.
    recoveredBlock4Block17Block38Value3 := recoveredBlock4Block17Block38Arg1.
    recoveredBlock4Block17Block38Value4 := recoveredBlock4Arg1.
    recoveredBlock4Block17Block38Value5 := (recoveredBlock4Block17Block38Value4) library.
    recoveredBlock4Block17Block38Value6 := (self) updating: (recoveredBlock4Block17Block38Value3) from: (recoveredBlock4Block17Block38Value5).
    recoveredBlock4Block17Block38Value7 := recoveredBlock4Block17Block38Value6.
    recoveredBlock4Block17Block38Value8 := recoveredArg1.
    (recoveredBlock4Block17Block38Value7) map: (recoveredBlock4Block17Block38Value8).
    recoveredBlock4Block17Block38Value9 := recoveredArg1.
    recoveredBlock4Block17Block38Value10 := (recoveredBlock4Block17Block38Value2) renewMapEditionRecord: (recoveredBlock4Block17Block38Value6) for: (recoveredBlock4Block17Block38Value9).
    recoveredBlock4Block17Block38Value11 := (recoveredBlock4Block17Block38Value0) value: (recoveredBlock4Block17Block38Value10).
    recoveredBlock4Block17Block38Value11
].
    recoveredBlock4Block17Value8 := (recoveredBlock4Block17Value4) at: (recoveredBlock4Block17Value6) putPointerFrom: (recoveredBlock4Block17Value7).
    recoveredBlock4Block17Value8
].
    recoveredBlock4Value4 := (recoveredBlock4Value0) at: (recoveredBlock4Value2) putPointerFrom: (recoveredBlock4Value3).
    recoveredBlock4Value4
].
    (self) relocateRootDictionaryUsing: (recoveredValue0).
    ^self
! !

"lib.ic method 0x2001bfe4; bytecode file offset 0x58050"
!EmConfigurationMapRecord class methodsFor: 'recovered'!
for: recoveredArg1 updateUsing: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EmLibrary.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) default.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) transactionBegin.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) editionsDictionaryFor: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) timeStamp.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) isVoid.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 37].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := EmLibrary.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := MxEMcsESa3.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) transactionProtocolError: (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := (recoveredStack2) library.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) updating: (recoveredStack1) from: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) map: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := EmLibrary.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) cache.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) renewMapEditionRecord: (recoveredStack1) for: (recoveredStack2).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) filePointer.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 81] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := EmLibrary.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := MxEMcsESa4.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0) transactionProtocolError: (recoveredStack1).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := EmLibrary.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack0) transactionEnd.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2001d328; bytecode file offset 0x5937c"
!EmConfigurationMapRecord class methodsFor: 'recovered'!
newEditionFor: recoveredArg1 using: recoveredArg2 ifUnable: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredValue0 |
    recoveredValue0 := [:recoveredBlock4Arg1 | 
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 recoveredBlock4Value4 |
    recoveredBlock4Value0 := recoveredBlock4Arg1.
    recoveredBlock4Value1 := recoveredArg1.
    recoveredBlock4Value2 := (recoveredBlock4Value1) name.
    recoveredBlock4Value3 := [:recoveredBlock4Block17Arg1 | 
    | recoveredBlock4Block17Value0 recoveredBlock4Block17Value1 recoveredBlock4Block17Value2 recoveredBlock4Block17Value3 recoveredBlock4Block17Value4 recoveredBlock4Block17Value5 recoveredBlock4Block17Value6 recoveredBlock4Block17Value7 recoveredBlock4Block17Value8 recoveredBlock4Block17Value9 recoveredBlock4Block17Value10 |
    recoveredBlock4Block17Value0 := EmEditionsDictionary.
    recoveredBlock4Block17Value1 := recoveredBlock4Block17Arg1.
    recoveredBlock4Block17Value2 := recoveredBlock4Arg1.
    recoveredBlock4Block17Value3 := (recoveredBlock4Block17Value2) library.
    recoveredBlock4Block17Value4 := (recoveredBlock4Block17Value0) updating: (recoveredBlock4Block17Value1) from: (recoveredBlock4Block17Value3).
    recoveredBlock4Block17Value5 := recoveredBlock4Block17Value4.
    recoveredLocal2 := recoveredBlock4Block17Value5.
    recoveredBlock4Block17Value6 := recoveredLocal2.
    recoveredBlock4Block17Value7 := (recoveredBlock4Block17Value6) nextTimeStamp.
    recoveredBlock4Block17Value8 := recoveredBlock4Block17Value7.
    recoveredLocal1 := recoveredBlock4Block17Value8.
    recoveredBlock4Block17Value9 := [:recoveredBlock4Block17Block46Arg1 | 
    | recoveredBlock4Block17Block46Value0 recoveredBlock4Block17Block46Value1 recoveredBlock4Block17Block46Value2 recoveredBlock4Block17Block46Value3 recoveredBlock4Block17Block46Value4 recoveredBlock4Block17Block46Value5 recoveredBlock4Block17Block46Value6 recoveredBlock4Block17Block46Value7 recoveredBlock4Block17Block46Value8 recoveredBlock4Block17Block46Value9 recoveredBlock4Block17Block46Value10 recoveredBlock4Block17Block46Value11 recoveredBlock4Block17Block46Value12 recoveredBlock4Block17Block46Value13 |
    recoveredBlock4Block17Block46Value0 := recoveredLocal2.
    recoveredBlock4Block17Block46Value1 := recoveredArg1.
    recoveredBlock4Block17Block46Value2 := (recoveredBlock4Block17Block46Value1) timeStamp.
    recoveredBlock4Block17Block46Value3 := (recoveredBlock4Block17Block46Value0) at: (recoveredBlock4Block17Block46Value2).
    recoveredBlock4Block17Block46Value4 := recoveredBlock4Arg1.
    recoveredBlock4Block17Block46Value5 := (recoveredBlock4Block17Block46Value4) library.
    recoveredBlock4Block17Block46Value6 := (self) using: (recoveredBlock4Block17Block46Value3) from: (recoveredBlock4Block17Block46Value5).
    recoveredBlock4Block17Block46Value7 := recoveredBlock4Block17Block46Value6.
    recoveredBlock4Block17Block46Value8 := recoveredArg1.
    (recoveredBlock4Block17Block46Value7) map: (recoveredBlock4Block17Block46Value8).
    recoveredBlock4Block17Block46Value9 := recoveredBlock4Block17Block46Value6.
    recoveredBlock4Block17Block46Value10 := recoveredLocal1.
    recoveredBlock4Block17Block46Value11 := recoveredArg2.
    recoveredBlock4Block17Block46Value12 := recoveredArg3.
    (recoveredBlock4Block17Block46Value9) newEditionAt: (recoveredBlock4Block17Block46Value10) using: (recoveredBlock4Block17Block46Value11) ifUnable: (recoveredBlock4Block17Block46Value12).
    recoveredBlock4Block17Block46Value13 := (recoveredBlock4Block17Block46Value6) insert.
    recoveredBlock4Block17Block46Value13
].
    recoveredBlock4Block17Value10 := (recoveredBlock4Block17Value4) at: (recoveredBlock4Block17Value7) putPointerFrom: (recoveredBlock4Block17Value9).
    recoveredBlock4Block17Value10
].
    recoveredBlock4Value4 := (recoveredBlock4Value0) at: (recoveredBlock4Value2) putPointerFrom: (recoveredBlock4Value3).
    recoveredBlock4Value4
].
    (self) relocateRootDictionaryUsing: (recoveredValue0).
    ^self
! !

"lib.ic method 0x20027b4c; bytecode file offset 0x63b98"
!EmConfigurationMapRecord class methodsFor: 'recovered'!
move: recoveredArg1 at: recoveredArg2 in: recoveredArg3 to: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:recoveredBlock4Arg1 | 
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 |
    recoveredBlock4Value0 := recoveredBlock4Arg1.
    recoveredBlock4Value1 := recoveredArg3.
    recoveredBlock4Value2 := [:recoveredBlock4Block16Arg1 | 
    | recoveredBlock4Block16Stack0 recoveredBlock4Block16Stack1 recoveredBlock4Block16Stack2 recoveredBlock4Block16Stack3 recoveredBlock4Block16Stack4 recoveredBlock4Block16PC recoveredBlock4Block16Step recoveredBlock4Block16Done recoveredBlock4Block16Result |
    recoveredBlock4Block16Stack0 := nil.
    recoveredBlock4Block16PC := 22.
    recoveredBlock4Block16Done := false.
    [recoveredBlock4Block16Done not] whileTrue: [
        recoveredBlock4Block16Step := recoveredBlock4Block16PC.
        recoveredBlock4Block16Step = 22 ifTrue: [
            recoveredBlock4Block16Stack1 := EmDiskDictionary.
            recoveredBlock4Block16PC := 24.
        ].
        recoveredBlock4Block16Step = 24 ifTrue: [
            recoveredBlock4Block16Stack2 := recoveredBlock4Block16Arg1.
            recoveredBlock4Block16PC := 25.
        ].
        recoveredBlock4Block16Step = 25 ifTrue: [
            recoveredBlock4Block16Stack3 := recoveredBlock4Arg1.
            recoveredBlock4Block16PC := 28.
        ].
        recoveredBlock4Block16Step = 28 ifTrue: [
            recoveredBlock4Block16Stack3 := (recoveredBlock4Block16Stack3) library.
            recoveredBlock4Block16PC := 29.
        ].
        recoveredBlock4Block16Step = 29 ifTrue: [
            recoveredBlock4Block16Stack1 := (recoveredBlock4Block16Stack1) updating: (recoveredBlock4Block16Stack2) from: (recoveredBlock4Block16Stack3).
            recoveredBlock4Block16PC := 31.
        ].
        recoveredBlock4Block16Step = 31 ifTrue: [
            recoveredLocal3 := recoveredBlock4Block16Stack1.
            recoveredBlock4Block16PC := 34.
        ].
        recoveredBlock4Block16Step = 34 ifTrue: [
            recoveredBlock4Block16Stack1 := recoveredLocal3.
            recoveredBlock4Block16PC := 37.
        ].
        recoveredBlock4Block16Step = 37 ifTrue: [
            recoveredBlock4Block16Stack2 := recoveredArg1.
            recoveredBlock4Block16PC := 40.
        ].
        recoveredBlock4Block16Step = 40 ifTrue: [
            recoveredBlock4Block16Stack3 := [:recoveredBlock4Block16Block40Arg1 | 
    | recoveredBlock4Block16Block40Stack0 recoveredBlock4Block16Block40Stack1 recoveredBlock4Block16Block40Stack2 recoveredBlock4Block16Block40Stack3 recoveredBlock4Block16Block40Stack4 recoveredBlock4Block16Block40Stack5 recoveredBlock4Block16Block40PC recoveredBlock4Block16Block40Step recoveredBlock4Block16Block40Done recoveredBlock4Block16Block40Result |
    recoveredBlock4Block16Block40Stack0 := nil.
    recoveredBlock4Block16Block40PC := 46.
    recoveredBlock4Block16Block40Done := false.
    [recoveredBlock4Block16Block40Done not] whileTrue: [
        recoveredBlock4Block16Block40Step := recoveredBlock4Block16Block40PC.
        recoveredBlock4Block16Block40Step = 46 ifTrue: [
            recoveredBlock4Block16Block40Stack1 := EmEditionsDictionary.
            recoveredBlock4Block16Block40PC := 48.
        ].
        recoveredBlock4Block16Block40Step = 48 ifTrue: [
            recoveredBlock4Block16Block40Stack2 := recoveredBlock4Block16Block40Arg1.
            recoveredBlock4Block16Block40PC := 49.
        ].
        recoveredBlock4Block16Block40Step = 49 ifTrue: [
            recoveredBlock4Block16Block40Stack3 := recoveredBlock4Arg1.
            recoveredBlock4Block16Block40PC := 52.
        ].
        recoveredBlock4Block16Block40Step = 52 ifTrue: [
            recoveredBlock4Block16Block40Stack3 := (recoveredBlock4Block16Block40Stack3) library.
            recoveredBlock4Block16Block40PC := 53.
        ].
        recoveredBlock4Block16Block40Step = 53 ifTrue: [
            recoveredBlock4Block16Block40Stack1 := (recoveredBlock4Block16Block40Stack1) updating: (recoveredBlock4Block16Block40Stack2) from: (recoveredBlock4Block16Block40Stack3).
            recoveredBlock4Block16Block40PC := 55.
        ].
        recoveredBlock4Block16Block40Step = 55 ifTrue: [
            recoveredLocal2 := recoveredBlock4Block16Block40Stack1.
            recoveredBlock4Block16Block40PC := 58.
        ].
        recoveredBlock4Block16Block40Step = 58 ifTrue: [
            recoveredBlock4Block16Block40Stack1 := nil.
            recoveredBlock4Block16Block40PC := 59.
        ].
        recoveredBlock4Block16Block40Step = 59 ifTrue: [
            recoveredBlock4Block16Block40Stack2 := recoveredLocal2.
            recoveredBlock4Block16Block40PC := 62.
        ].
        recoveredBlock4Block16Block40Step = 62 ifTrue: [
            recoveredBlock4Block16Block40Stack3 := recoveredArg2.
            recoveredBlock4Block16Block40PC := 65.
        ].
        recoveredBlock4Block16Block40Step = 65 ifTrue: [
            recoveredBlock4Block16Block40Stack4 := [].
            recoveredBlock4Block16Block40PC := 67.
        ].
        recoveredBlock4Block16Block40Step = 67 ifTrue: [
            recoveredBlock4Block16Block40Stack2 := (recoveredBlock4Block16Block40Stack2) at: (recoveredBlock4Block16Block40Stack3) ifAbsent: (recoveredBlock4Block16Block40Stack4).
            recoveredBlock4Block16Block40PC := 69.
        ].
        recoveredBlock4Block16Block40Step = 69 ifTrue: [
            recoveredBlock4Block16Block40Stack3 := recoveredBlock4Block16Block40Stack2.
            recoveredBlock4Block16Block40PC := 70.
        ].
        recoveredBlock4Block16Block40Step = 70 ifTrue: [
            recoveredLocal1 := recoveredBlock4Block16Block40Stack3.
            recoveredBlock4Block16Block40PC := 73.
        ].
        recoveredBlock4Block16Block40Step = 73 ifTrue: [
            (recoveredBlock4Block16Block40Stack2 == nil) ifTrue: [recoveredBlock4Block16Block40PC := 146] ifFalse: [recoveredBlock4Block16Block40PC := 76].
        ].
        recoveredBlock4Block16Block40Step = 76 ifTrue: [
            recoveredBlock4Block16Block40PC := 77.
        ].
        recoveredBlock4Block16Block40Step = 77 ifTrue: [
            recoveredBlock4Block16Block40Stack1 := recoveredBlock4Arg1.
            recoveredBlock4Block16Block40PC := 80.
        ].
        recoveredBlock4Block16Block40Step = 80 ifTrue: [
            recoveredBlock4Block16Block40Stack2 := recoveredArg4.
            recoveredBlock4Block16Block40PC := 83.
        ].
        recoveredBlock4Block16Block40Step = 83 ifTrue: [
            recoveredBlock4Block16Block40Stack3 := [:recoveredBlock4Block16Block40Block83Arg1 | 
    | recoveredBlock4Block16Block40Block83Value0 recoveredBlock4Block16Block40Block83Value1 recoveredBlock4Block16Block40Block83Value2 recoveredBlock4Block16Block40Block83Value3 recoveredBlock4Block16Block40Block83Value4 recoveredBlock4Block16Block40Block83Value5 recoveredBlock4Block16Block40Block83Value6 recoveredBlock4Block16Block40Block83Value7 |
    recoveredBlock4Block16Block40Block83Value0 := EmDiskDictionary.
    recoveredBlock4Block16Block40Block83Value1 := recoveredBlock4Block16Block40Block83Arg1.
    recoveredBlock4Block16Block40Block83Value2 := recoveredBlock4Arg1.
    recoveredBlock4Block16Block40Block83Value3 := (recoveredBlock4Block16Block40Block83Value2) library.
    recoveredBlock4Block16Block40Block83Value4 := (recoveredBlock4Block16Block40Block83Value0) updating: (recoveredBlock4Block16Block40Block83Value1) from: (recoveredBlock4Block16Block40Block83Value3).
    recoveredBlock4Block16Block40Block83Value5 := recoveredArg1.
    recoveredBlock4Block16Block40Block83Value6 := [:recoveredBlock4Block16Block40Block83Block102Arg1 | 
    | recoveredBlock4Block16Block40Block83Block102Value0 recoveredBlock4Block16Block40Block83Block102Value1 recoveredBlock4Block16Block40Block83Block102Value2 recoveredBlock4Block16Block40Block83Block102Value3 recoveredBlock4Block16Block40Block83Block102Value4 recoveredBlock4Block16Block40Block83Block102Value5 recoveredBlock4Block16Block40Block83Block102Value6 recoveredBlock4Block16Block40Block83Block102Value7 |
    recoveredBlock4Block16Block40Block83Block102Value0 := EmEditionsDictionary.
    recoveredBlock4Block16Block40Block83Block102Value1 := recoveredBlock4Block16Block40Block83Block102Arg1.
    recoveredBlock4Block16Block40Block83Block102Value2 := recoveredBlock4Arg1.
    recoveredBlock4Block16Block40Block83Block102Value3 := (recoveredBlock4Block16Block40Block83Block102Value2) library.
    recoveredBlock4Block16Block40Block83Block102Value4 := (recoveredBlock4Block16Block40Block83Block102Value0) updating: (recoveredBlock4Block16Block40Block83Block102Value1) from: (recoveredBlock4Block16Block40Block83Block102Value3).
    recoveredBlock4Block16Block40Block83Block102Value5 := recoveredArg2.
    recoveredBlock4Block16Block40Block83Block102Value6 := [:recoveredBlock4Block16Block40Block83Block102Block120Arg1 | 
    | recoveredBlock4Block16Block40Block83Block102Block120Value0 |
    recoveredBlock4Block16Block40Block83Block102Block120Value0 := recoveredLocal1.
    recoveredBlock4Block16Block40Block83Block102Block120Value0
].
    recoveredBlock4Block16Block40Block83Block102Value7 := (recoveredBlock4Block16Block40Block83Block102Value4) at: (recoveredBlock4Block16Block40Block83Block102Value5) putPointerFrom: (recoveredBlock4Block16Block40Block83Block102Value6).
    recoveredBlock4Block16Block40Block83Block102Value7
].
    recoveredBlock4Block16Block40Block83Value7 := (recoveredBlock4Block16Block40Block83Value4) at: (recoveredBlock4Block16Block40Block83Value5) putPointerFrom: (recoveredBlock4Block16Block40Block83Value6).
    recoveredBlock4Block16Block40Block83Value7
].
            recoveredBlock4Block16Block40PC := 136.
        ].
        recoveredBlock4Block16Block40Step = 136 ifTrue: [
            (recoveredBlock4Block16Block40Stack1) at: (recoveredBlock4Block16Block40Stack2) putPointerFrom: (recoveredBlock4Block16Block40Stack3).
            recoveredBlock4Block16Block40PC := 138.
        ].
        recoveredBlock4Block16Block40Step = 138 ifTrue: [
            recoveredBlock4Block16Block40Stack1 := recoveredLocal2.
            recoveredBlock4Block16Block40PC := 141.
        ].
        recoveredBlock4Block16Block40Step = 141 ifTrue: [
            recoveredBlock4Block16Block40Stack2 := recoveredArg2.
            recoveredBlock4Block16Block40PC := 144.
        ].
        recoveredBlock4Block16Block40Step = 144 ifTrue: [
            recoveredBlock4Block16Block40Stack1 := (recoveredBlock4Block16Block40Stack1) removeKey: (recoveredBlock4Block16Block40Stack2).
            recoveredBlock4Block16Block40PC := 146.
        ].
        recoveredBlock4Block16Block40Step = 146 ifTrue: [
            recoveredBlock4Block16Block40Result := recoveredBlock4Block16Block40Stack1.
            recoveredBlock4Block16Block40Done := true.
        ].
    ].
    recoveredBlock4Block16Block40Result
].
            recoveredBlock4Block16PC := 147.
        ].
        recoveredBlock4Block16Step = 147 ifTrue: [
            (recoveredBlock4Block16Stack1) at: (recoveredBlock4Block16Stack2) putPointerFrom: (recoveredBlock4Block16Stack3).
            recoveredBlock4Block16PC := 149.
        ].
        recoveredBlock4Block16Step = 149 ifTrue: [
            recoveredBlock4Block16Stack1 := recoveredLocal1.
            recoveredBlock4Block16PC := 152.
        ].
        recoveredBlock4Block16Step = 152 ifTrue: [
            (recoveredBlock4Block16Stack1 == nil) ifTrue: [recoveredBlock4Block16PC := 176] ifFalse: [recoveredBlock4Block16PC := 156].
        ].
        recoveredBlock4Block16Step = 156 ifTrue: [
            recoveredBlock4Block16Stack1 := recoveredLocal2.
            recoveredBlock4Block16PC := 159.
        ].
        recoveredBlock4Block16Step = 159 ifTrue: [
            recoveredBlock4Block16Stack1 := (recoveredBlock4Block16Stack1) isEmpty.
            recoveredBlock4Block16PC := 161.
        ].
        recoveredBlock4Block16Step = 161 ifTrue: [
            (recoveredBlock4Block16Stack1) ifTrue: [recoveredBlock4Block16PC := 164] ifFalse: [recoveredBlock4Block16PC := 176].
        ].
        recoveredBlock4Block16Step = 164 ifTrue: [
            recoveredBlock4Block16Stack1 := recoveredLocal3.
            recoveredBlock4Block16PC := 167.
        ].
        recoveredBlock4Block16Step = 167 ifTrue: [
            recoveredBlock4Block16Stack2 := recoveredArg1.
            recoveredBlock4Block16PC := 170.
        ].
        recoveredBlock4Block16Step = 170 ifTrue: [
            recoveredBlock4Block16Stack1 := (recoveredBlock4Block16Stack1) removeKey: (recoveredBlock4Block16Stack2).
            recoveredBlock4Block16PC := 172.
        ].
        recoveredBlock4Block16Step = 172 ifTrue: [
            recoveredBlock4Block16PC := 181.
        ].
        recoveredBlock4Block16Step = 176 ifTrue: [
            recoveredBlock4Block16Stack1 := recoveredLocal3.
            recoveredBlock4Block16PC := 179.
        ].
        recoveredBlock4Block16Step = 179 ifTrue: [
            recoveredBlock4Block16Stack1 := (recoveredBlock4Block16Stack1) filePointer.
            recoveredBlock4Block16PC := 181.
        ].
        recoveredBlock4Block16Step = 181 ifTrue: [
            recoveredBlock4Block16Result := recoveredBlock4Block16Stack1.
            recoveredBlock4Block16Done := true.
        ].
    ].
    recoveredBlock4Block16Result
].
    recoveredBlock4Value3 := (recoveredBlock4Value0) at: (recoveredBlock4Value1) putPointerFrom: (recoveredBlock4Value2).
    recoveredBlock4Value3
].
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            (recoveredStack0) updateRegistryUsing: (recoveredStack1).
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 196] ifFalse: [recoveredPC := 194].
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

