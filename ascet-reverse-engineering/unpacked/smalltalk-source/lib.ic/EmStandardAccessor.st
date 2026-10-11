"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"lib.ic method 0x20000264; bytecode file offset 0x3c284"
!EmStandardAccessor methodsFor: 'recovered'!
loadingMethodsFor: recoveredArg1
    ^nil
! !

"lib.ic method 0x2000031c; bytecode file offset 0x3c670"
!EmStandardAccessor methodsFor: 'recovered'!
recordClass
    | recoveredValue0 |
    recoveredValue0 := EmRecord.
    ^recoveredValue0
! !

"lib.ic method 0x200003ac; bytecode file offset 0x3c670"
!EmStandardAccessor methodsFor: 'recovered'!
interfaceClass
    | recoveredValue0 |
    recoveredValue0 := EmInterface.
    ^recoveredValue0
! !

"lib.ic method 0x200003dc; bytecode file offset 0x3c670"
!EmStandardAccessor methodsFor: 'recovered'!
classEditionsClass
    | recoveredValue0 |
    recoveredValue0 := EmClassEditions.
    ^recoveredValue0
! !

"lib.ic method 0x200004a8; bytecode file offset 0x3c670"
!EmStandardAccessor methodsFor: 'recovered'!
userClass
    | recoveredValue0 |
    recoveredValue0 := EmUser.
    ^recoveredValue0
! !

"lib.ic method 0x200004b4; bytecode file offset 0x3c670"
!EmStandardAccessor methodsFor: 'recovered'!
userFieldRecordClass
    | recoveredValue0 |
    recoveredValue0 := EmUserFieldRecord.
    ^recoveredValue0
! !

"lib.ic method 0x200004f0; bytecode file offset 0x3c670"
!EmStandardAccessor methodsFor: 'recovered'!
methodEditionClass
    | recoveredValue0 |
    recoveredValue0 := EmMethodEdition.
    ^recoveredValue0
! !

"lib.ic method 0x2000055c; bytecode file offset 0x3c670"
!EmStandardAccessor methodsFor: 'recovered'!
libraryClass
    | recoveredValue0 |
    recoveredValue0 := EmLibrary.
    ^recoveredValue0
! !

"lib.ic method 0x200005a4; bytecode file offset 0x3c670"
!EmStandardAccessor methodsFor: 'recovered'!
modifiableRecordClass
    | recoveredValue0 |
    recoveredValue0 := EmModifiableRecord.
    ^recoveredValue0
! !

"lib.ic method 0x200005e0; bytecode file offset 0x3c670"
!EmStandardAccessor methodsFor: 'recovered'!
dictionaryOfTimeStampsClass
    | recoveredValue0 |
    recoveredValue0 := EmDictionaryOfTimeStamps.
    ^recoveredValue0
! !

"lib.ic method 0x200005f8; bytecode file offset 0x3c670"
!EmStandardAccessor methodsFor: 'recovered'!
dictionaryOfStringsClass
    | recoveredValue0 |
    recoveredValue0 := EmDictionaryOfStrings.
    ^recoveredValue0
! !

"lib.ic method 0x20000604; bytecode file offset 0x3c670"
!EmStandardAccessor methodsFor: 'recovered'!
diskDictionaryClass
    | recoveredValue0 |
    recoveredValue0 := EmDiskDictionary.
    ^recoveredValue0
! !

"lib.ic method 0x20000610; bytecode file offset 0x3c670"
!EmStandardAccessor methodsFor: 'recovered'!
classDefinitionClass
    | recoveredValue0 |
    recoveredValue0 := EmClassDefinition.
    ^recoveredValue0
! !

"lib.ic method 0x20000640; bytecode file offset 0x3c670"
!EmStandardAccessor methodsFor: 'recovered'!
editionsDictionaryClass
    | recoveredValue0 |
    recoveredValue0 := EmEditionsDictionary.
    ^recoveredValue0
! !

"lib.ic method 0x20000be4; bytecode file offset 0x3cc2c"
!EmStandardAccessor methodsFor: 'recovered'!
genericRootDictionaryFor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) rootDictionary.
    ^recoveredValue1
! !

"lib.ic method 0x20001778; bytecode file offset 0x3d7cc"
!EmStandardAccessor methodsFor: 'recovered'!
userAllUniqueAndFullUserNames
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) userClass.
    recoveredValue1 := (recoveredValue0) recordClass.
    recoveredValue2 := (recoveredValue1) allUniqueAndFullNames.
    ^recoveredValue2
! !

"lib.ic method 0x20002d70; bytecode file offset 0x3ee14"
!EmStandardAccessor methodsFor: 'recovered'!
methodLocalUserFieldNamesFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) record.
    recoveredValue2 := (recoveredValue1) localUserFields.
    recoveredValue3 := (recoveredValue2) names.
    ^recoveredValue3
! !

"lib.ic method 0x20002d84; bytecode file offset 0x3ee14"
!EmStandardAccessor methodsFor: 'recovered'!
configMapInheritedUserFieldNamesFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) configurationRecord.
    recoveredValue2 := (recoveredValue1) inheritedUserFields.
    recoveredValue3 := (recoveredValue2) names.
    ^recoveredValue3
! !

"lib.ic method 0x20002d98; bytecode file offset 0x3ee14"
!EmStandardAccessor methodsFor: 'recovered'!
configMapLocalUserFieldNamesFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) configurationRecord.
    recoveredValue2 := (recoveredValue1) localUserFields.
    recoveredValue3 := (recoveredValue2) names.
    ^recoveredValue3
! !

"lib.ic method 0x20002dac; bytecode file offset 0x3ee14"
!EmStandardAccessor methodsFor: 'recovered'!
applicationLocalUserFieldNamesFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) editionRecord.
    recoveredValue2 := (recoveredValue1) localUserFields.
    recoveredValue3 := (recoveredValue2) names.
    ^recoveredValue3
! !

"lib.ic method 0x20002dc0; bytecode file offset 0x3ee14"
!EmStandardAccessor methodsFor: 'recovered'!
applicationInheritedUserFieldNamesFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) editionRecord.
    recoveredValue2 := (recoveredValue1) inheritedUserFields.
    recoveredValue3 := (recoveredValue2) names.
    ^recoveredValue3
! !

"lib.ic method 0x20002dd4; bytecode file offset 0x3ee14"
!EmStandardAccessor methodsFor: 'recovered'!
methodInheritedUserFieldNamesFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) record.
    recoveredValue2 := (recoveredValue1) inheritedUserFields.
    recoveredValue3 := (recoveredValue2) names.
    ^recoveredValue3
! !

"lib.ic method 0x20002de8; bytecode file offset 0x3ee14"
!EmStandardAccessor methodsFor: 'recovered'!
userInheritedUserFieldNamesFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) record.
    recoveredValue2 := (recoveredValue1) inheritedUserFields.
    recoveredValue3 := (recoveredValue2) names.
    ^recoveredValue3
! !

"lib.ic method 0x20002e74; bytecode file offset 0x3ef3c"
!EmStandardAccessor methodsFor: 'recovered'!
configMapLocalUserFieldAtFor: recoveredArg1 atName: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) configurationRecord.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue1) localUserFieldAt: (recoveredValue2).
    ^recoveredValue3
! !

"lib.ic method 0x20002e84; bytecode file offset 0x3ef3c"
!EmStandardAccessor methodsFor: 'recovered'!
applicationInheritedUserFieldRecordAtFor: recoveredArg1 atName: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) editionRecord.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue1) inheritedUserFieldRecordAt: (recoveredValue2).
    ^recoveredValue3
! !

"lib.ic method 0x20002e94; bytecode file offset 0x3ef3c"
!EmStandardAccessor methodsFor: 'recovered'!
configMapInheritedUserFieldRecordAtFor: recoveredArg1 atName: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) configurationRecord.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue1) inheritedUserFieldRecordAt: (recoveredValue2).
    ^recoveredValue3
! !

"lib.ic method 0x20002ea4; bytecode file offset 0x3ef3c"
!EmStandardAccessor methodsFor: 'recovered'!
methodLocalUserFieldAtFor: recoveredArg1 atName: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) record.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue1) localUserFieldAt: (recoveredValue2).
    ^recoveredValue3
! !

"lib.ic method 0x20002eb4; bytecode file offset 0x3ef3c"
!EmStandardAccessor methodsFor: 'recovered'!
applicationLocalUserFieldAtFor: recoveredArg1 atName: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) editionRecord.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue1) localUserFieldAt: (recoveredValue2).
    ^recoveredValue3
! !

"lib.ic method 0x20002ec4; bytecode file offset 0x3ef3c"
!EmStandardAccessor methodsFor: 'recovered'!
applicationInheritedUserFieldAtFor: recoveredArg1 atName: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) editionRecord.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue1) inheritedUserFieldAt: (recoveredValue2).
    ^recoveredValue3
! !

"lib.ic method 0x20002ed4; bytecode file offset 0x3ef3c"
!EmStandardAccessor methodsFor: 'recovered'!
userInheritedUserFieldAtFor: recoveredArg1 atName: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) record.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue1) inheritedUserFieldAt: (recoveredValue2).
    ^recoveredValue3
! !

"lib.ic method 0x20002ee4; bytecode file offset 0x3ef3c"
!EmStandardAccessor methodsFor: 'recovered'!
userInheritedUserFieldRecordAtFor: recoveredArg1 atName: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) record.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue1) inheritedUserFieldRecordAt: (recoveredValue2).
    ^recoveredValue3
! !

"lib.ic method 0x20002ef4; bytecode file offset 0x3ef3c"
!EmStandardAccessor methodsFor: 'recovered'!
methodInheritedUserFieldAtFor: recoveredArg1 atName: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) record.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue1) inheritedUserFieldAt: (recoveredValue2).
    ^recoveredValue3
! !

"lib.ic method 0x20002f04; bytecode file offset 0x3ef3c"
!EmStandardAccessor methodsFor: 'recovered'!
methodInheritedUserFieldRecordAtFor: recoveredArg1 atName: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) record.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue1) inheritedUserFieldRecordAt: (recoveredValue2).
    ^recoveredValue3
! !

"lib.ic method 0x20002f14; bytecode file offset 0x3ef3c"
!EmStandardAccessor methodsFor: 'recovered'!
configMapInheritedUserFieldAtFor: recoveredArg1 atName: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) configurationRecord.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue1) inheritedUserFieldAt: (recoveredValue2).
    ^recoveredValue3
! !

"lib.ic method 0x200037bc; bytecode file offset 0x3f7fc"
!EmStandardAccessor methodsFor: 'recovered'!
classLocalUserFieldNamesInAppFor: recoveredArg1 application: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue0) editionEntryIn: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) localUserFields.
    recoveredValue4 := (recoveredValue3) names.
    ^recoveredValue4
! !

"lib.ic method 0x200037d0; bytecode file offset 0x3f7fc"
!EmStandardAccessor methodsFor: 'recovered'!
classInheritedUserFieldNamesInAppFor: recoveredArg1 application: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue0) editionEntryIn: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) inheritedUserFields.
    recoveredValue4 := (recoveredValue3) names.
    ^recoveredValue4
! !

"lib.ic method 0x200037f0; bytecode file offset 0x3f81c"
!EmStandardAccessor methodsFor: 'recovered'!
genericKeyExistsFor: recoveredArg1 key: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) rootDictionary.
    recoveredValue2 := (recoveredValue1) keys.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue2) includes: (recoveredValue3).
    ^recoveredValue4
! !

"lib.ic method 0x20003888; bytecode file offset 0x3f8d0"
!EmStandardAccessor methodsFor: 'recovered'!
classInheritedUserFieldRecordAtInAppFor: recoveredArg1 atName: recoveredArg2 application: recoveredArg3 ifUnable: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := (recoveredValue0) editionEntryIn: (recoveredValue1).
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue2) inheritedUserFieldRecordAt: (recoveredValue3).
    ^recoveredValue4
! !

"lib.ic method 0x20003898; bytecode file offset 0x3f8d0"
!EmStandardAccessor methodsFor: 'recovered'!
classLocalUserFieldAtInAppFor: recoveredArg1 atName: recoveredArg2 application: recoveredArg3 ifUnable: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := (recoveredValue0) editionEntryIn: (recoveredValue1).
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue2) localUserFieldAt: (recoveredValue3).
    ^recoveredValue4
! !

"lib.ic method 0x200038a8; bytecode file offset 0x3f8d0"
!EmStandardAccessor methodsFor: 'recovered'!
classInheritedUserFieldAtInAppFor: recoveredArg1 atName: recoveredArg2 application: recoveredArg3 ifUnable: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := (recoveredValue0) editionEntryIn: (recoveredValue1).
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue2) inheritedUserFieldAt: (recoveredValue3).
    ^recoveredValue4
! !

"lib.ic method 0x200061d0; bytecode file offset 0x42224"
!EmStandardAccessor methodsFor: 'recovered'!
methodLocalUserFieldAtPutFor: recoveredArg1 atName: recoveredArg2 put: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) userFieldRecordClass.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue2) on: (recoveredValue3).
    (self) methodLocalUserFieldAtPutRecordFor: (recoveredValue0) atName: (recoveredValue1) putRecord: (recoveredValue4).
    ^self
! !

"lib.ic method 0x200061e4; bytecode file offset 0x42224"
!EmStandardAccessor methodsFor: 'recovered'!
methodInheritedUserFieldAtPutFor: recoveredArg1 atName: recoveredArg2 put: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) userFieldRecordClass.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue2) on: (recoveredValue3).
    (self) methodInheritedUserFieldAtPutRecordFor: (recoveredValue0) atName: (recoveredValue1) putRecord: (recoveredValue4).
    ^self
! !

"lib.ic method 0x200061f8; bytecode file offset 0x42224"
!EmStandardAccessor methodsFor: 'recovered'!
userInheritedUserFieldAtPutFor: recoveredArg1 atName: recoveredArg2 put: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) userFieldRecordClass.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue2) on: (recoveredValue3).
    (self) userInheritedUserFieldAtPutRecordFor: (recoveredValue0) atName: (recoveredValue1) putRecord: (recoveredValue4).
    ^self
! !

"lib.ic method 0x20006bb0; bytecode file offset 0x42bd8"
!EmStandardAccessor methodsFor: 'recovered'!
applicationClassFromFlag: recoveredArg1
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
            (recoveredStack1) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := SubApplication.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := Application.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"lib.ic method 0x200072f4; bytecode file offset 0x43320"
!EmStandardAccessor methodsFor: 'recovered'!
applicationRedefineClassFor: recoveredArg1 class: recoveredArg2 ifUnable: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack3 := [:block28004174Arg1 | 
    | block28004174Value0 block28004174Value1 |
    block28004174Value0 := block28004174Arg1.
    block28004174Value1 := (block28004174Value0) redefined.
    block28004174Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) updateIn: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2000747c; bytecode file offset 0x434a8"
!EmStandardAccessor methodsFor: 'recovered'!
classInheritedUserFieldAtPutInAppFor: recoveredArg1 atName: recoveredArg2 put: recoveredArg3 application: recoveredArg4 ifUnable: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) userFieldRecordClass.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue2) on: (recoveredValue3).
    recoveredValue5 := recoveredArg4.
    recoveredValue6 := recoveredArg5.
    (self) classInheritedUserFieldAtPutRecordInAppFor: (recoveredValue0) atName: (recoveredValue1) putRecord: (recoveredValue4) application: (recoveredValue5) ifUnable: (recoveredValue6).
    ^self
! !

"lib.ic method 0x20007f90; bytecode file offset 0x43fe4"
!EmStandardAccessor methodsFor: 'recovered'!
applicationLocalUserFieldAtPutFor: recoveredArg1 atName: recoveredArg2 put: recoveredArg3 userMustBeManagerTo: recoveredArg4 noUserError: recoveredArg5 ifUnable: recoveredArg6
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) userFieldRecordClass.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue2) on: (recoveredValue3).
    recoveredValue5 := recoveredArg4.
    recoveredValue6 := recoveredArg5.
    recoveredValue7 := recoveredArg6.
    (self) applicationLocalUserFieldAtPutRecordFor: (recoveredValue0) atName: (recoveredValue1) putRecord: (recoveredValue4) userMustBeManagerTo: (recoveredValue5) noUserError: (recoveredValue6) ifUnable: (recoveredValue7).
    ^self
! !

"lib.ic method 0x20007fa4; bytecode file offset 0x43fe4"
!EmStandardAccessor methodsFor: 'recovered'!
classLocalUserFieldAtPutInAppFor: recoveredArg1 atName: recoveredArg2 put: recoveredArg3 application: recoveredArg4 userMustBeDeveloperTo: recoveredArg5 ifUnable: recoveredArg6
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) userFieldRecordClass.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue2) on: (recoveredValue3).
    recoveredValue5 := recoveredArg4.
    recoveredValue6 := recoveredArg5.
    recoveredValue7 := recoveredArg6.
    (self) classLocalUserFieldAtPutRecordInAppFor: (recoveredValue0) atName: (recoveredValue1) putRecord: (recoveredValue4) application: (recoveredValue5) userMustBeDeveloperTo: (recoveredValue6) ifUnable: (recoveredValue7).
    ^self
! !

"lib.ic method 0x20007fb8; bytecode file offset 0x43fe4"
!EmStandardAccessor methodsFor: 'recovered'!
configMapLocalUserFieldAtPutFor: recoveredArg1 atName: recoveredArg2 put: recoveredArg3 userMustBeManagerTo: recoveredArg4 noUserError: recoveredArg5 ifUnable: recoveredArg6
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) userFieldRecordClass.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue2) on: (recoveredValue3).
    recoveredValue5 := recoveredArg4.
    recoveredValue6 := recoveredArg5.
    recoveredValue7 := recoveredArg6.
    (self) configMapLocalUserFieldAtPutRecordFor: (recoveredValue0) atName: (recoveredValue1) putRecord: (recoveredValue4) userMustBeManagerTo: (recoveredValue5) noUserError: (recoveredValue6) ifUnable: (recoveredValue7).
    ^self
! !

"lib.ic method 0x200091ac; bytecode file offset 0x45234"
!EmStandardAccessor methodsFor: 'recovered'!
applicationDeleteLocalUserFieldAtFor: recoveredArg1 atName: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := recoveredArg2.
    recoveredBlock7Value2 := (recoveredBlock7Value0) deleteLocalUserField: (recoveredBlock7Value1).
    recoveredBlock7Value2
].
    (recoveredValue0) updateEdition: (recoveredValue1).
    ^self
! !

"lib.ic method 0x200091bc; bytecode file offset 0x45234"
!EmStandardAccessor methodsFor: 'recovered'!
methodDeleteInheritedUserFieldAtFor: recoveredArg1 atName: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := recoveredArg2.
    recoveredBlock7Value2 := (recoveredBlock7Value0) deleteInheritedUserField: (recoveredBlock7Value1).
    recoveredBlock7Value2
].
    (recoveredValue0) updateRecordWith: (recoveredValue1).
    ^self
! !

"lib.ic method 0x200091cc; bytecode file offset 0x45234"
!EmStandardAccessor methodsFor: 'recovered'!
methodDeleteLocalUserFieldAtFor: recoveredArg1 atName: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := recoveredArg2.
    recoveredBlock7Value2 := (recoveredBlock7Value0) deleteLocalUserField: (recoveredBlock7Value1).
    recoveredBlock7Value2
].
    (recoveredValue0) updateRecordWith: (recoveredValue1).
    ^self
! !

"lib.ic method 0x200091dc; bytecode file offset 0x45234"
!EmStandardAccessor methodsFor: 'recovered'!
configMapDeleteLocalUserFieldAtFor: recoveredArg1 atName: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := recoveredArg2.
    recoveredBlock7Value2 := (recoveredBlock7Value0) deleteLocalUserField: (recoveredBlock7Value1).
    recoveredBlock7Value2
].
    (recoveredValue0) updateRecordWith: (recoveredValue1).
    ^self
! !

"lib.ic method 0x200091ec; bytecode file offset 0x45234"
!EmStandardAccessor methodsFor: 'recovered'!
configMapDeleteInheritedUserFieldAtFor: recoveredArg1 atName: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := recoveredArg2.
    recoveredBlock7Value2 := (recoveredBlock7Value0) deleteInheritedUserField: (recoveredBlock7Value1).
    recoveredBlock7Value2
].
    (recoveredValue0) updateRecordWith: (recoveredValue1).
    ^self
! !

"lib.ic method 0x200091fc; bytecode file offset 0x45234"
!EmStandardAccessor methodsFor: 'recovered'!
userDeleteInheritedUserFieldAtFor: recoveredArg1 atName: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := recoveredArg2.
    recoveredBlock7Value2 := (recoveredBlock7Value0) deleteInheritedUserField: (recoveredBlock7Value1).
    recoveredBlock7Value2
].
    (recoveredValue0) updateRecordWith: (recoveredValue1).
    ^self
! !

"lib.ic method 0x2000920c; bytecode file offset 0x45234"
!EmStandardAccessor methodsFor: 'recovered'!
applicationDeleteInheritedUserFieldAtFor: recoveredArg1 atName: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := recoveredArg2.
    recoveredBlock7Value2 := (recoveredBlock7Value0) deleteInheritedUserField: (recoveredBlock7Value1).
    recoveredBlock7Value2
].
    (recoveredValue0) updateEdition: (recoveredValue1).
    ^self
! !

"lib.ic method 0x20009394; bytecode file offset 0x453d4"
!EmStandardAccessor methodsFor: 'recovered'!
applicationEditionRecordFor: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := (self) libraryClass.
    recoveredValue1 := (recoveredValue0) cache.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) partsRecordFor: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) editionRecordClass.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (recoveredValue7) editionsDictionary.
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := (recoveredValue9) timeStamp.
    recoveredValue11 := (recoveredValue8) at: (recoveredValue10).
    recoveredValue12 := (recoveredValue5) for: (recoveredValue6) using: (recoveredValue11).
    ^recoveredValue12
! !

"lib.ic method 0x20009698; bytecode file offset 0x456c8"
!EmStandardAccessor methodsFor: 'recovered'!
userRecordFor: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) userClass.
    recoveredValue1 := (recoveredValue0) recordClass.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [
    | recoveredBlock9Value0 recoveredBlock9Value1 |
    recoveredBlock9Value0 := recoveredArg2.
    recoveredBlock9Value1 := (recoveredBlock9Value0) value.
    ^recoveredBlock9Value1
].
    recoveredValue4 := (recoveredValue1) for: (recoveredValue2) ifAbsent: (recoveredValue3).
    ^recoveredValue4
! !

"lib.ic method 0x200096c8; bytecode file offset 0x45708"
!EmStandardAccessor methodsFor: 'recovered'!
configMapInheritedUserFieldAtPutFor: recoveredArg1 atName: recoveredArg2 put: recoveredArg3 userMustBeManagerTo: recoveredArg4 noUserError: recoveredArg5 mustBeEditionTo: recoveredArg6 withParms: recoveredArg7 ifUnable: recoveredArg8
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) userFieldRecordClass.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue2) on: (recoveredValue3).
    recoveredValue5 := recoveredArg4.
    recoveredValue6 := recoveredArg5.
    recoveredValue7 := recoveredArg6.
    recoveredValue8 := recoveredArg7.
    recoveredValue9 := recoveredArg8.
    (self) configMapInheritedUserFieldAtPutRecordFor: (recoveredValue0) atName: (recoveredValue1) putRecord: (recoveredValue4) userMustBeManagerTo: (recoveredValue5) noUserError: (recoveredValue6) mustBeEditionTo: (recoveredValue7) withParms: (recoveredValue8) ifUnable: (recoveredValue9).
    ^self
! !

"lib.ic method 0x200096dc; bytecode file offset 0x45708"
!EmStandardAccessor methodsFor: 'recovered'!
applicationInheritedUserFieldAtPutFor: recoveredArg1 atName: recoveredArg2 put: recoveredArg3 userMustBeManagerTo: recoveredArg4 noUserError: recoveredArg5 mustBeEditionTo: recoveredArg6 withParms: recoveredArg7 ifUnable: recoveredArg8
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) userFieldRecordClass.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue2) on: (recoveredValue3).
    recoveredValue5 := recoveredArg4.
    recoveredValue6 := recoveredArg5.
    recoveredValue7 := recoveredArg6.
    recoveredValue8 := recoveredArg7.
    recoveredValue9 := recoveredArg8.
    (self) applicationInheritedUserFieldAtPutRecordFor: (recoveredValue0) atName: (recoveredValue1) putRecord: (recoveredValue4) userMustBeManagerTo: (recoveredValue5) noUserError: (recoveredValue6) mustBeEditionTo: (recoveredValue7) withParms: (recoveredValue8) ifUnable: (recoveredValue9).
    ^self
! !

"lib.ic method 0x20009a90; bytecode file offset 0x45acc"
!EmStandardAccessor methodsFor: 'recovered'!
applicationOwnerOfAndUserThatReleasedFor: recoveredArg1 className: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue3) ownerOf: (recoveredValue4).
    (recoveredValue2) at: ('owner') put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := recoveredArg2.
    recoveredValue9 := (recoveredValue7) userThatReleased: (recoveredValue8).
    (recoveredValue6) at: ('user') put: (recoveredValue9).
    ^recoveredValue1
! !

"lib.ic method 0x20009b30; bytecode file offset 0x45b58"
!EmStandardAccessor methodsFor: 'recovered'!
applicationAddNewClassMFTSFor: recoveredArg1 class: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 |
    recoveredBlock10Value0 := recoveredBlock10Arg1.
    recoveredBlock10Value1 := recoveredArg2.
    recoveredBlock10Value2 := (recoveredBlock10Value0) addNewMFTSTo: (recoveredBlock10Value1).
    recoveredBlock10Value2
].
    (recoveredValue0) updateEditionsRecordIn: (recoveredValue1) with: (recoveredValue2).
    ^self
! !

"lib.ic method 0x20009f14; bytecode file offset 0x45f40"
!EmStandardAccessor methodsFor: 'recovered'!
applicationAddInitialApplicationFor: recoveredArg1 named: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := recoveredArg1.
    recoveredBlock7Value2 := (recoveredBlock7Value0) addInitial: (recoveredBlock7Value1) named: ('Initial').
    recoveredBlock7Value2
].
    (recoveredValue0) updateLibrary: (recoveredValue1).
    ^self
! !

"lib.ic method 0x20009fa8; bytecode file offset 0x45fe8"
!EmStandardAccessor methodsFor: 'recovered'!
classDeleteLocalUserFieldAtInAppFor: recoveredArg1 atName: recoveredArg2 application: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 |
    recoveredBlock10Value0 := recoveredBlock10Arg1.
    recoveredBlock10Value1 := (recoveredBlock10Value0) currentEntry.
    recoveredBlock10Value2 := recoveredArg2.
    recoveredBlock10Value3 := (recoveredBlock10Value1) deleteLocalUserField: (recoveredBlock10Value2).
    recoveredBlock10Value3
].
    (recoveredValue0) updateEditionsRecordIn: (recoveredValue1) with: (recoveredValue2).
    ^self
! !

"lib.ic method 0x20009fbc; bytecode file offset 0x45fe8"
!EmStandardAccessor methodsFor: 'recovered'!
classDeleteInheritedUserFieldAtInAppFor: recoveredArg1 atName: recoveredArg2 application: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 |
    recoveredBlock10Value0 := recoveredBlock10Arg1.
    recoveredBlock10Value1 := (recoveredBlock10Value0) currentEntry.
    recoveredBlock10Value2 := recoveredArg2.
    recoveredBlock10Value3 := (recoveredBlock10Value1) deleteInheritedUserField: (recoveredBlock10Value2).
    recoveredBlock10Value3
].
    (recoveredValue0) updateEditionsRecordIn: (recoveredValue1) with: (recoveredValue2).
    ^self
! !

"lib.ic method 0x2000a620; bytecode file offset 0x46648"
!EmStandardAccessor methodsFor: 'recovered'!
applicationNewEditionFor: recoveredArg1 ifUnable: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := recoveredArg1.
    recoveredBlock7Value2 := recoveredArg2.
    recoveredBlock7Value3 := (recoveredBlock7Value0) newEditionFor: (recoveredBlock7Value1) ifUnable: (recoveredBlock7Value2).
    recoveredBlock7Value3
].
    (recoveredValue0) updateParts: (recoveredValue1).
    ^self
! !

"lib.ic method 0x2000a680; bytecode file offset 0x466b8"
!EmStandardAccessor methodsFor: 'recovered'!
configMapNewEditionFor: recoveredArg1 useApplicationEditions: recoveredArg2 ifUnable: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) configurationRecordClass.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := (recoveredStack3) applicationEditions.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := Dictionary.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := (recoveredStack3) new.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) newEditionFor: (recoveredStack2) using: (recoveredStack3) ifUnable: (recoveredStack4).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2000a6bc; bytecode file offset 0x46784"
!EmStandardAccessor methodsFor: 'recovered'!
applicationDeleteConfigExpressionFor: recoveredArg1 expr: recoveredArg2 ifUnable: recoveredArg3
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := recoveredArg2.
    recoveredBlock7Value2 := recoveredArg3.
    recoveredBlock7Value3 := (recoveredBlock7Value0) deleteExpression: (recoveredBlock7Value1) ifUnable: (recoveredBlock7Value2).
    recoveredBlock7Value3
].
    (recoveredValue0) updateEdition: (recoveredValue1).
    ^self
! !

"lib.ic method 0x2000a6cc; bytecode file offset 0x46784"
!EmStandardAccessor methodsFor: 'recovered'!
applicationVersionApplicationFor: recoveredArg1 versionName: recoveredArg2 ifUnable: recoveredArg3
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := recoveredArg2.
    recoveredBlock7Value2 := recoveredArg3.
    recoveredBlock7Value3 := (recoveredBlock7Value0) versionName: (recoveredBlock7Value1) ifUnable: (recoveredBlock7Value2).
    recoveredBlock7Value3
].
    (recoveredValue0) updateEdition: (recoveredValue1).
    ^self
! !

"lib.ic method 0x2000a6dc; bytecode file offset 0x46784"
!EmStandardAccessor methodsFor: 'recovered'!
configMapAddConfigExpressionFor: recoveredArg1 newExpr: recoveredArg2 ifUnable: recoveredArg3
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := recoveredArg2.
    recoveredBlock7Value2 := recoveredArg3.
    recoveredBlock7Value3 := (recoveredBlock7Value0) addExpression: (recoveredBlock7Value1) ifUnable: (recoveredBlock7Value2).
    recoveredBlock7Value3
].
    (recoveredValue0) updateRecordWith: (recoveredValue1).
    ^self
! !

"lib.ic method 0x2000a6ec; bytecode file offset 0x46784"
!EmStandardAccessor methodsFor: 'recovered'!
userInheritedUserFieldAtPutRecordFor: recoveredArg1 atName: recoveredArg2 putRecord: recoveredArg3
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := recoveredArg2.
    recoveredBlock7Value2 := recoveredArg3.
    recoveredBlock7Value3 := (recoveredBlock7Value0) inheritedUserFieldAt: (recoveredBlock7Value1) putRecord: (recoveredBlock7Value2).
    recoveredBlock7Value3
].
    (recoveredValue0) updateRecordWith: (recoveredValue1).
    ^self
! !

"lib.ic method 0x2000a6fc; bytecode file offset 0x46784"
!EmStandardAccessor methodsFor: 'recovered'!
configMapVersionNameFor: recoveredArg1 versionName: recoveredArg2 ifUnable: recoveredArg3
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := recoveredArg2.
    recoveredBlock7Value2 := recoveredArg3.
    recoveredBlock7Value3 := (recoveredBlock7Value0) versionName: (recoveredBlock7Value1) ifUnable: (recoveredBlock7Value2).
    recoveredBlock7Value3
].
    (recoveredValue0) relocateRecordWith: (recoveredValue1).
    ^self
! !

"lib.ic method 0x2000a70c; bytecode file offset 0x46784"
!EmStandardAccessor methodsFor: 'recovered'!
methodLocalUserFieldAtPutRecordFor: recoveredArg1 atName: recoveredArg2 putRecord: recoveredArg3
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := recoveredArg2.
    recoveredBlock7Value2 := recoveredArg3.
    recoveredBlock7Value3 := (recoveredBlock7Value0) localUserFieldAt: (recoveredBlock7Value1) putRecord: (recoveredBlock7Value2).
    recoveredBlock7Value3
].
    (recoveredValue0) updateRecordWith: (recoveredValue1).
    ^self
! !

"lib.ic method 0x2000a71c; bytecode file offset 0x46784"
!EmStandardAccessor methodsFor: 'recovered'!
methodInheritedUserFieldAtPutRecordFor: recoveredArg1 atName: recoveredArg2 putRecord: recoveredArg3
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := recoveredArg2.
    recoveredBlock7Value2 := recoveredArg3.
    recoveredBlock7Value3 := (recoveredBlock7Value0) inheritedUserFieldAt: (recoveredBlock7Value1) putRecord: (recoveredBlock7Value2).
    recoveredBlock7Value3
].
    (recoveredValue0) updateRecordWith: (recoveredValue1).
    ^self
! !

"lib.ic method 0x2000a72c; bytecode file offset 0x46784"
!EmStandardAccessor methodsFor: 'recovered'!
userFullNameFor: recoveredArg1 fullName: recoveredArg2 ifNotAllowed: recoveredArg3
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := recoveredArg2.
    recoveredBlock7Value2 := recoveredArg3.
    recoveredBlock7Value3 := (recoveredBlock7Value0) fullName: (recoveredBlock7Value1) ifNotAllowed: (recoveredBlock7Value2).
    recoveredBlock7Value3
].
    (recoveredValue0) updateRecordWith: (recoveredValue1).
    ^self
! !

"lib.ic method 0x2000a73c; bytecode file offset 0x46784"
!EmStandardAccessor methodsFor: 'recovered'!
configMapDeleteConfigExpressionFor: recoveredArg1 expr: recoveredArg2 ifUnable: recoveredArg3
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := recoveredArg2.
    recoveredBlock7Value2 := recoveredArg3.
    recoveredBlock7Value3 := (recoveredBlock7Value0) deleteExpression: (recoveredBlock7Value1) ifUnable: (recoveredBlock7Value2).
    recoveredBlock7Value3
].
    (recoveredValue0) updateRecordWith: (recoveredValue1).
    ^self
! !

"lib.ic method 0x2000a74c; bytecode file offset 0x46784"
!EmStandardAccessor methodsFor: 'recovered'!
configMapRemoveApplicationFor: recoveredArg1 application: recoveredArg2 ifUnable: recoveredArg3
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := recoveredArg2.
    recoveredBlock7Value2 := recoveredArg3.
    recoveredBlock7Value3 := (recoveredBlock7Value0) remove: (recoveredBlock7Value1) ifUnable: (recoveredBlock7Value2).
    recoveredBlock7Value3
].
    (recoveredValue0) updateRecordWith: (recoveredValue1).
    ^self
! !

"lib.ic method 0x2000a75c; bytecode file offset 0x46784"
!EmStandardAccessor methodsFor: 'recovered'!
applicationAddConfigExpressionFor: recoveredArg1 newExpr: recoveredArg2 ifUnable: recoveredArg3
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := recoveredArg2.
    recoveredBlock7Value2 := recoveredArg3.
    recoveredBlock7Value3 := (recoveredBlock7Value0) addExpression: (recoveredBlock7Value1) ifUnable: (recoveredBlock7Value2).
    recoveredBlock7Value3
].
    (recoveredValue0) updateEdition: (recoveredValue1).
    ^self
! !

"lib.ic method 0x2000ac94; bytecode file offset 0x46cd4"
!EmStandardAccessor methodsFor: 'recovered'!
applicationManagerFor: recoveredArg1 manager: recoveredArg2 ifUnable: recoveredArg3
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := recoveredArg2.
    recoveredBlock7Value2 := (recoveredBlock7Value1) uniqueName.
    recoveredBlock7Value3 := recoveredArg3.
    recoveredBlock7Value4 := (recoveredBlock7Value0) manager: (recoveredBlock7Value2) ifUnable: (recoveredBlock7Value3).
    recoveredBlock7Value4
].
    (recoveredValue0) updateEdition: (recoveredValue1).
    ^self
! !

"lib.ic method 0x2000aca8; bytecode file offset 0x46cd4"
!EmStandardAccessor methodsFor: 'recovered'!
configMapManagerFor: recoveredArg1 is: recoveredArg2 ifUnable: recoveredArg3
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := recoveredArg2.
    recoveredBlock7Value2 := (recoveredBlock7Value1) uniqueName.
    recoveredBlock7Value3 := recoveredArg3.
    recoveredBlock7Value4 := (recoveredBlock7Value0) manager: (recoveredBlock7Value2) ifNot: (recoveredBlock7Value3).
    recoveredBlock7Value4
].
    (recoveredValue0) relocateRecordWith: (recoveredValue1).
    ^self
! !

