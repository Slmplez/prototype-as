"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"lib.ic method 0x200000a8; bytecode file offset 0x3c100"
!EmConfigurationMap methodsFor: 'recovered'!
beenLoaded: recoveredArg1
    ^self
! !

"lib.ic method 0x2000015c; bytecode file offset 0x3c21c"
!EmConfigurationMap methodsFor: 'recovered'!
signatureForLogging
    | recoveredValue0 |
    recoveredValue0 := (self) signature.
    ^recoveredValue0
! !

"lib.ic method 0x200007f4; bytecode file offset 0x3c824"
!EmConfigurationMap methodsFor: 'recovered'!
load
    | recoveredValue0 |
    recoveredValue0 := (self) loadWithTracing: (false).
    ^recoveredValue0
! !

"lib.ic method 0x20000800; bytecode file offset 0x3c824"
!EmConfigurationMap methodsFor: 'recovered'!
loadWithRequiredMaps
    | recoveredValue0 |
    recoveredValue0 := (self) loadWithRequiredMapsAndTracing: (false).
    ^recoveredValue0
! !

"lib.ic method 0x20000908; bytecode file offset 0x3cba0"
!EmConfigurationMap methodsFor: 'recovered'!
versionName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) timeStamp.
    recoveredValue1 := (recoveredValue0) versionName.
    ^recoveredValue1
! !

"lib.ic method 0x200009a8; bytecode file offset 0x3cba0"
!EmConfigurationMap methodsFor: 'recovered'!
previousTimeStamp
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) configurationRecord.
    recoveredValue1 := (recoveredValue0) previousTimeStamp.
    ^recoveredValue1
! !

"lib.ic method 0x20000a58; bytecode file offset 0x3cba0"
!EmConfigurationMap methodsFor: 'recovered'!
isVersion
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) timeStamp.
    recoveredValue1 := (recoveredValue0) isVersion.
    ^recoveredValue1
! !

"lib.ic method 0x20000ab8; bytecode file offset 0x3cba0"
!EmConfigurationMap methodsFor: 'recovered'!
hash
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) timeStamp.
    recoveredValue1 := (recoveredValue0) hash.
    ^recoveredValue1
! !

"lib.ic method 0x20000ad8; bytecode file offset 0x3cba0"
!EmConfigurationMap methodsFor: 'recovered'!
isEdition
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) timeStamp.
    recoveredValue1 := (recoveredValue0) isEdition.
    ^recoveredValue1
! !

"lib.ic method 0x20001c24; bytecode file offset 0x3dc50"
!EmConfigurationMap methodsFor: 'recovered'!
forgettableLocalFields
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) inheritedUserFieldAt: ('forgettableLocalFields').
    recoveredValue1 := (recoveredValue0) subStrings.
    ^recoveredValue1
! !

"lib.ic method 0x20002268; bytecode file offset 0x3e2b0"
!EmConfigurationMap methodsFor: 'recovered'!
applicationNames
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) configurationRecord.
    recoveredValue1 := (recoveredValue0) applicationEditions.
    recoveredValue2 := (recoveredValue1) keys.
    recoveredValue3 := (recoveredValue2) asSortedCollection.
    ^recoveredValue3
! !

"lib.ic method 0x20002300; bytecode file offset 0x3e340"
!EmConfigurationMap methodsFor: 'recovered'!
name
    | recoveredValue0 |
    recoveredValue0 := name.
    ^recoveredValue0
! !

"lib.ic method 0x200023a0; bytecode file offset 0x3e3d0"
!EmConfigurationMap methodsFor: 'recovered'!
timeStamp
    | recoveredValue0 |
    recoveredValue0 := timeStamp.
    ^recoveredValue0
! !

"lib.ic method 0x20003018; bytecode file offset 0x3f040"
!EmConfigurationMap methodsFor: 'recovered'!
initializePrivileges
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    privileges := recoveredValue1.
    ^self
! !

"lib.ic method 0x20003048; bytecode file offset 0x3f088"
!EmConfigurationMap methodsFor: 'recovered'!
configurationRecord
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := EmLibrary.
    recoveredValue1 := (recoveredValue0) cache.
    recoveredValue2 := (recoveredValue1) mapEditionRecordFor: (self).
    ^recoveredValue2
! !

"lib.ic method 0x20003250; bytecode file offset 0x3f280"
!EmConfigurationMap methodsFor: 'recovered'!
signature
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) name.
    recoveredValue1 := (self) timeStamp.
    recoveredValue2 := (recoveredValue1) signature.
    recoveredValue3 := (recoveredValue0) , (recoveredValue2).
    ^recoveredValue3
! !

"lib.ic method 0x200035b4; bytecode file offset 0x3f5dc"
!EmConfigurationMap methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) signature.
    (recoveredValue0) nextPutAll: (recoveredValue1).
    ^self
! !

"lib.ic method 0x20003a40; bytecode file offset 0x3fa70"
!EmConfigurationMap methodsFor: 'recovered'!
applicationEditions
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EmLibrary.
    recoveredValue1 := (recoveredValue0) cache.
    recoveredValue2 := (recoveredValue1) applicationEditionsFor: (self).
    recoveredValue3 := (recoveredValue2) asDictionary.
    ^recoveredValue3
! !

"lib.ic method 0x20003b08; bytecode file offset 0x3fb80"
!EmConfigurationMap methodsFor: 'recovered'!
localUserFieldNames
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EmLibrary.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) operationsInterface.
    recoveredValue3 := (recoveredValue2) configMapLocalUserFieldNamesFor: (self).
    ^recoveredValue3
! !

"lib.ic method 0x20003b50; bytecode file offset 0x3fb80"
!EmConfigurationMap methodsFor: 'recovered'!
inheritedUserFieldNames
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EmLibrary.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) operationsInterface.
    recoveredValue3 := (recoveredValue2) configMapInheritedUserFieldNamesFor: (self).
    ^recoveredValue3
! !

"lib.ic method 0x200040b4; bytecode file offset 0x400d4"
!EmConfigurationMap methodsFor: 'recovered'!
named: recoveredArg1 timeStamp: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    name := recoveredValue0.
    recoveredValue1 := recoveredArg2.
    timeStamp := recoveredValue1.
    ^self
! !

"lib.ic method 0x2000473c; bytecode file offset 0x4077c"
!EmConfigurationMap methodsFor: 'recovered'!
relocateRecordWith: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) configurationRecordClass.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) for: (self) relocateUsing: (recoveredValue2).
    ^self
! !

"lib.ic method 0x20004750; bytecode file offset 0x4077c"
!EmConfigurationMap methodsFor: 'recovered'!
updateRecordWith: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) configurationRecordClass.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) for: (self) updateUsing: (recoveredValue2).
    ^self
! !

"lib.ic method 0x200047b4; bytecode file offset 0x407fc"
!EmConfigurationMap methodsFor: 'recovered'!
primManager: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    manager := recoveredValue0.
    ^self
! !

"lib.ic method 0x200047f0; bytecode file offset 0x40838"
!EmConfigurationMap methodsFor: 'recovered'!
timeStamp: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    timeStamp := recoveredValue0.
    ^self
! !

"lib.ic method 0x20004b3c; bytecode file offset 0x40b90"
!EmConfigurationMap methodsFor: 'recovered'!
userHasRightTo: recoveredArg1 for: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue1) with: (recoveredValue2).
    recoveredValue4 := (self) userHasRightTo: (recoveredValue0) forEachIn: (recoveredValue3).
    ^recoveredValue4
! !

"lib.ic method 0x20004ba0; bytecode file offset 0x40bc8"
!EmConfigurationMap methodsFor: 'recovered'!
moveFrom: recoveredArg1 to: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) moveFrom: (recoveredValue0) to: (recoveredValue1) options: (#()).
    ^recoveredValue2
! !

"lib.ic method 0x20004c68; bytecode file offset 0x40c90"
!EmConfigurationMap methodsFor: 'recovered'!
asAssociation
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Association.
    recoveredValue1 := name.
    recoveredValue2 := timeStamp.
    recoveredValue3 := (recoveredValue0) key: (recoveredValue1) value: (recoveredValue2).
    ^recoveredValue3
! !

"lib.ic method 0x20004f7c; bytecode file offset 0x41084"
!EmConfigurationMap methodsFor: 'recovered'!
inheritedUserFieldAt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := EmLibrary.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) operationsInterface.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue2) configMapInheritedUserFieldAtFor: (self) atName: (recoveredValue3).
    ^recoveredValue4
! !

"lib.ic method 0x20004ff4; bytecode file offset 0x41084"
!EmConfigurationMap methodsFor: 'recovered'!
inheritedUserFieldRecordAt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := EmLibrary.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) operationsInterface.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue2) configMapInheritedUserFieldRecordAtFor: (self) atName: (recoveredValue3).
    ^recoveredValue4
! !

"lib.ic method 0x20005024; bytecode file offset 0x41084"
!EmConfigurationMap methodsFor: 'recovered'!
localUserFieldAt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := EmLibrary.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) operationsInterface.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue2) configMapLocalUserFieldAtFor: (self) atName: (recoveredValue3).
    ^recoveredValue4
! !

"lib.ic method 0x2000507c; bytecode file offset 0x4113c"
!EmConfigurationMap methodsFor: 'recovered'!
deleteInheritedUserFieldAt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EmLibrary.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) operationsInterface.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) configMapDeleteInheritedUserFieldAtFor: (self) atName: (recoveredValue3).
    ^self
! !

"lib.ic method 0x2000510c; bytecode file offset 0x4113c"
!EmConfigurationMap methodsFor: 'recovered'!
deleteLocalUserFieldAt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EmLibrary.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) operationsInterface.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) configMapDeleteLocalUserFieldAtFor: (self) atName: (recoveredValue3).
    ^self
! !

"lib.ic method 0x20005534; bytecode file offset 0x4157c"
!EmConfigurationMap methodsFor: 'recovered'!
withAllPossibleRequiredMaps
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) with: (self).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) allPossibleRequiredMaps.
    (recoveredValue2) addAll: (recoveredValue3).
    ^recoveredValue1
! !

"lib.ic method 0x20005590; bytecode file offset 0x41650"
!EmConfigurationMap methodsFor: 'recovered'!
description
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EmImageSupport.
    recoveredValue1 := (recoveredValue0) textFilter.
    recoveredValue2 := (self) localUserFieldAt: ('description').
    recoveredValue3 := (recoveredValue1) filter: (recoveredValue2).
    ^recoveredValue3
! !

"lib.ic method 0x20005600; bytecode file offset 0x41650"
!EmConfigurationMap methodsFor: 'recovered'!
comment
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EmImageSupport.
    recoveredValue1 := (recoveredValue0) textFilter.
    recoveredValue2 := (self) inheritedUserFieldAt: ('comment').
    recoveredValue3 := (recoveredValue1) filter: (recoveredValue2).
    ^recoveredValue3
! !

"lib.ic method 0x2000566c; bytecode file offset 0x41690"
!EmConfigurationMap methodsFor: 'recovered'!
forgetCachedValues
    manager := nil.
    shadows := nil.
    (self) initializePrivileges.
    ^self
! !

"lib.ic method 0x2000736c; bytecode file offset 0x43398"
!EmConfigurationMap methodsFor: 'recovered'!
moveFrom: recoveredArg1 to: recoveredArg2 options: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := Dictionary.
    recoveredValue3 := (recoveredValue2) new.
    recoveredValue4 := Dictionary.
    recoveredValue5 := (recoveredValue4) new.
    recoveredValue6 := recoveredArg3.
    recoveredValue7 := (self) moveFrom: (recoveredValue0) to: (recoveredValue1) withApps: (true) skipAppsIn: (recoveredValue3) skipSubAppsIn: (recoveredValue5) options: (recoveredValue6).
    ^recoveredValue7
! !

"lib.ic method 0x20007ae0; bytecode file offset 0x43b58"
!EmConfigurationMap methodsFor: 'recovered'!
localUserFieldAt: recoveredArg1 putRecord: recoveredArg2 userMustBeManagerTo: recoveredArg3 noUserError: recoveredArg4 ifUnable: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := EmLibrary.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) operationsInterface.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := recoveredArg3.
    recoveredValue6 := recoveredArg4.
    recoveredValue7 := recoveredArg5.
    (recoveredValue2) configMapLocalUserFieldAtPutRecordFor: (self) atName: (recoveredValue3) putRecord: (recoveredValue4) userMustBeManagerTo: (recoveredValue5) noUserError: (recoveredValue6) ifUnable: (recoveredValue7).
    ^self
! !

"lib.ic method 0x20007af8; bytecode file offset 0x43b58"
!EmConfigurationMap methodsFor: 'recovered'!
localUserFieldAt: recoveredArg1 put: recoveredArg2 userMustBeManagerTo: recoveredArg3 noUserError: recoveredArg4 ifUnable: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := EmLibrary.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) operationsInterface.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := recoveredArg3.
    recoveredValue6 := recoveredArg4.
    recoveredValue7 := recoveredArg5.
    (recoveredValue2) configMapLocalUserFieldAtPutFor: (self) atName: (recoveredValue3) put: (recoveredValue4) userMustBeManagerTo: (recoveredValue5) noUserError: (recoveredValue6) ifUnable: (recoveredValue7).
    ^self
