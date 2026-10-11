"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"lib.ic method 0x20000040; bytecode file offset 0x3c0a8"
!EmConfigurationMap class methodsFor: 'recovered'!
shadowClass
    ^self
! !

"lib.ic method 0x20000430; bytecode file offset 0x3c670"
!EmConfigurationMap class methodsFor: 'recovered'!
configurationRecordClass
    | recoveredValue0 |
    recoveredValue0 := EmConfigurationMapRecord.
    ^recoveredValue0
! !

"lib.ic method 0x20000678; bytecode file offset 0x3c804"
!EmConfigurationMap class methodsFor: 'recovered'!
initialVersionName
    ^'1.0'
! !

"lib.ic method 0x20002238; bytecode file offset 0x3e2b0"
!EmConfigurationMap class methodsFor: 'recovered'!
purgedConfigurationMapNames
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) configurationRecordClass.
    recoveredValue1 := (recoveredValue0) purgedRootDictionary.
    recoveredValue2 := (recoveredValue1) names.
    recoveredValue3 := (recoveredValue2) asSortedCollection.
    ^recoveredValue3
! !

"lib.ic method 0x2000376c; bytecode file offset 0x3f79c"
!EmConfigurationMap class methodsFor: 'recovered'!
editionTimeStampsFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) configurationRecordClass.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) editionsDictionaryFor: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) keys.
    recoveredValue4 := (recoveredValue3) asSortedCollection.
    ^recoveredValue4
! !

"lib.ic method 0x20005c78; bytecode file offset 0x41cb0"
!EmConfigurationMap class methodsFor: 'recovered'!
configurationMapNames
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := EmLibrary.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) operationsInterface.
    recoveredValue3 := (self) configurationRecordClass.
    recoveredValue4 := (recoveredValue2) genericRootDictionaryFor: (recoveredValue3).
    recoveredValue5 := (recoveredValue4) names.
    ^recoveredValue5
! !

"lib.ic method 0x20005e58; bytecode file offset 0x41e88"
!EmConfigurationMap class methodsFor: 'recovered'!
editionsDictionaryFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := EmLibrary.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) operationsInterface.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue2) configMapEditionsDictionaryForNameFor: (self) name: (recoveredValue3) initializeMaps: (true).
    ^recoveredValue4
! !

"lib.ic method 0x200067b4; bytecode file offset 0x427e0"
!EmConfigurationMap class methodsFor: 'recovered'!
named: recoveredArg1 timeStampWithVersionInfo: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    (recoveredValue2) named: (recoveredValue3) timeStamp: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    (recoveredValue5) initializePrivileges.
    ^recoveredValue0
! !