"lib.ic method 0x2000b878; bytecode file offset 0x478a4"
!EmStandardAccessor methodsFor: 'recovered'!
applicationUpdateClassCategoryDictionaryFor: recoveredArg1 class: recoveredArg2 dictionary: recoveredArg3 ifUnable: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 |
    recoveredBlock10Value0 := recoveredBlock10Arg1.
    recoveredBlock10Value1 := (recoveredBlock10Value0) currentEntry.
    recoveredBlock10Value2 := recoveredArg3.
    recoveredBlock10Value3 := (recoveredBlock10Value1) contentsForCategoryDictionaryAre: (recoveredBlock10Value2).
    recoveredBlock10Value3
].
    recoveredValue3 := recoveredArg4.
    (recoveredValue0) updateEditionsRecordIn: (recoveredValue1) with: (recoveredValue2) ifUnable: (recoveredValue3).
    ^self
! !

"lib.ic method 0x2000b8ac; bytecode file offset 0x478d8"
!EmStandardAccessor methodsFor: 'recovered'!
applicationVersionClassFor: recoveredArg1 class: recoveredArg2 versionName: recoveredArg3 ifUnable: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 recoveredBlock10Value4 |
    recoveredBlock10Value0 := recoveredBlock10Arg1.
    recoveredBlock10Value1 := (recoveredBlock10Value0) currentEntry.
    recoveredBlock10Value2 := recoveredArg3.
    recoveredBlock10Value3 := recoveredArg4.
    recoveredBlock10Value4 := (recoveredBlock10Value1) versionName: (recoveredBlock10Value2) ifUnable: (recoveredBlock10Value3).
    recoveredBlock10Value4
].
    (recoveredValue0) updateIn: (recoveredValue1) with: (recoveredValue2).
    ^self
! !

"lib.ic method 0x2000b8e0; bytecode file offset 0x47908"
!EmStandardAccessor methodsFor: 'recovered'!
applicationCopyConfigExpressionFor: recoveredArg1 existingExpr: recoveredArg2 newExpr: recoveredArg3 ifUnable: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := recoveredArg2.
    recoveredBlock7Value2 := recoveredArg3.
    recoveredBlock7Value3 := recoveredArg4.
    recoveredBlock7Value4 := (recoveredBlock7Value0) copyExpression: (recoveredBlock7Value1) toCreate: (recoveredBlock7Value2) ifUnable: (recoveredBlock7Value3).
    recoveredBlock7Value4
].
    recoveredValue2 := (recoveredValue0) updateEdition: (recoveredValue1).
    ^recoveredValue2
! !

"lib.ic method 0x2000bc78; bytecode file offset 0x47ca0"
!EmStandardAccessor methodsFor: 'recovered'!
applicationAddSubApp: recoveredArg1 toApp: recoveredArg2 inExpr: recoveredArg3 ifUnable: recoveredArg4
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := recoveredArg1.
    recoveredBlock7Value2 := recoveredArg3.
    recoveredBlock7Value3 := recoveredArg4.
    recoveredBlock7Value4 := (recoveredBlock7Value0) addSubApplication: (recoveredBlock7Value1) to: (recoveredBlock7Value2) ifUnable: (recoveredBlock7Value3).
    recoveredBlock7Value4
].
    (recoveredValue0) updateEdition: (recoveredValue1).
    ^self
! !

"lib.ic method 0x2000bca8; bytecode file offset 0x47d20"
!EmStandardAccessor methodsFor: 'recovered'!
applicationDeletePrerequisiteFor: recoveredArg1 prereqName: recoveredArg2 fromExpr: recoveredArg3 ifUnable: recoveredArg4
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := recoveredArg2.
    recoveredBlock7Value2 := recoveredArg3.
    recoveredBlock7Value3 := recoveredArg4.
    recoveredBlock7Value4 := (recoveredBlock7Value0) deletePrerequisiteNamed: (recoveredBlock7Value1) from: (recoveredBlock7Value2) ifUnable: (recoveredBlock7Value3).
    recoveredBlock7Value4
].
    (recoveredValue0) updateEdition: (recoveredValue1).
    ^self
! !

"lib.ic method 0x2000bcb8; bytecode file offset 0x47d20"
!EmStandardAccessor methodsFor: 'recovered'!
applicationDeleteSubApplicationFor: recoveredArg1 subAppName: recoveredArg2 expr: recoveredArg3 ifUnable: recoveredArg4
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := recoveredArg2.
    recoveredBlock7Value2 := recoveredArg3.
    recoveredBlock7Value3 := recoveredArg4.
    recoveredBlock7Value4 := (recoveredBlock7Value0) deleteSubApplicationNamed: (recoveredBlock7Value1) from: (recoveredBlock7Value2) ifUnable: (recoveredBlock7Value3).
    recoveredBlock7Value4
].
    (recoveredValue0) updateEdition: (recoveredValue1).
    ^self
! !

"lib.ic method 0x2000bcc8; bytecode file offset 0x47d20"
!EmStandardAccessor methodsFor: 'recovered'!
configMapCopyConfigExpressionFor: recoveredArg1 copyExpr: recoveredArg2 toCreate: recoveredArg3 ifUnable: recoveredArg4
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := recoveredArg2.
    recoveredBlock7Value2 := recoveredArg3.
    recoveredBlock7Value3 := recoveredArg4.
    recoveredBlock7Value4 := (recoveredBlock7Value0) copyExpression: (recoveredBlock7Value1) toCreate: (recoveredBlock7Value2) ifUnable: (recoveredBlock7Value3).
    recoveredBlock7Value4
].
    (recoveredValue0) updateRecordWith: (recoveredValue1).
    ^self
! !

"lib.ic method 0x2000bcd8; bytecode file offset 0x47d20"
!EmStandardAccessor methodsFor: 'recovered'!
applicationInsertClassNameFor: recoveredArg1 className: recoveredArg2 type: recoveredArg3 ifUnable: recoveredArg4
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := recoveredArg2.
    recoveredBlock7Value2 := recoveredArg3.
    recoveredBlock7Value3 := recoveredArg4.
    recoveredBlock7Value4 := (recoveredBlock7Value0) insertClassName: (recoveredBlock7Value1) type: (recoveredBlock7Value2) ifUnable: (recoveredBlock7Value3).
    recoveredBlock7Value4
].
    (recoveredValue0) updateEdition: (recoveredValue1).
    ^self
! !

"lib.ic method 0x2000bce8; bytecode file offset 0x47d20"
!EmStandardAccessor methodsFor: 'recovered'!
applicationReleaseSubApplicationFor: recoveredArg1 subApp: recoveredArg2 expr: recoveredArg3 ifUnable: recoveredArg4
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := recoveredArg2.
    recoveredBlock7Value2 := recoveredArg3.
    recoveredBlock7Value3 := recoveredArg4.
    recoveredBlock7Value4 := (recoveredBlock7Value0) releaseSubApplication: (recoveredBlock7Value1) in: (recoveredBlock7Value2) ifUnable: (recoveredBlock7Value3).
    recoveredBlock7Value4
].
    (recoveredValue0) updateEdition: (recoveredValue1).
    ^self
! !

"lib.ic method 0x2000bcf8; bytecode file offset 0x47d20"
!EmStandardAccessor methodsFor: 'recovered'!
applicationAddPrerequisiteFor: recoveredArg1 prereqName: recoveredArg2 toExpr: recoveredArg3 ifUnable: recoveredArg4
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := recoveredArg2.
    recoveredBlock7Value2 := recoveredArg3.
    recoveredBlock7Value3 := recoveredArg4.
    recoveredBlock7Value4 := (recoveredBlock7Value0) addPrerequisiteNamed: (recoveredBlock7Value1) to: (recoveredBlock7Value2) ifUnable: (recoveredBlock7Value3).
    recoveredBlock7Value4
].
    (recoveredValue0) updateEdition: (recoveredValue1).
    ^self
! !

"lib.ic method 0x2000be68; bytecode file offset 0x47eb0"
!EmStandardAccessor methodsFor: 'recovered'!
applicationPartsRecordFor: recoveredArg1 named: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) libraryClass.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) cache.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) appRootDictionaryFor: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) partsRecordClass.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := [
    | block28004294Value0 block28004294Value1 |
    block28004294Value0 := EmLibraryPointer.
    block28004294Value1 := (block28004294Value0) void.
    block28004294Value1
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) library.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) using: (recoveredStack1) from: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2000c9d8; bytecode file offset 0x48a0c"
!EmStandardAccessor methodsFor: 'recovered'!
classEditionsRecordFor: recoveredArg1 class: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSymbol.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) classEditionsClass.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack4 := (recoveredStack4) classEditionsClass.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack5 := recoveredArg2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack6 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack4 := (recoveredStack4) filePointerFor: (recoveredStack5) in: (recoveredStack6).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) for: (recoveredStack2) in: (recoveredStack3) using: (recoveredStack4).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) classEditionsClass.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) for: (recoveredStack2) in: (recoveredStack3).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"lib.ic method 0x2000caa0; bytecode file offset 0x48ad0"
!EmStandardAccessor methodsFor: 'recovered'!
configMapAddApplicationFor: recoveredArg1 application: recoveredArg2 ifUnable: recoveredArg3
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 recoveredBlock7Value5 recoveredBlock7Value6 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := recoveredArg2.
    recoveredBlock7Value2 := (recoveredBlock7Value1) symbol.
    recoveredBlock7Value3 := recoveredArg2.
    recoveredBlock7Value4 := (recoveredBlock7Value3) timeStamp.
    recoveredBlock7Value5 := recoveredArg3.
    recoveredBlock7Value6 := (recoveredBlock7Value0) editionFor: (recoveredBlock7Value2) is: (recoveredBlock7Value4) ifUnable: (recoveredBlock7Value5).
    recoveredBlock7Value6
].
    (recoveredValue0) updateRecordWith: (recoveredValue1).
    ^self
! !

"lib.ic method 0x2000d82c; bytecode file offset 0x49858"
!EmStandardAccessor methodsFor: 'recovered'!
configMapReplaceRequiredMapFor: recoveredArg1 replaceMap: recoveredArg2 withMap: recoveredArg3 forExpr: recoveredArg4 ifUnable: recoveredArg5
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 recoveredBlock7Value5 recoveredBlock7Value6 recoveredBlock7Value7 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := recoveredArg2.
    recoveredBlock7Value2 := (recoveredBlock7Value1) asAssociation.
    recoveredBlock7Value3 := recoveredArg3.
    recoveredBlock7Value4 := (recoveredBlock7Value3) asAssociation.
    recoveredBlock7Value5 := recoveredArg4.
    recoveredBlock7Value6 := recoveredArg5.
    recoveredBlock7Value7 := (recoveredBlock7Value0) replaceRequiredMap: (recoveredBlock7Value2) with: (recoveredBlock7Value4) for: (recoveredBlock7Value5) ifUnable: (recoveredBlock7Value6).
    recoveredBlock7Value7
].
    (recoveredValue0) updateRecordWith: (recoveredValue1).
    ^self
! !

"lib.ic method 0x2000e370; bytecode file offset 0x4a3a4"
!EmStandardAccessor methodsFor: 'recovered'!
applicationAddInitialClassFor: recoveredArg1 class: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7Stack3 recoveredBlock7Stack4 recoveredBlock7Stack5 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
    recoveredBlock7Stack0 := self.
    recoveredBlock7PC := 14.
    recoveredBlock7Done := false.
    [recoveredBlock7Done not] whileTrue: [
        recoveredBlock7Step := recoveredBlock7PC.
        recoveredBlock7Step = 14 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg1.
            recoveredBlock7PC := 15.
        ].
        recoveredBlock7Step = 15 ifTrue: [
            recoveredBlock7Stack2 := recoveredArg2.
            recoveredBlock7PC := 18.
        ].
        recoveredBlock7Step = 18 ifTrue: [
            recoveredBlock7Stack3 := recoveredArg1.
            recoveredBlock7PC := 21.
        ].
        recoveredBlock7Step = 21 ifTrue: [
            recoveredBlock7Stack4 := [:block28004540Arg1 | 
    | block28004540Value0 block28004540Value1 |
    block28004540Value0 := block28004540Arg1.
    block28004540Value1 := (block28004540Value0) initialEditionNamed: ('').
    block28004540Value1
].
            recoveredBlock7PC := 23.
        ].
        recoveredBlock7Step = 23 ifTrue: [
            recoveredBlock7PC := 31.
        ].
        recoveredBlock7Step = 31 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) updateEditionsOf: (recoveredBlock7Stack2) in: (recoveredBlock7Stack3) using: (recoveredBlock7Stack4).
            recoveredBlock7PC := 34.
        ].
        recoveredBlock7Step = 34 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack1.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
    (recoveredValue0) updateParts: (recoveredValue1).
    ^self
! !

"lib.ic method 0x2000e3fc; bytecode file offset 0x4a434"
!EmStandardAccessor methodsFor: 'recovered'!
applicationReleaseSelectorInClassFor: recoveredArg1 compiledMethod: recoveredArg2 ifUnable: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (recoveredValue0) methodClass.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 recoveredBlock11Value4 recoveredBlock11Value5 recoveredBlock11Value6 |
    recoveredBlock11Value0 := recoveredBlock11Arg1.
    recoveredBlock11Value1 := (recoveredBlock11Value0) currentEntry.
    recoveredBlock11Value2 := recoveredArg2.
    recoveredBlock11Value3 := (recoveredBlock11Value2) selector.
    recoveredBlock11Value4 := recoveredArg2.
    recoveredBlock11Value5 := (recoveredBlock11Value4) filePointer.
    recoveredBlock11Value6 := (recoveredBlock11Value1) releaseMethod: (recoveredBlock11Value3) with: (recoveredBlock11Value5).
    recoveredBlock11Value6
].
    recoveredValue4 := recoveredArg3.
    (recoveredValue1) updateEditionsRecordIn: (recoveredValue2) with: (recoveredValue3) ifUnable: (recoveredValue4).
    ^self
! !

"lib.ic method 0x2000e444; bytecode file offset 0x4a474"
!EmStandardAccessor methodsFor: 'recovered'!
applicationOwnerOfClassesFor: recoveredArg1 classNames: recoveredArg2 to: recoveredArg3 ifUnable: recoveredArg4
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 recoveredBlock7Value5 recoveredBlock7Value6 recoveredBlock7Value7 recoveredBlock7Value8 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := recoveredBlock7Value0.
    recoveredBlock7Value2 := recoveredArg3.
    recoveredBlock7Value3 := (recoveredBlock7Value2) uniqueName.
    recoveredBlock7Value4 := recoveredArg4.
    (recoveredBlock7Value1) isGroupMember: (recoveredBlock7Value3) ifNot: (recoveredBlock7Value4).
    recoveredBlock7Value5 := recoveredArg2.
    recoveredBlock7Value6 := recoveredArg3.
    recoveredBlock7Value7 := (recoveredBlock7Value6) uniqueName.
    recoveredBlock7Value8 := (recoveredBlock7Value0) ownerOf: (recoveredBlock7Value5) to: (recoveredBlock7Value7).
    recoveredBlock7Value8
].
    (recoveredValue0) updateEdition: (recoveredValue1).
    ^self
! !

"lib.ic method 0x2000f044; bytecode file offset 0x4b084"
!EmStandardAccessor methodsFor: 'recovered'!
configMapShadowsForNamesAndTimeStampsFor: recoveredArg1 namesAndTimeStamps: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) libraryClass.
    recoveredValue1 := (recoveredValue0) cache.
    recoveredValue2 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := recoveredArg2.
    recoveredBlock6Value1 := [:recoveredBlock6Block15Arg1 | 
    | recoveredBlock6Block15Value0 recoveredBlock6Block15Value1 recoveredBlock6Block15Value2 recoveredBlock6Block15Value3 recoveredBlock6Block15Value4 recoveredBlock6Block15Value5 recoveredBlock6Block15Value6 |
    recoveredBlock6Block15Value0 := recoveredArg1.
    recoveredBlock6Block15Value1 := (recoveredBlock6Block15Value0) shadowClass.
    recoveredBlock6Block15Value2 := recoveredBlock6Block15Arg1.
    recoveredBlock6Block15Value3 := (recoveredBlock6Block15Value2) key.
    recoveredBlock6Block15Value4 := recoveredBlock6Block15Arg1.
    recoveredBlock6Block15Value5 := (recoveredBlock6Block15Value4) value.
    recoveredBlock6Block15Value6 := (recoveredBlock6Block15Value1) named: (recoveredBlock6Block15Value3) timeStamp: (recoveredBlock6Block15Value5).
    recoveredBlock6Block15Value6
].
    recoveredBlock6Value2 := (recoveredBlock6Value0) collect: (recoveredBlock6Value1).
    recoveredBlock6Value2
].
    recoveredValue3 := (recoveredValue1) cacheEditionsWhileExecuting: (recoveredValue2).
    ^recoveredValue3
! !

"lib.ic method 0x2000f094; bytecode file offset 0x4b0c8"
!EmStandardAccessor methodsFor: 'recovered'!
applicationNewPrerequisitesFor: recoveredArg1 prereqs: recoveredArg2 inExpr: recoveredArg3 ifUnable: recoveredArg4
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7Stack3 recoveredBlock7Stack4 recoveredBlock7Stack5 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
    recoveredBlock7Stack0 := self.
    recoveredBlock7PC := 14.
    recoveredBlock7Done := false.
    [recoveredBlock7Done not] whileTrue: [
        recoveredBlock7Step := recoveredBlock7PC.
        recoveredBlock7Step = 14 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg1.
            recoveredBlock7PC := 15.
        ].
        recoveredBlock7Step = 15 ifTrue: [
            recoveredBlock7Stack2 := recoveredArg3.
            recoveredBlock7PC := 18.
        ].
        recoveredBlock7Step = 18 ifTrue: [
            recoveredBlock7Stack3 := recoveredArg2.
            recoveredBlock7PC := 21.
        ].
        recoveredBlock7Step = 21 ifTrue: [
            recoveredBlock7Stack4 := [:block28004618Arg1 | 
    | block28004618Value0 block28004618Value1 |
    block28004618Value0 := block28004618Arg1.
    block28004618Value1 := (block28004618Value0) symbol.
    block28004618Value1
].
            recoveredBlock7PC := 23.
        ].
        recoveredBlock7Step = 23 ifTrue: [
            recoveredBlock7PC := 29.
        ].
        recoveredBlock7Step = 29 ifTrue: [
            recoveredBlock7Stack3 := (recoveredBlock7Stack3) collect: (recoveredBlock7Stack4).
            recoveredBlock7PC := 30.
        ].
        recoveredBlock7Step = 30 ifTrue: [
            recoveredBlock7Stack4 := recoveredArg4.
            recoveredBlock7PC := 33.
        ].
        recoveredBlock7Step = 33 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) prerequisitesFor: (recoveredBlock7Stack2) areNamed: (recoveredBlock7Stack3) ifUnable: (recoveredBlock7Stack4).
            recoveredBlock7PC := 36.
        ].
        recoveredBlock7Step = 36 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack1.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
    (recoveredValue0) updateEdition: (recoveredValue1).
    ^self
! !

"lib.ic method 0x2000f5f0; bytecode file offset 0x4b624"
!EmStandardAccessor methodsFor: 'recovered'!
applicationAddGroupMemberFor: recoveredArg1 newMember: recoveredArg2 ifUnable: recoveredArg3
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 recoveredBlock7Value5 recoveredBlock7Value6 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := recoveredBlock7Value0.
    recoveredBlock7Value2 := recoveredArg3.
    (recoveredBlock7Value1) userMustBeManagerTo: (235) noUserError: (234) ifNot: (recoveredBlock7Value2).
    recoveredBlock7Value3 := recoveredBlock7Value0.
    recoveredBlock7Value4 := recoveredArg2.
    recoveredBlock7Value5 := (recoveredBlock7Value4) uniqueName.
    (recoveredBlock7Value3) addGroupMember: (recoveredBlock7Value5).
    recoveredBlock7Value6 := (recoveredBlock7Value0) insert.
    recoveredBlock7Value6
].
    (recoveredValue0) updateEdition: (recoveredValue1).
    ^self
! !

"lib.ic method 0x2000f638; bytecode file offset 0x4b664"
!EmStandardAccessor methodsFor: 'recovered'!
applicationNewClassEditionFor: recoveredArg1 class: recoveredArg2 ifUnable: recoveredArg3
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := recoveredArg2.
    recoveredBlock7Value2 := recoveredArg1.
    recoveredBlock7Value3 := [:recoveredBlock7Block21Arg1 | 
    | recoveredBlock7Block21Value0 recoveredBlock7Block21Value1 recoveredBlock7Block21Value2 |
    recoveredBlock7Block21Value0 := recoveredBlock7Block21Arg1.
    recoveredBlock7Block21Value1 := recoveredArg3.
    recoveredBlock7Block21Value2 := (recoveredBlock7Block21Value0) newEditionIfUnable: (recoveredBlock7Block21Value1).
    recoveredBlock7Block21Value2
].
    recoveredBlock7Value4 := (recoveredBlock7Value0) updateEditionsOf: (recoveredBlock7Value1) in: (recoveredBlock7Value2) using: (recoveredBlock7Value3).
    recoveredBlock7Value4
].
    (recoveredValue0) updateParts: (recoveredValue1).
    ^self
! !

"lib.ic method 0x2000f678; bytecode file offset 0x4b71c"
!EmStandardAccessor methodsFor: 'recovered'!
configMapDeleteRequiredMapsFor: recoveredArg1 requiredMaps: recoveredArg2 forExpr: recoveredArg3 ifUnable: recoveredArg4
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7Stack3 recoveredBlock7Stack4 recoveredBlock7Stack5 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
    recoveredBlock7Stack0 := self.
    recoveredBlock7PC := 14.
    recoveredBlock7Done := false.
    [recoveredBlock7Done not] whileTrue: [
        recoveredBlock7Step := recoveredBlock7PC.
        recoveredBlock7Step = 14 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg1.
            recoveredBlock7PC := 15.
        ].
        recoveredBlock7Step = 15 ifTrue: [
            recoveredBlock7Stack2 := recoveredArg2.
            recoveredBlock7PC := 18.
        ].
        recoveredBlock7Step = 18 ifTrue: [
            recoveredBlock7Stack3 := [:block28004684Arg1 | 
    | block28004684Value0 block28004684Value1 |
    block28004684Value0 := block28004684Arg1.
    block28004684Value1 := (block28004684Value0) asAssociation.
    block28004684Value1
].
            recoveredBlock7PC := 20.
        ].
        recoveredBlock7Step = 20 ifTrue: [
            recoveredBlock7PC := 27.
        ].
        recoveredBlock7Step = 27 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) collect: (recoveredBlock7Stack3).
            recoveredBlock7PC := 28.
        ].
        recoveredBlock7Step = 28 ifTrue: [
            recoveredBlock7Stack3 := recoveredArg3.
            recoveredBlock7PC := 31.
        ].
        recoveredBlock7Step = 31 ifTrue: [
            recoveredBlock7Stack4 := recoveredArg4.
            recoveredBlock7PC := 34.
        ].
        recoveredBlock7Step = 34 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) deleteRequiredMaps: (recoveredBlock7Stack2) for: (recoveredBlock7Stack3) ifUnable: (recoveredBlock7Stack4).
            recoveredBlock7PC := 37.
        ].
        recoveredBlock7Step = 37 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack1.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
    (recoveredValue0) updateRecordWith: (recoveredValue1).
    ^self
! !

"lib.ic method 0x2000f694; bytecode file offset 0x4b71c"
!EmStandardAccessor methodsFor: 'recovered'!
configMapMoveRequiredMapsToLastFor: recoveredArg1 requiredMaps: recoveredArg2 forExpr: recoveredArg3 ifUnable: recoveredArg4
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7Stack3 recoveredBlock7Stack4 recoveredBlock7Stack5 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
    recoveredBlock7Stack0 := self.
    recoveredBlock7PC := 14.
    recoveredBlock7Done := false.
    [recoveredBlock7Done not] whileTrue: [
        recoveredBlock7Step := recoveredBlock7PC.
        recoveredBlock7Step = 14 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg1.
            recoveredBlock7PC := 15.
        ].
        recoveredBlock7Step = 15 ifTrue: [
            recoveredBlock7Stack2 := recoveredArg2.
            recoveredBlock7PC := 18.
        ].
        recoveredBlock7Step = 18 ifTrue: [
            recoveredBlock7Stack3 := [:block280046a8Arg1 | 
    | block280046a8Value0 block280046a8Value1 |
    block280046a8Value0 := block280046a8Arg1.
    block280046a8Value1 := (block280046a8Value0) asAssociation.
    block280046a8Value1
].
            recoveredBlock7PC := 20.
        ].
        recoveredBlock7Step = 20 ifTrue: [
            recoveredBlock7PC := 27.
        ].
        recoveredBlock7Step = 27 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) collect: (recoveredBlock7Stack3).
            recoveredBlock7PC := 28.
        ].
        recoveredBlock7Step = 28 ifTrue: [
            recoveredBlock7Stack3 := recoveredArg3.
            recoveredBlock7PC := 31.
        ].
        recoveredBlock7Step = 31 ifTrue: [
            recoveredBlock7Stack4 := recoveredArg4.
            recoveredBlock7PC := 34.
        ].
        recoveredBlock7Step = 34 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) moveRequiredMapsToLast: (recoveredBlock7Stack2) for: (recoveredBlock7Stack3) ifUnable: (recoveredBlock7Stack4).
            recoveredBlock7PC := 37.
        ].
        recoveredBlock7Step = 37 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack1.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
    (recoveredValue0) updateRecordWith: (recoveredValue1).
    ^self
! !

"lib.ic method 0x2000f6b0; bytecode file offset 0x4b71c"
!EmStandardAccessor methodsFor: 'recovered'!
configMapAddRequiredMapsAsLastFor: recoveredArg1 requiredMaps: recoveredArg2 forExpr: recoveredArg3 ifUnable: recoveredArg4
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7Stack3 recoveredBlock7Stack4 recoveredBlock7Stack5 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
    recoveredBlock7Stack0 := self.
    recoveredBlock7PC := 14.
    recoveredBlock7Done := false.
    [recoveredBlock7Done not] whileTrue: [
        recoveredBlock7Step := recoveredBlock7PC.
        recoveredBlock7Step = 14 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg1.
            recoveredBlock7PC := 15.
        ].
        recoveredBlock7Step = 15 ifTrue: [
            recoveredBlock7Stack2 := recoveredArg2.
            recoveredBlock7PC := 18.
        ].
        recoveredBlock7Step = 18 ifTrue: [
            recoveredBlock7Stack3 := [:block280046ccArg1 | 
    | block280046ccValue0 block280046ccValue1 |
    block280046ccValue0 := block280046ccArg1.
    block280046ccValue1 := (block280046ccValue0) asAssociation.
    block280046ccValue1
].
            recoveredBlock7PC := 20.
        ].
        recoveredBlock7Step = 20 ifTrue: [
            recoveredBlock7PC := 27.
        ].
        recoveredBlock7Step = 27 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) collect: (recoveredBlock7Stack3).
            recoveredBlock7PC := 28.
        ].
        recoveredBlock7Step = 28 ifTrue: [
            recoveredBlock7Stack3 := recoveredArg3.
            recoveredBlock7PC := 31.
        ].
        recoveredBlock7Step = 31 ifTrue: [
            recoveredBlock7Stack4 := recoveredArg4.
            recoveredBlock7PC := 34.
        ].
        recoveredBlock7Step = 34 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) addRequiredMapsAsLast: (recoveredBlock7Stack2) for: (recoveredBlock7Stack3) ifUnable: (recoveredBlock7Stack4).
            recoveredBlock7PC := 37.
        ].
        recoveredBlock7Step = 37 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack1.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
    (recoveredValue0) updateRecordWith: (recoveredValue1).
    ^self
! !

"lib.ic method 0x2000f6cc; bytecode file offset 0x4b71c"
!EmStandardAccessor methodsFor: 'recovered'!
configMapMoveRequiredMapsToFirstFor: recoveredArg1 requiredMaps: recoveredArg2 forExpr: recoveredArg3 ifUnable: recoveredArg4
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7Stack3 recoveredBlock7Stack4 recoveredBlock7Stack5 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
    recoveredBlock7Stack0 := self.
    recoveredBlock7PC := 14.
    recoveredBlock7Done := false.
    [recoveredBlock7Done not] whileTrue: [
        recoveredBlock7Step := recoveredBlock7PC.
        recoveredBlock7Step = 14 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg1.
            recoveredBlock7PC := 15.
        ].
        recoveredBlock7Step = 15 ifTrue: [
            recoveredBlock7Stack2 := recoveredArg2.
            recoveredBlock7PC := 18.
        ].
        recoveredBlock7Step = 18 ifTrue: [
            recoveredBlock7Stack3 := [:block280046f0Arg1 | 
    | block280046f0Value0 block280046f0Value1 |
    block280046f0Value0 := block280046f0Arg1.
    block280046f0Value1 := (block280046f0Value0) asAssociation.
    block280046f0Value1
].
            recoveredBlock7PC := 20.
        ].
        recoveredBlock7Step = 20 ifTrue: [
            recoveredBlock7PC := 27.
        ].
        recoveredBlock7Step = 27 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) collect: (recoveredBlock7Stack3).
            recoveredBlock7PC := 28.
        ].
        recoveredBlock7Step = 28 ifTrue: [
            recoveredBlock7Stack3 := recoveredArg3.
            recoveredBlock7PC := 31.
        ].
        recoveredBlock7Step = 31 ifTrue: [
            recoveredBlock7Stack4 := recoveredArg4.
            recoveredBlock7PC := 34.
        ].
        recoveredBlock7Step = 34 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) moveRequiredMapsToFirst: (recoveredBlock7Stack2) for: (recoveredBlock7Stack3) ifUnable: (recoveredBlock7Stack4).
            recoveredBlock7PC := 37.
        ].
        recoveredBlock7Step = 37 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack1.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
    (recoveredValue0) updateRecordWith: (recoveredValue1).
    ^self
! !

"lib.ic method 0x2000f6e8; bytecode file offset 0x4b71c"
!EmStandardAccessor methodsFor: 'recovered'!
configMapAddRequiredMapsAsFirstFor: recoveredArg1 requiredMaps: recoveredArg2 forExpr: recoveredArg3 ifUnable: recoveredArg4
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7Stack3 recoveredBlock7Stack4 recoveredBlock7Stack5 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
    recoveredBlock7Stack0 := self.
    recoveredBlock7PC := 14.
    recoveredBlock7Done := false.
    [recoveredBlock7Done not] whileTrue: [
        recoveredBlock7Step := recoveredBlock7PC.
        recoveredBlock7Step = 14 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg1.
            recoveredBlock7PC := 15.
        ].
        recoveredBlock7Step = 15 ifTrue: [
            recoveredBlock7Stack2 := recoveredArg2.
            recoveredBlock7PC := 18.
        ].
        recoveredBlock7Step = 18 ifTrue: [
            recoveredBlock7Stack3 := [:block28004714Arg1 | 
    | block28004714Value0 block28004714Value1 |
    block28004714Value0 := block28004714Arg1.
    block28004714Value1 := (block28004714Value0) asAssociation.
    block28004714Value1
].
            recoveredBlock7PC := 20.
        ].
        recoveredBlock7Step = 20 ifTrue: [
            recoveredBlock7PC := 27.
        ].
        recoveredBlock7Step = 27 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) collect: (recoveredBlock7Stack3).
            recoveredBlock7PC := 28.
        ].
        recoveredBlock7Step = 28 ifTrue: [
            recoveredBlock7Stack3 := recoveredArg3.
            recoveredBlock7PC := 31.
        ].
        recoveredBlock7Step = 31 ifTrue: [
            recoveredBlock7Stack4 := recoveredArg4.
            recoveredBlock7PC := 34.
        ].
        recoveredBlock7Step = 34 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) addRequiredMapsAsFirst: (recoveredBlock7Stack2) for: (recoveredBlock7Stack3) ifUnable: (recoveredBlock7Stack4).
            recoveredBlock7PC := 37.
        ].
        recoveredBlock7Step = 37 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack1.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
    (recoveredValue0) updateRecordWith: (recoveredValue1).
    ^self
! !

"lib.ic method 0x2000fd20; bytecode file offset 0x4bd64"
!EmStandardAccessor methodsFor: 'recovered'!
applicationShadowsForNamesAndTimeStampsFor: recoveredArg1 namesAndTimeStamps: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) libraryClass.
    recoveredValue1 := (recoveredValue0) cache.
    recoveredValue2 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := recoveredArg2.
    recoveredBlock6Value1 := [:recoveredBlock6Block15Arg1 | 
    | recoveredBlock6Block15Value0 recoveredBlock6Block15Value1 recoveredBlock6Block15Value2 recoveredBlock6Block15Value3 recoveredBlock6Block15Value4 recoveredBlock6Block15Value5 recoveredBlock6Block15Value6 recoveredBlock6Block15Value7 |
    recoveredBlock6Block15Value0 := recoveredArg1.
    recoveredBlock6Block15Value1 := (self) applicationClassFromFlag: (recoveredBlock6Block15Value0).
    recoveredBlock6Block15Value2 := (recoveredBlock6Block15Value1) shadowClass.
    recoveredBlock6Block15Value3 := recoveredBlock6Block15Arg1.
    recoveredBlock6Block15Value4 := (recoveredBlock6Block15Value3) key.
    recoveredBlock6Block15Value5 := recoveredBlock6Block15Arg1.
    recoveredBlock6Block15Value6 := (recoveredBlock6Block15Value5) value.
    recoveredBlock6Block15Value7 := (recoveredBlock6Block15Value2) named: (recoveredBlock6Block15Value4) timeStamp: (recoveredBlock6Block15Value6).
    recoveredBlock6Block15Value7
].
    recoveredBlock6Value2 := (recoveredBlock6Value0) collect: (recoveredBlock6Value1).
    recoveredBlock6Value2
].
    recoveredValue3 := (recoveredValue1) cacheEditionsWhileExecuting: (recoveredValue2).
    ^recoveredValue3
! !

"lib.ic method 0x20010090; bytecode file offset 0x4c0e8"
!EmStandardAccessor methodsFor: 'recovered'!
configMapConfigurationRecordFor: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) libraryClass.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) cache.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) mapRootDictionaryFor: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) editionsDictionaryClass.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) obtainRecordAt: (recoveredStack1) ofType: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) configurationRecordClass.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := (recoveredStack3) timeStamp.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack4 := [
    | block2800475cValue0 block2800475cValue1 |
    block2800475cValue0 := EmLibraryPointer.
    block2800475cValue1 := (block2800475cValue0) void.
    block2800475cValue1
].
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3) ifAbsent: (recoveredStack4).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) for: (recoveredStack1) using: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20010e48; bytecode file offset 0x4ce7c"
!EmStandardAccessor methodsFor: 'recovered'!
configMapAddRequiredMapsAfterMapFor: recoveredArg1 requiredMaps: recoveredArg2 afterMap: recoveredArg3 forExpr: recoveredArg4 ifUnable: recoveredArg5
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7Stack3 recoveredBlock7Stack4 recoveredBlock7Stack5 recoveredBlock7Stack6 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
    recoveredBlock7Stack0 := self.
    recoveredBlock7PC := 14.
    recoveredBlock7Done := false.
    [recoveredBlock7Done not] whileTrue: [
        recoveredBlock7Step := recoveredBlock7PC.
        recoveredBlock7Step = 14 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg1.
            recoveredBlock7PC := 15.
        ].
        recoveredBlock7Step = 15 ifTrue: [
            recoveredBlock7Stack2 := recoveredArg2.
            recoveredBlock7PC := 18.
        ].
        recoveredBlock7Step = 18 ifTrue: [
            recoveredBlock7Stack3 := [:block280047ecArg1 | 
    | block280047ecValue0 block280047ecValue1 |
    block280047ecValue0 := block280047ecArg1.
    block280047ecValue1 := (block280047ecValue0) asAssociation.
    block280047ecValue1
].
            recoveredBlock7PC := 20.
        ].
        recoveredBlock7Step = 20 ifTrue: [
            recoveredBlock7PC := 27.
        ].
        recoveredBlock7Step = 27 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) collect: (recoveredBlock7Stack3).
            recoveredBlock7PC := 28.
        ].
        recoveredBlock7Step = 28 ifTrue: [
            recoveredBlock7Stack3 := recoveredArg3.
            recoveredBlock7PC := 31.
        ].
        recoveredBlock7Step = 31 ifTrue: [
            recoveredBlock7Stack3 := (recoveredBlock7Stack3) asAssociation.
            recoveredBlock7PC := 32.
        ].
        recoveredBlock7Step = 32 ifTrue: [
            recoveredBlock7Stack4 := recoveredArg4.
            recoveredBlock7PC := 35.
        ].
        recoveredBlock7Step = 35 ifTrue: [
            recoveredBlock7Stack5 := recoveredArg5.
            recoveredBlock7PC := 38.
        ].
        recoveredBlock7Step = 38 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) addRequiredMaps: (recoveredBlock7Stack2) after: (recoveredBlock7Stack3) for: (recoveredBlock7Stack4) ifUnable: (recoveredBlock7Stack5).
            recoveredBlock7PC := 41.
        ].
        recoveredBlock7Step = 41 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack1.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
    (recoveredValue0) updateRecordWith: (recoveredValue1).
    ^self