! !

"lib.ic method 0x20008268; bytecode file offset 0x44298"
!EmConfigurationMap methodsFor: 'recovered'!
shadowApplications
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := shadows.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := EmLibrary.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) default.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) operationsInterface.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) configMapShadowApplicationsFor: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            shadows := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := shadows.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"lib.ic method 0x20008744; bytecode file offset 0x44774"
!EmConfigurationMap methodsFor: 'recovered'!
moveFrom: recoveredArg1 to: recoveredArg2 withApps: recoveredArg3 skipAppsIn: recoveredArg4 skipSubAppsIn: recoveredArg5 options: recoveredArg6
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := EmLibrary.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) operationsInterface.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := recoveredArg3.
    recoveredValue6 := recoveredArg4.
    recoveredValue7 := recoveredArg5.
    recoveredValue8 := recoveredArg6.
    recoveredValue9 := (recoveredValue2) moveConfigMap: (self) from: (recoveredValue3) to: (recoveredValue4) withApps: (recoveredValue5) skipAppsIn: (recoveredValue6) skipSubAppsIn: (recoveredValue7) options: (recoveredValue8).
    ^recoveredValue9
! !

"lib.ic method 0x20008940; bytecode file offset 0x44974"
!EmConfigurationMap methodsFor: 'recovered'!
manager
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := manager.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := EmUser.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := (recoveredStack3) configurationRecord.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := (recoveredStack3) manager.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) called: (recoveredStack3).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) primManager: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := manager.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"lib.ic method 0x20008a00; bytecode file offset 0x44a30"
!EmConfigurationMap methodsFor: 'recovered'!
newEdition
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EmLibrary.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) operationsInterface.
    recoveredValue3 := [
    ^nil
].
    (recoveredValue2) configMapNewEditionFor: (self) useApplicationEditions: (true) ifUnable: (recoveredValue3).
    ^self
! !

"lib.ic method 0x20009284; bytecode file offset 0x452e4"
!EmConfigurationMap methodsFor: 'recovered'!
inheritedUserFieldAt: recoveredArg1 put: recoveredArg2 userMustBeManagerTo: recoveredArg3 noUserError: recoveredArg4 mustBeEditionTo: recoveredArg5 withParms: recoveredArg6 ifUnable: recoveredArg7
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := EmLibrary.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) operationsInterface.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := recoveredArg3.
    recoveredValue6 := recoveredArg4.
    recoveredValue7 := recoveredArg5.
    recoveredValue8 := recoveredArg6.
    recoveredValue9 := recoveredArg7.
    (recoveredValue2) configMapInheritedUserFieldAtPutFor: (self) atName: (recoveredValue3) put: (recoveredValue4) userMustBeManagerTo: (recoveredValue5) noUserError: (recoveredValue6) mustBeEditionTo: (recoveredValue7) withParms: (recoveredValue8) ifUnable: (recoveredValue9).
    ^self
! !

"lib.ic method 0x2000929c; bytecode file offset 0x452e4"
!EmConfigurationMap methodsFor: 'recovered'!
inheritedUserFieldAt: recoveredArg1 putRecord: recoveredArg2 userMustBeManagerTo: recoveredArg3 noUserError: recoveredArg4 mustBeEditionTo: recoveredArg5 withParms: recoveredArg6 ifUnable: recoveredArg7
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := EmLibrary.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) operationsInterface.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := recoveredArg3.
    recoveredValue6 := recoveredArg4.
    recoveredValue7 := recoveredArg5.
    recoveredValue8 := recoveredArg6.
    recoveredValue9 := recoveredArg7.
    (recoveredValue2) configMapInheritedUserFieldAtPutRecordFor: (self) atName: (recoveredValue3) putRecord: (recoveredValue4) userMustBeManagerTo: (recoveredValue5) noUserError: (recoveredValue6) mustBeEditionTo: (recoveredValue7) withParms: (recoveredValue8) ifUnable: (recoveredValue9).
    ^self
! !

"lib.ic method 0x20009bd0; bytecode file offset 0x45c18"
!EmConfigurationMap methodsFor: 'recovered'!
requiredMapsConfigurations
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) configurationRecordClass.
    recoveredValue2 := (recoveredValue1) requiredMapsKey.
    recoveredValue3 := (self) inheritedUserFieldRecordAt: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := EmConfigurationMapLineups.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (recoveredValue5) filePointer.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (recoveredValue7) collection.
    recoveredValue9 := (recoveredValue4) using: (recoveredValue6) on: (recoveredValue8).
    recoveredValue10 := (recoveredValue9) asArray.
    recoveredValue11 := (recoveredValue10) reverse.
    ^recoveredValue11
! !

"lib.ic method 0x2000aa04; bytecode file offset 0x46a34"
!EmConfigurationMap methodsFor: 'recovered'!
hasValidLineup
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) requiredMapsConfigurations.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5Stack4 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := nil.
            recoveredBlock5PC := 13.
        ].
        recoveredBlock5Step = 13 ifTrue: [
            recoveredBlock5Stack2 := self.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            recoveredBlock5Stack3 := recoveredBlock5Arg1.
            recoveredBlock5PC := 15.
        ].
        recoveredBlock5Step = 15 ifTrue: [
            recoveredBlock5Stack3 := (recoveredBlock5Stack3) key.
            recoveredBlock5PC := 16.
        ].
        recoveredBlock5Step = 16 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) isExpressionValid: (recoveredBlock5Stack3).
            recoveredBlock5PC := 17.
        ].
        recoveredBlock5Step = 17 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 20] ifFalse: [recoveredBlock5PC := 23].
        ].
        recoveredBlock5Step = 20 ifTrue: [
            recoveredBlock5PC := 21.
        ].
        recoveredBlock5Step = 21 ifTrue: [
            recoveredBlock5Stack1 := true.
            recoveredBlock5PC := 22.
        ].
        recoveredBlock5Step = 22 ifTrue: [
            ^recoveredBlock5Stack1
        ].
        recoveredBlock5Step = 23 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^false
! !

"lib.ic method 0x2000afe0; bytecode file offset 0x47018"
!EmConfigurationMap methodsFor: 'recovered'!
withAllRequiredMaps
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) with: (self).
    recoveredValue2 := Array.
    recoveredValue3 := (recoveredValue2) with: (self).
    recoveredValue4 := [:recoveredBlock12Arg1 :recoveredBlock12Arg2 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 |
    recoveredBlock12Value0 := Association.
    recoveredBlock12Value1 := recoveredBlock12Arg1.
    recoveredBlock12Value2 := recoveredBlock12Arg2.
    recoveredBlock12Value3 := (recoveredBlock12Value0) key: (recoveredBlock12Value1) value: (recoveredBlock12Value2).
    ^recoveredBlock12Value3
].
    recoveredValue5 := (self) addRequiredMapsTo: (recoveredValue1) alreadySeen: (recoveredValue3) ifCycleDetected: (recoveredValue4).
    ^recoveredValue5
! !

"lib.ic method 0x2000b020; bytecode file offset 0x4705c"
!EmConfigurationMap methodsFor: 'recovered'!
allRequiredMaps
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := Array.
    recoveredValue3 := (recoveredValue2) with: (self).
    recoveredValue4 := [:recoveredBlock11Arg1 :recoveredBlock11Arg2 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 |
    recoveredBlock11Value0 := Association.
    recoveredBlock11Value1 := recoveredBlock11Arg1.
    recoveredBlock11Value2 := recoveredBlock11Arg2.
    recoveredBlock11Value3 := (recoveredBlock11Value0) key: (recoveredBlock11Value1) value: (recoveredBlock11Value2).
    ^recoveredBlock11Value3
].
    recoveredValue5 := (self) addRequiredMapsTo: (recoveredValue1) alreadySeen: (recoveredValue3) ifCycleDetected: (recoveredValue4).
    ^recoveredValue5
! !

"lib.ic method 0x2000b190; bytecode file offset 0x471b8"
!EmConfigurationMap methodsFor: 'recovered'!
description: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    ^false
].
    (self) localUserFieldAt: ('description') put: (recoveredValue0) userMustBeManagerTo: (253) noUserError: (252) ifUnable: (recoveredValue1).
    ^true
! !

"lib.ic method 0x2000b6cc; bytecode file offset 0x47700"
!EmConfigurationMap methodsFor: 'recovered'!
manager: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := EmLibrary.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) operationsInterface.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := [
    ^false
].
    (recoveredValue2) configMapManagerFor: (self) is: (recoveredValue3) ifUnable: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    (self) primManager: (recoveredValue5).
    ^true
! !

"lib.ic method 0x2000b780; bytecode file offset 0x477c8"
!EmConfigurationMap methodsFor: 'recovered'!
localUserFieldAt: recoveredArg1 put: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := EmLibrary.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) operationsInterface.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := [
    ^nil
].
    (recoveredValue2) configMapLocalUserFieldAtPutFor: (self) atName: (recoveredValue3) put: (recoveredValue4) userMustBeManagerTo: (nil) noUserError: (nil) ifUnable: (recoveredValue5).
    ^self
! !

"lib.ic method 0x2000b798; bytecode file offset 0x477c8"
!EmConfigurationMap methodsFor: 'recovered'!
localUserFieldAt: recoveredArg1 putRecord: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := EmLibrary.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) operationsInterface.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := [
    ^nil
].
    (recoveredValue2) configMapLocalUserFieldAtPutRecordFor: (self) atName: (recoveredValue3) putRecord: (recoveredValue4) userMustBeManagerTo: (nil) noUserError: (nil) ifUnable: (recoveredValue5).
    ^self
! !

"lib.ic method 0x2000b7d0; bytecode file offset 0x47800"
!EmConfigurationMap methodsFor: 'recovered'!
statusForPrivilege: recoveredArg1 is: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := EmLibrary.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) operationsInterface.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := [
    ^nil
].
    recoveredValue6 := (recoveredValue2) configMapStatusForPrivilegeIsFor: (self) privilege: (recoveredValue3) statusIs: (recoveredValue4) ifUnable: (recoveredValue5).
    privileges := recoveredValue6.
    ^self
! !

"lib.ic method 0x2000baa4; bytecode file offset 0x47ad0"
!EmConfigurationMap methodsFor: 'recovered'!
= recoveredArg1
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
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := recoveredArg1.
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
            (recoveredStack2) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := (recoveredStack3) name.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) timeStamp.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) timeStamp.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"lib.ic method 0x2000c330; bytecode file offset 0x48378"
!EmConfigurationMap methodsFor: 'recovered'!
inheritedUserFieldAt: recoveredArg1 putRecord: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := EmLibrary.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) operationsInterface.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := [
    ^nil
].
    (recoveredValue2) configMapInheritedUserFieldAtPutRecordFor: (self) atName: (recoveredValue3) putRecord: (recoveredValue4) userMustBeManagerTo: (nil) noUserError: (nil) mustBeEditionTo: (nil) withParms: (nil) ifUnable: (recoveredValue5).
    ^self
! !

"lib.ic method 0x2000c348; bytecode file offset 0x48378"
!EmConfigurationMap methodsFor: 'recovered'!
inheritedUserFieldAt: recoveredArg1 put: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := EmLibrary.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) operationsInterface.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := [
    ^nil
].
    (recoveredValue2) configMapInheritedUserFieldAtPutFor: (self) atName: (recoveredValue3) put: (recoveredValue4) userMustBeManagerTo: (nil) noUserError: (nil) mustBeEditionTo: (nil) withParms: (nil) ifUnable: (recoveredValue5).
    ^self
! !

"lib.ic method 0x2000c380; bytecode file offset 0x48410"
!EmConfigurationMap methodsFor: 'recovered'!
addRequiredMapsAsLast: recoveredArg1 for: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := EmLibrary.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) operationsInterface.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := [
    ^false
].
    (recoveredValue2) configMapAddRequiredMapsAsLastFor: (self) requiredMaps: (recoveredValue3) forExpr: (recoveredValue4) ifUnable: (recoveredValue5).
    requiredMaps := nil.
    ^true
! !

"lib.ic method 0x2000c398; bytecode file offset 0x48410"
!EmConfigurationMap methodsFor: 'recovered'!
moveRequiredMapsToFirst: recoveredArg1 for: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := EmLibrary.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) operationsInterface.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := [
    ^false
].
    (recoveredValue2) configMapMoveRequiredMapsToFirstFor: (self) requiredMaps: (recoveredValue3) forExpr: (recoveredValue4) ifUnable: (recoveredValue5).
    requiredMaps := nil.
    ^true
! !

"lib.ic method 0x2000c3b0; bytecode file offset 0x48410"
!EmConfigurationMap methodsFor: 'recovered'!
moveRequiredMapsToLast: recoveredArg1 for: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := EmLibrary.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) operationsInterface.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := [
    ^false
].
    (recoveredValue2) configMapMoveRequiredMapsToLastFor: (self) requiredMaps: (recoveredValue3) forExpr: (recoveredValue4) ifUnable: (recoveredValue5).
    requiredMaps := nil.
    ^true
! !