"lib.ic method 0x20008584; bytecode file offset 0x445b8"
!EmConfigurationMap class methodsFor: 'recovered'!
editionsFor: recoveredArg1
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
            recoveredStack0 := (recoveredStack0) editionsDictionaryFor: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) values.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := [:block280041bcArg1 :block280041bcArg2 | 
    | block280041bcValue0 block280041bcValue1 block280041bcValue2 block280041bcValue3 block280041bcValue4 |
    block280041bcValue0 := block280041bcArg1.
    block280041bcValue1 := (block280041bcValue0) timeStamp.
    block280041bcValue2 := block280041bcArg2.
    block280041bcValue3 := (block280041bcValue2) timeStamp.
    block280041bcValue4 := (block280041bcValue1) > (block280041bcValue3).
    block280041bcValue4
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20008874; bytecode file offset 0x448a8"
!EmConfigurationMap class methodsFor: 'recovered'!
named: recoveredArg1 timeStamp: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    (recoveredValue2) named: (recoveredValue3) timeStamp: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    (recoveredValue5) initializePrivileges.
    recoveredValue6 := recoveredValue0.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (recoveredValue7) configurationRecord.
    (recoveredValue6) checkVersionStatusUsing: (recoveredValue8).
    ^recoveredValue0
! !

"lib.ic method 0x2000a1c4; bytecode file offset 0x46200"
!EmConfigurationMap class methodsFor: 'recovered'!
configurationMapNamesWithoutProjects
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'PR'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := '1FI579S'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) configurationMapNames.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := [:block2800424cArg1 | 
    | block2800424cValue0 block2800424cValue1 |
    block2800424cValue0 := block2800424cArg1.
    block2800424cValue1 := ('<Proj>') occursIn: (block2800424cValue0) at: (1).
    block2800424cValue1
].
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) reject: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20013ac4; bytecode file offset 0x4fb1c"
!EmConfigurationMap class methodsFor: 'recovered'!
purgeFromLibrary: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EmUser.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCurrentSupervisor.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := MxEMc14.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) configurationRecordClass.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) purge: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := MxEMc15.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := EmLibraryCache.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) current.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) flushEntriesForMapNamed: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := MxEMc16.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) logNotice: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x200140c8; bytecode file offset 0x50110"
!EmConfigurationMap class methodsFor: 'recovered'!
create: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) containsByteCharacters.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := MxEMc13.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) error: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := EmTimeStamp.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) undefined.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) named: (recoveredStack1) timeStampWithVersionInfo: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := EmLibrary.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) operationsInterface.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := [
    ^nil
].
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) configMapNewEditionFor: (recoveredStack1) useApplicationEditions: (recoveredStack2) ifUnable: (recoveredStack3).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20018590; bytecode file offset 0x545ec"
!EmConfigurationMap class methodsFor: 'recovered'!
salvageFromLibrary: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EmUser.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCurrentSupervisor.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := MxEMc17.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) configurationMapNames.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := MxEMc18.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) confirm: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) configurationRecordClass.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) salvage: (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := MxEMc19.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := MxEMc20.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) logNotice: (recoveredStack1).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2001b8d4; bytecode file offset 0x57924"
!EmConfigurationMap class methodsFor: 'recovered'!
moveAllVersionsOfMapOnly: recoveredArg1 in: recoveredArg2 from: recoveredArg3 to: recoveredArg4
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            recoveredStack2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1 == recoveredStack2) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) becomeDefault.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) editionsFor: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := [:recoveredBlock27Arg1 | 
    | recoveredBlock27Stack0 recoveredBlock27Stack1 recoveredBlock27Stack2 recoveredBlock27Stack3 recoveredBlock27Stack4 recoveredBlock27Stack5 recoveredBlock27Stack6 recoveredBlock27Stack7 recoveredBlock27Stack8 recoveredBlock27PC recoveredBlock27Step recoveredBlock27Done recoveredBlock27Result |
    recoveredBlock27Stack0 := self.
    recoveredBlock27PC := 34.
    recoveredBlock27Done := false.
    [recoveredBlock27Done not] whileTrue: [
        recoveredBlock27Step := recoveredBlock27PC.
        recoveredBlock27Step = 34 ifTrue: [
            recoveredBlock27Stack1 := nil.
            recoveredBlock27PC := 35.
        ].
        recoveredBlock27Step = 35 ifTrue: [
            recoveredBlock27Stack2 := recoveredBlock27Arg1.
            recoveredBlock27PC := 36.
        ].
        recoveredBlock27Step = 36 ifTrue: [
            recoveredBlock27Stack2 := (recoveredBlock27Stack2) isVersion.
            recoveredBlock27PC := 38.
        ].
        recoveredBlock27Step = 38 ifTrue: [
            (recoveredBlock27Stack2) ifTrue: [recoveredBlock27PC := 42] ifFalse: [recoveredBlock27PC := 76].
        ].
        recoveredBlock27Step = 42 ifTrue: [
            recoveredBlock27Stack2 := recoveredArg2.
            recoveredBlock27PC := 45.
        ].
        recoveredBlock27Step = 45 ifTrue: [
            recoveredBlock27Stack3 := recoveredBlock27Arg1.
            recoveredBlock27PC := 46.
        ].
        recoveredBlock27Step = 46 ifTrue: [
            recoveredBlock27Stack3 := (recoveredBlock27Stack3) timeStamp.
            recoveredBlock27PC := 48.
        ].
        recoveredBlock27Step = 48 ifTrue: [
            recoveredBlock27Stack2 := (recoveredBlock27Stack2) includes: (recoveredBlock27Stack3).
            recoveredBlock27PC := 50.
        ].
        recoveredBlock27Step = 50 ifTrue: [
            (recoveredBlock27Stack2) ifTrue: [recoveredBlock27PC := 54] ifFalse: [recoveredBlock27PC := 76].
        ].
        recoveredBlock27Step = 54 ifTrue: [
            recoveredBlock27PC := 55.
        ].
        recoveredBlock27Step = 55 ifTrue: [
            recoveredBlock27Stack1 := recoveredBlock27Arg1.
            recoveredBlock27PC := 56.
        ].
        recoveredBlock27Step = 56 ifTrue: [
            recoveredBlock27Stack2 := recoveredArg3.
            recoveredBlock27PC := 59.
        ].
        recoveredBlock27Step = 59 ifTrue: [
            recoveredBlock27Stack3 := recoveredArg4.
            recoveredBlock27PC := 62.
        ].
        recoveredBlock27Step = 62 ifTrue: [
            recoveredBlock27Stack4 := false.
            recoveredBlock27PC := 63.
        ].
        recoveredBlock27Step = 63 ifTrue: [
            recoveredBlock27Stack5 := Dictionary.
            recoveredBlock27PC := 65.
        ].
        recoveredBlock27Step = 65 ifTrue: [
            recoveredBlock27Stack5 := (recoveredBlock27Stack5) new.
            recoveredBlock27PC := 67.
        ].
        recoveredBlock27Step = 67 ifTrue: [
            recoveredBlock27Stack6 := Dictionary.
            recoveredBlock27PC := 69.
        ].
        recoveredBlock27Step = 69 ifTrue: [
            recoveredBlock27Stack6 := (recoveredBlock27Stack6) new.
            recoveredBlock27PC := 71.
        ].
        recoveredBlock27Step = 71 ifTrue: [
            recoveredBlock27Stack7 := #().
            recoveredBlock27PC := 73.
        ].
        recoveredBlock27Step = 73 ifTrue: [
            recoveredBlock27Stack1 := (recoveredBlock27Stack1) moveFrom: (recoveredBlock27Stack2) to: (recoveredBlock27Stack3) withApps: (recoveredBlock27Stack4) skipAppsIn: (recoveredBlock27Stack5) skipSubAppsIn: (recoveredBlock27Stack6) options: (recoveredBlock27Stack7).
            recoveredBlock27PC := 76.
        ].
        recoveredBlock27Step = 76 ifTrue: [
            recoveredBlock27Result := recoveredBlock27Stack1.
            recoveredBlock27Done := true.
        ].
    ].
    recoveredBlock27Result
].
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack0) becomeDefault.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2001e4a8; bytecode file offset 0x5a518"
!EmConfigurationMap class methodsFor: 'recovered'!
purgeAllFromLibrary: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EmUser.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCurrentSupervisor.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := MxEMc14.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) configurationRecordClass.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) purgeAll: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := [:block28004df8Arg1 | 
    | block28004df8Value0 block28004df8Value1 block28004df8Value2 block28004df8Value3 block28004df8Value4 |
    block28004df8Value0 := System.
    block28004df8Value1 := MxEMc15.
    block28004df8Value2 := block28004df8Arg1.
    block28004df8Value3 := (block28004df8Value1) bindWith: (block28004df8Value2).
    block28004df8Value4 := (block28004df8Value0) message: (block28004df8Value3).
    block28004df8Value4
].
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := [:recoveredBlock57Arg1 | 
    | recoveredBlock57Value0 recoveredBlock57Value1 recoveredBlock57Value2 |
    recoveredBlock57Value0 := recoveredLocal2.
    recoveredBlock57Value1 := recoveredBlock57Arg1.
    recoveredBlock57Value2 := (recoveredBlock57Value0) includes: (recoveredBlock57Value1).
    recoveredBlock57Value2
].
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) reject: (recoveredStack1).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := EmLibraryCache.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) current.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack0) flushEntriesForMapNames: (recoveredStack1).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := [:block28004e1cArg1 | 
    | block28004e1cValue0 block28004e1cValue1 block28004e1cValue2 block28004e1cValue3 block28004e1cValue4 |
    block28004e1cValue0 := System.
    block28004e1cValue1 := MxEMc16.
    block28004e1cValue2 := block28004e1cArg1.
    block28004e1cValue3 := (block28004e1cValue1) bindWith: (block28004e1cValue2).
    block28004e1cValue4 := (block28004e1cValue0) logNotice: (block28004e1cValue3).
    block28004e1cValue4
].
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2001f8fc; bytecode file offset 0x5b978"
!EmConfigurationMap class methodsFor: 'recovered'!
purgedEditionsFor: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) configurationRecordClass.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) purgedRootDictionary.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := EmEditionsDictionary.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) obtainRecordAt: (recoveredStack1) ofType: (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := Set.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) asDictionary.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := [:recoveredBlock28Arg1 | 
    | recoveredBlock28Value0 recoveredBlock28Value1 recoveredBlock28Value2 recoveredBlock28Value3 recoveredBlock28Value4 recoveredBlock28Value5 recoveredBlock28Value6 recoveredBlock28Value7 recoveredBlock28Value8 recoveredBlock28Value9 recoveredBlock28Value10 recoveredBlock28Value11 recoveredBlock28Value12 recoveredBlock28Value13 recoveredBlock28Value14 recoveredBlock28Value15 recoveredBlock28Value16 recoveredBlock28Value17 recoveredBlock28Value18 recoveredBlock28Value19 recoveredBlock28Value20 recoveredBlock28Value21 recoveredBlock28Value22 |
    recoveredBlock28Value0 := (self) configurationRecordClass.
    recoveredBlock28Value1 := recoveredBlock28Arg1.
    recoveredBlock28Value2 := (recoveredBlock28Value1) value.
    recoveredBlock28Value3 := recoveredLocal4.
    recoveredBlock28Value4 := (recoveredBlock28Value3) library.
    recoveredBlock28Value5 := (recoveredBlock28Value0) using: (recoveredBlock28Value2) from: (recoveredBlock28Value4).
    recoveredBlock28Value6 := recoveredBlock28Value5.
    recoveredLocal2 := recoveredBlock28Value6.
    recoveredBlock28Value7 := (self) new.
    recoveredBlock28Value8 := recoveredBlock28Value7.
    recoveredLocal1 := recoveredBlock28Value8.
    recoveredBlock28Value9 := recoveredArg1.
    recoveredBlock28Value10 := recoveredBlock28Arg1.
    recoveredBlock28Value11 := (recoveredBlock28Value10) key.
    recoveredBlock28Value12 := (recoveredBlock28Value7) named: (recoveredBlock28Value9) timeStamp: (recoveredBlock28Value11).
    (recoveredBlock28Value5) map: (recoveredBlock28Value12).
    recoveredBlock28Value13 := recoveredLocal1.
    recoveredBlock28Value14 := recoveredBlock28Value13.
    recoveredBlock28Value15 := recoveredLocal2.
    (recoveredBlock28Value14) checkVersionStatusUsing: (recoveredBlock28Value15).
    recoveredBlock28Value16 := EmUser.
    recoveredBlock28Value17 := recoveredLocal2.
    recoveredBlock28Value18 := (recoveredBlock28Value17) manager.
    recoveredBlock28Value19 := (recoveredBlock28Value16) called: (recoveredBlock28Value18).
    (recoveredBlock28Value13) primManager: (recoveredBlock28Value19).
    recoveredBlock28Value20 := recoveredLocal3.
    recoveredBlock28Value21 := recoveredLocal1.
    recoveredBlock28Value22 := (recoveredBlock28Value20) add: (recoveredBlock28Value21).
    recoveredBlock28Value22
].
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack0) associationsDo: (recoveredStack1).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := [:block28004eacArg1 :block28004eacArg2 | 
    | block28004eacValue0 block28004eacValue1 block28004eacValue2 block28004eacValue3 block28004eacValue4 |
    block28004eacValue0 := block28004eacArg1.
    block28004eacValue1 := (block28004eacValue0) timeStamp.
    block28004eacValue2 := block28004eacArg2.
    block28004eacValue3 := (block28004eacValue2) timeStamp.
    block28004eacValue4 := (block28004eacValue1) > (block28004eacValue3).
    block28004eacValue4
].
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2002bf90; bytecode file offset 0x6801c"
!EmConfigurationMap class methodsFor: 'recovered'!
moveAllVersionsOf: recoveredArg1 in: recoveredArg2 from: recoveredArg3 to: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            recoveredStack2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal5 := recoveredStack2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1 == recoveredStack2) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) becomeDefault.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) editionsFor: (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := [:recoveredBlock49Arg1 | 
    | recoveredBlock49Stack0 recoveredBlock49Stack1 recoveredBlock49Stack2 recoveredBlock49Stack3 recoveredBlock49Stack4 recoveredBlock49PC recoveredBlock49Step recoveredBlock49Done recoveredBlock49Result |
    recoveredBlock49Stack0 := self.
    recoveredBlock49PC := 56.
    recoveredBlock49Done := false.
    [recoveredBlock49Done not] whileTrue: [
        recoveredBlock49Step := recoveredBlock49PC.
        recoveredBlock49Step = 56 ifTrue: [
            recoveredBlock49Stack1 := nil.
            recoveredBlock49PC := 57.
        ].
        recoveredBlock49Step = 57 ifTrue: [
            recoveredBlock49Stack2 := recoveredBlock49Arg1.
            recoveredBlock49PC := 58.
        ].
        recoveredBlock49Step = 58 ifTrue: [
            recoveredBlock49Stack2 := (recoveredBlock49Stack2) isVersion.
            recoveredBlock49PC := 60.
        ].
        recoveredBlock49Step = 60 ifTrue: [
            (recoveredBlock49Stack2) ifTrue: [recoveredBlock49PC := 64] ifFalse: [recoveredBlock49PC := 174].
        ].
        recoveredBlock49Step = 64 ifTrue: [
            recoveredBlock49Stack2 := recoveredArg2.
            recoveredBlock49PC := 67.
        ].
        recoveredBlock49Step = 67 ifTrue: [
            recoveredBlock49Stack3 := recoveredBlock49Arg1.
            recoveredBlock49PC := 68.
        ].
        recoveredBlock49Step = 68 ifTrue: [
            recoveredBlock49Stack3 := (recoveredBlock49Stack3) timeStamp.
            recoveredBlock49PC := 70.
        ].
        recoveredBlock49Step = 70 ifTrue: [
            recoveredBlock49Stack2 := (recoveredBlock49Stack2) includes: (recoveredBlock49Stack3).
            recoveredBlock49PC := 72.
        ].
        recoveredBlock49Step = 72 ifTrue: [
            (recoveredBlock49Stack2) ifTrue: [recoveredBlock49PC := 76] ifFalse: [recoveredBlock49PC := 174].
        ].
        recoveredBlock49Step = 76 ifTrue: [
            recoveredBlock49PC := 77.
        ].
        recoveredBlock49Step = 77 ifTrue: [
            recoveredBlock49Stack1 := recoveredLocal4.
            recoveredBlock49PC := 80.
        ].
        recoveredBlock49Step = 80 ifTrue: [
            recoveredBlock49Stack2 := recoveredBlock49Arg1.
            recoveredBlock49PC := 81.
        ].
        recoveredBlock49Step = 81 ifTrue: [
            (recoveredBlock49Stack1) add: (recoveredBlock49Stack2).
            recoveredBlock49PC := 83.
        ].
        recoveredBlock49Step = 83 ifTrue: [
            recoveredBlock49Stack1 := recoveredBlock49Arg1.
            recoveredBlock49PC := 84.
        ].
        recoveredBlock49Step = 84 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) shadowApplications.
            recoveredBlock49PC := 86.
        ].
        recoveredBlock49Step = 86 ifTrue: [
            recoveredBlock49Stack2 := [:recoveredBlock49Block86Arg1 | 
    | recoveredBlock49Block86Stack0 recoveredBlock49Block86Stack1 recoveredBlock49Block86Stack2 recoveredBlock49Block86Stack3 recoveredBlock49Block86Stack4 recoveredBlock49Block86PC recoveredBlock49Block86Step recoveredBlock49Block86Done recoveredBlock49Block86Result |
    recoveredBlock49Block86Stack0 := nil.
    recoveredBlock49Block86PC := 92.
    recoveredBlock49Block86Done := false.
    [recoveredBlock49Block86Done not] whileTrue: [
        recoveredBlock49Block86Step := recoveredBlock49Block86PC.
        recoveredBlock49Block86Step = 92 ifTrue: [
            recoveredBlock49Block86Stack1 := recoveredLocal3.
            recoveredBlock49Block86PC := 95.
        ].
        recoveredBlock49Block86Step = 95 ifTrue: [
            recoveredBlock49Block86Stack2 := recoveredBlock49Block86Arg1.
            recoveredBlock49Block86PC := 96.
        ].
        recoveredBlock49Block86Step = 96 ifTrue: [
            recoveredBlock49Block86Stack2 := (recoveredBlock49Block86Stack2) symbol.
            recoveredBlock49Block86PC := 98.
        ].
        recoveredBlock49Block86Step = 98 ifTrue: [
            recoveredBlock49Block86Stack3 := [
    | block28005788Value0 block28005788Value1 |
    block28005788Value0 := Set.
    block28005788Value1 := (block28005788Value0) new.
    block28005788Value1
].
            recoveredBlock49Block86PC := 100.
        ].
        recoveredBlock49Block86Step = 100 ifTrue: [
            recoveredBlock49Block86PC := 109.
        ].
        recoveredBlock49Block86Step = 109 ifTrue: [
            recoveredBlock49Block86Stack1 := (recoveredBlock49Block86Stack1) at: (recoveredBlock49Block86Stack2) ifAbsentPut: (recoveredBlock49Block86Stack3).
            recoveredBlock49Block86PC := 111.
        ].
        recoveredBlock49Block86Step = 111 ifTrue: [
            recoveredLocal1 := recoveredBlock49Block86Stack1.
            recoveredBlock49Block86PC := 114.
        ].
        recoveredBlock49Block86Step = 114 ifTrue: [
            recoveredBlock49Block86Stack1 := nil.
            recoveredBlock49Block86PC := 115.
        ].
        recoveredBlock49Block86Step = 115 ifTrue: [
            recoveredBlock49Block86Stack2 := recoveredLocal1.
            recoveredBlock49Block86PC := 118.
        ].
        recoveredBlock49Block86Step = 118 ifTrue: [
            recoveredBlock49Block86Stack3 := recoveredBlock49Block86Arg1.
            recoveredBlock49Block86PC := 119.
        ].
        recoveredBlock49Block86Step = 119 ifTrue: [
            recoveredBlock49Block86Stack3 := (recoveredBlock49Block86Stack3) timeStamp.
            recoveredBlock49Block86PC := 121.
        ].
        recoveredBlock49Block86Step = 121 ifTrue: [
            recoveredBlock49Block86Stack2 := (recoveredBlock49Block86Stack2) includes: (recoveredBlock49Block86Stack3).
            recoveredBlock49Block86PC := 123.
        ].
        recoveredBlock49Block86Step = 123 ifTrue: [
            (recoveredBlock49Block86Stack2) ifTrue: [recoveredBlock49Block86PC := 171] ifFalse: [recoveredBlock49Block86PC := 126].
        ].
        recoveredBlock49Block86Step = 126 ifTrue: [
            recoveredBlock49Block86PC := 127.
        ].
        recoveredBlock49Block86Step = 127 ifTrue: [
            recoveredBlock49Block86Stack1 := recoveredLocal1.
            recoveredBlock49Block86PC := 130.
        ].
        recoveredBlock49Block86Step = 130 ifTrue: [
            recoveredBlock49Block86Stack2 := recoveredBlock49Block86Arg1.
            recoveredBlock49Block86PC := 131.
        ].
        recoveredBlock49Block86Step = 131 ifTrue: [
            recoveredBlock49Block86Stack2 := (recoveredBlock49Block86Stack2) timeStamp.
            recoveredBlock49Block86PC := 133.
        ].
        recoveredBlock49Block86Step = 133 ifTrue: [
            (recoveredBlock49Block86Stack1) add: (recoveredBlock49Block86Stack2).
            recoveredBlock49Block86PC := 135.
        ].
        recoveredBlock49Block86Step = 135 ifTrue: [
            recoveredBlock49Block86Stack1 := recoveredBlock49Block86Arg1.
            recoveredBlock49Block86PC := 136.
        ].
        recoveredBlock49Block86Step = 136 ifTrue: [
            recoveredBlock49Block86Stack1 := (recoveredBlock49Block86Stack1) allPossibleSubApplications.
            recoveredBlock49Block86PC := 138.
        ].
        recoveredBlock49Block86Step = 138 ifTrue: [
            recoveredBlock49Block86Stack2 := [:recoveredBlock49Block86Block138Arg1 | 
    | recoveredBlock49Block86Block138Stack0 recoveredBlock49Block86Block138Stack1 recoveredBlock49Block86Block138Stack2 recoveredBlock49Block86Block138Stack3 recoveredBlock49Block86Block138Stack4 recoveredBlock49Block86Block138PC recoveredBlock49Block86Block138Step recoveredBlock49Block86Block138Done recoveredBlock49Block86Block138Result |
    recoveredBlock49Block86Block138Stack0 := nil.
    recoveredBlock49Block86Block138PC := 144.
    recoveredBlock49Block86Block138Done := false.
    [recoveredBlock49Block86Block138Done not] whileTrue: [
        recoveredBlock49Block86Block138Step := recoveredBlock49Block86Block138PC.
        recoveredBlock49Block86Block138Step = 144 ifTrue: [
            recoveredBlock49Block86Block138Stack1 := recoveredLocal2.
            recoveredBlock49Block86Block138PC := 147.
        ].
        recoveredBlock49Block86Block138Step = 147 ifTrue: [
            recoveredBlock49Block86Block138Stack2 := recoveredBlock49Block86Block138Arg1.
            recoveredBlock49Block86Block138PC := 148.
        ].
        recoveredBlock49Block86Block138Step = 148 ifTrue: [
            recoveredBlock49Block86Block138Stack2 := (recoveredBlock49Block86Block138Stack2) symbol.
            recoveredBlock49Block86Block138PC := 150.
        ].
        recoveredBlock49Block86Block138Step = 150 ifTrue: [
            recoveredBlock49Block86Block138Stack3 := [
    | block280057acValue0 block280057acValue1 |
    block280057acValue0 := Set.
    block280057acValue1 := (block280057acValue0) new.
    block280057acValue1
].
            recoveredBlock49Block86Block138PC := 152.
        ].
        recoveredBlock49Block86Block138Step = 152 ifTrue: [
            recoveredBlock49Block86Block138PC := 161.
        ].
        recoveredBlock49Block86Block138Step = 161 ifTrue: [
            recoveredBlock49Block86Block138Stack1 := (recoveredBlock49Block86Block138Stack1) at: (recoveredBlock49Block86Block138Stack2) ifAbsentPut: (recoveredBlock49Block86Block138Stack3).
            recoveredBlock49Block86Block138PC := 163.
        ].
        recoveredBlock49Block86Block138Step = 163 ifTrue: [
            recoveredBlock49Block86Block138Stack2 := recoveredBlock49Block86Block138Arg1.
            recoveredBlock49Block86Block138PC := 164.
        ].
        recoveredBlock49Block86Block138Step = 164 ifTrue: [
            recoveredBlock49Block86Block138Stack2 := (recoveredBlock49Block86Block138Stack2) timeStamp.
            recoveredBlock49Block86Block138PC := 166.
        ].
        recoveredBlock49Block86Block138Step = 166 ifTrue: [
            recoveredBlock49Block86Block138Stack1 := (recoveredBlock49Block86Block138Stack1) add: (recoveredBlock49Block86Block138Stack2).
            recoveredBlock49Block86Block138PC := 168.
        ].
        recoveredBlock49Block86Block138Step = 168 ifTrue: [
            recoveredBlock49Block86Block138Result := recoveredBlock49Block86Block138Stack1.
            recoveredBlock49Block86Block138Done := true.
        ].
    ].
    recoveredBlock49Block86Block138Result
].
            recoveredBlock49Block86PC := 169.
        ].
        recoveredBlock49Block86Step = 169 ifTrue: [
            recoveredBlock49Block86Stack1 := (recoveredBlock49Block86Stack1) do: (recoveredBlock49Block86Stack2).
            recoveredBlock49Block86PC := 171.
        ].
        recoveredBlock49Block86Step = 171 ifTrue: [
            recoveredBlock49Block86Result := recoveredBlock49Block86Stack1.
            recoveredBlock49Block86Done := true.
        ].
    ].
    recoveredBlock49Block86Result
].
            recoveredBlock49PC := 172.
        ].
        recoveredBlock49Step = 172 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) do: (recoveredBlock49Stack2).
            recoveredBlock49PC := 174.
        ].
        recoveredBlock49Step = 174 ifTrue: [
            recoveredBlock49Result := recoveredBlock49Stack1.
            recoveredBlock49Done := true.
        ].
    ].
    recoveredBlock49Result
].
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack1 := [:recoveredBlock180Arg1 | 
    | recoveredBlock180Value0 recoveredBlock180Value1 recoveredBlock180Value2 recoveredBlock180Value3 recoveredBlock180Value4 recoveredBlock180Value5 recoveredBlock180Value6 recoveredBlock180Value7 |
    recoveredBlock180Value0 := Application.
    recoveredBlock180Value1 := recoveredBlock180Arg1.
    recoveredBlock180Value2 := (recoveredBlock180Value1) key.
    recoveredBlock180Value3 := recoveredBlock180Arg1.
    recoveredBlock180Value4 := (recoveredBlock180Value3) value.
    recoveredBlock180Value5 := recoveredArg3.
    recoveredBlock180Value6 := recoveredArg4.
    recoveredBlock180Value7 := (recoveredBlock180Value0) moveAllVersionsOf: (recoveredBlock180Value2) in: (recoveredBlock180Value4) from: (recoveredBlock180Value5) to: (recoveredBlock180Value6).
    recoveredBlock180Value7
].
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            (recoveredStack0) associationsDo: (recoveredStack1).
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack1 := [:recoveredBlock209Arg1 | 
    | recoveredBlock209Value0 recoveredBlock209Value1 recoveredBlock209Value2 recoveredBlock209Value3 recoveredBlock209Value4 recoveredBlock209Value5 recoveredBlock209Value6 recoveredBlock209Value7 |
    recoveredBlock209Value0 := SubApplication.
    recoveredBlock209Value1 := recoveredBlock209Arg1.
    recoveredBlock209Value2 := (recoveredBlock209Value1) key.
    recoveredBlock209Value3 := recoveredBlock209Arg1.
    recoveredBlock209Value4 := (recoveredBlock209Value3) value.
    recoveredBlock209Value5 := recoveredArg3.
    recoveredBlock209Value6 := recoveredArg4.
    recoveredBlock209Value7 := (recoveredBlock209Value0) moveAllVersionsOf: (recoveredBlock209Value2) in: (recoveredBlock209Value4) from: (recoveredBlock209Value5) to: (recoveredBlock209Value6).
    recoveredBlock209Value7
].
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            (recoveredStack0) associationsDo: (recoveredStack1).
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack1 := [:recoveredBlock239Arg1 | 
    | recoveredBlock239Value0 recoveredBlock239Value1 recoveredBlock239Value2 recoveredBlock239Value3 recoveredBlock239Value4 recoveredBlock239Value5 recoveredBlock239Value6 recoveredBlock239Value7 |
    recoveredBlock239Value0 := recoveredBlock239Arg1.
    recoveredBlock239Value1 := recoveredArg3.
    recoveredBlock239Value2 := recoveredArg4.
    recoveredBlock239Value3 := Dictionary.
    recoveredBlock239Value4 := (recoveredBlock239Value3) new.
    recoveredBlock239Value5 := Dictionary.
    recoveredBlock239Value6 := (recoveredBlock239Value5) new.
    recoveredBlock239Value7 := (recoveredBlock239Value0) moveFrom: (recoveredBlock239Value1) to: (recoveredBlock239Value2) withApps: (false) skipAppsIn: (recoveredBlock239Value4) skipSubAppsIn: (recoveredBlock239Value6) options: (#()).
    recoveredBlock239Value7
].
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            (recoveredStack0) becomeDefault.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