! !

"lib.ic method 0x20012720; bytecode file offset 0x4e75c"
!EmStandardAccessor methodsFor: 'recovered'!
configMapStatusForPrivilegeIsFor: recoveredArg1 privilege: recoveredArg2 statusIs: recoveredArg3 ifUnable: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 recoveredBlock7Value5 recoveredBlock7Value6 recoveredBlock7Value7 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := recoveredArg4.
    (recoveredBlock7Value0) userMustBeManagerTo: (257) noUserError: (256) ifNot: (recoveredBlock7Value1).
    recoveredBlock7Value2 := recoveredBlock7Arg1.
    recoveredBlock7Value3 := recoveredArg2.
    recoveredBlock7Value4 := recoveredArg3.
    recoveredBlock7Value5 := (recoveredBlock7Value4) asLowercase.
    recoveredBlock7Value6 := (recoveredBlock7Value5) asSymbol.
    recoveredBlock7Value7 := (recoveredBlock7Value2) statusFor: (recoveredBlock7Value3) is: (recoveredBlock7Value6).
    recoveredBlock7Value7
].
    (recoveredValue0) updateRecordWith: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) configurationRecord.
    recoveredValue4 := (recoveredValue3) privilegesDictionary.
    ^recoveredValue4
! !

"lib.ic method 0x20013268; bytecode file offset 0x4f2a8"
!EmStandardAccessor methodsFor: 'recovered'!
configMapLocalUserFieldAtPutRecordFor: recoveredArg1 atName: recoveredArg2 putRecord: recoveredArg3 userMustBeManagerTo: recoveredArg4 noUserError: recoveredArg5 ifUnable: recoveredArg6
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7Stack3 recoveredBlock7Stack4 recoveredBlock7Stack5 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
    recoveredBlock7Stack0 := self.
    recoveredBlock7PC := 14.
    recoveredBlock7Done := false.
    [recoveredBlock7Done not] whileTrue: [
        recoveredBlock7Step := recoveredBlock7PC.
        recoveredBlock7Step = 14 ifTrue: [
            recoveredBlock7Stack1 := recoveredArg4.
            recoveredBlock7PC := 17.
        ].
        recoveredBlock7Step = 17 ifTrue: [
            (recoveredBlock7Stack1 == nil) ifTrue: [recoveredBlock7PC := 39] ifFalse: [recoveredBlock7PC := 20].
        ].
        recoveredBlock7Step = 20 ifTrue: [
            recoveredBlock7Stack1 := recoveredArg5.
            recoveredBlock7PC := 23.
        ].
        recoveredBlock7Step = 23 ifTrue: [
            (recoveredBlock7Stack1 == nil) ifTrue: [recoveredBlock7PC := 39] ifFalse: [recoveredBlock7PC := 26].
        ].
        recoveredBlock7Step = 26 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg1.
            recoveredBlock7PC := 27.
        ].
        recoveredBlock7Step = 27 ifTrue: [
            recoveredBlock7Stack2 := recoveredArg4.
            recoveredBlock7PC := 30.
        ].
        recoveredBlock7Step = 30 ifTrue: [
            recoveredBlock7Stack3 := recoveredArg5.
            recoveredBlock7PC := 33.
        ].
        recoveredBlock7Step = 33 ifTrue: [
            recoveredBlock7Stack4 := recoveredArg6.
            recoveredBlock7PC := 36.
        ].
        recoveredBlock7Step = 36 ifTrue: [
            (recoveredBlock7Stack1) userMustBeManagerTo: (recoveredBlock7Stack2) noUserError: (recoveredBlock7Stack3) ifNot: (recoveredBlock7Stack4).
            recoveredBlock7PC := 39.
        ].
        recoveredBlock7Step = 39 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg1.
            recoveredBlock7PC := 40.
        ].
        recoveredBlock7Step = 40 ifTrue: [
            recoveredBlock7Stack2 := recoveredArg2.
            recoveredBlock7PC := 43.
        ].
        recoveredBlock7Step = 43 ifTrue: [
            recoveredBlock7Stack3 := recoveredArg3.
            recoveredBlock7PC := 46.
        ].
        recoveredBlock7Step = 46 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) localUserFieldAt: (recoveredBlock7Stack2) putRecord: (recoveredBlock7Stack3).
            recoveredBlock7PC := 48.
        ].
        recoveredBlock7Step = 48 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack1.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
    (recoveredValue0) updateRecordWith: (recoveredValue1).
    ^self
! !

"lib.ic method 0x2001327c; bytecode file offset 0x4f2a8"
!EmStandardAccessor methodsFor: 'recovered'!
applicationLocalUserFieldAtPutRecordFor: recoveredArg1 atName: recoveredArg2 putRecord: recoveredArg3 userMustBeManagerTo: recoveredArg4 noUserError: recoveredArg5 ifUnable: recoveredArg6
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7Stack3 recoveredBlock7Stack4 recoveredBlock7Stack5 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
    recoveredBlock7Stack0 := self.
    recoveredBlock7PC := 14.
    recoveredBlock7Done := false.
    [recoveredBlock7Done not] whileTrue: [
        recoveredBlock7Step := recoveredBlock7PC.
        recoveredBlock7Step = 14 ifTrue: [
            recoveredBlock7Stack1 := recoveredArg4.
            recoveredBlock7PC := 17.
        ].
        recoveredBlock7Step = 17 ifTrue: [
            (recoveredBlock7Stack1 == nil) ifTrue: [recoveredBlock7PC := 39] ifFalse: [recoveredBlock7PC := 20].
        ].
        recoveredBlock7Step = 20 ifTrue: [
            recoveredBlock7Stack1 := recoveredArg5.
            recoveredBlock7PC := 23.
        ].
        recoveredBlock7Step = 23 ifTrue: [
            (recoveredBlock7Stack1 == nil) ifTrue: [recoveredBlock7PC := 39] ifFalse: [recoveredBlock7PC := 26].
        ].
        recoveredBlock7Step = 26 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg1.
            recoveredBlock7PC := 27.
        ].
        recoveredBlock7Step = 27 ifTrue: [
            recoveredBlock7Stack2 := recoveredArg4.
            recoveredBlock7PC := 30.
        ].
        recoveredBlock7Step = 30 ifTrue: [
            recoveredBlock7Stack3 := recoveredArg5.
            recoveredBlock7PC := 33.
        ].
        recoveredBlock7Step = 33 ifTrue: [
            recoveredBlock7Stack4 := recoveredArg6.
            recoveredBlock7PC := 36.
        ].
        recoveredBlock7Step = 36 ifTrue: [
            (recoveredBlock7Stack1) userMustBeManagerTo: (recoveredBlock7Stack2) noUserError: (recoveredBlock7Stack3) ifNot: (recoveredBlock7Stack4).
            recoveredBlock7PC := 39.
        ].
        recoveredBlock7Step = 39 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg1.
            recoveredBlock7PC := 40.
        ].
        recoveredBlock7Step = 40 ifTrue: [
            recoveredBlock7Stack2 := recoveredArg2.
            recoveredBlock7PC := 43.
        ].
        recoveredBlock7Step = 43 ifTrue: [
            recoveredBlock7Stack3 := recoveredArg3.
            recoveredBlock7PC := 46.
        ].
        recoveredBlock7Step = 46 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) localUserFieldAt: (recoveredBlock7Stack2) putRecord: (recoveredBlock7Stack3).
            recoveredBlock7PC := 48.
        ].
        recoveredBlock7Step = 48 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack1.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
    (recoveredValue0) updateEdition: (recoveredValue1).
    ^self
! !

"lib.ic method 0x2001401c; bytecode file offset 0x50050"
!EmStandardAccessor methodsFor: 'recovered'!
classLocalUserFieldAtPutRecordInAppFor: recoveredArg1 atName: recoveredArg2 putRecord: recoveredArg3 application: recoveredArg4 userMustBeDeveloperTo: recoveredArg5 ifUnable: recoveredArg6
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg4.
    recoveredValue2 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Stack0 recoveredBlock10Stack1 recoveredBlock10Stack2 recoveredBlock10Stack3 recoveredBlock10Stack4 recoveredBlock10PC recoveredBlock10Step recoveredBlock10Done recoveredBlock10Result |
    recoveredBlock10Stack0 := self.
    recoveredBlock10PC := 16.
    recoveredBlock10Done := false.
    [recoveredBlock10Done not] whileTrue: [
        recoveredBlock10Step := recoveredBlock10PC.
        recoveredBlock10Step = 16 ifTrue: [
            recoveredBlock10Stack1 := recoveredArg5.
            recoveredBlock10PC := 19.
        ].
        recoveredBlock10Step = 19 ifTrue: [
            (recoveredBlock10Stack1 == nil) ifTrue: [recoveredBlock10PC := 41] ifFalse: [recoveredBlock10PC := 22].
        ].
        recoveredBlock10Step = 22 ifTrue: [
            recoveredBlock10Stack1 := recoveredBlock10Arg1.
            recoveredBlock10PC := 23.
        ].
        recoveredBlock10Step = 23 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) currentEntry.
            recoveredBlock10PC := 24.
        ].
        recoveredBlock10Step = 24 ifTrue: [
            recoveredBlock10Stack2 := recoveredArg5.
            recoveredBlock10PC := 27.
        ].
        recoveredBlock10Step = 27 ifTrue: [
            recoveredBlock10Stack3 := [
    | recoveredBlock10Block27Value0 recoveredBlock10Block27Value1 |
    recoveredBlock10Block27Value0 := recoveredArg6.
    recoveredBlock10Block27Value1 := (recoveredBlock10Block27Value0) value.
    ^recoveredBlock10Block27Value1
].
            recoveredBlock10PC := 39.
        ].
        recoveredBlock10Step = 39 ifTrue: [
            (recoveredBlock10Stack1) userMustBeDeveloperTo: (recoveredBlock10Stack2) ifNot: (recoveredBlock10Stack3).
            recoveredBlock10PC := 41.
        ].
        recoveredBlock10Step = 41 ifTrue: [
            recoveredBlock10Stack1 := recoveredBlock10Arg1.
            recoveredBlock10PC := 42.
        ].
        recoveredBlock10Step = 42 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) currentEntry.
            recoveredBlock10PC := 43.
        ].
        recoveredBlock10Step = 43 ifTrue: [
            recoveredBlock10Stack2 := recoveredArg2.
            recoveredBlock10PC := 46.
        ].
        recoveredBlock10Step = 46 ifTrue: [
            recoveredBlock10Stack3 := recoveredArg3.
            recoveredBlock10PC := 49.
        ].
        recoveredBlock10Step = 49 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) localUserFieldAt: (recoveredBlock10Stack2) putRecord: (recoveredBlock10Stack3).
            recoveredBlock10PC := 51.
        ].
        recoveredBlock10Step = 51 ifTrue: [
            recoveredBlock10Result := recoveredBlock10Stack1.
            recoveredBlock10Done := true.
        ].
    ].
    recoveredBlock10Result
].
    (recoveredValue0) updateEditionsRecordIn: (recoveredValue1) with: (recoveredValue2).
    ^self
! !

"lib.ic method 0x20015268; bytecode file offset 0x512b0"
!EmStandardAccessor methodsFor: 'recovered'!
userUniqueName: recoveredArg1 fullName: recoveredArg2 networkName: recoveredArg3 ifUnable: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) userClass.
    recoveredValue1 := (recoveredValue0) recordClass.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [:recoveredBlock9Arg1 | 
    | recoveredBlock9Stack0 recoveredBlock9Stack1 recoveredBlock9Stack2 recoveredBlock9Stack3 recoveredBlock9Stack4 recoveredBlock9Stack5 recoveredBlock9PC recoveredBlock9Step recoveredBlock9Done recoveredBlock9Result |
    recoveredBlock9Stack0 := self.
    recoveredBlock9PC := 16.
    recoveredBlock9Done := false.
    [recoveredBlock9Done not] whileTrue: [
        recoveredBlock9Step := recoveredBlock9PC.
        recoveredBlock9Step = 16 ifTrue: [
            recoveredBlock9Stack1 := recoveredBlock9Arg1.
            recoveredBlock9PC := 17.
        ].
        recoveredBlock9Step = 17 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) fullName.
            recoveredBlock9PC := 18.
        ].
        recoveredBlock9Step = 18 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) notEmpty.
            recoveredBlock9PC := 19.
        ].
        recoveredBlock9Step = 19 ifTrue: [
            (recoveredBlock9Stack1) ifTrue: [recoveredBlock9PC := 22] ifFalse: [recoveredBlock9PC := 38].
        ].
        recoveredBlock9Step = 22 ifTrue: [
            recoveredBlock9Stack1 := recoveredBlock9Arg1.
            recoveredBlock9PC := 23.
        ].
        recoveredBlock9Step = 23 ifTrue: [
            recoveredBlock9Stack2 := 33.
            recoveredBlock9PC := 25.
        ].
        recoveredBlock9Step = 25 ifTrue: [
            recoveredBlock9Stack3 := Array.
            recoveredBlock9PC := 27.
        ].
        recoveredBlock9Step = 27 ifTrue: [
            recoveredBlock9Stack4 := recoveredArg1.
            recoveredBlock9PC := 30.
        ].
        recoveredBlock9Step = 30 ifTrue: [
            recoveredBlock9Stack3 := (recoveredBlock9Stack3) with: (recoveredBlock9Stack4).
            recoveredBlock9PC := 32.
        ].
        recoveredBlock9Step = 32 ifTrue: [
            recoveredBlock9Stack4 := recoveredArg4.
            recoveredBlock9PC := 35.
        ].
        recoveredBlock9Step = 35 ifTrue: [
            (recoveredBlock9Stack1) stopAndReport: (recoveredBlock9Stack2) withParms: (recoveredBlock9Stack3) exitUsing: (recoveredBlock9Stack4).
            recoveredBlock9PC := 38.
        ].
        recoveredBlock9Step = 38 ifTrue: [
            recoveredBlock9Stack1 := recoveredBlock9Arg1.
            recoveredBlock9PC := 39.
        ].
        recoveredBlock9Step = 39 ifTrue: [
            recoveredBlock9Stack2 := recoveredArg2.
            recoveredBlock9PC := 42.
        ].
        recoveredBlock9Step = 42 ifTrue: [
            recoveredBlock9Stack3 := recoveredArg3.
            recoveredBlock9PC := 45.
        ].
        recoveredBlock9Step = 45 ifTrue: [
            recoveredBlock9Stack3 := (recoveredBlock9Stack3) asLowercase.
            recoveredBlock9PC := 47.
        ].
        recoveredBlock9Step = 47 ifTrue: [
            recoveredBlock9Stack4 := recoveredArg4.
            recoveredBlock9PC := 50.
        ].
        recoveredBlock9Step = 50 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) fullName: (recoveredBlock9Stack2) networkName: (recoveredBlock9Stack3) ifNotAllowed: (recoveredBlock9Stack4).
            recoveredBlock9PC := 53.
        ].
        recoveredBlock9Step = 53 ifTrue: [
            recoveredBlock9Result := recoveredBlock9Stack1.
            recoveredBlock9Done := true.
        ].
    ].
    recoveredBlock9Result
].
    (recoveredValue1) for: (recoveredValue2) relocateUsing: (recoveredValue3).
    ^self
! !

"lib.ic method 0x20015a70; bytecode file offset 0x51aa0"
!EmStandardAccessor methodsFor: 'recovered'!
applicationRemoveSelectorFromClassFor: recoveredArg1 selector: recoveredArg2 class: recoveredArg3 ifUnable: recoveredArg4
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Value0 recoveredBlock16Value1 recoveredBlock16Value2 recoveredBlock16Value3 |
    recoveredBlock16Value0 := recoveredBlock16Arg1.
    recoveredBlock16Value1 := (recoveredBlock16Value0) currentEntry.
    recoveredBlock16Value2 := recoveredArg2.
    recoveredBlock16Value3 := (recoveredBlock16Value1) removeSelector: (recoveredBlock16Value2).
    recoveredBlock16Value3
].
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) updateEditionsRecordIn: (recoveredStack2) with: (recoveredStack3) ifUnable: (recoveredStack4).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredPC := 59.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := [:recoveredBlock44Arg1 | 
    | recoveredBlock44Value0 recoveredBlock44Value1 recoveredBlock44Value2 recoveredBlock44Value3 |
    recoveredBlock44Value0 := recoveredBlock44Arg1.
    recoveredBlock44Value1 := (recoveredBlock44Value0) currentEntry.
    recoveredBlock44Value2 := recoveredArg2.
    recoveredBlock44Value3 := (recoveredBlock44Value1) removeSelector: (recoveredBlock44Value2).
    recoveredBlock44Value3
].
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack1) updateEditionsRecordIn: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20016964; bytecode file offset 0x529c0"
!EmStandardAccessor methodsFor: 'recovered'!
configMapShadowApplicationsFor: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := SortedCollection.
    recoveredValue1 := Class.
    recoveredValue2 := (recoveredValue1) sortBlock.
    recoveredValue3 := (recoveredValue0) sortBlock: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := (self) libraryClass.
    recoveredValue5 := (recoveredValue4) cache.
    recoveredValue6 := [
    | recoveredBlock17Value0 recoveredBlock17Value1 recoveredBlock17Value2 recoveredBlock17Value3 |
    recoveredBlock17Value0 := recoveredArg1.
    recoveredBlock17Value1 := (recoveredBlock17Value0) applicationEditions.
    recoveredBlock17Value2 := [:recoveredBlock17Block29Arg1 | 
    | recoveredBlock17Block29Value0 recoveredBlock17Block29Value1 recoveredBlock17Block29Value2 recoveredBlock17Block29Value3 recoveredBlock17Block29Value4 recoveredBlock17Block29Value5 recoveredBlock17Block29Value6 recoveredBlock17Block29Value7 recoveredBlock17Block29Value8 |
    recoveredBlock17Block29Value0 := recoveredLocal1.
    recoveredBlock17Block29Value1 := (self) applicationClassFromFlag: (false).
    recoveredBlock17Block29Value2 := (recoveredBlock17Block29Value1) shadowClass.
    recoveredBlock17Block29Value3 := recoveredBlock17Block29Arg1.
    recoveredBlock17Block29Value4 := (recoveredBlock17Block29Value3) key.
    recoveredBlock17Block29Value5 := recoveredBlock17Block29Arg1.
    recoveredBlock17Block29Value6 := (recoveredBlock17Block29Value5) value.
    recoveredBlock17Block29Value7 := (recoveredBlock17Block29Value2) named: (recoveredBlock17Block29Value4) timeStamp: (recoveredBlock17Block29Value6).
    recoveredBlock17Block29Value8 := (recoveredBlock17Block29Value0) add: (recoveredBlock17Block29Value7).
    recoveredBlock17Block29Value8
].
    recoveredBlock17Value3 := (recoveredBlock17Value1) associationsDo: (recoveredBlock17Value2).
    recoveredBlock17Value3
].
    (recoveredValue5) cacheEditionsWhileExecuting: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    ^recoveredValue7
! !

"lib.ic method 0x20017864; bytecode file offset 0x538b4"
!EmStandardAccessor methodsFor: 'recovered'!
moveUsers: recoveredArg1 from: recoveredArg2 to: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg2.
    (recoveredValue0) becomeDefault.
    recoveredValue1 := Dictionary.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) size.
    recoveredValue4 := (recoveredValue1) new: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := [:recoveredBlock22Arg1 | 
    | recoveredBlock22Value0 recoveredBlock22Value1 recoveredBlock22Value2 recoveredBlock22Value3 recoveredBlock22Value4 |
    recoveredBlock22Value0 := recoveredLocal1.
    recoveredBlock22Value1 := recoveredBlock22Arg1.
    recoveredBlock22Value2 := recoveredBlock22Arg1.
    recoveredBlock22Value3 := (recoveredBlock22Value2) record.
    recoveredBlock22Value4 := (recoveredBlock22Value0) at: (recoveredBlock22Value1) put: (recoveredBlock22Value3).
    recoveredBlock22Value4
].
    (recoveredValue5) do: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := [:recoveredBlock43Arg1 | 
    | recoveredBlock43Value0 recoveredBlock43Value1 recoveredBlock43Value2 recoveredBlock43Value3 recoveredBlock43Value4 recoveredBlock43Value5 recoveredBlock43Value6 |
    recoveredBlock43Value0 := (self) userClass.
    recoveredBlock43Value1 := recoveredBlock43Arg1.
    recoveredBlock43Value2 := (recoveredBlock43Value1) key.
    recoveredBlock43Value3 := recoveredBlock43Arg1.
    recoveredBlock43Value4 := (recoveredBlock43Value3) value.
    recoveredBlock43Value5 := recoveredArg3.
    recoveredBlock43Value6 := (recoveredBlock43Value0) moveUser: (recoveredBlock43Value2) in: (recoveredBlock43Value4) to: (recoveredBlock43Value5).
    recoveredBlock43Value6
].
    (recoveredValue7) associationsDo: (recoveredValue8).
    ^self
! !

"lib.ic method 0x200183f4; bytecode file offset 0x5444c"
!EmStandardAccessor methodsFor: 'recovered'!
classShadowEditionsOfSelectorInAppFor: recoveredArg1 selector: recoveredArg2 application: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue2) editionsRecordIn: (recoveredValue3).
    recoveredValue5 := (recoveredValue4) methodEditions.
    recoveredValue6 := recoveredArg2.
    recoveredValue7 := (self) editionsDictionaryClass.
    recoveredValue8 := (recoveredValue5) obtainRecordAt: (recoveredValue6) ofType: (recoveredValue7).
    recoveredValue9 := [:recoveredBlock26Arg1 | 
    | recoveredBlock26Value0 recoveredBlock26Value1 recoveredBlock26Value2 recoveredBlock26Value3 recoveredBlock26Value4 recoveredBlock26Value5 recoveredBlock26Value6 recoveredBlock26Value7 recoveredBlock26Value8 recoveredBlock26Value9 recoveredBlock26Value10 recoveredBlock26Value11 recoveredBlock26Value12 |
    recoveredBlock26Value0 := recoveredLocal1.
    recoveredBlock26Value1 := EmShadowCompiledMethod.
    recoveredBlock26Value2 := recoveredArg2.
    recoveredBlock26Value3 := recoveredArg1.
    recoveredBlock26Value4 := recoveredArg3.
    recoveredBlock26Value5 := (recoveredBlock26Value1) named: (recoveredBlock26Value2) for: (recoveredBlock26Value3) in: (recoveredBlock26Value4).
    recoveredBlock26Value6 := recoveredBlock26Value5.
    recoveredBlock26Value7 := recoveredBlock26Arg1.
    recoveredBlock26Value8 := (recoveredBlock26Value7) key.
    (recoveredBlock26Value6) timeStamp: (recoveredBlock26Value8).
    recoveredBlock26Value9 := recoveredBlock26Value5.
    recoveredBlock26Value10 := recoveredBlock26Arg1.
    recoveredBlock26Value11 := (recoveredBlock26Value10) value.
    (recoveredBlock26Value9) filePointer: (recoveredBlock26Value11).
    recoveredBlock26Value12 := (recoveredBlock26Value0) add: (recoveredBlock26Value5).
    recoveredBlock26Value12
].
    (recoveredValue8) forAllEntriesDo: (recoveredValue9).
    recoveredValue10 := recoveredLocal1.
    ^recoveredValue10
! !

"lib.ic method 0x20019544; bytecode file offset 0x55594"
!EmStandardAccessor methodsFor: 'recovered'!
applicationRemoveGroupMemberFor: recoveredArg1 groupMember: recoveredArg2 ifUnable: recoveredArg3
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7Stack3 recoveredBlock7Stack4 recoveredBlock7Stack5 recoveredBlock7Stack6 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
    recoveredBlock7Stack0 := self.
    recoveredBlock7PC := 14.
    recoveredBlock7Done := false.
    [recoveredBlock7Done not] whileTrue: [
        recoveredBlock7Step := recoveredBlock7PC.
        recoveredBlock7Step = 14 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg1.
            recoveredBlock7PC := 15.
        ].
        recoveredBlock7Step = 15 ifTrue: [
            recoveredBlock7Stack2 := recoveredArg2.
            recoveredBlock7PC := 18.
        ].
        recoveredBlock7Step = 18 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) uniqueName.
            recoveredBlock7PC := 19.
        ].
        recoveredBlock7Step = 19 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) allClassNamesOwnedBy: (recoveredBlock7Stack2).
            recoveredBlock7PC := 20.
        ].
        recoveredBlock7Step = 20 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) notEmpty.
            recoveredBlock7PC := 21.
        ].
        recoveredBlock7Step = 21 ifTrue: [
            (recoveredBlock7Stack1) ifTrue: [recoveredBlock7PC := 24] ifFalse: [recoveredBlock7PC := 47].
        ].
        recoveredBlock7Step = 24 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg1.
            recoveredBlock7PC := 25.
        ].
        recoveredBlock7Step = 25 ifTrue: [
            recoveredBlock7Stack2 := 25.
            recoveredBlock7PC := 27.
        ].
        recoveredBlock7Step = 27 ifTrue: [
            recoveredBlock7Stack3 := Array.
            recoveredBlock7PC := 29.
        ].
        recoveredBlock7Step = 29 ifTrue: [
            recoveredBlock7Stack4 := recoveredArg2.
            recoveredBlock7PC := 32.
        ].
        recoveredBlock7Step = 32 ifTrue: [
            recoveredBlock7Stack4 := (recoveredBlock7Stack4) fullName.
            recoveredBlock7PC := 34.
        ].
        recoveredBlock7Step = 34 ifTrue: [
            recoveredBlock7Stack5 := recoveredArg1.
            recoveredBlock7PC := 37.
        ].
        recoveredBlock7Step = 37 ifTrue: [
            recoveredBlock7Stack5 := (recoveredBlock7Stack5) signature.
            recoveredBlock7PC := 39.
        ].
        recoveredBlock7Step = 39 ifTrue: [
            recoveredBlock7Stack3 := (recoveredBlock7Stack3) with: (recoveredBlock7Stack4) with: (recoveredBlock7Stack5).
            recoveredBlock7PC := 41.
        ].
        recoveredBlock7Step = 41 ifTrue: [
            recoveredBlock7Stack4 := recoveredArg3.
            recoveredBlock7PC := 44.
        ].
        recoveredBlock7Step = 44 ifTrue: [
            (recoveredBlock7Stack1) stopAndReport: (recoveredBlock7Stack2) withParms: (recoveredBlock7Stack3) exitUsing: (recoveredBlock7Stack4).
            recoveredBlock7PC := 47.
        ].
        recoveredBlock7Step = 47 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg1.
            recoveredBlock7PC := 48.
        ].
        recoveredBlock7Step = 48 ifTrue: [
            recoveredBlock7Stack2 := 243.
            recoveredBlock7PC := 52.
        ].
        recoveredBlock7Step = 52 ifTrue: [
            recoveredBlock7Stack3 := 242.
            recoveredBlock7PC := 56.
        ].
        recoveredBlock7Step = 56 ifTrue: [
            recoveredBlock7Stack4 := recoveredArg3.
            recoveredBlock7PC := 59.
        ].
        recoveredBlock7Step = 59 ifTrue: [
            (recoveredBlock7Stack1) userMustBeManagerTo: (recoveredBlock7Stack2) noUserError: (recoveredBlock7Stack3) ifNot: (recoveredBlock7Stack4).
            recoveredBlock7PC := 62.
        ].
        recoveredBlock7Step = 62 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg1.
            recoveredBlock7PC := 63.
        ].
        recoveredBlock7Step = 63 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Stack1.
            recoveredBlock7PC := 64.
        ].
        recoveredBlock7Step = 64 ifTrue: [
            recoveredBlock7Stack3 := recoveredArg2.
            recoveredBlock7PC := 67.
        ].
        recoveredBlock7Step = 67 ifTrue: [
            recoveredBlock7Stack3 := (recoveredBlock7Stack3) uniqueName.
            recoveredBlock7PC := 68.
        ].
        recoveredBlock7Step = 68 ifTrue: [
            (recoveredBlock7Stack2) removeGroupMember: (recoveredBlock7Stack3).
            recoveredBlock7PC := 70.
        ].
        recoveredBlock7Step = 70 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) insert.
            recoveredBlock7PC := 72.
        ].
        recoveredBlock7Step = 72 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack1.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
    (recoveredValue0) updateEdition: (recoveredValue1).
    ^self
! !

"lib.ic method 0x20019a4c; bytecode file offset 0x55a94"
!EmStandardAccessor methodsFor: 'recovered'!
applicationInheritedUserFieldAtPutRecordFor: recoveredArg1 atName: recoveredArg2 putRecord: recoveredArg3 userMustBeManagerTo: recoveredArg4 noUserError: recoveredArg5 mustBeEditionTo: recoveredArg6 withParms: recoveredArg7 ifUnable: recoveredArg8
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7Stack3 recoveredBlock7Stack4 recoveredBlock7Stack5 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
    recoveredBlock7Stack0 := self.
    recoveredBlock7PC := 14.
    recoveredBlock7Done := false.
    [recoveredBlock7Done not] whileTrue: [
        recoveredBlock7Step := recoveredBlock7PC.
        recoveredBlock7Step = 14 ifTrue: [
            recoveredBlock7Stack1 := recoveredArg4.
            recoveredBlock7PC := 17.
        ].
        recoveredBlock7Step = 17 ifTrue: [
            (recoveredBlock7Stack1 == nil) ifTrue: [recoveredBlock7PC := 39] ifFalse: [recoveredBlock7PC := 20].
        ].
        recoveredBlock7Step = 20 ifTrue: [
            recoveredBlock7Stack1 := recoveredArg5.
            recoveredBlock7PC := 23.
        ].
        recoveredBlock7Step = 23 ifTrue: [
            (recoveredBlock7Stack1 == nil) ifTrue: [recoveredBlock7PC := 39] ifFalse: [recoveredBlock7PC := 26].
        ].
        recoveredBlock7Step = 26 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg1.
            recoveredBlock7PC := 27.
        ].
        recoveredBlock7Step = 27 ifTrue: [
            recoveredBlock7Stack2 := recoveredArg4.
            recoveredBlock7PC := 30.
        ].
        recoveredBlock7Step = 30 ifTrue: [
            recoveredBlock7Stack3 := recoveredArg5.
            recoveredBlock7PC := 33.
        ].
        recoveredBlock7Step = 33 ifTrue: [
            recoveredBlock7Stack4 := recoveredArg8.
            recoveredBlock7PC := 36.
        ].
        recoveredBlock7Step = 36 ifTrue: [
            (recoveredBlock7Stack1) userMustBeManagerTo: (recoveredBlock7Stack2) noUserError: (recoveredBlock7Stack3) ifNot: (recoveredBlock7Stack4).
            recoveredBlock7PC := 39.
        ].
        recoveredBlock7Step = 39 ifTrue: [
            recoveredBlock7Stack1 := recoveredArg6.
            recoveredBlock7PC := 42.
        ].
        recoveredBlock7Step = 42 ifTrue: [
            (recoveredBlock7Stack1 == nil) ifTrue: [recoveredBlock7PC := 65] ifFalse: [recoveredBlock7PC := 46].
        ].
        recoveredBlock7Step = 46 ifTrue: [
            recoveredBlock7Stack1 := recoveredArg7.
            recoveredBlock7PC := 49.
        ].
        recoveredBlock7Step = 49 ifTrue: [
            (recoveredBlock7Stack1 == nil) ifTrue: [recoveredBlock7PC := 65] ifFalse: [recoveredBlock7PC := 52].
        ].
        recoveredBlock7Step = 52 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg1.
            recoveredBlock7PC := 53.
        ].
        recoveredBlock7Step = 53 ifTrue: [
            recoveredBlock7Stack2 := recoveredArg6.
            recoveredBlock7PC := 56.
        ].
        recoveredBlock7Step = 56 ifTrue: [
            recoveredBlock7Stack3 := recoveredArg7.
            recoveredBlock7PC := 59.
        ].
        recoveredBlock7Step = 59 ifTrue: [
            recoveredBlock7Stack4 := recoveredArg8.
            recoveredBlock7PC := 62.
        ].
        recoveredBlock7Step = 62 ifTrue: [
            (recoveredBlock7Stack1) mustBeEditionTo: (recoveredBlock7Stack2) withParms: (recoveredBlock7Stack3) ifNot: (recoveredBlock7Stack4).
            recoveredBlock7PC := 65.
        ].
        recoveredBlock7Step = 65 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg1.
            recoveredBlock7PC := 66.
        ].
        recoveredBlock7Step = 66 ifTrue: [
            recoveredBlock7Stack2 := recoveredArg2.
            recoveredBlock7PC := 69.
        ].
        recoveredBlock7Step = 69 ifTrue: [
            recoveredBlock7Stack3 := recoveredArg3.
            recoveredBlock7PC := 72.
        ].
        recoveredBlock7Step = 72 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) inheritedUserFieldAt: (recoveredBlock7Stack2) putRecord: (recoveredBlock7Stack3).
            recoveredBlock7PC := 74.
        ].
        recoveredBlock7Step = 74 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack1.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
    (recoveredValue0) updateEdition: (recoveredValue1).
    ^self
! !

"lib.ic method 0x20019a64; bytecode file offset 0x55a94"
!EmStandardAccessor methodsFor: 'recovered'!
configMapInheritedUserFieldAtPutRecordFor: recoveredArg1 atName: recoveredArg2 putRecord: recoveredArg3 userMustBeManagerTo: recoveredArg4 noUserError: recoveredArg5 mustBeEditionTo: recoveredArg6 withParms: recoveredArg7 ifUnable: recoveredArg8
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7Stack3 recoveredBlock7Stack4 recoveredBlock7Stack5 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
    recoveredBlock7Stack0 := self.
    recoveredBlock7PC := 14.
    recoveredBlock7Done := false.
    [recoveredBlock7Done not] whileTrue: [
        recoveredBlock7Step := recoveredBlock7PC.
        recoveredBlock7Step = 14 ifTrue: [
            recoveredBlock7Stack1 := recoveredArg4.
            recoveredBlock7PC := 17.
        ].
        recoveredBlock7Step = 17 ifTrue: [
            (recoveredBlock7Stack1 == nil) ifTrue: [recoveredBlock7PC := 39] ifFalse: [recoveredBlock7PC := 20].
        ].
        recoveredBlock7Step = 20 ifTrue: [
            recoveredBlock7Stack1 := recoveredArg5.
            recoveredBlock7PC := 23.
        ].
        recoveredBlock7Step = 23 ifTrue: [
            (recoveredBlock7Stack1 == nil) ifTrue: [recoveredBlock7PC := 39] ifFalse: [recoveredBlock7PC := 26].
        ].
        recoveredBlock7Step = 26 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg1.
            recoveredBlock7PC := 27.
        ].
        recoveredBlock7Step = 27 ifTrue: [
            recoveredBlock7Stack2 := recoveredArg4.
            recoveredBlock7PC := 30.
        ].
        recoveredBlock7Step = 30 ifTrue: [
            recoveredBlock7Stack3 := recoveredArg5.
            recoveredBlock7PC := 33.
        ].
        recoveredBlock7Step = 33 ifTrue: [
            recoveredBlock7Stack4 := recoveredArg8.
            recoveredBlock7PC := 36.
        ].
        recoveredBlock7Step = 36 ifTrue: [
            (recoveredBlock7Stack1) userMustBeManagerTo: (recoveredBlock7Stack2) noUserError: (recoveredBlock7Stack3) ifNot: (recoveredBlock7Stack4).
            recoveredBlock7PC := 39.
        ].
        recoveredBlock7Step = 39 ifTrue: [
            recoveredBlock7Stack1 := recoveredArg6.
            recoveredBlock7PC := 42.
        ].
        recoveredBlock7Step = 42 ifTrue: [
            (recoveredBlock7Stack1 == nil) ifTrue: [recoveredBlock7PC := 65] ifFalse: [recoveredBlock7PC := 46].
        ].
        recoveredBlock7Step = 46 ifTrue: [
            recoveredBlock7Stack1 := recoveredArg7.
            recoveredBlock7PC := 49.
        ].
        recoveredBlock7Step = 49 ifTrue: [
            (recoveredBlock7Stack1 == nil) ifTrue: [recoveredBlock7PC := 65] ifFalse: [recoveredBlock7PC := 52].
        ].
        recoveredBlock7Step = 52 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg1.
            recoveredBlock7PC := 53.
        ].
        recoveredBlock7Step = 53 ifTrue: [
            recoveredBlock7Stack2 := recoveredArg6.
            recoveredBlock7PC := 56.
        ].
        recoveredBlock7Step = 56 ifTrue: [
            recoveredBlock7Stack3 := recoveredArg7.
            recoveredBlock7PC := 59.
        ].
        recoveredBlock7Step = 59 ifTrue: [
            recoveredBlock7Stack4 := recoveredArg8.
            recoveredBlock7PC := 62.
        ].
        recoveredBlock7Step = 62 ifTrue: [
            (recoveredBlock7Stack1) mustBeEditionTo: (recoveredBlock7Stack2) withParms: (recoveredBlock7Stack3) ifNot: (recoveredBlock7Stack4).
            recoveredBlock7PC := 65.
        ].
        recoveredBlock7Step = 65 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg1.
            recoveredBlock7PC := 66.
        ].
        recoveredBlock7Step = 66 ifTrue: [
            recoveredBlock7Stack2 := recoveredArg2.
            recoveredBlock7PC := 69.
        ].
        recoveredBlock7Step = 69 ifTrue: [
            recoveredBlock7Stack3 := recoveredArg3.
            recoveredBlock7PC := 72.
        ].
        recoveredBlock7Step = 72 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) inheritedUserFieldAt: (recoveredBlock7Stack2) putRecord: (recoveredBlock7Stack3).
            recoveredBlock7PC := 74.
        ].
        recoveredBlock7Step = 74 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack1.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
    (recoveredValue0) updateRecordWith: (recoveredValue1).
    ^self