"lib.ic method 0x2000c3c8; bytecode file offset 0x48410"
!EmConfigurationMap methodsFor: 'recovered'!
deleteRequiredMaps: recoveredArg1 for: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := EmLibrary.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) operationsInterface.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := [
    ^false
].
    (recoveredValue2) configMapDeleteRequiredMapsFor: (self) requiredMaps: (recoveredValue3) forExpr: (recoveredValue4) ifUnable: (recoveredValue5).
    requiredMaps := nil.
    ^true
! !

"lib.ic method 0x2000c3e0; bytecode file offset 0x48410"
!EmConfigurationMap methodsFor: 'recovered'!
addRequiredMapsAsFirst: recoveredArg1 for: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := EmLibrary.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) operationsInterface.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := [
    ^false
].
    (recoveredValue2) configMapAddRequiredMapsAsFirstFor: (self) requiredMaps: (recoveredValue3) forExpr: (recoveredValue4) ifUnable: (recoveredValue5).
    requiredMaps := nil.
    ^true
! !

"lib.ic method 0x2000cf88; bytecode file offset 0x48fd0"
!EmConfigurationMap methodsFor: 'recovered'!
addRequiredMaps: recoveredArg1 after: recoveredArg2 for: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := EmLibrary.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) operationsInterface.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := recoveredArg3.
    recoveredValue6 := [
    ^false
].
    (recoveredValue2) configMapAddRequiredMapsAfterMapFor: (self) requiredMaps: (recoveredValue3) afterMap: (recoveredValue4) forExpr: (recoveredValue5) ifUnable: (recoveredValue6).
    requiredMaps := nil.
    ^true
! !

"lib.ic method 0x2000cfa0; bytecode file offset 0x48fd0"
!EmConfigurationMap methodsFor: 'recovered'!
replaceRequiredMap: recoveredArg1 with: recoveredArg2 for: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := EmLibrary.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) operationsInterface.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := recoveredArg3.
    recoveredValue6 := [
    ^false
].
    (recoveredValue2) configMapReplaceRequiredMapFor: (self) replaceMap: (recoveredValue3) withMap: (recoveredValue4) forExpr: (recoveredValue5) ifUnable: (recoveredValue6).
    requiredMaps := nil.
    ^true
! !

"lib.ic method 0x2000d3fc; bytecode file offset 0x49428"
!EmConfigurationMap methodsFor: 'recovered'!
comment: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    ^false
].
    (self) inheritedUserFieldAt: ('comment') put: (recoveredValue0) userMustBeManagerTo: (251) noUserError: (250) mustBeEditionTo: (295) withParms: (#()) ifUnable: (recoveredValue1).
    ^true
! !

"lib.ic method 0x2000e784; bytecode file offset 0x4a7ec"
!EmConfigurationMap methodsFor: 'recovered'!
checkVersionStatusUsing: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) existsInLibrary.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) isVersion.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) timeStamp.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) versionName.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) versionName: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 38.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) timeStamp.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := MxEMc22.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := (recoveredStack3) timeStamp.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := (recoveredStack3) printString.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) versionName: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2000ff08; bytecode file offset 0x4bf50"
!EmConfigurationMap methodsFor: 'recovered'!
shadowApplicationsWithoutVersionNames
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) applicationEditions.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 recoveredBlock11Value4 recoveredBlock11Value5 recoveredBlock11Value6 recoveredBlock11Value7 recoveredBlock11Value8 |
    recoveredBlock11Value0 := recoveredLocal1.
    recoveredBlock11Value1 := Application.
    recoveredBlock11Value2 := (recoveredBlock11Value1) shadowClass.
    recoveredBlock11Value3 := recoveredBlock11Arg1.
    recoveredBlock11Value4 := (recoveredBlock11Value3) key.
    recoveredBlock11Value5 := recoveredBlock11Arg1.
    recoveredBlock11Value6 := (recoveredBlock11Value5) value.
    recoveredBlock11Value7 := (recoveredBlock11Value2) named: (recoveredBlock11Value4) timeStampWithVersionInfo: (recoveredBlock11Value6).
    recoveredBlock11Value8 := (recoveredBlock11Value0) add: (recoveredBlock11Value7).
    recoveredBlock11Value8
].
    (recoveredValue2) associationsDo: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"lib.ic method 0x2001043c; bytecode file offset 0x4c484"
!EmConfigurationMap methodsFor: 'recovered'!
deleteConfigurationExpression: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := EmLibrary.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) operationsInterface.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := [
    ^nil
].
    (recoveredValue2) configMapDeleteConfigExpressionFor: (self) expr: (recoveredValue3) ifUnable: (recoveredValue4).
    requiredMaps := nil.
    recoveredValue5 := System.
    recoveredValue6 := MxEMc24.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue7) storeString.
    recoveredValue9 := (self) signature.
    recoveredValue10 := (recoveredValue6) bindWith: (recoveredValue8) with: (recoveredValue9).
    (recoveredValue5) logConfigurationMapNotice: (recoveredValue10).
    ^self
! !

"lib.ic method 0x200125b0; bytecode file offset 0x4e5e0"
!EmConfigurationMap methodsFor: 'recovered'!
statusForPrivilege: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := privileges.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    | recoveredBlock9Local1 recoveredBlock9Value0 recoveredBlock9Value1 recoveredBlock9Value2 recoveredBlock9Value3 recoveredBlock9Value4 recoveredBlock9Value5 recoveredBlock9Value6 |
    recoveredBlock9Value0 := (self) configurationRecord.
    recoveredBlock9Value1 := recoveredBlock9Value0.
    recoveredBlock9Local1 := recoveredBlock9Value1.
    recoveredBlock9Value2 := (recoveredBlock9Value0) privilegesDictionary.
    privileges := recoveredBlock9Value2.
    recoveredBlock9Value3 := privileges.
    recoveredBlock9Value4 := recoveredArg1.
    recoveredBlock9Value5 := [
    | recoveredBlock9Block29Value0 recoveredBlock9Block29Value1 recoveredBlock9Block29Value2 |
    recoveredBlock9Block29Value0 := recoveredBlock9Local1.
    recoveredBlock9Block29Value1 := recoveredArg1.
    recoveredBlock9Block29Value2 := (recoveredBlock9Block29Value0) statusFor: (recoveredBlock9Block29Value1).
    recoveredBlock9Block29Value2
].
    recoveredBlock9Value6 := (recoveredBlock9Value3) at: (recoveredBlock9Value4) ifAbsent: (recoveredBlock9Value5).
    recoveredBlock9Value6
].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"lib.ic method 0x20013508; bytecode file offset 0x4f550"
!EmConfigurationMap methodsFor: 'recovered'!
unload
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := Set.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := (self) shadowApplications.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Stack0 recoveredBlock11Stack1 recoveredBlock11Stack2 recoveredBlock11Stack3 recoveredBlock11Stack4 recoveredBlock11PC recoveredBlock11Step recoveredBlock11Done recoveredBlock11Result |
    recoveredBlock11Stack0 := self.
    recoveredBlock11PC := 18.
    recoveredBlock11Done := false.
    [recoveredBlock11Done not] whileTrue: [
        recoveredBlock11Step := recoveredBlock11PC.
        recoveredBlock11Step = 18 ifTrue: [
            recoveredBlock11Stack1 := nil.
            recoveredBlock11PC := 19.
        ].
        recoveredBlock11Step = 19 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 20.
        ].
        recoveredBlock11Step = 20 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) residentApplication.
            recoveredBlock11PC := 21.
        ].
        recoveredBlock11Step = 21 ifTrue: [
            recoveredBlock11Stack3 := recoveredBlock11Stack2.
            recoveredBlock11PC := 22.
        ].
        recoveredBlock11Step = 22 ifTrue: [
            recoveredLocal1 := recoveredBlock11Stack3.
            recoveredBlock11PC := 25.
        ].
        recoveredBlock11Step = 25 ifTrue: [
            (recoveredBlock11Stack2 == nil) ifTrue: [recoveredBlock11PC := 37] ifFalse: [recoveredBlock11PC := 28].
        ].
        recoveredBlock11Step = 28 ifTrue: [
            recoveredBlock11PC := 29.
        ].
        recoveredBlock11Step = 29 ifTrue: [
            recoveredBlock11Stack1 := recoveredLocal2.
            recoveredBlock11PC := 32.
        ].
        recoveredBlock11Step = 32 ifTrue: [
            recoveredBlock11Stack2 := recoveredLocal1.
            recoveredBlock11PC := 35.
        ].
        recoveredBlock11Step = 35 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) add: (recoveredBlock11Stack2).
            recoveredBlock11PC := 37.
        ].
        recoveredBlock11Step = 37 ifTrue: [
            recoveredBlock11Result := recoveredBlock11Stack1.
            recoveredBlock11Done := true.
        ].
    ].
    recoveredBlock11Result
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := EmClassDevelopment.
    recoveredValue5 := (recoveredValue4) imageBuilder.
    recoveredValue6 := recoveredLocal2.
    recoveredValue7 := (recoveredValue5) removeApplications: (recoveredValue6).
    recoveredValue8 := (recoveredValue7) isEmpty.
    ^recoveredValue8
! !

"lib.ic method 0x2001453c; bytecode file offset 0x50584"
!EmConfigurationMap methodsFor: 'recovered'!
isExpressionValid: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) globalNamespace.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 'Compiler'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) classAt: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) storeString.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 55] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := 'System vmType = '.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := System.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := (recoveredStack3) image.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := (recoveredStack3) vmType.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := (recoveredStack3) storeString.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 55] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) evaluate: (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"lib.ic method 0x20014ae0; bytecode file offset 0x50b3c"
!EmConfigurationMap methodsFor: 'recovered'!
salvageFromLibrary
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
            recoveredStack2 := MxEMc29.
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
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) configurationRecordClass.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) timeStamp.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) salvage: (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := MxEMc19.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := (recoveredStack2) signature.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := 'Salvaged the purged edition of the configuration map %1.'.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := (recoveredStack2) signature.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) logNotice: (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20015488; bytecode file offset 0x514dc"
!EmConfigurationMap methodsFor: 'recovered'!
addConfigurationExpression: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
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
            recoveredStack2 := MxEMc150.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) error: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := EmLibrary.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) default.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) operationsInterface.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack4 := [
    ^nil
].
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) configMapAddConfigExpressionFor: (recoveredStack2) newExpr: (recoveredStack3) ifUnable: (recoveredStack4).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            requiredMaps := recoveredStack1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := MxEMc21.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := (recoveredStack3) storeString.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack4 := (recoveredStack4) signature.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack1) logConfigurationMapNotice: (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2001556c; bytecode file offset 0x515c4"
!EmConfigurationMap methodsFor: 'recovered'!
requiredMaps
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := requiredMaps.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 10].
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
            requiredMaps := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) requiredMapsConfigurations.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := [:recoveredBlock17Arg1 | 
    | recoveredBlock17Value0 recoveredBlock17Value1 recoveredBlock17Value2 |
    recoveredBlock17Value0 := recoveredBlock17Arg1.
    recoveredBlock17Value1 := (recoveredBlock17Value0) key.
    recoveredBlock17Value2 := (self) isExpressionValid: (recoveredBlock17Value1).
    recoveredBlock17Value2
].
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := requiredMaps.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := EmLibrary.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := (recoveredStack2) default.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := (recoveredStack2) operationsInterface.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := (recoveredStack3) class.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack4 := (recoveredStack4) value.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := (recoveredStack2) configMapShadowsForNamesAndTimeStampsFor: (recoveredStack3) namesAndTimeStamps: (recoveredStack4).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack1) addAll: (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := requiredMaps.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"lib.ic method 0x20016bac; bytecode file offset 0x52c14"
!EmConfigurationMap methodsFor: 'recovered'!
purgeFromLibrary
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
            recoveredStack2 := MxEMc26.
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
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) configurationRecordClass.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) timeStamp.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) purge: (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := MxEMc27.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := (recoveredStack2) signature.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := EmLibraryCache.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) current.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) flushEntriesForMapNamed: (recoveredStack1).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := 'Purged the configuration map %1.'.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := (recoveredStack2) signature.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) logNotice: (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20017c78; bytecode file offset 0x53cd4"
!EmConfigurationMap methodsFor: 'recovered'!
removeApplication: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'deleteApplications'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) userHasRightTo: (recoveredStack1) for: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := EmImageSupport.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorReporter.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 204.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := (recoveredStack3) signature.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack4 := (recoveredStack4) signature.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) logError: (recoveredStack1) withParms: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := EmLibrary.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) operationsInterface.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := [
    ^false
].
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) configMapRemoveApplicationFor: (recoveredStack1) application: (recoveredStack2) ifUnable: (recoveredStack3).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) shadowApplications.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0) remove: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20017d04; bytecode file offset 0x53d64"
!EmConfigurationMap methodsFor: 'recovered'!
versionName: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) shadowApplications.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block28004bdcArg1 | 
    | block28004bdcValue0 block28004bdcValue1 |
    block28004bdcValue0 := block28004bdcArg1.
    block28004bdcValue1 := (block28004bdcValue0) isVersion.
    block28004bdcValue1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) conform: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 37] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := EmImageSupport.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorReporter.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := 73.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := (recoveredStack3) signature.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) reportError: (recoveredStack1) withParms: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := EmLibrary.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) operationsInterface.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := [
    ^false
].
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) configMapVersionNameFor: (recoveredStack1) versionName: (recoveredStack2) ifUnable: (recoveredStack3).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) timeStamp.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0) versionName: (recoveredStack1).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20019084; bytecode file offset 0x550d8"
!EmConfigurationMap methodsFor: 'recovered'!
copyConfigurationExpression: recoveredArg1 toCreate: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) containsByteCharacters.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) containsByteCharacters.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 25] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := MxEMc150.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) error: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := EmLibrary.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) default.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) operationsInterface.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack5 := [
    ^nil
].
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) configMapCopyConfigExpressionFor: (recoveredStack2) copyExpr: (recoveredStack3) toCreate: (recoveredStack4) ifUnable: (recoveredStack5).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            requiredMaps := recoveredStack1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := MxEMc23.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := (recoveredStack3) storeString.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack4 := (recoveredStack4) storeString.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack5 := (recoveredStack5) signature.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack1) logConfigurationMapNotice: (recoveredStack2).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2001a298; bytecode file offset 0x562ec"
!EmConfigurationMap methodsFor: 'recovered'!
areApplicationsLoaded
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) applicationEditions.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Local1 recoveredBlock19Stack0 recoveredBlock19Stack1 recoveredBlock19Stack2 recoveredBlock19Stack3 recoveredBlock19Stack4 recoveredBlock19PC recoveredBlock19Step recoveredBlock19Done recoveredBlock19Result |
    recoveredBlock19Stack0 := self.
    recoveredBlock19PC := 26.
    recoveredBlock19Done := false.
    [recoveredBlock19Done not] whileTrue: [
        recoveredBlock19Step := recoveredBlock19PC.
        recoveredBlock19Step = 26 ifTrue: [
            recoveredBlock19Stack1 := System.
            recoveredBlock19PC := 28.
        ].
        recoveredBlock19Step = 28 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) image.
            recoveredBlock19PC := 29.
        ].
        recoveredBlock19Step = 29 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) globalNamespace.
            recoveredBlock19PC := 31.
        ].
        recoveredBlock19Step = 31 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Arg1.
            recoveredBlock19PC := 32.
        ].
        recoveredBlock19Step = 32 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) key.
            recoveredBlock19PC := 34.
        ].
        recoveredBlock19Step = 34 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) asSymbol.
            recoveredBlock19PC := 36.
        ].
        recoveredBlock19Step = 36 ifTrue: [
            recoveredBlock19Stack3 := [
    ^false
].
            recoveredBlock19PC := 44.
        ].
        recoveredBlock19Step = 44 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) at: (recoveredBlock19Stack2) ifAbsent: (recoveredBlock19Stack3).
            recoveredBlock19PC := 46.
        ].
        recoveredBlock19Step = 46 ifTrue: [
            recoveredBlock19Local1 := recoveredBlock19Stack1.
            recoveredBlock19PC := 47.
        ].
        recoveredBlock19Step = 47 ifTrue: [
            recoveredBlock19Stack1 := System.
            recoveredBlock19PC := 49.
        ].
        recoveredBlock19Step = 49 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) image.
            recoveredBlock19PC := 50.
        ].
        recoveredBlock19Step = 50 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) loadedApplications.
            recoveredBlock19PC := 52.
        ].
        recoveredBlock19Step = 52 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Local1.
            recoveredBlock19PC := 53.
        ].
        recoveredBlock19Step = 53 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) includes: (recoveredBlock19Stack2).
            recoveredBlock19PC := 55.
        ].
        recoveredBlock19Step = 55 ifTrue: [
            (recoveredBlock19Stack1) ifTrue: [recoveredBlock19PC := 60] ifFalse: [recoveredBlock19PC := 58].
        ].
        recoveredBlock19Step = 58 ifTrue: [
            recoveredBlock19Stack1 := false.
            recoveredBlock19PC := 59.
        ].
        recoveredBlock19Step = 59 ifTrue: [
            ^recoveredBlock19Stack1
        ].
        recoveredBlock19Step = 60 ifTrue: [
            recoveredBlock19Stack1 := nil.
            recoveredBlock19PC := 61.
        ].
        recoveredBlock19Step = 61 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Local1.
            recoveredBlock19PC := 62.
        ].
        recoveredBlock19Step = 62 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) timeStamp.
            recoveredBlock19PC := 64.
        ].
        recoveredBlock19Step = 64 ifTrue: [
            recoveredBlock19Stack3 := recoveredBlock19Arg1.
            recoveredBlock19PC := 65.
        ].
        recoveredBlock19Step = 65 ifTrue: [
            recoveredBlock19Stack3 := (recoveredBlock19Stack3) value.
            recoveredBlock19PC := 67.
        ].
        recoveredBlock19Step = 67 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) = (recoveredBlock19Stack3).
            recoveredBlock19PC := 68.
        ].
        recoveredBlock19Step = 68 ifTrue: [
            (recoveredBlock19Stack2) ifTrue: [recoveredBlock19PC := 75] ifFalse: [recoveredBlock19PC := 72].
        ].
        recoveredBlock19Step = 72 ifTrue: [
            recoveredBlock19PC := 73.
        ].
        recoveredBlock19Step = 73 ifTrue: [
            recoveredBlock19Stack1 := false.
            recoveredBlock19PC := 74.
        ].
        recoveredBlock19Step = 74 ifTrue: [
            ^recoveredBlock19Stack1
        ].
        recoveredBlock19Step = 75 ifTrue: [
            recoveredBlock19Result := recoveredBlock19Stack1.
            recoveredBlock19Done := true.
        ].
    ].
    recoveredBlock19Result
].
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0) associationsDo: (recoveredStack1).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2001c1cc; bytecode file offset 0x5821c"
!EmConfigurationMap methodsFor: 'recovered'!
forgettableLocalFields: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 62.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := WriteStream.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := String.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := 50.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) new: (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := [:recoveredBlock36Arg1 | 
    | recoveredBlock36Value0 recoveredBlock36Value1 recoveredBlock36Value2 recoveredBlock36Value3 |
    recoveredBlock36Value0 := recoveredLocal2.
    recoveredBlock36Value1 := recoveredBlock36Value0.
    recoveredBlock36Value2 := recoveredBlock36Arg1.
    (recoveredBlock36Value1) nextPutAll: (recoveredBlock36Value2).
    recoveredBlock36Value3 := (recoveredBlock36Value0) space.
    recoveredBlock36Value3
].
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) contents.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := 'forgettableLocalFields'.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack3 := 255.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack4 := 254.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack6 := nil.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack7 := [
    ^false
].
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack0) inheritedUserFieldAt: (recoveredStack1) put: (recoveredStack2) userMustBeManagerTo: (recoveredStack3) noUserError: (recoveredStack4) mustBeEditionTo: (recoveredStack5) withParms: (recoveredStack6) ifUnable: (recoveredStack7).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2001fbbc; bytecode file offset 0x5bc24"
!EmConfigurationMap methodsFor: 'recovered'!
userHasRightTo: recoveredArg1 forEachIn: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := EmLibraryCache.
    recoveredValue1 := (recoveredValue0) current.
    recoveredValue2 := [
    | recoveredBlock7Local1 recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7Stack3 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
    recoveredBlock7Stack0 := self.
    recoveredBlock7PC := 14.
    recoveredBlock7Done := false.
    [recoveredBlock7Done not] whileTrue: [
        recoveredBlock7Step := recoveredBlock7PC.
        recoveredBlock7Step = 14 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) manager.
            recoveredBlock7PC := 15.
        ].
        recoveredBlock7Step = 15 ifTrue: [
            recoveredBlock7Stack1 := EmUser.
            recoveredBlock7PC := 17.
        ].
        recoveredBlock7Step = 17 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) current.
            recoveredBlock7PC := 18.
        ].
        recoveredBlock7Step = 18 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) = (recoveredBlock7Stack1).
            recoveredBlock7PC := 19.
        ].
        recoveredBlock7Step = 19 ifTrue: [
            (recoveredBlock7Stack0) ifTrue: [recoveredBlock7PC := 22] ifFalse: [recoveredBlock7PC := 24].
        ].
        recoveredBlock7Step = 22 ifTrue: [
            recoveredBlock7Stack0 := true.
            recoveredBlock7PC := 23.
        ].
        recoveredBlock7Step = 23 ifTrue: [
            ^recoveredBlock7Stack0
        ].
        recoveredBlock7Step = 24 ifTrue: [
            recoveredBlock7Stack0 := self.
            recoveredBlock7PC := 25.
        ].
        recoveredBlock7Step = 25 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) configurationRecord.
            recoveredBlock7PC := 27.
        ].
        recoveredBlock7Step = 27 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) privilegesDictionary.
            recoveredBlock7PC := 29.
        ].
        recoveredBlock7Step = 29 ifTrue: [
            privileges := recoveredBlock7Stack0.
            recoveredBlock7PC := 31.
        ].
        recoveredBlock7Step = 31 ifTrue: [
            recoveredBlock7Stack0 := nil.
            recoveredBlock7PC := 32.
        ].
        recoveredBlock7Step = 32 ifTrue: [
            recoveredBlock7Stack1 := self.
            recoveredBlock7PC := 33.
        ].
        recoveredBlock7Step = 33 ifTrue: [
            recoveredBlock7Stack2 := recoveredArg1.
            recoveredBlock7PC := 36.
        ].
        recoveredBlock7Step = 36 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) statusForPrivilege: (recoveredBlock7Stack2).
            recoveredBlock7PC := 38.
        ].
        recoveredBlock7Step = 38 ifTrue: [
            recoveredBlock7Stack2 := 'maporappmanager'.
            recoveredBlock7PC := 40.
        ].
        recoveredBlock7Step = 40 ifTrue: [
            (recoveredBlock7Stack1 ~~ recoveredBlock7Stack2) ifTrue: [recoveredBlock7PC := 113] ifFalse: [recoveredBlock7PC := 44].
        ].
        recoveredBlock7Step = 44 ifTrue: [
            recoveredBlock7PC := 45.
        ].
        recoveredBlock7Step = 45 ifTrue: [
            recoveredBlock7Stack0 := LookupTable.
            recoveredBlock7PC := 47.
        ].
        recoveredBlock7Step = 47 ifTrue: [
            recoveredBlock7Stack1 := self.
            recoveredBlock7PC := 48.
        ].
        recoveredBlock7Step = 48 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) shadowApplications.
            recoveredBlock7PC := 50.
        ].
        recoveredBlock7Step = 50 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) size.
            recoveredBlock7PC := 52.
        ].
        recoveredBlock7Step = 52 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) new: (recoveredBlock7Stack1).
            recoveredBlock7PC := 54.
        ].
        recoveredBlock7Step = 54 ifTrue: [
            recoveredBlock7Local1 := recoveredBlock7Stack0.
            recoveredBlock7PC := 57.
        ].
        recoveredBlock7Step = 57 ifTrue: [
            recoveredBlock7Stack0 := self.
            recoveredBlock7PC := 58.
        ].
        recoveredBlock7Step = 58 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) shadowApplications.
            recoveredBlock7PC := 60.
        ].
        recoveredBlock7Step = 60 ifTrue: [
            recoveredBlock7Stack1 := [:recoveredBlock7Block60Arg1 | 
    | recoveredBlock7Block60Value0 recoveredBlock7Block60Value1 recoveredBlock7Block60Value2 recoveredBlock7Block60Value3 recoveredBlock7Block60Value4 |
    recoveredBlock7Block60Value0 := recoveredBlock7Local1.
    recoveredBlock7Block60Value1 := recoveredBlock7Block60Arg1.
    recoveredBlock7Block60Value2 := (recoveredBlock7Block60Value1) symbol.
    recoveredBlock7Block60Value3 := recoveredBlock7Block60Arg1.
    recoveredBlock7Block60Value4 := (recoveredBlock7Block60Value0) at: (recoveredBlock7Block60Value2) put: (recoveredBlock7Block60Value3).
    recoveredBlock7Block60Value4
].
            recoveredBlock7PC := 76.
        ].
        recoveredBlock7Step = 76 ifTrue: [
            (recoveredBlock7Stack0) do: (recoveredBlock7Stack1).
            recoveredBlock7PC := 78.
        ].
        recoveredBlock7Step = 78 ifTrue: [
            recoveredBlock7Stack0 := recoveredArg2.
            recoveredBlock7PC := 81.
        ].
        recoveredBlock7Step = 81 ifTrue: [
            recoveredBlock7Stack1 := [:recoveredBlock7Block81Arg1 | 
    | recoveredBlock7Block81Value0 recoveredBlock7Block81Value1 recoveredBlock7Block81Value2 recoveredBlock7Block81Value3 recoveredBlock7Block81Value4 recoveredBlock7Block81Value5 recoveredBlock7Block81Value6 recoveredBlock7Block81Value7 recoveredBlock7Block81Value8 |
    recoveredBlock7Block81Value0 := recoveredBlock7Local1.
    recoveredBlock7Block81Value1 := recoveredBlock7Block81Arg1.
    recoveredBlock7Block81Value2 := (recoveredBlock7Block81Value1) symbol.
    recoveredBlock7Block81Value3 := [
    ^false
].
    recoveredBlock7Block81Value4 := (recoveredBlock7Block81Value0) at: (recoveredBlock7Block81Value2) ifAbsent: (recoveredBlock7Block81Value3).
    recoveredBlock7Block81Value5 := (recoveredBlock7Block81Value4) manager.
    recoveredBlock7Block81Value6 := EmUser.
    recoveredBlock7Block81Value7 := (recoveredBlock7Block81Value6) current.
    recoveredBlock7Block81Value8 := (recoveredBlock7Block81Value5) = (recoveredBlock7Block81Value7).
    recoveredBlock7Block81Value8
].
            recoveredBlock7PC := 110.
        ].
        recoveredBlock7Step = 110 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) conform: (recoveredBlock7Stack1).
            recoveredBlock7PC := 112.
        ].
        recoveredBlock7Step = 112 ifTrue: [
            ^recoveredBlock7Stack0
        ].
        recoveredBlock7Step = 113 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack0.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
    (recoveredValue1) cacheEditionsWhileExecuting: (recoveredValue2).
    ^false