! !

"lib.ic method 0x2001a228; bytecode file offset 0x56260"
!EmStandardAccessor methodsFor: 'recovered'!
classInheritedUserFieldAtPutRecordInAppFor: recoveredArg1 atName: recoveredArg2 putRecord: recoveredArg3 application: recoveredArg4 ifUnable: recoveredArg5
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg5.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg4.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Value0 recoveredBlock16Value1 recoveredBlock16Value2 recoveredBlock16Value3 recoveredBlock16Value4 |
    recoveredBlock16Value0 := recoveredBlock16Arg1.
    recoveredBlock16Value1 := (recoveredBlock16Value0) currentEntry.
    recoveredBlock16Value2 := recoveredArg2.
    recoveredBlock16Value3 := recoveredArg3.
    recoveredBlock16Value4 := (recoveredBlock16Value1) inheritedUserFieldAt: (recoveredBlock16Value2) putRecord: (recoveredBlock16Value3).
    recoveredBlock16Value4
].
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) updateEditionsRecordIn: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredPC := 79.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := (recoveredStack2) controller.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := [:recoveredBlock45Arg1 | 
    | recoveredBlock45Value0 recoveredBlock45Value1 recoveredBlock45Value2 recoveredBlock45Value3 recoveredBlock45Value4 |
    recoveredBlock45Value0 := recoveredBlock45Arg1.
    recoveredBlock45Value1 := (recoveredBlock45Value0) currentEntry.
    recoveredBlock45Value2 := recoveredArg2.
    recoveredBlock45Value3 := recoveredArg3.
    recoveredBlock45Value4 := (recoveredBlock45Value1) inheritedUserFieldAt: (recoveredBlock45Value2) putRecord: (recoveredBlock45Value3).
    recoveredBlock45Value4
].
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack4 := [
    | recoveredBlock63Value0 recoveredBlock63Value1 |
    recoveredBlock63Value0 := recoveredArg5.
    recoveredBlock63Value1 := (recoveredBlock63Value0) value.
    ^recoveredBlock63Value1
].
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack1) updateEditionsRecordIn: (recoveredStack2) with: (recoveredStack3) ifUnable: (recoveredStack4).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2001c5d8; bytecode file offset 0x5862c"
!EmStandardAccessor methodsFor: 'recovered'!
applicationStatusForPrivilegeIsFor: recoveredArg1 privilege: recoveredArg2 statusIs: recoveredArg3 ifUnable: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 recoveredBlock7Value5 recoveredBlock7Value6 recoveredBlock7Value7 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := recoveredBlock7Value0.
    recoveredBlock7Value2 := recoveredArg4.
    (recoveredBlock7Value1) userMustBeManagerTo: (245) noUserError: (244) ifNot: (recoveredBlock7Value2).
    recoveredBlock7Value3 := recoveredArg2.
    recoveredBlock7Value4 := recoveredArg3.
    recoveredBlock7Value5 := (recoveredBlock7Value4) asLowercase.
    recoveredBlock7Value6 := (recoveredBlock7Value5) asSymbol.
    recoveredBlock7Value7 := (recoveredBlock7Value0) statusFor: (recoveredBlock7Value3) is: (recoveredBlock7Value6).
    recoveredBlock7Value7
].
    (recoveredValue0) updateEdition: (recoveredValue1).
    recoveredValue2 := Dictionary.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) editionRecord.
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (recoveredValue6) class.
    recoveredValue8 := (recoveredValue7) privilegeNames.
    recoveredValue9 := [:recoveredBlock65Arg1 | 
    | recoveredBlock65Value0 recoveredBlock65Value1 recoveredBlock65Value2 recoveredBlock65Value3 recoveredBlock65Value4 recoveredBlock65Value5 |
    recoveredBlock65Value0 := recoveredLocal2.
    recoveredBlock65Value1 := recoveredBlock65Arg1.
    recoveredBlock65Value2 := recoveredLocal1.
    recoveredBlock65Value3 := recoveredBlock65Arg1.
    recoveredBlock65Value4 := (recoveredBlock65Value2) statusFor: (recoveredBlock65Value3).
    recoveredBlock65Value5 := (recoveredBlock65Value0) at: (recoveredBlock65Value1) put: (recoveredBlock65Value4).
    recoveredBlock65Value5
].
    (recoveredValue8) do: (recoveredValue9).
    recoveredValue10 := recoveredLocal2.
    ^recoveredValue10
! !

"lib.ic method 0x2001c82c; bytecode file offset 0x58888"
!EmStandardAccessor methodsFor: 'recovered'!
applicationShadowsForNameFor: recoveredArg1 name: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SortedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block28004d20Arg1 :block28004d20Arg2 | 
    | block28004d20Value0 block28004d20Value1 block28004d20Value2 block28004d20Value3 block28004d20Value4 |
    block28004d20Value0 := block28004d20Arg1.
    block28004d20Value1 := (block28004d20Value0) key.
    block28004d20Value2 := block28004d20Arg2.
    block28004d20Value3 := (block28004d20Value2) key.
    block28004d20Value4 := (block28004d20Value1) > (block28004d20Value3).
    block28004d20Value4
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) sortBlock: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) partsRecordFor: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) editionsDictionary.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) asDictionary.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := [:recoveredBlock40Arg1 | 
    | recoveredBlock40Value0 recoveredBlock40Value1 recoveredBlock40Value2 |
    recoveredBlock40Value0 := recoveredLocal2.
    recoveredBlock40Value1 := recoveredBlock40Arg1.
    recoveredBlock40Value2 := (recoveredBlock40Value0) add: (recoveredBlock40Value1).
    recoveredBlock40Value2
].
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack1) associationsDo: (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) asOrderedCollection.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := [:recoveredBlock60Arg1 | 
    | recoveredBlock60Value0 recoveredBlock60Value1 recoveredBlock60Value2 recoveredBlock60Value3 recoveredBlock60Value4 recoveredBlock60Value5 recoveredBlock60Value6 recoveredBlock60Value7 recoveredBlock60Value8 recoveredBlock60Value9 |
    recoveredBlock60Value0 := recoveredArg1.
    recoveredBlock60Value1 := (recoveredBlock60Value0) shadowClass.
    recoveredBlock60Value2 := recoveredArg2.
    recoveredBlock60Value3 := recoveredBlock60Arg1.
    recoveredBlock60Value4 := (recoveredBlock60Value3) key.
    recoveredBlock60Value5 := recoveredBlock60Arg1.
    recoveredBlock60Value6 := (recoveredBlock60Value5) value.
    recoveredBlock60Value7 := recoveredLocal1.
    recoveredBlock60Value8 := (recoveredBlock60Value7) library.
    recoveredBlock60Value9 := (recoveredBlock60Value1) named: (recoveredBlock60Value2) timeStamp: (recoveredBlock60Value4) cacheSubs: (false) infoAt: (recoveredBlock60Value6) from: (recoveredBlock60Value8).
    recoveredBlock60Value9
].
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"lib.ic method 0x2001d7e4; bytecode file offset 0x59840"
!EmStandardAccessor methodsFor: 'recovered'!
loadingClassInfoFor: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) size.
    recoveredValue3 := (recoveredValue0) new: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := [:recoveredBlock17Arg1 | 
    | recoveredBlock17Local1 recoveredBlock17Local2 recoveredBlock17Value0 recoveredBlock17Value1 recoveredBlock17Value2 recoveredBlock17Value3 recoveredBlock17Value4 recoveredBlock17Value5 recoveredBlock17Value6 recoveredBlock17Value7 recoveredBlock17Value8 recoveredBlock17Value9 recoveredBlock17Value10 recoveredBlock17Value11 recoveredBlock17Value12 recoveredBlock17Value13 recoveredBlock17Value14 recoveredBlock17Value15 recoveredBlock17Value16 recoveredBlock17Value17 recoveredBlock17Value18 recoveredBlock17Value19 recoveredBlock17Value20 recoveredBlock17Value21 recoveredBlock17Value22 recoveredBlock17Value23 recoveredBlock17Value24 recoveredBlock17Value25 recoveredBlock17Value26 recoveredBlock17Value27 |
    recoveredBlock17Value0 := recoveredBlock17Arg1.
    recoveredBlock17Value1 := (recoveredBlock17Value0) currentEntry.
    recoveredBlock17Local1 := recoveredBlock17Value1.
    recoveredBlock17Value2 := Array.
    recoveredBlock17Value3 := (recoveredBlock17Value2) new: (7).
    recoveredBlock17Local2 := recoveredBlock17Value3.
    recoveredBlock17Value4 := recoveredBlock17Local2.
    recoveredBlock17Value5 := recoveredBlock17Value4.
    recoveredBlock17Value6 := recoveredBlock17Local1.
    recoveredBlock17Value7 := (recoveredBlock17Value6) inheritedUserFields.
    (recoveredBlock17Value5) at: (1) put: (recoveredBlock17Value7).
    recoveredBlock17Value8 := recoveredBlock17Value4.
    recoveredBlock17Value9 := recoveredBlock17Arg1.
    recoveredBlock17Value10 := (recoveredBlock17Value9) allKnownMFTS.
    (recoveredBlock17Value8) at: (2) put: (recoveredBlock17Value10).
    recoveredBlock17Value11 := recoveredBlock17Value4.
    recoveredBlock17Value12 := recoveredBlock17Local1.
    recoveredBlock17Value13 := (recoveredBlock17Value12) definitionRecord.
    (recoveredBlock17Value11) at: (3) put: (recoveredBlock17Value13).
    recoveredBlock17Value14 := recoveredBlock17Value4.
    recoveredBlock17Value15 := recoveredBlock17Local1.
    recoveredBlock17Value16 := (recoveredBlock17Value15) classMethods.
    (recoveredBlock17Value14) at: (4) put: (recoveredBlock17Value16).
    recoveredBlock17Value17 := recoveredBlock17Value4.
    recoveredBlock17Value18 := recoveredBlock17Local1.
    recoveredBlock17Value19 := (recoveredBlock17Value18) instanceMethods.
    (recoveredBlock17Value17) at: (5) put: (recoveredBlock17Value19).
    recoveredBlock17Value20 := recoveredBlock17Value4.
    recoveredBlock17Value21 := recoveredBlock17Local1.
    recoveredBlock17Value22 := (recoveredBlock17Value21) classCategoryDictionary.
    (recoveredBlock17Value20) at: (6) put: (recoveredBlock17Value22).
    recoveredBlock17Value23 := recoveredBlock17Local1.
    recoveredBlock17Value24 := (recoveredBlock17Value23) instanceCategoryDictionary.
    (recoveredBlock17Value4) at: (7) put: (recoveredBlock17Value24).
    recoveredBlock17Value25 := recoveredLocal1.
    recoveredBlock17Value26 := recoveredBlock17Local2.
    recoveredBlock17Value27 := (recoveredBlock17Value25) add: (recoveredBlock17Value26).
    recoveredBlock17Value27
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"lib.ic method 0x2001dbd4; bytecode file offset 0x59c44"
!EmStandardAccessor methodsFor: 'recovered'!
configMapEditionsDictionaryForNameFor: recoveredArg1 name: recoveredArg2 initializeMaps: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) configurationRecordClass.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue1) editionsDictionaryFor: (recoveredValue2).
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := Dictionary.
    recoveredValue5 := (recoveredValue4) new.
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredLocal2.
    recoveredValue7 := [:recoveredBlock24Arg1 | 
    | recoveredBlock24Local1 recoveredBlock24Local2 recoveredBlock24Stack0 recoveredBlock24Stack1 recoveredBlock24Stack2 recoveredBlock24Stack3 recoveredBlock24Stack4 recoveredBlock24Stack5 recoveredBlock24PC recoveredBlock24Step recoveredBlock24Done recoveredBlock24Result |
    recoveredBlock24Stack0 := self.
    recoveredBlock24PC := 30.
    recoveredBlock24Done := false.
    [recoveredBlock24Done not] whileTrue: [
        recoveredBlock24Step := recoveredBlock24PC.
        recoveredBlock24Step = 30 ifTrue: [
            recoveredBlock24Stack1 := recoveredArg1.
            recoveredBlock24PC := 33.
        ].
        recoveredBlock24Step = 33 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) configurationRecordClass.
            recoveredBlock24PC := 34.
        ].
        recoveredBlock24Step = 34 ifTrue: [
            recoveredBlock24Stack2 := recoveredBlock24Arg1.
            recoveredBlock24PC := 35.
        ].
        recoveredBlock24Step = 35 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) value.
            recoveredBlock24PC := 37.
        ].
        recoveredBlock24Step = 37 ifTrue: [
            recoveredBlock24Stack3 := recoveredLocal2.
            recoveredBlock24PC := 40.
        ].
        recoveredBlock24Step = 40 ifTrue: [
            recoveredBlock24Stack3 := (recoveredBlock24Stack3) library.
            recoveredBlock24PC := 42.
        ].
        recoveredBlock24Step = 42 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) using: (recoveredBlock24Stack2) from: (recoveredBlock24Stack3).
            recoveredBlock24PC := 44.
        ].
        recoveredBlock24Step = 44 ifTrue: [
            recoveredBlock24Stack2 := recoveredBlock24Stack1.
            recoveredBlock24PC := 45.
        ].
        recoveredBlock24Step = 45 ifTrue: [
            recoveredBlock24Local2 := recoveredBlock24Stack2.
            recoveredBlock24PC := 46.
        ].
        recoveredBlock24Step = 46 ifTrue: [
            recoveredBlock24Stack2 := recoveredArg1.
            recoveredBlock24PC := 49.
        ].
        recoveredBlock24Step = 49 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) shadowClass.
            recoveredBlock24PC := 51.
        ].
        recoveredBlock24Step = 51 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) new.
            recoveredBlock24PC := 52.
        ].
        recoveredBlock24Step = 52 ifTrue: [
            recoveredBlock24Stack3 := recoveredBlock24Stack2.
            recoveredBlock24PC := 53.
        ].
        recoveredBlock24Step = 53 ifTrue: [
            recoveredBlock24Local1 := recoveredBlock24Stack3.
            recoveredBlock24PC := 54.
        ].
        recoveredBlock24Step = 54 ifTrue: [
            recoveredBlock24Stack3 := recoveredArg2.
            recoveredBlock24PC := 57.
        ].
        recoveredBlock24Step = 57 ifTrue: [
            recoveredBlock24Stack4 := recoveredBlock24Arg1.
            recoveredBlock24PC := 58.
        ].
        recoveredBlock24Step = 58 ifTrue: [
            recoveredBlock24Stack4 := (recoveredBlock24Stack4) key.
            recoveredBlock24PC := 60.
        ].
        recoveredBlock24Step = 60 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) named: (recoveredBlock24Stack3) timeStamp: (recoveredBlock24Stack4).
            recoveredBlock24PC := 62.
        ].
        recoveredBlock24Step = 62 ifTrue: [
            (recoveredBlock24Stack1) map: (recoveredBlock24Stack2).
            recoveredBlock24PC := 64.
        ].
        recoveredBlock24Step = 64 ifTrue: [
            recoveredBlock24Stack1 := recoveredBlock24Local1.
            recoveredBlock24PC := 65.
        ].
        recoveredBlock24Step = 65 ifTrue: [
            recoveredBlock24Stack2 := recoveredBlock24Local2.
            recoveredBlock24PC := 66.
        ].
        recoveredBlock24Step = 66 ifTrue: [
            (recoveredBlock24Stack1) checkVersionStatusUsing: (recoveredBlock24Stack2).
            recoveredBlock24PC := 68.
        ].
        recoveredBlock24Step = 68 ifTrue: [
            recoveredBlock24Stack1 := recoveredArg3.
            recoveredBlock24PC := 71.
        ].
        recoveredBlock24Step = 71 ifTrue: [
            (recoveredBlock24Stack1) ifTrue: [recoveredBlock24PC := 74] ifFalse: [recoveredBlock24PC := 88].
        ].
        recoveredBlock24Step = 74 ifTrue: [
            recoveredBlock24Stack1 := recoveredBlock24Local1.
            recoveredBlock24PC := 75.
        ].
        recoveredBlock24Step = 75 ifTrue: [
            recoveredBlock24Stack2 := recoveredBlock24Stack1.
            recoveredBlock24PC := 76.
        ].
        recoveredBlock24Step = 76 ifTrue: [
            (recoveredBlock24Stack2) initializePrivileges.
            recoveredBlock24PC := 78.
        ].
        recoveredBlock24Step = 78 ifTrue: [
            recoveredBlock24Stack2 := self.
            recoveredBlock24PC := 79.
        ].
        recoveredBlock24Step = 79 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) userClass.
            recoveredBlock24PC := 81.
        ].
        recoveredBlock24Step = 81 ifTrue: [
            recoveredBlock24Stack3 := recoveredBlock24Local2.
            recoveredBlock24PC := 82.
        ].
        recoveredBlock24Step = 82 ifTrue: [
            recoveredBlock24Stack3 := (recoveredBlock24Stack3) manager.
            recoveredBlock24PC := 84.
        ].
        recoveredBlock24Step = 84 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) called: (recoveredBlock24Stack3).
            recoveredBlock24PC := 86.
        ].
        recoveredBlock24Step = 86 ifTrue: [
            (recoveredBlock24Stack1) primManager: (recoveredBlock24Stack2).
            recoveredBlock24PC := 88.
        ].
        recoveredBlock24Step = 88 ifTrue: [
            recoveredBlock24Stack1 := recoveredLocal1.
            recoveredBlock24PC := 91.
        ].
        recoveredBlock24Step = 91 ifTrue: [
            recoveredBlock24Stack2 := recoveredBlock24Local1.
            recoveredBlock24PC := 92.
        ].
        recoveredBlock24Step = 92 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) timeStamp.
            recoveredBlock24PC := 94.
        ].
        recoveredBlock24Step = 94 ifTrue: [
            recoveredBlock24Stack3 := recoveredBlock24Local1.
            recoveredBlock24PC := 95.
        ].
        recoveredBlock24Step = 95 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) at: (recoveredBlock24Stack2) put: (recoveredBlock24Stack3).
            recoveredBlock24PC := 97.
        ].
        recoveredBlock24Step = 97 ifTrue: [
            recoveredBlock24Result := recoveredBlock24Stack1.
            recoveredBlock24Done := true.
        ].
    ].
    recoveredBlock24Result
].
    (recoveredValue6) forAllEntriesDo: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    ^recoveredValue8
! !

"lib.ic method 0x200202ac; bytecode file offset 0x5c30c"
!EmStandardAccessor methodsFor: 'recovered'!
moveClassFor: recoveredArg1 class: recoveredArg2 from: recoveredArg3 to: recoveredArg4 removeSourceFrom: recoveredArg5 removeCommentsFrom: recoveredArg6
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) libraryClass.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0 == recoveredStack1) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) becomeDefault.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := [:recoveredBlock24Arg1 | 
    | recoveredBlock24Stack0 recoveredBlock24Stack1 recoveredBlock24Stack2 recoveredBlock24Stack3 recoveredBlock24PC recoveredBlock24Step recoveredBlock24Done recoveredBlock24Result |
    recoveredBlock24Stack0 := self.
    recoveredBlock24PC := 30.
    recoveredBlock24Done := false.
    [recoveredBlock24Done not] whileTrue: [
        recoveredBlock24Step := recoveredBlock24PC.
        recoveredBlock24Step = 30 ifTrue: [
            recoveredBlock24Stack1 := recoveredBlock24Arg1.
            recoveredBlock24PC := 31.
        ].
        recoveredBlock24Step = 31 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) classNamesDictionary.
            recoveredBlock24PC := 32.
        ].
        recoveredBlock24Step = 32 ifTrue: [
            recoveredLocal2 := recoveredBlock24Stack1.
            recoveredBlock24PC := 35.
        ].
        recoveredBlock24Step = 35 ifTrue: [
            recoveredBlock24Stack1 := nil.
            recoveredBlock24PC := 36.
        ].
        recoveredBlock24Step = 36 ifTrue: [
            recoveredBlock24Stack2 := recoveredBlock24Arg1.
            recoveredBlock24PC := 37.
        ].
        recoveredBlock24Step = 37 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) existsInLibrary.
            recoveredBlock24PC := 39.
        ].
        recoveredBlock24Step = 39 ifTrue: [
            (recoveredBlock24Stack2) ifTrue: [recoveredBlock24PC := 49] ifFalse: [recoveredBlock24PC := 42].
        ].
        recoveredBlock24Step = 42 ifTrue: [
            recoveredBlock24PC := 43.
        ].
        recoveredBlock24Step = 43 ifTrue: [
            recoveredBlock24Stack1 := recoveredBlock24Arg1.
            recoveredBlock24PC := 44.
        ].
        recoveredBlock24Step = 44 ifTrue: [
            recoveredBlock24Stack2 := recoveredArg4.
            recoveredBlock24PC := 47.
        ].
        recoveredBlock24Step = 47 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) insertInto: (recoveredBlock24Stack2).
            recoveredBlock24PC := 49.
        ].
        recoveredBlock24Step = 49 ifTrue: [
            recoveredBlock24Result := recoveredBlock24Stack1.
            recoveredBlock24Done := true.
        ].
    ].
    recoveredBlock24Result
].
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) updateLibrary: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) becomeDefault.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) symbol.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack3 := (recoveredStack3) timeStampIn: (recoveredStack4).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack5 := (recoveredStack5) partsRecord.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack5 := (recoveredStack5) classNamesDictionary.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack6 := recoveredLocal2.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack7 := Association.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack8 := #().
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack9 := #().
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack7 := (recoveredStack7) key: (recoveredStack8) value: (recoveredStack9).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack8 := Association.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack9 := #().
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack10 := #().
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack8 := (recoveredStack8) key: (recoveredStack9) value: (recoveredStack10).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := (recoveredStack0) moveAllClassVersionsOf: (recoveredStack1) in: (recoveredStack2) from: (recoveredStack3) to: (recoveredStack4) using: (recoveredStack5) and: (recoveredStack6) removeSourceFrom: (recoveredStack7) removeCommentsFrom: (recoveredStack8).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            (recoveredStack0) becomeDefault.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20020674; bytecode file offset 0x5c6d0"
!EmStandardAccessor methodsFor: 'recovered'!
methodAddNewMethodToClassFor: recoveredArg1 source: recoveredArg2 basedOn: recoveredArg3 inApp: recoveredArg4 updateCategories: recoveredArg5 classCategoryDictionary: recoveredArg6 ifUnableToAddMethod: recoveredArg7 ifUnableToCategorize: recoveredArg8
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodClass.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredArg4.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 recoveredBlock11Value4 recoveredBlock11Value5 recoveredBlock11Value6 |
    recoveredBlock11Value0 := recoveredBlock11Arg1.
    recoveredBlock11Value1 := recoveredArg1.
    recoveredBlock11Value2 := recoveredArg2.
    recoveredBlock11Value3 := (self) methodEditionClass.
    recoveredBlock11Value4 := recoveredArg3.
    recoveredBlock11Value5 := (recoveredBlock11Value3) using: (recoveredBlock11Value4).
    recoveredBlock11Value6 := (recoveredBlock11Value0) addMethod: (recoveredBlock11Value1) source: (recoveredBlock11Value2) basedOn: (recoveredBlock11Value5).
    recoveredBlock11Value6
].
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack4 := recoveredArg7.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) updateEditionsRecordIn: (recoveredStack2) with: (recoveredStack3) ifUnable: (recoveredStack4).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredArg5.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 79].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodClass.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := recoveredArg4.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := [:recoveredBlock57Arg1 | 
    | recoveredBlock57Value0 recoveredBlock57Value1 recoveredBlock57Value2 recoveredBlock57Value3 |
    recoveredBlock57Value0 := recoveredBlock57Arg1.
    recoveredBlock57Value1 := (recoveredBlock57Value0) currentEntry.
    recoveredBlock57Value2 := recoveredArg6.
    recoveredBlock57Value3 := (recoveredBlock57Value1) contentsForCategoryDictionaryAre: (recoveredBlock57Value2).
    recoveredBlock57Value3
].
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack4 := recoveredArg8.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack1) updateEditionsRecordIn: (recoveredStack2) with: (recoveredStack3) ifUnable: (recoveredStack4).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) libraryClass.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) cache.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := (recoveredStack1) filePointer.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack3 ~~ nil) ifTrue: [recoveredPC := 104] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack3 := ''.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredPC := 114.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack3 := (recoveredStack3) sourceCompressor.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack3 := (recoveredStack3) compressString: (recoveredStack4).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack4 := (recoveredStack4) libraryClass.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack4 := (recoveredStack4) default.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack0) cacheFilePointer: (recoveredStack1) timeStamp: (recoveredStack2) compressedSource: (recoveredStack3) from: (recoveredStack4).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x200222e0; bytecode file offset 0x5e358"
!EmStandardAccessor methodsFor: 'recovered'!
applicationRecacheMethodPointersFor: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) partsRecord.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) classNamesDictionary.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) existsInLibrary.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) classes.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := [:recoveredBlock22Arg1 | 
    | recoveredBlock22Stack0 recoveredBlock22Stack1 recoveredBlock22Stack2 recoveredBlock22Stack3 recoveredBlock22Stack4 recoveredBlock22Stack5 recoveredBlock22Stack6 recoveredBlock22PC recoveredBlock22Step recoveredBlock22Done recoveredBlock22Result |
    recoveredBlock22Stack0 := self.
    recoveredBlock22PC := 28.
    recoveredBlock22Done := false.
    [recoveredBlock22Done not] whileTrue: [
        recoveredBlock22Step := recoveredBlock22PC.
        recoveredBlock22Step = 28 ifTrue: [
            recoveredBlock22Stack1 := nil.
            recoveredBlock22PC := 29.
        ].
        recoveredBlock22Step = 29 ifTrue: [
            recoveredBlock22Stack2 := recoveredBlock22Arg1.
            recoveredBlock22PC := 30.
        ].
        recoveredBlock22Step = 30 ifTrue: [
            recoveredBlock22Stack3 := recoveredArg1.
            recoveredBlock22PC := 33.
        ].
        recoveredBlock22Step = 33 ifTrue: [
            recoveredBlock22Stack2 := (recoveredBlock22Stack2) isUndefinedIn: (recoveredBlock22Stack3).
            recoveredBlock22PC := 35.
        ].
        recoveredBlock22Step = 35 ifTrue: [
            (recoveredBlock22Stack2) ifTrue: [recoveredBlock22PC := 61] ifFalse: [recoveredBlock22PC := 38].
        ].
        recoveredBlock22Step = 38 ifTrue: [
            recoveredBlock22PC := 39.
        ].
        recoveredBlock22Step = 39 ifTrue: [
            recoveredBlock22Stack1 := recoveredBlock22Arg1.
            recoveredBlock22PC := 40.
        ].
        recoveredBlock22Step = 40 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) classEditionsClass.
            recoveredBlock22PC := 42.
        ].
        recoveredBlock22Step = 42 ifTrue: [
            recoveredBlock22Stack2 := recoveredBlock22Arg1.
            recoveredBlock22PC := 43.
        ].
        recoveredBlock22Step = 43 ifTrue: [
            recoveredBlock22Stack3 := recoveredArg1.
            recoveredBlock22PC := 46.
        ].
        recoveredBlock22Step = 46 ifTrue: [
            recoveredBlock22Stack4 := recoveredLocal1.
            recoveredBlock22PC := 49.
        ].
        recoveredBlock22Step = 49 ifTrue: [
            recoveredBlock22Stack5 := recoveredBlock22Arg1.
            recoveredBlock22PC := 50.
        ].
        recoveredBlock22Step = 50 ifTrue: [
            recoveredBlock22Stack5 := (recoveredBlock22Stack5) symbol.
            recoveredBlock22PC := 52.
        ].
        recoveredBlock22Step = 52 ifTrue: [
            recoveredBlock22Stack4 := (recoveredBlock22Stack4) at: (recoveredBlock22Stack5).
            recoveredBlock22PC := 54.
        ].
        recoveredBlock22Step = 54 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) for: (recoveredBlock22Stack2) in: (recoveredBlock22Stack3) using: (recoveredBlock22Stack4).
            recoveredBlock22PC := 57.
        ].
        recoveredBlock22Step = 57 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) currentEntry.
            recoveredBlock22PC := 59.
        ].
        recoveredBlock22Step = 59 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) recacheMethodPointers.
            recoveredBlock22PC := 61.
        ].
        recoveredBlock22Step = 61 ifTrue: [
            recoveredBlock22Result := recoveredBlock22Stack1.
            recoveredBlock22Done := true.
        ].
    ].
    recoveredBlock22Result
].
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredPC := 139.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := EmImageSupport.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorReporter.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := 377.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack3 := Array.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack4 := (recoveredStack4) symbol.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack3 := (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack1) logError: (recoveredStack2) withParms: (recoveredStack3).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := (recoveredStack1) classes.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := [:recoveredBlock91Arg1 | 
    | recoveredBlock91Stack0 recoveredBlock91Stack1 recoveredBlock91Stack2 recoveredBlock91Stack3 recoveredBlock91PC recoveredBlock91Step recoveredBlock91Done recoveredBlock91Result |
    recoveredBlock91Stack0 := self.
    recoveredBlock91PC := 98.
    recoveredBlock91Done := false.
    [recoveredBlock91Done not] whileTrue: [
        recoveredBlock91Step := recoveredBlock91PC.
        recoveredBlock91Step = 98 ifTrue: [
            recoveredBlock91Stack1 := recoveredBlock91Arg1.
            recoveredBlock91PC := 99.
        ].
        recoveredBlock91Step = 99 ifTrue: [
            recoveredBlock91Stack2 := recoveredArg1.
            recoveredBlock91PC := 102.
        ].
        recoveredBlock91Step = 102 ifTrue: [
            recoveredBlock91Stack1 := (recoveredBlock91Stack1) methodsIn: (recoveredBlock91Stack2).
            recoveredBlock91PC := 104.
        ].
        recoveredBlock91Step = 104 ifTrue: [
            recoveredBlock91Stack2 := [:block28004fccArg1 | 
    | block28004fccValue0 block28004fccValue1 |
    block28004fccValue0 := block28004fccArg1.
    block28004fccValue1 := (block28004fccValue0) clearFilePosition.
    block28004fccValue1
].
            recoveredBlock91PC := 106.
        ].
        recoveredBlock91Step = 106 ifTrue: [
            recoveredBlock91PC := 114.
        ].
        recoveredBlock91Step = 114 ifTrue: [
            (recoveredBlock91Stack1) do: (recoveredBlock91Stack2).
            recoveredBlock91PC := 116.
        ].
        recoveredBlock91Step = 116 ifTrue: [
            recoveredBlock91Stack1 := recoveredBlock91Arg1.
            recoveredBlock91PC := 117.
        ].
        recoveredBlock91Step = 117 ifTrue: [
            recoveredBlock91Stack1 := (recoveredBlock91Stack1) class.
            recoveredBlock91PC := 119.
        ].
        recoveredBlock91Step = 119 ifTrue: [
            recoveredBlock91Stack2 := recoveredArg1.
            recoveredBlock91PC := 122.
        ].
        recoveredBlock91Step = 122 ifTrue: [
            recoveredBlock91Stack1 := (recoveredBlock91Stack1) methodsIn: (recoveredBlock91Stack2).
            recoveredBlock91PC := 124.
        ].
        recoveredBlock91Step = 124 ifTrue: [
            recoveredBlock91Stack2 := [:block28004ff0Arg1 | 
    | block28004ff0Value0 block28004ff0Value1 |
    block28004ff0Value0 := block28004ff0Arg1.
    block28004ff0Value1 := (block28004ff0Value0) clearFilePosition.
    block28004ff0Value1
].
            recoveredBlock91PC := 126.
        ].
        recoveredBlock91Step = 126 ifTrue: [
            recoveredBlock91PC := 134.
        ].
        recoveredBlock91Step = 134 ifTrue: [
            recoveredBlock91Stack1 := (recoveredBlock91Stack1) do: (recoveredBlock91Stack2).
            recoveredBlock91PC := 136.
        ].
        recoveredBlock91Step = 136 ifTrue: [
            recoveredBlock91Result := recoveredBlock91Stack1.
            recoveredBlock91Done := true.
        ].
    ].
    recoveredBlock91Result
].
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x200257ac; bytecode file offset 0x61840"
!EmStandardAccessor methodsFor: 'recovered'!
applicationShadowReleasedClassesFor: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) partsRecord.
    recoveredValue2 := (recoveredValue1) classNamesDictionary.
    recoveredValue3 := (recoveredValue2) asDictionary.
    recoveredLocal4 := recoveredValue3.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) editionRecord.
    recoveredLocal3 := recoveredValue5.
    recoveredValue6 := recoveredLocal3.
    recoveredValue7 := (recoveredValue6) releasedNamesAndTimeStamps.
    recoveredLocal2 := recoveredValue7.
    recoveredValue8 := OrderedCollection.
    recoveredValue9 := recoveredLocal4.
    recoveredValue10 := (recoveredValue9) size.
    recoveredValue11 := (recoveredValue8) new: (recoveredValue10).
    recoveredLocal1 := recoveredValue11.
    recoveredValue12 := recoveredLocal3.
    recoveredValue13 := (recoveredValue12) namesAndTypes.
    recoveredValue14 := [:recoveredBlock45Arg1 | 
    | recoveredBlock45Local1 recoveredBlock45Local2 recoveredBlock45Local3 recoveredBlock45Local4 recoveredBlock45Stack0 recoveredBlock45Stack1 recoveredBlock45Stack2 recoveredBlock45Stack3 recoveredBlock45Stack4 recoveredBlock45Stack5 recoveredBlock45Stack6 recoveredBlock45PC recoveredBlock45Step recoveredBlock45Done recoveredBlock45Result |
    recoveredBlock45Stack0 := self.
    recoveredBlock45PC := 52.
    recoveredBlock45Done := false.
    [recoveredBlock45Done not] whileTrue: [
        recoveredBlock45Step := recoveredBlock45PC.
        recoveredBlock45Step = 52 ifTrue: [
            recoveredBlock45Stack1 := recoveredBlock45Arg1.
            recoveredBlock45PC := 54.
        ].
        recoveredBlock45Step = 54 ifTrue: [
            recoveredBlock45Stack1 := (recoveredBlock45Stack1) key.
            recoveredBlock45PC := 56.
        ].
        recoveredBlock45Step = 56 ifTrue: [
            recoveredBlock45Local4 := recoveredBlock45Stack1.
            recoveredBlock45PC := 57.
        ].
        recoveredBlock45Step = 57 ifTrue: [
            recoveredBlock45Stack1 := recoveredLocal4.
            recoveredBlock45PC := 60.
        ].
        recoveredBlock45Step = 60 ifTrue: [
            recoveredBlock45Stack2 := recoveredBlock45Local4.
            recoveredBlock45PC := 61.
        ].
        recoveredBlock45Step = 61 ifTrue: [
            recoveredBlock45Stack3 := [].
            recoveredBlock45PC := 63.
        ].
        recoveredBlock45Step = 63 ifTrue: [
            recoveredBlock45Stack1 := (recoveredBlock45Stack1) at: (recoveredBlock45Stack2) ifAbsent: (recoveredBlock45Stack3).
            recoveredBlock45PC := 65.
        ].
        recoveredBlock45Step = 65 ifTrue: [
            recoveredBlock45Stack2 := recoveredBlock45Stack1.
            recoveredBlock45PC := 66.
        ].
        recoveredBlock45Step = 66 ifTrue: [
            recoveredBlock45Local3 := recoveredBlock45Stack2.
            recoveredBlock45PC := 67.
        ].
        recoveredBlock45Step = 67 ifTrue: [
            (recoveredBlock45Stack1 == nil) ifTrue: [recoveredBlock45PC := 142] ifFalse: [recoveredBlock45PC := 70].
        ].
        recoveredBlock45Step = 70 ifTrue: [
            recoveredBlock45Stack1 := recoveredLocal2.
            recoveredBlock45PC := 73.
        ].
        recoveredBlock45Step = 73 ifTrue: [
            recoveredBlock45Stack2 := recoveredBlock45Local4.
            recoveredBlock45PC := 74.
        ].
        recoveredBlock45Step = 74 ifTrue: [
            recoveredBlock45Stack3 := [].
            recoveredBlock45PC := 76.
        ].
        recoveredBlock45Step = 76 ifTrue: [
            recoveredBlock45Stack1 := (recoveredBlock45Stack1) at: (recoveredBlock45Stack2) ifAbsent: (recoveredBlock45Stack3).
            recoveredBlock45PC := 78.
        ].
        recoveredBlock45Step = 78 ifTrue: [
            recoveredBlock45Stack2 := recoveredBlock45Stack1.
            recoveredBlock45PC := 79.
        ].
        recoveredBlock45Step = 79 ifTrue: [
            recoveredBlock45Local2 := recoveredBlock45Stack2.
            recoveredBlock45PC := 80.
        ].
        recoveredBlock45Step = 80 ifTrue: [
            (recoveredBlock45Stack1 == nil) ifTrue: [recoveredBlock45PC := 142] ifFalse: [recoveredBlock45PC := 84].
        ].
        recoveredBlock45Step = 84 ifTrue: [
            recoveredBlock45Stack1 := recoveredArg1.
            recoveredBlock45PC := 87.
        ].
        recoveredBlock45Step = 87 ifTrue: [
            recoveredBlock45Stack2 := recoveredBlock45Local4.
            recoveredBlock45PC := 88.
        ].
        recoveredBlock45Step = 88 ifTrue: [
            recoveredBlock45Stack3 := recoveredBlock45Local2.
            recoveredBlock45PC := 89.
        ].
        recoveredBlock45Step = 89 ifTrue: [
            recoveredBlock45Stack4 := recoveredBlock45Local3.
            recoveredBlock45PC := 90.
        ].
        recoveredBlock45Step = 90 ifTrue: [
            recoveredBlock45Stack5 := recoveredArg1.
            recoveredBlock45PC := 93.
        ].
        recoveredBlock45Step = 93 ifTrue: [
            recoveredBlock45Stack5 := (recoveredBlock45Stack5) residentApplication.
            recoveredBlock45PC := 95.
        ].
        recoveredBlock45Step = 95 ifTrue: [
            recoveredBlock45Stack1 := (recoveredBlock45Stack1) createClass: (recoveredBlock45Stack2) timeStamp: (recoveredBlock45Stack3) at: (recoveredBlock45Stack4) from: (recoveredBlock45Stack5).
            recoveredBlock45PC := 98.
        ].
        recoveredBlock45Step = 98 ifTrue: [
            recoveredBlock45Local1 := recoveredBlock45Stack1.
            recoveredBlock45PC := 99.
        ].
        recoveredBlock45Step = 99 ifTrue: [
            recoveredBlock45Stack1 := recoveredBlock45Local1.
            recoveredBlock45PC := 100.
        ].
        recoveredBlock45Step = 100 ifTrue: [
            recoveredBlock45Stack1 := (recoveredBlock45Stack1) definitionTimeStamp.
            recoveredBlock45PC := 102.
        ].
        recoveredBlock45Step = 102 ifTrue: [
            recoveredBlock45Stack1 := (recoveredBlock45Stack1) isUndefined.
            recoveredBlock45PC := 104.
        ].
        recoveredBlock45Step = 104 ifTrue: [
            (recoveredBlock45Stack1) ifTrue: [recoveredBlock45PC := 108] ifFalse: [recoveredBlock45PC := 120].
        ].
        recoveredBlock45Step = 108 ifTrue: [
            recoveredBlock45Stack1 := recoveredArg1.
            recoveredBlock45PC := 111.
        ].
        recoveredBlock45Step = 111 ifTrue: [
            recoveredBlock45Stack1 := (recoveredBlock45Stack1) extended.
            recoveredBlock45PC := 113.
        ].
        recoveredBlock45Step = 113 ifTrue: [
            recoveredBlock45Stack2 := recoveredBlock45Local1.
            recoveredBlock45PC := 114.
        ].
        recoveredBlock45Step = 114 ifTrue: [
            recoveredBlock45Stack1 := (recoveredBlock45Stack1) add: (recoveredBlock45Stack2).
            recoveredBlock45PC := 116.
        ].
        recoveredBlock45Step = 116 ifTrue: [
            recoveredBlock45PC := 136.
        ].
        recoveredBlock45Step = 120 ifTrue: [
            recoveredBlock45Stack1 := recoveredBlock45Local1.
            recoveredBlock45PC := 121.
        ].
        recoveredBlock45Step = 121 ifTrue: [
            recoveredBlock45Stack2 := recoveredBlock45Arg1.
            recoveredBlock45PC := 123.
        ].
        recoveredBlock45Step = 123 ifTrue: [
            recoveredBlock45Stack2 := (recoveredBlock45Stack2) value.
            recoveredBlock45PC := 125.
        ].
        recoveredBlock45Step = 125 ifTrue: [
            recoveredBlock45Stack3 := 'PrivatelyDefined'.
            recoveredBlock45PC := 127.
        ].
        recoveredBlock45Step = 127 ifTrue: [
            recoveredBlock45Stack2 := (recoveredBlock45Stack2) == (recoveredBlock45Stack3).
            recoveredBlock45PC := 128.
        ].
        recoveredBlock45Step = 128 ifTrue: [
            (recoveredBlock45Stack1) privateStatus: (recoveredBlock45Stack2).
            recoveredBlock45PC := 130.
        ].
        recoveredBlock45Step = 130 ifTrue: [
            recoveredBlock45Stack1 := recoveredLocal1.
            recoveredBlock45PC := 133.
        ].
        recoveredBlock45Step = 133 ifTrue: [
            recoveredBlock45Stack2 := recoveredBlock45Local1.
            recoveredBlock45PC := 134.
        ].
        recoveredBlock45Step = 134 ifTrue: [
            recoveredBlock45Stack1 := (recoveredBlock45Stack1) addLast: (recoveredBlock45Stack2).
            recoveredBlock45PC := 136.
        ].
        recoveredBlock45Step = 136 ifTrue: [
            recoveredBlock45Stack2 := nil.
            recoveredBlock45PC := 137.
        ].
        recoveredBlock45Step = 137 ifTrue: [
            recoveredBlock45Local1 := recoveredBlock45Stack2.
            recoveredBlock45PC := 138.
        ].
        recoveredBlock45Step = 138 ifTrue: [
            recoveredBlock45PC := 159.
        ].
        recoveredBlock45Step = 142 ifTrue: [
            recoveredBlock45Stack1 := nil.
            recoveredBlock45PC := 143.
        ].
        recoveredBlock45Step = 143 ifTrue: [
            recoveredBlock45Stack2 := recoveredBlock45Arg1.
            recoveredBlock45PC := 145.
        ].
        recoveredBlock45Step = 145 ifTrue: [
            recoveredBlock45Stack2 := (recoveredBlock45Stack2) value.
            recoveredBlock45PC := 147.
        ].
        recoveredBlock45Step = 147 ifTrue: [
            recoveredBlock45Stack3 := 'Deleted'.
            recoveredBlock45PC := 149.
        ].
        recoveredBlock45Step = 149 ifTrue: [
            (recoveredBlock45Stack2 == recoveredBlock45Stack3) ifTrue: [recoveredBlock45PC := 159] ifFalse: [recoveredBlock45PC := 152].
        ].
        recoveredBlock45Step = 152 ifTrue: [
            recoveredBlock45PC := 153.
        ].
        recoveredBlock45Step = 153 ifTrue: [
            recoveredBlock45Stack1 := recoveredArg1.
            recoveredBlock45PC := 156.
        ].
        recoveredBlock45Step = 156 ifTrue: [
            recoveredBlock45Stack2 := recoveredBlock45Local4.
            recoveredBlock45PC := 157.
        ].
        recoveredBlock45Step = 157 ifTrue: [
            recoveredBlock45Stack1 := (recoveredBlock45Stack1) addUndefined: (recoveredBlock45Stack2).
            recoveredBlock45PC := 159.
        ].
        recoveredBlock45Step = 159 ifTrue: [
            recoveredBlock45Result := recoveredBlock45Stack1.
            recoveredBlock45Done := true.
        ].
    ].
    recoveredBlock45Result
].
    (recoveredValue13) associationsDo: (recoveredValue14).
    recoveredValue15 := recoveredArg1.
    recoveredValue16 := recoveredLocal1.
    recoveredValue17 := Class.
    recoveredValue18 := (recoveredValue17) sortBlock.
    recoveredValue19 := (recoveredValue16) asSortedCollection: (recoveredValue18).
    (recoveredValue15) defined: (recoveredValue19).
    ^self