! !

"lib.ic method 0x20020738; bytecode file offset 0x5c7b0"
!EmConfigurationMap methodsFor: 'recovered'!
loadWithTracing: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) configurationRecord.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) existsInLibrary.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 27] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := EmImageSupport.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorReporter.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := 199.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := (recoveredStack3) signature.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) reportError: (recoveredStack1) withParms: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := Transcript.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := NlsCatEMb.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := 'MxEMb32'.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) residentMsg: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := (recoveredStack2) signature.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) show: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) shadowApplicationsWithoutVersionNames.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 71] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := EmClassDevelopment.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) imageBuilder.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) loadApplications: (recoveredStack1).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) notNil.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 102].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := Transcript.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := NlsCatEMb.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := 'MxEMb33'.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := (recoveredStack1) residentMsg: (recoveredStack2).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := (recoveredStack2) signature.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack0) show: (recoveredStack1).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredPC := 124.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 106] ifFalse: [recoveredPC := 124].
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := Transcript.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := NlsCatEMb.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := 'MxEMb34'.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := (recoveredStack1) residentMsg: (recoveredStack2).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := (recoveredStack2) signature.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            (recoveredStack0) show: (recoveredStack1).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x200209f0; bytecode file offset 0x5ca48"
!EmConfigurationMap methodsFor: 'recovered'!
addRequiredMapsTo: recoveredArg1 alreadySeen: recoveredArg2 ifCycleDetected: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) requiredMaps.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5Stack4 recoveredBlock5Stack5 recoveredBlock5Stack6 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := recoveredArg2.
            recoveredBlock5PC := 15.
        ].
        recoveredBlock5Step = 15 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 18.
        ].
        recoveredBlock5Step = 18 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) includes: (recoveredBlock5Stack2).
            recoveredBlock5PC := 19.
        ].
        recoveredBlock5Step = 19 ifTrue: [
            (recoveredBlock5Stack1) ifTrue: [recoveredBlock5PC := 22] ifFalse: [recoveredBlock5PC := 32].
        ].
        recoveredBlock5Step = 22 ifTrue: [
            recoveredBlock5Stack1 := recoveredArg3.
            recoveredBlock5PC := 25.
        ].
        recoveredBlock5Step = 25 ifTrue: [
            recoveredBlock5Stack2 := self.
            recoveredBlock5PC := 26.
        ].
        recoveredBlock5Step = 26 ifTrue: [
            recoveredBlock5Stack3 := recoveredBlock5Arg1.
            recoveredBlock5PC := 29.
        ].
        recoveredBlock5Step = 29 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) value: (recoveredBlock5Stack2) value: (recoveredBlock5Stack3).
            recoveredBlock5PC := 31.
        ].
        recoveredBlock5Step = 31 ifTrue: [
            ^recoveredBlock5Stack1
        ].
        recoveredBlock5Step = 32 ifTrue: [
            recoveredBlock5Stack1 := recoveredArg1.
            recoveredBlock5PC := 35.
        ].
        recoveredBlock5Step = 35 ifTrue: [
            recoveredBlock5Stack2 := [:recoveredBlock5Block35Arg1 | 
    | recoveredBlock5Block35Value0 recoveredBlock5Block35Value1 recoveredBlock5Block35Value2 recoveredBlock5Block35Value3 recoveredBlock5Block35Value4 |
    recoveredBlock5Block35Value0 := recoveredBlock5Block35Arg1.
    recoveredBlock5Block35Value1 := (recoveredBlock5Block35Value0) name.
    recoveredBlock5Block35Value2 := recoveredBlock5Arg1.
    recoveredBlock5Block35Value3 := (recoveredBlock5Block35Value2) name.
    recoveredBlock5Block35Value4 := (recoveredBlock5Block35Value1) = (recoveredBlock5Block35Value3).
    recoveredBlock5Block35Value4
].
            recoveredBlock5PC := 50.
        ].
        recoveredBlock5Step = 50 ifTrue: [
            recoveredBlock5Stack3 := [].
            recoveredBlock5PC := 52.
        ].
        recoveredBlock5Step = 52 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) detect: (recoveredBlock5Stack2) ifNone: (recoveredBlock5Stack3).
            recoveredBlock5PC := 54.
        ].
        recoveredBlock5Step = 54 ifTrue: [
            recoveredLocal1 := recoveredBlock5Stack1.
            recoveredBlock5PC := 57.
        ].
        recoveredBlock5Step = 57 ifTrue: [
            recoveredBlock5Stack1 := recoveredLocal1.
            recoveredBlock5PC := 60.
        ].
        recoveredBlock5Step = 60 ifTrue: [
            (recoveredBlock5Stack1 == nil) ifTrue: [recoveredBlock5PC := 88] ifFalse: [recoveredBlock5PC := 64].
        ].
        recoveredBlock5Step = 64 ifTrue: [
            recoveredBlock5Stack1 := recoveredLocal1.
            recoveredBlock5PC := 67.
        ].
        recoveredBlock5Step = 67 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) timeStamp.
            recoveredBlock5PC := 69.
        ].
        recoveredBlock5Step = 69 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 72.
        ].
        recoveredBlock5Step = 72 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) timeStamp.
            recoveredBlock5PC := 74.
        ].
        recoveredBlock5Step = 74 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) = (recoveredBlock5Stack2).
            recoveredBlock5PC := 75.
        ].
        recoveredBlock5Step = 75 ifTrue: [
            (recoveredBlock5Stack1) ifTrue: [recoveredBlock5PC := 78] ifFalse: [recoveredBlock5PC := 88].
        ].
        recoveredBlock5Step = 78 ifTrue: [
            recoveredBlock5Stack1 := recoveredArg1.
            recoveredBlock5PC := 81.
        ].
        recoveredBlock5Step = 81 ifTrue: [
            recoveredBlock5Stack2 := recoveredLocal1.
            recoveredBlock5PC := 84.
        ].
        recoveredBlock5Step = 84 ifTrue: [
            recoveredBlock5Stack3 := [].
            recoveredBlock5PC := 86.
        ].
        recoveredBlock5Step = 86 ifTrue: [
            (recoveredBlock5Stack1) remove: (recoveredBlock5Stack2) ifAbsent: (recoveredBlock5Stack3).
            recoveredBlock5PC := 88.
        ].
        recoveredBlock5Step = 88 ifTrue: [
            recoveredBlock5Stack1 := recoveredArg1.
            recoveredBlock5PC := 91.
        ].
        recoveredBlock5Step = 91 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 94.
        ].
        recoveredBlock5Step = 94 ifTrue: [
            (recoveredBlock5Stack1) addFirst: (recoveredBlock5Stack2).
            recoveredBlock5PC := 96.
        ].
        recoveredBlock5Step = 96 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 99.
        ].
        recoveredBlock5Step = 99 ifTrue: [
            recoveredBlock5Stack2 := recoveredArg1.
            recoveredBlock5PC := 102.
        ].
        recoveredBlock5Step = 102 ifTrue: [
            recoveredBlock5Stack3 := recoveredArg2.
            recoveredBlock5PC := 105.
        ].
        recoveredBlock5Step = 105 ifTrue: [
            recoveredBlock5Stack4 := Array.
            recoveredBlock5PC := 107.
        ].
        recoveredBlock5Step = 107 ifTrue: [
            recoveredBlock5Stack5 := recoveredBlock5Arg1.
            recoveredBlock5PC := 110.
        ].
        recoveredBlock5Step = 110 ifTrue: [
            recoveredBlock5Stack4 := (recoveredBlock5Stack4) with: (recoveredBlock5Stack5).
            recoveredBlock5PC := 112.
        ].
        recoveredBlock5Step = 112 ifTrue: [
            recoveredBlock5Stack3 := (recoveredBlock5Stack3) , (recoveredBlock5Stack4).
            recoveredBlock5PC := 114.
        ].
        recoveredBlock5Step = 114 ifTrue: [
            recoveredBlock5Stack4 := recoveredArg3.
            recoveredBlock5PC := 117.
        ].
        recoveredBlock5Step = 117 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) addRequiredMapsTo: (recoveredBlock5Stack2) alreadySeen: (recoveredBlock5Stack3) ifCycleDetected: (recoveredBlock5Stack4).
            recoveredBlock5PC := 120.
        ].
        recoveredBlock5Step = 120 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) reverseDo: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    ^recoveredValue2
! !