! !

"lib.ic method 0x20027c48; bytecode file offset 0x63cc8"
!EmStandardAccessor methodsFor: 'recovered'!
applicationReleaseClassesFor: recoveredArg1 classes: recoveredArg2 ifUnable: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) copy.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) asOrderedCollection.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) releasedClassVersions.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := [:recoveredBlock26Arg1 | 
    | recoveredBlock26Stack0 recoveredBlock26Stack1 recoveredBlock26Stack2 recoveredBlock26Stack3 recoveredBlock26Stack4 recoveredBlock26Stack5 recoveredBlock26Stack6 recoveredBlock26PC recoveredBlock26Step recoveredBlock26Done recoveredBlock26Result |
    recoveredBlock26Stack0 := self.
    recoveredBlock26PC := 32.
    recoveredBlock26Done := false.
    [recoveredBlock26Done not] whileTrue: [
        recoveredBlock26Step := recoveredBlock26PC.
        recoveredBlock26Step = 32 ifTrue: [
            recoveredBlock26Stack1 := nil.
            recoveredBlock26PC := 33.
        ].
        recoveredBlock26Step = 33 ifTrue: [
            recoveredBlock26Stack2 := recoveredLocal3.
            recoveredBlock26PC := 36.
        ].
        recoveredBlock26Step = 36 ifTrue: [
            recoveredBlock26Stack3 := recoveredBlock26Arg1.
            recoveredBlock26PC := 37.
        ].
        recoveredBlock26Step = 37 ifTrue: [
            recoveredBlock26Stack3 := (recoveredBlock26Stack3) symbol.
            recoveredBlock26PC := 38.
        ].
        recoveredBlock26Step = 38 ifTrue: [
            recoveredBlock26Stack4 := [].
            recoveredBlock26PC := 40.
        ].
        recoveredBlock26Step = 40 ifTrue: [
            recoveredBlock26Stack2 := (recoveredBlock26Stack2) at: (recoveredBlock26Stack3) ifAbsent: (recoveredBlock26Stack4).
            recoveredBlock26PC := 42.
        ].
        recoveredBlock26Step = 42 ifTrue: [
            recoveredBlock26Stack3 := recoveredBlock26Arg1.
            recoveredBlock26PC := 43.
        ].
        recoveredBlock26Step = 43 ifTrue: [
            recoveredBlock26Stack4 := recoveredArg1.
            recoveredBlock26PC := 46.
        ].
        recoveredBlock26Step = 46 ifTrue: [
            recoveredBlock26Stack3 := (recoveredBlock26Stack3) timeStampIn: (recoveredBlock26Stack4).
            recoveredBlock26PC := 48.
        ].
        recoveredBlock26Step = 48 ifTrue: [
            recoveredBlock26Stack2 := (recoveredBlock26Stack2) = (recoveredBlock26Stack3).
            recoveredBlock26PC := 49.
        ].
        recoveredBlock26Step = 49 ifTrue: [
            (recoveredBlock26Stack2) ifTrue: [recoveredBlock26PC := 89] ifFalse: [recoveredBlock26PC := 52].
        ].
        recoveredBlock26Step = 52 ifTrue: [
            recoveredBlock26PC := 53.
        ].
        recoveredBlock26Step = 53 ifTrue: [
            recoveredBlock26Stack1 := nil.
            recoveredBlock26PC := 54.
        ].
        recoveredBlock26Step = 54 ifTrue: [
            recoveredBlock26Stack2 := recoveredBlock26Arg1.
            recoveredBlock26PC := 55.
        ].
        recoveredBlock26Step = 55 ifTrue: [
            recoveredBlock26Stack3 := recoveredArg1.
            recoveredBlock26PC := 58.
        ].
        recoveredBlock26Step = 58 ifTrue: [
            recoveredBlock26Stack2 := (recoveredBlock26Stack2) isReallyVersionIn: (recoveredBlock26Stack3).
            recoveredBlock26PC := 60.
        ].
        recoveredBlock26Step = 60 ifTrue: [
            (recoveredBlock26Stack2) ifTrue: [recoveredBlock26PC := 89] ifFalse: [recoveredBlock26PC := 64].
        ].
        recoveredBlock26Step = 64 ifTrue: [
            recoveredBlock26PC := 65.
        ].
        recoveredBlock26Step = 65 ifTrue: [
            recoveredBlock26Stack1 := EmImageSupport.
            recoveredBlock26PC := 67.
        ].
        recoveredBlock26Step = 67 ifTrue: [
            recoveredBlock26Stack1 := (recoveredBlock26Stack1) errorReporter.
            recoveredBlock26PC := 69.
        ].
        recoveredBlock26Step = 69 ifTrue: [
            recoveredBlock26Stack2 := 113.
            recoveredBlock26PC := 72.
        ].
        recoveredBlock26Step = 72 ifTrue: [
            recoveredBlock26Stack3 := Array.
            recoveredBlock26PC := 74.
        ].
        recoveredBlock26Step = 74 ifTrue: [
            recoveredBlock26Stack4 := recoveredBlock26Arg1.
            recoveredBlock26PC := 75.
        ].
        recoveredBlock26Step = 75 ifTrue: [
            recoveredBlock26Stack5 := recoveredArg1.
            recoveredBlock26PC := 78.
        ].
        recoveredBlock26Step = 78 ifTrue: [
            recoveredBlock26Stack4 := (recoveredBlock26Stack4) signatureIn: (recoveredBlock26Stack5).
            recoveredBlock26PC := 80.
        ].
        recoveredBlock26Step = 80 ifTrue: [
            recoveredBlock26Stack3 := (recoveredBlock26Stack3) with: (recoveredBlock26Stack4).
            recoveredBlock26PC := 82.
        ].
        recoveredBlock26Step = 82 ifTrue: [
            (recoveredBlock26Stack1) logError: (recoveredBlock26Stack2) withParms: (recoveredBlock26Stack3).
            recoveredBlock26PC := 84.
        ].
        recoveredBlock26Step = 84 ifTrue: [
            recoveredBlock26Stack1 := true.
            recoveredBlock26PC := 85.
        ].
        recoveredBlock26Step = 85 ifTrue: [
            recoveredBlock26Stack2 := recoveredBlock26Stack1.
            recoveredBlock26PC := 86.
        ].
        recoveredBlock26Step = 86 ifTrue: [
            recoveredLocal2 := recoveredBlock26Stack2.
            recoveredBlock26PC := 89.
        ].
        recoveredBlock26Step = 89 ifTrue: [
            recoveredBlock26Result := recoveredBlock26Stack1.
            recoveredBlock26Done := true.
        ].
    ].
    recoveredBlock26Result
].
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 98] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := [:recoveredBlock103Arg1 | 
    | recoveredBlock103Value0 recoveredBlock103Value1 recoveredBlock103Value2 recoveredBlock103Value3 |
    recoveredBlock103Value0 := recoveredBlock103Arg1.
    recoveredBlock103Value1 := recoveredLocal4.
    recoveredBlock103Value2 := recoveredArg3.
    recoveredBlock103Value3 := (recoveredBlock103Value0) releaseEachClassIn: (recoveredBlock103Value1) ifUnable: (recoveredBlock103Value2).
    recoveredBlock103Value3
].
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack1) updateEdition: (recoveredStack2).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack2 := [:recoveredBlock125Arg1 | 
    | recoveredBlock125Value0 recoveredBlock125Value1 recoveredBlock125Value2 recoveredBlock125Value3 recoveredBlock125Value4 recoveredBlock125Value5 recoveredBlock125Value6 recoveredBlock125Value7 |
    recoveredBlock125Value0 := recoveredBlock125Arg1.
    recoveredBlock125Value1 := recoveredArg2.
    recoveredBlock125Value2 := [:recoveredBlock125Block136Arg1 | 
    | recoveredBlock125Block136Value0 recoveredBlock125Block136Value1 recoveredBlock125Block136Value2 |
    recoveredBlock125Block136Value0 := recoveredLocal4.
    recoveredBlock125Block136Value1 := recoveredBlock125Block136Arg1.
    recoveredBlock125Block136Value2 := (recoveredBlock125Block136Value0) includes: (recoveredBlock125Block136Value1).
    recoveredBlock125Block136Value2
].
    recoveredBlock125Value3 := (recoveredBlock125Value1) reject: (recoveredBlock125Value2).
    recoveredBlock125Value4 := (self) userClass.
    recoveredBlock125Value5 := (recoveredBlock125Value4) currentID.
    recoveredBlock125Value6 := recoveredArg3.
    recoveredBlock125Value7 := (recoveredBlock125Value0) userThatReleasedClasses: (recoveredBlock125Value3) is: (recoveredBlock125Value5) ifUnable: (recoveredBlock125Value6).
    recoveredBlock125Value7
].
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            (recoveredStack1) updateEdition: (recoveredStack2).
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack2 := [:recoveredBlock168Arg1 | 
    | recoveredBlock168Value0 recoveredBlock168Value1 recoveredBlock168Value2 recoveredBlock168Value3 recoveredBlock168Value4 recoveredBlock168Value5 recoveredBlock168Value6 recoveredBlock168Value7 recoveredBlock168Value8 |
    recoveredBlock168Value0 := EmImageSupport.
    recoveredBlock168Value1 := (recoveredBlock168Value0) errorReporter.
    recoveredBlock168Value2 := Array.
    recoveredBlock168Value3 := recoveredBlock168Arg1.
    recoveredBlock168Value4 := (recoveredBlock168Value3) name.
    recoveredBlock168Value5 := recoveredArg1.
    recoveredBlock168Value6 := (recoveredBlock168Value5) symbol.
    recoveredBlock168Value7 := (recoveredBlock168Value2) with: (recoveredBlock168Value4) with: (recoveredBlock168Value6).
    recoveredBlock168Value8 := (recoveredBlock168Value1) logError: (114) withParms: (recoveredBlock168Value7).
    recoveredBlock168Value8
].
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"lib.ic method 0x2002bc3c; bytecode file offset 0x67ccc"
!EmStandardAccessor methodsFor: 'recovered'!
loadingApplications: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 |
    recoveredValue0 := (self) libraryClass.
    recoveredValue1 := (recoveredValue0) cache.
    recoveredValue2 := (self) applicationClassFromFlag: (false).
    recoveredValue3 := (recoveredValue1) appRootDictionaryFor: (recoveredValue2).
    recoveredLocal4 := recoveredValue3.
    recoveredValue4 := (self) libraryClass.
    recoveredValue5 := (recoveredValue4) cache.
    recoveredValue6 := (self) applicationClassFromFlag: (true).
    recoveredValue7 := (recoveredValue5) appRootDictionaryFor: (recoveredValue6).
    recoveredLocal3 := recoveredValue7.
    recoveredValue8 := LookupTable.
    recoveredValue9 := (recoveredValue8) new.
    recoveredLocal1 := recoveredValue9.
    recoveredValue10 := OrderedCollection.
    recoveredValue11 := recoveredArg1.
    recoveredValue12 := (recoveredValue11) size.
    recoveredValue13 := (recoveredValue10) new: (recoveredValue12).
    recoveredLocal2 := recoveredValue13.
    recoveredValue14 := recoveredArg1.
    recoveredValue15 := [:recoveredBlock45Arg1 | 
    | recoveredBlock45Local1 recoveredBlock45Local2 recoveredBlock45Local3 recoveredBlock45Local4 recoveredBlock45Local5 recoveredBlock45Local6 recoveredBlock45Local7 recoveredBlock45Local8 recoveredBlock45Local9 recoveredBlock45Local10 recoveredBlock45Stack0 recoveredBlock45Stack1 recoveredBlock45Stack2 recoveredBlock45Stack3 recoveredBlock45Stack4 recoveredBlock45Stack5 recoveredBlock45Stack6 recoveredBlock45PC recoveredBlock45Step recoveredBlock45Done recoveredBlock45Result |
    recoveredBlock45Stack0 := self.
    recoveredBlock45PC := 52.
    recoveredBlock45Done := false.
    [recoveredBlock45Done not] whileTrue: [
        recoveredBlock45Step := recoveredBlock45PC.
        recoveredBlock45Step = 52 ifTrue: [
            recoveredBlock45Stack1 := recoveredBlock45Arg1.
            recoveredBlock45PC := 55.
        ].
        recoveredBlock45Step = 55 ifTrue: [
            recoveredBlock45Stack2 := 1.
            recoveredBlock45PC := 57.
        ].
        recoveredBlock45Step = 57 ifTrue: [
            recoveredBlock45Stack1 := (recoveredBlock45Stack1) at: (recoveredBlock45Stack2).
            recoveredBlock45PC := 59.
        ].
        recoveredBlock45Step = 59 ifTrue: [
            recoveredBlock45Local4 := recoveredBlock45Stack1.
            recoveredBlock45PC := 62.
        ].
        recoveredBlock45Step = 62 ifTrue: [
            recoveredBlock45Stack1 := recoveredBlock45Arg1.
            recoveredBlock45PC := 65.
        ].
        recoveredBlock45Step = 65 ifTrue: [
            recoveredBlock45Stack2 := 2.
            recoveredBlock45PC := 67.
        ].
        recoveredBlock45Step = 67 ifTrue: [
            recoveredBlock45Stack1 := (recoveredBlock45Stack1) at: (recoveredBlock45Stack2).
            recoveredBlock45PC := 69.
        ].
        recoveredBlock45Step = 69 ifTrue: [
            recoveredBlock45Local3 := recoveredBlock45Stack1.
            recoveredBlock45PC := 72.
        ].
        recoveredBlock45Step = 72 ifTrue: [
            recoveredBlock45Stack1 := recoveredBlock45Arg1.
            recoveredBlock45PC := 75.
        ].
        recoveredBlock45Step = 75 ifTrue: [
            recoveredBlock45Stack2 := 3.
            recoveredBlock45PC := 77.
        ].
        recoveredBlock45Step = 77 ifTrue: [
            recoveredBlock45Stack1 := (recoveredBlock45Stack1) at: (recoveredBlock45Stack2).
            recoveredBlock45PC := 79.
        ].
        recoveredBlock45Step = 79 ifTrue: [
            recoveredBlock45Local2 := recoveredBlock45Stack1.
            recoveredBlock45PC := 82.
        ].
        recoveredBlock45Step = 82 ifTrue: [
            recoveredBlock45Stack1 := recoveredBlock45Arg1.
            recoveredBlock45PC := 85.
        ].
        recoveredBlock45Step = 85 ifTrue: [
            recoveredBlock45Stack2 := 4.
            recoveredBlock45PC := 87.
        ].
        recoveredBlock45Step = 87 ifTrue: [
            recoveredBlock45Stack1 := (recoveredBlock45Stack1) at: (recoveredBlock45Stack2).
            recoveredBlock45PC := 89.
        ].
        recoveredBlock45Step = 89 ifTrue: [
            recoveredBlock45Local1 := recoveredBlock45Stack1.
            recoveredBlock45PC := 92.
        ].
        recoveredBlock45Step = 92 ifTrue: [
            recoveredBlock45Stack1 := recoveredBlock45Local2.
            recoveredBlock45PC := 95.
        ].
        recoveredBlock45Step = 95 ifTrue: [
            (recoveredBlock45Stack1) ifTrue: [recoveredBlock45PC := 98] ifFalse: [recoveredBlock45PC := 104].
        ].
        recoveredBlock45Step = 98 ifTrue: [
            recoveredBlock45Stack1 := recoveredLocal4.
            recoveredBlock45PC := 101.
        ].
        recoveredBlock45Step = 101 ifTrue: [
            recoveredBlock45PC := 107.
        ].
        recoveredBlock45Step = 104 ifTrue: [
            recoveredBlock45Stack1 := recoveredLocal3.
            recoveredBlock45PC := 107.
        ].
        recoveredBlock45Step = 107 ifTrue: [
            recoveredBlock45Local10 := recoveredBlock45Stack1.
            recoveredBlock45PC := 110.
        ].
        recoveredBlock45Step = 110 ifTrue: [
            recoveredBlock45Stack1 := recoveredLocal1.
            recoveredBlock45PC := 113.
        ].
        recoveredBlock45Step = 113 ifTrue: [
            recoveredBlock45Stack2 := recoveredBlock45Local4.
            recoveredBlock45PC := 116.
        ].
        recoveredBlock45Step = 116 ifTrue: [
            recoveredBlock45Stack3 := [
    | recoveredBlock45Block116Stack0 recoveredBlock45Block116Stack1 recoveredBlock45Block116Stack2 recoveredBlock45Block116Stack3 recoveredBlock45Block116Stack4 recoveredBlock45Block116PC recoveredBlock45Block116Step recoveredBlock45Block116Done recoveredBlock45Block116Result |
    recoveredBlock45Block116Stack0 := self.
    recoveredBlock45Block116PC := 122.
    recoveredBlock45Block116Done := false.
    [recoveredBlock45Block116Done not] whileTrue: [
        recoveredBlock45Block116Step := recoveredBlock45Block116PC.
        recoveredBlock45Block116Step = 122 ifTrue: [
            recoveredBlock45Block116Stack1 := recoveredBlock45Local2.
            recoveredBlock45Block116PC := 125.
        ].
        recoveredBlock45Block116Step = 125 ifTrue: [
            recoveredBlock45Block116Stack1 := (recoveredBlock45Block116Stack1) not.
            recoveredBlock45Block116PC := 126.
        ].
        recoveredBlock45Block116Step = 126 ifTrue: [
            recoveredBlock45Block116Stack0 := (recoveredBlock45Block116Stack0) applicationClassFromFlag: (recoveredBlock45Block116Stack1).
            recoveredBlock45Block116PC := 127.
        ].
        recoveredBlock45Block116Step = 127 ifTrue: [
            recoveredBlock45Block116Stack0 := (recoveredBlock45Block116Stack0) partsRecordClass.
            recoveredBlock45Block116PC := 129.
        ].
        recoveredBlock45Block116Step = 129 ifTrue: [
            recoveredBlock45Block116Stack1 := recoveredBlock45Local10.
            recoveredBlock45Block116PC := 132.
        ].
        recoveredBlock45Block116Step = 132 ifTrue: [
            recoveredBlock45Block116Stack2 := recoveredBlock45Local4.
            recoveredBlock45Block116PC := 135.
        ].
        recoveredBlock45Block116Step = 135 ifTrue: [
            recoveredBlock45Block116Stack3 := [
    | block28005764Value0 block28005764Value1 |
    block28005764Value0 := EmLibraryPointer.
    block28005764Value1 := (block28005764Value0) void.
    block28005764Value1
].
            recoveredBlock45Block116PC := 137.
        ].
        recoveredBlock45Block116Step = 137 ifTrue: [
            recoveredBlock45Block116PC := 145.
        ].
        recoveredBlock45Block116Step = 145 ifTrue: [
            recoveredBlock45Block116Stack1 := (recoveredBlock45Block116Stack1) at: (recoveredBlock45Block116Stack2) ifAbsent: (recoveredBlock45Block116Stack3).
            recoveredBlock45Block116PC := 147.
        ].
        recoveredBlock45Block116Step = 147 ifTrue: [
            recoveredBlock45Block116Stack2 := recoveredBlock45Local10.
            recoveredBlock45Block116PC := 150.
        ].
        recoveredBlock45Block116Step = 150 ifTrue: [
            recoveredBlock45Block116Stack2 := (recoveredBlock45Block116Stack2) library.
            recoveredBlock45Block116PC := 152.
        ].
        recoveredBlock45Block116Step = 152 ifTrue: [
            recoveredBlock45Block116Stack0 := (recoveredBlock45Block116Stack0) using: (recoveredBlock45Block116Stack1) from: (recoveredBlock45Block116Stack2).
            recoveredBlock45Block116PC := 154.
        ].
        recoveredBlock45Block116Step = 154 ifTrue: [
            recoveredBlock45Block116Result := recoveredBlock45Block116Stack0.
            recoveredBlock45Block116Done := true.
        ].
    ].
    recoveredBlock45Block116Result
].
            recoveredBlock45PC := 155.
        ].
        recoveredBlock45Step = 155 ifTrue: [
            recoveredBlock45Stack1 := (recoveredBlock45Stack1) at: (recoveredBlock45Stack2) ifAbsentPut: (recoveredBlock45Stack3).
            recoveredBlock45PC := 157.
        ].
        recoveredBlock45Step = 157 ifTrue: [
            recoveredBlock45Local9 := recoveredBlock45Stack1.
            recoveredBlock45PC := 160.
        ].
        recoveredBlock45Step = 160 ifTrue: [
            recoveredBlock45Stack1 := recoveredBlock45Local1.
            recoveredBlock45PC := 163.
        ].
        recoveredBlock45Step = 163 ifTrue: [
            recoveredBlock45Stack2 := nil.
            recoveredBlock45PC := 164.
        ].
        recoveredBlock45Step = 164 ifTrue: [
            recoveredBlock45Stack3 := recoveredBlock45Local9.
            recoveredBlock45PC := 167.
        ].
        recoveredBlock45Step = 167 ifTrue: [
            recoveredBlock45Stack3 := (recoveredBlock45Stack3) editionsDictionary.
            recoveredBlock45PC := 169.
        ].
        recoveredBlock45Step = 169 ifTrue: [
            recoveredBlock45Stack4 := recoveredBlock45Local3.
            recoveredBlock45PC := 172.
        ].
        recoveredBlock45Step = 172 ifTrue: [
            recoveredBlock45Stack3 := (recoveredBlock45Stack3) at: (recoveredBlock45Stack4).
            recoveredBlock45PC := 174.
        ].
        recoveredBlock45Step = 174 ifTrue: [
            recoveredBlock45Stack1 := (recoveredBlock45Stack1) for: (recoveredBlock45Stack2) using: (recoveredBlock45Stack3).
            recoveredBlock45PC := 176.
        ].
        recoveredBlock45Step = 176 ifTrue: [
            recoveredBlock45Local8 := recoveredBlock45Stack1.
            recoveredBlock45PC := 179.
        ].
        recoveredBlock45Step = 179 ifTrue: [
            recoveredBlock45Stack1 := recoveredBlock45Local8.
            recoveredBlock45PC := 182.
        ].
        recoveredBlock45Step = 182 ifTrue: [
            recoveredBlock45Stack2 := 'toBeLoaded'.
            recoveredBlock45PC := 184.
        ].
        recoveredBlock45Step = 184 ifTrue: [
            recoveredBlock45Stack1 := (recoveredBlock45Stack1) inheritedUserFieldAt: (recoveredBlock45Stack2).
            recoveredBlock45PC := 186.
        ].
        recoveredBlock45Step = 186 ifTrue: [
            recoveredBlock45Local7 := recoveredBlock45Stack1.
            recoveredBlock45PC := 189.
        ].
        recoveredBlock45Step = 189 ifTrue: [
            recoveredBlock45Stack1 := recoveredBlock45Local8.
            recoveredBlock45PC := 192.
        ].
        recoveredBlock45Step = 192 ifTrue: [
            recoveredBlock45Stack1 := (recoveredBlock45Stack1) subApplicationConfigurations.
            recoveredBlock45PC := 194.
        ].
        recoveredBlock45Step = 194 ifTrue: [
            recoveredBlock45Local6 := recoveredBlock45Stack1.
            recoveredBlock45PC := 197.
        ].
        recoveredBlock45Step = 197 ifTrue: [
            recoveredBlock45Stack1 := recoveredBlock45Local2.
            recoveredBlock45PC := 200.
        ].
        recoveredBlock45Step = 200 ifTrue: [
            (recoveredBlock45Stack1) ifTrue: [recoveredBlock45PC := 204] ifFalse: [recoveredBlock45PC := 212].
        ].
        recoveredBlock45Step = 204 ifTrue: [
            recoveredBlock45Stack1 := recoveredBlock45Local8.
            recoveredBlock45PC := 207.
        ].
        recoveredBlock45Step = 207 ifTrue: [
            recoveredBlock45Stack1 := (recoveredBlock45Stack1) prerequisiteConfigurations.
            recoveredBlock45PC := 209.
        ].
        recoveredBlock45Step = 209 ifTrue: [
            recoveredBlock45PC := 213.
        ].
        recoveredBlock45Step = 212 ifTrue: [
            recoveredBlock45Stack1 := nil.
            recoveredBlock45PC := 213.
        ].
        recoveredBlock45Step = 213 ifTrue: [
            recoveredBlock45Local5 := recoveredBlock45Stack1.
            recoveredBlock45PC := 216.
        ].
        recoveredBlock45Step = 216 ifTrue: [
            recoveredBlock45Stack1 := recoveredLocal2.
            recoveredBlock45PC := 219.
        ].
        recoveredBlock45Step = 219 ifTrue: [
            recoveredBlock45Stack2 := Array.
            recoveredBlock45PC := 221.
        ].
        recoveredBlock45Step = 221 ifTrue: [
            recoveredBlock45Stack3 := 5.
            recoveredBlock45PC := 223.
        ].
        recoveredBlock45Step = 223 ifTrue: [
            recoveredBlock45Stack2 := (recoveredBlock45Stack2) new: (recoveredBlock45Stack3).
            recoveredBlock45PC := 225.
        ].
        recoveredBlock45Step = 225 ifTrue: [
            recoveredBlock45Stack3 := recoveredBlock45Stack2.
            recoveredBlock45PC := 226.
        ].
        recoveredBlock45Step = 226 ifTrue: [
            recoveredBlock45Stack4 := 1.
            recoveredBlock45PC := 228.
        ].
        recoveredBlock45Step = 228 ifTrue: [
            recoveredBlock45Stack5 := recoveredBlock45Local9.
            recoveredBlock45PC := 231.
        ].
        recoveredBlock45Step = 231 ifTrue: [
            (recoveredBlock45Stack3) at: (recoveredBlock45Stack4) put: (recoveredBlock45Stack5).
            recoveredBlock45Stack3 := recoveredBlock45Stack2.
            recoveredBlock45PC := 234.
        ].
        recoveredBlock45Step = 234 ifTrue: [
            recoveredBlock45Stack4 := 2.
            recoveredBlock45PC := 236.
        ].
        recoveredBlock45Step = 236 ifTrue: [
            recoveredBlock45Stack5 := recoveredBlock45Local8.
            recoveredBlock45PC := 239.
        ].
        recoveredBlock45Step = 239 ifTrue: [
            (recoveredBlock45Stack3) at: (recoveredBlock45Stack4) put: (recoveredBlock45Stack5).
            recoveredBlock45Stack3 := recoveredBlock45Stack2.
            recoveredBlock45PC := 242.
        ].
        recoveredBlock45Step = 242 ifTrue: [
            recoveredBlock45Stack4 := 3.
            recoveredBlock45PC := 244.
        ].
        recoveredBlock45Step = 244 ifTrue: [
            recoveredBlock45Stack5 := recoveredBlock45Local7.
            recoveredBlock45PC := 247.
        ].
        recoveredBlock45Step = 247 ifTrue: [
            (recoveredBlock45Stack3) at: (recoveredBlock45Stack4) put: (recoveredBlock45Stack5).
            recoveredBlock45Stack3 := recoveredBlock45Stack2.
            recoveredBlock45PC := 250.
        ].
        recoveredBlock45Step = 250 ifTrue: [
            recoveredBlock45Stack4 := 4.
            recoveredBlock45PC := 252.
        ].
        recoveredBlock45Step = 252 ifTrue: [
            recoveredBlock45Stack5 := recoveredBlock45Local6.
            recoveredBlock45PC := 255.
        ].
        recoveredBlock45Step = 255 ifTrue: [
            (recoveredBlock45Stack3) at: (recoveredBlock45Stack4) put: (recoveredBlock45Stack5).
            recoveredBlock45Stack3 := recoveredBlock45Stack2.
            recoveredBlock45PC := 258.
        ].
        recoveredBlock45Step = 258 ifTrue: [
            recoveredBlock45Stack4 := 5.
            recoveredBlock45PC := 260.
        ].
        recoveredBlock45Step = 260 ifTrue: [
            recoveredBlock45Stack5 := recoveredBlock45Local5.
            recoveredBlock45PC := 263.
        ].
        recoveredBlock45Step = 263 ifTrue: [
            (recoveredBlock45Stack3) at: (recoveredBlock45Stack4) put: (recoveredBlock45Stack5).
            recoveredBlock45PC := 265.
        ].
        recoveredBlock45Step = 265 ifTrue: [
            recoveredBlock45Stack1 := (recoveredBlock45Stack1) add: (recoveredBlock45Stack2).
            recoveredBlock45PC := 267.
        ].
        recoveredBlock45Step = 267 ifTrue: [
            recoveredBlock45Result := recoveredBlock45Stack1.
            recoveredBlock45Done := true.
        ].
    ].
    recoveredBlock45Result
].
    (recoveredValue14) do: (recoveredValue15).
    recoveredValue16 := recoveredLocal2.
    ^recoveredValue16
! !

"lib.ic method 0x2002ed3c; bytecode file offset 0x6adf8"
!EmStandardAccessor methodsFor: 'recovered'!
classStoreByteCodesFor: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := Set.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal3 := recoveredValue1.
    recoveredValue2 := Set.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) applications.
    recoveredValue6 := [:recoveredBlock20Arg1 | 
    | recoveredBlock20Local1 recoveredBlock20Stack0 recoveredBlock20Stack1 recoveredBlock20Stack2 recoveredBlock20Stack3 recoveredBlock20Stack4 recoveredBlock20PC recoveredBlock20Step recoveredBlock20Done recoveredBlock20Result |
    recoveredBlock20Stack0 := self.
    recoveredBlock20PC := 26.
    recoveredBlock20Done := false.
    [recoveredBlock20Done not] whileTrue: [
        recoveredBlock20Step := recoveredBlock20PC.
        recoveredBlock20Step = 26 ifTrue: [
            recoveredBlock20Stack1 := recoveredArg1.
            recoveredBlock20PC := 29.
        ].
        recoveredBlock20Step = 29 ifTrue: [
            recoveredBlock20Stack2 := recoveredBlock20Arg1.
            recoveredBlock20PC := 30.
        ].
        recoveredBlock20Step = 30 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) editionEntryIn: (recoveredBlock20Stack2).
            recoveredBlock20PC := 31.
        ].
        recoveredBlock20Step = 31 ifTrue: [
            recoveredBlock20Stack2 := recoveredBlock20Stack1.
            recoveredBlock20PC := 32.
        ].
        recoveredBlock20Step = 32 ifTrue: [
            recoveredBlock20Local1 := recoveredBlock20Stack2.
            recoveredBlock20PC := 33.
        ].
        recoveredBlock20Step = 33 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) existsInLibrary.
            recoveredBlock20PC := 35.
        ].
        recoveredBlock20Step = 35 ifTrue: [
            (recoveredBlock20Stack1) ifTrue: [recoveredBlock20PC := 38] ifFalse: [recoveredBlock20PC := 62].
        ].
        recoveredBlock20Step = 38 ifTrue: [
            recoveredBlock20Stack1 := recoveredLocal3.
            recoveredBlock20PC := 41.
        ].
        recoveredBlock20Step = 41 ifTrue: [
            recoveredBlock20Stack2 := recoveredBlock20Local1.
            recoveredBlock20PC := 42.
        ].
        recoveredBlock20Step = 42 ifTrue: [
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) instanceMethods.
            recoveredBlock20PC := 44.
        ].
        recoveredBlock20Step = 44 ifTrue: [
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) keys.
            recoveredBlock20PC := 46.
        ].
        recoveredBlock20Step = 46 ifTrue: [
            (recoveredBlock20Stack1) addAll: (recoveredBlock20Stack2).
            recoveredBlock20PC := 48.
        ].
        recoveredBlock20Step = 48 ifTrue: [
            recoveredBlock20Stack1 := recoveredLocal2.
            recoveredBlock20PC := 51.
        ].
        recoveredBlock20Step = 51 ifTrue: [
            recoveredBlock20Stack2 := recoveredBlock20Local1.
            recoveredBlock20PC := 52.
        ].
        recoveredBlock20Step = 52 ifTrue: [
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) classMethods.
            recoveredBlock20PC := 54.
        ].
        recoveredBlock20Step = 54 ifTrue: [
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) keys.
            recoveredBlock20PC := 56.
        ].
        recoveredBlock20Step = 56 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) addAll: (recoveredBlock20Stack2).
            recoveredBlock20PC := 58.
        ].
        recoveredBlock20Step = 58 ifTrue: [
            recoveredBlock20PC := 86.
        ].
        recoveredBlock20Step = 62 ifTrue: [
            recoveredBlock20Stack1 := recoveredLocal3.
            recoveredBlock20PC := 65.
        ].
        recoveredBlock20Step = 65 ifTrue: [
            recoveredBlock20Stack2 := recoveredArg1.
            recoveredBlock20PC := 68.
        ].
        recoveredBlock20Step = 68 ifTrue: [
            recoveredBlock20Stack3 := recoveredBlock20Arg1.
            recoveredBlock20PC := 69.
        ].
        recoveredBlock20Step = 69 ifTrue: [
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) methodNamesIn: (recoveredBlock20Stack3).
            recoveredBlock20PC := 71.
        ].
        recoveredBlock20Step = 71 ifTrue: [
            (recoveredBlock20Stack1) addAll: (recoveredBlock20Stack2).
            recoveredBlock20PC := 73.
        ].
        recoveredBlock20Step = 73 ifTrue: [
            recoveredBlock20Stack1 := recoveredLocal2.
            recoveredBlock20PC := 76.
        ].
        recoveredBlock20Step = 76 ifTrue: [
            recoveredBlock20Stack2 := recoveredArg1.
            recoveredBlock20PC := 79.
        ].
        recoveredBlock20Step = 79 ifTrue: [
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) class.
            recoveredBlock20PC := 81.
        ].
        recoveredBlock20Step = 81 ifTrue: [
            recoveredBlock20Stack3 := recoveredBlock20Arg1.
            recoveredBlock20PC := 82.
        ].
        recoveredBlock20Step = 82 ifTrue: [
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) methodNamesIn: (recoveredBlock20Stack3).
            recoveredBlock20PC := 84.
        ].
        recoveredBlock20Step = 84 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) addAll: (recoveredBlock20Stack2).
            recoveredBlock20PC := 86.
        ].
        recoveredBlock20Step = 86 ifTrue: [
            recoveredBlock20Result := recoveredBlock20Stack1.
            recoveredBlock20Done := true.
        ].
    ].
    recoveredBlock20Result
].
    (recoveredValue5) do: (recoveredValue6).
    recoveredValue7 := Set.
    recoveredValue8 := (recoveredValue7) new.
    recoveredLocal1 := recoveredValue8.
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := [:recoveredBlock98Arg1 | 
    | recoveredBlock98Local1 recoveredBlock98Stack0 recoveredBlock98Stack1 recoveredBlock98Stack2 recoveredBlock98Stack3 recoveredBlock98Stack4 recoveredBlock98Stack5 recoveredBlock98Stack6 recoveredBlock98PC recoveredBlock98Step recoveredBlock98Done recoveredBlock98Result |
    recoveredBlock98Stack0 := self.
    recoveredBlock98PC := 104.
    recoveredBlock98Done := false.
    [recoveredBlock98Done not] whileTrue: [
        recoveredBlock98Step := recoveredBlock98PC.
        recoveredBlock98Step = 104 ifTrue: [
            recoveredBlock98Stack1 := nil.
            recoveredBlock98PC := 105.
        ].
        recoveredBlock98Step = 105 ifTrue: [
            recoveredBlock98Stack2 := recoveredBlock98Arg1.
            recoveredBlock98PC := 106.
        ].
        recoveredBlock98Step = 106 ifTrue: [
            recoveredBlock98Stack2 := (recoveredBlock98Stack2) filePointer.
            recoveredBlock98PC := 108.
        ].
        recoveredBlock98Step = 108 ifTrue: [
            recoveredBlock98Stack2 := (recoveredBlock98Stack2) notVoid.
            recoveredBlock98PC := 110.
        ].
        recoveredBlock98Step = 110 ifTrue: [
            (recoveredBlock98Stack2) ifTrue: [recoveredBlock98PC := 114] ifFalse: [recoveredBlock98PC := 252].
        ].
        recoveredBlock98Step = 114 ifTrue: [
            recoveredBlock98PC := 115.
        ].
        recoveredBlock98Step = 115 ifTrue: [
            recoveredBlock98Stack1 := recoveredBlock98Arg1.
            recoveredBlock98PC := 116.
        ].
        recoveredBlock98Step = 116 ifTrue: [
            recoveredBlock98Stack1 := (recoveredBlock98Stack1) compiledCorrectly.
            recoveredBlock98PC := 118.
        ].
        recoveredBlock98Step = 118 ifTrue: [
            (recoveredBlock98Stack1) ifTrue: [recoveredBlock98PC := 122] ifFalse: [recoveredBlock98PC := 170].
        ].
        recoveredBlock98Step = 122 ifTrue: [
            recoveredBlock98Stack1 := recoveredBlock98Arg1.
            recoveredBlock98PC := 123.
        ].
        recoveredBlock98Step = 123 ifTrue: [
            (recoveredBlock98Stack1) storeByteCodes.
            recoveredBlock98PC := 125.
        ].
        recoveredBlock98Step = 125 ifTrue: [
            recoveredBlock98Stack1 := nil.
            recoveredBlock98PC := 126.
        ].
        recoveredBlock98Step = 126 ifTrue: [
            recoveredBlock98Stack2 := recoveredBlock98Arg1.
            recoveredBlock98PC := 127.
        ].
        recoveredBlock98Step = 127 ifTrue: [
            recoveredBlock98Stack2 := (recoveredBlock98Stack2) methodClass.
            recoveredBlock98PC := 129.
        ].
        recoveredBlock98Step = 129 ifTrue: [
            recoveredBlock98Stack3 := recoveredArg1.
            recoveredBlock98PC := 132.
        ].
        recoveredBlock98Step = 132 ifTrue: [
            (recoveredBlock98Stack2 ~~ recoveredBlock98Stack3) ifTrue: [recoveredBlock98PC := 142] ifFalse: [recoveredBlock98PC := 136].
        ].
        recoveredBlock98Step = 136 ifTrue: [
            recoveredBlock98Stack2 := recoveredLocal3.
            recoveredBlock98PC := 139.
        ].
        recoveredBlock98Step = 139 ifTrue: [
            recoveredBlock98PC := 145.
        ].
        recoveredBlock98Step = 142 ifTrue: [
            recoveredBlock98Stack2 := recoveredLocal2.
            recoveredBlock98PC := 145.
        ].
        recoveredBlock98Step = 145 ifTrue: [
            recoveredBlock98Stack3 := recoveredBlock98Arg1.
            recoveredBlock98PC := 146.
        ].
        recoveredBlock98Step = 146 ifTrue: [
            recoveredBlock98Stack3 := (recoveredBlock98Stack3) selector.
            recoveredBlock98PC := 148.
        ].
        recoveredBlock98Step = 148 ifTrue: [
            recoveredBlock98Stack2 := (recoveredBlock98Stack2) includes: (recoveredBlock98Stack3).
            recoveredBlock98PC := 150.
        ].
        recoveredBlock98Step = 150 ifTrue: [
            (recoveredBlock98Stack2) ifTrue: [recoveredBlock98PC := 167] ifFalse: [recoveredBlock98PC := 154].
        ].
        recoveredBlock98Step = 154 ifTrue: [
            recoveredBlock98PC := 155.
        ].
        recoveredBlock98Step = 155 ifTrue: [
            recoveredBlock98Stack1 := recoveredBlock98Arg1.
            recoveredBlock98PC := 156.
        ].
        recoveredBlock98Step = 156 ifTrue: [
            recoveredBlock98Stack1 := (recoveredBlock98Stack1) methodClass.
            recoveredBlock98PC := 158.
        ].
        recoveredBlock98Step = 158 ifTrue: [
            recoveredBlock98Stack2 := recoveredBlock98Arg1.
            recoveredBlock98PC := 159.
        ].
        recoveredBlock98Step = 159 ifTrue: [
            recoveredBlock98Stack3 := recoveredBlock98Arg1.
            recoveredBlock98PC := 160.
        ].
        recoveredBlock98Step = 160 ifTrue: [
            recoveredBlock98Stack3 := (recoveredBlock98Stack3) application.
            recoveredBlock98PC := 162.
        ].
        recoveredBlock98Step = 162 ifTrue: [
            recoveredBlock98Stack4 := #().
            recoveredBlock98PC := 164.
        ].
        recoveredBlock98Step = 164 ifTrue: [
            recoveredBlock98Stack1 := (recoveredBlock98Stack1) releaseMethod: (recoveredBlock98Stack2) in: (recoveredBlock98Stack3) with: (recoveredBlock98Stack4).
            recoveredBlock98PC := 167.
        ].
        recoveredBlock98Step = 167 ifTrue: [
            recoveredBlock98PC := 252.
        ].
        recoveredBlock98Step = 170 ifTrue: [
            recoveredBlock98Stack1 := nil.
            recoveredBlock98PC := 171.
        ].
        recoveredBlock98Step = 171 ifTrue: [
            recoveredBlock98Stack2 := recoveredBlock98Arg1.
            recoveredBlock98PC := 172.
        ].
        recoveredBlock98Step = 172 ifTrue: [
            recoveredBlock98Stack2 := (recoveredBlock98Stack2) application.
            recoveredBlock98PC := 174.
        ].
        recoveredBlock98Step = 174 ifTrue: [
            recoveredBlock98Stack3 := recoveredBlock98Stack2.
            recoveredBlock98PC := 175.
        ].
        recoveredBlock98Step = 175 ifTrue: [
            recoveredBlock98Local1 := recoveredBlock98Stack3.
            recoveredBlock98PC := 176.
        ].
        recoveredBlock98Step = 176 ifTrue: [
            (recoveredBlock98Stack2 == nil) ifTrue: [recoveredBlock98PC := 250] ifFalse: [recoveredBlock98PC := 180].
        ].
        recoveredBlock98Step = 180 ifTrue: [
            recoveredBlock98PC := 181.
        ].
        recoveredBlock98Step = 181 ifTrue: [
            recoveredBlock98Stack1 := recoveredLocal1.
            recoveredBlock98PC := 184.
        ].
        recoveredBlock98Step = 184 ifTrue: [
            recoveredBlock98Stack2 := recoveredBlock98Local1.
            recoveredBlock98PC := 185.
        ].
        recoveredBlock98Step = 185 ifTrue: [
            (recoveredBlock98Stack1) add: (recoveredBlock98Stack2).
            recoveredBlock98PC := 187.
        ].
        recoveredBlock98Step = 187 ifTrue: [
            recoveredBlock98Stack1 := recoveredBlock98Arg1.
            recoveredBlock98PC := 188.
        ].
        recoveredBlock98Step = 188 ifTrue: [
            recoveredBlock98Stack1 := (recoveredBlock98Stack1) methodClass.
            recoveredBlock98PC := 190.
        ].
        recoveredBlock98Step = 190 ifTrue: [
            recoveredBlock98Stack2 := recoveredBlock98Arg1.
            recoveredBlock98PC := 191.
        ].
        recoveredBlock98Step = 191 ifTrue: [
            recoveredBlock98Stack2 := (recoveredBlock98Stack2) selector.
            recoveredBlock98PC := 193.
        ].
        recoveredBlock98Step = 193 ifTrue: [
            recoveredBlock98Stack3 := recoveredBlock98Local1.
            recoveredBlock98PC := 194.
        ].
        recoveredBlock98Step = 194 ifTrue: [
            recoveredBlock98Stack4 := [].
            recoveredBlock98PC := 196.
        ].
        recoveredBlock98Step = 196 ifTrue: [
            recoveredBlock98Stack1 := (recoveredBlock98Stack1) removeSelectorFromLibraryOnly: (recoveredBlock98Stack2) in: (recoveredBlock98Stack3) ifUnable: (recoveredBlock98Stack4).
            recoveredBlock98PC := 199.
        ].
        recoveredBlock98Step = 199 ifTrue: [
            (recoveredBlock98Stack1 ~~ nil) ifTrue: [recoveredBlock98PC := 228] ifFalse: [recoveredBlock98PC := 202].
        ].
        recoveredBlock98Step = 202 ifTrue: [
            recoveredBlock98Stack1 := EmImageSupport.
            recoveredBlock98PC := 204.
        ].
        recoveredBlock98Step = 204 ifTrue: [
            recoveredBlock98Stack1 := (recoveredBlock98Stack1) errorReporter.
            recoveredBlock98PC := 206.
        ].
        recoveredBlock98Step = 206 ifTrue: [
            recoveredBlock98Stack2 := 178.
            recoveredBlock98PC := 210.
        ].
        recoveredBlock98Step = 210 ifTrue: [
            recoveredBlock98Stack3 := Array.
            recoveredBlock98PC := 212.
        ].
        recoveredBlock98Step = 212 ifTrue: [
            recoveredBlock98Stack4 := recoveredBlock98Arg1.
            recoveredBlock98PC := 213.
        ].
        recoveredBlock98Step = 213 ifTrue: [
            recoveredBlock98Stack4 := (recoveredBlock98Stack4) selector.
            recoveredBlock98PC := 215.
        ].
        recoveredBlock98Step = 215 ifTrue: [
            recoveredBlock98Stack5 := recoveredBlock98Arg1.
            recoveredBlock98PC := 216.
        ].
        recoveredBlock98Step = 216 ifTrue: [
            recoveredBlock98Stack5 := (recoveredBlock98Stack5) methodClass.
            recoveredBlock98PC := 218.
        ].
        recoveredBlock98Step = 218 ifTrue: [
            recoveredBlock98Stack5 := (recoveredBlock98Stack5) name.
            recoveredBlock98PC := 220.
        ].
        recoveredBlock98Step = 220 ifTrue: [
            recoveredBlock98Stack3 := (recoveredBlock98Stack3) with: (recoveredBlock98Stack4) with: (recoveredBlock98Stack5).
            recoveredBlock98PC := 222.
        ].
        recoveredBlock98Step = 222 ifTrue: [
            recoveredBlock98Stack1 := (recoveredBlock98Stack1) logError: (recoveredBlock98Stack2) withParms: (recoveredBlock98Stack3).
            recoveredBlock98PC := 224.
        ].
        recoveredBlock98Step = 224 ifTrue: [
            recoveredBlock98PC := 250.
        ].
        recoveredBlock98Step = 228 ifTrue: [
            recoveredBlock98Stack1 := EmImageSupport.
            recoveredBlock98PC := 230.
        ].
        recoveredBlock98Step = 230 ifTrue: [
            recoveredBlock98Stack1 := (recoveredBlock98Stack1) errorReporter.
            recoveredBlock98PC := 232.
        ].
        recoveredBlock98Step = 232 ifTrue: [
            recoveredBlock98Stack2 := 181.
            recoveredBlock98PC := 236.
        ].
        recoveredBlock98Step = 236 ifTrue: [
            recoveredBlock98Stack3 := Array.
            recoveredBlock98PC := 238.
        ].
        recoveredBlock98Step = 238 ifTrue: [
            recoveredBlock98Stack4 := recoveredBlock98Arg1.
            recoveredBlock98PC := 239.
        ].
        recoveredBlock98Step = 239 ifTrue: [
            recoveredBlock98Stack4 := (recoveredBlock98Stack4) selector.
            recoveredBlock98PC := 241.
        ].
        recoveredBlock98Step = 241 ifTrue: [
            recoveredBlock98Stack5 := recoveredBlock98Arg1.
            recoveredBlock98PC := 242.
        ].
        recoveredBlock98Step = 242 ifTrue: [
            recoveredBlock98Stack5 := (recoveredBlock98Stack5) methodClass.
            recoveredBlock98PC := 244.
        ].
        recoveredBlock98Step = 244 ifTrue: [
            recoveredBlock98Stack5 := (recoveredBlock98Stack5) name.
            recoveredBlock98PC := 246.
        ].
        recoveredBlock98Step = 246 ifTrue: [
            recoveredBlock98Stack3 := (recoveredBlock98Stack3) with: (recoveredBlock98Stack4) with: (recoveredBlock98Stack5).
            recoveredBlock98PC := 248.
        ].
        recoveredBlock98Step = 248 ifTrue: [
            recoveredBlock98Stack1 := (recoveredBlock98Stack1) logError: (recoveredBlock98Stack2) withParms: (recoveredBlock98Stack3).
            recoveredBlock98PC := 250.
        ].
        recoveredBlock98Step = 250 ifTrue: [
            recoveredBlock98Stack2 := nil.
            recoveredBlock98PC := 251.
        ].
        recoveredBlock98Step = 251 ifTrue: [
            recoveredBlock98Local1 := recoveredBlock98Stack2.
            recoveredBlock98PC := 252.
        ].
        recoveredBlock98Step = 252 ifTrue: [
            recoveredBlock98Result := recoveredBlock98Stack1.
            recoveredBlock98Done := true.
        ].
    ].
    recoveredBlock98Result
].
    (recoveredValue9) methodsDo: (recoveredValue10).
    recoveredValue11 := recoveredArg1.
    recoveredValue12 := (recoveredValue11) applications.
    recoveredValue13 := [:recoveredBlock259Arg1 | 
    | recoveredBlock259Stack0 recoveredBlock259Stack1 recoveredBlock259Stack2 recoveredBlock259Stack3 recoveredBlock259Stack4 recoveredBlock259Stack5 recoveredBlock259Stack6 recoveredBlock259PC recoveredBlock259Step recoveredBlock259Done recoveredBlock259Result |
    recoveredBlock259Stack0 := self.
    recoveredBlock259PC := 266.
    recoveredBlock259Done := false.
    [recoveredBlock259Done not] whileTrue: [
        recoveredBlock259Step := recoveredBlock259PC.
        recoveredBlock259Step = 266 ifTrue: [
            recoveredBlock259Stack1 := nil.
            recoveredBlock259PC := 267.
        ].
        recoveredBlock259Step = 267 ifTrue: [
            recoveredBlock259Stack2 := recoveredArg1.
            recoveredBlock259PC := 270.
        ].
        recoveredBlock259Step = 270 ifTrue: [
            recoveredBlock259Stack3 := recoveredBlock259Arg1.
            recoveredBlock259PC := 271.
        ].
        recoveredBlock259Step = 271 ifTrue: [
            recoveredBlock259Stack2 := (recoveredBlock259Stack2) isVersionIn: (recoveredBlock259Stack3).
            recoveredBlock259PC := 273.
        ].
        recoveredBlock259Step = 273 ifTrue: [
            (recoveredBlock259Stack2) ifTrue: [recoveredBlock259PC := 276] ifFalse: [recoveredBlock259PC := 335].
        ].
        recoveredBlock259Step = 276 ifTrue: [
            recoveredBlock259PC := 277.
        ].
        recoveredBlock259Step = 277 ifTrue: [
            recoveredBlock259Stack1 := recoveredLocal1.
            recoveredBlock259PC := 280.
        ].
        recoveredBlock259Step = 280 ifTrue: [
            recoveredBlock259Stack2 := recoveredBlock259Arg1.
            recoveredBlock259PC := 281.
        ].
        recoveredBlock259Step = 281 ifTrue: [
            recoveredBlock259Stack1 := (recoveredBlock259Stack1) includes: (recoveredBlock259Stack2).
            recoveredBlock259PC := 283.
        ].
        recoveredBlock259Step = 283 ifTrue: [
            (recoveredBlock259Stack1) ifTrue: [recoveredBlock259PC := 286] ifFalse: [recoveredBlock259PC := 312].
        ].
        recoveredBlock259Step = 286 ifTrue: [
            recoveredBlock259Stack1 := EmImageSupport.
            recoveredBlock259PC := 288.
        ].
        recoveredBlock259Step = 288 ifTrue: [
            recoveredBlock259Stack1 := (recoveredBlock259Stack1) errorReporter.
            recoveredBlock259PC := 290.
        ].
        recoveredBlock259Step = 290 ifTrue: [
            recoveredBlock259Stack2 := 180.
            recoveredBlock259PC := 294.
        ].
        recoveredBlock259Step = 294 ifTrue: [
            recoveredBlock259Stack3 := Array.
            recoveredBlock259PC := 296.
        ].
        recoveredBlock259Step = 296 ifTrue: [
            recoveredBlock259Stack4 := recoveredArg1.
            recoveredBlock259PC := 299.
        ].
        recoveredBlock259Step = 299 ifTrue: [
            recoveredBlock259Stack5 := recoveredBlock259Arg1.
            recoveredBlock259PC := 300.
        ].
        recoveredBlock259Step = 300 ifTrue: [
            recoveredBlock259Stack4 := (recoveredBlock259Stack4) signatureIn: (recoveredBlock259Stack5).
            recoveredBlock259PC := 302.
        ].
        recoveredBlock259Step = 302 ifTrue: [
            recoveredBlock259Stack5 := recoveredBlock259Arg1.
            recoveredBlock259PC := 303.
        ].
        recoveredBlock259Step = 303 ifTrue: [
            recoveredBlock259Stack5 := (recoveredBlock259Stack5) signature.
            recoveredBlock259PC := 305.
        ].
        recoveredBlock259Step = 305 ifTrue: [
            recoveredBlock259Stack3 := (recoveredBlock259Stack3) with: (recoveredBlock259Stack4) with: (recoveredBlock259Stack5).
            recoveredBlock259PC := 307.
        ].
        recoveredBlock259Step = 307 ifTrue: [
            recoveredBlock259Stack1 := (recoveredBlock259Stack1) logError: (recoveredBlock259Stack2) withParms: (recoveredBlock259Stack3).
            recoveredBlock259PC := 309.
        ].
        recoveredBlock259Step = 309 ifTrue: [
            recoveredBlock259PC := 335.
        ].
        recoveredBlock259Step = 312 ifTrue: [
            recoveredBlock259Stack1 := recoveredArg1.
            recoveredBlock259PC := 315.
        ].
        recoveredBlock259Step = 315 ifTrue: [
            recoveredBlock259Stack2 := recoveredBlock259Arg1.
            recoveredBlock259PC := 316.
        ].
        recoveredBlock259Step = 316 ifTrue: [
            recoveredBlock259Stack3 := [:recoveredBlock259Block316Arg1 | 
    | recoveredBlock259Block316Value0 recoveredBlock259Block316Value1 recoveredBlock259Block316Value2 recoveredBlock259Block316Value3 recoveredBlock259Block316Value4 |
    recoveredBlock259Block316Value0 := recoveredBlock259Block316Arg1.
    recoveredBlock259Block316Value1 := (recoveredBlock259Block316Value0) currentEntry.
    recoveredBlock259Block316Value2 := recoveredArg1.
    recoveredBlock259Block316Value3 := (recoveredBlock259Block316Value2) methodFormatTimeStamp.
    recoveredBlock259Block316Value4 := (recoveredBlock259Block316Value1) knowsMFTS: (recoveredBlock259Block316Value3).
    recoveredBlock259Block316Value4
].
            recoveredBlock259PC := 333.
        ].
        recoveredBlock259Step = 333 ifTrue: [
            recoveredBlock259Stack1 := (recoveredBlock259Stack1) updateIn: (recoveredBlock259Stack2) with: (recoveredBlock259Stack3).
            recoveredBlock259PC := 335.
        ].
        recoveredBlock259Step = 335 ifTrue: [
            recoveredBlock259Result := recoveredBlock259Stack1.
            recoveredBlock259Done := true.
        ].
    ].
    recoveredBlock259Result
].
    (recoveredValue12) do: (recoveredValue13).
    ^self
! !