"lib.ic method 0x20023544; bytecode file offset 0x5f5c8"
!EmConfigurationMap methodsFor: 'recovered'!
loadWithTracing: recoveredArg1 reportProgressTo: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) configurationRecord.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) existsInLibrary.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 27] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := EmImageSupport.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorReporter.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := 199.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := (recoveredStack3) signature.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) reportError: (recoveredStack1) withParms: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := Transcript.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := NlsCatEMb.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := 'MxEMb32'.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) residentMsg: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := (recoveredStack2) signature.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) show: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) shadowApplicationsWithoutVersionNames.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 92] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := NlsCatEMb.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := 'MxEMb42'.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) residentMsg: (recoveredStack2).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := (recoveredStack2) signature.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack0) messageString: (recoveredStack1).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := EmClassDevelopment.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) imageBuilder.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack0) progressDialog: (recoveredStack1).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := EmClassDevelopment.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := (recoveredStack0) imageBuilder.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) loadApplications: (recoveredStack1).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := (recoveredStack0) notNil.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 98] ifFalse: [recoveredPC := 124].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 102] ifFalse: [recoveredPC := 120].
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := Transcript.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := NlsCatEMb.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := 'MxEMb33'.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := (recoveredStack1) residentMsg: (recoveredStack2).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := (recoveredStack2) signature.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            (recoveredStack0) show: (recoveredStack1).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredPC := 146.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 128] ifFalse: [recoveredPC := 146].
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := Transcript.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := NlsCatEMb.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack2 := 'MxEMb34'.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := (recoveredStack1) residentMsg: (recoveredStack2).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack2 := (recoveredStack2) signature.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2).
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            (recoveredStack0) show: (recoveredStack1).
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20024590; bytecode file offset 0x60614"
!EmConfigurationMap methodsFor: 'recovered'!
loadWithRequiredMapsAndTracing: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) withAllRequiredMaps.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) isAssociation.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := EmImageSupport.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorReporter.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 188.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := (recoveredStack3) signature.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack4 := (recoveredStack4) key.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack4 := (recoveredStack4) signature.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack5 := (recoveredStack5) value.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack5 := (recoveredStack5) signature.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) reportError: (recoveredStack1) withParms: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := [:block2800517cArg1 | 
    | block2800517cValue0 block2800517cValue1 block2800517cValue2 |
    block2800517cValue0 := block2800517cArg1.
    block2800517cValue1 := (block2800517cValue0) configurationRecord.
    block2800517cValue2 := (block2800517cValue1) existsInLibrary.
    block2800517cValue2
].
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) conform: (recoveredStack1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 83] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := EmImageSupport.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorReporter.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := 198.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack3 := (recoveredStack3) signature.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0) reportError: (recoveredStack1) withParms: (recoveredStack2).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 108].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := Transcript.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := NlsCatEMb.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := 'MxEMb30'.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := (recoveredStack1) residentMsg: (recoveredStack2).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := (recoveredStack2) signature.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack0) show: (recoveredStack1).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := [:recoveredBlock111Arg1 | 
    | recoveredBlock111Stack0 recoveredBlock111Stack1 recoveredBlock111Stack2 recoveredBlock111Stack3 recoveredBlock111Stack4 recoveredBlock111PC recoveredBlock111Step recoveredBlock111Done recoveredBlock111Result |
    recoveredBlock111Stack0 := self.
    recoveredBlock111PC := 118.
    recoveredBlock111Done := false.
    [recoveredBlock111Done not] whileTrue: [
        recoveredBlock111Step := recoveredBlock111PC.
        recoveredBlock111Step = 118 ifTrue: [
            recoveredBlock111Stack1 := nil.
            recoveredBlock111PC := 119.
        ].
        recoveredBlock111Step = 119 ifTrue: [
            recoveredBlock111Stack2 := recoveredBlock111Arg1.
            recoveredBlock111PC := 120.
        ].
        recoveredBlock111Step = 120 ifTrue: [
            recoveredBlock111Stack3 := recoveredArg1.
            recoveredBlock111PC := 123.
        ].
        recoveredBlock111Step = 123 ifTrue: [
            recoveredBlock111Stack2 := (recoveredBlock111Stack2) loadWithTracing: (recoveredBlock111Stack3).
            recoveredBlock111PC := 125.
        ].
        recoveredBlock111Step = 125 ifTrue: [
            (recoveredBlock111Stack2) ifTrue: [recoveredBlock111PC := 131] ifFalse: [recoveredBlock111PC := 128].
        ].
        recoveredBlock111Step = 128 ifTrue: [
            recoveredBlock111PC := 129.
        ].
        recoveredBlock111Step = 129 ifTrue: [
            recoveredBlock111Stack1 := false.
            recoveredBlock111PC := 130.
        ].
        recoveredBlock111Step = 130 ifTrue: [
            ^recoveredBlock111Stack1
        ].
        recoveredBlock111Step = 131 ifTrue: [
            recoveredBlock111Result := recoveredBlock111Stack1.
            recoveredBlock111Done := true.
        ].
    ].
    recoveredBlock111Result
].
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 140] ifFalse: [recoveredPC := 161].
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := Transcript.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            (recoveredStack1) cr.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack2 := NlsCatEMb.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack3 := 'MxEMb31'.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack2 := (recoveredStack2) residentMsg: (recoveredStack3).
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack3 := (recoveredStack3) signature.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3).
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            (recoveredStack1) show: (recoveredStack2).
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20024e18; bytecode file offset 0x60e9c"
!EmConfigurationMap methodsFor: 'recovered'!
loadWithRequiredMapsAndTracing: recoveredArg1 reportProgressTo: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) withAllRequiredMaps.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) isAssociation.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := EmImageSupport.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorReporter.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 188.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := (recoveredStack3) signature.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack4 := (recoveredStack4) key.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack4 := (recoveredStack4) signature.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack5 := (recoveredStack5) value.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack5 := (recoveredStack5) signature.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) reportError: (recoveredStack1) withParms: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := [:block28005254Arg1 | 
    | block28005254Value0 block28005254Value1 block28005254Value2 |
    block28005254Value0 := block28005254Arg1.
    block28005254Value1 := (block28005254Value0) configurationRecord.
    block28005254Value2 := (block28005254Value1) existsInLibrary.
    block28005254Value2
].
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) conform: (recoveredStack1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 83] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := EmImageSupport.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorReporter.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := 198.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack3 := (recoveredStack3) signature.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0) reportError: (recoveredStack1) withParms: (recoveredStack2).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 108].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := Transcript.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := NlsCatEMb.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := 'MxEMb30'.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := (recoveredStack1) residentMsg: (recoveredStack2).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := (recoveredStack2) signature.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack0) show: (recoveredStack1).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := [:recoveredBlock111Arg1 | 
    | recoveredBlock111Stack0 recoveredBlock111Stack1 recoveredBlock111Stack2 recoveredBlock111Stack3 recoveredBlock111Stack4 recoveredBlock111Stack5 recoveredBlock111PC recoveredBlock111Step recoveredBlock111Done recoveredBlock111Result |
    recoveredBlock111Stack0 := self.
    recoveredBlock111PC := 118.
    recoveredBlock111Done := false.
    [recoveredBlock111Done not] whileTrue: [
        recoveredBlock111Step := recoveredBlock111PC.
        recoveredBlock111Step = 118 ifTrue: [
            recoveredBlock111Stack1 := nil.
            recoveredBlock111PC := 119.
        ].
        recoveredBlock111Step = 119 ifTrue: [
            recoveredBlock111Stack2 := recoveredBlock111Arg1.
            recoveredBlock111PC := 120.
        ].
        recoveredBlock111Step = 120 ifTrue: [
            recoveredBlock111Stack3 := recoveredArg1.
            recoveredBlock111PC := 123.
        ].
        recoveredBlock111Step = 123 ifTrue: [
            recoveredBlock111Stack4 := recoveredArg2.
            recoveredBlock111PC := 126.
        ].
        recoveredBlock111Step = 126 ifTrue: [
            recoveredBlock111Stack2 := (recoveredBlock111Stack2) loadWithTracing: (recoveredBlock111Stack3) reportProgressTo: (recoveredBlock111Stack4).
            recoveredBlock111PC := 128.
        ].
        recoveredBlock111Step = 128 ifTrue: [
            (recoveredBlock111Stack2) ifTrue: [recoveredBlock111PC := 135] ifFalse: [recoveredBlock111PC := 132].
        ].
        recoveredBlock111Step = 132 ifTrue: [
            recoveredBlock111PC := 133.
        ].
        recoveredBlock111Step = 133 ifTrue: [
            recoveredBlock111Stack1 := false.
            recoveredBlock111PC := 134.
        ].
        recoveredBlock111Step = 134 ifTrue: [
            ^recoveredBlock111Stack1
        ].
        recoveredBlock111Step = 135 ifTrue: [
            recoveredBlock111Result := recoveredBlock111Stack1.
            recoveredBlock111Done := true.
        ].
    ].
    recoveredBlock111Result
].
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 144] ifFalse: [recoveredPC := 165].
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := Transcript.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            (recoveredStack1) cr.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack2 := NlsCatEMb.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack3 := 'MxEMb31'.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack2 := (recoveredStack2) residentMsg: (recoveredStack3).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack3 := (recoveredStack3) signature.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3).
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            (recoveredStack1) show: (recoveredStack2).
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20025bc4; bytecode file offset 0x61c34"
!EmConfigurationMap methodsFor: 'recovered'!
allPossibleRequiredMaps
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 142.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) removeFirst.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) requiredMapsConfigurations.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := [:recoveredBlock33Arg1 | 
    | recoveredBlock33Value0 recoveredBlock33Value1 recoveredBlock33Value2 recoveredBlock33Value3 |
    recoveredBlock33Value0 := recoveredBlock33Arg1.
    recoveredBlock33Value1 := (recoveredBlock33Value0) value.
    recoveredBlock33Value2 := [:recoveredBlock33Block43Arg1 | 
    | recoveredBlock33Block43Value0 recoveredBlock33Block43Value1 recoveredBlock33Block43Value2 recoveredBlock33Block43Value3 recoveredBlock33Block43Value4 recoveredBlock33Block43Value5 recoveredBlock33Block43Value6 recoveredBlock33Block43Value7 recoveredBlock33Block43Value8 |
    recoveredBlock33Block43Value0 := recoveredLocal5.
    recoveredBlock33Block43Value1 := recoveredBlock33Block43Arg1.
    recoveredBlock33Block43Value2 := (recoveredBlock33Block43Value1) key.
    recoveredBlock33Block43Value3 := [
    | recoveredBlock33Block43Block58Value0 recoveredBlock33Block43Block58Value1 recoveredBlock33Block43Block58Value2 recoveredBlock33Block43Block58Value3 recoveredBlock33Block43Block58Value4 recoveredBlock33Block43Block58Value5 |
    recoveredBlock33Block43Block58Value0 := recoveredLocal5.
    recoveredBlock33Block43Block58Value1 := recoveredBlock33Block43Arg1.
    recoveredBlock33Block43Block58Value2 := (recoveredBlock33Block43Block58Value1) key.
    recoveredBlock33Block43Block58Value3 := Set.
    recoveredBlock33Block43Block58Value4 := (recoveredBlock33Block43Block58Value3) new.
    recoveredBlock33Block43Block58Value5 := (recoveredBlock33Block43Block58Value0) at: (recoveredBlock33Block43Block58Value2) put: (recoveredBlock33Block43Block58Value4).
    recoveredBlock33Block43Block58Value5
].
    recoveredBlock33Block43Value4 := (recoveredBlock33Block43Value0) at: (recoveredBlock33Block43Value2) ifAbsent: (recoveredBlock33Block43Value3).
    recoveredLocal2 := recoveredBlock33Block43Value4.
    recoveredBlock33Block43Value5 := recoveredLocal2.
    recoveredBlock33Block43Value6 := [:recoveredBlock33Block43Block86Arg1 | 
    | recoveredBlock33Block43Block86Value0 recoveredBlock33Block43Block86Value1 recoveredBlock33Block43Block86Value2 recoveredBlock33Block43Block86Value3 recoveredBlock33Block43Block86Value4 |
    recoveredBlock33Block43Block86Value0 := recoveredBlock33Block43Block86Arg1.
    recoveredBlock33Block43Block86Value1 := (recoveredBlock33Block43Block86Value0) timeStamp.
    recoveredBlock33Block43Block86Value2 := recoveredBlock33Block43Arg1.
    recoveredBlock33Block43Block86Value3 := (recoveredBlock33Block43Block86Value2) value.
    recoveredBlock33Block43Block86Value4 := (recoveredBlock33Block43Block86Value1) = (recoveredBlock33Block43Block86Value3).
    recoveredBlock33Block43Block86Value4
].
    recoveredBlock33Block43Value7 := [
    | recoveredBlock33Block43Block102Value0 recoveredBlock33Block43Block102Value1 recoveredBlock33Block43Block102Value2 recoveredBlock33Block43Block102Value3 recoveredBlock33Block43Block102Value4 recoveredBlock33Block43Block102Value5 recoveredBlock33Block43Block102Value6 recoveredBlock33Block43Block102Value7 recoveredBlock33Block43Block102Value8 recoveredBlock33Block43Block102Value9 |
    recoveredBlock33Block43Block102Value0 := recoveredLocal4.
    recoveredBlock33Block43Block102Value1 := recoveredLocal2.
    recoveredBlock33Block43Block102Value2 := (self) class.
    recoveredBlock33Block43Block102Value3 := recoveredBlock33Block43Arg1.
    recoveredBlock33Block43Block102Value4 := (recoveredBlock33Block43Block102Value3) key.
    recoveredBlock33Block43Block102Value5 := recoveredBlock33Block43Arg1.
    recoveredBlock33Block43Block102Value6 := (recoveredBlock33Block43Block102Value5) value.
    recoveredBlock33Block43Block102Value7 := (recoveredBlock33Block43Block102Value2) named: (recoveredBlock33Block43Block102Value4) timeStamp: (recoveredBlock33Block43Block102Value6).
    recoveredBlock33Block43Block102Value8 := (recoveredBlock33Block43Block102Value1) add: (recoveredBlock33Block43Block102Value7).
    recoveredBlock33Block43Block102Value9 := (recoveredBlock33Block43Block102Value0) addLast: (recoveredBlock33Block43Block102Value8).
    recoveredBlock33Block43Block102Value9
].
    recoveredBlock33Block43Value8 := (recoveredBlock33Block43Value5) detect: (recoveredBlock33Block43Value6) ifNone: (recoveredBlock33Block43Value7).
    recoveredBlock33Block43Value8
].
    recoveredBlock33Value3 := (recoveredBlock33Value1) do: (recoveredBlock33Value2).
    recoveredBlock33Value3
].
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 150] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack2 := [:recoveredBlock159Arg1 | 
    | recoveredBlock159Value0 recoveredBlock159Value1 recoveredBlock159Value2 |
    recoveredBlock159Value0 := recoveredLocal1.
    recoveredBlock159Value1 := recoveredBlock159Arg1.
    recoveredBlock159Value2 := (recoveredBlock159Value0) addAll: (recoveredBlock159Value1).
    recoveredBlock159Value2
].
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"lib.ic method 0x200266a8; bytecode file offset 0x62720"
!EmConfigurationMap methodsFor: 'recovered'!
differencesWith: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal5 := recoveredValue1.
    recoveredValue2 := (self) shadowApplications.
    recoveredLocal4 := recoveredValue2.
    recoveredValue3 := Dictionary.
    recoveredValue4 := recoveredLocal4.
    recoveredValue5 := (recoveredValue4) size.
    recoveredValue6 := (recoveredValue5) * (2).
    recoveredValue7 := (recoveredValue3) new: (recoveredValue6).
    recoveredLocal3 := recoveredValue7.
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := (recoveredValue8) shadowApplications.
    recoveredValue10 := [:recoveredBlock32Arg1 | 
    | recoveredBlock32Value0 recoveredBlock32Value1 recoveredBlock32Value2 recoveredBlock32Value3 recoveredBlock32Value4 |
    recoveredBlock32Value0 := recoveredLocal3.
    recoveredBlock32Value1 := recoveredBlock32Arg1.
    recoveredBlock32Value2 := (recoveredBlock32Value1) name.
    recoveredBlock32Value3 := recoveredBlock32Arg1.
    recoveredBlock32Value4 := (recoveredBlock32Value0) at: (recoveredBlock32Value2) put: (recoveredBlock32Value3).
    recoveredBlock32Value4
].
    (recoveredValue9) do: (recoveredValue10).
    recoveredValue11 := recoveredLocal4.
    recoveredValue12 := [:recoveredBlock53Arg1 | 
    | recoveredBlock53Stack0 recoveredBlock53Stack1 recoveredBlock53Stack2 recoveredBlock53Stack3 recoveredBlock53Stack4 recoveredBlock53PC recoveredBlock53Step recoveredBlock53Done recoveredBlock53Result |
    recoveredBlock53Stack0 := self.
    recoveredBlock53PC := 60.
    recoveredBlock53Done := false.
    [recoveredBlock53Done not] whileTrue: [
        recoveredBlock53Step := recoveredBlock53PC.
        recoveredBlock53Step = 60 ifTrue: [
            recoveredBlock53Stack1 := recoveredBlock53Arg1.
            recoveredBlock53PC := 61.
        ].
        recoveredBlock53Step = 61 ifTrue: [
            recoveredBlock53Stack1 := (recoveredBlock53Stack1) name.
            recoveredBlock53PC := 63.
        ].
        recoveredBlock53Step = 63 ifTrue: [
            recoveredLocal2 := recoveredBlock53Stack1.
            recoveredBlock53PC := 66.
        ].
        recoveredBlock53Step = 66 ifTrue: [
            recoveredBlock53Stack1 := recoveredLocal3.
            recoveredBlock53PC := 69.
        ].
        recoveredBlock53Step = 69 ifTrue: [
            recoveredBlock53Stack2 := recoveredLocal2.
            recoveredBlock53PC := 72.
        ].
        recoveredBlock53Step = 72 ifTrue: [
            recoveredBlock53Stack3 := [
    | recoveredBlock53Block72Value0 recoveredBlock53Block72Value1 recoveredBlock53Block72Value2 recoveredBlock53Block72Value3 recoveredBlock53Block72Value4 recoveredBlock53Block72Value5 |
    recoveredBlock53Block72Value0 := Application.
    recoveredBlock53Block72Value1 := (recoveredBlock53Block72Value0) shadowClass.
    recoveredBlock53Block72Value2 := recoveredLocal2.
    recoveredBlock53Block72Value3 := EmTimeStamp.
    recoveredBlock53Block72Value4 := (recoveredBlock53Block72Value3) undefined.
    recoveredBlock53Block72Value5 := (recoveredBlock53Block72Value1) named: (recoveredBlock53Block72Value2) timeStampWithVersionInfo: (recoveredBlock53Block72Value4).
    recoveredBlock53Block72Value5
].
            recoveredBlock53PC := 92.
        ].
        recoveredBlock53Step = 92 ifTrue: [
            recoveredBlock53Stack1 := (recoveredBlock53Stack1) at: (recoveredBlock53Stack2) ifAbsent: (recoveredBlock53Stack3).
            recoveredBlock53PC := 94.
        ].
        recoveredBlock53Step = 94 ifTrue: [
            recoveredLocal1 := recoveredBlock53Stack1.
            recoveredBlock53PC := 97.
        ].
        recoveredBlock53Step = 97 ifTrue: [
            recoveredBlock53Stack1 := recoveredBlock53Arg1.
            recoveredBlock53PC := 98.
        ].
        recoveredBlock53Step = 98 ifTrue: [
            recoveredBlock53Stack1 := (recoveredBlock53Stack1) timeStamp.
            recoveredBlock53PC := 100.
        ].
        recoveredBlock53Step = 100 ifTrue: [
            recoveredBlock53Stack2 := recoveredLocal1.
            recoveredBlock53PC := 103.
        ].
        recoveredBlock53Step = 103 ifTrue: [
            recoveredBlock53Stack2 := (recoveredBlock53Stack2) timeStamp.
            recoveredBlock53PC := 105.
        ].
        recoveredBlock53Step = 105 ifTrue: [
            recoveredBlock53Stack1 := (recoveredBlock53Stack1) = (recoveredBlock53Stack2).
            recoveredBlock53PC := 106.
        ].
        recoveredBlock53Step = 106 ifTrue: [
            (recoveredBlock53Stack1) ifTrue: [recoveredBlock53PC := 133] ifFalse: [recoveredBlock53PC := 110].
        ].
        recoveredBlock53Step = 110 ifTrue: [
            recoveredBlock53Stack1 := recoveredBlock53Arg1.
            recoveredBlock53PC := 111.
        ].
        recoveredBlock53Step = 111 ifTrue: [
            recoveredBlock53Stack2 := recoveredLocal1.
            recoveredBlock53PC := 114.
        ].
        recoveredBlock53Step = 114 ifTrue: [
            recoveredBlock53Stack3 := true.
            recoveredBlock53PC := 115.
        ].
        recoveredBlock53Step = 115 ifTrue: [
            recoveredBlock53Stack1 := (recoveredBlock53Stack1) differencesWith: (recoveredBlock53Stack2) includeSubApplications: (recoveredBlock53Stack3).
            recoveredBlock53PC := 117.
        ].
        recoveredBlock53Step = 117 ifTrue: [
            recoveredBlock53Stack2 := [:recoveredBlock53Block117Arg1 | 
    | recoveredBlock53Block117Value0 recoveredBlock53Block117Value1 recoveredBlock53Block117Value2 |
    recoveredBlock53Block117Value0 := recoveredLocal5.
    recoveredBlock53Block117Value1 := recoveredBlock53Block117Arg1.
    recoveredBlock53Block117Value2 := (recoveredBlock53Block117Value0) add: (recoveredBlock53Block117Value1).
    recoveredBlock53Block117Value2
].
            recoveredBlock53PC := 131.
        ].
        recoveredBlock53Step = 131 ifTrue: [
            (recoveredBlock53Stack1) associationsDo: (recoveredBlock53Stack2).
            recoveredBlock53PC := 133.
        ].
        recoveredBlock53Step = 133 ifTrue: [
            recoveredBlock53Stack1 := recoveredLocal3.
            recoveredBlock53PC := 136.
        ].
        recoveredBlock53Step = 136 ifTrue: [
            recoveredBlock53Stack2 := recoveredLocal2.
            recoveredBlock53PC := 139.
        ].
        recoveredBlock53Step = 139 ifTrue: [
            recoveredBlock53Stack3 := [].
            recoveredBlock53PC := 141.
        ].
        recoveredBlock53Step = 141 ifTrue: [
            recoveredBlock53Stack1 := (recoveredBlock53Stack1) removeKey: (recoveredBlock53Stack2) ifAbsent: (recoveredBlock53Stack3).
            recoveredBlock53PC := 143.
        ].
        recoveredBlock53Step = 143 ifTrue: [
            recoveredBlock53Result := recoveredBlock53Stack1.
            recoveredBlock53Done := true.
        ].
    ].
    recoveredBlock53Result
].
    (recoveredValue11) do: (recoveredValue12).
    recoveredValue13 := recoveredLocal3.
    recoveredValue14 := [:recoveredBlock149Arg1 | 
    | recoveredBlock149Value0 recoveredBlock149Value1 recoveredBlock149Value2 recoveredBlock149Value3 recoveredBlock149Value4 recoveredBlock149Value5 recoveredBlock149Value6 recoveredBlock149Value7 recoveredBlock149Value8 recoveredBlock149Value9 recoveredBlock149Value10 |
    recoveredBlock149Value0 := recoveredLocal5.
    recoveredBlock149Value1 := Application.
    recoveredBlock149Value2 := (recoveredBlock149Value1) shadowClass.
    recoveredBlock149Value3 := recoveredBlock149Arg1.
    recoveredBlock149Value4 := (recoveredBlock149Value3) symbol.
    recoveredBlock149Value5 := EmTimeStamp.
    recoveredBlock149Value6 := (recoveredBlock149Value5) undefined.
    recoveredBlock149Value7 := (recoveredBlock149Value2) named: (recoveredBlock149Value4) timeStampWithVersionInfo: (recoveredBlock149Value6).
    recoveredBlock149Value8 := recoveredBlock149Arg1.
    recoveredBlock149Value9 := (recoveredBlock149Value7) differencesWith: (recoveredBlock149Value8) includeSubApplications: (true).
    recoveredBlock149Value10 := (recoveredBlock149Value0) addAll: (recoveredBlock149Value9).
    recoveredBlock149Value10
].
    (recoveredValue13) do: (recoveredValue14).
    recoveredValue15 := recoveredLocal5.
    ^recoveredValue15