"lib.ic method 0x2002f2d4; bytecode file offset 0x6b378"
!EmStandardAccessor methodsFor: 'recovered'!
loadingClasses: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 |
    recoveredValue0 := (self) libraryClass.
    recoveredValue1 := (recoveredValue0) cache.
    recoveredValue2 := (self) applicationClassFromFlag: (false).
    recoveredValue3 := (recoveredValue1) appRootDictionaryFor: (recoveredValue2).
    recoveredLocal5 := recoveredValue3.
    recoveredValue4 := (self) libraryClass.
    recoveredValue5 := (recoveredValue4) cache.
    recoveredValue6 := (self) applicationClassFromFlag: (true).
    recoveredValue7 := (recoveredValue5) appRootDictionaryFor: (recoveredValue6).
    recoveredLocal4 := recoveredValue7.
    recoveredValue8 := LookupTable.
    recoveredValue9 := (recoveredValue8) new.
    recoveredLocal2 := recoveredValue9.
    recoveredValue10 := OrderedCollection.
    recoveredValue11 := recoveredArg1.
    recoveredValue12 := (recoveredValue11) size.
    recoveredValue13 := (recoveredValue10) new: (recoveredValue12).
    recoveredLocal3 := recoveredValue13.
    recoveredValue14 := LookupTable.
    recoveredValue15 := (recoveredValue14) new.
    recoveredLocal1 := recoveredValue15.
    recoveredValue16 := recoveredArg1.
    recoveredValue17 := [:recoveredBlock52Arg1 | 
    | recoveredBlock52Local1 recoveredBlock52Local2 recoveredBlock52Local3 recoveredBlock52Local4 recoveredBlock52Local5 recoveredBlock52Local6 recoveredBlock52Local7 recoveredBlock52Local8 recoveredBlock52Local9 recoveredBlock52Local10 recoveredBlock52Local11 recoveredBlock52Local12 recoveredBlock52Stack0 recoveredBlock52Stack1 recoveredBlock52Stack2 recoveredBlock52Stack3 recoveredBlock52Stack4 recoveredBlock52Stack5 recoveredBlock52Stack6 recoveredBlock52PC recoveredBlock52Step recoveredBlock52Done recoveredBlock52Result |
    recoveredBlock52Stack0 := self.
    recoveredBlock52PC := 58.
    recoveredBlock52Done := false.
    [recoveredBlock52Done not] whileTrue: [
        recoveredBlock52Step := recoveredBlock52PC.
        recoveredBlock52Step = 58 ifTrue: [
            recoveredBlock52Stack1 := recoveredBlock52Arg1.
            recoveredBlock52PC := 61.
        ].
        recoveredBlock52Step = 61 ifTrue: [
            recoveredBlock52Stack2 := 1.
            recoveredBlock52PC := 63.
        ].
        recoveredBlock52Step = 63 ifTrue: [
            recoveredBlock52Stack1 := (recoveredBlock52Stack1) at: (recoveredBlock52Stack2).
            recoveredBlock52PC := 65.
        ].
        recoveredBlock52Step = 65 ifTrue: [
            recoveredBlock52Local6 := recoveredBlock52Stack1.
            recoveredBlock52PC := 68.
        ].
        recoveredBlock52Step = 68 ifTrue: [
            recoveredBlock52Stack1 := recoveredBlock52Arg1.
            recoveredBlock52PC := 71.
        ].
        recoveredBlock52Step = 71 ifTrue: [
            recoveredBlock52Stack2 := 2.
            recoveredBlock52PC := 73.
        ].
        recoveredBlock52Step = 73 ifTrue: [
            recoveredBlock52Stack1 := (recoveredBlock52Stack1) at: (recoveredBlock52Stack2).
            recoveredBlock52PC := 75.
        ].
        recoveredBlock52Step = 75 ifTrue: [
            recoveredBlock52Local4 := recoveredBlock52Stack1.
            recoveredBlock52PC := 78.
        ].
        recoveredBlock52Step = 78 ifTrue: [
            recoveredBlock52Stack1 := recoveredBlock52Arg1.
            recoveredBlock52PC := 81.
        ].
        recoveredBlock52Step = 81 ifTrue: [
            recoveredBlock52Stack2 := 3.
            recoveredBlock52PC := 83.
        ].
        recoveredBlock52Step = 83 ifTrue: [
            recoveredBlock52Stack1 := (recoveredBlock52Stack1) at: (recoveredBlock52Stack2).
            recoveredBlock52PC := 85.
        ].
        recoveredBlock52Step = 85 ifTrue: [
            recoveredBlock52Local8 := recoveredBlock52Stack1.
            recoveredBlock52PC := 88.
        ].
        recoveredBlock52Step = 88 ifTrue: [
            recoveredBlock52Stack1 := recoveredBlock52Arg1.
            recoveredBlock52PC := 91.
        ].
        recoveredBlock52Step = 91 ifTrue: [
            recoveredBlock52Stack2 := 4.
            recoveredBlock52PC := 93.
        ].
        recoveredBlock52Step = 93 ifTrue: [
            recoveredBlock52Stack1 := (recoveredBlock52Stack1) at: (recoveredBlock52Stack2).
            recoveredBlock52PC := 95.
        ].
        recoveredBlock52Step = 95 ifTrue: [
            recoveredBlock52Local7 := recoveredBlock52Stack1.
            recoveredBlock52PC := 98.
        ].
        recoveredBlock52Step = 98 ifTrue: [
            recoveredBlock52Stack1 := recoveredBlock52Arg1.
            recoveredBlock52PC := 101.
        ].
        recoveredBlock52Step = 101 ifTrue: [
            recoveredBlock52Stack2 := 5.
            recoveredBlock52PC := 103.
        ].
        recoveredBlock52Step = 103 ifTrue: [
            recoveredBlock52Stack1 := (recoveredBlock52Stack1) at: (recoveredBlock52Stack2).
            recoveredBlock52PC := 105.
        ].
        recoveredBlock52Step = 105 ifTrue: [
            recoveredBlock52Local5 := recoveredBlock52Stack1.
            recoveredBlock52PC := 108.
        ].
        recoveredBlock52Step = 108 ifTrue: [
            recoveredBlock52Stack1 := recoveredBlock52Local7.
            recoveredBlock52PC := 111.
        ].
        recoveredBlock52Step = 111 ifTrue: [
            (recoveredBlock52Stack1) ifTrue: [recoveredBlock52PC := 114] ifFalse: [recoveredBlock52PC := 120].
        ].
        recoveredBlock52Step = 114 ifTrue: [
            recoveredBlock52Stack1 := recoveredLocal5.
            recoveredBlock52PC := 117.
        ].
        recoveredBlock52Step = 117 ifTrue: [
            recoveredBlock52PC := 123.
        ].
        recoveredBlock52Step = 120 ifTrue: [
            recoveredBlock52Stack1 := recoveredLocal4.
            recoveredBlock52PC := 123.
        ].
        recoveredBlock52Step = 123 ifTrue: [
            recoveredBlock52Local12 := recoveredBlock52Stack1.
            recoveredBlock52PC := 126.
        ].
        recoveredBlock52Step = 126 ifTrue: [
            recoveredBlock52Stack1 := recoveredLocal2.
            recoveredBlock52PC := 129.
        ].
        recoveredBlock52Step = 129 ifTrue: [
            recoveredBlock52Stack2 := recoveredBlock52Local8.
            recoveredBlock52PC := 132.
        ].
        recoveredBlock52Step = 132 ifTrue: [
            recoveredBlock52Stack3 := [
    | recoveredBlock52Block132Stack0 recoveredBlock52Block132Stack1 recoveredBlock52Block132Stack2 recoveredBlock52Block132Stack3 recoveredBlock52Block132Stack4 recoveredBlock52Block132PC recoveredBlock52Block132Step recoveredBlock52Block132Done recoveredBlock52Block132Result |
    recoveredBlock52Block132Stack0 := self.
    recoveredBlock52Block132PC := 138.
    recoveredBlock52Block132Done := false.
    [recoveredBlock52Block132Done not] whileTrue: [
        recoveredBlock52Block132Step := recoveredBlock52Block132PC.
        recoveredBlock52Block132Step = 138 ifTrue: [
            recoveredBlock52Block132Stack1 := recoveredBlock52Local7.
            recoveredBlock52Block132PC := 141.
        ].
        recoveredBlock52Block132Step = 141 ifTrue: [
            recoveredBlock52Block132Stack1 := (recoveredBlock52Block132Stack1) not.
            recoveredBlock52Block132PC := 142.
        ].
        recoveredBlock52Block132Step = 142 ifTrue: [
            recoveredBlock52Block132Stack0 := (recoveredBlock52Block132Stack0) applicationClassFromFlag: (recoveredBlock52Block132Stack1).
            recoveredBlock52Block132PC := 143.
        ].
        recoveredBlock52Block132Step = 143 ifTrue: [
            recoveredBlock52Block132Stack0 := (recoveredBlock52Block132Stack0) partsRecordClass.
            recoveredBlock52Block132PC := 145.
        ].
        recoveredBlock52Block132Step = 145 ifTrue: [
            recoveredBlock52Block132Stack1 := recoveredBlock52Local12.
            recoveredBlock52Block132PC := 148.
        ].
        recoveredBlock52Block132Step = 148 ifTrue: [
            recoveredBlock52Block132Stack2 := recoveredBlock52Local8.
            recoveredBlock52Block132PC := 151.
        ].
        recoveredBlock52Block132Step = 151 ifTrue: [
            recoveredBlock52Block132Stack3 := [
    | block280058a8Value0 block280058a8Value1 |
    block280058a8Value0 := EmLibraryPointer.
    block280058a8Value1 := (block280058a8Value0) void.
    block280058a8Value1
].
            recoveredBlock52Block132PC := 153.
        ].
        recoveredBlock52Block132Step = 153 ifTrue: [
            recoveredBlock52Block132PC := 161.
        ].
        recoveredBlock52Block132Step = 161 ifTrue: [
            recoveredBlock52Block132Stack1 := (recoveredBlock52Block132Stack1) at: (recoveredBlock52Block132Stack2) ifAbsent: (recoveredBlock52Block132Stack3).
            recoveredBlock52Block132PC := 163.
        ].
        recoveredBlock52Block132Step = 163 ifTrue: [
            recoveredBlock52Block132Stack2 := recoveredBlock52Local12.
            recoveredBlock52Block132PC := 166.
        ].
        recoveredBlock52Block132Step = 166 ifTrue: [
            recoveredBlock52Block132Stack2 := (recoveredBlock52Block132Stack2) library.
            recoveredBlock52Block132PC := 168.
        ].
        recoveredBlock52Block132Step = 168 ifTrue: [
            recoveredBlock52Block132Stack0 := (recoveredBlock52Block132Stack0) using: (recoveredBlock52Block132Stack1) from: (recoveredBlock52Block132Stack2).
            recoveredBlock52Block132PC := 170.
        ].
        recoveredBlock52Block132Step = 170 ifTrue: [
            recoveredBlock52Block132Result := recoveredBlock52Block132Stack0.
            recoveredBlock52Block132Done := true.
        ].
    ].
    recoveredBlock52Block132Result
].
            recoveredBlock52PC := 171.
        ].
        recoveredBlock52Step = 171 ifTrue: [
            recoveredBlock52Stack1 := (recoveredBlock52Stack1) at: (recoveredBlock52Stack2) ifAbsentPut: (recoveredBlock52Stack3).
            recoveredBlock52PC := 173.
        ].
        recoveredBlock52Step = 173 ifTrue: [
            recoveredBlock52Local11 := recoveredBlock52Stack1.
            recoveredBlock52PC := 176.
        ].
        recoveredBlock52Step = 176 ifTrue: [
            recoveredBlock52Stack1 := recoveredLocal1.
            recoveredBlock52PC := 179.
        ].
        recoveredBlock52Step = 179 ifTrue: [
            recoveredBlock52Stack2 := recoveredBlock52Local8.
            recoveredBlock52PC := 182.
        ].
        recoveredBlock52Step = 182 ifTrue: [
            recoveredBlock52Stack3 := [
    | recoveredBlock52Block182Value0 recoveredBlock52Block182Value1 |
    recoveredBlock52Block182Value0 := recoveredBlock52Local11.
    recoveredBlock52Block182Value1 := (recoveredBlock52Block182Value0) classNamesDictionary.
    recoveredBlock52Block182Value1
].
            recoveredBlock52PC := 194.
        ].
        recoveredBlock52Step = 194 ifTrue: [
            recoveredBlock52Stack1 := (recoveredBlock52Stack1) at: (recoveredBlock52Stack2) ifAbsentPut: (recoveredBlock52Stack3).
            recoveredBlock52PC := 196.
        ].
        recoveredBlock52Step = 196 ifTrue: [
            recoveredBlock52Local10 := recoveredBlock52Stack1.
            recoveredBlock52PC := 199.
        ].
        recoveredBlock52Step = 199 ifTrue: [
            recoveredBlock52Stack0 := (recoveredBlock52Stack0) classEditionsClass.
            recoveredBlock52PC := 201.
        ].
        recoveredBlock52Step = 201 ifTrue: [
            recoveredBlock52Stack1 := recoveredBlock52Local6.
            recoveredBlock52PC := 204.
        ].
        recoveredBlock52Step = 204 ifTrue: [
            recoveredBlock52Stack2 := nil.
            recoveredBlock52PC := 205.
        ].
        recoveredBlock52Step = 205 ifTrue: [
            recoveredBlock52Stack3 := recoveredBlock52Local10.
            recoveredBlock52PC := 208.
        ].
        recoveredBlock52Step = 208 ifTrue: [
            recoveredBlock52Stack4 := recoveredBlock52Local6.
            recoveredBlock52PC := 211.
        ].
        recoveredBlock52Step = 211 ifTrue: [
            recoveredBlock52Stack5 := [
    | block280058ccValue0 block280058ccValue1 |
    block280058ccValue0 := EmLibraryPointer.
    block280058ccValue1 := (block280058ccValue0) void.
    block280058ccValue1
].
            recoveredBlock52PC := 213.
        ].
        recoveredBlock52Step = 213 ifTrue: [
            recoveredBlock52PC := 221.
        ].
        recoveredBlock52Step = 221 ifTrue: [
            recoveredBlock52Stack3 := (recoveredBlock52Stack3) at: (recoveredBlock52Stack4) ifAbsent: (recoveredBlock52Stack5).
            recoveredBlock52PC := 223.
        ].
        recoveredBlock52Step = 223 ifTrue: [
            recoveredBlock52Stack0 := (recoveredBlock52Stack0) for: (recoveredBlock52Stack1) in: (recoveredBlock52Stack2) using: (recoveredBlock52Stack3).
            recoveredBlock52PC := 226.
        ].
        recoveredBlock52Step = 226 ifTrue: [
            recoveredBlock52Local9 := recoveredBlock52Stack0.
            recoveredBlock52PC := 229.
        ].
        recoveredBlock52Step = 229 ifTrue: [
            recoveredBlock52Stack0 := recoveredBlock52Local5.
            recoveredBlock52PC := 232.
        ].
        recoveredBlock52Step = 232 ifTrue: [
            (recoveredBlock52Stack0) ifTrue: [recoveredBlock52PC := 236] ifFalse: [recoveredBlock52PC := 328].
        ].
        recoveredBlock52Step = 236 ifTrue: [
            recoveredBlock52Stack0 := recoveredBlock52Local9.
            recoveredBlock52PC := 239.
        ].
        recoveredBlock52Step = 239 ifTrue: [
            recoveredBlock52Stack1 := recoveredBlock52Local4.
            recoveredBlock52PC := 242.
        ].
        recoveredBlock52Step = 242 ifTrue: [
            recoveredBlock52Stack2 := [
    | recoveredBlock52Block242Value0 recoveredBlock52Block242Value1 |
    recoveredBlock52Block242Value0 := recoveredBlock52Local9.
    recoveredBlock52Block242Value1 := (recoveredBlock52Block242Value0) emptyEntry.
    recoveredBlock52Block242Value1
].
            recoveredBlock52PC := 254.
        ].
        recoveredBlock52Step = 254 ifTrue: [
            recoveredBlock52Stack0 := (recoveredBlock52Stack0) entryAt: (recoveredBlock52Stack1) ifAbsent: (recoveredBlock52Stack2).
            recoveredBlock52PC := 256.
        ].
        recoveredBlock52Step = 256 ifTrue: [
            recoveredBlock52Local3 := recoveredBlock52Stack0.
            recoveredBlock52PC := 259.
        ].
        recoveredBlock52Step = 259 ifTrue: [
            recoveredBlock52Stack0 := recoveredBlock52Local3.
            recoveredBlock52PC := 262.
        ].
        recoveredBlock52Step = 262 ifTrue: [
            recoveredBlock52Stack1 := 'javaFlags'.
            recoveredBlock52PC := 264.
        ].
        recoveredBlock52Step = 264 ifTrue: [
            recoveredBlock52Stack0 := (recoveredBlock52Stack0) inheritedUserFieldAt: (recoveredBlock52Stack1).
            recoveredBlock52PC := 266.
        ].
        recoveredBlock52Step = 266 ifTrue: [
            recoveredBlock52Local2 := recoveredBlock52Stack0.
            recoveredBlock52PC := 269.
        ].
        recoveredBlock52Step = 269 ifTrue: [
            recoveredBlock52Stack0 := recoveredBlock52Local2.
            recoveredBlock52PC := 272.
        ].
        recoveredBlock52Step = 272 ifTrue: [
            recoveredBlock52Stack0 := (recoveredBlock52Stack0) size.
            recoveredBlock52PC := 274.
        ].
        recoveredBlock52Step = 274 ifTrue: [
            recoveredBlock52Stack1 := 4.
            recoveredBlock52PC := 276.
        ].
        recoveredBlock52Step = 276 ifTrue: [
            recoveredBlock52Stack0 := (recoveredBlock52Stack0) < (recoveredBlock52Stack1).
            recoveredBlock52PC := 277.
        ].
        recoveredBlock52Step = 277 ifTrue: [
            (recoveredBlock52Stack0) ifTrue: [recoveredBlock52PC := 280] ifFalse: [recoveredBlock52PC := 286].
        ].
        recoveredBlock52Step = 280 ifTrue: [
            recoveredBlock52Stack0 := 0.
            recoveredBlock52PC := 282.
        ].
        recoveredBlock52Step = 282 ifTrue: [
            recoveredBlock52PC := 293.
        ].
        recoveredBlock52Step = 286 ifTrue: [
            recoveredBlock52Stack0 := recoveredBlock52Local2.
            recoveredBlock52PC := 289.
        ].
        recoveredBlock52Step = 289 ifTrue: [
            recoveredBlock52Stack1 := 1.
            recoveredBlock52PC := 291.
        ].
        recoveredBlock52Step = 291 ifTrue: [
            recoveredBlock52Stack0 := (recoveredBlock52Stack0) intelLongAt: (recoveredBlock52Stack1).
            recoveredBlock52PC := 293.
        ].
        recoveredBlock52Step = 293 ifTrue: [
            recoveredBlock52Local2 := recoveredBlock52Stack0.
            recoveredBlock52PC := 296.
        ].
        recoveredBlock52Step = 296 ifTrue: [
            recoveredBlock52Stack0 := recoveredBlock52Local3.
            recoveredBlock52PC := 299.
        ].
        recoveredBlock52Step = 299 ifTrue: [
            recoveredBlock52Stack1 := 'java'.
            recoveredBlock52PC := 301.
        ].
        recoveredBlock52Step = 301 ifTrue: [
            recoveredBlock52Stack0 := (recoveredBlock52Stack0) inheritedUserFieldAt: (recoveredBlock52Stack1).
            recoveredBlock52PC := 303.
        ].
        recoveredBlock52Step = 303 ifTrue: [
            recoveredBlock52Local1 := recoveredBlock52Stack0.
            recoveredBlock52PC := 306.
        ].
        recoveredBlock52Step = 306 ifTrue: [
            recoveredBlock52Stack0 := recoveredLocal3.
            recoveredBlock52PC := 309.
        ].
        recoveredBlock52Step = 309 ifTrue: [
            recoveredBlock52Stack1 := Array.
            recoveredBlock52PC := 311.
        ].
        recoveredBlock52Step = 311 ifTrue: [
            recoveredBlock52Stack2 := recoveredBlock52Local9.
            recoveredBlock52PC := 314.
        ].
        recoveredBlock52Step = 314 ifTrue: [
            recoveredBlock52Stack3 := recoveredBlock52Local2.
            recoveredBlock52PC := 317.
        ].
        recoveredBlock52Step = 317 ifTrue: [
            recoveredBlock52Stack4 := recoveredBlock52Local1.
            recoveredBlock52PC := 320.
        ].
        recoveredBlock52Step = 320 ifTrue: [
            recoveredBlock52Stack1 := (recoveredBlock52Stack1) with: (recoveredBlock52Stack2) with: (recoveredBlock52Stack3) with: (recoveredBlock52Stack4).
            recoveredBlock52PC := 323.
        ].
        recoveredBlock52Step = 323 ifTrue: [
            recoveredBlock52Stack0 := (recoveredBlock52Stack0) add: (recoveredBlock52Stack1).
            recoveredBlock52PC := 325.
        ].
        recoveredBlock52Step = 325 ifTrue: [
            recoveredBlock52PC := 340.
        ].
        recoveredBlock52Step = 328 ifTrue: [
            recoveredBlock52Stack0 := recoveredLocal3.
            recoveredBlock52PC := 331.
        ].
        recoveredBlock52Step = 331 ifTrue: [
            recoveredBlock52Stack1 := Array.
            recoveredBlock52PC := 333.
        ].
        recoveredBlock52Step = 333 ifTrue: [
            recoveredBlock52Stack2 := recoveredBlock52Local9.
            recoveredBlock52PC := 336.
        ].
        recoveredBlock52Step = 336 ifTrue: [
            recoveredBlock52Stack1 := (recoveredBlock52Stack1) with: (recoveredBlock52Stack2).
            recoveredBlock52PC := 338.
        ].
        recoveredBlock52Step = 338 ifTrue: [
            recoveredBlock52Stack0 := (recoveredBlock52Stack0) add: (recoveredBlock52Stack1).
            recoveredBlock52PC := 340.
        ].
        recoveredBlock52Step = 340 ifTrue: [
            recoveredBlock52Result := recoveredBlock52Stack0.
            recoveredBlock52Done := true.
        ].
    ].
    recoveredBlock52Result
].
    (recoveredValue16) do: (recoveredValue17).
    recoveredValue18 := recoveredLocal3.
    ^recoveredValue18
! !

"lib.ic method 0x200330fc; bytecode file offset 0x6f214"
!EmStandardAccessor methodsFor: 'recovered'!
moveAllVersionsOfApplicationName: recoveredArg1 appIsSubApp: recoveredArg2 in: recoveredArg3 from: recoveredArg4 to: recoveredArg5 skipClassesIn: recoveredArg6 mapping: recoveredArg7 removeSourceStructure: recoveredArg8 removeCommentStructure: recoveredArg9 forgetStoredObjects: recoveredArg10
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) applicationClassFromFlag: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) partsRecordClass.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) for: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) libraryClass.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0 == recoveredStack1) ifTrue: [recoveredPC := 35] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) becomeDefault.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := recoveredArg7.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) userClass.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) allUsers.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := [:recoveredBlock51Arg1 | 
    | recoveredBlock51Value0 recoveredBlock51Value1 recoveredBlock51Value2 recoveredBlock51Value3 recoveredBlock51Value4 recoveredBlock51Value5 |
    recoveredBlock51Value0 := recoveredArg7.
    recoveredBlock51Value1 := recoveredBlock51Arg1.
    recoveredBlock51Value2 := (recoveredBlock51Value1) uniqueName.
    recoveredBlock51Value3 := recoveredBlock51Arg1.
    recoveredBlock51Value4 := (recoveredBlock51Value3) uniqueName.
    recoveredBlock51Value5 := (recoveredBlock51Value0) at: (recoveredBlock51Value2) put: (recoveredBlock51Value4).
    recoveredBlock51Value5
].
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredLocal10 := recoveredStack0.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := Dictionary.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredLocal9 := recoveredStack0.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := Dictionary.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := (recoveredStack0) editionsDictionary.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := [:recoveredBlock98Arg1 | 
    | recoveredBlock98Local1 recoveredBlock98Stack0 recoveredBlock98Stack1 recoveredBlock98Stack2 recoveredBlock98Stack3 recoveredBlock98Stack4 recoveredBlock98PC recoveredBlock98Step recoveredBlock98Done recoveredBlock98Result |
    recoveredBlock98Stack0 := self.
    recoveredBlock98PC := 104.
    recoveredBlock98Done := false.
    [recoveredBlock98Done not] whileTrue: [
        recoveredBlock98Step := recoveredBlock98PC.
        recoveredBlock98Step = 104 ifTrue: [
            recoveredBlock98Stack1 := nil.
            recoveredBlock98PC := 105.
        ].
        recoveredBlock98Step = 105 ifTrue: [
            recoveredBlock98Stack2 := recoveredArg3.
            recoveredBlock98PC := 108.
        ].
        recoveredBlock98Step = 108 ifTrue: [
            recoveredBlock98Stack3 := recoveredBlock98Arg1.
            recoveredBlock98PC := 109.
        ].
        recoveredBlock98Step = 109 ifTrue: [
            recoveredBlock98Stack3 := (recoveredBlock98Stack3) key.
            recoveredBlock98PC := 111.
        ].
        recoveredBlock98Step = 111 ifTrue: [
            recoveredBlock98Stack2 := (recoveredBlock98Stack2) includes: (recoveredBlock98Stack3).
            recoveredBlock98PC := 113.
        ].
        recoveredBlock98Step = 113 ifTrue: [
            (recoveredBlock98Stack2) ifTrue: [recoveredBlock98PC := 116] ifFalse: [recoveredBlock98PC := 283].
        ].
        recoveredBlock98Step = 116 ifTrue: [
            recoveredBlock98PC := 117.
        ].
        recoveredBlock98Step = 117 ifTrue: [
            recoveredBlock98Stack1 := recoveredLocal1.
            recoveredBlock98PC := 120.
        ].
        recoveredBlock98Step = 120 ifTrue: [
            recoveredBlock98Stack1 := (recoveredBlock98Stack1) class.
            recoveredBlock98PC := 122.
        ].
        recoveredBlock98Step = 122 ifTrue: [
            recoveredBlock98Stack1 := (recoveredBlock98Stack1) editionRecordClass.
            recoveredBlock98PC := 124.
        ].
        recoveredBlock98Step = 124 ifTrue: [
            recoveredBlock98Stack2 := recoveredBlock98Arg1.
            recoveredBlock98PC := 125.
        ].
        recoveredBlock98Step = 125 ifTrue: [
            recoveredBlock98Stack2 := (recoveredBlock98Stack2) value.
            recoveredBlock98PC := 127.
        ].
        recoveredBlock98Step = 127 ifTrue: [
            recoveredBlock98Stack3 := recoveredLocal1.
            recoveredBlock98PC := 130.
        ].
        recoveredBlock98Step = 130 ifTrue: [
            recoveredBlock98Stack3 := (recoveredBlock98Stack3) library.
            recoveredBlock98PC := 132.
        ].
        recoveredBlock98Step = 132 ifTrue: [
            recoveredBlock98Stack1 := (recoveredBlock98Stack1) using: (recoveredBlock98Stack2) from: (recoveredBlock98Stack3).
            recoveredBlock98PC := 134.
        ].
        recoveredBlock98Step = 134 ifTrue: [
            recoveredBlock98Local1 := recoveredBlock98Stack1.
            recoveredBlock98PC := 135.
        ].
        recoveredBlock98Step = 135 ifTrue: [
            recoveredBlock98Stack1 := nil.
            recoveredBlock98PC := 136.
        ].
        recoveredBlock98Step = 136 ifTrue: [
            recoveredBlock98Stack2 := recoveredBlock98Local1.
            recoveredBlock98PC := 137.
        ].
        recoveredBlock98Step = 137 ifTrue: [
            recoveredBlock98Stack2 := (recoveredBlock98Stack2) isVersion.
            recoveredBlock98PC := 139.
        ].
        recoveredBlock98Step = 139 ifTrue: [
            (recoveredBlock98Stack2) ifTrue: [recoveredBlock98PC := 142] ifFalse: [recoveredBlock98PC := 283].
        ].
        recoveredBlock98Step = 142 ifTrue: [
            recoveredBlock98PC := 143.
        ].
        recoveredBlock98Step = 143 ifTrue: [
            recoveredBlock98Stack1 := recoveredLocal10.
            recoveredBlock98PC := 146.
        ].
        recoveredBlock98Step = 146 ifTrue: [
            recoveredBlock98Stack2 := recoveredBlock98Local1.
            recoveredBlock98PC := 147.
        ].
        recoveredBlock98Step = 147 ifTrue: [
            (recoveredBlock98Stack1) add: (recoveredBlock98Stack2).
            recoveredBlock98PC := 149.
        ].
        recoveredBlock98Step = 149 ifTrue: [
            recoveredBlock98Stack1 := recoveredBlock98Local1.
            recoveredBlock98PC := 150.
        ].
        recoveredBlock98Step = 150 ifTrue: [
            recoveredBlock98Stack1 := (recoveredBlock98Stack1) releasedNamesAndTimeStamps.
            recoveredBlock98PC := 152.
        ].
        recoveredBlock98Step = 152 ifTrue: [
            recoveredBlock98Stack2 := [:recoveredBlock98Block152Arg1 | 
    | recoveredBlock98Block152Stack0 recoveredBlock98Block152Stack1 recoveredBlock98Block152Stack2 recoveredBlock98Block152Stack3 recoveredBlock98Block152Stack4 recoveredBlock98Block152Stack5 recoveredBlock98Block152PC recoveredBlock98Block152Step recoveredBlock98Block152Done recoveredBlock98Block152Result |
    recoveredBlock98Block152Stack0 := nil.
    recoveredBlock98Block152PC := 158.
    recoveredBlock98Block152Done := false.
    [recoveredBlock98Block152Done not] whileTrue: [
        recoveredBlock98Block152Step := recoveredBlock98Block152PC.
        recoveredBlock98Block152Step = 158 ifTrue: [
            recoveredBlock98Block152Stack1 := nil.
            recoveredBlock98Block152PC := 159.
        ].
        recoveredBlock98Block152Step = 159 ifTrue: [
            recoveredBlock98Block152Stack2 := recoveredArg6.
            recoveredBlock98Block152PC := 162.
        ].
        recoveredBlock98Block152Step = 162 ifTrue: [
            recoveredBlock98Block152Stack3 := recoveredBlock98Block152Arg1.
            recoveredBlock98Block152PC := 163.
        ].
        recoveredBlock98Block152Step = 163 ifTrue: [
            recoveredBlock98Block152Stack3 := (recoveredBlock98Block152Stack3) key.
            recoveredBlock98Block152PC := 165.
        ].
        recoveredBlock98Block152Step = 165 ifTrue: [
            recoveredBlock98Block152Stack4 := [
    #()
].
            recoveredBlock98Block152PC := 167.
        ].
        recoveredBlock98Block152Step = 167 ifTrue: [
            recoveredBlock98Block152PC := 173.
        ].
        recoveredBlock98Block152Step = 173 ifTrue: [
            recoveredBlock98Block152Stack2 := (recoveredBlock98Block152Stack2) at: (recoveredBlock98Block152Stack3) ifAbsent: (recoveredBlock98Block152Stack4).
            recoveredBlock98Block152PC := 175.
        ].
        recoveredBlock98Block152Step = 175 ifTrue: [
            recoveredBlock98Block152Stack3 := recoveredBlock98Block152Arg1.
            recoveredBlock98Block152PC := 176.
        ].
        recoveredBlock98Block152Step = 176 ifTrue: [
            recoveredBlock98Block152Stack3 := (recoveredBlock98Block152Stack3) value.
            recoveredBlock98Block152PC := 178.
        ].
        recoveredBlock98Block152Step = 178 ifTrue: [
            recoveredBlock98Block152Stack2 := (recoveredBlock98Block152Stack2) includes: (recoveredBlock98Block152Stack3).
            recoveredBlock98Block152PC := 180.
        ].
        recoveredBlock98Block152Step = 180 ifTrue: [
            (recoveredBlock98Block152Stack2) ifTrue: [recoveredBlock98Block152PC := 208] ifFalse: [recoveredBlock98Block152PC := 184].
        ].
        recoveredBlock98Block152Step = 184 ifTrue: [
            recoveredBlock98Block152PC := 185.
        ].
        recoveredBlock98Block152Step = 185 ifTrue: [
            recoveredBlock98Block152Stack1 := recoveredLocal9.
            recoveredBlock98Block152PC := 188.
        ].
        recoveredBlock98Block152Step = 188 ifTrue: [
            recoveredBlock98Block152Stack2 := recoveredBlock98Block152Arg1.
            recoveredBlock98Block152PC := 189.
        ].
        recoveredBlock98Block152Step = 189 ifTrue: [
            recoveredBlock98Block152Stack2 := (recoveredBlock98Block152Stack2) key.
            recoveredBlock98Block152PC := 191.
        ].
        recoveredBlock98Block152Step = 191 ifTrue: [
            recoveredBlock98Block152Stack3 := [
    | block28005be4Value0 block28005be4Value1 |
    block28005be4Value0 := Set.
    block28005be4Value1 := (block28005be4Value0) new.
    block28005be4Value1
].
            recoveredBlock98Block152PC := 193.
        ].
        recoveredBlock98Block152Step = 193 ifTrue: [
            recoveredBlock98Block152PC := 201.
        ].
        recoveredBlock98Block152Step = 201 ifTrue: [
            recoveredBlock98Block152Stack1 := (recoveredBlock98Block152Stack1) at: (recoveredBlock98Block152Stack2) ifAbsentPut: (recoveredBlock98Block152Stack3).
            recoveredBlock98Block152PC := 203.
        ].
        recoveredBlock98Block152Step = 203 ifTrue: [
            recoveredBlock98Block152Stack2 := recoveredBlock98Block152Arg1.
            recoveredBlock98Block152PC := 204.
        ].
        recoveredBlock98Block152Step = 204 ifTrue: [
            recoveredBlock98Block152Stack2 := (recoveredBlock98Block152Stack2) value.
            recoveredBlock98Block152PC := 206.
        ].
        recoveredBlock98Block152Step = 206 ifTrue: [
            recoveredBlock98Block152Stack1 := (recoveredBlock98Block152Stack1) add: (recoveredBlock98Block152Stack2).
            recoveredBlock98Block152PC := 208.
        ].
        recoveredBlock98Block152Step = 208 ifTrue: [
            recoveredBlock98Block152Result := recoveredBlock98Block152Stack1.
            recoveredBlock98Block152Done := true.
        ].
    ].
    recoveredBlock98Block152Result
].
            recoveredBlock98PC := 209.
        ].
        recoveredBlock98Step = 209 ifTrue: [
            (recoveredBlock98Stack1) associationsDo: (recoveredBlock98Stack2).
            recoveredBlock98PC := 211.
        ].
        recoveredBlock98Step = 211 ifTrue: [
            recoveredBlock98Stack1 := recoveredBlock98Local1.
            recoveredBlock98PC := 212.
        ].
        recoveredBlock98Step = 212 ifTrue: [
            recoveredBlock98Stack1 := (recoveredBlock98Stack1) groupMembers.
            recoveredBlock98PC := 214.
        ].
        recoveredBlock98Step = 214 ifTrue: [
            recoveredBlock98Stack2 := [:recoveredBlock98Block214Arg1 | 
    | recoveredBlock98Block214Local1 recoveredBlock98Block214Local2 recoveredBlock98Block214Stack0 recoveredBlock98Block214Stack1 recoveredBlock98Block214Stack2 recoveredBlock98Block214Stack3 recoveredBlock98Block214Stack4 recoveredBlock98Block214Stack5 recoveredBlock98Block214PC recoveredBlock98Block214Step recoveredBlock98Block214Done recoveredBlock98Block214Result |
    recoveredBlock98Block214Stack0 := self.
    recoveredBlock98Block214PC := 220.
    recoveredBlock98Block214Done := false.
    [recoveredBlock98Block214Done not] whileTrue: [
        recoveredBlock98Block214Step := recoveredBlock98Block214PC.
        recoveredBlock98Block214Step = 220 ifTrue: [
            recoveredBlock98Block214Stack1 := recoveredArg7.
            recoveredBlock98Block214PC := 223.
        ].
        recoveredBlock98Block214Step = 223 ifTrue: [
            recoveredBlock98Block214Stack2 := recoveredBlock98Block214Arg1.
            recoveredBlock98Block214PC := 226.
        ].
        recoveredBlock98Block214Step = 226 ifTrue: [
            recoveredBlock98Block214Stack3 := [
    'Supervisor'
].
            recoveredBlock98Block214PC := 228.
        ].
        recoveredBlock98Block214Step = 228 ifTrue: [
            recoveredBlock98Block214PC := 235.
        ].
        recoveredBlock98Block214Step = 235 ifTrue: [
            recoveredBlock98Block214Stack1 := (recoveredBlock98Block214Stack1) at: (recoveredBlock98Block214Stack2) ifAbsent: (recoveredBlock98Block214Stack3).
            recoveredBlock98Block214PC := 237.
        ].
        recoveredBlock98Block214Step = 237 ifTrue: [
            recoveredBlock98Block214Local2 := recoveredBlock98Block214Stack1.
            recoveredBlock98Block214PC := 240.
        ].
        recoveredBlock98Block214Step = 240 ifTrue: [
            recoveredBlock98Block214Stack1 := nil.
            recoveredBlock98Block214PC := 241.
        ].
        recoveredBlock98Block214Step = 241 ifTrue: [
            recoveredBlock98Block214Stack2 := self.
            recoveredBlock98Block214PC := 242.
        ].
        recoveredBlock98Block214Step = 242 ifTrue: [
            recoveredBlock98Block214Stack2 := (recoveredBlock98Block214Stack2) userClass.
            recoveredBlock98Block214PC := 244.
        ].
        recoveredBlock98Block214Step = 244 ifTrue: [
            recoveredBlock98Block214Stack3 := recoveredBlock98Block214Local2.
            recoveredBlock98Block214PC := 247.
        ].
        recoveredBlock98Block214Step = 247 ifTrue: [
            recoveredBlock98Block214Stack4 := [].
            recoveredBlock98Block214PC := 249.
        ].
        recoveredBlock98Block214Step = 249 ifTrue: [
            recoveredBlock98Block214Stack2 := (recoveredBlock98Block214Stack2) called: (recoveredBlock98Block214Stack3) ifAbsent: (recoveredBlock98Block214Stack4).
            recoveredBlock98Block214PC := 251.
        ].
        recoveredBlock98Block214Step = 251 ifTrue: [
            recoveredBlock98Block214Stack3 := recoveredBlock98Block214Stack2.
            recoveredBlock98Block214PC := 252.
        ].
        recoveredBlock98Block214Step = 252 ifTrue: [
            recoveredBlock98Block214Local1 := recoveredBlock98Block214Stack3.
            recoveredBlock98Block214PC := 255.
        ].
        recoveredBlock98Block214Step = 255 ifTrue: [
            (recoveredBlock98Block214Stack2 == nil) ifTrue: [recoveredBlock98Block214PC := 280] ifFalse: [recoveredBlock98Block214PC := 258].
        ].
        recoveredBlock98Block214Step = 258 ifTrue: [
            recoveredBlock98Block214PC := 259.
        ].
        recoveredBlock98Block214Step = 259 ifTrue: [
            recoveredBlock98Block214Stack1 := recoveredLocal8.
            recoveredBlock98Block214PC := 262.
        ].
        recoveredBlock98Block214Step = 262 ifTrue: [
            recoveredBlock98Block214Stack2 := recoveredBlock98Block214Local1.
            recoveredBlock98Block214PC := 265.
        ].
        recoveredBlock98Block214Step = 265 ifTrue: [
            recoveredBlock98Block214Stack3 := [
    | recoveredBlock98Block214Block265Value0 recoveredBlock98Block214Block265Value1 |
    recoveredBlock98Block214Block265Value0 := recoveredBlock98Block214Local1.
    recoveredBlock98Block214Block265Value1 := (recoveredBlock98Block214Block265Value0) record.
    recoveredBlock98Block214Block265Value1
].
            recoveredBlock98Block214PC := 278.
        ].
        recoveredBlock98Block214Step = 278 ifTrue: [
            recoveredBlock98Block214Stack1 := (recoveredBlock98Block214Stack1) at: (recoveredBlock98Block214Stack2) ifAbsentPut: (recoveredBlock98Block214Stack3).
            recoveredBlock98Block214PC := 280.
        ].
        recoveredBlock98Block214Step = 280 ifTrue: [
            recoveredBlock98Block214Result := recoveredBlock98Block214Stack1.
            recoveredBlock98Block214Done := true.
        ].
    ].
    recoveredBlock98Block214Result
].
            recoveredBlock98PC := 281.
        ].
        recoveredBlock98Step = 281 ifTrue: [
            recoveredBlock98Stack1 := (recoveredBlock98Stack1) do: (recoveredBlock98Stack2).
            recoveredBlock98PC := 283.
        ].
        recoveredBlock98Step = 283 ifTrue: [
            recoveredBlock98Result := recoveredBlock98Stack1.
            recoveredBlock98Done := true.
        ].
    ].
    recoveredBlock98Result
].
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            (recoveredStack0) forAllEntriesDo: (recoveredStack1).
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 294] ifFalse: [recoveredPC := 301].
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack0 := recoveredLocal11.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            (recoveredStack0) becomeDefault.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack0 := (recoveredStack0) classNamesDictionary.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack0 := (recoveredStack0) objectStoreDictionary.
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack0 := recoveredArg5.
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            (recoveredStack0) becomeDefault.
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredStack0 := (recoveredStack0) userClass.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack0 := (recoveredStack0) recordClass.
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            recoveredStack0 := (recoveredStack0) allUniqueAndFullNames.
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack1 := [:recoveredBlock335Arg1 | 
    | recoveredBlock335Stack0 recoveredBlock335Stack1 recoveredBlock335Stack2 recoveredBlock335Stack3 recoveredBlock335Stack4 recoveredBlock335Stack5 recoveredBlock335PC recoveredBlock335Step recoveredBlock335Done recoveredBlock335Result |
    recoveredBlock335Stack0 := self.
    recoveredBlock335PC := 342.
    recoveredBlock335Done := false.
    [recoveredBlock335Done not] whileTrue: [
        recoveredBlock335Step := recoveredBlock335PC.
        recoveredBlock335Step = 342 ifTrue: [
            recoveredBlock335Stack1 := nil.
            recoveredBlock335PC := 343.
        ].
        recoveredBlock335Step = 343 ifTrue: [
            recoveredBlock335Stack2 := recoveredLocal5.
            recoveredBlock335PC := 346.
        ].
        recoveredBlock335Step = 346 ifTrue: [
            recoveredBlock335Stack3 := recoveredBlock335Arg1.
            recoveredBlock335PC := 347.
        ].
        recoveredBlock335Step = 347 ifTrue: [
            recoveredBlock335Stack3 := (recoveredBlock335Stack3) key.
            recoveredBlock335PC := 349.
        ].
        recoveredBlock335Step = 349 ifTrue: [
            recoveredBlock335Stack3 := (recoveredBlock335Stack3) uniqueName.
            recoveredBlock335PC := 351.
        ].
        recoveredBlock335Step = 351 ifTrue: [
            recoveredBlock335Stack2 := (recoveredBlock335Stack2) includesKey: (recoveredBlock335Stack3).
            recoveredBlock335PC := 353.
        ].
        recoveredBlock335Step = 353 ifTrue: [
            (recoveredBlock335Stack2) ifTrue: [recoveredBlock335PC := 372] ifFalse: [recoveredBlock335PC := 356].
        ].
        recoveredBlock335Step = 356 ifTrue: [
            recoveredBlock335PC := 357.
        ].
        recoveredBlock335Step = 357 ifTrue: [
            recoveredBlock335Stack1 := self.
            recoveredBlock335PC := 358.
        ].
        recoveredBlock335Step = 358 ifTrue: [
            recoveredBlock335Stack1 := (recoveredBlock335Stack1) userClass.
            recoveredBlock335PC := 360.
        ].
        recoveredBlock335Step = 360 ifTrue: [
            recoveredBlock335Stack2 := recoveredBlock335Arg1.
            recoveredBlock335PC := 361.
        ].
        recoveredBlock335Step = 361 ifTrue: [
            recoveredBlock335Stack2 := (recoveredBlock335Stack2) key.
            recoveredBlock335PC := 363.
        ].
        recoveredBlock335Step = 363 ifTrue: [
            recoveredBlock335Stack3 := recoveredBlock335Arg1.
            recoveredBlock335PC := 364.
        ].
        recoveredBlock335Step = 364 ifTrue: [
            recoveredBlock335Stack3 := (recoveredBlock335Stack3) value.
            recoveredBlock335PC := 366.
        ].
        recoveredBlock335Step = 366 ifTrue: [
            recoveredBlock335Stack4 := recoveredArg5.
            recoveredBlock335PC := 369.
        ].
        recoveredBlock335Step = 369 ifTrue: [
            recoveredBlock335Stack1 := (recoveredBlock335Stack1) moveUser: (recoveredBlock335Stack2) in: (recoveredBlock335Stack3) to: (recoveredBlock335Stack4).
            recoveredBlock335PC := 372.
        ].
        recoveredBlock335Step = 372 ifTrue: [
            recoveredBlock335Result := recoveredBlock335Stack1.
            recoveredBlock335Done := true.
        ].
    ].
    recoveredBlock335Result
].
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            (recoveredStack0) associationsDo: (recoveredStack1).
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 376.
        ].
        recoveredStep = 376 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 379.
        ].
        recoveredStep = 379 ifTrue: [
            recoveredStack0 := (recoveredStack0) applicationClassFromFlag: (recoveredStack1).
            recoveredPC := 380.
        ].
        recoveredStep = 380 ifTrue: [
            recoveredStack0 := (recoveredStack0) shadowClass.
            recoveredPC := 382.
        ].
        recoveredStep = 382 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 385.
        ].
        recoveredStep = 385 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSymbol.
            recoveredPC := 387.
        ].
        recoveredStep = 387 ifTrue: [
            recoveredStack2 := EmTimeStamp.
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            recoveredStack2 := (recoveredStack2) undefined.
            recoveredPC := 391.
        ].
        recoveredStep = 391 ifTrue: [
            recoveredStack0 := (recoveredStack0) named: (recoveredStack1) timeStampWithVersionInfo: (recoveredStack2).
            recoveredPC := 393.
        ].
        recoveredStep = 393 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 396.
        ].
        recoveredStep = 396 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 399.
        ].
        recoveredStep = 399 ifTrue: [
            recoveredStack1 := [:recoveredBlock399Arg1 | 
    | recoveredBlock399Stack0 recoveredBlock399Stack1 recoveredBlock399Stack2 recoveredBlock399Stack3 recoveredBlock399PC recoveredBlock399Step recoveredBlock399Done recoveredBlock399Result |
    recoveredBlock399Stack0 := self.
    recoveredBlock399PC := 406.
    recoveredBlock399Done := false.
    [recoveredBlock399Done not] whileTrue: [
        recoveredBlock399Step := recoveredBlock399PC.
        recoveredBlock399Step = 406 ifTrue: [
            recoveredBlock399Stack1 := recoveredBlock399Arg1.
            recoveredBlock399PC := 407.
        ].
        recoveredBlock399Step = 407 ifTrue: [
            recoveredBlock399Stack1 := (recoveredBlock399Stack1) classNamesDictionary.
            recoveredBlock399PC := 409.
        ].
        recoveredBlock399Step = 409 ifTrue: [
            recoveredLocal3 := recoveredBlock399Stack1.
            recoveredBlock399PC := 412.
        ].
        recoveredBlock399Step = 412 ifTrue: [
            recoveredBlock399Stack1 := nil.
            recoveredBlock399PC := 413.
        ].
        recoveredBlock399Step = 413 ifTrue: [
            recoveredBlock399Stack2 := recoveredBlock399Arg1.
            recoveredBlock399PC := 414.
        ].
        recoveredBlock399Step = 414 ifTrue: [
            recoveredBlock399Stack2 := (recoveredBlock399Stack2) existsInLibrary.
            recoveredBlock399PC := 416.
        ].
        recoveredBlock399Step = 416 ifTrue: [
            (recoveredBlock399Stack2) ifTrue: [recoveredBlock399PC := 429] ifFalse: [recoveredBlock399PC := 420].
        ].
        recoveredBlock399Step = 420 ifTrue: [
            recoveredBlock399PC := 421.
        ].
        recoveredBlock399Step = 421 ifTrue: [
            recoveredBlock399Stack1 := recoveredBlock399Arg1.
            recoveredBlock399PC := 422.
        ].
        recoveredBlock399Step = 422 ifTrue: [
            recoveredBlock399Stack2 := recoveredLocal7.
            recoveredBlock399PC := 425.
        ].
        recoveredBlock399Step = 425 ifTrue: [
            recoveredBlock399Stack2 := (recoveredBlock399Stack2) usedLength.
            recoveredBlock399PC := 427.
        ].
        recoveredBlock399Step = 427 ifTrue: [
            recoveredBlock399Stack1 := (recoveredBlock399Stack1) initialClassNamesSize: (recoveredBlock399Stack2).
            recoveredBlock399PC := 429.
        ].
        recoveredBlock399Step = 429 ifTrue: [
            recoveredBlock399Result := recoveredBlock399Stack1.
            recoveredBlock399Done := true.
        ].
    ].
    recoveredBlock399Result
].
            recoveredPC := 430.
        ].
        recoveredStep = 430 ifTrue: [
            (recoveredStack0) updateLibrary: (recoveredStack1).
            recoveredPC := 432.
        ].
        recoveredStep = 432 ifTrue: [
            recoveredStack0 := Association.
            recoveredPC := 434.
        ].
        recoveredStep = 434 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 436.
        ].
        recoveredStep = 436 ifTrue: [
            recoveredStack2 := #().
            recoveredPC := 438.
        ].
        recoveredStep = 438 ifTrue: [
            recoveredStack0 := (recoveredStack0) key: (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 443.
        ].
        recoveredStep = 443 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 446.
        ].
        recoveredStep = 446 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 449.
        ].
        recoveredStep = 449 ifTrue: [
            recoveredStack1 := [:recoveredBlock449Arg1 | 
    | recoveredBlock449Value0 recoveredBlock449Value1 recoveredBlock449Value2 recoveredBlock449Value3 recoveredBlock449Value4 recoveredBlock449Value5 recoveredBlock449Value6 recoveredBlock449Value7 recoveredBlock449Value8 recoveredBlock449Value9 recoveredBlock449Value10 recoveredBlock449Value11 recoveredBlock449Value12 recoveredBlock449Value13 recoveredBlock449Value14 recoveredBlock449Value15 recoveredBlock449Value16 recoveredBlock449Value17 recoveredBlock449Value18 recoveredBlock449Value19 |
    recoveredBlock449Value0 := recoveredLocal4.
    recoveredBlock449Value1 := recoveredBlock449Arg1.
    recoveredBlock449Value2 := (recoveredBlock449Value1) key.
    recoveredBlock449Value3 := recoveredBlock449Arg1.
    recoveredBlock449Value4 := (recoveredBlock449Value3) value.
    recoveredBlock449Value5 := recoveredArg4.
    recoveredBlock449Value6 := recoveredArg5.
    recoveredBlock449Value7 := recoveredLocal7.
    recoveredBlock449Value8 := recoveredLocal3.
    recoveredBlock449Value9 := recoveredArg8.
    recoveredBlock449Value10 := recoveredBlock449Arg1.
    recoveredBlock449Value11 := (recoveredBlock449Value10) key.
    recoveredBlock449Value12 := [
    | recoveredBlock449Block483Value0 |
    recoveredBlock449Block483Value0 := recoveredLocal2.
    recoveredBlock449Block483Value0
].
    recoveredBlock449Value13 := (recoveredBlock449Value9) at: (recoveredBlock449Value11) ifAbsent: (recoveredBlock449Value12).
    recoveredBlock449Value14 := recoveredArg9.
    recoveredBlock449Value15 := recoveredBlock449Arg1.
    recoveredBlock449Value16 := (recoveredBlock449Value15) key.
    recoveredBlock449Value17 := [
    | recoveredBlock449Block502Value0 |
    recoveredBlock449Block502Value0 := recoveredLocal2.
    recoveredBlock449Block502Value0
].
    recoveredBlock449Value18 := (recoveredBlock449Value14) at: (recoveredBlock449Value16) ifAbsent: (recoveredBlock449Value17).
    recoveredBlock449Value19 := (recoveredBlock449Value0) moveAllClassVersionsOf: (recoveredBlock449Value2) in: (recoveredBlock449Value4) from: (recoveredBlock449Value5) to: (recoveredBlock449Value6) using: (recoveredBlock449Value7) and: (recoveredBlock449Value8) removeSourceFrom: (recoveredBlock449Value13) removeCommentsFrom: (recoveredBlock449Value18).
    recoveredBlock449Value19
].
            recoveredPC := 520.
        ].
        recoveredStep = 520 ifTrue: [
            (recoveredStack0) associationsDo: (recoveredStack1).
            recoveredPC := 522.
        ].
        recoveredStep = 522 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 525.
        ].
        recoveredStep = 525 ifTrue: [
            recoveredStack1 := [:recoveredBlock525Arg1 | 
    | recoveredBlock525Stack0 recoveredBlock525Stack1 recoveredBlock525Stack2 recoveredBlock525Stack3 recoveredBlock525Stack4 recoveredBlock525PC recoveredBlock525Step recoveredBlock525Done recoveredBlock525Result |
    recoveredBlock525Stack0 := self.
    recoveredBlock525PC := 532.
    recoveredBlock525Done := false.
    [recoveredBlock525Done not] whileTrue: [
        recoveredBlock525Step := recoveredBlock525PC.
        recoveredBlock525Step = 532 ifTrue: [
            recoveredBlock525Stack1 := recoveredArg10.
            recoveredBlock525PC := 535.
        ].
        recoveredBlock525Step = 535 ifTrue: [
            (recoveredBlock525Stack1) ifTrue: [recoveredBlock525PC := 555] ifFalse: [recoveredBlock525PC := 538].
        ].
        recoveredBlock525Step = 538 ifTrue: [
            recoveredBlock525Stack1 := recoveredLocal6.
            recoveredBlock525PC := 541.
        ].
        recoveredBlock525Step = 541 ifTrue: [
            recoveredBlock525Stack1 := (recoveredBlock525Stack1) isEmpty.
            recoveredBlock525PC := 543.
        ].
        recoveredBlock525Step = 543 ifTrue: [
            (recoveredBlock525Stack1) ifTrue: [recoveredBlock525PC := 555] ifFalse: [recoveredBlock525PC := 546].
        ].
        recoveredBlock525Step = 546 ifTrue: [
            recoveredBlock525Stack1 := recoveredBlock525Arg1.
            recoveredBlock525PC := 547.
        ].
        recoveredBlock525Step = 547 ifTrue: [
            recoveredBlock525Stack2 := recoveredLocal6.
            recoveredBlock525PC := 550.
        ].
        recoveredBlock525Step = 550 ifTrue: [
            (recoveredBlock525Stack1) mergeStoredObjectsWith: (recoveredBlock525Stack2).
            recoveredBlock525PC := 555.
        ].
        recoveredBlock525Step = 555 ifTrue: [
            recoveredBlock525Stack1 := recoveredBlock525Arg1.
            recoveredBlock525PC := 556.
        ].
        recoveredBlock525Step = 556 ifTrue: [
            recoveredBlock525Stack2 := recoveredLocal10.
            recoveredBlock525PC := 559.
        ].
        recoveredBlock525Step = 559 ifTrue: [
            recoveredBlock525Stack3 := recoveredArg7.
            recoveredBlock525PC := 562.
        ].
        recoveredBlock525Step = 562 ifTrue: [
            recoveredBlock525Stack1 := (recoveredBlock525Stack1) addEditionRecords: (recoveredBlock525Stack2) mapping: (recoveredBlock525Stack3).
            recoveredBlock525PC := 567.
        ].
        recoveredBlock525Step = 567 ifTrue: [
            recoveredBlock525Result := recoveredBlock525Stack1.
            recoveredBlock525Done := true.
        ].
    ].
    recoveredBlock525Result
].
            recoveredPC := 568.
        ].
        recoveredStep = 568 ifTrue: [
            (recoveredStack0) updateParts: (recoveredStack1).
            recoveredPC := 573.
        ].
        recoveredStep = 573 ifTrue: [
            recoveredStack0 := recoveredLocal11.
            recoveredPC := 576.
        ].
        recoveredStep = 576 ifTrue: [
            (recoveredStack0) becomeDefault.
            recoveredPC := 578.
        ].
        recoveredStep = 578 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 579.
        ].
        recoveredStep = 579 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20033ad0; bytecode file offset 0x6fc04"