! !

"lib.ic method 0x200267c4; bytecode file offset 0x62854"
!EmConfigurationMap methodsFor: 'recovered'!
addApplication: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'releaseApplications'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) userHasRightTo: (recoveredStack1) for: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := EmImageSupport.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorReporter.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 205.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := (recoveredStack3) signature.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack4 := (recoveredStack4) signature.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) logError: (recoveredStack1) withParms: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := EmUser.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) current.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) manager.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 104].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) manager.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) applicationEditions.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) symbol.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := (recoveredStack0) includesKey: (recoveredStack1).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 104] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := EmImageSupport.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorReporter.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := 206.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack3 := (recoveredStack3) symbol.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack4 := (recoveredStack4) signature.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack0) logError: (recoveredStack1) withParms: (recoveredStack2).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := EmLibrary.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := (recoveredStack0) operationsInterface.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack3 := [
    ^false
].
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            (recoveredStack0) configMapAddApplicationFor: (recoveredStack1) application: (recoveredStack2) ifUnable: (recoveredStack3).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := (recoveredStack0) shadowApplications.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := (recoveredStack0) copy.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := [:recoveredBlock130Arg1 | 
    | recoveredBlock130Stack0 recoveredBlock130Stack1 recoveredBlock130Stack2 recoveredBlock130Stack3 recoveredBlock130Stack4 recoveredBlock130PC recoveredBlock130Step recoveredBlock130Done recoveredBlock130Result |
    recoveredBlock130Stack0 := self.
    recoveredBlock130PC := 136.
    recoveredBlock130Done := false.
    [recoveredBlock130Done not] whileTrue: [
        recoveredBlock130Step := recoveredBlock130PC.
        recoveredBlock130Step = 136 ifTrue: [
            recoveredBlock130Stack1 := nil.
            recoveredBlock130PC := 137.
        ].
        recoveredBlock130Step = 137 ifTrue: [
            recoveredBlock130Stack2 := recoveredBlock130Arg1.
            recoveredBlock130PC := 138.
        ].
        recoveredBlock130Step = 138 ifTrue: [
            recoveredBlock130Stack2 := (recoveredBlock130Stack2) symbol.
            recoveredBlock130PC := 140.
        ].
        recoveredBlock130Step = 140 ifTrue: [
            recoveredBlock130Stack3 := recoveredArg1.
            recoveredBlock130PC := 143.
        ].
        recoveredBlock130Step = 143 ifTrue: [
            recoveredBlock130Stack3 := (recoveredBlock130Stack3) symbol.
            recoveredBlock130PC := 145.
        ].
        recoveredBlock130Step = 145 ifTrue: [
            recoveredBlock130Stack2 := (recoveredBlock130Stack2) = (recoveredBlock130Stack3).
            recoveredBlock130PC := 146.
        ].
        recoveredBlock130Step = 146 ifTrue: [
            (recoveredBlock130Stack2) ifTrue: [recoveredBlock130PC := 150] ifFalse: [recoveredBlock130PC := 159].
        ].
        recoveredBlock130Step = 150 ifTrue: [
            recoveredBlock130PC := 151.
        ].
        recoveredBlock130Step = 151 ifTrue: [
            recoveredBlock130Stack1 := self.
            recoveredBlock130PC := 152.
        ].
        recoveredBlock130Step = 152 ifTrue: [
            recoveredBlock130Stack1 := (recoveredBlock130Stack1) shadowApplications.
            recoveredBlock130PC := 154.
        ].
        recoveredBlock130Step = 154 ifTrue: [
            recoveredBlock130Stack2 := recoveredBlock130Arg1.
            recoveredBlock130PC := 155.
        ].
        recoveredBlock130Step = 155 ifTrue: [
            recoveredBlock130Stack3 := [].
            recoveredBlock130PC := 157.
        ].
        recoveredBlock130Step = 157 ifTrue: [
            recoveredBlock130Stack1 := (recoveredBlock130Stack1) remove: (recoveredBlock130Stack2) ifAbsent: (recoveredBlock130Stack3).
            recoveredBlock130PC := 159.
        ].
        recoveredBlock130Step = 159 ifTrue: [
            recoveredBlock130Result := recoveredBlock130Stack1.
            recoveredBlock130Done := true.
        ].
    ].
    recoveredBlock130Result
].
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack0 := (recoveredStack0) shadowApplications.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := (recoveredStack1) shadowClass.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack2 := (recoveredStack2) symbol.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack3 := (recoveredStack3) timeStamp.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack1 := (recoveredStack1) named: (recoveredStack2) timeStampWithVersionInfo: (recoveredStack3).
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20028984; bytecode file offset 0x64a08"
!EmConfigurationMap methodsFor: 'recovered'!
moveDifferencesWith: recoveredArg1 from: recoveredArg2 to: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 recoveredBlock13Value3 |
    recoveredBlock13Value0 := recoveredBlock13Arg1.
    recoveredBlock13Value1 := (recoveredBlock13Value0) shadowApplications.
    recoveredBlock13Value2 := [:recoveredBlock13Block22Arg1 | 
    | recoveredBlock13Block22Stack0 recoveredBlock13Block22Stack1 recoveredBlock13Block22Stack2 recoveredBlock13Block22Stack3 recoveredBlock13Block22Stack4 recoveredBlock13Block22PC recoveredBlock13Block22Step recoveredBlock13Block22Done recoveredBlock13Block22Result |
    recoveredBlock13Block22Stack0 := nil.
    recoveredBlock13Block22PC := 28.
    recoveredBlock13Block22Done := false.
    [recoveredBlock13Block22Done not] whileTrue: [
        recoveredBlock13Block22Step := recoveredBlock13Block22PC.
        recoveredBlock13Block22Step = 28 ifTrue: [
            recoveredBlock13Block22Stack1 := recoveredLocal3.
            recoveredBlock13Block22PC := 31.
        ].
        recoveredBlock13Block22Step = 31 ifTrue: [
            recoveredBlock13Block22Stack2 := recoveredBlock13Block22Arg1.
            recoveredBlock13Block22PC := 32.
        ].
        recoveredBlock13Block22Step = 32 ifTrue: [
            recoveredBlock13Block22Stack2 := (recoveredBlock13Block22Stack2) name.
            recoveredBlock13Block22PC := 33.
        ].
        recoveredBlock13Block22Step = 33 ifTrue: [
            recoveredBlock13Block22Stack3 := [
    | block28005470Value0 block28005470Value1 |
    block28005470Value0 := Set.
    block28005470Value1 := (block28005470Value0) new.
    block28005470Value1
].
            recoveredBlock13Block22PC := 35.
        ].
        recoveredBlock13Block22Step = 35 ifTrue: [
            recoveredBlock13Block22PC := 42.
        ].
        recoveredBlock13Block22Step = 42 ifTrue: [
            recoveredBlock13Block22Stack1 := (recoveredBlock13Block22Stack1) at: (recoveredBlock13Block22Stack2) ifAbsentPut: (recoveredBlock13Block22Stack3).
            recoveredBlock13Block22PC := 44.
        ].
        recoveredBlock13Block22Step = 44 ifTrue: [
            recoveredBlock13Block22Stack2 := recoveredBlock13Block22Arg1.
            recoveredBlock13Block22PC := 45.
        ].
        recoveredBlock13Block22Step = 45 ifTrue: [
            (recoveredBlock13Block22Stack1) add: (recoveredBlock13Block22Stack2).
            recoveredBlock13Block22PC := 47.
        ].
        recoveredBlock13Block22Step = 47 ifTrue: [
            recoveredBlock13Block22Stack1 := recoveredBlock13Block22Arg1.
            recoveredBlock13Block22PC := 48.
        ].
        recoveredBlock13Block22Step = 48 ifTrue: [
            recoveredBlock13Block22Stack1 := (recoveredBlock13Block22Stack1) allPossibleSubApplications.
            recoveredBlock13Block22PC := 50.
        ].
        recoveredBlock13Block22Step = 50 ifTrue: [
            recoveredBlock13Block22Stack2 := [:recoveredBlock13Block22Block50Arg1 | 
    | recoveredBlock13Block22Block50Stack0 recoveredBlock13Block22Block50Stack1 recoveredBlock13Block22Block50Stack2 recoveredBlock13Block22Block50Stack3 recoveredBlock13Block22Block50Stack4 recoveredBlock13Block22Block50PC recoveredBlock13Block22Block50Step recoveredBlock13Block22Block50Done recoveredBlock13Block22Block50Result |
    recoveredBlock13Block22Block50Stack0 := nil.
    recoveredBlock13Block22Block50PC := 56.
    recoveredBlock13Block22Block50Done := false.
    [recoveredBlock13Block22Block50Done not] whileTrue: [
        recoveredBlock13Block22Block50Step := recoveredBlock13Block22Block50PC.
        recoveredBlock13Block22Block50Step = 56 ifTrue: [
            recoveredBlock13Block22Block50Stack1 := recoveredLocal3.
            recoveredBlock13Block22Block50PC := 59.
        ].
        recoveredBlock13Block22Block50Step = 59 ifTrue: [
            recoveredBlock13Block22Block50Stack2 := recoveredBlock13Block22Block50Arg1.
            recoveredBlock13Block22Block50PC := 60.
        ].
        recoveredBlock13Block22Block50Step = 60 ifTrue: [
            recoveredBlock13Block22Block50Stack2 := (recoveredBlock13Block22Block50Stack2) name.
            recoveredBlock13Block22Block50PC := 61.
        ].
        recoveredBlock13Block22Block50Step = 61 ifTrue: [
            recoveredBlock13Block22Block50Stack3 := [
    | block28005494Value0 block28005494Value1 |
    block28005494Value0 := Set.
    block28005494Value1 := (block28005494Value0) new.
    block28005494Value1
].
            recoveredBlock13Block22Block50PC := 63.
        ].
        recoveredBlock13Block22Block50Step = 63 ifTrue: [
            recoveredBlock13Block22Block50PC := 70.
        ].
        recoveredBlock13Block22Block50Step = 70 ifTrue: [
            recoveredBlock13Block22Block50Stack1 := (recoveredBlock13Block22Block50Stack1) at: (recoveredBlock13Block22Block50Stack2) ifAbsentPut: (recoveredBlock13Block22Block50Stack3).
            recoveredBlock13Block22Block50PC := 72.
        ].
        recoveredBlock13Block22Block50Step = 72 ifTrue: [
            recoveredBlock13Block22Block50Stack2 := recoveredBlock13Block22Block50Arg1.
            recoveredBlock13Block22Block50PC := 73.
        ].
        recoveredBlock13Block22Block50Step = 73 ifTrue: [
            recoveredBlock13Block22Block50Stack1 := (recoveredBlock13Block22Block50Stack1) add: (recoveredBlock13Block22Block50Stack2).
            recoveredBlock13Block22Block50PC := 75.
        ].
        recoveredBlock13Block22Block50Step = 75 ifTrue: [
            recoveredBlock13Block22Block50Result := recoveredBlock13Block22Block50Stack1.
            recoveredBlock13Block22Block50Done := true.
        ].
    ].
    recoveredBlock13Block22Block50Result
].
            recoveredBlock13Block22PC := 76.
        ].
        recoveredBlock13Block22Step = 76 ifTrue: [
            recoveredBlock13Block22Stack1 := (recoveredBlock13Block22Stack1) do: (recoveredBlock13Block22Stack2).
            recoveredBlock13Block22PC := 78.
        ].
        recoveredBlock13Block22Step = 78 ifTrue: [
            recoveredBlock13Block22Result := recoveredBlock13Block22Stack1.
            recoveredBlock13Block22Done := true.
        ].
    ].
    recoveredBlock13Block22Result
].
    recoveredBlock13Value3 := (recoveredBlock13Value1) do: (recoveredBlock13Value2).
    recoveredBlock13Value3
].
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) shadowApplications.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := [:block280054b8Arg1 :block280054b8Arg2 | 
    | block280054b8Value0 block280054b8Value1 block280054b8Value2 block280054b8Value3 block280054b8Value4 |
    block280054b8Value0 := block280054b8Arg1.
    block280054b8Value1 := block280054b8Arg2.
    block280054b8Value2 := (block280054b8Value1) withAllPossibleSubApplications.
    block280054b8Value3 := (block280054b8Value2) size.
    block280054b8Value4 := (block280054b8Value0) + (block280054b8Value3).
    block280054b8Value4
].
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := (recoveredStack0) inject: (recoveredStack1) into: (recoveredStack2).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := EmInterface.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := (recoveredStack0) current.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := (Fraction) numerator: (1) denominator: (100).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            (recoveredStack0) fractionComplete: (recoveredStack1).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := [:recoveredBlock127Arg1 | 
    | recoveredBlock127Value0 recoveredBlock127Value1 recoveredBlock127Value2 recoveredBlock127Value3 |
    recoveredBlock127Value0 := recoveredBlock127Arg1.
    recoveredBlock127Value1 := (recoveredBlock127Value0) withAllPossibleSubApplications.
    recoveredBlock127Value2 := [:recoveredBlock127Block137Arg1 | 
    | recoveredBlock127Block137Stack0 recoveredBlock127Block137Stack1 recoveredBlock127Block137Stack2 recoveredBlock127Block137Stack3 recoveredBlock127Block137Stack4 recoveredBlock127Block137Stack5 recoveredBlock127Block137PC recoveredBlock127Block137Step recoveredBlock127Block137Done recoveredBlock127Block137Result |
    recoveredBlock127Block137Stack0 := nil.
    recoveredBlock127Block137PC := 144.
    recoveredBlock127Block137Done := false.
    [recoveredBlock127Block137Done not] whileTrue: [
        recoveredBlock127Block137Step := recoveredBlock127Block137PC.
        recoveredBlock127Block137Step = 144 ifTrue: [
            recoveredBlock127Block137Stack1 := recoveredLocal1.
            recoveredBlock127Block137PC := 147.
        ].
        recoveredBlock127Block137Step = 147 ifTrue: [
            recoveredBlock127Block137Stack1 := (recoveredBlock127Block137Stack1) + (1).
            recoveredBlock127Block137PC := 148.
        ].
        recoveredBlock127Block137Step = 148 ifTrue: [
            recoveredLocal1 := recoveredBlock127Block137Stack1.
            recoveredBlock127Block137PC := 151.
        ].
        recoveredBlock127Block137Step = 151 ifTrue: [
            recoveredBlock127Block137Stack1 := recoveredBlock127Block137Arg1.
            recoveredBlock127Block137PC := 152.
        ].
        recoveredBlock127Block137Step = 152 ifTrue: [
            recoveredBlock127Block137Stack2 := recoveredLocal3.
            recoveredBlock127Block137PC := 155.
        ].
        recoveredBlock127Block137Step = 155 ifTrue: [
            recoveredBlock127Block137Stack3 := recoveredBlock127Block137Arg1.
            recoveredBlock127Block137PC := 156.
        ].
        recoveredBlock127Block137Step = 156 ifTrue: [
            recoveredBlock127Block137Stack3 := (recoveredBlock127Block137Stack3) name.
            recoveredBlock127Block137PC := 157.
        ].
        recoveredBlock127Block137Step = 157 ifTrue: [
            recoveredBlock127Block137Stack4 := [
    #()
].
            recoveredBlock127Block137PC := 159.
        ].
        recoveredBlock127Block137Step = 159 ifTrue: [
            recoveredBlock127Block137PC := 165.
        ].
        recoveredBlock127Block137Step = 165 ifTrue: [
            recoveredBlock127Block137Stack2 := (recoveredBlock127Block137Stack2) at: (recoveredBlock127Block137Stack3) ifAbsent: (recoveredBlock127Block137Stack4).
            recoveredBlock127Block137PC := 167.
        ].
        recoveredBlock127Block137Step = 167 ifTrue: [
            recoveredBlock127Block137Stack3 := recoveredArg2.
            recoveredBlock127Block137PC := 170.
        ].
        recoveredBlock127Block137Step = 170 ifTrue: [
            recoveredBlock127Block137Stack4 := recoveredArg3.
            recoveredBlock127Block137PC := 173.
        ].
        recoveredBlock127Block137Step = 173 ifTrue: [
            (recoveredBlock127Block137Stack1) moveDifferencesWith: (recoveredBlock127Block137Stack2) from: (recoveredBlock127Block137Stack3) to: (recoveredBlock127Block137Stack4).
            recoveredBlock127Block137PC := 176.
        ].
        recoveredBlock127Block137Step = 176 ifTrue: [
            recoveredBlock127Block137Stack1 := EmInterface.
            recoveredBlock127Block137PC := 178.
        ].
        recoveredBlock127Block137Step = 178 ifTrue: [
            recoveredBlock127Block137Stack1 := (recoveredBlock127Block137Stack1) current.
            recoveredBlock127Block137PC := 180.
        ].
        recoveredBlock127Block137Step = 180 ifTrue: [
            recoveredBlock127Block137Stack2 := recoveredLocal1.
            recoveredBlock127Block137PC := 183.
        ].
        recoveredBlock127Block137Step = 183 ifTrue: [
            recoveredBlock127Block137Stack3 := recoveredLocal2.
            recoveredBlock127Block137PC := 186.
        ].
        recoveredBlock127Block137Step = 186 ifTrue: [
            recoveredBlock127Block137Stack2 := (recoveredBlock127Block137Stack2) / (recoveredBlock127Block137Stack3).
            recoveredBlock127Block137PC := 188.
        ].
        recoveredBlock127Block137Step = 188 ifTrue: [
            recoveredBlock127Block137Stack1 := (recoveredBlock127Block137Stack1) fractionComplete: (recoveredBlock127Block137Stack2).
            recoveredBlock127Block137PC := 190.
        ].
        recoveredBlock127Block137Step = 190 ifTrue: [
            recoveredBlock127Block137Result := recoveredBlock127Block137Stack1.
            recoveredBlock127Block137Done := true.
        ].
    ].
    recoveredBlock127Block137Result
].
    recoveredBlock127Value3 := (recoveredBlock127Value1) do: (recoveredBlock127Value2).
    recoveredBlock127Value3
].
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack4 := Dictionary.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack4 := (recoveredStack4) new.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack5 := Dictionary.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack5 := (recoveredStack5) new.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack6 := #().
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack0 := (recoveredStack0) moveFrom: (recoveredStack1) to: (recoveredStack2) withApps: (recoveredStack3) skipAppsIn: (recoveredStack4) skipSubAppsIn: (recoveredStack5) options: (recoveredStack6).
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