!EmStandardAccessor methodsFor: 'recovered'!
moveConfigMap: recoveredArg1 from: recoveredArg2 to: recoveredArg3 withApps: recoveredArg4 skipAppsIn: recoveredArg5 skipSubAppsIn: recoveredArg6 options: recoveredArg7
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isVersion.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := EmImageSupport.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorReporter.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := 71.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := Array.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack4 := (recoveredStack4) signature.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack5 := recoveredArg3.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack5 := (recoveredStack5) fullName.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) logError: (recoveredStack2) withParms: (recoveredStack3).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) libraryClass.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0 == recoveredStack1) ifTrue: [recoveredPC := 55] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) becomeDefault.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := recoveredArg7.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := 'forgetLocalFields'.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) modifiableRecordClass.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) forgettableLocalFields.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack0) forgettableLocalFields: (recoveredStack1).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredPC := 87.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) modifiableRecordClass.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack0) forgettableLocalFields: (recoveredStack1).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := Dictionary.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredLocal10 := recoveredStack0.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) userClass.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := (recoveredStack0) allUsers.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := [:recoveredBlock99Arg1 | 
    | recoveredBlock99Value0 recoveredBlock99Value1 recoveredBlock99Value2 recoveredBlock99Value3 recoveredBlock99Value4 recoveredBlock99Value5 |
    recoveredBlock99Value0 := recoveredLocal10.
    recoveredBlock99Value1 := recoveredBlock99Arg1.
    recoveredBlock99Value2 := (recoveredBlock99Value1) uniqueName.
    recoveredBlock99Value3 := recoveredBlock99Arg1.
    recoveredBlock99Value4 := (recoveredBlock99Value3) uniqueName.
    recoveredBlock99Value5 := (recoveredBlock99Value0) at: (recoveredBlock99Value2) put: (recoveredBlock99Value4).
    recoveredBlock99Value5
].
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := recoveredArg7.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := 'mapUsers'.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 130] ifFalse: [recoveredPC := 181].
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := (recoveredStack0) userMapping.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := [:recoveredBlock135Arg1 | 
    | recoveredBlock135Stack0 recoveredBlock135Stack1 recoveredBlock135Stack2 recoveredBlock135Stack3 recoveredBlock135Stack4 recoveredBlock135PC recoveredBlock135Step recoveredBlock135Done recoveredBlock135Result |
    recoveredBlock135Stack0 := self.
    recoveredBlock135PC := 142.
    recoveredBlock135Done := false.
    [recoveredBlock135Done not] whileTrue: [
        recoveredBlock135Step := recoveredBlock135PC.
        recoveredBlock135Step = 142 ifTrue: [
            recoveredBlock135Stack1 := nil.
            recoveredBlock135PC := 143.
        ].
        recoveredBlock135Step = 143 ifTrue: [
            recoveredBlock135Stack2 := recoveredLocal10.
            recoveredBlock135PC := 146.
        ].
        recoveredBlock135Step = 146 ifTrue: [
            recoveredBlock135Stack3 := recoveredBlock135Arg1.
            recoveredBlock135PC := 147.
        ].
        recoveredBlock135Step = 147 ifTrue: [
            recoveredBlock135Stack3 := (recoveredBlock135Stack3) key.
            recoveredBlock135PC := 149.
        ].
        recoveredBlock135Step = 149 ifTrue: [
            recoveredBlock135Stack2 := (recoveredBlock135Stack2) includesKey: (recoveredBlock135Stack3).
            recoveredBlock135PC := 151.
        ].
        recoveredBlock135Step = 151 ifTrue: [
            (recoveredBlock135Stack2) ifTrue: [recoveredBlock135PC := 154] ifFalse: [recoveredBlock135PC := 178].
        ].
        recoveredBlock135Step = 154 ifTrue: [
            recoveredBlock135Stack2 := recoveredLocal10.
            recoveredBlock135PC := 157.
        ].
        recoveredBlock135Step = 157 ifTrue: [
            recoveredBlock135Stack3 := recoveredBlock135Arg1.
            recoveredBlock135PC := 158.
        ].
        recoveredBlock135Step = 158 ifTrue: [
            recoveredBlock135Stack3 := (recoveredBlock135Stack3) value.
            recoveredBlock135PC := 160.
        ].
        recoveredBlock135Step = 160 ifTrue: [
            recoveredBlock135Stack2 := (recoveredBlock135Stack2) includesKey: (recoveredBlock135Stack3).
            recoveredBlock135PC := 162.
        ].
        recoveredBlock135Step = 162 ifTrue: [
            (recoveredBlock135Stack2) ifTrue: [recoveredBlock135PC := 166] ifFalse: [recoveredBlock135PC := 178].
        ].
        recoveredBlock135Step = 166 ifTrue: [
            recoveredBlock135PC := 167.
        ].
        recoveredBlock135Step = 167 ifTrue: [
            recoveredBlock135Stack1 := recoveredLocal10.
            recoveredBlock135PC := 170.
        ].
        recoveredBlock135Step = 170 ifTrue: [
            recoveredBlock135Stack2 := recoveredBlock135Arg1.
            recoveredBlock135PC := 171.
        ].
        recoveredBlock135Step = 171 ifTrue: [
            recoveredBlock135Stack2 := (recoveredBlock135Stack2) key.
            recoveredBlock135PC := 173.
        ].
        recoveredBlock135Step = 173 ifTrue: [
            recoveredBlock135Stack3 := recoveredBlock135Arg1.
            recoveredBlock135PC := 174.
        ].
        recoveredBlock135Step = 174 ifTrue: [
            recoveredBlock135Stack3 := (recoveredBlock135Stack3) value.
            recoveredBlock135PC := 176.
        ].
        recoveredBlock135Step = 176 ifTrue: [
            recoveredBlock135Stack1 := (recoveredBlock135Stack1) at: (recoveredBlock135Stack2) put: (recoveredBlock135Stack3).
            recoveredBlock135PC := 178.
        ].
        recoveredBlock135Step = 178 ifTrue: [
            recoveredBlock135Result := recoveredBlock135Stack1.
            recoveredBlock135Done := true.
        ].
    ].
    recoveredBlock135Result
].
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            (recoveredStack0) associationsDo: (recoveredStack1).
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack0 := (recoveredStack0) configurationRecord.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack1 := (recoveredStack1) manager.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack2 := [
    'Supervisor'
].
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack0 := (recoveredStack0) userClass.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack0 := (recoveredStack0) called: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 236] ifFalse: [recoveredPC := 228].
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack0 := (recoveredStack0) record.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 246] ifFalse: [recoveredPC := 479].
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack0 := (recoveredStack0) shadowApplications.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack2 := [:block28005d4cArg1 :block28005d4cArg2 | 
    | block28005d4cValue0 block28005d4cValue1 block28005d4cValue2 block28005d4cValue3 block28005d4cValue4 |
    block28005d4cValue0 := block28005d4cArg1.
    block28005d4cValue1 := block28005d4cArg2.
    block28005d4cValue2 := (block28005d4cValue1) withAllPossibleSubApplications.
    block28005d4cValue3 := (block28005d4cValue2) size.
    block28005d4cValue4 := (block28005d4cValue0) + (block28005d4cValue3).
    block28005d4cValue4
].
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack0 := (recoveredStack0) inject: (recoveredStack1) into: (recoveredStack2).
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceClass.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack0 := (recoveredStack0) current.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack1 := (Fraction) numerator: (1) denominator: (100).
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            (recoveredStack0) fractionComplete: (recoveredStack1).
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack1 := [:recoveredBlock294Arg1 | 
    | recoveredBlock294Value0 recoveredBlock294Value1 recoveredBlock294Value2 recoveredBlock294Value3 |
    recoveredBlock294Value0 := recoveredBlock294Arg1.
    recoveredBlock294Value1 := (recoveredBlock294Value0) withAllPossibleSubApplications.
    recoveredBlock294Value2 := [:recoveredBlock294Block305Arg1 | 
    | recoveredBlock294Block305Stack0 recoveredBlock294Block305Stack1 recoveredBlock294Block305Stack2 recoveredBlock294Block305Stack3 recoveredBlock294Block305Stack4 recoveredBlock294Block305Stack5 recoveredBlock294Block305Stack6 recoveredBlock294Block305Stack7 recoveredBlock294Block305Stack8 recoveredBlock294Block305Stack9 recoveredBlock294Block305Stack10 recoveredBlock294Block305PC recoveredBlock294Block305Step recoveredBlock294Block305Done recoveredBlock294Block305Result |
    recoveredBlock294Block305Stack0 := self.
    recoveredBlock294Block305PC := 312.
    recoveredBlock294Block305Done := false.
    [recoveredBlock294Block305Done not] whileTrue: [
        recoveredBlock294Block305Step := recoveredBlock294Block305PC.
        recoveredBlock294Block305Step = 312 ifTrue: [
            recoveredBlock294Block305Stack1 := recoveredLocal1.
            recoveredBlock294Block305PC := 315.
        ].
        recoveredBlock294Block305Step = 315 ifTrue: [
            recoveredBlock294Block305Stack1 := (recoveredBlock294Block305Stack1) + (1).
            recoveredBlock294Block305PC := 316.
        ].
        recoveredBlock294Block305Step = 316 ifTrue: [
            recoveredLocal1 := recoveredBlock294Block305Stack1.
            recoveredBlock294Block305PC := 319.
        ].
        recoveredBlock294Block305Step = 319 ifTrue: [
            recoveredBlock294Block305Stack1 := recoveredBlock294Block305Arg1.
            recoveredBlock294Block305PC := 320.
        ].
        recoveredBlock294Block305Step = 320 ifTrue: [
            recoveredBlock294Block305Stack1 := (recoveredBlock294Block305Stack1) existsInLibrary.
            recoveredBlock294Block305PC := 322.
        ].
        recoveredBlock294Block305Step = 322 ifTrue: [
            (recoveredBlock294Block305Stack1) ifTrue: [recoveredBlock294Block305PC := 326] ifFalse: [recoveredBlock294Block305PC := 444].
        ].
        recoveredBlock294Block305Step = 326 ifTrue: [
            recoveredBlock294Block305Stack1 := recoveredBlock294Arg1.
            recoveredBlock294Block305PC := 329.
        ].
        recoveredBlock294Block305Step = 329 ifTrue: [
            recoveredBlock294Block305Stack2 := recoveredBlock294Block305Arg1.
            recoveredBlock294Block305PC := 330.
        ].
        recoveredBlock294Block305Step = 330 ifTrue: [
            (recoveredBlock294Block305Stack1 ~~ recoveredBlock294Block305Stack2) ifTrue: [recoveredBlock294Block305PC := 340] ifFalse: [recoveredBlock294Block305PC := 334].
        ].
        recoveredBlock294Block305Step = 334 ifTrue: [
            recoveredBlock294Block305Stack1 := recoveredArg5.
            recoveredBlock294Block305PC := 337.
        ].
        recoveredBlock294Block305Step = 337 ifTrue: [
            recoveredBlock294Block305PC := 343.
        ].
        recoveredBlock294Block305Step = 340 ifTrue: [
            recoveredBlock294Block305Stack1 := recoveredArg6.
            recoveredBlock294Block305PC := 343.
        ].
        recoveredBlock294Block305Step = 343 ifTrue: [
            recoveredBlock294Block305Stack2 := recoveredBlock294Arg1.
            recoveredBlock294Block305PC := 346.
        ].
        recoveredBlock294Block305Step = 346 ifTrue: [
            recoveredBlock294Block305Stack2 := (recoveredBlock294Block305Stack2) symbol.
            recoveredBlock294Block305PC := 348.
        ].
        recoveredBlock294Block305Step = 348 ifTrue: [
            recoveredBlock294Block305Stack3 := [
    #()
].
            recoveredBlock294Block305PC := 350.
        ].
        recoveredBlock294Block305Step = 350 ifTrue: [
            recoveredBlock294Block305PC := 357.
        ].
        recoveredBlock294Block305Step = 357 ifTrue: [
            recoveredBlock294Block305Stack1 := (recoveredBlock294Block305Stack1) at: (recoveredBlock294Block305Stack2) ifAbsent: (recoveredBlock294Block305Stack3).
            recoveredBlock294Block305PC := 359.
        ].
        recoveredBlock294Block305Step = 359 ifTrue: [
            recoveredLocal4 := recoveredBlock294Block305Stack1.
            recoveredBlock294Block305PC := 362.
        ].
        recoveredBlock294Block305Step = 362 ifTrue: [
            recoveredBlock294Block305Stack1 := recoveredLocal4.
            recoveredBlock294Block305PC := 365.
        ].
        recoveredBlock294Block305Step = 365 ifTrue: [
            recoveredBlock294Block305Stack2 := recoveredBlock294Block305Arg1.
            recoveredBlock294Block305PC := 366.
        ].
        recoveredBlock294Block305Step = 366 ifTrue: [
            recoveredBlock294Block305Stack2 := (recoveredBlock294Block305Stack2) timeStamp.
            recoveredBlock294Block305PC := 368.
        ].
        recoveredBlock294Block305Step = 368 ifTrue: [
            recoveredBlock294Block305Stack1 := (recoveredBlock294Block305Stack1) includes: (recoveredBlock294Block305Stack2).
            recoveredBlock294Block305PC := 370.
        ].
        recoveredBlock294Block305Step = 370 ifTrue: [
            (recoveredBlock294Block305Stack1) ifTrue: [recoveredBlock294Block305PC := 444] ifFalse: [recoveredBlock294Block305PC := 374].
        ].
        recoveredBlock294Block305Step = 374 ifTrue: [
            recoveredBlock294Block305Stack1 := recoveredArg7.
            recoveredBlock294Block305PC := 377.
        ].
        recoveredBlock294Block305Step = 377 ifTrue: [
            recoveredBlock294Block305Stack2 := 'logProgress'.
            recoveredBlock294Block305PC := 379.
        ].
        recoveredBlock294Block305Step = 379 ifTrue: [
            recoveredBlock294Block305Stack1 := (recoveredBlock294Block305Stack1) includes: (recoveredBlock294Block305Stack2).
            recoveredBlock294Block305PC := 381.
        ].
        recoveredBlock294Block305Step = 381 ifTrue: [
            (recoveredBlock294Block305Stack1) ifTrue: [recoveredBlock294Block305PC := 384] ifFalse: [recoveredBlock294Block305PC := 399].
        ].
        recoveredBlock294Block305Step = 384 ifTrue: [
            recoveredBlock294Block305Stack1 := EmImageSupport.
            recoveredBlock294Block305PC := 386.
        ].
        recoveredBlock294Block305Step = 386 ifTrue: [
            recoveredBlock294Block305Stack1 := (recoveredBlock294Block305Stack1) errorReporter.
            recoveredBlock294Block305PC := 387.
        ].
        recoveredBlock294Block305Step = 387 ifTrue: [
            recoveredBlock294Block305Stack2 := 107.
            recoveredBlock294Block305PC := 390.
        ].
        recoveredBlock294Block305Step = 390 ifTrue: [
            recoveredBlock294Block305Stack3 := Array.
            recoveredBlock294Block305PC := 392.
        ].
        recoveredBlock294Block305Step = 392 ifTrue: [
            recoveredBlock294Block305Stack4 := recoveredBlock294Block305Arg1.
            recoveredBlock294Block305PC := 393.
        ].
        recoveredBlock294Block305Step = 393 ifTrue: [
            recoveredBlock294Block305Stack4 := (recoveredBlock294Block305Stack4) signature.
            recoveredBlock294Block305PC := 395.
        ].
        recoveredBlock294Block305Step = 395 ifTrue: [
            recoveredBlock294Block305Stack3 := (recoveredBlock294Block305Stack3) with: (recoveredBlock294Block305Stack4).
            recoveredBlock294Block305PC := 397.
        ].
        recoveredBlock294Block305Step = 397 ifTrue: [
            (recoveredBlock294Block305Stack1) logError: (recoveredBlock294Block305Stack2) withParms: (recoveredBlock294Block305Stack3).
            recoveredBlock294Block305PC := 399.
        ].
        recoveredBlock294Block305Step = 399 ifTrue: [
            recoveredBlock294Block305Stack1 := recoveredLocal5.
            recoveredBlock294Block305PC := 402.
        ].
        recoveredBlock294Block305Step = 402 ifTrue: [
            recoveredBlock294Block305Stack2 := recoveredBlock294Block305Arg1.
            recoveredBlock294Block305PC := 403.
        ].
        recoveredBlock294Block305Step = 403 ifTrue: [
            recoveredBlock294Block305Stack3 := recoveredArg2.
            recoveredBlock294Block305PC := 406.
        ].
        recoveredBlock294Block305Step = 406 ifTrue: [
            recoveredBlock294Block305Stack4 := recoveredArg3.
            recoveredBlock294Block305PC := 409.
        ].
        recoveredBlock294Block305Step = 409 ifTrue: [
            recoveredBlock294Block305Stack5 := recoveredLocal10.
            recoveredBlock294Block305PC := 412.
        ].
        recoveredBlock294Block305Step = 412 ifTrue: [
            recoveredBlock294Block305Stack6 := recoveredArg7.
            recoveredBlock294Block305PC := 415.
        ].
        recoveredBlock294Block305Step = 415 ifTrue: [
            recoveredBlock294Block305Stack7 := 'removeSource'.
            recoveredBlock294Block305PC := 417.
        ].
        recoveredBlock294Block305Step = 417 ifTrue: [
            recoveredBlock294Block305Stack6 := (recoveredBlock294Block305Stack6) includes: (recoveredBlock294Block305Stack7).
            recoveredBlock294Block305PC := 419.
        ].
        recoveredBlock294Block305Step = 419 ifTrue: [
            recoveredBlock294Block305Stack7 := recoveredArg7.
            recoveredBlock294Block305PC := 422.
        ].
        recoveredBlock294Block305Step = 422 ifTrue: [
            recoveredBlock294Block305Stack8 := 'removeComments'.
            recoveredBlock294Block305PC := 424.
        ].
        recoveredBlock294Block305Step = 424 ifTrue: [
            recoveredBlock294Block305Stack7 := (recoveredBlock294Block305Stack7) includes: (recoveredBlock294Block305Stack8).
            recoveredBlock294Block305PC := 426.
        ].
        recoveredBlock294Block305Step = 426 ifTrue: [
            recoveredBlock294Block305Stack8 := recoveredArg7.
            recoveredBlock294Block305PC := 429.
        ].
        recoveredBlock294Block305Step = 429 ifTrue: [
            recoveredBlock294Block305Stack9 := 'forgetStoredObjects'.
            recoveredBlock294Block305PC := 431.
        ].
        recoveredBlock294Block305Step = 431 ifTrue: [
            recoveredBlock294Block305Stack8 := (recoveredBlock294Block305Stack8) includes: (recoveredBlock294Block305Stack9).
            recoveredBlock294Block305PC := 433.
        ].
        recoveredBlock294Block305Step = 433 ifTrue: [
            recoveredBlock294Block305Stack2 := (recoveredBlock294Block305Stack2) moveFrom: (recoveredBlock294Block305Stack3) to: (recoveredBlock294Block305Stack4) mapping: (recoveredBlock294Block305Stack5) removeSource: (recoveredBlock294Block305Stack6) removeComments: (recoveredBlock294Block305Stack7) forgetStoredObjects: (recoveredBlock294Block305Stack8).
            recoveredBlock294Block305PC := 436.
        ].
        recoveredBlock294Block305Step = 436 ifTrue: [
            recoveredBlock294Block305Stack1 := (recoveredBlock294Block305Stack1) & (recoveredBlock294Block305Stack2).
            recoveredBlock294Block305PC := 441.
        ].
        recoveredBlock294Block305Step = 441 ifTrue: [
            recoveredLocal5 := recoveredBlock294Block305Stack1.
            recoveredBlock294Block305PC := 444.
        ].
        recoveredBlock294Block305Step = 444 ifTrue: [
            recoveredBlock294Block305Stack0 := (recoveredBlock294Block305Stack0) interfaceClass.
            recoveredBlock294Block305PC := 446.
        ].
        recoveredBlock294Block305Step = 446 ifTrue: [
            recoveredBlock294Block305Stack0 := (recoveredBlock294Block305Stack0) current.
            recoveredBlock294Block305PC := 448.
        ].
        recoveredBlock294Block305Step = 448 ifTrue: [
            recoveredBlock294Block305Stack1 := recoveredLocal1.
            recoveredBlock294Block305PC := 451.
        ].
        recoveredBlock294Block305Step = 451 ifTrue: [
            recoveredBlock294Block305Stack2 := recoveredLocal2.
            recoveredBlock294Block305PC := 454.
        ].
        recoveredBlock294Block305Step = 454 ifTrue: [
            recoveredBlock294Block305Stack1 := (recoveredBlock294Block305Stack1) / (recoveredBlock294Block305Stack2).
            recoveredBlock294Block305PC := 459.
        ].
        recoveredBlock294Block305Step = 459 ifTrue: [
            recoveredBlock294Block305Stack0 := (recoveredBlock294Block305Stack0) fractionComplete: (recoveredBlock294Block305Stack1).
            recoveredBlock294Block305PC := 461.
        ].
        recoveredBlock294Block305Step = 461 ifTrue: [
            recoveredBlock294Block305Result := recoveredBlock294Block305Stack0.
            recoveredBlock294Block305Done := true.
        ].
    ].
    recoveredBlock294Block305Result
].
    recoveredBlock294Value3 := (recoveredBlock294Value1) do: (recoveredBlock294Value2).
    recoveredBlock294Value3
].
            recoveredPC := 465.
        ].
        recoveredStep = 465 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 467.
        ].
        recoveredStep = 467 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 468.
        ].
        recoveredStep = 468 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 469.
        ].
        recoveredStep = 469 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 472.
        ].
        recoveredStep = 472 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 473.
        ].
        recoveredStep = 473 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 476.
        ].
        recoveredStep = 476 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 479.
        ].
        recoveredStep = 479 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 482.
        ].
        recoveredStep = 482 ifTrue: [
            (recoveredStack0) becomeDefault.
            recoveredPC := 484.
        ].
        recoveredStep = 484 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 487.
        ].
        recoveredStep = 487 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 523] ifFalse: [recoveredPC := 490].
        ].
        recoveredStep = 490 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 491.
        ].
        recoveredStep = 491 ifTrue: [
            recoveredStack0 := (recoveredStack0) userClass.
            recoveredPC := 493.
        ].
        recoveredStep = 493 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 496.
        ].
        recoveredStep = 496 ifTrue: [
            recoveredStack1 := (recoveredStack1) uniqueName.
            recoveredPC := 498.
        ].
        recoveredStep = 498 ifTrue: [
            recoveredStack0 := (recoveredStack0) exists: (recoveredStack1).
            recoveredPC := 503.
        ].
        recoveredStep = 503 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 523] ifFalse: [recoveredPC := 506].
        ].
        recoveredStep = 506 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 507.
        ].
        recoveredStep = 507 ifTrue: [
            recoveredStack0 := (recoveredStack0) userClass.
            recoveredPC := 509.
        ].
        recoveredStep = 509 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 512.
        ].
        recoveredStep = 512 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 515.
        ].
        recoveredStep = 515 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 518.
        ].
        recoveredStep = 518 ifTrue: [
            (recoveredStack0) moveUser: (recoveredStack1) in: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 523.
        ].
        recoveredStep = 523 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 526.
        ].
        recoveredStep = 526 ifTrue: [
            recoveredStack1 := [:recoveredBlock526Arg1 | 
    | recoveredBlock526Value0 recoveredBlock526Value1 recoveredBlock526Value2 recoveredBlock526Value3 |
    recoveredBlock526Value0 := recoveredBlock526Arg1.
    recoveredBlock526Value1 := recoveredLocal6.
    recoveredBlock526Value2 := recoveredLocal10.
    recoveredBlock526Value3 := (recoveredBlock526Value0) mergeWith: (recoveredBlock526Value1) mapping: (recoveredBlock526Value2).
    recoveredBlock526Value3
].
            recoveredPC := 544.
        ].
        recoveredStep = 544 ifTrue: [
            (recoveredStack0) relocateRecordWith: (recoveredStack1).
            recoveredPC := 549.
        ].
        recoveredStep = 549 ifTrue: [
            recoveredStack0 := recoveredArg7.
            recoveredPC := 552.
        ].
        recoveredStep = 552 ifTrue: [
            recoveredStack1 := 'mapUsers'.
            recoveredPC := 554.
        ].
        recoveredStep = 554 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 556.
        ].
        recoveredStep = 556 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 560] ifFalse: [recoveredPC := 571].
        ].
        recoveredStep = 560 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 563.
        ].
        recoveredStep = 563 ifTrue: [
            recoveredStack1 := 'userMapping'.
            recoveredPC := 566.
        ].
        recoveredStep = 566 ifTrue: [
            (recoveredStack0) deleteInheritedUserFieldAt: (recoveredStack1).
            recoveredPC := 571.
        ].
        recoveredStep = 571 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 572.
        ].
        recoveredStep = 572 ifTrue: [
            recoveredStack0 := (recoveredStack0) modifiableRecordClass.
            recoveredPC := 574.
        ].
        recoveredStep = 574 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 576.
        ].
        recoveredStep = 576 ifTrue: [
            (recoveredStack0) forgettableLocalFields: (recoveredStack1).
            recoveredPC := 578.
        ].
        recoveredStep = 578 ifTrue: [
            recoveredStack0 := recoveredLocal11.
            recoveredPC := 581.
        ].
        recoveredStep = 581 ifTrue: [
            (recoveredStack0) becomeDefault.
            recoveredPC := 583.
        ].
        recoveredStep = 583 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 586.
        ].
        recoveredStep = 586 ifTrue: [
            recoveredStack1 := MxEMc25.
            recoveredPC := 590.
        ].
        recoveredStep = 590 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 593.
        ].
        recoveredStep = 593 ifTrue: [
            recoveredStack2 := (recoveredStack2) signature.
            recoveredPC := 595.
        ].
        recoveredStep = 595 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 598.
        ].
        recoveredStep = 598 ifTrue: [
            recoveredStack3 := (recoveredStack3) fullName.
            recoveredPC := 600.
        ].
        recoveredStep = 600 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 603.
        ].
        recoveredStep = 603 ifTrue: [
            recoveredStack4 := (recoveredStack4) fullName.
            recoveredPC := 605.
        ].
        recoveredStep = 605 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 609.
        ].
        recoveredStep = 609 ifTrue: [
            (recoveredStack0) logNotice: (recoveredStack1).
            recoveredPC := 613.
        ].
        recoveredStep = 613 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 616.
        ].
        recoveredStep = 616 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

