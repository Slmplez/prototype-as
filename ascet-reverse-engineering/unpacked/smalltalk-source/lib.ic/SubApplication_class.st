"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"lib.ic method 0x20000008; bytecode file offset 0x3c0a8"
!SubApplication class methodsFor: 'recovered'!
removing
    ^self
! !

"lib.ic method 0x200001f8; bytecode file offset 0x3c21c"
!SubApplication class methodsFor: 'recovered'!
signatureForLogging
    | recoveredValue0 |
    recoveredValue0 := (self) signature.
    ^recoveredValue0
! !

"lib.ic method 0x20000514; bytecode file offset 0x3c670"
!SubApplication class methodsFor: 'recovered'!
editionRecordClass
    | recoveredValue0 |
    recoveredValue0 := EmSubApplicationEdition.
    ^recoveredValue0
! !

"lib.ic method 0x20000550; bytecode file offset 0x3c670"
!SubApplication class methodsFor: 'recovered'!
builderClass
    | recoveredValue0 |
    recoveredValue0 := EmBuilderSubApplication.
    ^recoveredValue0
! !

"lib.ic method 0x200005d4; bytecode file offset 0x3c670"
!SubApplication class methodsFor: 'recovered'!
partsRecordClass
    | recoveredValue0 |
    recoveredValue0 := EmSubApplicationParts.
    ^recoveredValue0
! !

"lib.ic method 0x200005ec; bytecode file offset 0x3c670"
!SubApplication class methodsFor: 'recovered'!
shadowClass
    | recoveredValue0 |
    recoveredValue0 := EmShadowSubApplication.
    ^recoveredValue0
! !

"lib.ic method 0x20000744; bytecode file offset 0x3c804"
!SubApplication class methodsFor: 'recovered'!
initialVersionName
    ^'1.0'
! !

"lib.ic method 0x200008d8; bytecode file offset 0x3cba0"
!SubApplication class methodsFor: 'recovered'!
versionName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) timeStamp.
    recoveredValue1 := (recoveredValue0) versionName.
    ^recoveredValue1
! !

"lib.ic method 0x20000938; bytecode file offset 0x3cba0"
!SubApplication class methodsFor: 'recovered'!
releasedClassVersions
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) editionRecord.
    recoveredValue1 := (recoveredValue0) releasedNamesAndTimeStamps.
    ^recoveredValue1
! !

"lib.ic method 0x20000968; bytecode file offset 0x3cba0"
!SubApplication class methodsFor: 'recovered'!
subApplicationConfigurations
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) editionRecord.
    recoveredValue1 := (recoveredValue0) subApplicationConfigurations.
    ^recoveredValue1
! !

"lib.ic method 0x20000978; bytecode file offset 0x3cba0"
!SubApplication class methodsFor: 'recovered'!
existsInLibrary
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) editionRecord.
    recoveredValue1 := (recoveredValue0) existsInLibrary.
    ^recoveredValue1
! !

"lib.ic method 0x20000a08; bytecode file offset 0x3cba0"
!SubApplication class methodsFor: 'recovered'!
allConfigurationExpressions
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) editionRecord.
    recoveredValue1 := (recoveredValue0) allConfigurationExpressions.
    ^recoveredValue1
! !

"lib.ic method 0x20000a88; bytecode file offset 0x3cba0"
!SubApplication class methodsFor: 'recovered'!
previousTimeStamp
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) editionRecord.
    recoveredValue1 := (recoveredValue0) previousTimeStamp.
    ^recoveredValue1
! !

"lib.ic method 0x20000b18; bytecode file offset 0x3cba0"
!SubApplication class methodsFor: 'recovered'!
classOwnershipDictionary
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) editionRecord.
    recoveredValue1 := (recoveredValue0) namesAndOwners.
    ^recoveredValue1
! !

"lib.ic method 0x2000147c; bytecode file offset 0x3d664"
!SubApplication class methodsFor: 'recovered'!
shadowsWithSubs
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) symbol.
    recoveredValue1 := (self) shadowsWithSubsFor: (recoveredValue0).
    ^recoveredValue1
! !

"lib.ic method 0x2000150c; bytecode file offset 0x3d664"
!SubApplication class methodsFor: 'recovered'!
partsRecord
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) symbol.
    recoveredValue1 := (self) partsRecordFor: (recoveredValue0).
    ^recoveredValue1
! !

"lib.ic method 0x2000156c; bytecode file offset 0x3d664"
!SubApplication class methodsFor: 'recovered'!
releasedSubApplications
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) editionRecord.
    recoveredValue1 := (self) releasedSubApplicationsUsing: (recoveredValue0).
    ^recoveredValue1
! !

"lib.ic method 0x2000159c; bytecode file offset 0x3d664"
!SubApplication class methodsFor: 'recovered'!
shadows
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) symbol.
    recoveredValue1 := (self) shadowsFor: (recoveredValue0).
    ^recoveredValue1
! !

"lib.ic method 0x20001760; bytecode file offset 0x3d788"
!SubApplication class methodsFor: 'recovered'!
asShadow
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) shadowClass.
    recoveredValue1 := (recoveredValue0) copy: (self).
    ^recoveredValue1
! !

"lib.ic method 0x20001914; bytecode file offset 0x3da5c"
!SubApplication class methodsFor: 'recovered'!
isAwareOf: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) editionRecord.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) includes: (recoveredValue1).
    ^recoveredValue2
! !

"lib.ic method 0x20001974; bytecode file offset 0x3da5c"
!SubApplication class methodsFor: 'recovered'!
releasedSubApplicationsFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) editionRecord.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) subApplicationsFor: (recoveredValue1).
    ^recoveredValue2
! !

"lib.ic method 0x20002250; bytecode file offset 0x3e2b0"
!SubApplication class methodsFor: 'recovered'!
allClassNames
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) partsRecord.
    recoveredValue1 := (recoveredValue0) classNamesDictionary.
    recoveredValue2 := (recoveredValue1) keys.
    recoveredValue3 := (recoveredValue2) asSortedCollection.
    ^recoveredValue3
! !

"lib.ic method 0x20002280; bytecode file offset 0x3e2b0"
!SubApplication class methodsFor: 'recovered'!
allPurgedNames
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) partsRecordClass.
    recoveredValue1 := (recoveredValue0) purgedRootDictionary.
    recoveredValue2 := (recoveredValue1) keys.
    recoveredValue3 := (recoveredValue2) asSortedCollection.
    ^recoveredValue3
! !

"lib.ic method 0x200026b4; bytecode file offset 0x3e6d4"
!SubApplication class methodsFor: 'recovered'!
configurationExpression
    | recoveredValue0 |
    recoveredValue0 := configurationExpression.
    ^recoveredValue0
! !

"lib.ic method 0x200026c8; bytecode file offset 0x3e6e8"
!SubApplication class methodsFor: 'recovered'!
isScratch
    | recoveredValue0 |
    recoveredValue0 := isScratchEdition.
    ^recoveredValue0
! !

"lib.ic method 0x20003450; bytecode file offset 0x3f474"
!SubApplication class methodsFor: 'recovered'!
timeStampVersionName: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := timeStamp.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) versionName: (recoveredValue1).
    ^self
! !

"lib.ic method 0x20003558; bytecode file offset 0x3f5c0"
!SubApplication class methodsFor: 'recovered'!
areReleased: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) editionRecord.
    recoveredValue2 := (self) areReleased: (recoveredValue0) accordingTo: (recoveredValue1).
    ^recoveredValue2
! !

"lib.ic method 0x20003568; bytecode file offset 0x3f5c0"
!SubApplication class methodsFor: 'recovered'!
ownerOfEachIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) editionRecord.
    recoveredValue2 := (self) ownerOfEachIn: (recoveredValue0) accordingTo: (recoveredValue1).
    ^recoveredValue2
! !

"lib.ic method 0x200036bc; bytecode file offset 0x3f704"
!SubApplication class methodsFor: 'recovered'!
allClassNamesIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) partsRecordFor: (recoveredValue0).
    recoveredValue2 := (recoveredValue1) classNamesDictionary.
    recoveredValue3 := (recoveredValue2) keys.
    recoveredValue4 := (recoveredValue3) asSortedCollection.
    ^recoveredValue4
! !

"lib.ic method 0x200036d4; bytecode file offset 0x3f704"
!SubApplication class methodsFor: 'recovered'!
editionTimeStampsFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) partsRecordFor: (recoveredValue0).
    recoveredValue2 := (recoveredValue1) editionsDictionary.
    recoveredValue3 := (recoveredValue2) keys.
    recoveredValue4 := (recoveredValue3) asSortedCollection.
    ^recoveredValue4
! !

"lib.ic method 0x2000372c; bytecode file offset 0x3f754"
!SubApplication class methodsFor: 'recovered'!
classInfoFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) editionRecordClass.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) entryNamed: (recoveredValue1) in: (self).
    ^recoveredValue2
! !

"lib.ic method 0x20003748; bytecode file offset 0x3f778"
!SubApplication class methodsFor: 'recovered'!
allClassNamesOwnedBy: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) editionRecord.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) uniqueName.
    recoveredValue3 := (recoveredValue0) allClassNamesOwnedBy: (recoveredValue2).
    recoveredValue4 := (recoveredValue3) asSortedCollection.
    ^recoveredValue4
! !

"lib.ic method 0x200039cc; bytecode file offset 0x3f9f8"
!SubApplication class methodsFor: 'recovered'!
userIsManager
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EmUser.
    recoveredValue1 := (recoveredValue0) current.
    recoveredValue2 := (self) manager.
    recoveredValue3 := (recoveredValue1) = (recoveredValue2).
    ^recoveredValue3
! !

"lib.ic method 0x20003ad8; bytecode file offset 0x3fb80"
!SubApplication class methodsFor: 'recovered'!
inheritedUserFieldNames
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EmLibrary.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) operationsInterface.
    recoveredValue3 := (recoveredValue2) applicationInheritedUserFieldNamesFor: (self).
    ^recoveredValue3
! !

"lib.ic method 0x20003b38; bytecode file offset 0x3fb80"
!SubApplication class methodsFor: 'recovered'!
localUserFieldNames
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EmLibrary.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) operationsInterface.
    recoveredValue3 := (recoveredValue2) applicationLocalUserFieldNamesFor: (self).
    ^recoveredValue3
! !

"lib.ic method 0x20003bf0; bytecode file offset 0x3fc44"
!SubApplication class methodsFor: 'recovered'!
compatibleWasRemovedCode
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) wasRemovedCode.
    recoveredValue1 := (self) compatibleUndeclareString.
    recoveredValue2 := (self) code: (recoveredValue0) withCompatibleDeclarations: (recoveredValue1).
    ^recoveredValue2
! !

"lib.ic method 0x20003c18; bytecode file offset 0x3fc44"
!SubApplication class methodsFor: 'recovered'!
compatibleToBeLoadedCode
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) toBeLoadedCode.
    recoveredValue1 := (self) compatibleDeclareString.
    recoveredValue2 := (self) code: (recoveredValue0) withCompatibleDeclarations: (recoveredValue1).
    ^recoveredValue2
! !

"lib.ic method 0x20003fa8; bytecode file offset 0x3ffd0"
!SubApplication class methodsFor: 'recovered'!
updateEdition: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) editionRecordClass.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) for: (self) relocateUsing: (recoveredValue1).
    ^self
! !

"lib.ic method 0x20004004; bytecode file offset 0x40044"
!SubApplication class methodsFor: 'recovered'!
shadowAt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) shadowClass.
    recoveredValue1 := (self) symbol.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue0) named: (recoveredValue1) timeStamp: (recoveredValue2).
    ^recoveredValue3
! !

"lib.ic method 0x20004018; bytecode file offset 0x40044"
!SubApplication class methodsFor: 'recovered'!
updateParts: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) partsRecordClass.
    recoveredValue1 := (self) symbol.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue0) for: (recoveredValue1) updateUsing: (recoveredValue2).
    ^recoveredValue3
! !

"lib.ic method 0x2000413c; bytecode file offset 0x40164"
!SubApplication class methodsFor: 'recovered'!
classEditionNamed: recoveredArg1 at: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) classEditionsRecordFor: (recoveredValue0).
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue1) editionAt: (recoveredValue2) named: (recoveredValue3).
    ^recoveredValue4
! !

"lib.ic method 0x20004284; bytecode file offset 0x402b4"
!SubApplication class methodsFor: 'recovered'!
recacheMethodPointers
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := EmLibrary.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) operationsInterface.
    (recoveredValue2) applicationRecacheMethodPointersFor: (self).
    ^self
! !

"lib.ic method 0x200042a8; bytecode file offset 0x402d4"
!SubApplication class methodsFor: 'recovered'!
allNamesWithoutPackages
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ('PR') = ('1FI579S').
    recoveredValue1 := (self) allNames.
    ^recoveredValue1
! !

"lib.ic method 0x2000441c; bytecode file offset 0x40440"
!SubApplication class methodsFor: 'recovered'!
failedRemove
    (self) becomeScratchBecause: (376).
    ^self
! !

"lib.ic method 0x20004610; bytecode file offset 0x4063c"
!SubApplication class methodsFor: 'recovered'!
partsRecordFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EmLibraryCache.
    recoveredValue1 := (recoveredValue0) current.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) partsRecordFor: (self) named: (recoveredValue2).
    ^recoveredValue3
! !

"lib.ic method 0x200046fc; bytecode file offset 0x40728"
!SubApplication class methodsFor: 'recovered'!
updateLibrary: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) partsRecordClass.
    recoveredValue1 := (self) symbol.
    recoveredValue2 := recoveredArg1.
    (recoveredValue0) for: (recoveredValue1) relocateUsing: (recoveredValue2).
    ^self
! !

"lib.ic method 0x20004a60; bytecode file offset 0x40a88"
!SubApplication class methodsFor: 'recovered'!
configurationExpression: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    configurationExpression := recoveredValue0.
    ^self
! !

"lib.ic method 0x20004f64; bytecode file offset 0x41084"
!SubApplication class methodsFor: 'recovered'!
inheritedUserFieldAt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := EmLibrary.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) operationsInterface.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue2) applicationInheritedUserFieldAtFor: (self) atName: (recoveredValue3).
    ^recoveredValue4
! !

"lib.ic method 0x20004fc4; bytecode file offset 0x41084"
!SubApplication class methodsFor: 'recovered'!
localUserFieldAt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := EmLibrary.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) operationsInterface.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue2) applicationLocalUserFieldAtFor: (self) atName: (recoveredValue3).
    ^recoveredValue4
! !

"lib.ic method 0x2000503c; bytecode file offset 0x41084"
!SubApplication class methodsFor: 'recovered'!
shadowsFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := EmLibrary.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) operationsInterface.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue2) applicationShadowsForNameFor: (self) name: (recoveredValue3).
    ^recoveredValue4
! !

"lib.ic method 0x200050c4; bytecode file offset 0x4113c"
!SubApplication class methodsFor: 'recovered'!
deleteLocalUserFieldAt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EmLibrary.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) operationsInterface.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) applicationDeleteLocalUserFieldAtFor: (self) atName: (recoveredValue3).
    ^self
! !

"lib.ic method 0x200050f4; bytecode file offset 0x4113c"
!SubApplication class methodsFor: 'recovered'!
deleteInheritedUserFieldAt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EmLibrary.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) operationsInterface.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) applicationDeleteInheritedUserFieldAtFor: (self) atName: (recoveredValue3).
    ^self
! !

"lib.ic method 0x2000529c; bytecode file offset 0x412cc"
!SubApplication class methodsFor: 'recovered'!
isReleased: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) timeStampFor: (recoveredValue0).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) symbol.
    recoveredValue4 := (self) classInfoFor: (recoveredValue3).
    recoveredValue5 := (recoveredValue4) timeStamp.
    recoveredValue6 := (recoveredValue1) = (recoveredValue5).
    ^recoveredValue6
! !

"lib.ic method 0x20005508; bytecode file offset 0x4153c"
!SubApplication class methodsFor: 'recovered'!
manager
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := EmUser.
    recoveredValue1 := (self) editionRecord.
    recoveredValue2 := (recoveredValue1) manager.
    recoveredValue3 := [].
    recoveredValue4 := (recoveredValue0) called: (recoveredValue2) ifAbsent: (recoveredValue3).
    ^recoveredValue4
! !

"lib.ic method 0x2000554c; bytecode file offset 0x4157c"
!SubApplication class methodsFor: 'recovered'!
withAllPossibleSubApplications
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) with: (self).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) allPossibleSubApplications.
    (recoveredValue2) addAll: (recoveredValue3).
    ^recoveredValue1
! !

"lib.ic method 0x20005574; bytecode file offset 0x41650"
!SubApplication class methodsFor: 'recovered'!
description
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EmImageSupport.
    recoveredValue1 := (recoveredValue0) textFilter.
    recoveredValue2 := (self) localUserFieldAt: ('description').
    recoveredValue3 := (recoveredValue1) filter: (recoveredValue2).
    ^recoveredValue3
! !

"lib.ic method 0x200055c8; bytecode file offset 0x41650"
!SubApplication class methodsFor: 'recovered'!
wasRemovedCode
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EmImageSupport.
    recoveredValue1 := (recoveredValue0) textFilter.
    recoveredValue2 := (self) inheritedUserFieldAt: ('wasRemoved').
    recoveredValue3 := (recoveredValue1) filter: (recoveredValue2).
    ^recoveredValue3
! !

"lib.ic method 0x200055e4; bytecode file offset 0x41650"
!SubApplication class methodsFor: 'recovered'!
applicationComment
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EmImageSupport.
    recoveredValue1 := (recoveredValue0) textFilter.
    recoveredValue2 := (self) inheritedUserFieldAt: ('comment').
    recoveredValue3 := (recoveredValue1) filter: (recoveredValue2).
    ^recoveredValue3
! !

"lib.ic method 0x2000561c; bytecode file offset 0x41650"
!SubApplication class methodsFor: 'recovered'!
toBeLoadedCode
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EmImageSupport.
    recoveredValue1 := (recoveredValue0) textFilter.
    recoveredValue2 := (self) inheritedUserFieldAt: ('toBeLoaded').
    recoveredValue3 := (recoveredValue1) filter: (recoveredValue2).
    ^recoveredValue3
! !

"lib.ic method 0x200057b0; bytecode file offset 0x417e4"
!SubApplication class methodsFor: 'recovered'!
ownerOfAndUserThatReleased: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := EmLibrary.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) operationsInterface.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) symbol.
    recoveredValue5 := (recoveredValue2) applicationOwnerOfAndUserThatReleasedFor: (self) className: (recoveredValue4).
    ^recoveredValue5
! !

"lib.ic method 0x20005cdc; bytecode file offset 0x41d04"
!SubApplication class methodsFor: 'recovered'!
isEdition
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) isScratch.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isVersion.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"lib.ic method 0x20005cfc; bytecode file offset 0x41d28"
!SubApplication class methodsFor: 'recovered'!
canBeChangedLocally
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) isScratch.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) timeStamp.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEdition.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"lib.ic method 0x20005db0; bytecode file offset 0x41de4"
!SubApplication class methodsFor: 'recovered'!
errorCouldNotCreate: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := NlsCatEMb.
    recoveredValue1 := (recoveredValue0) residentMsg: ('MxEMb40').
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) bindWith: (recoveredValue2).
    (self) error: (recoveredValue3).
    ^self
! !

"lib.ic method 0x20005e08; bytecode file offset 0x41e38"
!SubApplication class methodsFor: 'recovered'!
isExpressionValid: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := Compiler.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := EmEvaluationRedirectionForConfigExpressions.
    recoveredValue3 := (recoveredValue2) new.
    recoveredValue4 := (recoveredValue0) evaluate: (recoveredValue1) for: (recoveredValue3).
    recoveredValue5 := (recoveredValue4) == (true).
    ^recoveredValue5
! !

"lib.ic method 0x20005e30; bytecode file offset 0x41e60"
!SubApplication class methodsFor: 'recovered'!
classEditionsRecordFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := EmLibraryCache.
    recoveredValue1 := (recoveredValue0) current.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) classEditionsClass.
    recoveredValue4 := (recoveredValue1) classEditionsRecordForName: (recoveredValue2) in: (self) recordClass: (recoveredValue3).
    ^recoveredValue4
! !

"lib.ic method 0x20006500; bytecode file offset 0x42558"
!SubApplication class methodsFor: 'recovered'!
ownerOf: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := EmUser.
    recoveredValue1 := (self) editionRecord.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) symbol.
    recoveredValue4 := (recoveredValue1) ownerOf: (recoveredValue3).
    recoveredValue5 := [].
    recoveredValue6 := (recoveredValue0) called: (recoveredValue4) ifAbsent: (recoveredValue5).
    ^recoveredValue6
! !

"lib.ic method 0x20006520; bytecode file offset 0x42558"
!SubApplication class methodsFor: 'recovered'!
userThatReleased: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := EmUser.
    recoveredValue1 := (self) editionRecord.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) symbol.
    recoveredValue4 := (recoveredValue1) userThatReleased: (recoveredValue3).
    recoveredValue5 := [].
    recoveredValue6 := (recoveredValue0) called: (recoveredValue4) ifAbsent: (recoveredValue5).
    ^recoveredValue6
! !

"lib.ic method 0x200066ec; bytecode file offset 0x42718"
!SubApplication class methodsFor: 'recovered'!
moveFrom: recoveredArg1 to: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := Dictionary.
    recoveredValue3 := (recoveredValue2) new.
    recoveredValue4 := (self) moveFrom: (recoveredValue0) to: (recoveredValue1) mapping: (recoveredValue3) removeSource: (false) removeComments: (false) forgetStoredObjects: (false).
    ^recoveredValue4
! !

"lib.ic method 0x2000678c; bytecode file offset 0x427bc"
!SubApplication class methodsFor: 'recovered'!
insertClassName: recoveredArg1 type: recoveredArg2 ifUnable: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := EmLibrary.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) operationsInterface.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := recoveredArg3.
    (recoveredValue2) applicationInsertClassNameFor: (self) className: (recoveredValue3) type: (recoveredValue4) ifUnable: (recoveredValue5).
    ^self
! !

"lib.ic method 0x20006928; bytecode file offset 0x42964"
!SubApplication class methodsFor: 'recovered'!
allNames
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := EmLibrary.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) operationsInterface.
    recoveredValue3 := (self) partsRecordClass.
    recoveredValue4 := (recoveredValue2) genericRootDictionaryFor: (recoveredValue3).
    recoveredValue5 := (recoveredValue4) keys.
    recoveredValue6 := (recoveredValue5) asSortedCollection.
    ^recoveredValue6
! !

"lib.ic method 0x20007840; bytecode file offset 0x43870"
!SubApplication class methodsFor: 'recovered'!
userHasRightTo: recoveredArg1
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
            recoveredStack0 := (recoveredStack0) statusForPrivilege: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := 'world'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) editionRecord.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) userHasRightTo: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x200078ac; bytecode file offset 0x438d8"
!SubApplication class methodsFor: 'recovered'!
releasedSubApplicationsUsing: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) configurationExpression.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) subApplications.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) configurationExpression.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) subApplicationsFor: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20007b10; bytecode file offset 0x43b58"
!SubApplication class methodsFor: 'recovered'!
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
    (recoveredValue2) applicationLocalUserFieldAtPutRecordFor: (self) atName: (recoveredValue3) putRecord: (recoveredValue4) userMustBeManagerTo: (recoveredValue5) noUserError: (recoveredValue6) ifUnable: (recoveredValue7).
    ^self
! !

"lib.ic method 0x20007b28; bytecode file offset 0x43b58"
!SubApplication class methodsFor: 'recovered'!
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
    (recoveredValue2) applicationLocalUserFieldAtPutFor: (self) atName: (recoveredValue3) put: (recoveredValue4) userMustBeManagerTo: (recoveredValue5) noUserError: (recoveredValue6) ifUnable: (recoveredValue7).
    ^self
! !

"lib.ic method 0x20008330; bytecode file offset 0x44368"
!SubApplication class methodsFor: 'recovered'!
groupMembers
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) editionRecord.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) groupMembers.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := [:block28004198Arg1 | 
    | block28004198Value0 block28004198Value1 block28004198Value2 |
    block28004198Value0 := EmUser.
    block28004198Value1 := block28004198Arg1.
    block28004198Value2 := (block28004198Value0) called: (block28004198Value1).
    block28004198Value2
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20008774; bytecode file offset 0x4479c"
!SubApplication class methodsFor: 'recovered'!
updateEntryNamed: recoveredArg1 with: recoveredArg2 ifUnable: recoveredArg3 notEditionError: recoveredArg4 notDefinedError: recoveredArg5 notOwnerError: recoveredArg6 errorArguments: recoveredArg7
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) editionRecordClass.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := recoveredArg5.
    recoveredValue6 := recoveredArg6.
    recoveredValue7 := recoveredArg7.
    (recoveredValue0) entryNamed: (recoveredValue1) in: (self) relocateUsing: (recoveredValue2) ifUnable: (recoveredValue3) notEditionError: (recoveredValue4) notDefinedError: (recoveredValue5) notOwnerError: (recoveredValue6) errorArguments: (recoveredValue7).
    ^self
! !

"lib.ic method 0x2000883c; bytecode file offset 0x44874"
!SubApplication class methodsFor: 'recovered'!
code: recoveredArg1 withCompatibleDeclarations: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := EmClassDevelopment.
    recoveredValue1 := (recoveredValue0) imageBuilder.
    recoveredValue2 := (recoveredValue1) namespaceSupport.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (recoveredValue6) compatibleDeclarationsStartMarker.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := (recoveredValue8) compatibleDeclarationsEndMarker.
    recoveredValue10 := (recoveredValue3) code: (recoveredValue4) with: (recoveredValue5) between: (recoveredValue7) and: (recoveredValue9).
    ^recoveredValue10
! !

"lib.ic method 0x20008f7c; bytecode file offset 0x44fb0"
!SubApplication class methodsFor: 'recovered'!
differencesWith: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := EmLibraryCache.
    recoveredValue1 := (recoveredValue0) current.
    recoveredValue2 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 |
    recoveredBlock7Value0 := (self) editionRecord.
    recoveredBlock7Value1 := recoveredArg1.
    recoveredBlock7Value2 := (recoveredBlock7Value0) differencesWith: (recoveredBlock7Value1).
    ^recoveredBlock7Value2
].
    (recoveredValue1) cacheEditionsWhileExecuting: (recoveredValue2).
    ^self
! !

"lib.ic method 0x2000926c; bytecode file offset 0x452e4"
!SubApplication class methodsFor: 'recovered'!
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
    (recoveredValue2) applicationInheritedUserFieldAtPutFor: (self) atName: (recoveredValue3) put: (recoveredValue4) userMustBeManagerTo: (recoveredValue5) noUserError: (recoveredValue6) mustBeEditionTo: (recoveredValue7) withParms: (recoveredValue8) ifUnable: (recoveredValue9).
    ^self
! !

"lib.ic method 0x200092b4; bytecode file offset 0x452e4"
!SubApplication class methodsFor: 'recovered'!
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
    (recoveredValue2) applicationInheritedUserFieldAtPutRecordFor: (self) atName: (recoveredValue3) putRecord: (recoveredValue4) userMustBeManagerTo: (recoveredValue5) noUserError: (recoveredValue6) mustBeEditionTo: (recoveredValue7) withParms: (recoveredValue8) ifUnable: (recoveredValue9).
    ^self
! !

"lib.ic method 0x200094ec; bytecode file offset 0x4551c"
!SubApplication class methodsFor: 'recovered'!
visibleEditionsFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) classEditionsRecordFor: (recoveredValue0).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) visibleEditionsNamed: (recoveredValue2).
    recoveredValue4 := [:recoveredBlock8Arg1 :recoveredBlock8Arg2 | 
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 recoveredBlock8Value4 |
    recoveredBlock8Value0 := recoveredBlock8Arg1.
    recoveredBlock8Value1 := (recoveredBlock8Value0) timeStampIn: (self).
    recoveredBlock8Value2 := recoveredBlock8Arg2.
    recoveredBlock8Value3 := (recoveredBlock8Value2) timeStampIn: (self).
    recoveredBlock8Value4 := (recoveredBlock8Value1) > (recoveredBlock8Value3).
    recoveredBlock8Value4
].
    recoveredValue5 := (recoveredValue3) asSortedCollection: (recoveredValue4).
    ^recoveredValue5
! !

"lib.ic method 0x200095b8; bytecode file offset 0x45600"
!SubApplication class methodsFor: 'recovered'!
addGroupMember: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := EmLibrary.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) operationsInterface.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := [
    ^false
].
    (recoveredValue2) applicationAddGroupMemberFor: (self) newMember: (recoveredValue3) ifUnable: (recoveredValue4).
    ^self
! !

"lib.ic method 0x200095d0; bytecode file offset 0x45600"
!SubApplication class methodsFor: 'recovered'!
removeGroupMember: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := EmLibrary.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) operationsInterface.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := [
    ^false
].
    (recoveredValue2) applicationRemoveGroupMemberFor: (self) groupMember: (recoveredValue3) ifUnable: (recoveredValue4).
    ^self
! !

"lib.ic method 0x200099d8; bytecode file offset 0x45a04"
!SubApplication class methodsFor: 'recovered'!
statusForPrivilege: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := privileges.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    | recoveredBlock9Value0 recoveredBlock9Value1 recoveredBlock9Value2 |
    recoveredBlock9Value0 := (self) editionRecord.
    recoveredBlock9Value1 := recoveredArg1.
    recoveredBlock9Value2 := (recoveredBlock9Value0) statusFor: (recoveredBlock9Value1).
    recoveredBlock9Value2
].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"lib.ic method 0x20009b5c; bytecode file offset 0x45b8c"
!SubApplication class methodsFor: 'recovered'!
localUserFieldAt: recoveredArg1 putRecord: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := [
    ^nil
].
    (self) localUserFieldAt: (recoveredValue0) putRecord: (recoveredValue1) userMustBeManagerTo: (nil) noUserError: (nil) ifUnable: (recoveredValue2).
    ^self
! !

"lib.ic method 0x20009b68; bytecode file offset 0x45b8c"
!SubApplication class methodsFor: 'recovered'!
localUserFieldAt: recoveredArg1 put: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := [
    ^nil
].
    (self) localUserFieldAt: (recoveredValue0) put: (recoveredValue1) userMustBeManagerTo: (nil) noUserError: (nil) ifUnable: (recoveredValue2).
    ^self
! !

"lib.ic method 0x20009e24; bytecode file offset 0x45e64"
!SubApplication class methodsFor: 'recovered'!
becomeScratchBecause: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) canBeChangedLocally.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) asScratch.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := EmImageSupport.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorReporter.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := (recoveredStack3) signature.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) logError: (recoveredStack1) withParms: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2000a05c; bytecode file offset 0x4608c"
!SubApplication class methodsFor: 'recovered'!
versionsOf: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) classEditionsRecordFor: (recoveredValue0).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) versionsNamed: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := [:recoveredBlock10Arg1 :recoveredBlock10Arg2 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 recoveredBlock10Value4 |
    recoveredBlock10Value0 := recoveredBlock10Arg1.
    recoveredBlock10Value1 := (recoveredBlock10Value0) timeStampIn: (self).
    recoveredBlock10Value2 := recoveredBlock10Arg2.
    recoveredBlock10Value3 := (recoveredBlock10Value2) timeStampIn: (self).
    recoveredBlock10Value4 := (recoveredBlock10Value1) > (recoveredBlock10Value3).
    recoveredBlock10Value4
].
    recoveredValue6 := (recoveredValue4) asSortedCollection: (recoveredValue5).
    ^recoveredValue6
! !

"lib.ic method 0x2000a434; bytecode file offset 0x46468"
!SubApplication class methodsFor: 'recovered'!
removeFrom: recoveredArg1
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
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := EmImageSupport.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorReporter.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := 163.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) reportError: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := super removeFrom: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2000a5ac; bytecode file offset 0x465e8"
!SubApplication class methodsFor: 'recovered'!
userHasRightTo: recoveredArg1 for: recoveredArg2
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
            recoveredStack0 := (recoveredStack0) statusForPrivilege: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := 'world'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) editionRecord.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := (recoveredStack3) symbol.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) userHasRightTo: (recoveredStack1) forEachIn: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2000a5ec; bytecode file offset 0x4661c"
!SubApplication class methodsFor: 'recovered'!
inheritedUserFieldAt: recoveredArg1 putRecord: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := [
    ^nil
].
    (self) inheritedUserFieldAt: (recoveredValue0) putRecord: (recoveredValue1) userMustBeManagerTo: (nil) noUserError: (nil) mustBeEditionTo: (nil) withParms: (nil) ifUnable: (recoveredValue2).
    ^self
! !

"lib.ic method 0x2000a5f8; bytecode file offset 0x4661c"
!SubApplication class methodsFor: 'recovered'!
inheritedUserFieldAt: recoveredArg1 put: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := [
    ^nil
].
    (self) inheritedUserFieldAt: (recoveredValue0) put: (recoveredValue1) userMustBeManagerTo: (nil) noUserError: (nil) mustBeEditionTo: (nil) withParms: (nil) ifUnable: (recoveredValue2).
    ^self
! !

"lib.ic method 0x2000a64c; bytecode file offset 0x4667c"
!SubApplication class methodsFor: 'recovered'!
move: recoveredArg1 from: recoveredArg2 to: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := Association.
    recoveredValue4 := (recoveredValue3) key: (#()) value: (#()).
    recoveredValue5 := Association.
    recoveredValue6 := (recoveredValue5) key: (#()) value: (#()).
    recoveredValue7 := (self) move: (recoveredValue0) from: (recoveredValue1) to: (recoveredValue2) removeSourceFrom: (recoveredValue4) removeCommentsFrom: (recoveredValue6).
    ^recoveredValue7
! !

"lib.ic method 0x2000ab68; bytecode file offset 0x46b9c"
!SubApplication class methodsFor: 'recovered'!
moveEditionFrom: recoveredArg1 to: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := EmImageSupport.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorReporter.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := 173.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) reportError: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := super moveEditionFrom: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2000acd8; bytecode file offset 0x46d0c"
!SubApplication class methodsFor: 'recovered'!
moveAllVersionsOf: recoveredArg1 in: recoveredArg2 from: recoveredArg3 to: recoveredArg4 using: recoveredArg5 skipClassesIn: recoveredArg6 mapping: recoveredArg7 removeSourceStructure: recoveredArg8 removeCommentStructure: recoveredArg9 forgetStoredObjects: recoveredArg10
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := EmLibrary.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) operationsInterface.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (self) isSubApplication.
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := recoveredArg3.
    recoveredValue7 := recoveredArg4.
    recoveredValue8 := recoveredArg6.
    recoveredValue9 := recoveredArg7.
    recoveredValue10 := recoveredArg8.
    recoveredValue11 := recoveredArg9.
    recoveredValue12 := recoveredArg10.
    recoveredValue13 := (recoveredValue2) moveAllVersionsOfApplicationName: (recoveredValue3) appIsSubApp: (recoveredValue4) in: (recoveredValue5) from: (recoveredValue6) to: (recoveredValue7) skipClassesIn: (recoveredValue8) mapping: (recoveredValue9) removeSourceStructure: (recoveredValue10) removeCommentStructure: (recoveredValue11) forgetStoredObjects: (recoveredValue12).
    ^recoveredValue13
! !

"lib.ic method 0x2000af1c; bytecode file offset 0x46f54"
!SubApplication class methodsFor: 'recovered'!
removeFromSystem
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) controller.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 22].
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
            recoveredStack1 := 163.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) reportError: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            super removeFromSystem.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2000b160; bytecode file offset 0x47188"
!SubApplication class methodsFor: 'recovered'!
description: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    ^false
].
    (self) localUserFieldAt: ('description') put: (recoveredValue0) userMustBeManagerTo: (239) noUserError: (238) ifUnable: (recoveredValue1).
    ^true
! !

"lib.ic method 0x2000b57c; bytecode file offset 0x475c8"
!SubApplication class methodsFor: 'recovered'!
insertInLibrary
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    (self) addDefined: (self).
    recoveredValue0 := EmLibrary.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) operationsInterface.
    (recoveredValue2) applicationAddInitialApplicationFor: (self) named: ('Initial').
    recoveredValue3 := (self) owningImage.
    recoveredValue4 := (self) signature.
    recoveredValue5 := ('Created %1') bindWith: (recoveredValue4).
    (recoveredValue3) logApplicationNotice: (recoveredValue5).
    ^self
! !

"lib.ic method 0x2000b808; bytecode file offset 0x47838"
!SubApplication class methodsFor: 'recovered'!
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
    recoveredValue6 := (recoveredValue2) applicationStatusForPrivilegeIsFor: (self) privilege: (recoveredValue3) statusIs: (recoveredValue4) ifUnable: (recoveredValue5).
    privileges := recoveredValue6.
    ^self
! !

"lib.ic method 0x2000bad8; bytecode file offset 0x47b14"
!SubApplication class methodsFor: 'recovered'!
removeFromImageIfNot: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) controller.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 22].
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
            recoveredStack1 := 163.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) reportError: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := super removeFromImageIfNot: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2000c418; bytecode file offset 0x48444"
!SubApplication class methodsFor: 'recovered'!
reserveClassName: recoveredArg1 as: recoveredArg2 ifUnable: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := [
    | recoveredBlock10Value0 recoveredBlock10Value1 |
    recoveredBlock10Value0 := recoveredArg3.
    recoveredBlock10Value1 := (recoveredBlock10Value0) value.
    ^recoveredBlock10Value1
].
    (self) insertClassName: (recoveredValue0) type: (recoveredValue1) ifUnable: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (self) addUndefined: (recoveredValue3).
    ^self
! !

"lib.ic method 0x2000c5f8; bytecode file offset 0x48638"
!SubApplication class methodsFor: 'recovered'!
asScratch
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isVersion.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) scratchEditionStatus: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := EmImageSupport.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorReporter.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := 155.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := (recoveredStack3) signature.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) reportError: (recoveredStack1) withParms: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2000ca18; bytecode file offset 0x48a54"
!SubApplication class methodsFor: 'recovered'!
userHasRightTo: recoveredArg1 forEachIn: recoveredArg2
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
            recoveredStack0 := (recoveredStack0) statusForPrivilege: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := 'world'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) editionRecord.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := [:block2800436cArg1 | 
    | block2800436cValue0 block2800436cValue1 |
    block2800436cValue0 := block2800436cArg1.
    block2800436cValue1 := (block2800436cValue0) symbol.
    block2800436cValue1
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) collect: (recoveredStack3).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) userHasRightTo: (recoveredStack1) forEachIn: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2000ceac; bytecode file offset 0x48eec"
!SubApplication class methodsFor: 'recovered'!
allowedTo: recoveredArg1 ifNot: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isVersion.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) owningImage.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) addLineDelimiters.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) proceed: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) asScratch.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2000d3c4; bytecode file offset 0x493f0"
!SubApplication class methodsFor: 'recovered'!
applicationComment: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    ^false
].
    (self) inheritedUserFieldAt: ('comment') put: (recoveredValue0) userMustBeManagerTo: (237) noUserError: (236) mustBeEditionTo: (292) withParms: (#()) ifUnable: (recoveredValue1).
    ^true
! !

"lib.ic method 0x2000d7a4; bytecode file offset 0x497dc"
!SubApplication class methodsFor: 'recovered'!
createEditionOf: recoveredArg1 type: recoveredArg2 ifUnable: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) symbol.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) insertClassName: (recoveredStack2) type: (recoveredStack3) ifUnable: (recoveredStack4).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) newClassEditionFor: (recoveredStack1) ifUnable: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 'Extended'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) addExtended: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) addDefined: (recoveredStack1).
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

"lib.ic method 0x2000df4c; bytecode file offset 0x49f88"
!SubApplication class methodsFor: 'recovered'!
createSubclass: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) creatorClass.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) owningImage.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) globalNamespace.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack5 := (recoveredStack5) instanceShape.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack6 := #().
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack7 := #().
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack8 := #().
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack9 := #().
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) createClassNamed: (recoveredStack1) in: (recoveredStack2) for: (recoveredStack3) subclassOf: (recoveredStack4) instanceShape: (recoveredStack5) classInstanceVariables: (recoveredStack6) instanceVariables: (recoveredStack7) classVariables: (recoveredStack8) sharedPoolNames: (recoveredStack9).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) initializeApplication.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2000e3b4; bytecode file offset 0x4a3ec"
!SubApplication class methodsFor: 'recovered'!
canAddMethod: recoveredArg1 in: recoveredArg2 ifUnable: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) applicationAssocAt: (recoveredStack2).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) isClass.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) primaryInstance.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := 'Extended'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) createEditionOf: (recoveredStack2) type: (recoveredStack3) ifUnable: (recoveredStack4).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 37.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) modifyIn: (recoveredStack2) ifUnable: (recoveredStack3).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2000f2cc; bytecode file offset 0x4b314"
!SubApplication class methodsFor: 'recovered'!
manager: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := EmLibrary.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) operationsInterface.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := [
    ^false
].
    (recoveredValue2) applicationManagerFor: (self) manager: (recoveredValue3) ifUnable: (recoveredValue4).
    recoveredValue5 := (self) owningImage.
    recoveredValue6 := (self) signature.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue7) fullName.
    recoveredValue9 := ('Changed the manager of %1 to %2') bindWith: (recoveredValue6) with: (recoveredValue8).
    (recoveredValue5) logApplicationNotice: (recoveredValue9).
    ^true
! !

"lib.ic method 0x2000f328; bytecode file offset 0x4b370"
!SubApplication class methodsFor: 'recovered'!
deleteConfigurationExpression: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := EmLibrary.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) operationsInterface.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := [
    ^nil
].
    (recoveredValue2) applicationDeleteConfigExpressionFor: (self) expr: (recoveredValue3) ifUnable: (recoveredValue4).
    recoveredValue5 := (self) owningImage.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) storeString.
    recoveredValue8 := (self) signature.
    recoveredValue9 := ('Deleted the configuration %1 from %2') bindWith: (recoveredValue7) with: (recoveredValue8).
    (recoveredValue5) logApplicationNotice: (recoveredValue9).
    ^self
! !

"lib.ic method 0x2000f550; bytecode file offset 0x4b58c"
!SubApplication class methodsFor: 'recovered'!
makePrivate: recoveredArg1 ifUnable: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) symbol.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block2800463cArg1 | 
    | block2800463cValue0 block2800463cValue1 |
    block2800463cValue0 := block2800463cArg1.
    block2800463cValue1 := (block2800463cValue0) classType: ('PrivatelyDefined').
    block2800463cValue1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack4 := 313.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack5 := 314.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack6 := 315.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack7 := Array.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack8 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack8 := (recoveredStack8) symbol.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack7 := (recoveredStack7) with: (recoveredStack8).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) updateEntryNamed: (recoveredStack1) with: (recoveredStack2) ifUnable: (recoveredStack3) notEditionError: (recoveredStack4) notDefinedError: (recoveredStack5) notOwnerError: (recoveredStack6) errorArguments: (recoveredStack7).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2000f5a0; bytecode file offset 0x4b5dc"
!SubApplication class methodsFor: 'recovered'!
makePublic: recoveredArg1 ifUnable: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) symbol.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block28004660Arg1 | 
    | block28004660Value0 block28004660Value1 |
    block28004660Value0 := block28004660Arg1.
    block28004660Value1 := (block28004660Value0) classType: ('PubliclyDefined').
    block28004660Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack4 := 316.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack5 := 317.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack6 := 318.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack7 := Array.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack8 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack8 := (recoveredStack8) symbol.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack7 := (recoveredStack7) with: (recoveredStack8).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) updateEntryNamed: (recoveredStack1) with: (recoveredStack2) ifUnable: (recoveredStack3) notEditionError: (recoveredStack4) notDefinedError: (recoveredStack5) notOwnerError: (recoveredStack6) errorArguments: (recoveredStack7).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2000fc20; bytecode file offset 0x4bc5c"
!SubApplication class methodsFor: 'recovered'!
addUndefined: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) undefined.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) symbol.
    recoveredBlock5Value2 := recoveredArg1.
    recoveredBlock5Value3 := (recoveredBlock5Value1) == (recoveredBlock5Value2).
    recoveredBlock5Value3
].
    recoveredValue2 := [
    | recoveredBlock19Value0 recoveredBlock19Value1 recoveredBlock19Value2 recoveredBlock19Value3 recoveredBlock19Value4 recoveredBlock19Value5 |
    recoveredBlock19Value0 := (self) undefined.
    recoveredBlock19Value1 := EmShadowClass.
    recoveredBlock19Value2 := recoveredArg1.
    recoveredBlock19Value3 := (recoveredBlock19Value1) named: (recoveredBlock19Value2).
    recoveredBlock19Value4 := (recoveredBlock19Value3) controller: (self).
    recoveredBlock19Value5 := (recoveredBlock19Value0) add: (recoveredBlock19Value4).
    recoveredBlock19Value5
].
    recoveredValue3 := (recoveredValue0) detect: (recoveredValue1) ifNone: (recoveredValue2).
    ^recoveredValue3
! !

"lib.ic method 0x2000fe10; bytecode file offset 0x4be4c"
!SubApplication class methodsFor: 'recovered'!
isVersion
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isScratch.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) timeStamp.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) isVersion.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) editionRecord.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) isVersion.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) timeStamp.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) versionName.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) versionName: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := 375.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) becomeScratchBecause: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x200108ac; bytecode file offset 0x4c8f0"
!SubApplication class methodsFor: 'recovered'!
signature
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isScratch.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 35].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) timeStamp.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isVersion.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 31].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) name.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := '<<'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) timeStamp.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) signature.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := ' >>'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) scratchEditionStatus: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) name.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) timeStamp.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) signature.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2001096c; bytecode file offset 0x4c9a8"
!SubApplication class methodsFor: 'recovered'!
classEditionsFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := EmLibraryCache.
    recoveredValue1 := (recoveredValue0) current.
    recoveredValue2 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 recoveredBlock7Value5 |
    recoveredBlock7Value0 := recoveredArg1.
    recoveredBlock7Value1 := (self) classEditionsRecordFor: (recoveredBlock7Value0).
    recoveredBlock7Value2 := recoveredArg1.
    recoveredBlock7Value3 := (recoveredBlock7Value1) editionsNamed: (recoveredBlock7Value2).
    recoveredBlock7Value4 := [:recoveredBlock7Block22Arg1 :recoveredBlock7Block22Arg2 | 
    | recoveredBlock7Block22Value0 recoveredBlock7Block22Value1 recoveredBlock7Block22Value2 recoveredBlock7Block22Value3 recoveredBlock7Block22Value4 |
    recoveredBlock7Block22Value0 := recoveredBlock7Block22Arg1.
    recoveredBlock7Block22Value1 := (recoveredBlock7Block22Value0) timeStampIn: (self).
    recoveredBlock7Block22Value2 := recoveredBlock7Block22Arg2.
    recoveredBlock7Block22Value3 := (recoveredBlock7Block22Value2) timeStampIn: (self).
    recoveredBlock7Block22Value4 := (recoveredBlock7Block22Value1) > (recoveredBlock7Block22Value3).
    recoveredBlock7Block22Value4
].
    recoveredBlock7Value5 := (recoveredBlock7Value3) asSortedCollection: (recoveredBlock7Value4).
    ^recoveredBlock7Value5
].
    (recoveredValue1) cacheEditionsWhileExecuting: (recoveredValue2).
    ^self
! !

"lib.ic method 0x20010d88; bytecode file offset 0x4cdd8"
!SubApplication class methodsFor: 'recovered'!
addConfigurationExpression: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := EmLibrary.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) operationsInterface.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := [
    ^nil
].
    (recoveredValue2) applicationAddConfigExpressionFor: (self) newExpr: (recoveredValue3) ifUnable: (recoveredValue4).
    recoveredValue5 := (self) owningImage.
    recoveredValue6 := NlsCatEMc.
    recoveredValue7 := (recoveredValue6) residentMsg: ('MxEMc85').
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := (recoveredValue8) storeString.
    recoveredValue10 := (self) signature.
    recoveredValue11 := (recoveredValue7) bindWith: (recoveredValue9) with: (recoveredValue10).
    (recoveredValue5) logApplicationNotice: (recoveredValue11).
    ^self
! !

"lib.ic method 0x20011478; bytecode file offset 0x4d4c4"
!SubApplication class methodsFor: 'recovered'!
signatureFor: recoveredArg1 timeStamp: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) partsRecordFor: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) editionRecordClass.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) editionsDictionary.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) library.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) using: (recoveredStack1) from: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) isVersion.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 37].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := ' '.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) versionName.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) signature.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x200119ec; bytecode file offset 0x4da20"
!SubApplication class methodsFor: 'recovered'!
isClassVisible: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasController.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
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
            recoveredStack1 := (recoveredStack1) isPrivate.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) rootApplication.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) controller.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) rootApplication.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) rootApplication.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := (recoveredStack3) controller.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := (recoveredStack3) rootApplication.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 45] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) isBasedOn: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"lib.ic method 0x20011fe4; bytecode file offset 0x4e02c"
!SubApplication class methodsFor: 'recovered'!
deleteSubApplicationNamed: recoveredArg1 from: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := EmLibrary.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) operationsInterface.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := [
    ^false
].
    (recoveredValue2) applicationDeleteSubApplicationFor: (self) subAppName: (recoveredValue3) expr: (recoveredValue4) ifUnable: (recoveredValue5).
    recoveredValue6 := (self) owningImage.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := recoveredArg2.
    recoveredValue9 := (recoveredValue8) storeString.
    recoveredValue10 := (self) signature.
    recoveredValue11 := ('Deleted the subapplication %1 from the configuration %2 of %3') bindWith: (recoveredValue7) with: (recoveredValue9) with: (recoveredValue10).
    (recoveredValue6) logApplicationNotice: (recoveredValue11).
    ^true
! !

"lib.ic method 0x20012048; bytecode file offset 0x4e0d0"
!SubApplication class methodsFor: 'recovered'!
compatibleDeclareString
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := WriteStream.
    recoveredValue1 := Locale.
    recoveredValue2 := (recoveredValue1) current.
    recoveredValue3 := (recoveredValue2) preferredStringClass.
    recoveredValue4 := (recoveredValue3) new: (100).
    recoveredValue5 := (recoveredValue0) on: (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := EmClassDevelopment.
    recoveredValue7 := (recoveredValue6) imageBuilder.
    recoveredValue8 := (recoveredValue7) declarationsFor: (self).
    recoveredValue9 := [:recoveredBlock28Arg1 | 
    | recoveredBlock28Value0 recoveredBlock28Value1 recoveredBlock28Value2 |
    recoveredBlock28Value0 := recoveredBlock28Arg1.
    recoveredBlock28Value1 := recoveredLocal1.
    recoveredBlock28Value2 := (recoveredBlock28Value0) compatibleDeclareOn: (recoveredBlock28Value1).
    recoveredBlock28Value2
].
    (recoveredValue8) do: (recoveredValue9).
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := (recoveredValue10) contents.
    ^recoveredValue11
! !

"lib.ic method 0x20012080; bytecode file offset 0x4e0d0"
!SubApplication class methodsFor: 'recovered'!
compatibleUndeclareString
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := WriteStream.
    recoveredValue1 := Locale.
    recoveredValue2 := (recoveredValue1) current.
    recoveredValue3 := (recoveredValue2) preferredStringClass.
    recoveredValue4 := (recoveredValue3) new: (100).
    recoveredValue5 := (recoveredValue0) on: (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := EmClassDevelopment.
    recoveredValue7 := (recoveredValue6) imageBuilder.
    recoveredValue8 := (recoveredValue7) declarationsFor: (self).
    recoveredValue9 := [:recoveredBlock28Arg1 | 
    | recoveredBlock28Value0 recoveredBlock28Value1 recoveredBlock28Value2 |
    recoveredBlock28Value0 := recoveredBlock28Arg1.
    recoveredBlock28Value1 := recoveredLocal1.
    recoveredBlock28Value2 := (recoveredBlock28Value0) compatibleUndeclareOn: (recoveredBlock28Value1).
    recoveredBlock28Value2
].
    (recoveredValue8) do: (recoveredValue9).
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := (recoveredValue10) contents.
    ^recoveredValue11
! !

"lib.ic method 0x200127d4; bytecode file offset 0x4e81c"
!SubApplication class methodsFor: 'recovered'!
editionRecord
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := EmLibraryCache.
    recoveredValue1 := (recoveredValue0) current.
    recoveredValue2 := (recoveredValue1) appEditionRecordFor: (self).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := Dictionary.
    recoveredValue4 := (recoveredValue3) new.
    privileges := recoveredValue4.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (recoveredValue5) class.
    recoveredValue7 := (recoveredValue6) privilegeNames.
    recoveredValue8 := [:recoveredBlock25Arg1 | 
    | recoveredBlock25Value0 recoveredBlock25Value1 recoveredBlock25Value2 recoveredBlock25Value3 recoveredBlock25Value4 recoveredBlock25Value5 |
    recoveredBlock25Value0 := privileges.
    recoveredBlock25Value1 := recoveredBlock25Arg1.
    recoveredBlock25Value2 := recoveredLocal1.
    recoveredBlock25Value3 := recoveredBlock25Arg1.
    recoveredBlock25Value4 := (recoveredBlock25Value2) statusFor: (recoveredBlock25Value3).
    recoveredBlock25Value5 := (recoveredBlock25Value0) at: (recoveredBlock25Value1) put: (recoveredBlock25Value4).
    recoveredBlock25Value5
].
    (recoveredValue7) do: (recoveredValue8).
    recoveredValue9 := recoveredLocal1.
    ^recoveredValue9
! !

"lib.ic method 0x20012acc; bytecode file offset 0x4eb0c"
!SubApplication class methodsFor: 'recovered'!
canReleaseEachClassIn: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) editionRecord.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEdition.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 49].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) areReleased: (recoveredStack2) accordingTo: (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 49].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) ownerOfEachIn: (recoveredStack1) accordingTo: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 49].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := EmUser.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) current.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20012cf8; bytecode file offset 0x4ed40"
!SubApplication class methodsFor: 'recovered'!
addSubApplication: recoveredArg1 to: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := EmLibrary.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) operationsInterface.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := [
    ^nil
].
    (recoveredValue2) applicationAddSubApp: (recoveredValue3) toApp: (self) inExpr: (recoveredValue4) ifUnable: (recoveredValue5).
    recoveredValue6 := (self) owningImage.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue7) signature.
    recoveredValue9 := recoveredArg2.
    recoveredValue10 := (recoveredValue9) storeString.
    recoveredValue11 := (self) signature.
    recoveredValue12 := ('Added the subapplication %1 to the configuration %2 of %3') bindWith: (recoveredValue8) with: (recoveredValue10) with: (recoveredValue11).
    (recoveredValue6) logApplicationNotice: (recoveredValue12).
    ^self
! !

"lib.ic method 0x20012d5c; bytecode file offset 0x4eda4"
!SubApplication class methodsFor: 'recovered'!
copyConfigurationExpression: recoveredArg1 toCreate: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := EmLibrary.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) operationsInterface.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := [
    ^nil
].
    (recoveredValue2) applicationCopyConfigExpressionFor: (self) existingExpr: (recoveredValue3) newExpr: (recoveredValue4) ifUnable: (recoveredValue5).
    recoveredValue6 := (self) owningImage.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue7) storeString.
    recoveredValue9 := recoveredArg2.
    recoveredValue10 := (recoveredValue9) storeString.
    recoveredValue11 := (self) signature.
    recoveredValue12 := ('Copied the configuration %1 to create %2 for %3') bindWith: (recoveredValue8) with: (recoveredValue10) with: (recoveredValue11).
    (recoveredValue6) logApplicationNotice: (recoveredValue12).
    ^self
! !

"lib.ic method 0x20012dc0; bytecode file offset 0x4ee08"
!SubApplication class methodsFor: 'recovered'!
releaseSubApplication: recoveredArg1 in: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := EmLibrary.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) operationsInterface.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := [
    ^nil
].
    (recoveredValue2) applicationReleaseSubApplicationFor: (self) subApp: (recoveredValue3) expr: (recoveredValue4) ifUnable: (recoveredValue5).
    recoveredValue6 := (self) owningImage.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue7) signature.
    recoveredValue9 := recoveredArg2.
    recoveredValue10 := (recoveredValue9) storeString.
    recoveredValue11 := (self) signature.
    recoveredValue12 := ('Released the subapplication %1 in the configuration %2 of %3') bindWith: (recoveredValue8) with: (recoveredValue10) with: (recoveredValue11).
    (recoveredValue6) logApplicationNotice: (recoveredValue12).
    ^self
! !

"lib.ic method 0x200130e8; bytecode file offset 0x4f124"
!SubApplication class methodsFor: 'recovered'!
moveAllVersionsOf: recoveredArg1 in: recoveredArg2 from: recoveredArg3 to: recoveredArg4
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredPC recoveredStep |
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
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1 == recoveredStack2) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) becomeDefault.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack6 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack5 := (recoveredStack5) partsRecordFor: (recoveredStack6).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack6 := Dictionary.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack6 := (recoveredStack6) new.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack7 := Dictionary.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack7 := (recoveredStack7) new.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack8 := Dictionary.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack8 := (recoveredStack8) new.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack9 := Dictionary.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack9 := (recoveredStack9) new.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack10 := false.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) moveAllVersionsOf: (recoveredStack1) in: (recoveredStack2) from: (recoveredStack3) to: (recoveredStack4) using: (recoveredStack5) skipClassesIn: (recoveredStack6) mapping: (recoveredStack7) removeSourceStructure: (recoveredStack8) removeCommentStructure: (recoveredStack9) forgetStoredObjects: (recoveredStack10).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) becomeDefault.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20013380; bytecode file offset 0x4f3c0"
!SubApplication class methodsFor: 'recovered'!
deleteClasses: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isVersion.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := EmSortedHierarchy.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) sort: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := [:recoveredBlock23Arg1 | 
    | recoveredBlock23Stack0 recoveredBlock23Stack1 recoveredBlock23Stack2 recoveredBlock23Stack3 recoveredBlock23Stack4 recoveredBlock23PC recoveredBlock23Step recoveredBlock23Done recoveredBlock23Result |
    recoveredBlock23Stack0 := self.
    recoveredBlock23PC := 30.
    recoveredBlock23Done := false.
    [recoveredBlock23Done not] whileTrue: [
        recoveredBlock23Step := recoveredBlock23PC.
        recoveredBlock23Step = 30 ifTrue: [
            recoveredBlock23Stack1 := nil.
            recoveredBlock23PC := 31.
        ].
        recoveredBlock23Step = 31 ifTrue: [
            recoveredBlock23Stack2 := recoveredBlock23Arg1.
            recoveredBlock23PC := 32.
        ].
        recoveredBlock23Step = 32 ifTrue: [
            recoveredBlock23Stack3 := self.
            recoveredBlock23PC := 33.
        ].
        recoveredBlock23Step = 33 ifTrue: [
            recoveredBlock23Stack2 := (recoveredBlock23Stack2) deleteFrom: (recoveredBlock23Stack3).
            recoveredBlock23PC := 35.
        ].
        recoveredBlock23Step = 35 ifTrue: [
            (recoveredBlock23Stack2) ifTrue: [recoveredBlock23PC := 45] ifFalse: [recoveredBlock23PC := 38].
        ].
        recoveredBlock23Step = 38 ifTrue: [
            recoveredBlock23PC := 39.
        ].
        recoveredBlock23Step = 39 ifTrue: [
            recoveredBlock23Stack1 := recoveredLocal1.
            recoveredBlock23PC := 42.
        ].
        recoveredBlock23Step = 42 ifTrue: [
            recoveredBlock23Stack2 := recoveredBlock23Arg1.
            recoveredBlock23PC := 43.
        ].
        recoveredBlock23Step = 43 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) add: (recoveredBlock23Stack2).
            recoveredBlock23PC := 45.
        ].
        recoveredBlock23Step = 45 ifTrue: [
            recoveredBlock23Result := recoveredBlock23Stack1.
            recoveredBlock23Done := true.
        ].
    ].
    recoveredBlock23Result
].
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) reverseDo: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x200133dc; bytecode file offset 0x4f41c"
!SubApplication class methodsFor: 'recovered'!
removeClasses: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) canBeChangedLocally.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := EmSortedHierarchy.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) sort: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := [:recoveredBlock23Arg1 | 
    | recoveredBlock23Stack0 recoveredBlock23Stack1 recoveredBlock23Stack2 recoveredBlock23Stack3 recoveredBlock23Stack4 recoveredBlock23PC recoveredBlock23Step recoveredBlock23Done recoveredBlock23Result |
    recoveredBlock23Stack0 := self.
    recoveredBlock23PC := 30.
    recoveredBlock23Done := false.
    [recoveredBlock23Done not] whileTrue: [
        recoveredBlock23Step := recoveredBlock23PC.
        recoveredBlock23Step = 30 ifTrue: [
            recoveredBlock23Stack1 := nil.
            recoveredBlock23PC := 31.
        ].
        recoveredBlock23Step = 31 ifTrue: [
            recoveredBlock23Stack2 := recoveredBlock23Arg1.
            recoveredBlock23PC := 32.
        ].
        recoveredBlock23Step = 32 ifTrue: [
            recoveredBlock23Stack3 := self.
            recoveredBlock23PC := 33.
        ].
        recoveredBlock23Step = 33 ifTrue: [
            recoveredBlock23Stack2 := (recoveredBlock23Stack2) removeFrom: (recoveredBlock23Stack3).
            recoveredBlock23PC := 35.
        ].
        recoveredBlock23Step = 35 ifTrue: [
            (recoveredBlock23Stack2) ifTrue: [recoveredBlock23PC := 45] ifFalse: [recoveredBlock23PC := 38].
        ].
        recoveredBlock23Step = 38 ifTrue: [
            recoveredBlock23PC := 39.
        ].
        recoveredBlock23Step = 39 ifTrue: [
            recoveredBlock23Stack1 := recoveredLocal1.
            recoveredBlock23PC := 42.
        ].
        recoveredBlock23Step = 42 ifTrue: [
            recoveredBlock23Stack2 := recoveredBlock23Arg1.
            recoveredBlock23PC := 43.
        ].
        recoveredBlock23Step = 43 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) add: (recoveredBlock23Stack2).
            recoveredBlock23PC := 45.
        ].
        recoveredBlock23Step = 45 ifTrue: [
            recoveredBlock23Result := recoveredBlock23Stack1.
            recoveredBlock23Done := true.
        ].
    ].
    recoveredBlock23Result
].
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) reverseDo: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20013cc8; bytecode file offset 0x4fd0c"
!SubApplication class methodsFor: 'recovered'!
allLoadedClassesOwnedBy: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) allClassNamesOwnedBy: (recoveredValue2).
    recoveredValue4 := (recoveredValue3) asArray.
    recoveredValue5 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Stack0 recoveredBlock15Stack1 recoveredBlock15Stack2 recoveredBlock15Stack3 recoveredBlock15Stack4 recoveredBlock15PC recoveredBlock15Step recoveredBlock15Done recoveredBlock15Result |
    recoveredBlock15Stack0 := self.
    recoveredBlock15PC := 22.
    recoveredBlock15Done := false.
    [recoveredBlock15Done not] whileTrue: [
        recoveredBlock15Step := recoveredBlock15PC.
        recoveredBlock15Step = 22 ifTrue: [
            recoveredBlock15Stack1 := nil.
            recoveredBlock15PC := 23.
        ].
        recoveredBlock15Step = 23 ifTrue: [
            recoveredBlock15Stack2 := self.
            recoveredBlock15PC := 24.
        ].
        recoveredBlock15Step = 24 ifTrue: [
            recoveredBlock15Stack2 := (recoveredBlock15Stack2) owningImage.
            recoveredBlock15PC := 26.
        ].
        recoveredBlock15Step = 26 ifTrue: [
            recoveredBlock15Stack2 := (recoveredBlock15Stack2) globalNamespace.
            recoveredBlock15PC := 28.
        ].
        recoveredBlock15Step = 28 ifTrue: [
            recoveredBlock15Stack3 := recoveredBlock15Arg1.
            recoveredBlock15PC := 29.
        ].
        recoveredBlock15Step = 29 ifTrue: [
            recoveredBlock15Stack2 := (recoveredBlock15Stack2) classAt: (recoveredBlock15Stack3).
            recoveredBlock15PC := 31.
        ].
        recoveredBlock15Step = 31 ifTrue: [
            recoveredBlock15Stack3 := recoveredBlock15Stack2.
            recoveredBlock15PC := 32.
        ].
        recoveredBlock15Step = 32 ifTrue: [
            recoveredLocal1 := recoveredBlock15Stack3.
            recoveredBlock15PC := 35.
        ].
        recoveredBlock15Step = 35 ifTrue: [
            (recoveredBlock15Stack2 == nil) ifTrue: [recoveredBlock15PC := 47] ifFalse: [recoveredBlock15PC := 38].
        ].
        recoveredBlock15Step = 38 ifTrue: [
            recoveredBlock15PC := 39.
        ].
        recoveredBlock15Step = 39 ifTrue: [
            recoveredBlock15Stack1 := recoveredLocal2.
            recoveredBlock15PC := 42.
        ].
        recoveredBlock15Step = 42 ifTrue: [
            recoveredBlock15Stack2 := recoveredLocal1.
            recoveredBlock15PC := 45.
        ].
        recoveredBlock15Step = 45 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) add: (recoveredBlock15Stack2).
            recoveredBlock15PC := 47.
        ].
        recoveredBlock15Step = 47 ifTrue: [
            recoveredBlock15Result := recoveredBlock15Stack1.
            recoveredBlock15Done := true.
        ].
    ].
    recoveredBlock15Result
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := recoveredLocal2.
    ^recoveredValue6
! !

"lib.ic method 0x20015660; bytecode file offset 0x51698"
!SubApplication class methodsFor: 'recovered'!
toBeLoadedCode: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 'code:withCompatibleDeclarations:'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) respondsTo: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) code: (recoveredStack1) withCompatibleDeclarations: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := 'toBeLoaded'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := 247.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack4 := 246.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack5 := 293.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack6 := #().
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack7 := [
    ^false
].
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) inheritedUserFieldAt: (recoveredStack1) put: (recoveredStack2) userMustBeManagerTo: (recoveredStack3) noUserError: (recoveredStack4) mustBeEditionTo: (recoveredStack5) withParms: (recoveredStack6) ifUnable: (recoveredStack7).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x200156bc; bytecode file offset 0x516f4"
!SubApplication class methodsFor: 'recovered'!
wasRemovedCode: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 'code:withCompatibleDeclarations:'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) respondsTo: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) code: (recoveredStack1) withCompatibleDeclarations: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := 'wasRemoved'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := 249.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack4 := 248.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack5 := 294.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack6 := #().
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack7 := [
    ^false
].
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) inheritedUserFieldAt: (recoveredStack1) put: (recoveredStack2) userMustBeManagerTo: (recoveredStack3) noUserError: (recoveredStack4) mustBeEditionTo: (recoveredStack5) withParms: (recoveredStack6) ifUnable: (recoveredStack7).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x200161cc; bytecode file offset 0x52208"
!SubApplication class methodsFor: 'recovered'!
areReleased: recoveredArg1 accordingTo: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (recoveredValue0) releasedNamesAndTimeStamps.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Stack0 recoveredBlock14Stack1 recoveredBlock14Stack2 recoveredBlock14Stack3 recoveredBlock14Stack4 recoveredBlock14Stack5 recoveredBlock14Stack6 recoveredBlock14PC recoveredBlock14Step recoveredBlock14Done recoveredBlock14Result |
    recoveredBlock14Stack0 := self.
    recoveredBlock14PC := 20.
    recoveredBlock14Done := false.
    [recoveredBlock14Done not] whileTrue: [
        recoveredBlock14Step := recoveredBlock14PC.
        recoveredBlock14Step = 20 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Arg1.
            recoveredBlock14PC := 21.
        ].
        recoveredBlock14Step = 21 ifTrue: [
            recoveredBlock14Stack2 := self.
            recoveredBlock14PC := 22.
        ].
        recoveredBlock14Step = 22 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) timeStampIn: (recoveredBlock14Stack2).
            recoveredBlock14PC := 23.
        ].
        recoveredBlock14Step = 23 ifTrue: [
            recoveredLocal1 := recoveredBlock14Stack1.
            recoveredBlock14PC := 26.
        ].
        recoveredBlock14Step = 26 ifTrue: [
            recoveredBlock14Stack1 := recoveredLocal1.
            recoveredBlock14PC := 29.
        ].
        recoveredBlock14Step = 29 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) isVersion.
            recoveredBlock14PC := 30.
        ].
        recoveredBlock14Step = 30 ifTrue: [
            (recoveredBlock14Stack1) ifTrue: [recoveredBlock14PC := 36] ifFalse: [recoveredBlock14PC := 34].
        ].
        recoveredBlock14Step = 34 ifTrue: [
            recoveredBlock14Stack1 := false.
            recoveredBlock14PC := 35.
        ].
        recoveredBlock14Step = 35 ifTrue: [
            ^recoveredBlock14Stack1
        ].
        recoveredBlock14Step = 36 ifTrue: [
            recoveredBlock14Stack1 := nil.
            recoveredBlock14PC := 37.
        ].
        recoveredBlock14Step = 37 ifTrue: [
            recoveredBlock14Stack2 := recoveredLocal1.
            recoveredBlock14PC := 40.
        ].
        recoveredBlock14Step = 40 ifTrue: [
            recoveredBlock14Stack3 := recoveredLocal2.
            recoveredBlock14PC := 43.
        ].
        recoveredBlock14Step = 43 ifTrue: [
            recoveredBlock14Stack4 := recoveredBlock14Arg1.
            recoveredBlock14PC := 44.
        ].
        recoveredBlock14Step = 44 ifTrue: [
            recoveredBlock14Stack4 := (recoveredBlock14Stack4) symbol.
            recoveredBlock14PC := 45.
        ].
        recoveredBlock14Step = 45 ifTrue: [
            recoveredBlock14Stack5 := [].
            recoveredBlock14PC := 47.
        ].
        recoveredBlock14Step = 47 ifTrue: [
            recoveredBlock14Stack3 := (recoveredBlock14Stack3) at: (recoveredBlock14Stack4) ifAbsent: (recoveredBlock14Stack5).
            recoveredBlock14PC := 49.
        ].
        recoveredBlock14Step = 49 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) = (recoveredBlock14Stack3).
            recoveredBlock14PC := 50.
        ].
        recoveredBlock14Step = 50 ifTrue: [
            (recoveredBlock14Stack2) ifTrue: [recoveredBlock14PC := 57] ifFalse: [recoveredBlock14PC := 54].
        ].
        recoveredBlock14Step = 54 ifTrue: [
            recoveredBlock14PC := 55.
        ].
        recoveredBlock14Step = 55 ifTrue: [
            recoveredBlock14Stack1 := false.
            recoveredBlock14PC := 56.
        ].
        recoveredBlock14Step = 56 ifTrue: [
            ^recoveredBlock14Stack1
        ].
        recoveredBlock14Step = 57 ifTrue: [
            recoveredBlock14Result := recoveredBlock14Stack1.
            recoveredBlock14Done := true.
        ].
    ].
    recoveredBlock14Result
].
    (recoveredValue2) do: (recoveredValue3).
    ^true
! !

"lib.ic method 0x20016718; bytecode file offset 0x52774"
!SubApplication class methodsFor: 'recovered'!
reserveClassName: recoveredArg1 ifUnable: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) owningImage.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) globalNamespace.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) classAt: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) defined.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) extended.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := EmImageSupport.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorReporter.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := 115.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack4 := (recoveredStack4) signature.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) reportError: (recoveredStack1) withParms: (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := 'PubliclyDefined'.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) reserveClassName: (recoveredStack1) as: (recoveredStack2) ifUnable: (recoveredStack3).
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

"lib.ic method 0x200174c0; bytecode file offset 0x53528"
!SubApplication class methodsFor: 'recovered'!
newEdition
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := NlsCatEMc.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 'MxEMc91'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) residentMsg: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := '%1'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := (recoveredStack3) name.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := [
    ^false
].
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) allowedTo: (recoveredStack1) ifNot: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := EmLibrary.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) operationsInterface.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := [
    ^false
].
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) applicationNewEditionFor: (recoveredStack1) ifUnable: (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) scratchEditionStatus: (recoveredStack1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) owningImage.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := 'Made %1'.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := (recoveredStack2) signature.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0) logApplicationNotice: (recoveredStack1).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x200176dc; bytecode file offset 0x53724"
!SubApplication class methodsFor: 'recovered'!
availableClassNames
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := Set.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) defined.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 |
    recoveredBlock11Value0 := recoveredLocal1.
    recoveredBlock11Value1 := recoveredBlock11Arg1.
    recoveredBlock11Value2 := (recoveredBlock11Value1) symbol.
    recoveredBlock11Value3 := (recoveredBlock11Value0) add: (recoveredBlock11Value2).
    recoveredBlock11Value3
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := (self) extended.
    recoveredValue5 := [:recoveredBlock31Arg1 | 
    | recoveredBlock31Value0 recoveredBlock31Value1 recoveredBlock31Value2 recoveredBlock31Value3 |
    recoveredBlock31Value0 := recoveredLocal1.
    recoveredBlock31Value1 := recoveredBlock31Arg1.
    recoveredBlock31Value2 := (recoveredBlock31Value1) symbol.
    recoveredBlock31Value3 := (recoveredBlock31Value0) add: (recoveredBlock31Value2).
    recoveredBlock31Value3
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := (self) allClassNames.
    recoveredValue7 := [:recoveredBlock51Arg1 | 
    | recoveredBlock51Value0 recoveredBlock51Value1 recoveredBlock51Value2 |
    recoveredBlock51Value0 := recoveredLocal1.
    recoveredBlock51Value1 := recoveredBlock51Arg1.
    recoveredBlock51Value2 := (recoveredBlock51Value0) includes: (recoveredBlock51Value1).
    recoveredBlock51Value2
].
    recoveredValue8 := (recoveredValue6) reject: (recoveredValue7).
    ^recoveredValue8
! !

"lib.ic method 0x2001a420; bytecode file offset 0x56480"
!SubApplication class methodsFor: 'recovered'!
primitiveRemoveFromImageIfNot: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'wasRemovedCode'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) respondsTo: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) wasRemovedCode.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := ''.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            super removeFromImageIfNot: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 79].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) globalNamespace.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := 'Compiler'.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := [
    ^self
].
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) classAt: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := EmEvaluationRedirectionForLoadedCode.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack3 := [:recoveredBlock62Arg1 | 
    | recoveredBlock62Value0 recoveredBlock62Value1 recoveredBlock62Value2 recoveredBlock62Value3 |
    recoveredBlock62Value0 := (self) owningImage.
    recoveredBlock62Value1 := (recoveredBlock62Value0) errorLog.
    recoveredBlock62Value2 := recoveredBlock62Arg1.
    recoveredBlock62Value3 := (recoveredBlock62Value1) compilerError: (recoveredBlock62Value2).
    recoveredBlock62Value3
].
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0) evaluate: (recoveredStack1) for: (recoveredStack2) ifFail: (recoveredStack3).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2001b5bc; bytecode file offset 0x5761c"
!SubApplication class methodsFor: 'recovered'!
removeSubApplication: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) signature.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := NlsCatEMc.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 'MxEMc99'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) residentMsg: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := '%1'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := (recoveredStack3) name.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := [
    ^false
].
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) allowedTo: (recoveredStack1) ifNot: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) primitiveRemove.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) subApplications.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyWithout: (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) primitiveSubApplications: (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) owningImage.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) loadedSubApplicationsHaveChanged.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) owningImage.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := 'Removed the subapplication %1 from %2'.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack3 := (recoveredStack3) signature.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0) logApplicationNotice: (recoveredStack1).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredPC := 84.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) owningImage.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0) loadedSubApplicationsHaveChanged.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2001bbe0; bytecode file offset 0x57c3c"
!SubApplication class methodsFor: 'recovered'!
shadowsWithSubsFor: recoveredArg1
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
            recoveredStack2 := [:block28004cfcArg1 :block28004cfcArg2 | 
    | block28004cfcValue0 block28004cfcValue1 block28004cfcValue2 block28004cfcValue3 block28004cfcValue4 |
    block28004cfcValue0 := block28004cfcArg1.
    block28004cfcValue1 := (block28004cfcValue0) key.
    block28004cfcValue2 := block28004cfcArg2.
    block28004cfcValue3 := (block28004cfcValue2) key.
    block28004cfcValue4 := (block28004cfcValue1) > (block28004cfcValue3).
    block28004cfcValue4
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
            recoveredStack0 := (recoveredStack0) partsRecordFor: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) editionsDictionary.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) asDictionary.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := [:recoveredBlock37Arg1 | 
    | recoveredBlock37Value0 recoveredBlock37Value1 recoveredBlock37Value2 |
    recoveredBlock37Value0 := recoveredLocal2.
    recoveredBlock37Value1 := recoveredBlock37Arg1.
    recoveredBlock37Value2 := (recoveredBlock37Value0) add: (recoveredBlock37Value1).
    recoveredBlock37Value2
].
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) associationsDo: (recoveredStack1).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) asOrderedCollection.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := [:recoveredBlock58Arg1 | 
    | recoveredBlock58Value0 recoveredBlock58Value1 recoveredBlock58Value2 recoveredBlock58Value3 recoveredBlock58Value4 recoveredBlock58Value5 recoveredBlock58Value6 recoveredBlock58Value7 recoveredBlock58Value8 |
    recoveredBlock58Value0 := (self) shadowClass.
    recoveredBlock58Value1 := recoveredArg1.
    recoveredBlock58Value2 := recoveredBlock58Arg1.
    recoveredBlock58Value3 := (recoveredBlock58Value2) key.
    recoveredBlock58Value4 := recoveredBlock58Arg1.
    recoveredBlock58Value5 := (recoveredBlock58Value4) value.
    recoveredBlock58Value6 := recoveredLocal1.
    recoveredBlock58Value7 := (recoveredBlock58Value6) library.
    recoveredBlock58Value8 := (recoveredBlock58Value0) named: (recoveredBlock58Value1) timeStamp: (recoveredBlock58Value3) cacheSubs: (true) infoAt: (recoveredBlock58Value5) from: (recoveredBlock58Value7).
    recoveredBlock58Value8
].
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2001be3c; bytecode file offset 0x57e88"
!SubApplication class methodsFor: 'recovered'!
releaseClass: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) isReallyVersionIn: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 12].
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
            recoveredStack2 := 113.
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
            recoveredStack5 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack4 := (recoveredStack4) signatureIn: (recoveredStack5).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) reportError: (recoveredStack2) withParms: (recoveredStack3).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) symbol.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := [:recoveredBlock37Arg1 | 
    | recoveredBlock37Value0 recoveredBlock37Value1 recoveredBlock37Value2 recoveredBlock37Value3 |
    recoveredBlock37Value0 := recoveredBlock37Arg1.
    recoveredBlock37Value1 := recoveredArg1.
    recoveredBlock37Value2 := (recoveredBlock37Value1) timeStampIn: (self).
    recoveredBlock37Value3 := (recoveredBlock37Value0) timeStamp: (recoveredBlock37Value2).
    recoveredBlock37Value3
].
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := [
    ^nil
].
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack4 := 319.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack5 := 320.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack6 := 321.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack7 := Array.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack8 := recoveredArg1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack8 := (recoveredStack8) symbol.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack7 := (recoveredStack7) with: (recoveredStack8).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack0) updateEntryNamed: (recoveredStack1) with: (recoveredStack2) ifUnable: (recoveredStack3) notEditionError: (recoveredStack4) notDefinedError: (recoveredStack5) notOwnerError: (recoveredStack6) errorArguments: (recoveredStack7).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2001c420; bytecode file offset 0x5846c"
!SubApplication class methodsFor: 'recovered'!
ownerOfEachIn: recoveredArg1 accordingTo: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (recoveredValue0) namesAndOwners.
    recoveredLocal4 := recoveredValue1.
    recoveredValue2 := Set.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal3 := recoveredValue3.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := [:recoveredBlock20Arg1 | 
    | recoveredBlock20Value0 recoveredBlock20Value1 recoveredBlock20Value2 recoveredBlock20Value3 recoveredBlock20Value4 recoveredBlock20Value5 recoveredBlock20Value6 |
    recoveredBlock20Value0 := recoveredLocal3.
    recoveredBlock20Value1 := recoveredLocal4.
    recoveredBlock20Value2 := recoveredBlock20Arg1.
    recoveredBlock20Value3 := (recoveredBlock20Value2) symbol.
    recoveredBlock20Value4 := [].
    recoveredBlock20Value5 := (recoveredBlock20Value1) at: (recoveredBlock20Value3) ifAbsent: (recoveredBlock20Value4).
    recoveredBlock20Value6 := (recoveredBlock20Value0) add: (recoveredBlock20Value5).
    recoveredBlock20Value6
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := OrderedCollection.
    recoveredValue7 := (recoveredValue6) new.
    recoveredLocal2 := recoveredValue7.
    recoveredValue8 := recoveredLocal3.
    recoveredValue9 := [:recoveredBlock52Arg1 | 
    | recoveredBlock52Stack0 recoveredBlock52Stack1 recoveredBlock52Stack2 recoveredBlock52Stack3 recoveredBlock52Stack4 recoveredBlock52Stack5 recoveredBlock52PC recoveredBlock52Step recoveredBlock52Done recoveredBlock52Result |
    recoveredBlock52Stack0 := self.
    recoveredBlock52PC := 58.
    recoveredBlock52Done := false.
    [recoveredBlock52Done not] whileTrue: [
        recoveredBlock52Step := recoveredBlock52PC.
        recoveredBlock52Step = 58 ifTrue: [
            recoveredBlock52Stack1 := nil.
            recoveredBlock52PC := 59.
        ].
        recoveredBlock52Step = 59 ifTrue: [
            recoveredBlock52Stack2 := EmUser.
            recoveredBlock52PC := 61.
        ].
        recoveredBlock52Step = 61 ifTrue: [
            recoveredBlock52Stack3 := recoveredBlock52Arg1.
            recoveredBlock52PC := 62.
        ].
        recoveredBlock52Step = 62 ifTrue: [
            recoveredBlock52Stack4 := [].
            recoveredBlock52PC := 64.
        ].
        recoveredBlock52Step = 64 ifTrue: [
            recoveredBlock52Stack2 := (recoveredBlock52Stack2) called: (recoveredBlock52Stack3) ifAbsent: (recoveredBlock52Stack4).
            recoveredBlock52PC := 66.
        ].
        recoveredBlock52Step = 66 ifTrue: [
            recoveredBlock52Stack3 := recoveredBlock52Stack2.
            recoveredBlock52PC := 67.
        ].
        recoveredBlock52Step = 67 ifTrue: [
            recoveredLocal1 := recoveredBlock52Stack3.
            recoveredBlock52PC := 70.
        ].
        recoveredBlock52Step = 70 ifTrue: [
            (recoveredBlock52Stack2 == nil) ifTrue: [recoveredBlock52PC := 83] ifFalse: [recoveredBlock52PC := 74].
        ].
        recoveredBlock52Step = 74 ifTrue: [
            recoveredBlock52PC := 75.
        ].
        recoveredBlock52Step = 75 ifTrue: [
            recoveredBlock52Stack1 := recoveredLocal2.
            recoveredBlock52PC := 78.
        ].
        recoveredBlock52Step = 78 ifTrue: [
            recoveredBlock52Stack2 := recoveredLocal1.
            recoveredBlock52PC := 81.
        ].
        recoveredBlock52Step = 81 ifTrue: [
            recoveredBlock52Stack1 := (recoveredBlock52Stack1) add: (recoveredBlock52Stack2).
            recoveredBlock52PC := 83.
        ].
        recoveredBlock52Step = 83 ifTrue: [
            recoveredBlock52Result := recoveredBlock52Stack1.
            recoveredBlock52Done := true.
        ].
    ].
    recoveredBlock52Result
].
    (recoveredValue8) do: (recoveredValue9).
    recoveredValue10 := recoveredLocal2.
    ^recoveredValue10
! !

"lib.ic method 0x2001ca94; bytecode file offset 0x58af8"
!SubApplication class methodsFor: 'recovered'!
purgedEditionsFor: recoveredArg1
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
            recoveredStack2 := [:block28004d68Arg1 :block28004d68Arg2 | 
    | block28004d68Value0 block28004d68Value1 block28004d68Value2 block28004d68Value3 block28004d68Value4 |
    block28004d68Value0 := block28004d68Arg1.
    block28004d68Value1 := (block28004d68Value0) key.
    block28004d68Value2 := block28004d68Arg2.
    block28004d68Value3 := (block28004d68Value2) key.
    block28004d68Value4 := (block28004d68Value1) > (block28004d68Value3).
    block28004d68Value4
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
            recoveredStack0 := (recoveredStack0) partsRecordClass.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) purgedRootDictionary.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := (recoveredStack2) partsRecordClass.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) obtainRecordAt: (recoveredStack1) ofType: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) editionsDictionary.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) asDictionary.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := [:recoveredBlock44Arg1 | 
    | recoveredBlock44Value0 recoveredBlock44Value1 recoveredBlock44Value2 |
    recoveredBlock44Value0 := recoveredLocal2.
    recoveredBlock44Value1 := recoveredBlock44Arg1.
    recoveredBlock44Value2 := (recoveredBlock44Value0) add: (recoveredBlock44Value1).
    recoveredBlock44Value2
].
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) associationsDo: (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) asOrderedCollection.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := [:recoveredBlock64Arg1 | 
    | recoveredBlock64Value0 recoveredBlock64Value1 recoveredBlock64Value2 recoveredBlock64Value3 recoveredBlock64Value4 recoveredBlock64Value5 recoveredBlock64Value6 recoveredBlock64Value7 recoveredBlock64Value8 |
    recoveredBlock64Value0 := (self) shadowClass.
    recoveredBlock64Value1 := recoveredArg1.
    recoveredBlock64Value2 := recoveredBlock64Arg1.
    recoveredBlock64Value3 := (recoveredBlock64Value2) key.
    recoveredBlock64Value4 := recoveredBlock64Arg1.
    recoveredBlock64Value5 := (recoveredBlock64Value4) value.
    recoveredBlock64Value6 := recoveredLocal1.
    recoveredBlock64Value7 := (recoveredBlock64Value6) library.
    recoveredBlock64Value8 := (recoveredBlock64Value0) named: (recoveredBlock64Value1) timeStamp: (recoveredBlock64Value3) cacheSubs: (false) infoAt: (recoveredBlock64Value5) from: (recoveredBlock64Value7).
    recoveredBlock64Value8
].
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2001d11c; bytecode file offset 0x59180"
!SubApplication class methodsFor: 'recovered'!
reportPrimitiveMethodPathsOn: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) classes.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 recoveredBlock5Value6 recoveredBlock5Value7 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) class.
    recoveredBlock5Value2 := (recoveredBlock5Value1) methodsIn: (self).
    recoveredBlock5Value3 := recoveredBlock5Arg1.
    recoveredBlock5Value4 := (recoveredBlock5Value3) methodsIn: (self).
    recoveredBlock5Value5 := (recoveredBlock5Value2) , (recoveredBlock5Value4).
    recoveredBlock5Value6 := [:recoveredBlock5Block20Arg1 | 
    | recoveredBlock5Block20Stack0 recoveredBlock5Block20Stack1 recoveredBlock5Block20Stack2 recoveredBlock5Block20Stack3 recoveredBlock5Block20Stack4 recoveredBlock5Block20PC recoveredBlock5Block20Step recoveredBlock5Block20Done recoveredBlock5Block20Result |
    recoveredBlock5Block20Stack0 := nil.
    recoveredBlock5Block20PC := 26.
    recoveredBlock5Block20Done := false.
    [recoveredBlock5Block20Done not] whileTrue: [
        recoveredBlock5Block20Step := recoveredBlock5Block20PC.
        recoveredBlock5Block20Step = 26 ifTrue: [
            recoveredBlock5Block20Stack1 := nil.
            recoveredBlock5Block20PC := 27.
        ].
        recoveredBlock5Block20Step = 27 ifTrue: [
            recoveredBlock5Block20Stack2 := recoveredBlock5Block20Arg1.
            recoveredBlock5Block20PC := 28.
        ].
        recoveredBlock5Block20Step = 28 ifTrue: [
            recoveredBlock5Block20Stack2 := (recoveredBlock5Block20Stack2) isPrimitive.
            recoveredBlock5Block20PC := 30.
        ].
        recoveredBlock5Block20Step = 30 ifTrue: [
            (recoveredBlock5Block20Stack2) ifTrue: [recoveredBlock5Block20PC := 34] ifFalse: [recoveredBlock5Block20PC := 91].
        ].
        recoveredBlock5Block20Step = 34 ifTrue: [
            recoveredBlock5Block20PC := 35.
        ].
        recoveredBlock5Block20Step = 35 ifTrue: [
            recoveredBlock5Block20Stack1 := recoveredArg1.
            recoveredBlock5Block20PC := 38.
        ].
        recoveredBlock5Block20Step = 38 ifTrue: [
            (recoveredBlock5Block20Stack1) cr.
            recoveredBlock5Block20PC := 40.
        ].
        recoveredBlock5Block20Step = 40 ifTrue: [
            recoveredBlock5Block20Stack1 := recoveredBlock5Block20Arg1.
            recoveredBlock5Block20PC := 41.
        ].
        recoveredBlock5Block20Step = 41 ifTrue: [
            recoveredBlock5Block20Stack1 := (recoveredBlock5Block20Stack1) primitiveSourceVersion.
            recoveredBlock5Block20PC := 43.
        ].
        recoveredBlock5Block20Step = 43 ifTrue: [
            recoveredBlock5Block20Stack2 := recoveredBlock5Block20Stack1.
            recoveredBlock5Block20PC := 44.
        ].
        recoveredBlock5Block20Step = 44 ifTrue: [
            recoveredLocal1 := recoveredBlock5Block20Stack2.
            recoveredBlock5Block20PC := 47.
        ].
        recoveredBlock5Block20Step = 47 ifTrue: [
            recoveredBlock5Block20Stack1 := (recoveredBlock5Block20Stack1) isEmpty.
            recoveredBlock5Block20PC := 49.
        ].
        recoveredBlock5Block20Step = 49 ifTrue: [
            (recoveredBlock5Block20Stack1) ifTrue: [recoveredBlock5Block20PC := 52] ifFalse: [recoveredBlock5Block20PC := 72].
        ].
        recoveredBlock5Block20Step = 52 ifTrue: [
            recoveredBlock5Block20Stack1 := recoveredArg1.
            recoveredBlock5Block20PC := 55.
        ].
        recoveredBlock5Block20Step = 55 ifTrue: [
            recoveredBlock5Block20Stack2 := NlsCatEMc.
            recoveredBlock5Block20PC := 57.
        ].
        recoveredBlock5Block20Step = 57 ifTrue: [
            recoveredBlock5Block20Stack3 := 'MxEMc100'.
            recoveredBlock5Block20PC := 59.
        ].
        recoveredBlock5Block20Step = 59 ifTrue: [
            recoveredBlock5Block20Stack2 := (recoveredBlock5Block20Stack2) residentMsg: (recoveredBlock5Block20Stack3).
            recoveredBlock5Block20PC := 61.
        ].
        recoveredBlock5Block20Step = 61 ifTrue: [
            recoveredBlock5Block20Stack3 := recoveredBlock5Block20Arg1.
            recoveredBlock5Block20PC := 62.
        ].
        recoveredBlock5Block20Step = 62 ifTrue: [
            recoveredBlock5Block20Stack3 := (recoveredBlock5Block20Stack3) printString.
            recoveredBlock5Block20PC := 64.
        ].
        recoveredBlock5Block20Step = 64 ifTrue: [
            recoveredBlock5Block20Stack2 := (recoveredBlock5Block20Stack2) bindWith: (recoveredBlock5Block20Stack3).
            recoveredBlock5Block20PC := 66.
        ].
        recoveredBlock5Block20Step = 66 ifTrue: [
            recoveredBlock5Block20Stack1 := (recoveredBlock5Block20Stack1) nextPutAll: (recoveredBlock5Block20Stack2).
            recoveredBlock5Block20PC := 68.
        ].
        recoveredBlock5Block20Step = 68 ifTrue: [
            recoveredBlock5Block20PC := 91.
        ].
        recoveredBlock5Block20Step = 72 ifTrue: [
            recoveredBlock5Block20Stack1 := recoveredBlock5Block20Arg1.
            recoveredBlock5Block20PC := 73.
        ].
        recoveredBlock5Block20Step = 73 ifTrue: [
            recoveredBlock5Block20Stack2 := recoveredArg1.
            recoveredBlock5Block20PC := 76.
        ].
        recoveredBlock5Block20Step = 76 ifTrue: [
            (recoveredBlock5Block20Stack1) printOn: (recoveredBlock5Block20Stack2).
            recoveredBlock5Block20PC := 78.
        ].
        recoveredBlock5Block20Step = 78 ifTrue: [
            recoveredBlock5Block20Stack1 := recoveredArg1.
            recoveredBlock5Block20PC := 81.
        ].
        recoveredBlock5Block20Step = 81 ifTrue: [
            recoveredBlock5Block20Stack2 := recoveredBlock5Block20Stack1.
            recoveredBlock5Block20PC := 82.
        ].
        recoveredBlock5Block20Step = 82 ifTrue: [
            recoveredBlock5Block20Stack3 := ' -> '.
            recoveredBlock5Block20PC := 84.
        ].
        recoveredBlock5Block20Step = 84 ifTrue: [
            (recoveredBlock5Block20Stack2) nextPutAll: (recoveredBlock5Block20Stack3).
            recoveredBlock5Block20PC := 86.
        ].
        recoveredBlock5Block20Step = 86 ifTrue: [
            recoveredBlock5Block20Stack2 := recoveredLocal1.
            recoveredBlock5Block20PC := 89.
        ].
        recoveredBlock5Block20Step = 89 ifTrue: [
            recoveredBlock5Block20Stack1 := (recoveredBlock5Block20Stack1) nextPutAll: (recoveredBlock5Block20Stack2).
            recoveredBlock5Block20PC := 91.
        ].
        recoveredBlock5Block20Step = 91 ifTrue: [
            recoveredBlock5Block20Result := recoveredBlock5Block20Stack1.
            recoveredBlock5Block20Done := true.
        ].
    ].
    recoveredBlock5Block20Result
].
    recoveredBlock5Value7 := (recoveredBlock5Value5) do: (recoveredBlock5Value6).
    recoveredBlock5Value7
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"lib.ic method 0x2001d70c; bytecode file offset 0x59794"
!SubApplication class methodsFor: 'recovered'!
createInitialEditionFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := recoveredArg1.
    (self) addDefined: (recoveredValue0).
    recoveredValue1 := EmLibrary.
    recoveredValue2 := (recoveredValue1) default.
    recoveredValue3 := (recoveredValue2) operationsInterface.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) applicationAddInitialClassFor: (self) class: (recoveredValue4).
    recoveredValue5 := (self) owningImage.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) signatureIn: (self).
    recoveredValue8 := (self) signature.
    recoveredValue9 := ('Created %1 in %2') bindWith: (recoveredValue7) with: (recoveredValue8).
    (recoveredValue5) logClassNotice: (recoveredValue9).
    recoveredValue10 := (self) owningImage.
    recoveredValue11 := EmConstants.
    recoveredValue12 := ('EmNclassChangedCallback') asPoolKey.
    recoveredValue13 := (recoveredValue11) at: (recoveredValue12).
    recoveredValue14 := [
    | recoveredBlock48Value0 recoveredBlock48Value1 recoveredBlock48Value2 recoveredBlock48Value3 recoveredBlock48Value4 recoveredBlock48Value5 recoveredBlock48Value6 recoveredBlock48Value7 recoveredBlock48Value8 recoveredBlock48Value9 recoveredBlock48Value10 recoveredBlock48Value11 recoveredBlock48Value12 recoveredBlock48Value13 recoveredBlock48Value14 recoveredBlock48Value15 recoveredBlock48Value16 |
    recoveredBlock48Value0 := EmClassChangeCallbackData.
    recoveredBlock48Value1 := (recoveredBlock48Value0) new.
    recoveredBlock48Value2 := recoveredBlock48Value1.
    recoveredBlock48Value3 := recoveredArg1.
    recoveredBlock48Value4 := (recoveredBlock48Value3) name.
    (recoveredBlock48Value2) className: (recoveredBlock48Value4).
    recoveredBlock48Value5 := recoveredBlock48Value1.
    recoveredBlock48Value6 := recoveredArg1.
    recoveredBlock48Value7 := (recoveredBlock48Value6) controller.
    recoveredBlock48Value8 := (recoveredBlock48Value7) name.
    (recoveredBlock48Value5) applicationName: (recoveredBlock48Value8).
    recoveredBlock48Value9 := recoveredBlock48Value1.
    recoveredBlock48Value10 := EmConstants.
    recoveredBlock48Value11 := ('EMCAdded') asPoolKey.
    recoveredBlock48Value12 := (recoveredBlock48Value10) at: (recoveredBlock48Value11).
    recoveredBlock48Value13 := EmConstants.
    recoveredBlock48Value14 := ('EMCDirectDefinitionChange') asPoolKey.
    recoveredBlock48Value15 := (recoveredBlock48Value13) at: (recoveredBlock48Value14).
    recoveredBlock48Value16 := (recoveredBlock48Value12) | (recoveredBlock48Value15).
    (recoveredBlock48Value9) changeType: (recoveredBlock48Value16).
    recoveredBlock48Value1
].
    (recoveredValue10) deferCallbacks: (recoveredValue13) computedCallData: (recoveredValue14).
    ^self
! !

"lib.ic method 0x2001dd9c; bytecode file offset 0x59e10"
!SubApplication class methodsFor: 'recovered'!
findAllInconsistentClasses
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isVersion.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) isConsistent.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 41] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := EmImageSupport.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorReporter.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := 75.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := (recoveredStack3) name.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) logError: (recoveredStack1) withParms: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := EmLibraryCache.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) current.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock45Value0 recoveredBlock45Value1 recoveredBlock45Value2 |
    recoveredBlock45Value0 := (self) classes.
    recoveredBlock45Value1 := [:recoveredBlock45Block54Arg1 | 
    | recoveredBlock45Block54Stack0 recoveredBlock45Block54Stack1 recoveredBlock45Block54Stack2 recoveredBlock45Block54Stack3 recoveredBlock45Block54Stack4 recoveredBlock45Block54Stack5 recoveredBlock45Block54Stack6 recoveredBlock45Block54PC recoveredBlock45Block54Step recoveredBlock45Block54Done recoveredBlock45Block54Result |
    recoveredBlock45Block54Stack0 := self.
    recoveredBlock45Block54PC := 60.
    recoveredBlock45Block54Done := false.
    [recoveredBlock45Block54Done not] whileTrue: [
        recoveredBlock45Block54Step := recoveredBlock45Block54PC.
        recoveredBlock45Block54Step = 60 ifTrue: [
            recoveredBlock45Block54Stack1 := nil.
            recoveredBlock45Block54PC := 61.
        ].
        recoveredBlock45Block54Step = 61 ifTrue: [
            recoveredBlock45Block54Stack2 := recoveredBlock45Block54Arg1.
            recoveredBlock45Block54PC := 62.
        ].
        recoveredBlock45Block54Step = 62 ifTrue: [
            recoveredBlock45Block54Stack3 := self.
            recoveredBlock45Block54PC := 63.
        ].
        recoveredBlock45Block54Step = 63 ifTrue: [
            recoveredBlock45Block54Stack2 := (recoveredBlock45Block54Stack2) isVersionIn: (recoveredBlock45Block54Stack3).
            recoveredBlock45Block54PC := 65.
        ].
        recoveredBlock45Block54Step = 65 ifTrue: [
            (recoveredBlock45Block54Stack2) ifTrue: [recoveredBlock45Block54PC := 95] ifFalse: [recoveredBlock45Block54PC := 68].
        ].
        recoveredBlock45Block54Step = 68 ifTrue: [
            recoveredBlock45Block54PC := 69.
        ].
        recoveredBlock45Block54Step = 69 ifTrue: [
            recoveredBlock45Block54Stack1 := nil.
            recoveredBlock45Block54PC := 70.
        ].
        recoveredBlock45Block54Step = 70 ifTrue: [
            recoveredBlock45Block54Stack2 := recoveredBlock45Block54Arg1.
            recoveredBlock45Block54PC := 71.
        ].
        recoveredBlock45Block54Step = 71 ifTrue: [
            recoveredBlock45Block54Stack3 := self.
            recoveredBlock45Block54PC := 72.
        ].
        recoveredBlock45Block54Step = 72 ifTrue: [
            recoveredBlock45Block54Stack2 := (recoveredBlock45Block54Stack2) editionEntryIn: (recoveredBlock45Block54Stack3).
            recoveredBlock45Block54PC := 74.
        ].
        recoveredBlock45Block54Step = 74 ifTrue: [
            recoveredBlock45Block54Stack2 := (recoveredBlock45Block54Stack2) checkConsistency.
            recoveredBlock45Block54PC := 76.
        ].
        recoveredBlock45Block54Step = 76 ifTrue: [
            (recoveredBlock45Block54Stack2) ifTrue: [recoveredBlock45Block54PC := 95] ifFalse: [recoveredBlock45Block54PC := 80].
        ].
        recoveredBlock45Block54Step = 80 ifTrue: [
            recoveredBlock45Block54PC := 81.
        ].
        recoveredBlock45Block54Step = 81 ifTrue: [
            recoveredBlock45Block54Stack1 := recoveredLocal1.
            recoveredBlock45Block54PC := 84.
        ].
        recoveredBlock45Block54Step = 84 ifTrue: [
            recoveredBlock45Block54Stack2 := recoveredBlock45Block54Arg1.
            recoveredBlock45Block54PC := 85.
        ].
        recoveredBlock45Block54Step = 85 ifTrue: [
            recoveredBlock45Block54Stack3 := recoveredBlock45Block54Arg1.
            recoveredBlock45Block54PC := 86.
        ].
        recoveredBlock45Block54Step = 86 ifTrue: [
            recoveredBlock45Block54Stack4 := recoveredBlock45Block54Arg1.
            recoveredBlock45Block54PC := 87.
        ].
        recoveredBlock45Block54Step = 87 ifTrue: [
            recoveredBlock45Block54Stack5 := self.
            recoveredBlock45Block54PC := 88.
        ].
        recoveredBlock45Block54Step = 88 ifTrue: [
            recoveredBlock45Block54Stack4 := (recoveredBlock45Block54Stack4) timeStampIn: (recoveredBlock45Block54Stack5).
            recoveredBlock45Block54PC := 90.
        ].
        recoveredBlock45Block54Step = 90 ifTrue: [
            recoveredBlock45Block54Stack5 := self.
            recoveredBlock45Block54PC := 91.
        ].
        recoveredBlock45Block54Step = 91 ifTrue: [
            recoveredBlock45Block54Stack3 := (recoveredBlock45Block54Stack3) changesSince: (recoveredBlock45Block54Stack4) in: (recoveredBlock45Block54Stack5).
            recoveredBlock45Block54PC := 93.
        ].
        recoveredBlock45Block54Step = 93 ifTrue: [
            recoveredBlock45Block54Stack1 := (recoveredBlock45Block54Stack1) at: (recoveredBlock45Block54Stack2) put: (recoveredBlock45Block54Stack3).
            recoveredBlock45Block54PC := 95.
        ].
        recoveredBlock45Block54Step = 95 ifTrue: [
            recoveredBlock45Block54Result := recoveredBlock45Block54Stack1.
            recoveredBlock45Block54Done := true.
        ].
    ].
    recoveredBlock45Block54Result
].
    recoveredBlock45Value2 := (recoveredBlock45Value0) do: (recoveredBlock45Value1).
    recoveredBlock45Value2
].
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack0) cacheEditionsWhileExecuting: (recoveredStack1).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2001e6ec; bytecode file offset 0x5a74c"
!SubApplication class methodsFor: 'recovered'!
deleteClassName: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) symbol.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := EmImageSupport.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorReporter.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 163.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) reportError: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) removeReservedClassName: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := [:block28004e40Arg1 | 
    | block28004e40Value0 block28004e40Value1 block28004e40Value2 block28004e40Value3 block28004e40Value4 |
    block28004e40Value0 := block28004e40Arg1.
    block28004e40Value1 := block28004e40Value0.
    (block28004e40Value1) classType: ('Deleted').
    block28004e40Value2 := EmTimeStamp.
    block28004e40Value3 := (block28004e40Value2) undefined.
    block28004e40Value4 := (block28004e40Value0) timeStamp: (block28004e40Value3).
    block28004e40Value4
].
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack3 := [
    ^nil
].
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack4 := 310.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack5 := 311.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack6 := 312.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack7 := Array.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack8 := recoveredArg1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack7 := (recoveredStack7) with: (recoveredStack8).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0) updateEntryNamed: (recoveredStack1) with: (recoveredStack2) ifUnable: (recoveredStack3) notEditionError: (recoveredStack4) notDefinedError: (recoveredStack5) notOwnerError: (recoveredStack6) errorArguments: (recoveredStack7).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := [:recoveredBlock83Arg1 | 
    | recoveredBlock83Value0 recoveredBlock83Value1 recoveredBlock83Value2 recoveredBlock83Value3 recoveredBlock83Value4 |
    recoveredBlock83Value0 := recoveredBlock83Arg1.
    recoveredBlock83Value1 := recoveredArg1.
    recoveredBlock83Value2 := (recoveredBlock83Value1) symbol.
    recoveredBlock83Value3 := [
    ^nil
].
    recoveredBlock83Value4 := (recoveredBlock83Value0) forgetUserThatReleased: (recoveredBlock83Value2) ifUnable: (recoveredBlock83Value3).
    recoveredBlock83Value4
].
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack0) updateEdition: (recoveredStack1).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2001eaac; bytecode file offset 0x5ab28"
!SubApplication class methodsFor: 'recovered'!
move: recoveredArg1 from: recoveredArg2 to: recoveredArg3 removeSourceFrom: recoveredArg4 removeCommentsFrom: recoveredArg5
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) timeStampIn: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) isUndefined.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) isVersionIn: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := EmImageSupport.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorReporter.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := 104.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := Array.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack4 := (recoveredStack4) signatureIn: (recoveredStack5).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack5 := recoveredArg3.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack5 := (recoveredStack5) fullName.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack6 := (recoveredStack6) signature.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5) with: (recoveredStack6).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) logError: (recoveredStack2) withParms: (recoveredStack3).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := EmLibrary.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) default.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) operationsInterface.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack5 := recoveredArg3.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack6 := Association.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack7 := #().
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack8 := #().
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack6 := (recoveredStack6) key: (recoveredStack7) value: (recoveredStack8).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack7 := Association.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack8 := #().
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack9 := #().
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack7 := (recoveredStack7) key: (recoveredStack8) value: (recoveredStack9).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) moveClassFor: (recoveredStack2) class: (recoveredStack3) from: (recoveredStack4) to: (recoveredStack5) removeSourceFrom: (recoveredStack6) removeCommentsFrom: (recoveredStack7).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 111].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := (recoveredStack1) owningImage.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := 'Moved %1 in %2 from %3 to %4'.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack3 := (recoveredStack3) signatureIn: (recoveredStack4).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack4 := (recoveredStack4) symbol.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack5 := recoveredArg2.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack5 := (recoveredStack5) fullName.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack6 := recoveredArg3.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack6 := (recoveredStack6) fullName.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5) with: (recoveredStack6).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack1) logApplicationNotice: (recoveredStack2).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"lib.ic method 0x2001f08c; bytecode file offset 0x5b0fc"
!SubApplication class methodsFor: 'recovered'!
purgeFromLibrary: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) isApplication.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := NlsCatEMc.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := 'MxEMc96'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) residentMsg: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := NlsCatEMc.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := 'MxEMc97'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) residentMsg: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) owningImage.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) partsRecordClass.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) purge: (recoveredStack1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 81] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) isApplication.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := NlsCatEMc.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := 'MxEMc94'.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) residentMsg: (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredPC := 70.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := NlsCatEMc.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := 'MxEMc95'.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) residentMsg: (recoveredStack1).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) owningImage.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) isApplication.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 96].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := EmLibraryCache.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := (recoveredStack0) current.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack0) flushEntriesForApplicationNamed: (recoveredStack1).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredPC := 103.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := EmLibraryCache.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := (recoveredStack0) current.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack0) flushEntriesForSubApplicationNamed: (recoveredStack1).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := (recoveredStack0) owningImage.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := 'Purged all editions of %1 from the library.'.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack0) logApplicationNotice: (recoveredStack1).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2001fdf4; bytecode file offset 0x5be5c"
!SubApplication class methodsFor: 'recovered'!
isConfigurationConsistent: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredLocal2 := true.
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) releasedSubApplicationsUsing: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) subApplications.
    recoveredValue3 := [:recoveredBlock17Arg1 | 
    | recoveredBlock17Stack0 recoveredBlock17Stack1 recoveredBlock17Stack2 recoveredBlock17Stack3 recoveredBlock17Stack4 recoveredBlock17Stack5 recoveredBlock17Stack6 recoveredBlock17PC recoveredBlock17Step recoveredBlock17Done recoveredBlock17Result |
    recoveredBlock17Stack0 := self.
    recoveredBlock17PC := 24.
    recoveredBlock17Done := false.
    [recoveredBlock17Done not] whileTrue: [
        recoveredBlock17Step := recoveredBlock17PC.
        recoveredBlock17Step = 24 ifTrue: [
            recoveredBlock17Stack1 := recoveredLocal1.
            recoveredBlock17PC := 27.
        ].
        recoveredBlock17Step = 27 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Arg1.
            recoveredBlock17PC := 28.
        ].
        recoveredBlock17Step = 28 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) symbol.
            recoveredBlock17PC := 29.
        ].
        recoveredBlock17Step = 29 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) includesKey: (recoveredBlock17Stack2).
            recoveredBlock17PC := 30.
        ].
        recoveredBlock17Step = 30 ifTrue: [
            (recoveredBlock17Stack1) ifTrue: [recoveredBlock17PC := 58] ifFalse: [recoveredBlock17PC := 34].
        ].
        recoveredBlock17Step = 34 ifTrue: [
            recoveredBlock17Stack1 := EmImageSupport.
            recoveredBlock17PC := 36.
        ].
        recoveredBlock17Step = 36 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) errorReporter.
            recoveredBlock17PC := 38.
        ].
        recoveredBlock17Step = 38 ifTrue: [
            recoveredBlock17Stack2 := 97.
            recoveredBlock17PC := 42.
        ].
        recoveredBlock17Step = 42 ifTrue: [
            recoveredBlock17Stack3 := Array.
            recoveredBlock17PC := 44.
        ].
        recoveredBlock17Step = 44 ifTrue: [
            recoveredBlock17Stack4 := recoveredBlock17Arg1.
            recoveredBlock17PC := 45.
        ].
        recoveredBlock17Step = 45 ifTrue: [
            recoveredBlock17Stack4 := (recoveredBlock17Stack4) name.
            recoveredBlock17PC := 47.
        ].
        recoveredBlock17Step = 47 ifTrue: [
            recoveredBlock17Stack5 := self.
            recoveredBlock17PC := 48.
        ].
        recoveredBlock17Step = 48 ifTrue: [
            recoveredBlock17Stack5 := (recoveredBlock17Stack5) name.
            recoveredBlock17PC := 50.
        ].
        recoveredBlock17Step = 50 ifTrue: [
            recoveredBlock17Stack3 := (recoveredBlock17Stack3) with: (recoveredBlock17Stack4) with: (recoveredBlock17Stack5).
            recoveredBlock17PC := 52.
        ].
        recoveredBlock17Step = 52 ifTrue: [
            (recoveredBlock17Stack1) logError: (recoveredBlock17Stack2) withParms: (recoveredBlock17Stack3).
            recoveredBlock17PC := 54.
        ].
        recoveredBlock17Step = 54 ifTrue: [
            recoveredBlock17Stack1 := false.
            recoveredBlock17PC := 55.
        ].
        recoveredBlock17Step = 55 ifTrue: [
            recoveredLocal2 := recoveredBlock17Stack1.
            recoveredBlock17PC := 58.
        ].
        recoveredBlock17Step = 58 ifTrue: [
            recoveredBlock17Stack1 := recoveredLocal1.
            recoveredBlock17PC := 61.
        ].
        recoveredBlock17Step = 61 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Arg1.
            recoveredBlock17PC := 62.
        ].
        recoveredBlock17Step = 62 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) symbol.
            recoveredBlock17PC := 63.
        ].
        recoveredBlock17Step = 63 ifTrue: [
            recoveredBlock17Stack3 := [].
            recoveredBlock17PC := 65.
        ].
        recoveredBlock17Step = 65 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) removeKey: (recoveredBlock17Stack2) ifAbsent: (recoveredBlock17Stack3).
            recoveredBlock17PC := 67.
        ].
        recoveredBlock17Step = 67 ifTrue: [
            recoveredBlock17Result := recoveredBlock17Stack1.
            recoveredBlock17Done := true.
        ].
    ].
    recoveredBlock17Result
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := [:recoveredBlock73Arg1 | 
    | recoveredBlock73Value0 recoveredBlock73Value1 recoveredBlock73Value2 recoveredBlock73Value3 recoveredBlock73Value4 recoveredBlock73Value5 recoveredBlock73Value6 recoveredBlock73Value7 recoveredBlock73Value8 recoveredBlock73Value9 recoveredBlock73Value10 |
    recoveredBlock73Value0 := EmImageSupport.
    recoveredBlock73Value1 := (recoveredBlock73Value0) errorReporter.
    recoveredBlock73Value2 := Array.
    recoveredBlock73Value3 := SubApplication.
    recoveredBlock73Value4 := recoveredBlock73Arg1.
    recoveredBlock73Value5 := (recoveredBlock73Value4) key.
    recoveredBlock73Value6 := recoveredBlock73Arg1.
    recoveredBlock73Value7 := (recoveredBlock73Value6) value.
    recoveredBlock73Value8 := (recoveredBlock73Value3) signatureFor: (recoveredBlock73Value5) timeStamp: (recoveredBlock73Value7).
    recoveredBlock73Value9 := (self) name.
    recoveredBlock73Value10 := (recoveredBlock73Value2) with: (recoveredBlock73Value8) with: (recoveredBlock73Value9).
    (recoveredBlock73Value1) logError: (98) withParms: (recoveredBlock73Value10).
    recoveredLocal2 := false.
    false
].
    (recoveredValue4) associationsDo: (recoveredValue5).
    recoveredValue6 := recoveredLocal2.
    ^recoveredValue6
! !

"lib.ic method 0x20020128; bytecode file offset 0x5c174"
!SubApplication class methodsFor: 'recovered'!
isNameVisible: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) rootApplication.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) image.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) globalNamespace.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) namespaceAt: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) includesKey: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) allPrerequisites.
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
            recoveredBlock49Stack1 := System.
            recoveredBlock49PC := 58.
        ].
        recoveredBlock49Step = 58 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) image.
            recoveredBlock49PC := 59.
        ].
        recoveredBlock49Step = 59 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) globalNamespace.
            recoveredBlock49PC := 60.
        ].
        recoveredBlock49Step = 60 ifTrue: [
            recoveredBlock49Stack2 := recoveredBlock49Arg1.
            recoveredBlock49PC := 61.
        ].
        recoveredBlock49Step = 61 ifTrue: [
            recoveredBlock49Stack2 := (recoveredBlock49Stack2) name.
            recoveredBlock49PC := 63.
        ].
        recoveredBlock49Step = 63 ifTrue: [
            recoveredBlock49Stack3 := [].
            recoveredBlock49PC := 65.
        ].
        recoveredBlock49Step = 65 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) namespaceAt: (recoveredBlock49Stack2) ifAbsent: (recoveredBlock49Stack3).
            recoveredBlock49PC := 67.
        ].
        recoveredBlock49Step = 67 ifTrue: [
            recoveredLocal1 := recoveredBlock49Stack1.
            recoveredBlock49PC := 70.
        ].
        recoveredBlock49Step = 70 ifTrue: [
            recoveredBlock49Stack1 := nil.
            recoveredBlock49PC := 71.
        ].
        recoveredBlock49Step = 71 ifTrue: [
            recoveredBlock49Stack2 := recoveredLocal1.
            recoveredBlock49PC := 74.
        ].
        recoveredBlock49Step = 74 ifTrue: [
            (recoveredBlock49Stack2 == nil) ifTrue: [recoveredBlock49PC := 95] ifFalse: [recoveredBlock49PC := 78].
        ].
        recoveredBlock49Step = 78 ifTrue: [
            recoveredBlock49PC := 79.
        ].
        recoveredBlock49Step = 79 ifTrue: [
            recoveredBlock49Stack1 := nil.
            recoveredBlock49PC := 80.
        ].
        recoveredBlock49Step = 80 ifTrue: [
            recoveredBlock49Stack2 := recoveredLocal1.
            recoveredBlock49PC := 83.
        ].
        recoveredBlock49Step = 83 ifTrue: [
            recoveredBlock49Stack3 := recoveredArg1.
            recoveredBlock49PC := 86.
        ].
        recoveredBlock49Step = 86 ifTrue: [
            recoveredBlock49Stack2 := (recoveredBlock49Stack2) includesKey: (recoveredBlock49Stack3).
            recoveredBlock49PC := 88.
        ].
        recoveredBlock49Step = 88 ifTrue: [
            (recoveredBlock49Stack2) ifTrue: [recoveredBlock49PC := 92] ifFalse: [recoveredBlock49PC := 95].
        ].
        recoveredBlock49Step = 92 ifTrue: [
            recoveredBlock49PC := 93.
        ].
        recoveredBlock49Step = 93 ifTrue: [
            recoveredBlock49Stack1 := true.
            recoveredBlock49PC := 94.
        ].
        recoveredBlock49Step = 94 ifTrue: [
            ^recoveredBlock49Stack1
        ].
        recoveredBlock49Step = 95 ifTrue: [
            recoveredBlock49Result := recoveredBlock49Stack1.
            recoveredBlock49Done := true.
        ].
    ].
    recoveredBlock49Result
].
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := (recoveredStack0) image.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) globalNamespace.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := (recoveredStack0) unmanagedNamespace.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := (recoveredStack0) includesKey: (recoveredStack1).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 118] ifFalse: [recoveredPC := 120].
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x200201d8; bytecode file offset 0x5c248"
!SubApplication class methodsFor: 'recovered'!
salvageFromLibrary: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) isApplication.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := NlsCatEMc.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := 'MxEMc101'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) residentMsg: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := NlsCatEMc.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := 'MxEMc102'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) residentMsg: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) owningImage.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) allNames.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) owningImage.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := NlsCatEMc.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := 'MxEMc18'.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) residentMsg: (recoveredStack2).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) confirm: (recoveredStack1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) partsRecordClass.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) salvage: (recoveredStack1).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 111] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) isApplication.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 94].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := NlsCatEMc.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := 'MxEMc105'.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := (recoveredStack0) residentMsg: (recoveredStack1).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredPC := 100.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := NlsCatEMc.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := 'MxEMc106'.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := (recoveredStack0) residentMsg: (recoveredStack1).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := (recoveredStack0) owningImage.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := (recoveredStack0) owningImage.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := 'Salvaged %1'.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack0) logApplicationNotice: (recoveredStack1).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20020d10; bytecode file offset 0x5cd8c"
!SubApplication class methodsFor: 'recovered'!
purgeFromLibrary
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) isApplication.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := NlsCatEMc.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := 'MxEMc92'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) residentMsg: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := NlsCatEMc.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := 'MxEMc93'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) residentMsg: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) owningImage.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) partsRecordClass.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) symbol.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := (recoveredStack2) timeStamp.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) purge: (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 89] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) isApplication.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := NlsCatEMc.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := 'MxEMc94'.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) residentMsg: (recoveredStack1).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredPC := 76.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := NlsCatEMc.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := 'MxEMc95'.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := (recoveredStack0) residentMsg: (recoveredStack1).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) owningImage.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := (recoveredStack2) signature.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := (recoveredStack0) isApplication.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 94] ifFalse: [recoveredPC := 106].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := EmLibraryCache.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := (recoveredStack0) current.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := (recoveredStack1) symbol.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack0) flushEntriesForApplicationNamed: (recoveredStack1).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredPC := 115.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := EmLibraryCache.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := (recoveredStack0) current.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := (recoveredStack1) symbol.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack0) flushEntriesForSubApplicationNamed: (recoveredStack1).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := (recoveredStack0) owningImage.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := 'Purged %1.'.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack2 := (recoveredStack2) signature.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            (recoveredStack0) logApplicationNotice: (recoveredStack1).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20022bb0; bytecode file offset 0x5ec40"
!SubApplication class methodsFor: 'recovered'!
releaseEachClassIn: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
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
            recoveredStack1 := (recoveredStack1) operationsInterface.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack4 := [
    ^nil
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) applicationReleaseClassesFor: (recoveredStack2) classes: (recoveredStack3) ifUnable: (recoveredStack4).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) owningImage.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := NlsCatEMc.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := 'MxEMc98'.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := (recoveredStack2) residentMsg: (recoveredStack3).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorMessage: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := WriteStream.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := String.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := 100.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := (recoveredStack2) new: (recoveredStack3).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := [:recoveredBlock62Arg1 | 
    | recoveredBlock62Stack0 recoveredBlock62Stack1 recoveredBlock62Stack2 recoveredBlock62Stack3 recoveredBlock62Stack4 recoveredBlock62PC recoveredBlock62Step recoveredBlock62Done recoveredBlock62Result |
    recoveredBlock62Stack0 := self.
    recoveredBlock62PC := 68.
    recoveredBlock62Done := false.
    [recoveredBlock62Done not] whileTrue: [
        recoveredBlock62Step := recoveredBlock62PC.
        recoveredBlock62Step = 68 ifTrue: [
            recoveredBlock62Stack1 := nil.
            recoveredBlock62PC := 69.
        ].
        recoveredBlock62Step = 69 ifTrue: [
            recoveredBlock62Stack2 := recoveredLocal4.
            recoveredBlock62PC := 72.
        ].
        recoveredBlock62Step = 72 ifTrue: [
            recoveredBlock62Stack3 := recoveredBlock62Arg1.
            recoveredBlock62PC := 73.
        ].
        recoveredBlock62Step = 73 ifTrue: [
            recoveredBlock62Stack2 := (recoveredBlock62Stack2) includes: (recoveredBlock62Stack3).
            recoveredBlock62PC := 75.
        ].
        recoveredBlock62Step = 75 ifTrue: [
            (recoveredBlock62Stack2) ifTrue: [recoveredBlock62PC := 94] ifFalse: [recoveredBlock62PC := 78].
        ].
        recoveredBlock62Step = 78 ifTrue: [
            recoveredBlock62PC := 79.
        ].
        recoveredBlock62Step = 79 ifTrue: [
            recoveredBlock62Stack1 := recoveredLocal1.
            recoveredBlock62PC := 82.
        ].
        recoveredBlock62Step = 82 ifTrue: [
            recoveredBlock62Stack2 := recoveredBlock62Stack1.
            recoveredBlock62PC := 83.
        ].
        recoveredBlock62Step = 83 ifTrue: [
            (recoveredBlock62Stack2) cr.
            recoveredBlock62Stack2 := recoveredBlock62Stack1.
            recoveredBlock62PC := 86.
        ].
        recoveredBlock62Step = 86 ifTrue: [
            (recoveredBlock62Stack2) space.
            recoveredBlock62PC := 88.
        ].
        recoveredBlock62Step = 88 ifTrue: [
            recoveredBlock62Stack2 := recoveredBlock62Arg1.
            recoveredBlock62PC := 89.
        ].
        recoveredBlock62Step = 89 ifTrue: [
            recoveredBlock62Stack3 := self.
            recoveredBlock62PC := 90.
        ].
        recoveredBlock62Step = 90 ifTrue: [
            recoveredBlock62Stack2 := (recoveredBlock62Stack2) signatureIn: (recoveredBlock62Stack3).
            recoveredBlock62PC := 92.
        ].
        recoveredBlock62Step = 92 ifTrue: [
            recoveredBlock62Stack1 := (recoveredBlock62Stack1) nextPutAll: (recoveredBlock62Stack2).
            recoveredBlock62PC := 94.
        ].
        recoveredBlock62Step = 94 ifTrue: [
            recoveredBlock62Result := recoveredBlock62Stack1.
            recoveredBlock62Done := true.
        ].
    ].
    recoveredBlock62Result
].
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := (recoveredStack1) contents.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 108] ifFalse: [recoveredPC := 125].
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := (recoveredStack1) owningImage.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack2 := 'Released the following class(es) in %1%2'.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack3 := (recoveredStack3) signature.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack4 := (recoveredStack4) contents.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            (recoveredStack1) logApplicationNotice: (recoveredStack2).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := Transcript.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack2 := 'logReleasedClasses:inApplication:'.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := (recoveredStack1) respondsTo: (recoveredStack2).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 134] ifFalse: [recoveredPC := 142].
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := Transcript.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            (recoveredStack1) logReleasedClasses: (recoveredStack2) inApplication: (recoveredStack3).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2002316c; bytecode file offset 0x5f1e8"
!SubApplication class methodsFor: 'recovered'!
salvageFromLibrary
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) isApplication.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := NlsCatEMc.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := 'MxEMc101'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) residentMsg: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := NlsCatEMc.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := 'MxEMc102'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) residentMsg: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) owningImage.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) partsRecordClass.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := (recoveredStack2) timeStamp.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) salvage: (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 131] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) allNames.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 96].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) isApplication.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := NlsCatEMc.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := 'MxEMc103'.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := (recoveredStack0) residentMsg: (recoveredStack1).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredPC := 88.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := NlsCatEMc.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := 'MxEMc104'.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := (recoveredStack0) residentMsg: (recoveredStack1).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := (recoveredStack0) owningImage.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := (recoveredStack0) isApplication.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 102] ifFalse: [recoveredPC := 112].
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := NlsCatEMc.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := 'MxEMc105'.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := (recoveredStack0) residentMsg: (recoveredStack1).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredPC := 118.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := NlsCatEMc.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := 'MxEMc106'.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := (recoveredStack0) residentMsg: (recoveredStack1).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := (recoveredStack0) owningImage.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack2 := (recoveredStack2) signature.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := (recoveredStack0) owningImage.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := 'Salvaged the purged edition of %1.'.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack2 := (recoveredStack2) signature.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2).
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            (recoveredStack0) logApplicationNotice: (recoveredStack1).
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20023dd0; bytecode file offset 0x5fe54"
!SubApplication class methodsFor: 'recovered'!
moveFrom: recoveredArg1 to: recoveredArg2 mapping: recoveredArg3 removeSource: recoveredArg4 removeComments: recoveredArg5 forgetStoredObjects: recoveredArg6
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isVersion.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 29] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := EmImageSupport.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorReporter.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := 106.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := (recoveredStack3) signature.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack4 := (recoveredStack4) fullName.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) logError: (recoveredStack1) withParms: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
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
            recoveredStack1 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0 == recoveredStack1) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) becomeDefault.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := 'removeSourceStructure'.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) respondsTo: (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) removeSourceStructure.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredPC := 68.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := Dictionary.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := recoveredArg5.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := 'removeCommentStructure'.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) respondsTo: (recoveredStack1).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) removeCommentStructure.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredPC := 92.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := Dictionary.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := (recoveredStack1) symbol.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack3 := (recoveredStack3) timeStamp.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack5 := (recoveredStack5) partsRecord.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack6 := Dictionary.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack6 := (recoveredStack6) new.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack7 := recoveredArg3.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack8 := recoveredLocal3.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack9 := recoveredLocal2.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack10 := recoveredArg6.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := (recoveredStack0) moveAllVersionsOf: (recoveredStack1) in: (recoveredStack2) from: (recoveredStack3) to: (recoveredStack4) using: (recoveredStack5) skipClassesIn: (recoveredStack6) mapping: (recoveredStack7) removeSourceStructure: (recoveredStack8) removeCommentStructure: (recoveredStack9) forgetStoredObjects: (recoveredStack10).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 130] ifFalse: [recoveredPC := 151].
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack0 := (recoveredStack0) owningImage.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := 'Moved %1 from %2 to %3'.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack2 := (recoveredStack2) signature.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack3 := (recoveredStack3) fullName.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack4 := (recoveredStack4) fullName.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            (recoveredStack0) logApplicationNotice: (recoveredStack1).
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            (recoveredStack0) becomeDefault.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20024ad8; bytecode file offset 0x60b74"
!SubApplication class methodsFor: 'recovered'!
ownerOf: recoveredArg1 to: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isClass.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) symbol.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := [:block28005230Arg1 | 
    | block28005230Value0 block28005230Value1 |
    block28005230Value0 := block28005230Arg1.
    block28005230Value1 := (block28005230Value0) symbol.
    block28005230Value1
].
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := [:recoveredBlock41Arg1 | 
    | recoveredBlock41Stack0 recoveredBlock41Stack1 recoveredBlock41Stack2 recoveredBlock41Stack3 recoveredBlock41Stack4 recoveredBlock41Stack5 recoveredBlock41Stack6 recoveredBlock41PC recoveredBlock41Step recoveredBlock41Done recoveredBlock41Result |
    recoveredBlock41Stack0 := self.
    recoveredBlock41PC := 48.
    recoveredBlock41Done := false.
    [recoveredBlock41Done not] whileTrue: [
        recoveredBlock41Step := recoveredBlock41PC.
        recoveredBlock41Step = 48 ifTrue: [
            recoveredBlock41Stack1 := nil.
            recoveredBlock41PC := 49.
        ].
        recoveredBlock41Step = 49 ifTrue: [
            recoveredBlock41Stack2 := self.
            recoveredBlock41PC := 50.
        ].
        recoveredBlock41Step = 50 ifTrue: [
            recoveredBlock41Stack3 := 'changeClassOwners'.
            recoveredBlock41PC := 52.
        ].
        recoveredBlock41Step = 52 ifTrue: [
            recoveredBlock41Stack4 := recoveredBlock41Arg1.
            recoveredBlock41PC := 53.
        ].
        recoveredBlock41Step = 53 ifTrue: [
            recoveredBlock41Stack2 := (recoveredBlock41Stack2) userHasRightTo: (recoveredBlock41Stack3) for: (recoveredBlock41Stack4).
            recoveredBlock41PC := 55.
        ].
        recoveredBlock41Step = 55 ifTrue: [
            (recoveredBlock41Stack2) ifTrue: [recoveredBlock41PC := 78] ifFalse: [recoveredBlock41PC := 58].
        ].
        recoveredBlock41Step = 58 ifTrue: [
            recoveredBlock41PC := 59.
        ].
        recoveredBlock41Step = 59 ifTrue: [
            recoveredBlock41Stack1 := EmImageSupport.
            recoveredBlock41PC := 61.
        ].
        recoveredBlock41Step = 61 ifTrue: [
            recoveredBlock41Stack1 := (recoveredBlock41Stack1) errorReporter.
            recoveredBlock41PC := 63.
        ].
        recoveredBlock41Step = 63 ifTrue: [
            recoveredBlock41Stack2 := 203.
            recoveredBlock41PC := 66.
        ].
        recoveredBlock41Step = 66 ifTrue: [
            recoveredBlock41Stack3 := Array.
            recoveredBlock41PC := 68.
        ].
        recoveredBlock41Step = 68 ifTrue: [
            recoveredBlock41Stack4 := recoveredBlock41Arg1.
            recoveredBlock41PC := 69.
        ].
        recoveredBlock41Step = 69 ifTrue: [
            recoveredBlock41Stack5 := self.
            recoveredBlock41PC := 70.
        ].
        recoveredBlock41Step = 70 ifTrue: [
            recoveredBlock41Stack5 := (recoveredBlock41Stack5) signature.
            recoveredBlock41PC := 72.
        ].
        recoveredBlock41Step = 72 ifTrue: [
            recoveredBlock41Stack3 := (recoveredBlock41Stack3) with: (recoveredBlock41Stack4) with: (recoveredBlock41Stack5).
            recoveredBlock41PC := 74.
        ].
        recoveredBlock41Step = 74 ifTrue: [
            (recoveredBlock41Stack1) logError: (recoveredBlock41Stack2) withParms: (recoveredBlock41Stack3).
            recoveredBlock41PC := 76.
        ].
        recoveredBlock41Step = 76 ifTrue: [
            recoveredBlock41Stack1 := false.
            recoveredBlock41PC := 77.
        ].
        recoveredBlock41Step = 77 ifTrue: [
            ^recoveredBlock41Stack1
        ].
        recoveredBlock41Step = 78 ifTrue: [
            recoveredBlock41Result := recoveredBlock41Stack1.
            recoveredBlock41Done := true.
        ].
    ].
    recoveredBlock41Result
].
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := EmLibrary.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) default.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := (recoveredStack1) operationsInterface.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack5 := [
    ^false
].
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack1) applicationOwnerOfClassesFor: (recoveredStack2) classNames: (recoveredStack3) to: (recoveredStack4) ifUnable: (recoveredStack5).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := WriteStream.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack2 := String.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack3 := 100.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack2 := (recoveredStack2) new: (recoveredStack3).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack2 := [:recoveredBlock122Arg1 | 
    | recoveredBlock122Value0 recoveredBlock122Value1 recoveredBlock122Value2 recoveredBlock122Value3 recoveredBlock122Value4 |
    recoveredBlock122Value0 := recoveredLocal1.
    recoveredBlock122Value1 := recoveredBlock122Value0.
    (recoveredBlock122Value1) cr.
    recoveredBlock122Value2 := recoveredBlock122Value0.
    (recoveredBlock122Value2) space.
    recoveredBlock122Value3 := recoveredBlock122Arg1.
    recoveredBlock122Value4 := (recoveredBlock122Value0) nextPutAll: (recoveredBlock122Value3).
    recoveredBlock122Value4
].
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack0 := (recoveredStack0) owningImage.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := 'Changed the owner of the following class(es) in %1 to %2%3'.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack2 := (recoveredStack2) signature.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack3 := (recoveredStack3) fullName.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack4 := (recoveredStack4) contents.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            (recoveredStack0) logApplicationNotice: (recoveredStack1).
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

"lib.ic method 0x2002537c; bytecode file offset 0x613fc"
!SubApplication class methodsFor: 'recovered'!
purgeAllFromLibrary: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            (recoveredStack1) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) isApplication.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := NlsCatEMc.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := 'MxEMc96'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) residentMsg: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := NlsCatEMc.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := 'MxEMc97'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) residentMsg: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) owningImage.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) partsRecordClass.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) purgeAll: (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 103].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := [:recoveredBlock63Arg1 | 
    | recoveredBlock63Local1 recoveredBlock63Stack0 recoveredBlock63Stack1 recoveredBlock63Stack2 recoveredBlock63Stack3 recoveredBlock63PC recoveredBlock63Step recoveredBlock63Done recoveredBlock63Result |
    recoveredBlock63Stack0 := self.
    recoveredBlock63PC := 70.
    recoveredBlock63Done := false.
    [recoveredBlock63Done not] whileTrue: [
        recoveredBlock63Step := recoveredBlock63PC.
        recoveredBlock63Step = 70 ifTrue: [
            recoveredBlock63Stack0 := (recoveredBlock63Stack0) isApplication.
            recoveredBlock63PC := 71.
        ].
        recoveredBlock63Step = 71 ifTrue: [
            (recoveredBlock63Stack0) ifTrue: [recoveredBlock63PC := 74] ifFalse: [recoveredBlock63PC := 84].
        ].
        recoveredBlock63Step = 74 ifTrue: [
            recoveredBlock63Stack0 := NlsCatEMc.
            recoveredBlock63PC := 76.
        ].
        recoveredBlock63Step = 76 ifTrue: [
            recoveredBlock63Stack1 := 'MxEMc94'.
            recoveredBlock63PC := 78.
        ].
        recoveredBlock63Step = 78 ifTrue: [
            recoveredBlock63Stack0 := (recoveredBlock63Stack0) residentMsg: (recoveredBlock63Stack1).
            recoveredBlock63PC := 80.
        ].
        recoveredBlock63Step = 80 ifTrue: [
            recoveredBlock63PC := 90.
        ].
        recoveredBlock63Step = 84 ifTrue: [
            recoveredBlock63Stack0 := NlsCatEMc.
            recoveredBlock63PC := 86.
        ].
        recoveredBlock63Step = 86 ifTrue: [
            recoveredBlock63Stack1 := 'MxEMc95'.
            recoveredBlock63PC := 88.
        ].
        recoveredBlock63Step = 88 ifTrue: [
            recoveredBlock63Stack0 := (recoveredBlock63Stack0) residentMsg: (recoveredBlock63Stack1).
            recoveredBlock63PC := 90.
        ].
        recoveredBlock63Step = 90 ifTrue: [
            recoveredBlock63Local1 := recoveredBlock63Stack0.
            recoveredBlock63PC := 91.
        ].
        recoveredBlock63Step = 91 ifTrue: [
            recoveredBlock63Stack0 := self.
            recoveredBlock63PC := 92.
        ].
        recoveredBlock63Step = 92 ifTrue: [
            recoveredBlock63Stack0 := (recoveredBlock63Stack0) owningImage.
            recoveredBlock63PC := 94.
        ].
        recoveredBlock63Step = 94 ifTrue: [
            recoveredBlock63Stack1 := recoveredBlock63Local1.
            recoveredBlock63PC := 95.
        ].
        recoveredBlock63Step = 95 ifTrue: [
            recoveredBlock63Stack2 := recoveredBlock63Arg1.
            recoveredBlock63PC := 96.
        ].
        recoveredBlock63Step = 96 ifTrue: [
            recoveredBlock63Stack1 := (recoveredBlock63Stack1) bindWith: (recoveredBlock63Stack2).
            recoveredBlock63PC := 98.
        ].
        recoveredBlock63Step = 98 ifTrue: [
            recoveredBlock63Stack0 := (recoveredBlock63Stack0) message: (recoveredBlock63Stack1).
            recoveredBlock63PC := 100.
        ].
        recoveredBlock63Step = 100 ifTrue: [
            recoveredBlock63Result := recoveredBlock63Stack0.
            recoveredBlock63Done := true.
        ].
    ].
    recoveredBlock63Result
].
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := [:recoveredBlock106Arg1 | 
    | recoveredBlock106Value0 recoveredBlock106Value1 recoveredBlock106Value2 |
    recoveredBlock106Value0 := recoveredLocal3.
    recoveredBlock106Value1 := recoveredBlock106Arg1.
    recoveredBlock106Value2 := (recoveredBlock106Value0) includes: (recoveredBlock106Value1).
    recoveredBlock106Value2
].
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := (recoveredStack0) reject: (recoveredStack1).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := (recoveredStack0) isApplication.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 130] ifFalse: [recoveredPC := 142].
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := EmLibraryCache.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := (recoveredStack0) current.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack0) flushEntriesForApplicationNames: (recoveredStack1).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredPC := 151.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := EmLibraryCache.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := (recoveredStack0) current.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            (recoveredStack0) flushEntriesForSubApplicationNames: (recoveredStack1).
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := [:recoveredBlock154Arg1 | 
    | recoveredBlock154Value0 recoveredBlock154Value1 recoveredBlock154Value2 recoveredBlock154Value3 |
    recoveredBlock154Value0 := (self) owningImage.
    recoveredBlock154Value1 := recoveredBlock154Arg1.
    recoveredBlock154Value2 := ('Purged all editions of %1 from the library.') bindWith: (recoveredBlock154Value1).
    recoveredBlock154Value3 := (recoveredBlock154Value0) logApplicationNotice: (recoveredBlock154Value2).
    recoveredBlock154Value3
].
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x200258dc; bytecode file offset 0x61958"
!SubApplication class methodsFor: 'recovered'!
recomputeUndefinedClasses
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) timeStamp.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isVersion.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) editionRecord.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) namesAndTypes.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := Set.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) defined.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := [:recoveredBlock28Arg1 | 
    | recoveredBlock28Value0 recoveredBlock28Value1 recoveredBlock28Value2 recoveredBlock28Value3 |
    recoveredBlock28Value0 := recoveredLocal1.
    recoveredBlock28Value1 := recoveredBlock28Arg1.
    recoveredBlock28Value2 := (recoveredBlock28Value1) symbol.
    recoveredBlock28Value3 := (recoveredBlock28Value0) add: (recoveredBlock28Value2).
    recoveredBlock28Value3
].
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) extended.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := [:recoveredBlock48Arg1 | 
    | recoveredBlock48Value0 recoveredBlock48Value1 recoveredBlock48Value2 recoveredBlock48Value3 |
    recoveredBlock48Value0 := recoveredLocal1.
    recoveredBlock48Value1 := recoveredBlock48Arg1.
    recoveredBlock48Value2 := (recoveredBlock48Value1) symbol.
    recoveredBlock48Value3 := (recoveredBlock48Value0) add: (recoveredBlock48Value2).
    recoveredBlock48Value3
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
            recoveredStack0 := (recoveredStack0) undefined.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) asArray.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := [:recoveredBlock70Arg1 | 
    | recoveredBlock70Stack0 recoveredBlock70Stack1 recoveredBlock70Stack2 recoveredBlock70Stack3 recoveredBlock70Stack4 recoveredBlock70PC recoveredBlock70Step recoveredBlock70Done recoveredBlock70Result |
    recoveredBlock70Stack0 := self.
    recoveredBlock70PC := 76.
    recoveredBlock70Done := false.
    [recoveredBlock70Done not] whileTrue: [
        recoveredBlock70Step := recoveredBlock70PC.
        recoveredBlock70Step = 76 ifTrue: [
            recoveredBlock70Stack1 := recoveredLocal2.
            recoveredBlock70PC := 79.
        ].
        recoveredBlock70Step = 79 ifTrue: [
            recoveredBlock70Stack2 := recoveredBlock70Arg1.
            recoveredBlock70PC := 80.
        ].
        recoveredBlock70Step = 80 ifTrue: [
            recoveredBlock70Stack2 := (recoveredBlock70Stack2) symbol.
            recoveredBlock70PC := 82.
        ].
        recoveredBlock70Step = 82 ifTrue: [
            recoveredBlock70Stack3 := [
    'Deleted'
].
            recoveredBlock70PC := 84.
        ].
        recoveredBlock70Step = 84 ifTrue: [
            recoveredBlock70PC := 91.
        ].
        recoveredBlock70Step = 91 ifTrue: [
            recoveredBlock70Stack1 := (recoveredBlock70Stack1) at: (recoveredBlock70Stack2) ifAbsent: (recoveredBlock70Stack3).
            recoveredBlock70PC := 93.
        ].
        recoveredBlock70Step = 93 ifTrue: [
            recoveredBlock70Stack2 := 'Deleted'.
            recoveredBlock70PC := 95.
        ].
        recoveredBlock70Step = 95 ifTrue: [
            (recoveredBlock70Stack1 ~~ recoveredBlock70Stack2) ifTrue: [recoveredBlock70PC := 108] ifFalse: [recoveredBlock70PC := 98].
        ].
        recoveredBlock70Step = 98 ifTrue: [
            recoveredBlock70Stack1 := self.
            recoveredBlock70PC := 99.
        ].
        recoveredBlock70Step = 99 ifTrue: [
            recoveredBlock70Stack1 := (recoveredBlock70Stack1) undefined.
            recoveredBlock70PC := 101.
        ].
        recoveredBlock70Step = 101 ifTrue: [
            recoveredBlock70Stack2 := recoveredBlock70Arg1.
            recoveredBlock70PC := 102.
        ].
        recoveredBlock70Step = 102 ifTrue: [
            recoveredBlock70Stack1 := (recoveredBlock70Stack1) remove: (recoveredBlock70Stack2).
            recoveredBlock70PC := 104.
        ].
        recoveredBlock70Step = 104 ifTrue: [
            recoveredBlock70PC := 116.
        ].
        recoveredBlock70Step = 108 ifTrue: [
            recoveredBlock70Stack1 := recoveredLocal1.
            recoveredBlock70PC := 111.
        ].
        recoveredBlock70Step = 111 ifTrue: [
            recoveredBlock70Stack2 := recoveredBlock70Arg1.
            recoveredBlock70PC := 112.
        ].
        recoveredBlock70Step = 112 ifTrue: [
            recoveredBlock70Stack2 := (recoveredBlock70Stack2) symbol.
            recoveredBlock70PC := 114.
        ].
        recoveredBlock70Step = 114 ifTrue: [
            recoveredBlock70Stack1 := (recoveredBlock70Stack1) add: (recoveredBlock70Stack2).
            recoveredBlock70PC := 116.
        ].
        recoveredBlock70Step = 116 ifTrue: [
            recoveredBlock70Result := recoveredBlock70Stack1.
            recoveredBlock70Done := true.
        ].
    ].
    recoveredBlock70Result
].
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 176] ifFalse: [recoveredPC := 134].
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := [:recoveredBlock137Arg1 | 
    | recoveredBlock137Stack0 recoveredBlock137Stack1 recoveredBlock137Stack2 recoveredBlock137Stack3 recoveredBlock137Stack4 recoveredBlock137PC recoveredBlock137Step recoveredBlock137Done recoveredBlock137Result |
    recoveredBlock137Stack0 := self.
    recoveredBlock137PC := 144.
    recoveredBlock137Done := false.
    [recoveredBlock137Done not] whileTrue: [
        recoveredBlock137Step := recoveredBlock137PC.
        recoveredBlock137Step = 144 ifTrue: [
            recoveredBlock137Stack1 := nil.
            recoveredBlock137PC := 145.
        ].
        recoveredBlock137Step = 145 ifTrue: [
            recoveredBlock137Stack2 := recoveredBlock137Arg1.
            recoveredBlock137PC := 146.
        ].
        recoveredBlock137Step = 146 ifTrue: [
            recoveredBlock137Stack2 := (recoveredBlock137Stack2) value.
            recoveredBlock137PC := 148.
        ].
        recoveredBlock137Step = 148 ifTrue: [
            recoveredBlock137Stack3 := 'Deleted'.
            recoveredBlock137PC := 150.
        ].
        recoveredBlock137Step = 150 ifTrue: [
            (recoveredBlock137Stack2 == recoveredBlock137Stack3) ifTrue: [recoveredBlock137PC := 173] ifFalse: [recoveredBlock137PC := 154].
        ].
        recoveredBlock137Step = 154 ifTrue: [
            recoveredBlock137Stack2 := recoveredLocal1.
            recoveredBlock137PC := 157.
        ].
        recoveredBlock137Step = 157 ifTrue: [
            recoveredBlock137Stack3 := recoveredBlock137Arg1.
            recoveredBlock137PC := 158.
        ].
        recoveredBlock137Step = 158 ifTrue: [
            recoveredBlock137Stack3 := (recoveredBlock137Stack3) key.
            recoveredBlock137PC := 160.
        ].
        recoveredBlock137Step = 160 ifTrue: [
            recoveredBlock137Stack2 := (recoveredBlock137Stack2) includes: (recoveredBlock137Stack3).
            recoveredBlock137PC := 162.
        ].
        recoveredBlock137Step = 162 ifTrue: [
            (recoveredBlock137Stack2) ifTrue: [recoveredBlock137PC := 173] ifFalse: [recoveredBlock137PC := 166].
        ].
        recoveredBlock137Step = 166 ifTrue: [
            recoveredBlock137PC := 167.
        ].
        recoveredBlock137Step = 167 ifTrue: [
            recoveredBlock137Stack1 := self.
            recoveredBlock137PC := 168.
        ].
        recoveredBlock137Step = 168 ifTrue: [
            recoveredBlock137Stack2 := recoveredBlock137Arg1.
            recoveredBlock137PC := 169.
        ].
        recoveredBlock137Step = 169 ifTrue: [
            recoveredBlock137Stack2 := (recoveredBlock137Stack2) key.
            recoveredBlock137PC := 171.
        ].
        recoveredBlock137Step = 171 ifTrue: [
            recoveredBlock137Stack1 := (recoveredBlock137Stack1) addUndefined: (recoveredBlock137Stack2).
            recoveredBlock137PC := 173.
        ].
        recoveredBlock137Step = 173 ifTrue: [
            recoveredBlock137Result := recoveredBlock137Stack1.
            recoveredBlock137Done := true.
        ].
    ].
    recoveredBlock137Result
].
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            (recoveredStack0) associationsDo: (recoveredStack1).
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20026fb0; bytecode file offset 0x63040"
!SubApplication class methodsFor: 'recovered'!
moreRecentClassEditions
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) editionRecord.
    recoveredValue1 := (recoveredValue0) namesAndTypes.
    recoveredValue2 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6Stack3 recoveredBlock6Stack4 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            recoveredBlock6Stack1 := nil.
            recoveredBlock6PC := 13.
        ].
        recoveredBlock6Step = 13 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Arg1.
            recoveredBlock6PC := 14.
        ].
        recoveredBlock6Step = 14 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) value.
            recoveredBlock6PC := 15.
        ].
        recoveredBlock6Step = 15 ifTrue: [
            recoveredBlock6Stack3 := 'Deleted'.
            recoveredBlock6PC := 17.
        ].
        recoveredBlock6Step = 17 ifTrue: [
            (recoveredBlock6Stack2 == recoveredBlock6Stack3) ifTrue: [recoveredBlock6PC := 39] ifFalse: [recoveredBlock6PC := 20].
        ].
        recoveredBlock6Step = 20 ifTrue: [
            recoveredBlock6Stack2 := self.
            recoveredBlock6PC := 21.
        ].
        recoveredBlock6Step = 21 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) timeStamps.
            recoveredBlock6PC := 23.
        ].
        recoveredBlock6Step = 23 ifTrue: [
            recoveredBlock6Stack3 := recoveredBlock6Arg1.
            recoveredBlock6PC := 24.
        ].
        recoveredBlock6Step = 24 ifTrue: [
            recoveredBlock6Stack3 := (recoveredBlock6Stack3) key.
            recoveredBlock6PC := 26.
        ].
        recoveredBlock6Step = 26 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) includesKey: (recoveredBlock6Stack3).
            recoveredBlock6PC := 28.
        ].
        recoveredBlock6Step = 28 ifTrue: [
            (recoveredBlock6Stack2) ifTrue: [recoveredBlock6PC := 39] ifFalse: [recoveredBlock6PC := 32].
        ].
        recoveredBlock6Step = 32 ifTrue: [
            recoveredBlock6PC := 33.
        ].
        recoveredBlock6Step = 33 ifTrue: [
            recoveredBlock6Stack1 := self.
            recoveredBlock6PC := 34.
        ].
        recoveredBlock6Step = 34 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Arg1.
            recoveredBlock6PC := 35.
        ].
        recoveredBlock6Step = 35 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) key.
            recoveredBlock6PC := 37.
        ].
        recoveredBlock6Step = 37 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) addUndefined: (recoveredBlock6Stack2).
            recoveredBlock6PC := 39.
        ].
        recoveredBlock6Step = 39 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack1.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
    (recoveredValue1) associationsDo: (recoveredValue2).
    recoveredValue3 := Dictionary.
    recoveredValue4 := (recoveredValue3) new.
    recoveredLocal5 := recoveredValue4.
    recoveredValue5 := (self) classes.
    recoveredValue6 := [:recoveredBlock52Arg1 | 
    | recoveredBlock52Stack0 recoveredBlock52Stack1 recoveredBlock52Stack2 recoveredBlock52Stack3 recoveredBlock52Stack4 recoveredBlock52PC recoveredBlock52Step recoveredBlock52Done recoveredBlock52Result |
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
            recoveredBlock52Stack2 := self.
            recoveredBlock52PC := 62.
        ].
        recoveredBlock52Step = 62 ifTrue: [
            recoveredBlock52Stack1 := (recoveredBlock52Stack1) timeStampIn: (recoveredBlock52Stack2).
            recoveredBlock52PC := 64.
        ].
        recoveredBlock52Step = 64 ifTrue: [
            recoveredBlock52Stack2 := recoveredBlock52Stack1.
            recoveredBlock52PC := 65.
        ].
        recoveredBlock52Step = 65 ifTrue: [
            recoveredLocal4 := recoveredBlock52Stack2.
            recoveredBlock52PC := 68.
        ].
        recoveredBlock52Step = 68 ifTrue: [
            recoveredBlock52Stack1 := (recoveredBlock52Stack1) isUndefined.
            recoveredBlock52PC := 70.
        ].
        recoveredBlock52Step = 70 ifTrue: [
            (recoveredBlock52Stack1) ifTrue: [recoveredBlock52PC := 74] ifFalse: [recoveredBlock52PC := 88].
        ].
        recoveredBlock52Step = 74 ifTrue: [
            recoveredBlock52Stack1 := self.
            recoveredBlock52PC := 75.
        ].
        recoveredBlock52Step = 75 ifTrue: [
            recoveredBlock52Stack2 := recoveredBlock52Arg1.
            recoveredBlock52PC := 78.
        ].
        recoveredBlock52Step = 78 ifTrue: [
            recoveredBlock52Stack2 := (recoveredBlock52Stack2) name.
            recoveredBlock52PC := 80.
        ].
        recoveredBlock52Step = 80 ifTrue: [
            recoveredBlock52Stack1 := (recoveredBlock52Stack1) visibleEditionsFor: (recoveredBlock52Stack2).
            recoveredBlock52PC := 82.
        ].
        recoveredBlock52Step = 82 ifTrue: [
            recoveredLocal3 := recoveredBlock52Stack1.
            recoveredBlock52PC := 85.
        ].
        recoveredBlock52Step = 85 ifTrue: [
            recoveredBlock52PC := 161.
        ].
        recoveredBlock52Step = 88 ifTrue: [
            recoveredBlock52Stack1 := self.
            recoveredBlock52PC := 89.
        ].
        recoveredBlock52Step = 89 ifTrue: [
            recoveredBlock52Stack2 := recoveredBlock52Arg1.
            recoveredBlock52PC := 92.
        ].
        recoveredBlock52Step = 92 ifTrue: [
            recoveredBlock52Stack2 := (recoveredBlock52Stack2) name.
            recoveredBlock52PC := 94.
        ].
        recoveredBlock52Step = 94 ifTrue: [
            recoveredBlock52Stack1 := (recoveredBlock52Stack1) classEditionsRecordFor: (recoveredBlock52Stack2).
            recoveredBlock52PC := 96.
        ].
        recoveredBlock52Step = 96 ifTrue: [
            recoveredLocal2 := recoveredBlock52Stack1.
            recoveredBlock52PC := 99.
        ].
        recoveredBlock52Step = 99 ifTrue: [
            recoveredBlock52Stack1 := recoveredLocal2.
            recoveredBlock52PC := 102.
        ].
        recoveredBlock52Step = 102 ifTrue: [
            recoveredBlock52Stack1 := (recoveredBlock52Stack1) visibleTimeStamps.
            recoveredBlock52PC := 104.
        ].
        recoveredBlock52Step = 104 ifTrue: [
            recoveredBlock52Stack2 := [:recoveredBlock52Block104Arg1 | 
    | recoveredBlock52Block104Value0 recoveredBlock52Block104Value1 recoveredBlock52Block104Value2 |
    recoveredBlock52Block104Value0 := recoveredBlock52Block104Arg1.
    recoveredBlock52Block104Value1 := recoveredLocal4.
    recoveredBlock52Block104Value2 := (recoveredBlock52Block104Value0) > (recoveredBlock52Block104Value1).
    recoveredBlock52Block104Value2
].
            recoveredBlock52PC := 116.
        ].
        recoveredBlock52Step = 116 ifTrue: [
            recoveredBlock52Stack1 := (recoveredBlock52Stack1) select: (recoveredBlock52Stack2).
            recoveredBlock52PC := 118.
        ].
        recoveredBlock52Step = 118 ifTrue: [
            recoveredBlock52Stack2 := [:block2800532cArg1 :block2800532cArg2 | 
    | block2800532cValue0 block2800532cValue1 block2800532cValue2 |
    block2800532cValue0 := block2800532cArg1.
    block2800532cValue1 := block2800532cArg2.
    block2800532cValue2 := (block2800532cValue0) > (block2800532cValue1).
    block2800532cValue2
].
            recoveredBlock52PC := 120.
        ].
        recoveredBlock52Step = 120 ifTrue: [
            recoveredBlock52PC := 128.
        ].
        recoveredBlock52Step = 128 ifTrue: [
            recoveredBlock52Stack1 := (recoveredBlock52Stack1) asSortedCollection: (recoveredBlock52Stack2).
            recoveredBlock52PC := 130.
        ].
        recoveredBlock52Step = 130 ifTrue: [
            recoveredLocal1 := recoveredBlock52Stack1.
            recoveredBlock52PC := 133.
        ].
        recoveredBlock52Step = 133 ifTrue: [
            recoveredBlock52Stack1 := recoveredLocal1.
            recoveredBlock52PC := 136.
        ].
        recoveredBlock52Step = 136 ifTrue: [
            recoveredBlock52Stack1 := (recoveredBlock52Stack1) asOrderedCollection.
            recoveredBlock52PC := 138.
        ].
        recoveredBlock52Step = 138 ifTrue: [
            recoveredBlock52Stack2 := [:recoveredBlock52Block138Arg1 | 
    | recoveredBlock52Block138Value0 recoveredBlock52Block138Value1 recoveredBlock52Block138Value2 recoveredBlock52Block138Value3 recoveredBlock52Block138Value4 |
    recoveredBlock52Block138Value0 := recoveredLocal2.
    recoveredBlock52Block138Value1 := recoveredBlock52Block138Arg1.
    recoveredBlock52Block138Value2 := recoveredBlock52Arg1.
    recoveredBlock52Block138Value3 := (recoveredBlock52Block138Value2) name.
    recoveredBlock52Block138Value4 := (recoveredBlock52Block138Value0) editionAt: (recoveredBlock52Block138Value1) named: (recoveredBlock52Block138Value3).
    recoveredBlock52Block138Value4
].
            recoveredBlock52PC := 156.
        ].
        recoveredBlock52Step = 156 ifTrue: [
            recoveredBlock52Stack1 := (recoveredBlock52Stack1) collect: (recoveredBlock52Stack2).
            recoveredBlock52PC := 158.
        ].
        recoveredBlock52Step = 158 ifTrue: [
            recoveredLocal3 := recoveredBlock52Stack1.
            recoveredBlock52PC := 161.
        ].
        recoveredBlock52Step = 161 ifTrue: [
            recoveredBlock52Stack1 := nil.
            recoveredBlock52PC := 162.
        ].
        recoveredBlock52Step = 162 ifTrue: [
            recoveredBlock52Stack2 := recoveredLocal3.
            recoveredBlock52PC := 165.
        ].
        recoveredBlock52Step = 165 ifTrue: [
            recoveredBlock52Stack2 := (recoveredBlock52Stack2) notEmpty.
            recoveredBlock52PC := 167.
        ].
        recoveredBlock52Step = 167 ifTrue: [
            (recoveredBlock52Stack2) ifTrue: [recoveredBlock52PC := 170] ifFalse: [recoveredBlock52PC := 185].
        ].
        recoveredBlock52Step = 170 ifTrue: [
            recoveredBlock52PC := 171.
        ].
        recoveredBlock52Step = 171 ifTrue: [
            recoveredBlock52Stack1 := recoveredLocal5.
            recoveredBlock52PC := 174.
        ].
        recoveredBlock52Step = 174 ifTrue: [
            recoveredBlock52Stack2 := recoveredBlock52Arg1.
            recoveredBlock52PC := 177.
        ].
        recoveredBlock52Step = 177 ifTrue: [
            recoveredBlock52Stack3 := self.
            recoveredBlock52PC := 178.
        ].
        recoveredBlock52Step = 178 ifTrue: [
            recoveredBlock52Stack2 := (recoveredBlock52Stack2) asEditionIn: (recoveredBlock52Stack3).
            recoveredBlock52PC := 180.
        ].
        recoveredBlock52Step = 180 ifTrue: [
            recoveredBlock52Stack3 := recoveredLocal3.
            recoveredBlock52PC := 183.
        ].
        recoveredBlock52Step = 183 ifTrue: [
            recoveredBlock52Stack1 := (recoveredBlock52Stack1) at: (recoveredBlock52Stack2) put: (recoveredBlock52Stack3).
            recoveredBlock52PC := 185.
        ].
        recoveredBlock52Step = 185 ifTrue: [
            recoveredBlock52Result := recoveredBlock52Stack1.
            recoveredBlock52Done := true.
        ].
    ].
    recoveredBlock52Result
].
    (recoveredValue5) do: (recoveredValue6).
    recoveredValue7 := recoveredLocal5.
    ^recoveredValue7
! !

"lib.ic method 0x20027a18; bytecode file offset 0x63a9c"
!SubApplication class methodsFor: 'recovered'!
allPossibleSubApplications
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal5 := recoveredValue1.
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) with: (self).
    recoveredLocal4 := recoveredValue3.
    recoveredValue4 := EmLibrary.
    recoveredValue5 := (recoveredValue4) cache.
    recoveredValue6 := [
    | recoveredBlock21Stack0 recoveredBlock21Stack1 recoveredBlock21Stack2 recoveredBlock21Stack3 recoveredBlock21PC recoveredBlock21Step recoveredBlock21Done recoveredBlock21Result |
    recoveredBlock21Stack0 := self.
    recoveredBlock21PC := 28.
    recoveredBlock21Done := false.
    [recoveredBlock21Done not] whileTrue: [
        recoveredBlock21Step := recoveredBlock21PC.
        recoveredBlock21Step = 28 ifTrue: [
            recoveredBlock21PC := 155.
        ].
        recoveredBlock21Step = 32 ifTrue: [
            recoveredBlock21Stack1 := recoveredLocal4.
            recoveredBlock21PC := 35.
        ].
        recoveredBlock21Step = 35 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) removeFirst.
            recoveredBlock21PC := 37.
        ].
        recoveredBlock21Step = 37 ifTrue: [
            recoveredLocal3 := recoveredBlock21Stack1.
            recoveredBlock21PC := 40.
        ].
        recoveredBlock21Step = 40 ifTrue: [
            recoveredBlock21Stack1 := recoveredLocal3.
            recoveredBlock21PC := 43.
        ].
        recoveredBlock21Step = 43 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) subApplicationConfigurations.
            recoveredBlock21PC := 45.
        ].
        recoveredBlock21Step = 45 ifTrue: [
            recoveredBlock21Stack2 := [:recoveredBlock21Block45Arg1 | 
    | recoveredBlock21Block45Value0 recoveredBlock21Block45Value1 recoveredBlock21Block45Value2 recoveredBlock21Block45Value3 |
    recoveredBlock21Block45Value0 := recoveredBlock21Block45Arg1.
    recoveredBlock21Block45Value1 := (recoveredBlock21Block45Value0) value.
    recoveredBlock21Block45Value2 := [:recoveredBlock21Block45Block55Arg1 | 
    | recoveredBlock21Block45Block55Value0 recoveredBlock21Block45Block55Value1 recoveredBlock21Block45Block55Value2 recoveredBlock21Block45Block55Value3 recoveredBlock21Block45Block55Value4 recoveredBlock21Block45Block55Value5 recoveredBlock21Block45Block55Value6 recoveredBlock21Block45Block55Value7 recoveredBlock21Block45Block55Value8 |
    recoveredBlock21Block45Block55Value0 := recoveredLocal5.
    recoveredBlock21Block45Block55Value1 := recoveredBlock21Block45Block55Arg1.
    recoveredBlock21Block45Block55Value2 := (recoveredBlock21Block45Block55Value1) key.
    recoveredBlock21Block45Block55Value3 := [
    | recoveredBlock21Block45Block55Block70Value0 recoveredBlock21Block45Block55Block70Value1 recoveredBlock21Block45Block55Block70Value2 recoveredBlock21Block45Block55Block70Value3 recoveredBlock21Block45Block55Block70Value4 recoveredBlock21Block45Block55Block70Value5 |
    recoveredBlock21Block45Block55Block70Value0 := recoveredLocal5.
    recoveredBlock21Block45Block55Block70Value1 := recoveredBlock21Block45Block55Arg1.
    recoveredBlock21Block45Block55Block70Value2 := (recoveredBlock21Block45Block55Block70Value1) key.
    recoveredBlock21Block45Block55Block70Value3 := Set.
    recoveredBlock21Block45Block55Block70Value4 := (recoveredBlock21Block45Block55Block70Value3) new.
    recoveredBlock21Block45Block55Block70Value5 := (recoveredBlock21Block45Block55Block70Value0) at: (recoveredBlock21Block45Block55Block70Value2) put: (recoveredBlock21Block45Block55Block70Value4).
    recoveredBlock21Block45Block55Block70Value5
].
    recoveredBlock21Block45Block55Value4 := (recoveredBlock21Block45Block55Value0) at: (recoveredBlock21Block45Block55Value2) ifAbsent: (recoveredBlock21Block45Block55Value3).
    recoveredLocal2 := recoveredBlock21Block45Block55Value4.
    recoveredBlock21Block45Block55Value5 := recoveredLocal2.
    recoveredBlock21Block45Block55Value6 := [:recoveredBlock21Block45Block55Block98Arg1 | 
    | recoveredBlock21Block45Block55Block98Value0 recoveredBlock21Block45Block55Block98Value1 recoveredBlock21Block45Block55Block98Value2 recoveredBlock21Block45Block55Block98Value3 recoveredBlock21Block45Block55Block98Value4 |
    recoveredBlock21Block45Block55Block98Value0 := recoveredBlock21Block45Block55Block98Arg1.
    recoveredBlock21Block45Block55Block98Value1 := (recoveredBlock21Block45Block55Block98Value0) timeStamp.
    recoveredBlock21Block45Block55Block98Value2 := recoveredBlock21Block45Block55Arg1.
    recoveredBlock21Block45Block55Block98Value3 := (recoveredBlock21Block45Block55Block98Value2) value.
    recoveredBlock21Block45Block55Block98Value4 := (recoveredBlock21Block45Block55Block98Value1) = (recoveredBlock21Block45Block55Block98Value3).
    recoveredBlock21Block45Block55Block98Value4
].
    recoveredBlock21Block45Block55Value7 := [
    | recoveredBlock21Block45Block55Block114Value0 recoveredBlock21Block45Block55Block114Value1 recoveredBlock21Block45Block55Block114Value2 recoveredBlock21Block45Block55Block114Value3 recoveredBlock21Block45Block55Block114Value4 recoveredBlock21Block45Block55Block114Value5 recoveredBlock21Block45Block55Block114Value6 recoveredBlock21Block45Block55Block114Value7 recoveredBlock21Block45Block55Block114Value8 recoveredBlock21Block45Block55Block114Value9 recoveredBlock21Block45Block55Block114Value10 |
    recoveredBlock21Block45Block55Block114Value0 := recoveredLocal4.
    recoveredBlock21Block45Block55Block114Value1 := recoveredLocal2.
    recoveredBlock21Block45Block55Block114Value2 := SubApplication.
    recoveredBlock21Block45Block55Block114Value3 := (recoveredBlock21Block45Block55Block114Value2) shadowClass.
    recoveredBlock21Block45Block55Block114Value4 := recoveredBlock21Block45Block55Arg1.
    recoveredBlock21Block45Block55Block114Value5 := (recoveredBlock21Block45Block55Block114Value4) key.
    recoveredBlock21Block45Block55Block114Value6 := recoveredBlock21Block45Block55Arg1.
    recoveredBlock21Block45Block55Block114Value7 := (recoveredBlock21Block45Block55Block114Value6) value.
    recoveredBlock21Block45Block55Block114Value8 := (recoveredBlock21Block45Block55Block114Value3) named: (recoveredBlock21Block45Block55Block114Value5) timeStamp: (recoveredBlock21Block45Block55Block114Value7).
    recoveredBlock21Block45Block55Block114Value9 := (recoveredBlock21Block45Block55Block114Value1) add: (recoveredBlock21Block45Block55Block114Value8).
    recoveredBlock21Block45Block55Block114Value10 := (recoveredBlock21Block45Block55Block114Value0) addLast: (recoveredBlock21Block45Block55Block114Value9).
    recoveredBlock21Block45Block55Block114Value10
].
    recoveredBlock21Block45Block55Value8 := (recoveredBlock21Block45Block55Value5) detect: (recoveredBlock21Block45Block55Value6) ifNone: (recoveredBlock21Block45Block55Value7).
    recoveredBlock21Block45Block55Value8
].
    recoveredBlock21Block45Value3 := (recoveredBlock21Block45Value1) associationsDo: (recoveredBlock21Block45Value2).
    recoveredBlock21Block45Value3
].
            recoveredBlock21PC := 153.
        ].
        recoveredBlock21Step = 153 ifTrue: [
            (recoveredBlock21Stack1) do: (recoveredBlock21Stack2).
            recoveredBlock21PC := 155.
        ].
        recoveredBlock21Step = 155 ifTrue: [
            recoveredBlock21Stack1 := recoveredLocal4.
            recoveredBlock21PC := 158.
        ].
        recoveredBlock21Step = 158 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) isEmpty.
            recoveredBlock21PC := 160.
        ].
        recoveredBlock21Step = 160 ifTrue: [
            (recoveredBlock21Stack1) ifTrue: [recoveredBlock21PC := 164] ifFalse: [recoveredBlock21PC := 32].
        ].
        recoveredBlock21Step = 164 ifTrue: [
            recoveredBlock21Stack1 := nil.
            recoveredBlock21PC := 165.
        ].
        recoveredBlock21Step = 165 ifTrue: [
            recoveredBlock21Result := recoveredBlock21Stack1.
            recoveredBlock21Done := true.
        ].
    ].
    recoveredBlock21Result
].
    (recoveredValue5) cacheEditionsWhileExecuting: (recoveredValue6).
    recoveredValue7 := OrderedCollection.
    recoveredValue8 := (recoveredValue7) new.
    recoveredLocal1 := recoveredValue8.
    recoveredValue9 := recoveredLocal5.
    recoveredValue10 := [:recoveredBlock177Arg1 | 
    | recoveredBlock177Value0 recoveredBlock177Value1 recoveredBlock177Value2 |
    recoveredBlock177Value0 := recoveredLocal1.
    recoveredBlock177Value1 := recoveredBlock177Arg1.
    recoveredBlock177Value2 := (recoveredBlock177Value0) addAll: (recoveredBlock177Value1).
    recoveredBlock177Value2
].
    (recoveredValue9) do: (recoveredValue10).
    recoveredValue11 := recoveredLocal1.
    ^recoveredValue11
! !

"lib.ic method 0x20027d7c; bytecode file offset 0x63df8"
!SubApplication class methodsFor: 'recovered'!
defineSubclassOf: recoveredArg1 named: recoveredArg2 ifUnable: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEdition.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) isAwareOf: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := NlsCatEMc.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := 'MxEMc86'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) residentMsg: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := '%1'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock30Value0 recoveredBlock30Value1 |
    recoveredBlock30Value0 := recoveredArg3.
    recoveredBlock30Value1 := (recoveredBlock30Value0) value.
    ^recoveredBlock30Value1
].
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) allowedTo: (recoveredStack1) ifNot: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredPC := 74.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := EmImageSupport.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorReporter.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := 94.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack4 := (recoveredStack4) signature.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0) reportError: (recoveredStack1) withParms: (recoveredStack2).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 118] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) isClassVisible: (recoveredStack1).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 118] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := EmImageSupport.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorReporter.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := 95.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack3 := (recoveredStack3) name.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack4 := (recoveredStack4) signature.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack0) reportError: (recoveredStack1) withParms: (recoveredStack2).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 138] ifFalse: [recoveredPC := 124].
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := (recoveredStack0) isPrivate.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 132] ifFalse: [recoveredPC := 138].
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := 'PrivatelyDefined'.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredPC := 140.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := 'PubliclyDefined'.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock150Stack0 recoveredBlock150Stack1 recoveredBlock150Stack2 recoveredBlock150Stack3 recoveredBlock150Stack4 recoveredBlock150Stack5 recoveredBlock150PC recoveredBlock150Step recoveredBlock150Done recoveredBlock150Result |
    recoveredBlock150Stack0 := self.
    recoveredBlock150PC := 156.
    recoveredBlock150Done := false.
    [recoveredBlock150Done not] whileTrue: [
        recoveredBlock150Step := recoveredBlock150PC.
        recoveredBlock150Step = 156 ifTrue: [
            recoveredBlock150Stack0 := (recoveredBlock150Stack0) isEdition.
            recoveredBlock150PC := 157.
        ].
        recoveredBlock150Step = 157 ifTrue: [
            (recoveredBlock150Stack0) ifTrue: [recoveredBlock150PC := 160] ifFalse: [recoveredBlock150PC := 192].
        ].
        recoveredBlock150Step = 160 ifTrue: [
            recoveredBlock150Stack0 := self.
            recoveredBlock150PC := 161.
        ].
        recoveredBlock150Step = 161 ifTrue: [
            recoveredBlock150Stack1 := 'createEditions'.
            recoveredBlock150PC := 163.
        ].
        recoveredBlock150Step = 163 ifTrue: [
            recoveredBlock150Stack2 := recoveredArg2.
            recoveredBlock150PC := 166.
        ].
        recoveredBlock150Step = 166 ifTrue: [
            recoveredBlock150Stack0 := (recoveredBlock150Stack0) userHasRightTo: (recoveredBlock150Stack1) for: (recoveredBlock150Stack2).
            recoveredBlock150PC := 168.
        ].
        recoveredBlock150Step = 168 ifTrue: [
            (recoveredBlock150Stack0) ifTrue: [recoveredBlock150PC := 192] ifFalse: [recoveredBlock150PC := 172].
        ].
        recoveredBlock150Step = 172 ifTrue: [
            recoveredBlock150Stack0 := EmImageSupport.
            recoveredBlock150PC := 174.
        ].
        recoveredBlock150Step = 174 ifTrue: [
            recoveredBlock150Stack0 := (recoveredBlock150Stack0) errorReporter.
            recoveredBlock150PC := 176.
        ].
        recoveredBlock150Step = 176 ifTrue: [
            recoveredBlock150Stack1 := 96.
            recoveredBlock150PC := 180.
        ].
        recoveredBlock150Step = 180 ifTrue: [
            recoveredBlock150Stack2 := Array.
            recoveredBlock150PC := 182.
        ].
        recoveredBlock150Step = 182 ifTrue: [
            recoveredBlock150Stack3 := recoveredArg2.
            recoveredBlock150PC := 185.
        ].
        recoveredBlock150Step = 185 ifTrue: [
            recoveredBlock150Stack4 := self.
            recoveredBlock150PC := 186.
        ].
        recoveredBlock150Step = 186 ifTrue: [
            recoveredBlock150Stack4 := (recoveredBlock150Stack4) signature.
            recoveredBlock150PC := 188.
        ].
        recoveredBlock150Step = 188 ifTrue: [
            recoveredBlock150Stack2 := (recoveredBlock150Stack2) with: (recoveredBlock150Stack3) with: (recoveredBlock150Stack4).
            recoveredBlock150PC := 190.
        ].
        recoveredBlock150Step = 190 ifTrue: [
            (recoveredBlock150Stack0) reportError: (recoveredBlock150Stack1) withParms: (recoveredBlock150Stack2).
            recoveredBlock150PC := 192.
        ].
        recoveredBlock150Step = 192 ifTrue: [
            recoveredBlock150Stack0 := recoveredArg3.
            recoveredBlock150PC := 195.
        ].
        recoveredBlock150Step = 195 ifTrue: [
            recoveredBlock150Stack0 := (recoveredBlock150Stack0) value.
            recoveredBlock150PC := 197.
        ].
        recoveredBlock150Step = 197 ifTrue: [
            ^recoveredBlock150Stack0
        ].
    ].
    recoveredBlock150Result
].
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            (recoveredStack0) reserveClassName: (recoveredStack1) as: (recoveredStack2) ifUnable: (recoveredStack3).
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20029280; bytecode file offset 0x6531c"
!SubApplication class methodsFor: 'recovered'!
loadSubApplication: recoveredArg1 in: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) owningImage.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) globalNamespace.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) symbol.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) classAt: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := EmImageSupport.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorReporter.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := 156.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := (recoveredStack3) name.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) reportError: (recoveredStack1) withParms: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) isExpressionValid: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 55] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := EmImageSupport.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorReporter.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := 121.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) reportError: (recoveredStack1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) isVersion.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 85].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := EmImageSupport.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorReporter.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := 159.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack3 := (recoveredStack3) signature.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack4 := (recoveredStack4) signature.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) reportError: (recoveredStack1) withParms: (recoveredStack2).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := (recoveredStack0) editionRecord.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := (recoveredStack0) subApplicationsFor: (recoveredStack1).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := (recoveredStack1) symbol.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := (recoveredStack0) includesKey: (recoveredStack1).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 102] ifFalse: [recoveredPC := 136].
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := NlsCatEMb.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := 'MxEMb41'.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := (recoveredStack1) residentMsg: (recoveredStack2).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := '%1'.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack3 := (recoveredStack3) signature.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack2 := [
    ^nil
].
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack0) allowedTo: (recoveredStack1) ifNot: (recoveredStack2).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredPC := 199.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEdition.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 169] ifFalse: [recoveredPC := 146].
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := EmImageSupport.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorReporter.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := 159.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack3 := (recoveredStack3) signature.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack4 := (recoveredStack4) signature.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack0 := (recoveredStack0) reportError: (recoveredStack1) withParms: (recoveredStack2).
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := (recoveredStack0) userIsManager.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 199] ifFalse: [recoveredPC := 176].
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack0 := EmImageSupport.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorReporter.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack1 := 160.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack3 := (recoveredStack3) signature.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack4 := (recoveredStack4) signature.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack0 := (recoveredStack0) reportError: (recoveredStack1) withParms: (recoveredStack2).
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack0 := EmClassDevelopment.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack0 := (recoveredStack0) imageBuilder.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack0 := (recoveredStack0) loadSubApplication: (recoveredStack1) into: (recoveredStack2).
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack0 := (recoveredStack0) notNil.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack0 := (recoveredStack0) & (recoveredStack1).
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 218] ifFalse: [recoveredPC := 227].
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            (recoveredStack0) addSubApplication: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20029c00; bytecode file offset 0x65cb8"
!SubApplication class methodsFor: 'recovered'!
moveDifferencesWith: recoveredArg1 from: recoveredArg2 to: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isVersion.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := EmImageSupport.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorReporter.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := 106.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := (recoveredStack3) signature.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack4 := (recoveredStack4) fullName.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) logError: (recoveredStack1) withParms: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := EmLibrary.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0 == recoveredStack1) ifTrue: [recoveredPC := 49] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) becomeDefault.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) partsRecord.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := [:block28005548Arg1 | 
    | block28005548Value0 block28005548Value1 |
    block28005548Value0 := block28005548Arg1.
    block28005548Value1 := (block28005548Value0) timeStamp.
    block28005548Value1
].
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := Dictionary.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) editionsDictionary.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := [:recoveredBlock85Arg1 | 
    | recoveredBlock85Stack0 recoveredBlock85Stack1 recoveredBlock85Stack2 recoveredBlock85Stack3 recoveredBlock85Stack4 recoveredBlock85PC recoveredBlock85Step recoveredBlock85Done recoveredBlock85Result |
    recoveredBlock85Stack0 := self.
    recoveredBlock85PC := 92.
    recoveredBlock85Done := false.
    [recoveredBlock85Done not] whileTrue: [
        recoveredBlock85Step := recoveredBlock85PC.
        recoveredBlock85Step = 92 ifTrue: [
            recoveredBlock85Stack1 := nil.
            recoveredBlock85PC := 93.
        ].
        recoveredBlock85Step = 93 ifTrue: [
            recoveredBlock85Stack2 := recoveredLocal3.
            recoveredBlock85PC := 96.
        ].
        recoveredBlock85Step = 96 ifTrue: [
            recoveredBlock85Stack3 := recoveredBlock85Arg1.
            recoveredBlock85PC := 97.
        ].
        recoveredBlock85Step = 97 ifTrue: [
            recoveredBlock85Stack3 := (recoveredBlock85Stack3) key.
            recoveredBlock85PC := 99.
        ].
        recoveredBlock85Step = 99 ifTrue: [
            recoveredBlock85Stack2 := (recoveredBlock85Stack2) includes: (recoveredBlock85Stack3).
            recoveredBlock85PC := 101.
        ].
        recoveredBlock85Step = 101 ifTrue: [
            (recoveredBlock85Stack2) ifTrue: [recoveredBlock85PC := 104] ifFalse: [recoveredBlock85PC := 153].
        ].
        recoveredBlock85Step = 104 ifTrue: [
            recoveredBlock85PC := 105.
        ].
        recoveredBlock85Step = 105 ifTrue: [
            recoveredBlock85Stack1 := self.
            recoveredBlock85PC := 106.
        ].
        recoveredBlock85Step = 106 ifTrue: [
            recoveredBlock85Stack1 := (recoveredBlock85Stack1) editionRecordClass.
            recoveredBlock85PC := 108.
        ].
        recoveredBlock85Step = 108 ifTrue: [
            recoveredBlock85Stack2 := recoveredBlock85Arg1.
            recoveredBlock85PC := 109.
        ].
        recoveredBlock85Step = 109 ifTrue: [
            recoveredBlock85Stack2 := (recoveredBlock85Stack2) value.
            recoveredBlock85PC := 111.
        ].
        recoveredBlock85Step = 111 ifTrue: [
            recoveredBlock85Stack3 := recoveredLocal4.
            recoveredBlock85PC := 114.
        ].
        recoveredBlock85Step = 114 ifTrue: [
            recoveredBlock85Stack3 := (recoveredBlock85Stack3) library.
            recoveredBlock85PC := 116.
        ].
        recoveredBlock85Step = 116 ifTrue: [
            recoveredBlock85Stack1 := (recoveredBlock85Stack1) using: (recoveredBlock85Stack2) from: (recoveredBlock85Stack3).
            recoveredBlock85PC := 118.
        ].
        recoveredBlock85Step = 118 ifTrue: [
            recoveredBlock85Stack1 := (recoveredBlock85Stack1) releasedNamesAndTimeStamps.
            recoveredBlock85PC := 120.
        ].
        recoveredBlock85Step = 120 ifTrue: [
            recoveredBlock85Stack2 := [:recoveredBlock85Block120Arg1 | 
    | recoveredBlock85Block120Stack0 recoveredBlock85Block120Stack1 recoveredBlock85Block120Stack2 recoveredBlock85Block120Stack3 recoveredBlock85Block120Stack4 recoveredBlock85Block120PC recoveredBlock85Block120Step recoveredBlock85Block120Done recoveredBlock85Block120Result |
    recoveredBlock85Block120Stack0 := nil.
    recoveredBlock85Block120PC := 126.
    recoveredBlock85Block120Done := false.
    [recoveredBlock85Block120Done not] whileTrue: [
        recoveredBlock85Block120Step := recoveredBlock85Block120PC.
        recoveredBlock85Block120Step = 126 ifTrue: [
            recoveredBlock85Block120Stack1 := recoveredLocal2.
            recoveredBlock85Block120PC := 129.
        ].
        recoveredBlock85Block120Step = 129 ifTrue: [
            recoveredBlock85Block120Stack2 := recoveredBlock85Block120Arg1.
            recoveredBlock85Block120PC := 130.
        ].
        recoveredBlock85Block120Step = 130 ifTrue: [
            recoveredBlock85Block120Stack2 := (recoveredBlock85Block120Stack2) key.
            recoveredBlock85Block120PC := 132.
        ].
        recoveredBlock85Block120Step = 132 ifTrue: [
            recoveredBlock85Block120Stack3 := [
    | block2800556cValue0 block2800556cValue1 |
    block2800556cValue0 := Set.
    block2800556cValue1 := (block2800556cValue0) new.
    block2800556cValue1
].
            recoveredBlock85Block120PC := 134.
        ].
        recoveredBlock85Block120Step = 134 ifTrue: [
            recoveredBlock85Block120PC := 143.
        ].
        recoveredBlock85Block120Step = 143 ifTrue: [
            recoveredBlock85Block120Stack1 := (recoveredBlock85Block120Stack1) at: (recoveredBlock85Block120Stack2) ifAbsentPut: (recoveredBlock85Block120Stack3).
            recoveredBlock85Block120PC := 145.
        ].
        recoveredBlock85Block120Step = 145 ifTrue: [
            recoveredBlock85Block120Stack2 := recoveredBlock85Block120Arg1.
            recoveredBlock85Block120PC := 146.
        ].
        recoveredBlock85Block120Step = 146 ifTrue: [
            recoveredBlock85Block120Stack2 := (recoveredBlock85Block120Stack2) value.
            recoveredBlock85Block120PC := 148.
        ].
        recoveredBlock85Block120Step = 148 ifTrue: [
            recoveredBlock85Block120Stack1 := (recoveredBlock85Block120Stack1) add: (recoveredBlock85Block120Stack2).
            recoveredBlock85Block120PC := 150.
        ].
        recoveredBlock85Block120Step = 150 ifTrue: [
            recoveredBlock85Block120Result := recoveredBlock85Block120Stack1.
            recoveredBlock85Block120Done := true.
        ].
    ].
    recoveredBlock85Block120Result
].
            recoveredBlock85PC := 151.
        ].
        recoveredBlock85Step = 151 ifTrue: [
            recoveredBlock85Stack1 := (recoveredBlock85Stack1) associationsDo: (recoveredBlock85Stack2).
            recoveredBlock85PC := 153.
        ].
        recoveredBlock85Step = 153 ifTrue: [
            recoveredBlock85Result := recoveredBlock85Stack1.
            recoveredBlock85Done := true.
        ].
    ].
    recoveredBlock85Result
].
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            (recoveredStack0) forAllEntriesDo: (recoveredStack1).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := (recoveredStack1) symbol.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack3 := (recoveredStack3) timeStamp.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack5 := recoveredLocal4.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack6 := recoveredLocal2.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack7 := Dictionary.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack7 := (recoveredStack7) new.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack8 := Dictionary.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack8 := (recoveredStack8) new.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack9 := Dictionary.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack9 := (recoveredStack9) new.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack10 := false.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack0 := (recoveredStack0) moveAllVersionsOf: (recoveredStack1) in: (recoveredStack2) from: (recoveredStack3) to: (recoveredStack4) using: (recoveredStack5) skipClassesIn: (recoveredStack6) mapping: (recoveredStack7) removeSourceStructure: (recoveredStack8) removeCommentStructure: (recoveredStack9) forgetStoredObjects: (recoveredStack10).
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 204] ifFalse: [recoveredPC := 227].
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack0 := (recoveredStack0) owningImage.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack1 := 'Moved %1 from %2 to %3'.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack2 := (recoveredStack2) signature.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack3 := (recoveredStack3) fullName.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack4 := (recoveredStack4) fullName.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            (recoveredStack0) logApplicationNotice: (recoveredStack1).
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            (recoveredStack0) becomeDefault.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2002aad8; bytecode file offset 0x66b54"
!SubApplication class methodsFor: 'recovered'!
differencesWith: recoveredArg1 includeSubApplications: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) withAllSubApplications.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) withAllSubApplications.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := [:recoveredBlock32Arg1 | 
    | recoveredBlock32Value0 recoveredBlock32Value1 recoveredBlock32Value2 recoveredBlock32Value3 recoveredBlock32Value4 |
    recoveredBlock32Value0 := recoveredLocal5.
    recoveredBlock32Value1 := recoveredBlock32Arg1.
    recoveredBlock32Value2 := (recoveredBlock32Value1) symbol.
    recoveredBlock32Value3 := recoveredBlock32Arg1.
    recoveredBlock32Value4 := (recoveredBlock32Value0) at: (recoveredBlock32Value2) put: (recoveredBlock32Value3).
    recoveredBlock32Value4
].
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredPC := 82.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := (recoveredStack2) symbol.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := [:recoveredBlock98Arg1 | 
    | recoveredBlock98Stack0 recoveredBlock98Stack1 recoveredBlock98Stack2 recoveredBlock98Stack3 recoveredBlock98Stack4 recoveredBlock98Stack5 recoveredBlock98Stack6 recoveredBlock98Stack7 recoveredBlock98PC recoveredBlock98Step recoveredBlock98Done recoveredBlock98Result |
    recoveredBlock98Stack0 := self.
    recoveredBlock98PC := 104.
    recoveredBlock98Done := false.
    [recoveredBlock98Done not] whileTrue: [
        recoveredBlock98Step := recoveredBlock98PC.
        recoveredBlock98Step = 104 ifTrue: [
            recoveredBlock98Stack1 := recoveredBlock98Arg1.
            recoveredBlock98PC := 105.
        ].
        recoveredBlock98Step = 105 ifTrue: [
            recoveredBlock98Stack1 := (recoveredBlock98Stack1) symbol.
            recoveredBlock98PC := 107.
        ].
        recoveredBlock98Step = 107 ifTrue: [
            recoveredLocal3 := recoveredBlock98Stack1.
            recoveredBlock98PC := 110.
        ].
        recoveredBlock98Step = 110 ifTrue: [
            recoveredBlock98Stack1 := recoveredLocal5.
            recoveredBlock98PC := 113.
        ].
        recoveredBlock98Step = 113 ifTrue: [
            recoveredBlock98Stack2 := recoveredLocal3.
            recoveredBlock98PC := 116.
        ].
        recoveredBlock98Step = 116 ifTrue: [
            recoveredBlock98Stack3 := [
    | recoveredBlock98Block116Value0 recoveredBlock98Block116Value1 recoveredBlock98Block116Value2 recoveredBlock98Block116Value3 recoveredBlock98Block116Value4 recoveredBlock98Block116Value5 |
    recoveredBlock98Block116Value0 := SubApplication.
    recoveredBlock98Block116Value1 := (recoveredBlock98Block116Value0) shadowClass.
    recoveredBlock98Block116Value2 := recoveredLocal3.
    recoveredBlock98Block116Value3 := EmTimeStamp.
    recoveredBlock98Block116Value4 := (recoveredBlock98Block116Value3) undefined.
    recoveredBlock98Block116Value5 := (recoveredBlock98Block116Value1) named: (recoveredBlock98Block116Value2) timeStampWithVersionInfo: (recoveredBlock98Block116Value4).
    recoveredBlock98Block116Value5
].
            recoveredBlock98PC := 136.
        ].
        recoveredBlock98Step = 136 ifTrue: [
            recoveredBlock98Stack1 := (recoveredBlock98Stack1) at: (recoveredBlock98Stack2) ifAbsent: (recoveredBlock98Stack3).
            recoveredBlock98PC := 138.
        ].
        recoveredBlock98Step = 138 ifTrue: [
            recoveredLocal2 := recoveredBlock98Stack1.
            recoveredBlock98PC := 141.
        ].
        recoveredBlock98Step = 141 ifTrue: [
            recoveredBlock98Stack1 := recoveredBlock98Arg1.
            recoveredBlock98PC := 142.
        ].
        recoveredBlock98Step = 142 ifTrue: [
            recoveredBlock98Stack1 := (recoveredBlock98Stack1) timeStamp.
            recoveredBlock98PC := 144.
        ].
        recoveredBlock98Step = 144 ifTrue: [
            recoveredBlock98Stack2 := recoveredLocal2.
            recoveredBlock98PC := 147.
        ].
        recoveredBlock98Step = 147 ifTrue: [
            recoveredBlock98Stack2 := (recoveredBlock98Stack2) timeStamp.
            recoveredBlock98PC := 149.
        ].
        recoveredBlock98Step = 149 ifTrue: [
            recoveredBlock98Stack1 := (recoveredBlock98Stack1) = (recoveredBlock98Stack2).
            recoveredBlock98PC := 150.
        ].
        recoveredBlock98Step = 150 ifTrue: [
            (recoveredBlock98Stack1) ifTrue: [recoveredBlock98PC := 154] ifFalse: [recoveredBlock98PC := 168].
        ].
        recoveredBlock98Step = 154 ifTrue: [
            recoveredBlock98Stack1 := recoveredBlock98Arg1.
            recoveredBlock98PC := 155.
        ].
        recoveredBlock98Step = 155 ifTrue: [
            recoveredBlock98Stack1 := (recoveredBlock98Stack1) isVersion.
            recoveredBlock98PC := 157.
        ].
        recoveredBlock98Step = 157 ifTrue: [
            (recoveredBlock98Stack1) ifTrue: [recoveredBlock98PC := 160] ifFalse: [recoveredBlock98PC := 168].
        ].
        recoveredBlock98Step = 160 ifTrue: [
            recoveredBlock98Stack1 := recoveredLocal2.
            recoveredBlock98PC := 163.
        ].
        recoveredBlock98Step = 163 ifTrue: [
            recoveredBlock98Stack1 := (recoveredBlock98Stack1) isVersion.
            recoveredBlock98PC := 165.
        ].
        recoveredBlock98Step = 165 ifTrue: [
            (recoveredBlock98Stack1) ifTrue: [recoveredBlock98PC := 187] ifFalse: [recoveredBlock98PC := 168].
        ].
        recoveredBlock98Step = 168 ifTrue: [
            recoveredBlock98Stack1 := recoveredLocal4.
            recoveredBlock98PC := 171.
        ].
        recoveredBlock98Step = 171 ifTrue: [
            recoveredBlock98Stack2 := recoveredLocal2.
            recoveredBlock98PC := 174.
        ].
        recoveredBlock98Step = 174 ifTrue: [
            recoveredBlock98Stack3 := Association.
            recoveredBlock98PC := 176.
        ].
        recoveredBlock98Step = 176 ifTrue: [
            recoveredBlock98Stack4 := recoveredBlock98Arg1.
            recoveredBlock98PC := 177.
        ].
        recoveredBlock98Step = 177 ifTrue: [
            recoveredBlock98Stack5 := recoveredBlock98Arg1.
            recoveredBlock98PC := 178.
        ].
        recoveredBlock98Step = 178 ifTrue: [
            recoveredBlock98Stack6 := recoveredLocal2.
            recoveredBlock98PC := 181.
        ].
        recoveredBlock98Step = 181 ifTrue: [
            recoveredBlock98Stack5 := (recoveredBlock98Stack5) differencesWith: (recoveredBlock98Stack6).
            recoveredBlock98PC := 183.
        ].
        recoveredBlock98Step = 183 ifTrue: [
            recoveredBlock98Stack3 := (recoveredBlock98Stack3) key: (recoveredBlock98Stack4) value: (recoveredBlock98Stack5).
            recoveredBlock98PC := 185.
        ].
        recoveredBlock98Step = 185 ifTrue: [
            (recoveredBlock98Stack1) at: (recoveredBlock98Stack2) put: (recoveredBlock98Stack3).
            recoveredBlock98PC := 187.
        ].
        recoveredBlock98Step = 187 ifTrue: [
            recoveredBlock98Stack1 := recoveredLocal5.
            recoveredBlock98PC := 190.
        ].
        recoveredBlock98Step = 190 ifTrue: [
            recoveredBlock98Stack2 := recoveredLocal3.
            recoveredBlock98PC := 193.
        ].
        recoveredBlock98Step = 193 ifTrue: [
            recoveredBlock98Stack3 := [].
            recoveredBlock98PC := 195.
        ].
        recoveredBlock98Step = 195 ifTrue: [
            recoveredBlock98Stack1 := (recoveredBlock98Stack1) removeKey: (recoveredBlock98Stack2) ifAbsent: (recoveredBlock98Stack3).
            recoveredBlock98PC := 197.
        ].
        recoveredBlock98Step = 197 ifTrue: [
            recoveredBlock98Result := recoveredBlock98Stack1.
            recoveredBlock98Done := true.
        ].
    ].
    recoveredBlock98Result
].
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack2 := [:recoveredBlock203Arg1 | 
    | recoveredBlock203Value0 recoveredBlock203Value1 recoveredBlock203Value2 recoveredBlock203Value3 recoveredBlock203Value4 recoveredBlock203Value5 recoveredBlock203Value6 recoveredBlock203Value7 recoveredBlock203Value8 recoveredBlock203Value9 recoveredBlock203Value10 recoveredBlock203Value11 recoveredBlock203Value12 recoveredBlock203Value13 recoveredBlock203Value14 recoveredBlock203Value15 |
    recoveredBlock203Value0 := SubApplication.
    recoveredBlock203Value1 := (recoveredBlock203Value0) shadowClass.
    recoveredBlock203Value2 := recoveredBlock203Arg1.
    recoveredBlock203Value3 := (recoveredBlock203Value2) symbol.
    recoveredBlock203Value4 := EmTimeStamp.
    recoveredBlock203Value5 := (recoveredBlock203Value4) undefined.
    recoveredBlock203Value6 := (recoveredBlock203Value1) named: (recoveredBlock203Value3) timeStampWithVersionInfo: (recoveredBlock203Value5).
    recoveredLocal1 := recoveredBlock203Value6.
    recoveredBlock203Value7 := recoveredLocal4.
    recoveredBlock203Value8 := recoveredBlock203Arg1.
    recoveredBlock203Value9 := Association.
    recoveredBlock203Value10 := recoveredLocal1.
    recoveredBlock203Value11 := recoveredLocal1.
    recoveredBlock203Value12 := recoveredBlock203Arg1.
    recoveredBlock203Value13 := (recoveredBlock203Value11) differencesWith: (recoveredBlock203Value12).
    recoveredBlock203Value14 := (recoveredBlock203Value9) key: (recoveredBlock203Value10) value: (recoveredBlock203Value13).
    recoveredBlock203Value15 := (recoveredBlock203Value7) at: (recoveredBlock203Value8) put: (recoveredBlock203Value14).
    recoveredBlock203Value15
].
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"lib.ic method 0x2002b640; bytecode file offset 0x676dc"
!SubApplication class methodsFor: 'recovered'!
newClassEditionFor: recoveredArg1 ifUnable: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) isClassVisible: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := EmImageSupport.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorReporter.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 108.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := (recoveredStack3) name.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack4 := (recoveredStack4) name.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) logError: (recoveredStack1) withParms: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := 'createEditions'.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) userHasRightTo: (recoveredStack1) for: (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := EmImageSupport.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorReporter.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := 96.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := (recoveredStack3) name.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack4 := (recoveredStack4) signature.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) logError: (recoveredStack1) withParms: (recoveredStack2).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := NlsCatEMc.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := 'MxEMc90'.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) residentMsg: (recoveredStack2).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := '%1'.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack3 := (recoveredStack3) name.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock92Value0 recoveredBlock92Value1 |
    recoveredBlock92Value0 := recoveredArg2.
    recoveredBlock92Value1 := (recoveredBlock92Value0) value.
    ^recoveredBlock92Value1
].
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack0) allowedTo: (recoveredStack1) ifNot: (recoveredStack2).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := (recoveredStack0) signatureIn: (recoveredStack1).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := EmLibrary.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := (recoveredStack0) operationsInterface.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            (recoveredStack0) applicationNewClassEditionFor: (recoveredStack1) class: (recoveredStack2) ifUnable: (recoveredStack3).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack0 := EmImageSupport.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorReporter.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := 109.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack3 := (recoveredStack3) signatureIn: (recoveredStack4).
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack5 := (recoveredStack5) signature.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5).
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            (recoveredStack0) logError: (recoveredStack1) withParms: (recoveredStack2).
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack0 := (recoveredStack0) ownerOf: (recoveredStack1).
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack1 := EmUser.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack1 := (recoveredStack1) current.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 234] ifFalse: [recoveredPC := 178].
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 208] ifFalse: [recoveredPC := 184].
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack0 := EmImageSupport.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorReporter.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack1 := 182.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack3 := (recoveredStack3) name.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack4 := (recoveredStack4) signature.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            (recoveredStack0) logError: (recoveredStack1) withParms: (recoveredStack2).
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredPC := 234.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack0 := EmImageSupport.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorReporter.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack1 := 110.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack3 := (recoveredStack3) fullName.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack4 := (recoveredStack4) name.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack5 := (recoveredStack5) signature.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5).
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            (recoveredStack0) logError: (recoveredStack1) withParms: (recoveredStack2).
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack0 := (recoveredStack0) owningImage.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack1 := 'Made %1 from %2 in %3'.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack2 := (recoveredStack2) signatureIn: (recoveredStack3).
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack4 := (recoveredStack4) signature.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            (recoveredStack0) logClassNotice: (recoveredStack1).
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2002c11c; bytecode file offset 0x681e8"
!SubApplication class methodsFor: 'recovered'!
versionName: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isConsistent.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 25] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) owningImage.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := NlsCatEMc.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 'MxEMc107'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) residentMsg: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) subApplicationConfigurations.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 207].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := Set.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := [:recoveredBlock52Arg1 | 
    | recoveredBlock52Value0 recoveredBlock52Value1 recoveredBlock52Value2 recoveredBlock52Value3 |
    recoveredBlock52Value0 := recoveredBlock52Arg1.
    recoveredBlock52Value1 := (recoveredBlock52Value0) value.
    recoveredBlock52Value2 := [:recoveredBlock52Block61Arg1 | 
    | recoveredBlock52Block61Value0 recoveredBlock52Block61Value1 recoveredBlock52Block61Value2 |
    recoveredBlock52Block61Value0 := recoveredLocal2.
    recoveredBlock52Block61Value1 := recoveredBlock52Block61Arg1.
    recoveredBlock52Block61Value2 := (recoveredBlock52Block61Value0) add: (recoveredBlock52Block61Value1).
    recoveredBlock52Block61Value2
].
    recoveredBlock52Value3 := (recoveredBlock52Value1) associationsDo: (recoveredBlock52Value2).
    recoveredBlock52Value3
].
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := EmLibrary.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) operationsInterface.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := SubApplication.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSubApplication.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := (recoveredStack2) asOrderedCollection.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) applicationShadowsForNamesAndTimeStampsFor: (recoveredStack1) namesAndTimeStamps: (recoveredStack2).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := [:block280057d0Arg1 | 
    | block280057d0Value0 block280057d0Value1 |
    block280057d0Value0 := block280057d0Arg1.
    block280057d0Value1 := (block280057d0Value0) isVersion.
    block280057d0Value1
].
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := (recoveredStack0) reject: (recoveredStack1).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := [:recoveredBlock114Arg1 | 
    | recoveredBlock114Value0 recoveredBlock114Value1 recoveredBlock114Value2 recoveredBlock114Value3 |
    recoveredBlock114Value0 := recoveredBlock114Arg1.
    recoveredBlock114Value1 := (recoveredBlock114Value0) value.
    recoveredBlock114Value2 := [:recoveredBlock114Block125Arg1 | 
    | recoveredBlock114Block125Stack0 recoveredBlock114Block125Stack1 recoveredBlock114Block125Stack2 recoveredBlock114Block125Stack3 recoveredBlock114Block125Stack4 recoveredBlock114Block125Stack5 recoveredBlock114Block125Stack6 recoveredBlock114Block125PC recoveredBlock114Block125Step recoveredBlock114Block125Done recoveredBlock114Block125Result |
    recoveredBlock114Block125Stack0 := nil.
    recoveredBlock114Block125PC := 132.
    recoveredBlock114Block125Done := false.
    [recoveredBlock114Block125Done not] whileTrue: [
        recoveredBlock114Block125Step := recoveredBlock114Block125PC.
        recoveredBlock114Block125Step = 132 ifTrue: [
            recoveredBlock114Block125Stack1 := nil.
            recoveredBlock114Block125PC := 133.
        ].
        recoveredBlock114Block125Step = 133 ifTrue: [
            recoveredBlock114Block125Stack2 := recoveredLocal1.
            recoveredBlock114Block125PC := 136.
        ].
        recoveredBlock114Block125Step = 136 ifTrue: [
            recoveredBlock114Block125Stack3 := [:recoveredBlock114Block125Block136Arg1 | 
    | recoveredBlock114Block125Block136Stack0 recoveredBlock114Block125Block136Stack1 recoveredBlock114Block125Block136Stack2 recoveredBlock114Block125Block136Stack3 recoveredBlock114Block125Block136Stack4 recoveredBlock114Block125Block136PC recoveredBlock114Block125Block136Step recoveredBlock114Block125Block136Done recoveredBlock114Block125Block136Result |
    recoveredBlock114Block125Block136Stack0 := nil.
    recoveredBlock114Block125Block136PC := 142.
    recoveredBlock114Block125Block136Done := false.
    [recoveredBlock114Block125Block136Done not] whileTrue: [
        recoveredBlock114Block125Block136Step := recoveredBlock114Block125Block136PC.
        recoveredBlock114Block125Block136Step = 142 ifTrue: [
            recoveredBlock114Block125Block136Stack1 := false.
            recoveredBlock114Block125Block136PC := 143.
        ].
        recoveredBlock114Block125Block136Step = 143 ifTrue: [
            recoveredBlock114Block125Block136Stack2 := recoveredBlock114Block125Block136Arg1.
            recoveredBlock114Block125Block136PC := 144.
        ].
        recoveredBlock114Block125Block136Step = 144 ifTrue: [
            recoveredBlock114Block125Block136Stack2 := (recoveredBlock114Block125Block136Stack2) symbol.
            recoveredBlock114Block125Block136PC := 146.
        ].
        recoveredBlock114Block125Block136Step = 146 ifTrue: [
            recoveredBlock114Block125Block136Stack3 := recoveredBlock114Block125Arg1.
            recoveredBlock114Block125Block136PC := 149.
        ].
        recoveredBlock114Block125Block136Step = 149 ifTrue: [
            recoveredBlock114Block125Block136Stack3 := (recoveredBlock114Block125Block136Stack3) key.
            recoveredBlock114Block125Block136PC := 151.
        ].
        recoveredBlock114Block125Block136Step = 151 ifTrue: [
            (recoveredBlock114Block125Block136Stack2 ~~ recoveredBlock114Block125Block136Stack3) ifTrue: [recoveredBlock114Block125Block136PC := 164] ifFalse: [recoveredBlock114Block125Block136PC := 154].
        ].
        recoveredBlock114Block125Block136Step = 154 ifTrue: [
            recoveredBlock114Block125Block136PC := 155.
        ].
        recoveredBlock114Block125Block136Step = 155 ifTrue: [
            recoveredBlock114Block125Block136Stack1 := recoveredBlock114Block125Block136Arg1.
            recoveredBlock114Block125Block136PC := 156.
        ].
        recoveredBlock114Block125Block136Step = 156 ifTrue: [
            recoveredBlock114Block125Block136Stack1 := (recoveredBlock114Block125Block136Stack1) timeStamp.
            recoveredBlock114Block125Block136PC := 158.
        ].
        recoveredBlock114Block125Block136Step = 158 ifTrue: [
            recoveredBlock114Block125Block136Stack2 := recoveredBlock114Block125Arg1.
            recoveredBlock114Block125Block136PC := 161.
        ].
        recoveredBlock114Block125Block136Step = 161 ifTrue: [
            recoveredBlock114Block125Block136Stack2 := (recoveredBlock114Block125Block136Stack2) value.
            recoveredBlock114Block125Block136PC := 163.
        ].
        recoveredBlock114Block125Block136Step = 163 ifTrue: [
            recoveredBlock114Block125Block136Stack1 := (recoveredBlock114Block125Block136Stack1) = (recoveredBlock114Block125Block136Stack2).
            recoveredBlock114Block125Block136PC := 164.
        ].
        recoveredBlock114Block125Block136Step = 164 ifTrue: [
            recoveredBlock114Block125Block136Result := recoveredBlock114Block125Block136Stack1.
            recoveredBlock114Block125Block136Done := true.
        ].
    ].
    recoveredBlock114Block125Block136Result
].
            recoveredBlock114Block125PC := 165.
        ].
        recoveredBlock114Block125Step = 165 ifTrue: [
            recoveredBlock114Block125Stack4 := [].
            recoveredBlock114Block125PC := 167.
        ].
        recoveredBlock114Block125Step = 167 ifTrue: [
            recoveredBlock114Block125Stack2 := (recoveredBlock114Block125Stack2) detect: (recoveredBlock114Block125Stack3) ifNone: (recoveredBlock114Block125Stack4).
            recoveredBlock114Block125PC := 169.
        ].
        recoveredBlock114Block125Step = 169 ifTrue: [
            (recoveredBlock114Block125Stack2 == nil) ifTrue: [recoveredBlock114Block125PC := 201] ifFalse: [recoveredBlock114Block125PC := 172].
        ].
        recoveredBlock114Block125Step = 172 ifTrue: [
            recoveredBlock114Block125PC := 173.
        ].
        recoveredBlock114Block125Step = 173 ifTrue: [
            recoveredBlock114Block125Stack1 := EmImageSupport.
            recoveredBlock114Block125PC := 175.
        ].
        recoveredBlock114Block125Step = 175 ifTrue: [
            recoveredBlock114Block125Stack1 := (recoveredBlock114Block125Stack1) errorReporter.
            recoveredBlock114Block125PC := 177.
        ].
        recoveredBlock114Block125Step = 177 ifTrue: [
            recoveredBlock114Block125Stack2 := 116.
            recoveredBlock114Block125PC := 180.
        ].
        recoveredBlock114Block125Step = 180 ifTrue: [
            recoveredBlock114Block125Stack3 := Array.
            recoveredBlock114Block125PC := 182.
        ].
        recoveredBlock114Block125Step = 182 ifTrue: [
            recoveredBlock114Block125Stack4 := recoveredBlock114Block125Arg1.
            recoveredBlock114Block125PC := 185.
        ].
        recoveredBlock114Block125Step = 185 ifTrue: [
            recoveredBlock114Block125Stack4 := (recoveredBlock114Block125Stack4) key.
            recoveredBlock114Block125PC := 187.
        ].
        recoveredBlock114Block125Step = 187 ifTrue: [
            recoveredBlock114Block125Stack5 := recoveredBlock114Arg1.
            recoveredBlock114Block125PC := 190.
        ].
        recoveredBlock114Block125Step = 190 ifTrue: [
            recoveredBlock114Block125Stack5 := (recoveredBlock114Block125Stack5) key.
            recoveredBlock114Block125PC := 192.
        ].
        recoveredBlock114Block125Step = 192 ifTrue: [
            recoveredBlock114Block125Stack3 := (recoveredBlock114Block125Stack3) with: (recoveredBlock114Block125Stack4) with: (recoveredBlock114Block125Stack5).
            recoveredBlock114Block125PC := 194.
        ].
        recoveredBlock114Block125Step = 194 ifTrue: [
            (recoveredBlock114Block125Stack1) logError: (recoveredBlock114Block125Stack2) withParms: (recoveredBlock114Block125Stack3).
            recoveredBlock114Block125PC := 196.
        ].
        recoveredBlock114Block125Step = 196 ifTrue: [
            recoveredBlock114Block125Stack1 := false.
            recoveredBlock114Block125PC := 197.
        ].
        recoveredBlock114Block125Step = 197 ifTrue: [
            recoveredBlock114Block125Stack2 := recoveredBlock114Block125Stack1.
            recoveredBlock114Block125PC := 198.
        ].
        recoveredBlock114Block125Step = 198 ifTrue: [
            recoveredLocal6 := recoveredBlock114Block125Stack2.
            recoveredBlock114Block125PC := 201.
        ].
        recoveredBlock114Block125Step = 201 ifTrue: [
            recoveredBlock114Block125Result := recoveredBlock114Block125Stack1.
            recoveredBlock114Block125Done := true.
        ].
    ].
    recoveredBlock114Block125Result
].
    recoveredBlock114Value3 := (recoveredBlock114Value1) associationsDo: (recoveredBlock114Value2).
    recoveredBlock114Value3
].
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 233] ifFalse: [recoveredPC := 214].
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack0 := EmImageSupport.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorReporter.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack1 := 165.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack3 := (recoveredStack3) signature.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            (recoveredStack0) reportError: (recoveredStack1) withParms: (recoveredStack2).
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack0 := (recoveredStack0) signature.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack0 := EmLibrary.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack0 := (recoveredStack0) operationsInterface.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack3 := [
    ^false
].
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            (recoveredStack0) applicationVersionApplicationFor: (recoveredStack1) versionName: (recoveredStack2) ifUnable: (recoveredStack3).
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack0 := (recoveredStack0) owningImage.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack1 := 'Made %1 into %2'.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack3 := (recoveredStack3) signature.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            (recoveredStack0) logApplicationNotice: (recoveredStack1).
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2002dc2c; bytecode file offset 0x69d00"
!SubApplication class methodsFor: 'recovered'!
createSubApplication: recoveredArg1 in: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) owningImage.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) globalNamespace.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) classAt: (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSubApplication.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) configurationExpression.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := EmImageSupport.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorReporter.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := 156.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) reportError: (recoveredStack1) withParms: (recoveredStack2).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := (recoveredStack0) isExpressionValid: (recoveredStack1).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 91] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := EmImageSupport.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorReporter.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := 121.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := (recoveredStack0) reportError: (recoveredStack1).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := EmLibraryCache.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) current.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock95Stack0 recoveredBlock95Stack1 recoveredBlock95Stack2 recoveredBlock95Stack3 recoveredBlock95Stack4 recoveredBlock95Stack5 recoveredBlock95PC recoveredBlock95Step recoveredBlock95Done recoveredBlock95Result |
    recoveredBlock95Stack0 := self.
    recoveredBlock95PC := 102.
    recoveredBlock95Done := false.
    [recoveredBlock95Done not] whileTrue: [
        recoveredBlock95Step := recoveredBlock95PC.
        recoveredBlock95Step = 102 ifTrue: [
            recoveredBlock95Stack0 := (recoveredBlock95Stack0) userIsManager.
            recoveredBlock95PC := 104.
        ].
        recoveredBlock95Step = 104 ifTrue: [
            (recoveredBlock95Stack0) ifTrue: [recoveredBlock95PC := 129] ifFalse: [recoveredBlock95PC := 108].
        ].
        recoveredBlock95Step = 108 ifTrue: [
            recoveredBlock95Stack0 := EmImageSupport.
            recoveredBlock95PC := 110.
        ].
        recoveredBlock95Step = 110 ifTrue: [
            recoveredBlock95Stack0 := (recoveredBlock95Stack0) errorReporter.
            recoveredBlock95PC := 112.
        ].
        recoveredBlock95Step = 112 ifTrue: [
            recoveredBlock95Stack1 := 157.
            recoveredBlock95PC := 116.
        ].
        recoveredBlock95Step = 116 ifTrue: [
            recoveredBlock95Stack2 := Array.
            recoveredBlock95PC := 118.
        ].
        recoveredBlock95Step = 118 ifTrue: [
            recoveredBlock95Stack3 := recoveredArg1.
            recoveredBlock95PC := 121.
        ].
        recoveredBlock95Step = 121 ifTrue: [
            recoveredBlock95Stack4 := self.
            recoveredBlock95PC := 122.
        ].
        recoveredBlock95Step = 122 ifTrue: [
            recoveredBlock95Stack4 := (recoveredBlock95Stack4) signature.
            recoveredBlock95PC := 124.
        ].
        recoveredBlock95Step = 124 ifTrue: [
            recoveredBlock95Stack2 := (recoveredBlock95Stack2) with: (recoveredBlock95Stack3) with: (recoveredBlock95Stack4).
            recoveredBlock95PC := 126.
        ].
        recoveredBlock95Step = 126 ifTrue: [
            recoveredBlock95Stack0 := (recoveredBlock95Stack0) reportError: (recoveredBlock95Stack1) withParms: (recoveredBlock95Stack2).
            recoveredBlock95PC := 128.
        ].
        recoveredBlock95Step = 128 ifTrue: [
            ^recoveredBlock95Stack0
        ].
        recoveredBlock95Step = 129 ifTrue: [
            recoveredBlock95Stack0 := true.
            recoveredBlock95PC := 130.
        ].
        recoveredBlock95Step = 130 ifTrue: [
            recoveredLocal3 := recoveredBlock95Stack0.
            recoveredBlock95PC := 133.
        ].
        recoveredBlock95Step = 133 ifTrue: [
            recoveredBlock95Stack0 := nil.
            recoveredBlock95PC := 134.
        ].
        recoveredBlock95Step = 134 ifTrue: [
            recoveredBlock95Stack1 := self.
            recoveredBlock95PC := 135.
        ].
        recoveredBlock95Step = 135 ifTrue: [
            recoveredBlock95Stack1 := (recoveredBlock95Stack1) isEdition.
            recoveredBlock95PC := 137.
        ].
        recoveredBlock95Step = 137 ifTrue: [
            (recoveredBlock95Stack1) ifTrue: [recoveredBlock95PC := 211] ifFalse: [recoveredBlock95PC := 140].
        ].
        recoveredBlock95Step = 140 ifTrue: [
            recoveredBlock95PC := 141.
        ].
        recoveredBlock95Step = 141 ifTrue: [
            recoveredBlock95Stack0 := self.
            recoveredBlock95PC := 142.
        ].
        recoveredBlock95Step = 142 ifTrue: [
            recoveredBlock95Stack0 := (recoveredBlock95Stack0) editionRecord.
            recoveredBlock95PC := 144.
        ].
        recoveredBlock95Step = 144 ifTrue: [
            recoveredBlock95Stack1 := recoveredArg2.
            recoveredBlock95PC := 147.
        ].
        recoveredBlock95Step = 147 ifTrue: [
            recoveredBlock95Stack0 := (recoveredBlock95Stack0) subApplicationsFor: (recoveredBlock95Stack1).
            recoveredBlock95PC := 149.
        ].
        recoveredBlock95Step = 149 ifTrue: [
            recoveredBlock95Stack1 := recoveredArg1.
            recoveredBlock95PC := 152.
        ].
        recoveredBlock95Step = 152 ifTrue: [
            recoveredBlock95Stack0 := (recoveredBlock95Stack0) includesKey: (recoveredBlock95Stack1).
            recoveredBlock95PC := 154.
        ].
        recoveredBlock95Step = 154 ifTrue: [
            (recoveredBlock95Stack0) ifTrue: [recoveredBlock95PC := 158] ifFalse: [recoveredBlock95PC := 190].
        ].
        recoveredBlock95Step = 158 ifTrue: [
            recoveredBlock95Stack0 := false.
            recoveredBlock95PC := 159.
        ].
        recoveredBlock95Step = 159 ifTrue: [
            recoveredLocal3 := recoveredBlock95Stack0.
            recoveredBlock95PC := 162.
        ].
        recoveredBlock95Step = 162 ifTrue: [
            recoveredBlock95Stack0 := self.
            recoveredBlock95PC := 163.
        ].
        recoveredBlock95Step = 163 ifTrue: [
            recoveredBlock95Stack1 := NlsCatEMb.
            recoveredBlock95PC := 165.
        ].
        recoveredBlock95Step = 165 ifTrue: [
            recoveredBlock95Stack2 := 'MxEMb39'.
            recoveredBlock95PC := 167.
        ].
        recoveredBlock95Step = 167 ifTrue: [
            recoveredBlock95Stack1 := (recoveredBlock95Stack1) residentMsg: (recoveredBlock95Stack2).
            recoveredBlock95PC := 169.
        ].
        recoveredBlock95Step = 169 ifTrue: [
            recoveredBlock95Stack2 := '%1'.
            recoveredBlock95PC := 171.
        ].
        recoveredBlock95Step = 171 ifTrue: [
            recoveredBlock95Stack3 := recoveredArg1.
            recoveredBlock95PC := 174.
        ].
        recoveredBlock95Step = 174 ifTrue: [
            recoveredBlock95Stack1 := (recoveredBlock95Stack1) bindWith: (recoveredBlock95Stack2) with: (recoveredBlock95Stack3).
            recoveredBlock95PC := 176.
        ].
        recoveredBlock95Step = 176 ifTrue: [
            recoveredBlock95Stack2 := [
    ^nil
].
            recoveredBlock95PC := 184.
        ].
        recoveredBlock95Step = 184 ifTrue: [
            recoveredBlock95Stack0 := (recoveredBlock95Stack0) allowedTo: (recoveredBlock95Stack1) ifNot: (recoveredBlock95Stack2).
            recoveredBlock95PC := 186.
        ].
        recoveredBlock95Step = 186 ifTrue: [
            recoveredBlock95PC := 211.
        ].
        recoveredBlock95Step = 190 ifTrue: [
            recoveredBlock95Stack0 := EmImageSupport.
            recoveredBlock95PC := 192.
        ].
        recoveredBlock95Step = 192 ifTrue: [
            recoveredBlock95Stack0 := (recoveredBlock95Stack0) errorReporter.
            recoveredBlock95PC := 194.
        ].
        recoveredBlock95Step = 194 ifTrue: [
            recoveredBlock95Stack1 := 158.
            recoveredBlock95PC := 198.
        ].
        recoveredBlock95Step = 198 ifTrue: [
            recoveredBlock95Stack2 := Array.
            recoveredBlock95PC := 200.
        ].
        recoveredBlock95Step = 200 ifTrue: [
            recoveredBlock95Stack3 := recoveredArg1.
            recoveredBlock95PC := 203.
        ].
        recoveredBlock95Step = 203 ifTrue: [
            recoveredBlock95Stack4 := self.
            recoveredBlock95PC := 204.
        ].
        recoveredBlock95Step = 204 ifTrue: [
            recoveredBlock95Stack4 := (recoveredBlock95Stack4) name.
            recoveredBlock95PC := 206.
        ].
        recoveredBlock95Step = 206 ifTrue: [
            recoveredBlock95Stack2 := (recoveredBlock95Stack2) with: (recoveredBlock95Stack3) with: (recoveredBlock95Stack4).
            recoveredBlock95PC := 208.
        ].
        recoveredBlock95Step = 208 ifTrue: [
            recoveredBlock95Stack0 := (recoveredBlock95Stack0) reportError: (recoveredBlock95Stack1) withParms: (recoveredBlock95Stack2).
            recoveredBlock95PC := 210.
        ].
        recoveredBlock95Step = 210 ifTrue: [
            ^recoveredBlock95Stack0
        ].
        recoveredBlock95Step = 211 ifTrue: [
            recoveredBlock95Result := recoveredBlock95Stack0.
            recoveredBlock95Done := true.
        ].
    ].
    recoveredBlock95Result
].
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            (recoveredStack0) cacheEditionsWhileExecuting: (recoveredStack1).
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack0 := SubApplication.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack0 := (recoveredStack0) creatorClass.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack2 := (recoveredStack2) owningImage.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack2 := (recoveredStack2) globalNamespace.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack4 := (recoveredStack4) owningImage.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack4 := (recoveredStack4) globalNamespace.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack5 := 'SubApplication'.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack4 := (recoveredStack4) classAt: (recoveredStack5).
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack5 := (recoveredStack5) owningImage.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack5 := (recoveredStack5) globalNamespace.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack6 := 'SubApplication'.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack5 := (recoveredStack5) classAt: (recoveredStack6).
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack5 := (recoveredStack5) instanceShape.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack6 := #().
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack7 := #().
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack8 := #().
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack9 := #().
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack0 := (recoveredStack0) createClassNamed: (recoveredStack1) in: (recoveredStack2) for: (recoveredStack3) subclassOf: (recoveredStack4) instanceShape: (recoveredStack5) classInstanceVariables: (recoveredStack6) instanceVariables: (recoveredStack7) classVariables: (recoveredStack8) sharedPoolNames: (recoveredStack9).
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 262] ifFalse: [recoveredPC := 260].
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            (recoveredStack0) enableApplicationProtocol.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            (recoveredStack1) initializeApplication.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            (recoveredStack0) insertInLibrary.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            (recoveredStack0) addSubApplication: (recoveredStack1).
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack0 := (recoveredStack0) owningImage.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            (recoveredStack0) loadedSubApplicationsHaveChanged.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            (recoveredStack1) becomeDefault.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack1 := (recoveredStack1) storeString.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            (recoveredStack0) configurationExpression: (recoveredStack1).
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 302] ifFalse: [recoveredPC := 311].
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            (recoveredStack0) addSubApplication: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20032800; bytecode file offset 0x6e904"
!SubApplication class methodsFor: 'recovered'!
primitiveRemove
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) withAllSubApplications.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := Set.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := [:recoveredBlock17Arg1 | 
    | recoveredBlock17Value0 recoveredBlock17Value1 recoveredBlock17Value2 recoveredBlock17Value3 |
    recoveredBlock17Value0 := recoveredLocal6.
    recoveredBlock17Value1 := recoveredBlock17Arg1.
    recoveredBlock17Value2 := (recoveredBlock17Value1) defined.
    recoveredBlock17Value3 := (recoveredBlock17Value0) addAll: (recoveredBlock17Value2).
    recoveredBlock17Value3
].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := EmSortedHierarchy.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) sort: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := [:recoveredBlock47Arg1 | 
    | recoveredBlock47Value0 recoveredBlock47Value1 recoveredBlock47Value2 recoveredBlock47Value3 |
    recoveredBlock47Value0 := recoveredBlock47Arg1.
    recoveredBlock47Value1 := (recoveredBlock47Value0) subclasses.
    recoveredBlock47Value2 := [:recoveredBlock47Block59Arg1 | 
    | recoveredBlock47Block59Stack0 recoveredBlock47Block59Stack1 recoveredBlock47Block59Stack2 recoveredBlock47Block59Stack3 recoveredBlock47Block59Stack4 recoveredBlock47Block59Stack5 recoveredBlock47Block59Stack6 recoveredBlock47Block59Stack7 recoveredBlock47Block59PC recoveredBlock47Block59Step recoveredBlock47Block59Done recoveredBlock47Block59Result |
    recoveredBlock47Block59Stack0 := self.
    recoveredBlock47Block59PC := 66.
    recoveredBlock47Block59Done := false.
    [recoveredBlock47Block59Done not] whileTrue: [
        recoveredBlock47Block59Step := recoveredBlock47Block59PC.
        recoveredBlock47Block59Step = 66 ifTrue: [
            recoveredBlock47Block59Stack1 := nil.
            recoveredBlock47Block59PC := 67.
        ].
        recoveredBlock47Block59Step = 67 ifTrue: [
            recoveredBlock47Block59Stack2 := recoveredLocal6.
            recoveredBlock47Block59PC := 70.
        ].
        recoveredBlock47Block59Step = 70 ifTrue: [
            recoveredBlock47Block59Stack3 := recoveredBlock47Block59Arg1.
            recoveredBlock47Block59PC := 71.
        ].
        recoveredBlock47Block59Step = 71 ifTrue: [
            recoveredBlock47Block59Stack2 := (recoveredBlock47Block59Stack2) includes: (recoveredBlock47Block59Stack3).
            recoveredBlock47Block59PC := 73.
        ].
        recoveredBlock47Block59Step = 73 ifTrue: [
            (recoveredBlock47Block59Stack2) ifTrue: [recoveredBlock47Block59PC := 104] ifFalse: [recoveredBlock47Block59PC := 76].
        ].
        recoveredBlock47Block59Step = 76 ifTrue: [
            recoveredBlock47Block59PC := 77.
        ].
        recoveredBlock47Block59Step = 77 ifTrue: [
            recoveredBlock47Block59Stack1 := EmImageSupport.
            recoveredBlock47Block59PC := 79.
        ].
        recoveredBlock47Block59Step = 79 ifTrue: [
            recoveredBlock47Block59Stack1 := (recoveredBlock47Block59Stack1) errorReporter.
            recoveredBlock47Block59PC := 81.
        ].
        recoveredBlock47Block59Step = 81 ifTrue: [
            recoveredBlock47Block59Stack2 := 161.
            recoveredBlock47Block59PC := 84.
        ].
        recoveredBlock47Block59Step = 84 ifTrue: [
            recoveredBlock47Block59Stack3 := Array.
            recoveredBlock47Block59PC := 86.
        ].
        recoveredBlock47Block59Step = 86 ifTrue: [
            recoveredBlock47Block59Stack4 := self.
            recoveredBlock47Block59PC := 87.
        ].
        recoveredBlock47Block59Step = 87 ifTrue: [
            recoveredBlock47Block59Stack4 := (recoveredBlock47Block59Stack4) name.
            recoveredBlock47Block59PC := 89.
        ].
        recoveredBlock47Block59Step = 89 ifTrue: [
            recoveredBlock47Block59Stack5 := recoveredBlock47Arg1.
            recoveredBlock47Block59PC := 92.
        ].
        recoveredBlock47Block59Step = 92 ifTrue: [
            recoveredBlock47Block59Stack5 := (recoveredBlock47Block59Stack5) name.
            recoveredBlock47Block59PC := 94.
        ].
        recoveredBlock47Block59Step = 94 ifTrue: [
            recoveredBlock47Block59Stack6 := recoveredBlock47Block59Arg1.
            recoveredBlock47Block59PC := 95.
        ].
        recoveredBlock47Block59Step = 95 ifTrue: [
            recoveredBlock47Block59Stack6 := (recoveredBlock47Block59Stack6) name.
            recoveredBlock47Block59PC := 97.
        ].
        recoveredBlock47Block59Step = 97 ifTrue: [
            recoveredBlock47Block59Stack3 := (recoveredBlock47Block59Stack3) with: (recoveredBlock47Block59Stack4) with: (recoveredBlock47Block59Stack5) with: (recoveredBlock47Block59Stack6).
            recoveredBlock47Block59PC := 100.
        ].
        recoveredBlock47Block59Step = 100 ifTrue: [
            (recoveredBlock47Block59Stack1) reportError: (recoveredBlock47Block59Stack2) withParms: (recoveredBlock47Block59Stack3).
            recoveredBlock47Block59PC := 102.
        ].
        recoveredBlock47Block59Step = 102 ifTrue: [
            recoveredBlock47Block59Stack1 := false.
            recoveredBlock47Block59PC := 103.
        ].
        recoveredBlock47Block59Step = 103 ifTrue: [
            ^recoveredBlock47Block59Stack1
        ].
        recoveredBlock47Block59Step = 104 ifTrue: [
            recoveredBlock47Block59Result := recoveredBlock47Block59Stack1.
            recoveredBlock47Block59Done := true.
        ].
    ].
    recoveredBlock47Block59Result
].
    recoveredBlock47Value3 := (recoveredBlock47Value1) do: (recoveredBlock47Value2).
    recoveredBlock47Value3
].
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := [
    | recoveredBlock110Stack0 recoveredBlock110Stack1 recoveredBlock110Stack2 recoveredBlock110Stack3 recoveredBlock110PC recoveredBlock110Step recoveredBlock110Done recoveredBlock110Result |
    recoveredBlock110Stack0 := self.
    recoveredBlock110PC := 116.
    recoveredBlock110Done := false.
    [recoveredBlock110Done not] whileTrue: [
        recoveredBlock110Step := recoveredBlock110PC.
        recoveredBlock110Step = 116 ifTrue: [
            recoveredBlock110Stack1 := recoveredLocal7.
            recoveredBlock110PC := 119.
        ].
        recoveredBlock110Step = 119 ifTrue: [
            recoveredBlock110Stack2 := [:block28005b30Arg1 | 
    | block28005b30Stack0 block28005b30Stack1 block28005b30Stack2 block28005b30Stack3 block28005b30Stack4 block28005b30PC block28005b30Step block28005b30Done block28005b30Result |
    block28005b30Stack0 := self.
    block28005b30PC := 4.
    block28005b30Done := false.
    [block28005b30Done not] whileTrue: [
        block28005b30Step := block28005b30PC.
        block28005b30Step = 4 ifTrue: [
            block28005b30Stack1 := nil.
            block28005b30PC := 5.
        ].
        block28005b30Step = 5 ifTrue: [
            block28005b30Stack2 := block28005b30Arg1.
            block28005b30PC := 6.
        ].
        block28005b30Step = 6 ifTrue: [
            block28005b30Stack3 := 'failedRemove'.
            block28005b30PC := 8.
        ].
        block28005b30Step = 8 ifTrue: [
            block28005b30Stack2 := (block28005b30Stack2) respondsTo: (block28005b30Stack3).
            block28005b30PC := 10.
        ].
        block28005b30Step = 10 ifTrue: [
            (block28005b30Stack2) ifTrue: [block28005b30PC := 14] ifFalse: [block28005b30PC := 18].
        ].
        block28005b30Step = 14 ifTrue: [
            block28005b30PC := 15.
        ].
        block28005b30Step = 15 ifTrue: [
            block28005b30Stack1 := block28005b30Arg1.
            block28005b30PC := 16.
        ].
        block28005b30Step = 16 ifTrue: [
            block28005b30Stack1 := (block28005b30Stack1) failedRemove.
            block28005b30PC := 18.
        ].
        block28005b30Step = 18 ifTrue: [
            block28005b30Result := block28005b30Stack1.
            block28005b30Done := true.
        ].
    ].
    block28005b30Result
].
            recoveredBlock110PC := 121.
        ].
        recoveredBlock110Step = 121 ifTrue: [
            recoveredBlock110PC := 139.
        ].
        recoveredBlock110Step = 139 ifTrue: [
            (recoveredBlock110Stack1) do: (recoveredBlock110Stack2).
            recoveredBlock110PC := 141.
        ].
        recoveredBlock110Step = 141 ifTrue: [
            recoveredBlock110Stack1 := false.
            recoveredBlock110PC := 142.
        ].
        recoveredBlock110Step = 142 ifTrue: [
            ^recoveredBlock110Stack1
        ].
    ].
    recoveredBlock110Result
].
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := [:block28005b54Arg1 | 
    | block28005b54Value0 block28005b54Value1 |
    block28005b54Value0 := block28005b54Arg1.
    block28005b54Value1 := (block28005b54Value0) removing.
    block28005b54Value1
].
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack0 := (recoveredStack0) asArray.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack0 := (recoveredStack0) multiAllInstances.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 176] ifFalse: [recoveredPC := 246].
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack0 := Set.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack1 := [:recoveredBlock185Arg1 | 
    | recoveredBlock185Value0 recoveredBlock185Value1 recoveredBlock185Value2 recoveredBlock185Value3 |
    recoveredBlock185Value0 := recoveredLocal3.
    recoveredBlock185Value1 := recoveredBlock185Arg1.
    recoveredBlock185Value2 := (recoveredBlock185Value1) class.
    recoveredBlock185Value3 := (recoveredBlock185Value0) add: (recoveredBlock185Value2).
    recoveredBlock185Value3
].
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack1 := Class.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack1 := (recoveredStack1) sortBlock.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack0 := (recoveredStack0) asArray.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack0 := EmImageSupport.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorReporter.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack1 := 162.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack3 := (recoveredStack3) name.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack4 := (recoveredStack4) asArray.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack4 := (recoveredStack4) printString.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            (recoveredStack0) reportError: (recoveredStack1) withParms: (recoveredStack2).
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack1 := [:recoveredBlock249Arg1 | 
    | recoveredBlock249Local1 recoveredBlock249Local2 recoveredBlock249Local3 recoveredBlock249Stack0 recoveredBlock249Stack1 recoveredBlock249Stack2 recoveredBlock249Stack3 recoveredBlock249Stack4 recoveredBlock249Stack5 recoveredBlock249PC recoveredBlock249Step recoveredBlock249Done recoveredBlock249Result |
    recoveredBlock249Stack0 := self.
    recoveredBlock249PC := 256.
    recoveredBlock249Done := false.
    [recoveredBlock249Done not] whileTrue: [
        recoveredBlock249Step := recoveredBlock249PC.
        recoveredBlock249Step = 256 ifTrue: [
            recoveredBlock249Stack1 := nil.
            recoveredBlock249PC := 257.
        ].
        recoveredBlock249Step = 257 ifTrue: [
            recoveredBlock249Stack2 := recoveredLocal7.
            recoveredBlock249PC := 260.
        ].
        recoveredBlock249Step = 260 ifTrue: [
            recoveredBlock249Stack3 := recoveredBlock249Arg1.
            recoveredBlock249PC := 261.
        ].
        recoveredBlock249Step = 261 ifTrue: [
            recoveredBlock249Stack2 := (recoveredBlock249Stack2) includes: (recoveredBlock249Stack3).
            recoveredBlock249PC := 263.
        ].
        recoveredBlock249Step = 263 ifTrue: [
            (recoveredBlock249Stack2) ifTrue: [recoveredBlock249PC := 341] ifFalse: [recoveredBlock249PC := 266].
        ].
        recoveredBlock249Step = 266 ifTrue: [
            recoveredBlock249PC := 267.
        ].
        recoveredBlock249Step = 267 ifTrue: [
            recoveredBlock249Stack1 := recoveredBlock249Arg1.
            recoveredBlock249PC := 268.
        ].
        recoveredBlock249Step = 268 ifTrue: [
            recoveredBlock249Stack1 := (recoveredBlock249Stack1) applications.
            recoveredBlock249PC := 270.
        ].
        recoveredBlock249Step = 270 ifTrue: [
            recoveredBlock249Local3 := recoveredBlock249Stack1.
            recoveredBlock249PC := 271.
        ].
        recoveredBlock249Step = 271 ifTrue: [
            recoveredBlock249Stack1 := recoveredBlock249Arg1.
            recoveredBlock249PC := 272.
        ].
        recoveredBlock249Step = 272 ifTrue: [
            recoveredBlock249Stack1 := (recoveredBlock249Stack1) symbol.
            recoveredBlock249PC := 274.
        ].
        recoveredBlock249Step = 274 ifTrue: [
            recoveredBlock249Local2 := recoveredBlock249Stack1.
            recoveredBlock249PC := 275.
        ].
        recoveredBlock249Step = 275 ifTrue: [
            recoveredBlock249Stack1 := self.
            recoveredBlock249PC := 276.
        ].
        recoveredBlock249Step = 276 ifTrue: [
            recoveredBlock249Stack1 := (recoveredBlock249Stack1) owningImage.
            recoveredBlock249PC := 278.
        ].
        recoveredBlock249Step = 278 ifTrue: [
            recoveredBlock249Stack2 := recoveredBlock249Local2.
            recoveredBlock249PC := 279.
        ].
        recoveredBlock249Step = 279 ifTrue: [
            recoveredBlock249Stack3 := self.
            recoveredBlock249PC := 280.
        ].
        recoveredBlock249Step = 280 ifTrue: [
            recoveredBlock249Stack3 := (recoveredBlock249Stack3) owningImage.
            recoveredBlock249PC := 282.
        ].
        recoveredBlock249Step = 282 ifTrue: [
            recoveredBlock249Stack3 := (recoveredBlock249Stack3) globalNamespace.
            recoveredBlock249PC := 284.
        ].
        recoveredBlock249Step = 284 ifTrue: [
            (recoveredBlock249Stack1) removeClassNamed: (recoveredBlock249Stack2) from: (recoveredBlock249Stack3).
            recoveredBlock249PC := 286.
        ].
        recoveredBlock249Step = 286 ifTrue: [
            recoveredBlock249Stack1 := nil.
            recoveredBlock249PC := 287.
        ].
        recoveredBlock249Step = 287 ifTrue: [
            recoveredBlock249Stack2 := recoveredBlock249Local3.
            recoveredBlock249PC := 288.
        ].
        recoveredBlock249Step = 288 ifTrue: [
            recoveredBlock249Stack2 := (recoveredBlock249Stack2) size.
            recoveredBlock249PC := 290.
        ].
        recoveredBlock249Step = 290 ifTrue: [
            recoveredBlock249Stack3 := 1.
            recoveredBlock249PC := 292.
        ].
        recoveredBlock249Step = 292 ifTrue: [
            recoveredBlock249Stack2 := (recoveredBlock249Stack2) > (recoveredBlock249Stack3).
            recoveredBlock249PC := 293.
        ].
        recoveredBlock249Step = 293 ifTrue: [
            (recoveredBlock249Stack2) ifTrue: [recoveredBlock249PC := 296] ifFalse: [recoveredBlock249PC := 337].
        ].
        recoveredBlock249Step = 296 ifTrue: [
            recoveredBlock249PC := 297.
        ].
        recoveredBlock249Step = 297 ifTrue: [
            recoveredBlock249Stack1 := 1.
            recoveredBlock249PC := 299.
        ].
        recoveredBlock249Step = 299 ifTrue: [
            recoveredBlock249Local1 := recoveredBlock249Stack1.
            recoveredBlock249PC := 300.
        ].
        recoveredBlock249Step = 300 ifTrue: [
            recoveredBlock249Stack1 := recoveredBlock249Local3.
            recoveredBlock249PC := 301.
        ].
        recoveredBlock249Step = 301 ifTrue: [
            recoveredBlock249Stack1 := (recoveredBlock249Stack1) size.
            recoveredBlock249PC := 303.
        ].
        recoveredBlock249Step = 303 ifTrue: [
            recoveredBlock249PC := 323.
        ].
        recoveredBlock249Step = 306 ifTrue: [
            recoveredBlock249Stack2 := recoveredBlock249Local3.
            recoveredBlock249PC := 307.
        ].
        recoveredBlock249Step = 307 ifTrue: [
            recoveredBlock249Stack3 := recoveredBlock249Local1.
            recoveredBlock249PC := 308.
        ].
        recoveredBlock249Step = 308 ifTrue: [
            recoveredBlock249Stack2 := (recoveredBlock249Stack2) at: (recoveredBlock249Stack3).
            recoveredBlock249PC := 310.
        ].
        recoveredBlock249Step = 310 ifTrue: [
            recoveredBlock249Stack3 := recoveredBlock249Local2.
            recoveredBlock249PC := 311.
        ].
        recoveredBlock249Step = 311 ifTrue: [
            recoveredBlock249Stack2 := (recoveredBlock249Stack2) isAwareOf: (recoveredBlock249Stack3).
            recoveredBlock249PC := 313.
        ].
        recoveredBlock249Step = 313 ifTrue: [
            (recoveredBlock249Stack2) ifTrue: [recoveredBlock249PC := 316] ifFalse: [recoveredBlock249PC := 323].
        ].
        recoveredBlock249Step = 316 ifTrue: [
            recoveredBlock249Stack2 := recoveredBlock249Local3.
            recoveredBlock249PC := 317.
        ].
        recoveredBlock249Step = 317 ifTrue: [
            recoveredBlock249Stack3 := recoveredBlock249Local1.
            recoveredBlock249PC := 318.
        ].
        recoveredBlock249Step = 318 ifTrue: [
            recoveredBlock249Stack2 := (recoveredBlock249Stack2) at: (recoveredBlock249Stack3).
            recoveredBlock249PC := 320.
        ].
        recoveredBlock249Step = 320 ifTrue: [
            recoveredBlock249Stack3 := recoveredBlock249Local2.
            recoveredBlock249PC := 321.
        ].
        recoveredBlock249Step = 321 ifTrue: [
            (recoveredBlock249Stack2) addUndefined: (recoveredBlock249Stack3).
            recoveredBlock249PC := 323.
        ].
        recoveredBlock249Step = 323 ifTrue: [
            (recoveredBlock249Stack1 isInteger and: [recoveredBlock249Local1 isInteger]) ifTrue: [(recoveredBlock249Local1 + 1 <= recoveredBlock249Stack1) ifTrue: [recoveredBlock249Local1 := recoveredBlock249Local1 + 1. recoveredBlock249PC := 306] ifFalse: [recoveredBlock249Local1 := nil. recoveredBlock249PC := 337]] ifFalse: [recoveredBlock249PC := 327].
        ].
        recoveredBlock249Step = 327 ifTrue: [
            recoveredBlock249Stack2 := recoveredBlock249Stack1.
            recoveredBlock249PC := 328.
        ].
        recoveredBlock249Step = 328 ifTrue: [
            recoveredBlock249Stack3 := recoveredBlock249Local1.
            recoveredBlock249PC := 329.
        ].
        recoveredBlock249Step = 329 ifTrue: [
            recoveredBlock249Stack3 := (recoveredBlock249Stack3) + (1).
            recoveredBlock249PC := 330.
        ].
        recoveredBlock249Step = 330 ifTrue: [
            recoveredBlock249Stack4 := recoveredBlock249Stack3.
            recoveredBlock249PC := 331.
        ].
        recoveredBlock249Step = 331 ifTrue: [
            recoveredBlock249Local1 := recoveredBlock249Stack4.
            recoveredBlock249PC := 332.
        ].
        recoveredBlock249Step = 332 ifTrue: [
            recoveredBlock249Stack2 := (recoveredBlock249Stack2) < (recoveredBlock249Stack3).
            recoveredBlock249PC := 333.
        ].
        recoveredBlock249Step = 333 ifTrue: [
            (recoveredBlock249Stack2) ifTrue: [recoveredBlock249PC := 335] ifFalse: [recoveredBlock249PC := 306].
        ].
        recoveredBlock249Step = 335 ifTrue: [
            recoveredBlock249Stack2 := nil.
            recoveredBlock249PC := 336.
        ].
        recoveredBlock249Step = 336 ifTrue: [
            recoveredBlock249Local1 := recoveredBlock249Stack2.
            recoveredBlock249PC := 337.
        ].
        recoveredBlock249Step = 337 ifTrue: [
            recoveredBlock249Stack2 := nil.
            recoveredBlock249PC := 338.
        ].
        recoveredBlock249Step = 338 ifTrue: [
            recoveredBlock249Stack3 := recoveredBlock249Stack2.
            recoveredBlock249PC := 339.
        ].
        recoveredBlock249Step = 339 ifTrue: [
            recoveredBlock249Local3 := recoveredBlock249Stack3.
            recoveredBlock249PC := 340.
        ].
        recoveredBlock249Step = 340 ifTrue: [
            recoveredBlock249Local2 := recoveredBlock249Stack2.
            recoveredBlock249PC := 341.
        ].
        recoveredBlock249Step = 341 ifTrue: [
            recoveredBlock249Result := recoveredBlock249Stack1.
            recoveredBlock249Done := true.
        ].
    ].
    recoveredBlock249Result
].
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            (recoveredStack0) reverseDo: (recoveredStack1).
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            recoveredStack1 := [:block28005b78Arg1 | 
    | block28005b78Value0 block28005b78Value1 block28005b78Value2 block28005b78Value3 block28005b78Value4 |
    block28005b78Value0 := block28005b78Arg1.
    block28005b78Value1 := (block28005b78Value0) extended.
    block28005b78Value2 := (block28005b78Value1) copy.
    block28005b78Value3 := [:block28005b78Block11Arg1 | 
    | block28005b78Block11Value0 block28005b78Block11Value1 block28005b78Block11Value2 |
    block28005b78Block11Value0 := block28005b78Block11Arg1.
    block28005b78Block11Value1 := block28005b78Arg1.
    block28005b78Block11Value2 := (block28005b78Block11Value0) removeMethodsFrom: (block28005b78Block11Value1).
    block28005b78Block11Value2
].
    block28005b78Value4 := (block28005b78Value2) do: (block28005b78Value3).
    block28005b78Value4
].
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredPC := 376.
        ].
        recoveredStep = 376 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 378.
        ].
        recoveredStep = 378 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 381.
        ].
        recoveredStep = 381 ifTrue: [
            recoveredStack1 := [:recoveredBlock381Arg1 | 
    | recoveredBlock381Local1 recoveredBlock381Local2 recoveredBlock381Local3 recoveredBlock381Stack0 recoveredBlock381Stack1 recoveredBlock381Stack2 recoveredBlock381Stack3 recoveredBlock381Stack4 recoveredBlock381PC recoveredBlock381Step recoveredBlock381Done recoveredBlock381Result |
    recoveredBlock381Stack0 := self.
    recoveredBlock381PC := 388.
    recoveredBlock381Done := false.
    [recoveredBlock381Done not] whileTrue: [
        recoveredBlock381Step := recoveredBlock381PC.
        recoveredBlock381Step = 388 ifTrue: [
            recoveredBlock381Stack1 := recoveredBlock381Arg1.
            recoveredBlock381PC := 389.
        ].
        recoveredBlock381Step = 389 ifTrue: [
            recoveredBlock381Stack2 := self.
            recoveredBlock381PC := 390.
        ].
        recoveredBlock381Step = 390 ifTrue: [
            recoveredBlock381Stack2 := (recoveredBlock381Stack2) owningImage.
            recoveredBlock381PC := 392.
        ].
        recoveredBlock381Step = 392 ifTrue: [
            recoveredBlock381Stack2 := (recoveredBlock381Stack2) defaultApplication.
            recoveredBlock381PC := 394.
        ].
        recoveredBlock381Step = 394 ifTrue: [
            (recoveredBlock381Stack1 ~~ recoveredBlock381Stack2) ifTrue: [recoveredBlock381PC := 404] ifFalse: [recoveredBlock381PC := 398].
        ].
        recoveredBlock381Step = 398 ifTrue: [
            recoveredBlock381Stack1 := self.
            recoveredBlock381PC := 399.
        ].
        recoveredBlock381Step = 399 ifTrue: [
            recoveredBlock381Stack1 := (recoveredBlock381Stack1) owningImage.
            recoveredBlock381PC := 401.
        ].
        recoveredBlock381Step = 401 ifTrue: [
            recoveredBlock381Stack2 := nil.
            recoveredBlock381PC := 402.
        ].
        recoveredBlock381Step = 402 ifTrue: [
            (recoveredBlock381Stack1) defaultApplication: (recoveredBlock381Stack2).
            recoveredBlock381PC := 404.
        ].
        recoveredBlock381Step = 404 ifTrue: [
            recoveredBlock381Stack1 := recoveredBlock381Arg1.
            recoveredBlock381PC := 405.
        ].
        recoveredBlock381Step = 405 ifTrue: [
            recoveredBlock381Stack2 := 'wasRemovedCode'.
            recoveredBlock381PC := 407.
        ].
        recoveredBlock381Step = 407 ifTrue: [
            recoveredBlock381Stack1 := (recoveredBlock381Stack1) respondsTo: (recoveredBlock381Stack2).
            recoveredBlock381PC := 409.
        ].
        recoveredBlock381Step = 409 ifTrue: [
            (recoveredBlock381Stack1) ifTrue: [recoveredBlock381PC := 412] ifFalse: [recoveredBlock381PC := 422].
        ].
        recoveredBlock381Step = 412 ifTrue: [
            recoveredBlock381Stack1 := recoveredBlock381Arg1.
            recoveredBlock381PC := 413.
        ].
        recoveredBlock381Step = 413 ifTrue: [
            recoveredBlock381Stack1 := (recoveredBlock381Stack1) wasRemovedCode.
            recoveredBlock381PC := 415.
        ].
        recoveredBlock381Step = 415 ifTrue: [
            recoveredLocal2 := recoveredBlock381Stack1.
            recoveredBlock381PC := 418.
        ].
        recoveredBlock381Step = 418 ifTrue: [
            recoveredBlock381PC := 427.
        ].
        recoveredBlock381Step = 422 ifTrue: [
            recoveredBlock381Stack1 := ''.
            recoveredBlock381PC := 424.
        ].
        recoveredBlock381Step = 424 ifTrue: [
            recoveredLocal2 := recoveredBlock381Stack1.
            recoveredBlock381PC := 427.
        ].
        recoveredBlock381Step = 427 ifTrue: [
            recoveredBlock381Stack1 := recoveredBlock381Arg1.
            recoveredBlock381PC := 428.
        ].
        recoveredBlock381Step = 428 ifTrue: [
            recoveredBlock381Stack1 := (recoveredBlock381Stack1) applications.
            recoveredBlock381PC := 430.
        ].
        recoveredBlock381Step = 430 ifTrue: [
            recoveredBlock381Local3 := recoveredBlock381Stack1.
            recoveredBlock381PC := 431.
        ].
        recoveredBlock381Step = 431 ifTrue: [
            recoveredBlock381Stack1 := recoveredBlock381Arg1.
            recoveredBlock381PC := 432.
        ].
        recoveredBlock381Step = 432 ifTrue: [
            recoveredBlock381Stack1 := (recoveredBlock381Stack1) symbol.
            recoveredBlock381PC := 434.
        ].
        recoveredBlock381Step = 434 ifTrue: [
            recoveredBlock381Local2 := recoveredBlock381Stack1.
            recoveredBlock381PC := 435.
        ].
        recoveredBlock381Step = 435 ifTrue: [
            recoveredBlock381Stack0 := (recoveredBlock381Stack0) owningImage.
            recoveredBlock381PC := 437.
        ].
        recoveredBlock381Step = 437 ifTrue: [
            recoveredBlock381Stack1 := recoveredBlock381Local2.
            recoveredBlock381PC := 438.
        ].
        recoveredBlock381Step = 438 ifTrue: [
            recoveredBlock381Stack2 := self.
            recoveredBlock381PC := 439.
        ].
        recoveredBlock381Step = 439 ifTrue: [
            recoveredBlock381Stack2 := (recoveredBlock381Stack2) owningImage.
            recoveredBlock381PC := 441.
        ].
        recoveredBlock381Step = 441 ifTrue: [
            recoveredBlock381Stack2 := (recoveredBlock381Stack2) globalNamespace.
            recoveredBlock381PC := 443.
        ].
        recoveredBlock381Step = 443 ifTrue: [
            (recoveredBlock381Stack0) removeClassNamed: (recoveredBlock381Stack1) from: (recoveredBlock381Stack2).
            recoveredBlock381PC := 445.
        ].
        recoveredBlock381Step = 445 ifTrue: [
            recoveredBlock381Stack0 := recoveredBlock381Local3.
            recoveredBlock381PC := 446.
        ].
        recoveredBlock381Step = 446 ifTrue: [
            recoveredBlock381Stack0 := (recoveredBlock381Stack0) size.
            recoveredBlock381PC := 448.
        ].
        recoveredBlock381Step = 448 ifTrue: [
            recoveredBlock381Stack1 := 1.
            recoveredBlock381PC := 450.
        ].
        recoveredBlock381Step = 450 ifTrue: [
            recoveredBlock381Stack0 := (recoveredBlock381Stack0) > (recoveredBlock381Stack1).
            recoveredBlock381PC := 451.
        ].
        recoveredBlock381Step = 451 ifTrue: [
            (recoveredBlock381Stack0) ifTrue: [recoveredBlock381PC := 454] ifFalse: [recoveredBlock381PC := 496].
        ].
        recoveredBlock381Step = 454 ifTrue: [
            recoveredBlock381Stack0 := 1.
            recoveredBlock381PC := 456.
        ].
        recoveredBlock381Step = 456 ifTrue: [
            recoveredBlock381Local1 := recoveredBlock381Stack0.
            recoveredBlock381PC := 457.
        ].
        recoveredBlock381Step = 457 ifTrue: [
            recoveredBlock381Stack0 := recoveredBlock381Local3.
            recoveredBlock381PC := 458.
        ].
        recoveredBlock381Step = 458 ifTrue: [
            recoveredBlock381Stack0 := (recoveredBlock381Stack0) size.
            recoveredBlock381PC := 460.
        ].
        recoveredBlock381Step = 460 ifTrue: [
            recoveredBlock381PC := 481.
        ].
        recoveredBlock381Step = 464 ifTrue: [
            recoveredBlock381Stack1 := recoveredBlock381Local3.
            recoveredBlock381PC := 465.
        ].
        recoveredBlock381Step = 465 ifTrue: [
            recoveredBlock381Stack2 := recoveredBlock381Local1.
            recoveredBlock381PC := 466.
        ].
        recoveredBlock381Step = 466 ifTrue: [
            recoveredBlock381Stack1 := (recoveredBlock381Stack1) at: (recoveredBlock381Stack2).
            recoveredBlock381PC := 468.
        ].
        recoveredBlock381Step = 468 ifTrue: [
            recoveredBlock381Stack2 := recoveredBlock381Local2.
            recoveredBlock381PC := 469.
        ].
        recoveredBlock381Step = 469 ifTrue: [
            recoveredBlock381Stack1 := (recoveredBlock381Stack1) isAwareOf: (recoveredBlock381Stack2).
            recoveredBlock381PC := 471.
        ].
        recoveredBlock381Step = 471 ifTrue: [
            (recoveredBlock381Stack1) ifTrue: [recoveredBlock381PC := 474] ifFalse: [recoveredBlock381PC := 481].
        ].
        recoveredBlock381Step = 474 ifTrue: [
            recoveredBlock381Stack1 := recoveredBlock381Local3.
            recoveredBlock381PC := 475.
        ].
        recoveredBlock381Step = 475 ifTrue: [
            recoveredBlock381Stack2 := recoveredBlock381Local1.
            recoveredBlock381PC := 476.
        ].
        recoveredBlock381Step = 476 ifTrue: [
            recoveredBlock381Stack1 := (recoveredBlock381Stack1) at: (recoveredBlock381Stack2).
            recoveredBlock381PC := 478.
        ].
        recoveredBlock381Step = 478 ifTrue: [
            recoveredBlock381Stack2 := recoveredBlock381Local2.
            recoveredBlock381PC := 479.
        ].
        recoveredBlock381Step = 479 ifTrue: [
            (recoveredBlock381Stack1) addUndefined: (recoveredBlock381Stack2).
            recoveredBlock381PC := 481.
        ].
        recoveredBlock381Step = 481 ifTrue: [
            (recoveredBlock381Stack0 isInteger and: [recoveredBlock381Local1 isInteger]) ifTrue: [(recoveredBlock381Local1 + 1 <= recoveredBlock381Stack0) ifTrue: [recoveredBlock381Local1 := recoveredBlock381Local1 + 1. recoveredBlock381PC := 464] ifFalse: [recoveredBlock381Local1 := nil. recoveredBlock381PC := 495]] ifFalse: [recoveredBlock381PC := 485].
        ].
        recoveredBlock381Step = 485 ifTrue: [
            recoveredBlock381Stack1 := recoveredBlock381Stack0.
            recoveredBlock381PC := 486.
        ].
        recoveredBlock381Step = 486 ifTrue: [
            recoveredBlock381Stack2 := recoveredBlock381Local1.
            recoveredBlock381PC := 487.
        ].
        recoveredBlock381Step = 487 ifTrue: [
            recoveredBlock381Stack2 := (recoveredBlock381Stack2) + (1).
            recoveredBlock381PC := 488.
        ].
        recoveredBlock381Step = 488 ifTrue: [
            recoveredBlock381Stack3 := recoveredBlock381Stack2.
            recoveredBlock381PC := 489.
        ].
        recoveredBlock381Step = 489 ifTrue: [
            recoveredBlock381Local1 := recoveredBlock381Stack3.
            recoveredBlock381PC := 490.
        ].
        recoveredBlock381Step = 490 ifTrue: [
            recoveredBlock381Stack1 := (recoveredBlock381Stack1) < (recoveredBlock381Stack2).
            recoveredBlock381PC := 491.
        ].
        recoveredBlock381Step = 491 ifTrue: [
            (recoveredBlock381Stack1) ifTrue: [recoveredBlock381PC := 493] ifFalse: [recoveredBlock381PC := 464].
        ].
        recoveredBlock381Step = 493 ifTrue: [
            recoveredBlock381Stack1 := nil.
            recoveredBlock381PC := 494.
        ].
        recoveredBlock381Step = 494 ifTrue: [
            recoveredBlock381Local1 := recoveredBlock381Stack1.
            recoveredBlock381PC := 495.
        ].
        recoveredBlock381Step = 495 ifTrue: [
            recoveredBlock381PC := 496.
        ].
        recoveredBlock381Step = 496 ifTrue: [
            recoveredBlock381Stack0 := nil.
            recoveredBlock381PC := 497.
        ].
        recoveredBlock381Step = 497 ifTrue: [
            recoveredBlock381Stack1 := recoveredLocal2.
            recoveredBlock381PC := 500.
        ].
        recoveredBlock381Step = 500 ifTrue: [
            recoveredBlock381Stack1 := (recoveredBlock381Stack1) notEmpty.
            recoveredBlock381PC := 502.
        ].
        recoveredBlock381Step = 502 ifTrue: [
            (recoveredBlock381Stack1) ifTrue: [recoveredBlock381PC := 506] ifFalse: [recoveredBlock381PC := 551].
        ].
        recoveredBlock381Step = 506 ifTrue: [
            recoveredBlock381PC := 507.
        ].
        recoveredBlock381Step = 507 ifTrue: [
            recoveredBlock381Stack0 := nil.
            recoveredBlock381PC := 508.
        ].
        recoveredBlock381Step = 508 ifTrue: [
            recoveredBlock381Stack1 := System.
            recoveredBlock381PC := 510.
        ].
        recoveredBlock381Step = 510 ifTrue: [
            recoveredBlock381Stack1 := (recoveredBlock381Stack1) globalNamespace.
            recoveredBlock381PC := 512.
        ].
        recoveredBlock381Step = 512 ifTrue: [
            recoveredBlock381Stack2 := 'Compiler'.
            recoveredBlock381PC := 514.
        ].
        recoveredBlock381Step = 514 ifTrue: [
            recoveredBlock381Stack1 := (recoveredBlock381Stack1) classAt: (recoveredBlock381Stack2).
            recoveredBlock381PC := 516.
        ].
        recoveredBlock381Step = 516 ifTrue: [
            recoveredBlock381Stack2 := recoveredBlock381Stack1.
            recoveredBlock381PC := 517.
        ].
        recoveredBlock381Step = 517 ifTrue: [
            recoveredLocal1 := recoveredBlock381Stack2.
            recoveredBlock381PC := 520.
        ].
        recoveredBlock381Step = 520 ifTrue: [
            (recoveredBlock381Stack1 == nil) ifTrue: [recoveredBlock381PC := 551] ifFalse: [recoveredBlock381PC := 524].
        ].
        recoveredBlock381Step = 524 ifTrue: [
            recoveredBlock381PC := 525.
        ].
        recoveredBlock381Step = 525 ifTrue: [
            recoveredBlock381Stack0 := recoveredLocal1.
            recoveredBlock381PC := 528.
        ].
        recoveredBlock381Step = 528 ifTrue: [
            recoveredBlock381Stack1 := recoveredLocal2.
            recoveredBlock381PC := 531.
        ].
        recoveredBlock381Step = 531 ifTrue: [
            recoveredBlock381Stack2 := EmEvaluationRedirectionForLoadedCode.
            recoveredBlock381PC := 533.
        ].
        recoveredBlock381Step = 533 ifTrue: [
            recoveredBlock381Stack2 := (recoveredBlock381Stack2) new.
            recoveredBlock381PC := 534.
        ].
        recoveredBlock381Step = 534 ifTrue: [
            recoveredBlock381Stack3 := [:recoveredBlock381Block534Arg1 | 
    | recoveredBlock381Block534Value0 recoveredBlock381Block534Value1 recoveredBlock381Block534Value2 recoveredBlock381Block534Value3 |
    recoveredBlock381Block534Value0 := (self) owningImage.
    recoveredBlock381Block534Value1 := (recoveredBlock381Block534Value0) errorLog.
    recoveredBlock381Block534Value2 := recoveredBlock381Block534Arg1.
    recoveredBlock381Block534Value3 := (recoveredBlock381Block534Value1) compilerError: (recoveredBlock381Block534Value2).
    recoveredBlock381Block534Value3
].
            recoveredBlock381PC := 548.
        ].
        recoveredBlock381Step = 548 ifTrue: [
            recoveredBlock381Stack0 := (recoveredBlock381Stack0) evaluate: (recoveredBlock381Stack1) for: (recoveredBlock381Stack2) ifFail: (recoveredBlock381Stack3).
            recoveredBlock381PC := 551.
        ].
        recoveredBlock381Step = 551 ifTrue: [
            recoveredBlock381Result := recoveredBlock381Stack0.
            recoveredBlock381Done := true.
        ].
    ].
    recoveredBlock381Result
].
            recoveredPC := 552.
        ].
        recoveredStep = 552 ifTrue: [
            (recoveredStack0) reverseDo: (recoveredStack1).
            recoveredPC := 554.
        ].
        recoveredStep = 554 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 555.
        ].
        recoveredStep = 555 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20034180; bytecode file offset 0x70294"
!SubApplication class methodsFor: 'recovered'!
isConsistent
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) editionRecord.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) existsInLibrary.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 33] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := EmImageSupport.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorReporter.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := 99.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := (recoveredStack3) name.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) logError: (recoveredStack1) withParms: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) subApplicationDictionary.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) names.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) configurationExpression.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) isConfigurationConsistent: (recoveredStack1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredPC := 79.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := EmImageSupport.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorReporter.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := 169.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack3 := (recoveredStack3) signature.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack0) logError: (recoveredStack1) withParms: (recoveredStack2).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) namesAndTypes.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := Set.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := (recoveredStack0) defined.
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
            recoveredBlock111Stack1 := recoveredLocal3.
            recoveredBlock111PC := 121.
        ].
        recoveredBlock111Step = 121 ifTrue: [
            recoveredBlock111Stack2 := recoveredBlock111Arg1.
            recoveredBlock111PC := 122.
        ].
        recoveredBlock111Step = 122 ifTrue: [
            recoveredBlock111Stack2 := (recoveredBlock111Stack2) symbol.
            recoveredBlock111PC := 124.
        ].
        recoveredBlock111Step = 124 ifTrue: [
            (recoveredBlock111Stack1) add: (recoveredBlock111Stack2).
            recoveredBlock111PC := 126.
        ].
        recoveredBlock111Step = 126 ifTrue: [
            recoveredBlock111Stack1 := nil.
            recoveredBlock111PC := 127.
        ].
        recoveredBlock111Step = 127 ifTrue: [
            recoveredBlock111Stack2 := recoveredBlock111Arg1.
            recoveredBlock111PC := 128.
        ].
        recoveredBlock111Step = 128 ifTrue: [
            recoveredBlock111Stack2 := (recoveredBlock111Stack2) applications.
            recoveredBlock111PC := 130.
        ].
        recoveredBlock111Step = 130 ifTrue: [
            recoveredBlock111Stack3 := self.
            recoveredBlock111PC := 131.
        ].
        recoveredBlock111Step = 131 ifTrue: [
            recoveredBlock111Stack2 := (recoveredBlock111Stack2) includes: (recoveredBlock111Stack3).
            recoveredBlock111PC := 133.
        ].
        recoveredBlock111Step = 133 ifTrue: [
            (recoveredBlock111Stack2) ifTrue: [recoveredBlock111PC := 136] ifFalse: [recoveredBlock111PC := 210].
        ].
        recoveredBlock111Step = 136 ifTrue: [
            recoveredBlock111PC := 137.
        ].
        recoveredBlock111Step = 137 ifTrue: [
            recoveredBlock111Stack1 := recoveredLocal6.
            recoveredBlock111PC := 140.
        ].
        recoveredBlock111Step = 140 ifTrue: [
            recoveredBlock111Stack2 := recoveredBlock111Arg1.
            recoveredBlock111PC := 141.
        ].
        recoveredBlock111Step = 141 ifTrue: [
            recoveredBlock111Stack2 := (recoveredBlock111Stack2) symbol.
            recoveredBlock111PC := 143.
        ].
        recoveredBlock111Step = 143 ifTrue: [
            recoveredBlock111Stack3 := [
    'Deleted'
].
            recoveredBlock111PC := 145.
        ].
        recoveredBlock111Step = 145 ifTrue: [
            recoveredBlock111PC := 151.
        ].
        recoveredBlock111Step = 151 ifTrue: [
            recoveredBlock111Stack1 := (recoveredBlock111Stack1) at: (recoveredBlock111Stack2) ifAbsent: (recoveredBlock111Stack3).
            recoveredBlock111PC := 153.
        ].
        recoveredBlock111Step = 153 ifTrue: [
            recoveredBlock111Stack2 := recoveredBlock111Stack1.
            recoveredBlock111PC := 154.
        ].
        recoveredBlock111Step = 154 ifTrue: [
            recoveredLocal2 := recoveredBlock111Stack2.
            recoveredBlock111PC := 157.
        ].
        recoveredBlock111Step = 157 ifTrue: [
            recoveredBlock111Stack2 := 'Deleted'.
            recoveredBlock111PC := 159.
        ].
        recoveredBlock111Step = 159 ifTrue: [
            (recoveredBlock111Stack1 ~~ recoveredBlock111Stack2) ifTrue: [recoveredBlock111PC := 178] ifFalse: [recoveredBlock111PC := 162].
        ].
        recoveredBlock111Step = 162 ifTrue: [
            recoveredBlock111Stack1 := recoveredLocal5.
            recoveredBlock111PC := 165.
        ].
        recoveredBlock111Step = 165 ifTrue: [
            recoveredBlock111Stack2 := recoveredBlock111Arg1.
            recoveredBlock111PC := 166.
        ].
        recoveredBlock111Step = 166 ifTrue: [
            (recoveredBlock111Stack1) add: (recoveredBlock111Stack2).
            recoveredBlock111PC := 168.
        ].
        recoveredBlock111Step = 168 ifTrue: [
            recoveredBlock111Stack1 := recoveredLocal4.
            recoveredBlock111PC := 171.
        ].
        recoveredBlock111Step = 171 ifTrue: [
            recoveredBlock111Stack2 := recoveredBlock111Arg1.
            recoveredBlock111PC := 172.
        ].
        recoveredBlock111Step = 172 ifTrue: [
            recoveredBlock111Stack1 := (recoveredBlock111Stack1) add: (recoveredBlock111Stack2).
            recoveredBlock111PC := 174.
        ].
        recoveredBlock111Step = 174 ifTrue: [
            recoveredBlock111PC := 210.
        ].
        recoveredBlock111Step = 178 ifTrue: [
            recoveredBlock111Stack1 := recoveredBlock111Arg1.
            recoveredBlock111PC := 179.
        ].
        recoveredBlock111Step = 179 ifTrue: [
            recoveredBlock111Stack1 := (recoveredBlock111Stack1) controller.
            recoveredBlock111PC := 181.
        ].
        recoveredBlock111Step = 181 ifTrue: [
            recoveredBlock111Stack2 := self.
            recoveredBlock111PC := 182.
        ].
        recoveredBlock111Step = 182 ifTrue: [
            (recoveredBlock111Stack1 ~~ recoveredBlock111Stack2) ifTrue: [recoveredBlock111PC := 204] ifFalse: [recoveredBlock111PC := 186].
        ].
        recoveredBlock111Step = 186 ifTrue: [
            recoveredBlock111Stack1 := recoveredBlock111Arg1.
            recoveredBlock111PC := 187.
        ].
        recoveredBlock111Step = 187 ifTrue: [
            recoveredBlock111Stack2 := recoveredLocal2.
            recoveredBlock111PC := 190.
        ].
        recoveredBlock111Step = 190 ifTrue: [
            recoveredBlock111Stack3 := 'PrivatelyDefined'.
            recoveredBlock111PC := 192.
        ].
        recoveredBlock111Step = 192 ifTrue: [
            recoveredBlock111Stack2 := (recoveredBlock111Stack2) == (recoveredBlock111Stack3).
            recoveredBlock111PC := 193.
        ].
        recoveredBlock111Step = 193 ifTrue: [
            (recoveredBlock111Stack1) privateStatus: (recoveredBlock111Stack2).
            recoveredBlock111PC := 195.
        ].
        recoveredBlock111Step = 195 ifTrue: [
            recoveredBlock111Stack1 := recoveredLocal5.
            recoveredBlock111PC := 198.
        ].
        recoveredBlock111Step = 198 ifTrue: [
            recoveredBlock111Stack2 := recoveredBlock111Arg1.
            recoveredBlock111PC := 199.
        ].
        recoveredBlock111Step = 199 ifTrue: [
            recoveredBlock111Stack1 := (recoveredBlock111Stack1) add: (recoveredBlock111Stack2).
            recoveredBlock111PC := 201.
        ].
        recoveredBlock111Step = 201 ifTrue: [
            recoveredBlock111PC := 210.
        ].
        recoveredBlock111Step = 204 ifTrue: [
            recoveredBlock111Stack1 := self.
            recoveredBlock111PC := 205.
        ].
        recoveredBlock111Step = 205 ifTrue: [
            recoveredBlock111Stack1 := (recoveredBlock111Stack1) extended.
            recoveredBlock111PC := 207.
        ].
        recoveredBlock111Step = 207 ifTrue: [
            recoveredBlock111Stack2 := recoveredBlock111Arg1.
            recoveredBlock111PC := 208.
        ].
        recoveredBlock111Step = 208 ifTrue: [
            recoveredBlock111Stack1 := (recoveredBlock111Stack1) add: (recoveredBlock111Stack2).
            recoveredBlock111PC := 210.
        ].
        recoveredBlock111Step = 210 ifTrue: [
            recoveredBlock111Result := recoveredBlock111Stack1.
            recoveredBlock111Done := true.
        ].
    ].
    recoveredBlock111Result
].
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack0 := (recoveredStack0) extended.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack0 := (recoveredStack0) copy.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack1 := [:recoveredBlock218Arg1 | 
    | recoveredBlock218Stack0 recoveredBlock218Stack1 recoveredBlock218Stack2 recoveredBlock218Stack3 recoveredBlock218Stack4 recoveredBlock218PC recoveredBlock218Step recoveredBlock218Done recoveredBlock218Result |
    recoveredBlock218Stack0 := self.
    recoveredBlock218PC := 224.
    recoveredBlock218Done := false.
    [recoveredBlock218Done not] whileTrue: [
        recoveredBlock218Step := recoveredBlock218PC.
        recoveredBlock218Step = 224 ifTrue: [
            recoveredBlock218Stack1 := recoveredLocal3.
            recoveredBlock218PC := 227.
        ].
        recoveredBlock218Step = 227 ifTrue: [
            recoveredBlock218Stack2 := recoveredBlock218Arg1.
            recoveredBlock218PC := 228.
        ].
        recoveredBlock218Step = 228 ifTrue: [
            recoveredBlock218Stack2 := (recoveredBlock218Stack2) symbol.
            recoveredBlock218PC := 230.
        ].
        recoveredBlock218Step = 230 ifTrue: [
            (recoveredBlock218Stack1) add: (recoveredBlock218Stack2).
            recoveredBlock218PC := 232.
        ].
        recoveredBlock218Step = 232 ifTrue: [
            recoveredBlock218Stack1 := nil.
            recoveredBlock218PC := 233.
        ].
        recoveredBlock218Step = 233 ifTrue: [
            recoveredBlock218Stack2 := recoveredBlock218Arg1.
            recoveredBlock218PC := 234.
        ].
        recoveredBlock218Step = 234 ifTrue: [
            recoveredBlock218Stack2 := (recoveredBlock218Stack2) applications.
            recoveredBlock218PC := 236.
        ].
        recoveredBlock218Step = 236 ifTrue: [
            recoveredBlock218Stack3 := self.
            recoveredBlock218PC := 237.
        ].
        recoveredBlock218Step = 237 ifTrue: [
            recoveredBlock218Stack2 := (recoveredBlock218Stack2) includes: (recoveredBlock218Stack3).
            recoveredBlock218PC := 239.
        ].
        recoveredBlock218Step = 239 ifTrue: [
            (recoveredBlock218Stack2) ifTrue: [recoveredBlock218PC := 242] ifFalse: [recoveredBlock218PC := 310].
        ].
        recoveredBlock218Step = 242 ifTrue: [
            recoveredBlock218PC := 243.
        ].
        recoveredBlock218Step = 243 ifTrue: [
            recoveredBlock218Stack1 := recoveredLocal6.
            recoveredBlock218PC := 246.
        ].
        recoveredBlock218Step = 246 ifTrue: [
            recoveredBlock218Stack2 := recoveredBlock218Arg1.
            recoveredBlock218PC := 247.
        ].
        recoveredBlock218Step = 247 ifTrue: [
            recoveredBlock218Stack2 := (recoveredBlock218Stack2) symbol.
            recoveredBlock218PC := 249.
        ].
        recoveredBlock218Step = 249 ifTrue: [
            recoveredBlock218Stack3 := [
    'Deleted'
].
            recoveredBlock218PC := 251.
        ].
        recoveredBlock218Step = 251 ifTrue: [
            recoveredBlock218PC := 257.
        ].
        recoveredBlock218Step = 257 ifTrue: [
            recoveredBlock218Stack1 := (recoveredBlock218Stack1) at: (recoveredBlock218Stack2) ifAbsent: (recoveredBlock218Stack3).
            recoveredBlock218PC := 259.
        ].
        recoveredBlock218Step = 259 ifTrue: [
            recoveredBlock218Stack2 := recoveredBlock218Stack1.
            recoveredBlock218PC := 260.
        ].
        recoveredBlock218Step = 260 ifTrue: [
            recoveredLocal2 := recoveredBlock218Stack2.
            recoveredBlock218PC := 263.
        ].
        recoveredBlock218Step = 263 ifTrue: [
            recoveredBlock218Stack2 := 'Deleted'.
            recoveredBlock218PC := 265.
        ].
        recoveredBlock218Step = 265 ifTrue: [
            (recoveredBlock218Stack1 ~~ recoveredBlock218Stack2) ifTrue: [recoveredBlock218PC := 278] ifFalse: [recoveredBlock218PC := 268].
        ].
        recoveredBlock218Step = 268 ifTrue: [
            recoveredBlock218Stack1 := recoveredLocal4.
            recoveredBlock218PC := 271.
        ].
        recoveredBlock218Step = 271 ifTrue: [
            recoveredBlock218Stack2 := recoveredBlock218Arg1.
            recoveredBlock218PC := 272.
        ].
        recoveredBlock218Step = 272 ifTrue: [
            recoveredBlock218Stack1 := (recoveredBlock218Stack1) add: (recoveredBlock218Stack2).
            recoveredBlock218PC := 274.
        ].
        recoveredBlock218Step = 274 ifTrue: [
            recoveredBlock218PC := 310.
        ].
        recoveredBlock218Step = 278 ifTrue: [
            recoveredBlock218Stack1 := nil.
            recoveredBlock218PC := 279.
        ].
        recoveredBlock218Step = 279 ifTrue: [
            recoveredBlock218Stack2 := recoveredBlock218Arg1.
            recoveredBlock218PC := 280.
        ].
        recoveredBlock218Step = 280 ifTrue: [
            recoveredBlock218Stack2 := (recoveredBlock218Stack2) controller.
            recoveredBlock218PC := 282.
        ].
        recoveredBlock218Step = 282 ifTrue: [
            recoveredBlock218Stack3 := self.
            recoveredBlock218PC := 283.
        ].
        recoveredBlock218Step = 283 ifTrue: [
            (recoveredBlock218Stack2 ~~ recoveredBlock218Stack3) ifTrue: [recoveredBlock218PC := 310] ifFalse: [recoveredBlock218PC := 286].
        ].
        recoveredBlock218Step = 286 ifTrue: [
            recoveredBlock218PC := 287.
        ].
        recoveredBlock218Step = 287 ifTrue: [
            recoveredBlock218Stack1 := recoveredBlock218Arg1.
            recoveredBlock218PC := 288.
        ].
        recoveredBlock218Step = 288 ifTrue: [
            recoveredBlock218Stack2 := recoveredLocal2.
            recoveredBlock218PC := 291.
        ].
        recoveredBlock218Step = 291 ifTrue: [
            recoveredBlock218Stack3 := 'PrivatelyDefined'.
            recoveredBlock218PC := 293.
        ].
        recoveredBlock218Step = 293 ifTrue: [
            recoveredBlock218Stack2 := (recoveredBlock218Stack2) == (recoveredBlock218Stack3).
            recoveredBlock218PC := 294.
        ].
        recoveredBlock218Step = 294 ifTrue: [
            (recoveredBlock218Stack1) privateStatus: (recoveredBlock218Stack2).
            recoveredBlock218PC := 296.
        ].
        recoveredBlock218Step = 296 ifTrue: [
            recoveredBlock218Stack1 := recoveredLocal5.
            recoveredBlock218PC := 299.
        ].
        recoveredBlock218Step = 299 ifTrue: [
            recoveredBlock218Stack2 := recoveredBlock218Arg1.
            recoveredBlock218PC := 300.
        ].
        recoveredBlock218Step = 300 ifTrue: [
            (recoveredBlock218Stack1) add: (recoveredBlock218Stack2).
            recoveredBlock218PC := 302.
        ].
        recoveredBlock218Step = 302 ifTrue: [
            recoveredBlock218Stack1 := self.
            recoveredBlock218PC := 303.
        ].
        recoveredBlock218Step = 303 ifTrue: [
            recoveredBlock218Stack1 := (recoveredBlock218Stack1) extended.
            recoveredBlock218PC := 305.
        ].
        recoveredBlock218Step = 305 ifTrue: [
            recoveredBlock218Stack2 := recoveredBlock218Arg1.
            recoveredBlock218PC := 306.
        ].
        recoveredBlock218Step = 306 ifTrue: [
            recoveredBlock218Stack3 := [].
            recoveredBlock218PC := 308.
        ].
        recoveredBlock218Step = 308 ifTrue: [
            recoveredBlock218Stack1 := (recoveredBlock218Stack1) remove: (recoveredBlock218Stack2) ifAbsent: (recoveredBlock218Stack3).
            recoveredBlock218PC := 310.
        ].
        recoveredBlock218Step = 310 ifTrue: [
            recoveredBlock218Result := recoveredBlock218Stack1.
            recoveredBlock218Done := true.
        ].
    ].
    recoveredBlock218Result
].
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            recoveredStack1 := EmSortedHierarchy.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack1 := (recoveredStack1) sort: (recoveredStack2).
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            (recoveredStack0) defined: (recoveredStack1).
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredStack0 := (recoveredStack0) undefined.
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            recoveredStack0 := (recoveredStack0) copy.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack1 := [:recoveredBlock328Arg1 | 
    | recoveredBlock328Stack0 recoveredBlock328Stack1 recoveredBlock328Stack2 recoveredBlock328Stack3 recoveredBlock328Stack4 recoveredBlock328Stack5 recoveredBlock328PC recoveredBlock328Step recoveredBlock328Done recoveredBlock328Result |
    recoveredBlock328Stack0 := self.
    recoveredBlock328PC := 334.
    recoveredBlock328Done := false.
    [recoveredBlock328Done not] whileTrue: [
        recoveredBlock328Step := recoveredBlock328PC.
        recoveredBlock328Step = 334 ifTrue: [
            recoveredBlock328Stack1 := recoveredLocal3.
            recoveredBlock328PC := 337.
        ].
        recoveredBlock328Step = 337 ifTrue: [
            recoveredBlock328Stack2 := recoveredBlock328Arg1.
            recoveredBlock328PC := 338.
        ].
        recoveredBlock328Step = 338 ifTrue: [
            recoveredBlock328Stack2 := (recoveredBlock328Stack2) symbol.
            recoveredBlock328PC := 340.
        ].
        recoveredBlock328Step = 340 ifTrue: [
            (recoveredBlock328Stack1) add: (recoveredBlock328Stack2).
            recoveredBlock328PC := 342.
        ].
        recoveredBlock328Step = 342 ifTrue: [
            recoveredBlock328Stack1 := nil.
            recoveredBlock328PC := 343.
        ].
        recoveredBlock328Step = 343 ifTrue: [
            recoveredBlock328Stack2 := recoveredLocal6.
            recoveredBlock328PC := 346.
        ].
        recoveredBlock328Step = 346 ifTrue: [
            recoveredBlock328Stack3 := recoveredBlock328Arg1.
            recoveredBlock328PC := 347.
        ].
        recoveredBlock328Step = 347 ifTrue: [
            recoveredBlock328Stack3 := (recoveredBlock328Stack3) symbol.
            recoveredBlock328PC := 349.
        ].
        recoveredBlock328Step = 349 ifTrue: [
            recoveredBlock328Stack4 := [
    'Deleted'
].
            recoveredBlock328PC := 351.
        ].
        recoveredBlock328Step = 351 ifTrue: [
            recoveredBlock328PC := 357.
        ].
        recoveredBlock328Step = 357 ifTrue: [
            recoveredBlock328Stack2 := (recoveredBlock328Stack2) at: (recoveredBlock328Stack3) ifAbsent: (recoveredBlock328Stack4).
            recoveredBlock328PC := 359.
        ].
        recoveredBlock328Step = 359 ifTrue: [
            recoveredBlock328Stack3 := recoveredBlock328Stack2.
            recoveredBlock328PC := 360.
        ].
        recoveredBlock328Step = 360 ifTrue: [
            recoveredLocal2 := recoveredBlock328Stack3.
            recoveredBlock328PC := 363.
        ].
        recoveredBlock328Step = 363 ifTrue: [
            recoveredBlock328Stack3 := 'Deleted'.
            recoveredBlock328PC := 365.
        ].
        recoveredBlock328Step = 365 ifTrue: [
            (recoveredBlock328Stack2 ~~ recoveredBlock328Stack3) ifTrue: [recoveredBlock328PC := 375] ifFalse: [recoveredBlock328PC := 368].
        ].
        recoveredBlock328Step = 368 ifTrue: [
            recoveredBlock328PC := 369.
        ].
        recoveredBlock328Step = 369 ifTrue: [
            recoveredBlock328Stack1 := self.
            recoveredBlock328PC := 370.
        ].
        recoveredBlock328Step = 370 ifTrue: [
            recoveredBlock328Stack1 := (recoveredBlock328Stack1) undefined.
            recoveredBlock328PC := 372.
        ].
        recoveredBlock328Step = 372 ifTrue: [
            recoveredBlock328Stack2 := recoveredBlock328Arg1.
            recoveredBlock328PC := 373.
        ].
        recoveredBlock328Step = 373 ifTrue: [
            recoveredBlock328Stack1 := (recoveredBlock328Stack1) remove: (recoveredBlock328Stack2).
            recoveredBlock328PC := 375.
        ].
        recoveredBlock328Step = 375 ifTrue: [
            recoveredBlock328Result := recoveredBlock328Stack1.
            recoveredBlock328Done := true.
        ].
    ].
    recoveredBlock328Result
].
            recoveredPC := 376.
        ].
        recoveredStep = 376 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 378.
        ].
        recoveredStep = 378 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 381.
        ].
        recoveredStep = 381 ifTrue: [
            recoveredStack1 := [:recoveredBlock381Arg1 | 
    | recoveredBlock381Stack0 recoveredBlock381Stack1 recoveredBlock381Stack2 recoveredBlock381Stack3 recoveredBlock381Stack4 recoveredBlock381PC recoveredBlock381Step recoveredBlock381Done recoveredBlock381Result |
    recoveredBlock381Stack0 := self.
    recoveredBlock381PC := 388.
    recoveredBlock381Done := false.
    [recoveredBlock381Done not] whileTrue: [
        recoveredBlock381Step := recoveredBlock381PC.
        recoveredBlock381Step = 388 ifTrue: [
            recoveredBlock381Stack1 := nil.
            recoveredBlock381PC := 389.
        ].
        recoveredBlock381Step = 389 ifTrue: [
            recoveredBlock381Stack2 := recoveredBlock381Arg1.
            recoveredBlock381PC := 390.
        ].
        recoveredBlock381Step = 390 ifTrue: [
            recoveredBlock381Stack2 := (recoveredBlock381Stack2) value.
            recoveredBlock381PC := 392.
        ].
        recoveredBlock381Step = 392 ifTrue: [
            recoveredBlock381Stack3 := 'Deleted'.
            recoveredBlock381PC := 394.
        ].
        recoveredBlock381Step = 394 ifTrue: [
            (recoveredBlock381Stack2 == recoveredBlock381Stack3) ifTrue: [recoveredBlock381PC := 417] ifFalse: [recoveredBlock381PC := 398].
        ].
        recoveredBlock381Step = 398 ifTrue: [
            recoveredBlock381Stack2 := recoveredLocal3.
            recoveredBlock381PC := 401.
        ].
        recoveredBlock381Step = 401 ifTrue: [
            recoveredBlock381Stack3 := recoveredBlock381Arg1.
            recoveredBlock381PC := 402.
        ].
        recoveredBlock381Step = 402 ifTrue: [
            recoveredBlock381Stack3 := (recoveredBlock381Stack3) key.
            recoveredBlock381PC := 404.
        ].
        recoveredBlock381Step = 404 ifTrue: [
            recoveredBlock381Stack2 := (recoveredBlock381Stack2) includes: (recoveredBlock381Stack3).
            recoveredBlock381PC := 406.
        ].
        recoveredBlock381Step = 406 ifTrue: [
            (recoveredBlock381Stack2) ifTrue: [recoveredBlock381PC := 417] ifFalse: [recoveredBlock381PC := 410].
        ].
        recoveredBlock381Step = 410 ifTrue: [
            recoveredBlock381PC := 411.
        ].
        recoveredBlock381Step = 411 ifTrue: [
            recoveredBlock381Stack1 := self.
            recoveredBlock381PC := 412.
        ].
        recoveredBlock381Step = 412 ifTrue: [
            recoveredBlock381Stack2 := recoveredBlock381Arg1.
            recoveredBlock381PC := 413.
        ].
        recoveredBlock381Step = 413 ifTrue: [
            recoveredBlock381Stack2 := (recoveredBlock381Stack2) key.
            recoveredBlock381PC := 415.
        ].
        recoveredBlock381Step = 415 ifTrue: [
            recoveredBlock381Stack1 := (recoveredBlock381Stack1) addUndefined: (recoveredBlock381Stack2).
            recoveredBlock381PC := 417.
        ].
        recoveredBlock381Step = 417 ifTrue: [
            recoveredBlock381Result := recoveredBlock381Stack1.
            recoveredBlock381Done := true.
        ].
    ].
    recoveredBlock381Result
].
            recoveredPC := 418.
        ].
        recoveredStep = 418 ifTrue: [
            (recoveredStack0) associationsDo: (recoveredStack1).
            recoveredPC := 420.
        ].
        recoveredStep = 420 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 422.
        ].
        recoveredStep = 422 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 424.
        ].
        recoveredStep = 424 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 427.
        ].
        recoveredStep = 427 ifTrue: [
            recoveredStack0 := EmSortedHierarchy.
            recoveredPC := 429.
        ].
        recoveredStep = 429 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 432.
        ].
        recoveredStep = 432 ifTrue: [
            recoveredStack0 := (recoveredStack0) sort: (recoveredStack1).
            recoveredPC := 434.
        ].
        recoveredStep = 434 ifTrue: [
            recoveredStack1 := [:recoveredBlock434Arg1 | 
    | recoveredBlock434Stack0 recoveredBlock434Stack1 recoveredBlock434Stack2 recoveredBlock434Stack3 recoveredBlock434Stack4 recoveredBlock434Stack5 recoveredBlock434Stack6 recoveredBlock434PC recoveredBlock434Step recoveredBlock434Done recoveredBlock434Result |
    recoveredBlock434Stack0 := self.
    recoveredBlock434PC := 440.
    recoveredBlock434Done := false.
    [recoveredBlock434Done not] whileTrue: [
        recoveredBlock434Step := recoveredBlock434PC.
        recoveredBlock434Step = 440 ifTrue: [
            recoveredBlock434Stack1 := EmUser.
            recoveredBlock434PC := 442.
        ].
        recoveredBlock434Step = 442 ifTrue: [
            recoveredBlock434Stack1 := (recoveredBlock434Stack1) current.
            recoveredBlock434PC := 444.
        ].
        recoveredBlock434Step = 444 ifTrue: [
            recoveredBlock434Stack2 := self.
            recoveredBlock434PC := 445.
        ].
        recoveredBlock434Step = 445 ifTrue: [
            recoveredBlock434Stack3 := recoveredBlock434Arg1.
            recoveredBlock434PC := 446.
        ].
        recoveredBlock434Step = 446 ifTrue: [
            recoveredBlock434Stack2 := (recoveredBlock434Stack2) ownerOf: (recoveredBlock434Stack3).
            recoveredBlock434PC := 448.
        ].
        recoveredBlock434Step = 448 ifTrue: [
            recoveredBlock434Stack1 := (recoveredBlock434Stack1) = (recoveredBlock434Stack2).
            recoveredBlock434PC := 449.
        ].
        recoveredBlock434Step = 449 ifTrue: [
            (recoveredBlock434Stack1) ifTrue: [recoveredBlock434PC := 452] ifFalse: [recoveredBlock434PC := 530].
        ].
        recoveredBlock434Step = 452 ifTrue: [
            recoveredBlock434Stack1 := self.
            recoveredBlock434PC := 453.
        ].
        recoveredBlock434Step = 453 ifTrue: [
            recoveredBlock434Stack1 := (recoveredBlock434Stack1) owningImage.
            recoveredBlock434PC := 455.
        ].
        recoveredBlock434Step = 455 ifTrue: [
            recoveredBlock434Stack2 := NlsCatEMc.
            recoveredBlock434PC := 457.
        ].
        recoveredBlock434Step = 457 ifTrue: [
            recoveredBlock434Stack3 := 'MxEMc88'.
            recoveredBlock434PC := 459.
        ].
        recoveredBlock434Step = 459 ifTrue: [
            recoveredBlock434Stack2 := (recoveredBlock434Stack2) residentMsg: (recoveredBlock434Stack3).
            recoveredBlock434PC := 461.
        ].
        recoveredBlock434Step = 461 ifTrue: [
            recoveredBlock434Stack3 := recoveredBlock434Arg1.
            recoveredBlock434PC := 462.
        ].
        recoveredBlock434Step = 462 ifTrue: [
            recoveredBlock434Stack3 := (recoveredBlock434Stack3) symbol.
            recoveredBlock434PC := 464.
        ].
        recoveredBlock434Step = 464 ifTrue: [
            recoveredBlock434Stack4 := self.
            recoveredBlock434PC := 465.
        ].
        recoveredBlock434Step = 465 ifTrue: [
            recoveredBlock434Stack4 := (recoveredBlock434Stack4) signature.
            recoveredBlock434PC := 467.
        ].
        recoveredBlock434Step = 467 ifTrue: [
            recoveredBlock434Stack2 := (recoveredBlock434Stack2) bindWith: (recoveredBlock434Stack3) with: (recoveredBlock434Stack4).
            recoveredBlock434PC := 469.
        ].
        recoveredBlock434Step = 469 ifTrue: [
            recoveredBlock434Stack1 := (recoveredBlock434Stack1) confirm: (recoveredBlock434Stack2).
            recoveredBlock434PC := 471.
        ].
        recoveredBlock434Step = 471 ifTrue: [
            (recoveredBlock434Stack1) ifTrue: [recoveredBlock434PC := 474] ifFalse: [recoveredBlock434PC := 530].
        ].
        recoveredBlock434Step = 474 ifTrue: [
            recoveredBlock434Stack1 := self.
            recoveredBlock434PC := 475.
        ].
        recoveredBlock434Step = 475 ifTrue: [
            recoveredBlock434Stack2 := recoveredBlock434Arg1.
            recoveredBlock434PC := 476.
        ].
        recoveredBlock434Step = 476 ifTrue: [
            recoveredBlock434Stack2 := (recoveredBlock434Stack2) controller.
            recoveredBlock434PC := 478.
        ].
        recoveredBlock434Step = 478 ifTrue: [
            recoveredBlock434Stack1 := (recoveredBlock434Stack1) = (recoveredBlock434Stack2).
            recoveredBlock434PC := 479.
        ].
        recoveredBlock434Step = 479 ifTrue: [
            (recoveredBlock434Stack1) ifTrue: [recoveredBlock434PC := 482] ifFalse: [recoveredBlock434PC := 500].
        ].
        recoveredBlock434Step = 482 ifTrue: [
            recoveredBlock434Stack1 := recoveredBlock434Arg1.
            recoveredBlock434PC := 483.
        ].
        recoveredBlock434Step = 483 ifTrue: [
            recoveredBlock434Stack1 := (recoveredBlock434Stack1) isPublic.
            recoveredBlock434PC := 485.
        ].
        recoveredBlock434Step = 485 ifTrue: [
            (recoveredBlock434Stack1) ifTrue: [recoveredBlock434PC := 488] ifFalse: [recoveredBlock434PC := 494].
        ].
        recoveredBlock434Step = 488 ifTrue: [
            recoveredBlock434Stack1 := 'PubliclyDefined'.
            recoveredBlock434PC := 490.
        ].
        recoveredBlock434Step = 490 ifTrue: [
            recoveredBlock434PC := 496.
        ].
        recoveredBlock434Step = 494 ifTrue: [
            recoveredBlock434Stack1 := 'PrivatelyDefined'.
            recoveredBlock434PC := 496.
        ].
        recoveredBlock434Step = 496 ifTrue: [
            recoveredBlock434PC := 502.
        ].
        recoveredBlock434Step = 500 ifTrue: [
            recoveredBlock434Stack1 := 'Extended'.
            recoveredBlock434PC := 502.
        ].
        recoveredBlock434Step = 502 ifTrue: [
            recoveredLocal2 := recoveredBlock434Stack1.
            recoveredBlock434PC := 505.
        ].
        recoveredBlock434Step = 505 ifTrue: [
            recoveredBlock434Stack1 := self.
            recoveredBlock434PC := 506.
        ].
        recoveredBlock434Step = 506 ifTrue: [
            recoveredBlock434Stack2 := recoveredBlock434Arg1.
            recoveredBlock434PC := 507.
        ].
        recoveredBlock434Step = 507 ifTrue: [
            recoveredBlock434Stack2 := (recoveredBlock434Stack2) symbol.
            recoveredBlock434PC := 509.
        ].
        recoveredBlock434Step = 509 ifTrue: [
            recoveredBlock434Stack3 := recoveredLocal2.
            recoveredBlock434PC := 512.
        ].
        recoveredBlock434Step = 512 ifTrue: [
            recoveredBlock434Stack4 := [
    recoveredLocal7 := false.
    false
].
            recoveredBlock434PC := 524.
        ].
        recoveredBlock434Step = 524 ifTrue: [
            recoveredBlock434Stack1 := (recoveredBlock434Stack1) insertClassName: (recoveredBlock434Stack2) type: (recoveredBlock434Stack3) ifUnable: (recoveredBlock434Stack4).
            recoveredBlock434PC := 527.
        ].
        recoveredBlock434Step = 527 ifTrue: [
            recoveredBlock434PC := 559.
        ].
        recoveredBlock434Step = 530 ifTrue: [
            recoveredBlock434Stack1 := EmImageSupport.
            recoveredBlock434PC := 532.
        ].
        recoveredBlock434Step = 532 ifTrue: [
            recoveredBlock434Stack1 := (recoveredBlock434Stack1) errorReporter.
            recoveredBlock434PC := 533.
        ].
        recoveredBlock434Step = 533 ifTrue: [
            recoveredBlock434Stack2 := 102.
            recoveredBlock434PC := 536.
        ].
        recoveredBlock434Step = 536 ifTrue: [
            recoveredBlock434Stack3 := Array.
            recoveredBlock434PC := 538.
        ].
        recoveredBlock434Step = 538 ifTrue: [
            recoveredBlock434Stack4 := recoveredBlock434Arg1.
            recoveredBlock434PC := 539.
        ].
        recoveredBlock434Step = 539 ifTrue: [
            recoveredBlock434Stack4 := (recoveredBlock434Stack4) name.
            recoveredBlock434PC := 541.
        ].
        recoveredBlock434Step = 541 ifTrue: [
            recoveredBlock434Stack5 := self.
            recoveredBlock434PC := 542.
        ].
        recoveredBlock434Step = 542 ifTrue: [
            recoveredBlock434Stack5 := (recoveredBlock434Stack5) signature.
            recoveredBlock434PC := 544.
        ].
        recoveredBlock434Step = 544 ifTrue: [
            recoveredBlock434Stack3 := (recoveredBlock434Stack3) with: (recoveredBlock434Stack4) with: (recoveredBlock434Stack5).
            recoveredBlock434PC := 549.
        ].
        recoveredBlock434Step = 549 ifTrue: [
            (recoveredBlock434Stack1) logError: (recoveredBlock434Stack2) withParms: (recoveredBlock434Stack3).
            recoveredBlock434PC := 551.
        ].
        recoveredBlock434Step = 551 ifTrue: [
            recoveredBlock434Stack1 := recoveredLocal1.
            recoveredBlock434PC := 554.
        ].
        recoveredBlock434Step = 554 ifTrue: [
            recoveredBlock434Stack2 := recoveredBlock434Arg1.
            recoveredBlock434PC := 555.
        ].
        recoveredBlock434Step = 555 ifTrue: [
            recoveredBlock434Stack1 := (recoveredBlock434Stack1) addFirst: (recoveredBlock434Stack2).
            recoveredBlock434PC := 559.
        ].
        recoveredBlock434Step = 559 ifTrue: [
            recoveredBlock434Result := recoveredBlock434Stack1.
            recoveredBlock434Done := true.
        ].
    ].
    recoveredBlock434Result
].
            recoveredPC := 560.
        ].
        recoveredStep = 560 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 562.
        ].
        recoveredStep = 562 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 565.
        ].
        recoveredStep = 565 ifTrue: [
            recoveredStack1 := [:recoveredBlock565Arg1 | 
    | recoveredBlock565Stack0 recoveredBlock565Stack1 recoveredBlock565Stack2 recoveredBlock565Stack3 recoveredBlock565Stack4 recoveredBlock565Stack5 recoveredBlock565Stack6 recoveredBlock565PC recoveredBlock565Step recoveredBlock565Done recoveredBlock565Result |
    recoveredBlock565Stack0 := self.
    recoveredBlock565PC := 572.
    recoveredBlock565Done := false.
    [recoveredBlock565Done not] whileTrue: [
        recoveredBlock565Step := recoveredBlock565PC.
        recoveredBlock565Step = 572 ifTrue: [
            recoveredBlock565Stack1 := nil.
            recoveredBlock565PC := 573.
        ].
        recoveredBlock565Step = 573 ifTrue: [
            recoveredBlock565Stack2 := self.
            recoveredBlock565PC := 574.
        ].
        recoveredBlock565Step = 574 ifTrue: [
            recoveredBlock565Stack2 := (recoveredBlock565Stack2) owningImage.
            recoveredBlock565PC := 576.
        ].
        recoveredBlock565Step = 576 ifTrue: [
            recoveredBlock565Stack3 := NlsCatEMc.
            recoveredBlock565PC := 578.
        ].
        recoveredBlock565Step = 578 ifTrue: [
            recoveredBlock565Stack4 := 'MxEMc89'.
            recoveredBlock565PC := 582.
        ].
        recoveredBlock565Step = 582 ifTrue: [
            recoveredBlock565Stack3 := (recoveredBlock565Stack3) residentMsg: (recoveredBlock565Stack4).
            recoveredBlock565PC := 584.
        ].
        recoveredBlock565Step = 584 ifTrue: [
            recoveredBlock565Stack4 := recoveredBlock565Arg1.
            recoveredBlock565PC := 585.
        ].
        recoveredBlock565Step = 585 ifTrue: [
            recoveredBlock565Stack4 := (recoveredBlock565Stack4) name.
            recoveredBlock565PC := 587.
        ].
        recoveredBlock565Step = 587 ifTrue: [
            recoveredBlock565Stack5 := self.
            recoveredBlock565PC := 588.
        ].
        recoveredBlock565Step = 588 ifTrue: [
            recoveredBlock565Stack5 := (recoveredBlock565Stack5) signature.
            recoveredBlock565PC := 590.
        ].
        recoveredBlock565Step = 590 ifTrue: [
            recoveredBlock565Stack3 := (recoveredBlock565Stack3) bindWith: (recoveredBlock565Stack4) with: (recoveredBlock565Stack5).
            recoveredBlock565PC := 592.
        ].
        recoveredBlock565Step = 592 ifTrue: [
            recoveredBlock565Stack2 := (recoveredBlock565Stack2) confirm: (recoveredBlock565Stack3).
            recoveredBlock565PC := 594.
        ].
        recoveredBlock565Step = 594 ifTrue: [
            (recoveredBlock565Stack2) ifTrue: [recoveredBlock565PC := 598] ifFalse: [recoveredBlock565PC := 608].
        ].
        recoveredBlock565Step = 598 ifTrue: [
            recoveredBlock565Stack2 := recoveredBlock565Arg1.
            recoveredBlock565PC := 599.
        ].
        recoveredBlock565Step = 599 ifTrue: [
            recoveredBlock565Stack3 := self.
            recoveredBlock565PC := 600.
        ].
        recoveredBlock565Step = 600 ifTrue: [
            recoveredBlock565Stack2 := (recoveredBlock565Stack2) removeFrom: (recoveredBlock565Stack3).
            recoveredBlock565PC := 605.
        ].
        recoveredBlock565Step = 605 ifTrue: [
            (recoveredBlock565Stack2) ifTrue: [recoveredBlock565PC := 614] ifFalse: [recoveredBlock565PC := 608].
        ].
        recoveredBlock565Step = 608 ifTrue: [
            recoveredBlock565PC := 609.
        ].
        recoveredBlock565Step = 609 ifTrue: [
            recoveredBlock565Stack1 := false.
            recoveredBlock565PC := 610.
        ].
        recoveredBlock565Step = 610 ifTrue: [
            recoveredBlock565Stack2 := recoveredBlock565Stack1.
            recoveredBlock565PC := 611.
        ].
        recoveredBlock565Step = 611 ifTrue: [
            recoveredLocal7 := recoveredBlock565Stack2.
            recoveredBlock565PC := 614.
        ].
        recoveredBlock565Step = 614 ifTrue: [
            recoveredBlock565Result := recoveredBlock565Stack1.
            recoveredBlock565Done := true.
        ].
    ].
    recoveredBlock565Result
].
            recoveredPC := 615.
        ].
        recoveredStep = 615 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 617.
        ].
        recoveredStep = 617 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 620.
        ].
        recoveredStep = 620 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20036300; bytecode file offset 0x72400"
!SubApplication class methodsFor: 'recovered'!
moveAllClassVersionsOf: recoveredArg1 in: recoveredArg2 from: recoveredArg3 to: recoveredArg4 using: recoveredArg5 and: recoveredArg6 removeSourceFrom: recoveredArg7 removeCommentsFrom: recoveredArg8
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredLocal14 recoveredLocal15 recoveredLocal16 recoveredLocal17 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
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
            recoveredLocal17 := recoveredStack2.
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
            recoveredStack1 := EmClassEdition.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := EmTimeStamp.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := (recoveredStack3) undefined.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack4 := EmTimeStamp.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack4 := (recoveredStack4) undefined.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) named: (recoveredStack2) timeStampWithVersionInfo: (recoveredStack3) definition: (recoveredStack4) in: (recoveredStack5).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal16 := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := EmClassEditions.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := recoveredLocal16.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack4 := recoveredArg5.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack6 := [
    | block2800601cValue0 block2800601cValue1 |
    block2800601cValue0 := EmLibraryPointer.
    block2800601cValue1 := (block2800601cValue0) void.
    block2800601cValue1
].
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5) ifAbsent: (recoveredStack6).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) for: (recoveredStack2) in: (recoveredStack3) using: (recoveredStack4).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredLocal15 := recoveredStack1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredLocal14 := recoveredStack1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := [:recoveredBlock83Arg1 | 
    | recoveredBlock83Stack0 recoveredBlock83Stack1 recoveredBlock83Stack2 recoveredBlock83Stack3 recoveredBlock83Stack4 recoveredBlock83PC recoveredBlock83Step recoveredBlock83Done recoveredBlock83Result |
    recoveredBlock83Stack0 := self.
    recoveredBlock83PC := 90.
    recoveredBlock83Done := false.
    [recoveredBlock83Done not] whileTrue: [
        recoveredBlock83Step := recoveredBlock83PC.
        recoveredBlock83Step = 90 ifTrue: [
            recoveredBlock83Stack1 := nil.
            recoveredBlock83PC := 91.
        ].
        recoveredBlock83Step = 91 ifTrue: [
            recoveredBlock83Stack2 := recoveredBlock83Arg1.
            recoveredBlock83PC := 92.
        ].
        recoveredBlock83Step = 92 ifTrue: [
            recoveredBlock83Stack2 := (recoveredBlock83Stack2) isVersion.
            recoveredBlock83PC := 94.
        ].
        recoveredBlock83Step = 94 ifTrue: [
            (recoveredBlock83Stack2) ifTrue: [recoveredBlock83PC := 98] ifFalse: [recoveredBlock83PC := 122].
        ].
        recoveredBlock83Step = 98 ifTrue: [
            recoveredBlock83Stack2 := recoveredArg2.
            recoveredBlock83PC := 101.
        ].
        recoveredBlock83Step = 101 ifTrue: [
            recoveredBlock83Stack3 := recoveredBlock83Arg1.
            recoveredBlock83PC := 102.
        ].
        recoveredBlock83Step = 102 ifTrue: [
            recoveredBlock83Stack3 := (recoveredBlock83Stack3) timeStamp.
            recoveredBlock83PC := 104.
        ].
        recoveredBlock83Step = 104 ifTrue: [
            recoveredBlock83Stack2 := (recoveredBlock83Stack2) includes: (recoveredBlock83Stack3).
            recoveredBlock83PC := 106.
        ].
        recoveredBlock83Step = 106 ifTrue: [
            (recoveredBlock83Stack2) ifTrue: [recoveredBlock83PC := 110] ifFalse: [recoveredBlock83PC := 122].
        ].
        recoveredBlock83Step = 110 ifTrue: [
            recoveredBlock83PC := 111.
        ].
        recoveredBlock83Step = 111 ifTrue: [
            recoveredBlock83Stack1 := recoveredLocal14.
            recoveredBlock83PC := 114.
        ].
        recoveredBlock83Step = 114 ifTrue: [
            recoveredBlock83Stack2 := recoveredBlock83Arg1.
            recoveredBlock83PC := 115.
        ].
        recoveredBlock83Step = 115 ifTrue: [
            recoveredBlock83Stack2 := (recoveredBlock83Stack2) timeStamp.
            recoveredBlock83PC := 117.
        ].
        recoveredBlock83Step = 117 ifTrue: [
            recoveredBlock83Stack3 := recoveredBlock83Arg1.
            recoveredBlock83PC := 118.
        ].
        recoveredBlock83Step = 118 ifTrue: [
            recoveredBlock83Stack3 := (recoveredBlock83Stack3) knownFormats.
            recoveredBlock83PC := 120.
        ].
        recoveredBlock83Step = 120 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) at: (recoveredBlock83Stack2) put: (recoveredBlock83Stack3).
            recoveredBlock83PC := 122.
        ].
        recoveredBlock83Step = 122 ifTrue: [
            recoveredBlock83Result := recoveredBlock83Stack1.
            recoveredBlock83Done := true.
        ].
    ].
    recoveredBlock83Result
].
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            (recoveredStack1) forAllEntriesDo: (recoveredStack2).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 134] ifFalse: [recoveredPC := 141].
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack1) becomeDefault.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            (recoveredStack1) becomeDefault.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := EmClassEditions.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack2 := recoveredLocal16.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack4 := recoveredArg6.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack6 := [
    | block28006040Value0 block28006040Value1 |
    block28006040Value0 := EmLibraryPointer.
    block28006040Value1 := (block28006040Value0) void.
    block28006040Value1
].
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5) ifAbsent: (recoveredStack6).
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack1 := (recoveredStack1) for: (recoveredStack2) in: (recoveredStack3) using: (recoveredStack4).
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredLocal13 := recoveredStack1.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack1 := EmMethodEdition.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack1 := (recoveredStack1) importSource.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 277] ifFalse: [recoveredPC := 184].
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack2 := [:recoveredBlock187Arg1 | 
    | recoveredBlock187Stack0 recoveredBlock187Stack1 recoveredBlock187Stack2 recoveredBlock187Stack3 recoveredBlock187Stack4 recoveredBlock187PC recoveredBlock187Step recoveredBlock187Done recoveredBlock187Result |
    recoveredBlock187Stack0 := self.
    recoveredBlock187PC := 194.
    recoveredBlock187Done := false.
    [recoveredBlock187Done not] whileTrue: [
        recoveredBlock187Step := recoveredBlock187PC.
        recoveredBlock187Step = 194 ifTrue: [
            recoveredBlock187Stack1 := nil.
            recoveredBlock187PC := 195.
        ].
        recoveredBlock187Step = 195 ifTrue: [
            recoveredBlock187Stack2 := recoveredBlock187Arg1.
            recoveredBlock187PC := 196.
        ].
        recoveredBlock187Step = 196 ifTrue: [
            recoveredBlock187Stack2 := (recoveredBlock187Stack2) isVersion.
            recoveredBlock187PC := 198.
        ].
        recoveredBlock187Step = 198 ifTrue: [
            (recoveredBlock187Stack2) ifTrue: [recoveredBlock187PC := 202] ifFalse: [recoveredBlock187PC := 259].
        ].
        recoveredBlock187Step = 202 ifTrue: [
            recoveredBlock187Stack2 := recoveredLocal14.
            recoveredBlock187PC := 205.
        ].
        recoveredBlock187Step = 205 ifTrue: [
            recoveredBlock187Stack3 := recoveredBlock187Arg1.
            recoveredBlock187PC := 206.
        ].
        recoveredBlock187Step = 206 ifTrue: [
            recoveredBlock187Stack3 := (recoveredBlock187Stack3) timeStamp.
            recoveredBlock187PC := 208.
        ].
        recoveredBlock187Step = 208 ifTrue: [
            recoveredBlock187Stack2 := (recoveredBlock187Stack2) includesKey: (recoveredBlock187Stack3).
            recoveredBlock187PC := 210.
        ].
        recoveredBlock187Step = 210 ifTrue: [
            (recoveredBlock187Stack2) ifTrue: [recoveredBlock187PC := 214] ifFalse: [recoveredBlock187PC := 259].
        ].
        recoveredBlock187Step = 214 ifTrue: [
            recoveredBlock187PC := 215.
        ].
        recoveredBlock187Step = 215 ifTrue: [
            recoveredBlock187Stack1 := recoveredBlock187Arg1.
            recoveredBlock187PC := 216.
        ].
        recoveredBlock187Step = 216 ifTrue: [
            recoveredBlock187Stack1 := (recoveredBlock187Stack1) knownFormats.
            recoveredBlock187PC := 218.
        ].
        recoveredBlock187Step = 218 ifTrue: [
            recoveredBlock187Stack1 := (recoveredBlock187Stack1) asSet.
            recoveredBlock187PC := 220.
        ].
        recoveredBlock187Step = 220 ifTrue: [
            recoveredLocal12 := recoveredBlock187Stack1.
            recoveredBlock187PC := 223.
        ].
        recoveredBlock187Step = 223 ifTrue: [
            recoveredBlock187Stack1 := nil.
            recoveredBlock187PC := 224.
        ].
        recoveredBlock187Step = 224 ifTrue: [
            recoveredBlock187Stack2 := recoveredLocal14.
            recoveredBlock187PC := 227.
        ].
        recoveredBlock187Step = 227 ifTrue: [
            recoveredBlock187Stack3 := recoveredBlock187Arg1.
            recoveredBlock187PC := 228.
        ].
        recoveredBlock187Step = 228 ifTrue: [
            recoveredBlock187Stack3 := (recoveredBlock187Stack3) timeStamp.
            recoveredBlock187PC := 230.
        ].
        recoveredBlock187Step = 230 ifTrue: [
            recoveredBlock187Stack2 := (recoveredBlock187Stack2) at: (recoveredBlock187Stack3).
            recoveredBlock187PC := 232.
        ].
        recoveredBlock187Step = 232 ifTrue: [
            recoveredBlock187Stack3 := [:recoveredBlock187Block232Arg1 | 
    | recoveredBlock187Block232Value0 recoveredBlock187Block232Value1 recoveredBlock187Block232Value2 |
    recoveredBlock187Block232Value0 := recoveredLocal12.
    recoveredBlock187Block232Value1 := recoveredBlock187Block232Arg1.
    recoveredBlock187Block232Value2 := (recoveredBlock187Block232Value0) includes: (recoveredBlock187Block232Value1).
    recoveredBlock187Block232Value2
].
            recoveredBlock187PC := 245.
        ].
        recoveredBlock187Step = 245 ifTrue: [
            recoveredBlock187Stack2 := (recoveredBlock187Stack2) conform: (recoveredBlock187Stack3).
            recoveredBlock187PC := 247.
        ].
        recoveredBlock187Step = 247 ifTrue: [
            (recoveredBlock187Stack2) ifTrue: [recoveredBlock187PC := 250] ifFalse: [recoveredBlock187PC := 259].
        ].
        recoveredBlock187Step = 250 ifTrue: [
            recoveredBlock187PC := 251.
        ].
        recoveredBlock187Step = 251 ifTrue: [
            recoveredBlock187Stack1 := recoveredLocal14.
            recoveredBlock187PC := 254.
        ].
        recoveredBlock187Step = 254 ifTrue: [
            recoveredBlock187Stack2 := recoveredBlock187Arg1.
            recoveredBlock187PC := 255.
        ].
        recoveredBlock187Step = 255 ifTrue: [
            recoveredBlock187Stack2 := (recoveredBlock187Stack2) timeStamp.
            recoveredBlock187PC := 257.
        ].
        recoveredBlock187Step = 257 ifTrue: [
            recoveredBlock187Stack1 := (recoveredBlock187Stack1) removeKey: (recoveredBlock187Stack2).
            recoveredBlock187PC := 259.
        ].
        recoveredBlock187Step = 259 ifTrue: [
            recoveredBlock187Result := recoveredBlock187Stack1.
            recoveredBlock187Done := true.
        ].
    ].
    recoveredBlock187Result
].
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            (recoveredStack1) forAllEntriesDo: (recoveredStack2).
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 270] ifFalse: [recoveredPC := 277].
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            (recoveredStack1) becomeDefault.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack1 := Set.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack1 := Set.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack2 := [:recoveredBlock308Arg1 | 
    | recoveredBlock308Stack0 recoveredBlock308Stack1 recoveredBlock308Stack2 recoveredBlock308Stack3 recoveredBlock308Stack4 recoveredBlock308Stack5 recoveredBlock308PC recoveredBlock308Step recoveredBlock308Done recoveredBlock308Result |
    recoveredBlock308Stack0 := self.
    recoveredBlock308PC := 314.
    recoveredBlock308Done := false.
    [recoveredBlock308Done not] whileTrue: [
        recoveredBlock308Step := recoveredBlock308PC.
        recoveredBlock308Step = 314 ifTrue: [
            recoveredBlock308Stack1 := nil.
            recoveredBlock308PC := 315.
        ].
        recoveredBlock308Step = 315 ifTrue: [
            recoveredBlock308Stack2 := recoveredLocal14.
            recoveredBlock308PC := 318.
        ].
        recoveredBlock308Step = 318 ifTrue: [
            recoveredBlock308Stack3 := recoveredBlock308Arg1.
            recoveredBlock308PC := 319.
        ].
        recoveredBlock308Step = 319 ifTrue: [
            recoveredBlock308Stack3 := (recoveredBlock308Stack3) timeStamp.
            recoveredBlock308PC := 321.
        ].
        recoveredBlock308Step = 321 ifTrue: [
            recoveredBlock308Stack4 := recoveredBlock308Stack3.
            recoveredBlock308PC := 322.
        ].
        recoveredBlock308Step = 322 ifTrue: [
            recoveredLocal7 := recoveredBlock308Stack4.
            recoveredBlock308PC := 325.
        ].
        recoveredBlock308Step = 325 ifTrue: [
            recoveredBlock308Stack2 := (recoveredBlock308Stack2) includesKey: (recoveredBlock308Stack3).
            recoveredBlock308PC := 327.
        ].
        recoveredBlock308Step = 327 ifTrue: [
            (recoveredBlock308Stack2) ifTrue: [recoveredBlock308PC := 330] ifFalse: [recoveredBlock308PC := 378].
        ].
        recoveredBlock308Step = 330 ifTrue: [
            recoveredBlock308PC := 331.
        ].
        recoveredBlock308Step = 331 ifTrue: [
            recoveredBlock308Stack1 := recoveredLocal11.
            recoveredBlock308PC := 334.
        ].
        recoveredBlock308Step = 334 ifTrue: [
            recoveredBlock308Stack2 := recoveredLocal7.
            recoveredBlock308PC := 337.
        ].
        recoveredBlock308Step = 337 ifTrue: [
            (recoveredBlock308Stack1) add: (recoveredBlock308Stack2).
            recoveredBlock308PC := 339.
        ].
        recoveredBlock308Step = 339 ifTrue: [
            recoveredBlock308Stack1 := recoveredLocal10.
            recoveredBlock308PC := 342.
        ].
        recoveredBlock308Step = 342 ifTrue: [
            recoveredBlock308Stack2 := recoveredLocal14.
            recoveredBlock308PC := 345.
        ].
        recoveredBlock308Step = 345 ifTrue: [
            recoveredBlock308Stack3 := recoveredLocal7.
            recoveredBlock308PC := 348.
        ].
        recoveredBlock308Step = 348 ifTrue: [
            recoveredBlock308Stack2 := (recoveredBlock308Stack2) at: (recoveredBlock308Stack3).
            recoveredBlock308PC := 350.
        ].
        recoveredBlock308Step = 350 ifTrue: [
            (recoveredBlock308Stack1) addAll: (recoveredBlock308Stack2).
            recoveredBlock308PC := 352.
        ].
        recoveredBlock308Step = 352 ifTrue: [
            recoveredBlock308Stack1 := recoveredLocal9.
            recoveredBlock308PC := 355.
        ].
        recoveredBlock308Step = 355 ifTrue: [
            recoveredBlock308Stack2 := recoveredLocal7.
            recoveredBlock308PC := 358.
        ].
        recoveredBlock308Step = 358 ifTrue: [
            recoveredBlock308Stack3 := recoveredBlock308Arg1.
            recoveredBlock308PC := 359.
        ].
        recoveredBlock308Step = 359 ifTrue: [
            recoveredBlock308Stack3 := (recoveredBlock308Stack3) instanceMethods.
            recoveredBlock308PC := 361.
        ].
        recoveredBlock308Step = 361 ifTrue: [
            recoveredBlock308Stack3 := (recoveredBlock308Stack3) asDictionary.
            recoveredBlock308PC := 363.
        ].
        recoveredBlock308Step = 363 ifTrue: [
            (recoveredBlock308Stack1) at: (recoveredBlock308Stack2) put: (recoveredBlock308Stack3).
            recoveredBlock308PC := 365.
        ].
        recoveredBlock308Step = 365 ifTrue: [
            recoveredBlock308Stack1 := recoveredLocal8.
            recoveredBlock308PC := 368.
        ].
        recoveredBlock308Step = 368 ifTrue: [
            recoveredBlock308Stack2 := recoveredLocal7.
            recoveredBlock308PC := 371.
        ].
        recoveredBlock308Step = 371 ifTrue: [
            recoveredBlock308Stack3 := recoveredBlock308Arg1.
            recoveredBlock308PC := 372.
        ].
        recoveredBlock308Step = 372 ifTrue: [
            recoveredBlock308Stack3 := (recoveredBlock308Stack3) classMethods.
            recoveredBlock308PC := 374.
        ].
        recoveredBlock308Step = 374 ifTrue: [
            recoveredBlock308Stack3 := (recoveredBlock308Stack3) asDictionary.
            recoveredBlock308PC := 376.
        ].
        recoveredBlock308Step = 376 ifTrue: [
            recoveredBlock308Stack1 := (recoveredBlock308Stack1) at: (recoveredBlock308Stack2) put: (recoveredBlock308Stack3).
            recoveredBlock308PC := 378.
        ].
        recoveredBlock308Step = 378 ifTrue: [
            recoveredBlock308Result := recoveredBlock308Stack1.
            recoveredBlock308Done := true.
        ].
    ].
    recoveredBlock308Result
].
            recoveredPC := 379.
        ].
        recoveredStep = 379 ifTrue: [
            (recoveredStack1) forAllEntriesDo: (recoveredStack2).
            recoveredPC := 381.
        ].
        recoveredStep = 381 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 383.
        ].
        recoveredStep = 383 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 385.
        ].
        recoveredStep = 385 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 388.
        ].
        recoveredStep = 388 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 391.
        ].
        recoveredStep = 391 ifTrue: [
            recoveredStack2 := [:recoveredBlock391Arg1 | 
    | recoveredBlock391Value0 recoveredBlock391Value1 recoveredBlock391Value2 |
    recoveredBlock391Value0 := recoveredBlock391Arg1.
    recoveredBlock391Value1 := [:recoveredBlock391Block399Arg1 | 
    | recoveredBlock391Block399Stack0 recoveredBlock391Block399Stack1 recoveredBlock391Block399Stack2 recoveredBlock391Block399Stack3 recoveredBlock391Block399Stack4 recoveredBlock391Block399Stack5 recoveredBlock391Block399Stack6 recoveredBlock391Block399PC recoveredBlock391Block399Step recoveredBlock391Block399Done recoveredBlock391Block399Result |
    recoveredBlock391Block399Stack0 := nil.
    recoveredBlock391Block399PC := 406.
    recoveredBlock391Block399Done := false.
    [recoveredBlock391Block399Done not] whileTrue: [
        recoveredBlock391Block399Step := recoveredBlock391Block399PC.
        recoveredBlock391Block399Step = 406 ifTrue: [
            recoveredBlock391Block399Stack1 := recoveredLocal6.
            recoveredBlock391Block399PC := 409.
        ].
        recoveredBlock391Block399Step = 409 ifTrue: [
            recoveredBlock391Block399Stack2 := recoveredBlock391Block399Arg1.
            recoveredBlock391Block399PC := 412.
        ].
        recoveredBlock391Block399Step = 412 ifTrue: [
            recoveredBlock391Block399Stack2 := (recoveredBlock391Block399Stack2) key.
            recoveredBlock391Block399PC := 414.
        ].
        recoveredBlock391Block399Step = 414 ifTrue: [
            recoveredBlock391Block399Stack3 := [
    | recoveredBlock391Block399Block414Value0 recoveredBlock391Block399Block414Value1 recoveredBlock391Block399Block414Value2 recoveredBlock391Block399Block414Value3 |
    recoveredBlock391Block399Block414Value0 := Array.
    recoveredBlock391Block399Block414Value1 := recoveredBlock391Block399Arg1.
    recoveredBlock391Block399Block414Value2 := (recoveredBlock391Block399Block414Value1) value.
    recoveredBlock391Block399Block414Value3 := (recoveredBlock391Block399Block414Value0) with: (recoveredBlock391Block399Block414Value2).
    recoveredBlock391Block399Block414Value3
].
            recoveredBlock391Block399PC := 430.
        ].
        recoveredBlock391Block399Step = 430 ifTrue: [
            recoveredBlock391Block399Stack1 := (recoveredBlock391Block399Stack1) at: (recoveredBlock391Block399Stack2) ifAbsentPut: (recoveredBlock391Block399Stack3).
            recoveredBlock391Block399PC := 432.
        ].
        recoveredBlock391Block399Step = 432 ifTrue: [
            recoveredLocal5 := recoveredBlock391Block399Stack1.
            recoveredBlock391Block399PC := 435.
        ].
        recoveredBlock391Block399Step = 435 ifTrue: [
            recoveredBlock391Block399Stack1 := nil.
            recoveredBlock391Block399PC := 436.
        ].
        recoveredBlock391Block399Step = 436 ifTrue: [
            recoveredBlock391Block399Stack2 := recoveredLocal5.
            recoveredBlock391Block399PC := 439.
        ].
        recoveredBlock391Block399Step = 439 ifTrue: [
            recoveredBlock391Block399Stack3 := recoveredBlock391Block399Arg1.
            recoveredBlock391Block399PC := 442.
        ].
        recoveredBlock391Block399Step = 442 ifTrue: [
            recoveredBlock391Block399Stack3 := (recoveredBlock391Block399Stack3) value.
            recoveredBlock391Block399PC := 444.
        ].
        recoveredBlock391Block399Step = 444 ifTrue: [
            recoveredBlock391Block399Stack2 := (recoveredBlock391Block399Stack2) includes: (recoveredBlock391Block399Stack3).
            recoveredBlock391Block399PC := 446.
        ].
        recoveredBlock391Block399Step = 446 ifTrue: [
            (recoveredBlock391Block399Stack2) ifTrue: [recoveredBlock391Block399PC := 475] ifFalse: [recoveredBlock391Block399PC := 450].
        ].
        recoveredBlock391Block399Step = 450 ifTrue: [
            recoveredBlock391Block399PC := 451.
        ].
        recoveredBlock391Block399Step = 451 ifTrue: [
            recoveredBlock391Block399Stack1 := recoveredLocal6.
            recoveredBlock391Block399PC := 454.
        ].
        recoveredBlock391Block399Step = 454 ifTrue: [
            recoveredBlock391Block399Stack2 := recoveredBlock391Block399Arg1.
            recoveredBlock391Block399PC := 457.
        ].
        recoveredBlock391Block399Step = 457 ifTrue: [
            recoveredBlock391Block399Stack2 := (recoveredBlock391Block399Stack2) key.
            recoveredBlock391Block399PC := 459.
        ].
        recoveredBlock391Block399Step = 459 ifTrue: [
            recoveredBlock391Block399Stack3 := recoveredLocal5.
            recoveredBlock391Block399PC := 462.
        ].
        recoveredBlock391Block399Step = 462 ifTrue: [
            recoveredBlock391Block399Stack4 := Array.
            recoveredBlock391Block399PC := 464.
        ].
        recoveredBlock391Block399Step = 464 ifTrue: [
            recoveredBlock391Block399Stack5 := recoveredBlock391Block399Arg1.
            recoveredBlock391Block399PC := 467.
        ].
        recoveredBlock391Block399Step = 467 ifTrue: [
            recoveredBlock391Block399Stack5 := (recoveredBlock391Block399Stack5) value.
            recoveredBlock391Block399PC := 469.
        ].
        recoveredBlock391Block399Step = 469 ifTrue: [
            recoveredBlock391Block399Stack4 := (recoveredBlock391Block399Stack4) with: (recoveredBlock391Block399Stack5).
            recoveredBlock391Block399PC := 471.
        ].
        recoveredBlock391Block399Step = 471 ifTrue: [
            recoveredBlock391Block399Stack3 := (recoveredBlock391Block399Stack3) , (recoveredBlock391Block399Stack4).
            recoveredBlock391Block399PC := 473.
        ].
        recoveredBlock391Block399Step = 473 ifTrue: [
            recoveredBlock391Block399Stack1 := (recoveredBlock391Block399Stack1) at: (recoveredBlock391Block399Stack2) put: (recoveredBlock391Block399Stack3).
            recoveredBlock391Block399PC := 475.
        ].
        recoveredBlock391Block399Step = 475 ifTrue: [
            recoveredBlock391Block399Result := recoveredBlock391Block399Stack1.
            recoveredBlock391Block399Done := true.
        ].
    ].
    recoveredBlock391Block399Result
].
    recoveredBlock391Value2 := (recoveredBlock391Value0) associationsDo: (recoveredBlock391Value1).
    recoveredBlock391Value2
].
            recoveredPC := 479.
        ].
        recoveredStep = 479 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 481.
        ].
        recoveredStep = 481 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 483.
        ].
        recoveredStep = 483 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 485.
        ].
        recoveredStep = 485 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 488.
        ].
        recoveredStep = 488 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 491.
        ].
        recoveredStep = 491 ifTrue: [
            recoveredStack2 := [:recoveredBlock491Arg1 | 
    | recoveredBlock491Value0 recoveredBlock491Value1 recoveredBlock491Value2 |
    recoveredBlock491Value0 := recoveredBlock491Arg1.
    recoveredBlock491Value1 := [:recoveredBlock491Block499Arg1 | 
    | recoveredBlock491Block499Stack0 recoveredBlock491Block499Stack1 recoveredBlock491Block499Stack2 recoveredBlock491Block499Stack3 recoveredBlock491Block499Stack4 recoveredBlock491Block499Stack5 recoveredBlock491Block499Stack6 recoveredBlock491Block499PC recoveredBlock491Block499Step recoveredBlock491Block499Done recoveredBlock491Block499Result |
    recoveredBlock491Block499Stack0 := nil.
    recoveredBlock491Block499PC := 506.
    recoveredBlock491Block499Done := false.
    [recoveredBlock491Block499Done not] whileTrue: [
        recoveredBlock491Block499Step := recoveredBlock491Block499PC.
        recoveredBlock491Block499Step = 506 ifTrue: [
            recoveredBlock491Block499Stack1 := recoveredLocal4.
            recoveredBlock491Block499PC := 509.
        ].
        recoveredBlock491Block499Step = 509 ifTrue: [
            recoveredBlock491Block499Stack2 := recoveredBlock491Block499Arg1.
            recoveredBlock491Block499PC := 512.
        ].
        recoveredBlock491Block499Step = 512 ifTrue: [
            recoveredBlock491Block499Stack2 := (recoveredBlock491Block499Stack2) key.
            recoveredBlock491Block499PC := 514.
        ].
        recoveredBlock491Block499Step = 514 ifTrue: [
            recoveredBlock491Block499Stack3 := [
    | recoveredBlock491Block499Block514Value0 recoveredBlock491Block499Block514Value1 recoveredBlock491Block499Block514Value2 recoveredBlock491Block499Block514Value3 |
    recoveredBlock491Block499Block514Value0 := Array.
    recoveredBlock491Block499Block514Value1 := recoveredBlock491Block499Arg1.
    recoveredBlock491Block499Block514Value2 := (recoveredBlock491Block499Block514Value1) value.
    recoveredBlock491Block499Block514Value3 := (recoveredBlock491Block499Block514Value0) with: (recoveredBlock491Block499Block514Value2).
    recoveredBlock491Block499Block514Value3
].
            recoveredBlock491Block499PC := 530.
        ].
        recoveredBlock491Block499Step = 530 ifTrue: [
            recoveredBlock491Block499Stack1 := (recoveredBlock491Block499Stack1) at: (recoveredBlock491Block499Stack2) ifAbsentPut: (recoveredBlock491Block499Stack3).
            recoveredBlock491Block499PC := 532.
        ].
        recoveredBlock491Block499Step = 532 ifTrue: [
            recoveredLocal5 := recoveredBlock491Block499Stack1.
            recoveredBlock491Block499PC := 535.
        ].
        recoveredBlock491Block499Step = 535 ifTrue: [
            recoveredBlock491Block499Stack1 := nil.
            recoveredBlock491Block499PC := 536.
        ].
        recoveredBlock491Block499Step = 536 ifTrue: [
            recoveredBlock491Block499Stack2 := recoveredLocal5.
            recoveredBlock491Block499PC := 539.
        ].
        recoveredBlock491Block499Step = 539 ifTrue: [
            recoveredBlock491Block499Stack3 := recoveredBlock491Block499Arg1.
            recoveredBlock491Block499PC := 542.
        ].
        recoveredBlock491Block499Step = 542 ifTrue: [
            recoveredBlock491Block499Stack3 := (recoveredBlock491Block499Stack3) value.
            recoveredBlock491Block499PC := 544.
        ].
        recoveredBlock491Block499Step = 544 ifTrue: [
            recoveredBlock491Block499Stack2 := (recoveredBlock491Block499Stack2) includes: (recoveredBlock491Block499Stack3).
            recoveredBlock491Block499PC := 546.
        ].
        recoveredBlock491Block499Step = 546 ifTrue: [
            (recoveredBlock491Block499Stack2) ifTrue: [recoveredBlock491Block499PC := 575] ifFalse: [recoveredBlock491Block499PC := 550].
        ].
        recoveredBlock491Block499Step = 550 ifTrue: [
            recoveredBlock491Block499PC := 551.
        ].
        recoveredBlock491Block499Step = 551 ifTrue: [
            recoveredBlock491Block499Stack1 := recoveredLocal4.
            recoveredBlock491Block499PC := 554.
        ].
        recoveredBlock491Block499Step = 554 ifTrue: [
            recoveredBlock491Block499Stack2 := recoveredBlock491Block499Arg1.
            recoveredBlock491Block499PC := 557.
        ].
        recoveredBlock491Block499Step = 557 ifTrue: [
            recoveredBlock491Block499Stack2 := (recoveredBlock491Block499Stack2) key.
            recoveredBlock491Block499PC := 559.
        ].
        recoveredBlock491Block499Step = 559 ifTrue: [
            recoveredBlock491Block499Stack3 := recoveredLocal5.
            recoveredBlock491Block499PC := 562.
        ].
        recoveredBlock491Block499Step = 562 ifTrue: [
            recoveredBlock491Block499Stack4 := Array.
            recoveredBlock491Block499PC := 564.
        ].
        recoveredBlock491Block499Step = 564 ifTrue: [
            recoveredBlock491Block499Stack5 := recoveredBlock491Block499Arg1.
            recoveredBlock491Block499PC := 567.
        ].
        recoveredBlock491Block499Step = 567 ifTrue: [
            recoveredBlock491Block499Stack5 := (recoveredBlock491Block499Stack5) value.
            recoveredBlock491Block499PC := 569.
        ].
        recoveredBlock491Block499Step = 569 ifTrue: [
            recoveredBlock491Block499Stack4 := (recoveredBlock491Block499Stack4) with: (recoveredBlock491Block499Stack5).
            recoveredBlock491Block499PC := 571.
        ].
        recoveredBlock491Block499Step = 571 ifTrue: [
            recoveredBlock491Block499Stack3 := (recoveredBlock491Block499Stack3) , (recoveredBlock491Block499Stack4).
            recoveredBlock491Block499PC := 573.
        ].
        recoveredBlock491Block499Step = 573 ifTrue: [
            recoveredBlock491Block499Stack1 := (recoveredBlock491Block499Stack1) at: (recoveredBlock491Block499Stack2) put: (recoveredBlock491Block499Stack3).
            recoveredBlock491Block499PC := 575.
        ].
        recoveredBlock491Block499Step = 575 ifTrue: [
            recoveredBlock491Block499Result := recoveredBlock491Block499Stack1.
            recoveredBlock491Block499Done := true.
        ].
    ].
    recoveredBlock491Block499Result
].
    recoveredBlock491Value2 := (recoveredBlock491Value0) associationsDo: (recoveredBlock491Value1).
    recoveredBlock491Value2
].
            recoveredPC := 579.
        ].
        recoveredStep = 579 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 581.
        ].
        recoveredStep = 581 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 583.
        ].
        recoveredStep = 583 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 585.
        ].
        recoveredStep = 585 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 588.
        ].
        recoveredStep = 588 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 591.
        ].
        recoveredStep = 591 ifTrue: [
            recoveredStack1 := (recoveredStack1) allKnownMFTS.
            recoveredPC := 593.
        ].
        recoveredStep = 593 ifTrue: [
            recoveredStack2 := [:recoveredBlock593Arg1 | 
    | recoveredBlock593Stack0 recoveredBlock593Stack1 recoveredBlock593Stack2 recoveredBlock593Stack3 recoveredBlock593Stack4 recoveredBlock593PC recoveredBlock593Step recoveredBlock593Done recoveredBlock593Result |
    recoveredBlock593Stack0 := self.
    recoveredBlock593PC := 600.
    recoveredBlock593Done := false.
    [recoveredBlock593Done not] whileTrue: [
        recoveredBlock593Step := recoveredBlock593PC.
        recoveredBlock593Step = 600 ifTrue: [
            recoveredBlock593Stack1 := nil.
            recoveredBlock593PC := 601.
        ].
        recoveredBlock593Step = 601 ifTrue: [
            recoveredBlock593Stack2 := recoveredLocal10.
            recoveredBlock593PC := 604.
        ].
        recoveredBlock593Step = 604 ifTrue: [
            recoveredBlock593Stack3 := recoveredBlock593Arg1.
            recoveredBlock593PC := 605.
        ].
        recoveredBlock593Step = 605 ifTrue: [
            recoveredBlock593Stack3 := (recoveredBlock593Stack3) value.
            recoveredBlock593PC := 607.
        ].
        recoveredBlock593Step = 607 ifTrue: [
            recoveredBlock593Stack2 := (recoveredBlock593Stack2) includes: (recoveredBlock593Stack3).
            recoveredBlock593PC := 609.
        ].
        recoveredBlock593Step = 609 ifTrue: [
            (recoveredBlock593Stack2) ifTrue: [recoveredBlock593PC := 612] ifFalse: [recoveredBlock593PC := 619].
        ].
        recoveredBlock593Step = 612 ifTrue: [
            recoveredBlock593PC := 613.
        ].
        recoveredBlock593Step = 613 ifTrue: [
            recoveredBlock593Stack1 := recoveredLocal3.
            recoveredBlock593PC := 616.
        ].
        recoveredBlock593Step = 616 ifTrue: [
            recoveredBlock593Stack2 := recoveredBlock593Arg1.
            recoveredBlock593PC := 617.
        ].
        recoveredBlock593Step = 617 ifTrue: [
            recoveredBlock593Stack1 := (recoveredBlock593Stack1) add: (recoveredBlock593Stack2).
            recoveredBlock593PC := 619.
        ].
        recoveredBlock593Step = 619 ifTrue: [
            recoveredBlock593Result := recoveredBlock593Stack1.
            recoveredBlock593Done := true.
        ].
    ].
    recoveredBlock593Result
].
            recoveredPC := 620.
        ].
        recoveredStep = 620 ifTrue: [
            (recoveredStack1) associationsDo: (recoveredStack2).
            recoveredPC := 622.
        ].
        recoveredStep = 622 ifTrue: [
            recoveredStack1 := [:recoveredBlock622Arg1 | 
    | recoveredBlock622Value0 recoveredBlock622Value1 recoveredBlock622Value2 recoveredBlock622Value3 |
    recoveredBlock622Value0 := recoveredBlock622Arg1.
    recoveredBlock622Value1 := recoveredLocal16.
    recoveredBlock622Value2 := [:recoveredBlock622Block633Arg1 | 
    | recoveredBlock622Block633Stack0 recoveredBlock622Block633Stack1 recoveredBlock622Block633Stack2 recoveredBlock622Block633Stack3 recoveredBlock622Block633Stack4 recoveredBlock622Block633Stack5 recoveredBlock622Block633Stack6 recoveredBlock622Block633Stack7 recoveredBlock622Block633Stack8 recoveredBlock622Block633Stack9 recoveredBlock622Block633Stack10 recoveredBlock622Block633Stack11 recoveredBlock622Block633PC recoveredBlock622Block633Step recoveredBlock622Block633Done recoveredBlock622Block633Result |
    recoveredBlock622Block633Stack0 := nil.
    recoveredBlock622Block633PC := 640.
    recoveredBlock622Block633Done := false.
    [recoveredBlock622Block633Done not] whileTrue: [
        recoveredBlock622Block633Step := recoveredBlock622Block633PC.
        recoveredBlock622Block633Step = 640 ifTrue: [
            recoveredBlock622Block633Stack1 := recoveredBlock622Block633Arg1.
            recoveredBlock622Block633PC := 641.
        ].
        recoveredBlock622Block633Step = 641 ifTrue: [
            recoveredBlock622Block633Stack1 := (recoveredBlock622Block633Stack1) existsInLibrary.
            recoveredBlock622Block633PC := 643.
        ].
        recoveredBlock622Block633Step = 643 ifTrue: [
            recoveredBlock622Block633Stack2 := recoveredBlock622Block633Stack1.
            recoveredBlock622Block633PC := 644.
        ].
        recoveredBlock622Block633Step = 644 ifTrue: [
            recoveredLocal2 := recoveredBlock622Block633Stack2.
            recoveredBlock622Block633PC := 647.
        ].
        recoveredBlock622Block633Step = 647 ifTrue: [
            (recoveredBlock622Block633Stack1) ifTrue: [recoveredBlock622Block633PC := 681] ifFalse: [recoveredBlock622Block633PC := 650].
        ].
        recoveredBlock622Block633Step = 650 ifTrue: [
            recoveredBlock622Block633Stack1 := recoveredBlock622Block633Arg1.
            recoveredBlock622Block633PC := 651.
        ].
        recoveredBlock622Block633Step = 651 ifTrue: [
            recoveredBlock622Block633Stack2 := recoveredLocal11.
            recoveredBlock622Block633PC := 654.
        ].
        recoveredBlock622Block633Step = 654 ifTrue: [
            recoveredBlock622Block633Stack3 := recoveredLocal15.
            recoveredBlock622Block633PC := 657.
        ].
        recoveredBlock622Block633Step = 657 ifTrue: [
            recoveredBlock622Block633Stack4 := recoveredLocal9.
            recoveredBlock622Block633PC := 660.
        ].
        recoveredBlock622Block633Step = 660 ifTrue: [
            recoveredBlock622Block633Stack5 := recoveredLocal6.
            recoveredBlock622Block633PC := 663.
        ].
        recoveredBlock622Block633Step = 663 ifTrue: [
            recoveredBlock622Block633Stack6 := recoveredLocal8.
            recoveredBlock622Block633PC := 666.
        ].
        recoveredBlock622Block633Step = 666 ifTrue: [
            recoveredBlock622Block633Stack7 := recoveredLocal4.
            recoveredBlock622Block633PC := 669.
        ].
        recoveredBlock622Block633Step = 669 ifTrue: [
            recoveredBlock622Block633Stack8 := recoveredLocal10.
            recoveredBlock622Block633PC := 672.
        ].
        recoveredBlock622Block633Step = 672 ifTrue: [
            recoveredBlock622Block633Stack9 := recoveredArg7.
            recoveredBlock622Block633PC := 675.
        ].
        recoveredBlock622Block633Step = 675 ifTrue: [
            recoveredBlock622Block633Stack10 := recoveredArg8.
            recoveredBlock622Block633PC := 678.
        ].
        recoveredBlock622Block633Step = 678 ifTrue: [
            (recoveredBlock622Block633Stack1) addNewClassVersions: (recoveredBlock622Block633Stack2) from: (recoveredBlock622Block633Stack3) withInstanceMethods: (recoveredBlock622Block633Stack4) and: (recoveredBlock622Block633Stack5) withClassMethods: (recoveredBlock622Block633Stack6) and: (recoveredBlock622Block633Stack7) allFormats: (recoveredBlock622Block633Stack8) removeSourceFrom: (recoveredBlock622Block633Stack9) removeCommentsFrom: (recoveredBlock622Block633Stack10).
            recoveredBlock622Block633PC := 681.
        ].
        recoveredBlock622Block633Step = 681 ifTrue: [
            recoveredBlock622Block633Stack1 := recoveredBlock622Block633Arg1.
            recoveredBlock622Block633PC := 682.
        ].
        recoveredBlock622Block633Step = 682 ifTrue: [
            recoveredBlock622Block633Stack2 := recoveredLocal3.
            recoveredBlock622Block633PC := 685.
        ].
        recoveredBlock622Block633Step = 685 ifTrue: [
            recoveredBlock622Block633Stack1 := (recoveredBlock622Block633Stack1) addFormats: (recoveredBlock622Block633Stack2).
            recoveredBlock622Block633PC := 687.
        ].
        recoveredBlock622Block633Step = 687 ifTrue: [
            recoveredBlock622Block633Result := recoveredBlock622Block633Stack1.
            recoveredBlock622Block633Done := true.
        ].
    ].
    recoveredBlock622Block633Result
].
    recoveredBlock622Value3 := (recoveredBlock622Value0) updateEditionsOf: (recoveredBlock622Value1) in: (self) using: (recoveredBlock622Value2).
    recoveredBlock622Value3
].
            recoveredPC := 692.
        ].
        recoveredStep = 692 ifTrue: [
            (recoveredStack0) updateParts: (recoveredStack1).
            recoveredPC := 694.
        ].
        recoveredStep = 694 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 697.
        ].
        recoveredStep = 697 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 707] ifFalse: [recoveredPC := 700].
        ].
        recoveredStep = 700 ifTrue: [
            recoveredStack0 := recoveredLocal17.
            recoveredPC := 703.
        ].
        recoveredStep = 703 ifTrue: [
            (recoveredStack0) becomeDefault.
            recoveredPC := 705.
        ].
        recoveredStep = 705 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 706.
        ].
        recoveredStep = 706 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 707 ifTrue: [
            recoveredStack0 := Dictionary.
            recoveredPC := 709.
        ].
        recoveredStep = 709 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 711.
        ].
        recoveredStep = 711 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 714.
        ].
        recoveredStep = 714 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 717.
        ].
        recoveredStep = 717 ifTrue: [
            recoveredStack1 := [:recoveredBlock717Arg1 | 
    | recoveredBlock717Value0 recoveredBlock717Value1 recoveredBlock717Value2 |
    recoveredBlock717Value0 := recoveredLocal16.
    recoveredBlock717Value1 := [:recoveredBlock717Block728Arg1 | 
    | recoveredBlock717Block728Stack0 recoveredBlock717Block728Stack1 recoveredBlock717Block728Stack2 recoveredBlock717Block728Stack3 recoveredBlock717Block728Stack4 recoveredBlock717Block728Stack5 recoveredBlock717Block728Stack6 recoveredBlock717Block728Stack7 recoveredBlock717Block728Stack8 recoveredBlock717Block728Stack9 recoveredBlock717Block728PC recoveredBlock717Block728Step recoveredBlock717Block728Done recoveredBlock717Block728Result |
    recoveredBlock717Block728Stack0 := nil.
    recoveredBlock717Block728PC := 734.
    recoveredBlock717Block728Done := false.
    [recoveredBlock717Block728Done not] whileTrue: [
        recoveredBlock717Block728Step := recoveredBlock717Block728PC.
        recoveredBlock717Block728Step = 734 ifTrue: [
            recoveredBlock717Block728Stack1 := recoveredBlock717Block728Arg1.
            recoveredBlock717Block728PC := 735.
        ].
        recoveredBlock717Block728Step = 735 ifTrue: [
            recoveredBlock717Block728Stack2 := recoveredBlock717Arg1.
            recoveredBlock717Block728PC := 738.
        ].
        recoveredBlock717Block728Step = 738 ifTrue: [
            recoveredBlock717Block728Stack2 := (recoveredBlock717Block728Stack2) key.
            recoveredBlock717Block728PC := 740.
        ].
        recoveredBlock717Block728Step = 740 ifTrue: [
            recoveredBlock717Block728Stack3 := recoveredBlock717Arg1.
            recoveredBlock717Block728PC := 743.
        ].
        recoveredBlock717Block728Step = 743 ifTrue: [
            recoveredBlock717Block728Stack3 := (recoveredBlock717Block728Stack3) value.
            recoveredBlock717Block728PC := 745.
        ].
        recoveredBlock717Block728Step = 745 ifTrue: [
            recoveredBlock717Block728Stack4 := recoveredArg3.
            recoveredBlock717Block728PC := 748.
        ].
        recoveredBlock717Block728Step = 748 ifTrue: [
            recoveredBlock717Block728Stack5 := recoveredLocal10.
            recoveredBlock717Block728PC := 751.
        ].
        recoveredBlock717Block728Step = 751 ifTrue: [
            recoveredBlock717Block728Stack6 := recoveredArg7.
            recoveredBlock717Block728PC := 754.
        ].
        recoveredBlock717Block728Step = 754 ifTrue: [
            (recoveredBlock717Block728Stack6 ~~ nil) ifTrue: [recoveredBlock717Block728PC := 762] ifFalse: [recoveredBlock717Block728PC := 758].
        ].
        recoveredBlock717Block728Step = 758 ifTrue: [
            recoveredBlock717Block728Stack6 := true.
            recoveredBlock717Block728PC := 759.
        ].
        recoveredBlock717Block728Step = 759 ifTrue: [
            recoveredBlock717Block728PC := 774.
        ].
        recoveredBlock717Block728Step = 762 ifTrue: [
            recoveredBlock717Block728Stack6 := recoveredArg7.
            recoveredBlock717Block728PC := 765.
        ].
        recoveredBlock717Block728Step = 765 ifTrue: [
            recoveredBlock717Block728Stack6 := (recoveredBlock717Block728Stack6) key.
            recoveredBlock717Block728PC := 767.
        ].
        recoveredBlock717Block728Step = 767 ifTrue: [
            recoveredBlock717Block728Stack7 := recoveredBlock717Arg1.
            recoveredBlock717Block728PC := 770.
        ].
        recoveredBlock717Block728Step = 770 ifTrue: [
            recoveredBlock717Block728Stack7 := (recoveredBlock717Block728Stack7) key.
            recoveredBlock717Block728PC := 772.
        ].
        recoveredBlock717Block728Step = 772 ifTrue: [
            recoveredBlock717Block728Stack6 := (recoveredBlock717Block728Stack6) includes: (recoveredBlock717Block728Stack7).
            recoveredBlock717Block728PC := 774.
        ].
        recoveredBlock717Block728Step = 774 ifTrue: [
            recoveredBlock717Block728Stack7 := recoveredArg8.
            recoveredBlock717Block728PC := 777.
        ].
        recoveredBlock717Block728Step = 777 ifTrue: [
            (recoveredBlock717Block728Stack7 ~~ nil) ifTrue: [recoveredBlock717Block728PC := 784] ifFalse: [recoveredBlock717Block728PC := 780].
        ].
        recoveredBlock717Block728Step = 780 ifTrue: [
            recoveredBlock717Block728Stack7 := true.
            recoveredBlock717Block728PC := 781.
        ].
        recoveredBlock717Block728Step = 781 ifTrue: [
            recoveredBlock717Block728PC := 796.
        ].
        recoveredBlock717Block728Step = 784 ifTrue: [
            recoveredBlock717Block728Stack7 := recoveredArg8.
            recoveredBlock717Block728PC := 787.
        ].
        recoveredBlock717Block728Step = 787 ifTrue: [
            recoveredBlock717Block728Stack7 := (recoveredBlock717Block728Stack7) key.
            recoveredBlock717Block728PC := 789.
        ].
        recoveredBlock717Block728Step = 789 ifTrue: [
            recoveredBlock717Block728Stack8 := recoveredBlock717Arg1.
            recoveredBlock717Block728PC := 792.
        ].
        recoveredBlock717Block728Step = 792 ifTrue: [
            recoveredBlock717Block728Stack8 := (recoveredBlock717Block728Stack8) key.
            recoveredBlock717Block728PC := 794.
        ].
        recoveredBlock717Block728Step = 794 ifTrue: [
            recoveredBlock717Block728Stack7 := (recoveredBlock717Block728Stack7) includes: (recoveredBlock717Block728Stack8).
            recoveredBlock717Block728PC := 796.
        ].
        recoveredBlock717Block728Step = 796 ifTrue: [
            recoveredBlock717Block728Stack8 := recoveredLocal1.
            recoveredBlock717Block728PC := 799.
        ].
        recoveredBlock717Block728Step = 799 ifTrue: [
            recoveredBlock717Block728Stack1 := (recoveredBlock717Block728Stack1) updateMethodEditionsAt: (recoveredBlock717Block728Stack2) using: (recoveredBlock717Block728Stack3) from: (recoveredBlock717Block728Stack4) including: (recoveredBlock717Block728Stack5) removeSource: (recoveredBlock717Block728Stack6) removeComment: (recoveredBlock717Block728Stack7) mapNewPositionsUsing: (recoveredBlock717Block728Stack8).
            recoveredBlock717Block728PC := 802.
        ].
        recoveredBlock717Block728Step = 802 ifTrue: [
            recoveredBlock717Block728Result := recoveredBlock717Block728Stack1.
            recoveredBlock717Block728Done := true.
        ].
    ].
    recoveredBlock717Block728Result
].
    recoveredBlock717Value2 := (recoveredBlock717Value0) updateEditionsRecordIn: (self) with: (recoveredBlock717Value1).
    recoveredBlock717Value2
].
            recoveredPC := 806.
        ].
        recoveredStep = 806 ifTrue: [
            (recoveredStack0) associationsDo: (recoveredStack1).
            recoveredPC := 808.
        ].
        recoveredStep = 808 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 811.
        ].
        recoveredStep = 811 ifTrue: [
            recoveredStack1 := [:recoveredBlock811Arg1 | 
    | recoveredBlock811Value0 recoveredBlock811Value1 recoveredBlock811Value2 recoveredBlock811Value3 |
    recoveredBlock811Value0 := recoveredLocal16.
    recoveredBlock811Value1 := (recoveredBlock811Value0) class.
    recoveredBlock811Value2 := [:recoveredBlock811Block824Arg1 | 
    | recoveredBlock811Block824Stack0 recoveredBlock811Block824Stack1 recoveredBlock811Block824Stack2 recoveredBlock811Block824Stack3 recoveredBlock811Block824Stack4 recoveredBlock811Block824Stack5 recoveredBlock811Block824Stack6 recoveredBlock811Block824Stack7 recoveredBlock811Block824Stack8 recoveredBlock811Block824Stack9 recoveredBlock811Block824PC recoveredBlock811Block824Step recoveredBlock811Block824Done recoveredBlock811Block824Result |
    recoveredBlock811Block824Stack0 := nil.
    recoveredBlock811Block824PC := 830.
    recoveredBlock811Block824Done := false.
    [recoveredBlock811Block824Done not] whileTrue: [
        recoveredBlock811Block824Step := recoveredBlock811Block824PC.
        recoveredBlock811Block824Step = 830 ifTrue: [
            recoveredBlock811Block824Stack1 := recoveredBlock811Block824Arg1.
            recoveredBlock811Block824PC := 831.
        ].
        recoveredBlock811Block824Step = 831 ifTrue: [
            recoveredBlock811Block824Stack2 := recoveredBlock811Arg1.
            recoveredBlock811Block824PC := 834.
        ].
        recoveredBlock811Block824Step = 834 ifTrue: [
            recoveredBlock811Block824Stack2 := (recoveredBlock811Block824Stack2) key.
            recoveredBlock811Block824PC := 836.
        ].
        recoveredBlock811Block824Step = 836 ifTrue: [
            recoveredBlock811Block824Stack3 := recoveredBlock811Arg1.
            recoveredBlock811Block824PC := 839.
        ].
        recoveredBlock811Block824Step = 839 ifTrue: [
            recoveredBlock811Block824Stack3 := (recoveredBlock811Block824Stack3) value.
            recoveredBlock811Block824PC := 841.
        ].
        recoveredBlock811Block824Step = 841 ifTrue: [
            recoveredBlock811Block824Stack4 := recoveredArg3.
            recoveredBlock811Block824PC := 844.
        ].
        recoveredBlock811Block824Step = 844 ifTrue: [
            recoveredBlock811Block824Stack5 := recoveredLocal10.
            recoveredBlock811Block824PC := 847.
        ].
        recoveredBlock811Block824Step = 847 ifTrue: [
            recoveredBlock811Block824Stack6 := recoveredArg7.
            recoveredBlock811Block824PC := 850.
        ].
        recoveredBlock811Block824Step = 850 ifTrue: [
            (recoveredBlock811Block824Stack6 ~~ nil) ifTrue: [recoveredBlock811Block824PC := 858] ifFalse: [recoveredBlock811Block824PC := 854].
        ].
        recoveredBlock811Block824Step = 854 ifTrue: [
            recoveredBlock811Block824Stack6 := true.
            recoveredBlock811Block824PC := 855.
        ].
        recoveredBlock811Block824Step = 855 ifTrue: [
            recoveredBlock811Block824PC := 870.
        ].
        recoveredBlock811Block824Step = 858 ifTrue: [
            recoveredBlock811Block824Stack6 := recoveredArg7.
            recoveredBlock811Block824PC := 861.
        ].
        recoveredBlock811Block824Step = 861 ifTrue: [
            recoveredBlock811Block824Stack6 := (recoveredBlock811Block824Stack6) value.
            recoveredBlock811Block824PC := 863.
        ].
        recoveredBlock811Block824Step = 863 ifTrue: [
            recoveredBlock811Block824Stack7 := recoveredBlock811Arg1.
            recoveredBlock811Block824PC := 866.
        ].
        recoveredBlock811Block824Step = 866 ifTrue: [
            recoveredBlock811Block824Stack7 := (recoveredBlock811Block824Stack7) key.
            recoveredBlock811Block824PC := 868.
        ].
        recoveredBlock811Block824Step = 868 ifTrue: [
            recoveredBlock811Block824Stack6 := (recoveredBlock811Block824Stack6) includes: (recoveredBlock811Block824Stack7).
            recoveredBlock811Block824PC := 870.
        ].
        recoveredBlock811Block824Step = 870 ifTrue: [
            recoveredBlock811Block824Stack7 := recoveredArg8.
            recoveredBlock811Block824PC := 873.
        ].
        recoveredBlock811Block824Step = 873 ifTrue: [
            (recoveredBlock811Block824Stack7 ~~ nil) ifTrue: [recoveredBlock811Block824PC := 880] ifFalse: [recoveredBlock811Block824PC := 876].
        ].
        recoveredBlock811Block824Step = 876 ifTrue: [
            recoveredBlock811Block824Stack7 := true.
            recoveredBlock811Block824PC := 877.
        ].
        recoveredBlock811Block824Step = 877 ifTrue: [
            recoveredBlock811Block824PC := 892.
        ].
        recoveredBlock811Block824Step = 880 ifTrue: [
            recoveredBlock811Block824Stack7 := recoveredArg8.
            recoveredBlock811Block824PC := 883.
        ].
        recoveredBlock811Block824Step = 883 ifTrue: [
            recoveredBlock811Block824Stack7 := (recoveredBlock811Block824Stack7) value.
            recoveredBlock811Block824PC := 885.
        ].
        recoveredBlock811Block824Step = 885 ifTrue: [
            recoveredBlock811Block824Stack8 := recoveredBlock811Arg1.
            recoveredBlock811Block824PC := 888.
        ].
        recoveredBlock811Block824Step = 888 ifTrue: [
            recoveredBlock811Block824Stack8 := (recoveredBlock811Block824Stack8) key.
            recoveredBlock811Block824PC := 890.
        ].
        recoveredBlock811Block824Step = 890 ifTrue: [
            recoveredBlock811Block824Stack7 := (recoveredBlock811Block824Stack7) includes: (recoveredBlock811Block824Stack8).
            recoveredBlock811Block824PC := 892.
        ].
        recoveredBlock811Block824Step = 892 ifTrue: [
            recoveredBlock811Block824Stack8 := recoveredLocal1.
            recoveredBlock811Block824PC := 895.
        ].
        recoveredBlock811Block824Step = 895 ifTrue: [
            recoveredBlock811Block824Stack1 := (recoveredBlock811Block824Stack1) updateMethodEditionsAt: (recoveredBlock811Block824Stack2) using: (recoveredBlock811Block824Stack3) from: (recoveredBlock811Block824Stack4) including: (recoveredBlock811Block824Stack5) removeSource: (recoveredBlock811Block824Stack6) removeComment: (recoveredBlock811Block824Stack7) mapNewPositionsUsing: (recoveredBlock811Block824Stack8).
            recoveredBlock811Block824PC := 898.
        ].
        recoveredBlock811Block824Step = 898 ifTrue: [
            recoveredBlock811Block824Result := recoveredBlock811Block824Stack1.
            recoveredBlock811Block824Done := true.
        ].
    ].
    recoveredBlock811Block824Result
].
    recoveredBlock811Value3 := (recoveredBlock811Value1) updateEditionsRecordIn: (self) with: (recoveredBlock811Value2).
    recoveredBlock811Value3
].
            recoveredPC := 902.
        ].
        recoveredStep = 902 ifTrue: [
            (recoveredStack0) associationsDo: (recoveredStack1).
            recoveredPC := 904.
        ].
        recoveredStep = 904 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 905.
        ].
        recoveredStep = 905 ifTrue: [
            recoveredStack1 := [:recoveredBlock905Arg1 | 
    | recoveredBlock905Value0 recoveredBlock905Value1 recoveredBlock905Value2 recoveredBlock905Value3 |
    recoveredBlock905Value0 := recoveredBlock905Arg1.
    recoveredBlock905Value1 := recoveredLocal16.
    recoveredBlock905Value2 := [:recoveredBlock905Block917Arg1 | 
    | recoveredBlock905Block917Stack0 recoveredBlock905Block917Stack1 recoveredBlock905Block917Stack2 recoveredBlock905Block917Stack3 recoveredBlock905Block917PC recoveredBlock905Block917Step recoveredBlock905Block917Done recoveredBlock905Block917Result |
    recoveredBlock905Block917Stack0 := nil.
    recoveredBlock905Block917PC := 924.
    recoveredBlock905Block917Done := false.
    [recoveredBlock905Block917Done not] whileTrue: [
        recoveredBlock905Block917Step := recoveredBlock905Block917PC.
        recoveredBlock905Block917Step = 924 ifTrue: [
            recoveredBlock905Block917Stack1 := recoveredLocal15.
            recoveredBlock905Block917PC := 927.
        ].
        recoveredBlock905Block917Step = 927 ifTrue: [
            recoveredBlock905Block917Stack2 := [:recoveredBlock905Block917Block927Arg1 | 
    | recoveredBlock905Block917Block927Stack0 recoveredBlock905Block917Block927Stack1 recoveredBlock905Block917Block927Stack2 recoveredBlock905Block917Block927Stack3 recoveredBlock905Block917Block927Stack4 recoveredBlock905Block917Block927Stack5 recoveredBlock905Block917Block927Stack6 recoveredBlock905Block917Block927Stack7 recoveredBlock905Block917Block927PC recoveredBlock905Block917Block927Step recoveredBlock905Block917Block927Done recoveredBlock905Block917Block927Result |
    recoveredBlock905Block917Block927Stack0 := nil.
    recoveredBlock905Block917Block927PC := 934.
    recoveredBlock905Block917Block927Done := false.
    [recoveredBlock905Block917Block927Done not] whileTrue: [
        recoveredBlock905Block917Block927Step := recoveredBlock905Block917Block927PC.
        recoveredBlock905Block917Block927Step = 934 ifTrue: [
            recoveredBlock905Block917Block927Stack1 := nil.
            recoveredBlock905Block917Block927PC := 935.
        ].
        recoveredBlock905Block917Block927Step = 935 ifTrue: [
            recoveredBlock905Block917Block927Stack2 := recoveredLocal11.
            recoveredBlock905Block917Block927PC := 938.
        ].
        recoveredBlock905Block917Block927Step = 938 ifTrue: [
            recoveredBlock905Block917Block927Stack3 := recoveredBlock905Block917Block927Arg1.
            recoveredBlock905Block917Block927PC := 939.
        ].
        recoveredBlock905Block917Block927Step = 939 ifTrue: [
            recoveredBlock905Block917Block927Stack3 := (recoveredBlock905Block917Block927Stack3) timeStamp.
            recoveredBlock905Block917Block927PC := 941.
        ].
        recoveredBlock905Block917Block927Step = 941 ifTrue: [
            recoveredBlock905Block917Block927Stack4 := recoveredBlock905Block917Block927Stack3.
            recoveredBlock905Block917Block927PC := 942.
        ].
        recoveredBlock905Block917Block927Step = 942 ifTrue: [
            recoveredLocal7 := recoveredBlock905Block917Block927Stack4.
            recoveredBlock905Block917Block927PC := 945.
        ].
        recoveredBlock905Block917Block927Step = 945 ifTrue: [
            recoveredBlock905Block917Block927Stack2 := (recoveredBlock905Block917Block927Stack2) includes: (recoveredBlock905Block917Block927Stack3).
            recoveredBlock905Block917Block927PC := 947.
        ].
        recoveredBlock905Block917Block927Step = 947 ifTrue: [
            (recoveredBlock905Block917Block927Stack2) ifTrue: [recoveredBlock905Block917Block927PC := 950] ifFalse: [recoveredBlock905Block917Block927PC := 981].
        ].
        recoveredBlock905Block917Block927Step = 950 ifTrue: [
            recoveredBlock905Block917Block927PC := 951.
        ].
        recoveredBlock905Block917Block927Step = 951 ifTrue: [
            recoveredBlock905Block917Block927Stack1 := recoveredBlock905Block917Arg1.
            recoveredBlock905Block917Block927PC := 954.
        ].
        recoveredBlock905Block917Block927Step = 954 ifTrue: [
            recoveredBlock905Block917Block927Stack2 := recoveredBlock905Block917Block927Arg1.
            recoveredBlock905Block917Block927PC := 955.
        ].
        recoveredBlock905Block917Block927Step = 955 ifTrue: [
            recoveredBlock905Block917Block927Stack3 := recoveredLocal9.
            recoveredBlock905Block917Block927PC := 958.
        ].
        recoveredBlock905Block917Block927Step = 958 ifTrue: [
            recoveredBlock905Block917Block927Stack4 := recoveredLocal7.
            recoveredBlock905Block917Block927PC := 961.
        ].
        recoveredBlock905Block917Block927Step = 961 ifTrue: [
            recoveredBlock905Block917Block927Stack3 := (recoveredBlock905Block917Block927Stack3) at: (recoveredBlock905Block917Block927Stack4).
            recoveredBlock905Block917Block927PC := 963.
        ].
        recoveredBlock905Block917Block927Step = 963 ifTrue: [
            recoveredBlock905Block917Block927Stack4 := recoveredLocal8.
            recoveredBlock905Block917Block927PC := 966.
        ].
        recoveredBlock905Block917Block927Step = 966 ifTrue: [
            recoveredBlock905Block917Block927Stack5 := recoveredLocal7.
            recoveredBlock905Block917Block927PC := 969.
        ].
        recoveredBlock905Block917Block927Step = 969 ifTrue: [
            recoveredBlock905Block917Block927Stack4 := (recoveredBlock905Block917Block927Stack4) at: (recoveredBlock905Block917Block927Stack5).
            recoveredBlock905Block917Block927PC := 971.
        ].
        recoveredBlock905Block917Block927Step = 971 ifTrue: [
            recoveredBlock905Block917Block927Stack5 := recoveredLocal1.
            recoveredBlock905Block917Block927PC := 974.
        ].
        recoveredBlock905Block917Block927Step = 974 ifTrue: [
            recoveredBlock905Block917Block927Stack6 := recoveredArg8.
            recoveredBlock905Block917Block927PC := 977.
        ].
        recoveredBlock905Block917Block927Step = 977 ifTrue: [
            recoveredBlock905Block917Block927Stack6 := (recoveredBlock905Block917Block927Stack6) isNil.
            recoveredBlock905Block917Block927PC := 978.
        ].
        recoveredBlock905Block917Block927Step = 978 ifTrue: [
            recoveredBlock905Block917Block927Stack1 := (recoveredBlock905Block917Block927Stack1) addEntry: (recoveredBlock905Block917Block927Stack2) instanceMethods: (recoveredBlock905Block917Block927Stack3) classMethods: (recoveredBlock905Block917Block927Stack4) mappingPositionsUsing: (recoveredBlock905Block917Block927Stack5) removeComment: (recoveredBlock905Block917Block927Stack6).
            recoveredBlock905Block917Block927PC := 981.
        ].
        recoveredBlock905Block917Block927Step = 981 ifTrue: [
            recoveredBlock905Block917Block927Result := recoveredBlock905Block917Block927Stack1.
            recoveredBlock905Block917Block927Done := true.
        ].
    ].
    recoveredBlock905Block917Block927Result
].
            recoveredBlock905Block917PC := 982.
        ].
        recoveredBlock905Block917Step = 982 ifTrue: [
            (recoveredBlock905Block917Stack1) forAllEntriesDo: (recoveredBlock905Block917Stack2).
            recoveredBlock905Block917PC := 984.
        ].
        recoveredBlock905Block917Step = 984 ifTrue: [
            recoveredBlock905Block917Stack1 := recoveredBlock905Block917Arg1.
            recoveredBlock905Block917PC := 987.
        ].
        recoveredBlock905Block917Step = 987 ifTrue: [
            recoveredBlock905Block917Stack1 := (recoveredBlock905Block917Stack1) existsInLibrary.
            recoveredBlock905Block917PC := 989.
        ].
        recoveredBlock905Block917Step = 989 ifTrue: [
            (recoveredBlock905Block917Stack1) ifTrue: [recoveredBlock905Block917PC := 992] ifFalse: [recoveredBlock905Block917PC := 1000].
        ].
        recoveredBlock905Block917Step = 992 ifTrue: [
            recoveredBlock905Block917Stack1 := recoveredBlock905Block917Arg1.
            recoveredBlock905Block917PC := 995.
        ].
        recoveredBlock905Block917Step = 995 ifTrue: [
            recoveredBlock905Block917Stack1 := (recoveredBlock905Block917Stack1) filePointer.
            recoveredBlock905Block917PC := 997.
        ].
        recoveredBlock905Block917Step = 997 ifTrue: [
            recoveredBlock905Block917PC := 1008.
        ].
        recoveredBlock905Block917Step = 1000 ifTrue: [
            recoveredBlock905Block917Stack1 := recoveredBlock905Block917Arg1.
            recoveredBlock905Block917PC := 1003.
        ].
        recoveredBlock905Block917Step = 1003 ifTrue: [
            recoveredBlock905Block917Stack2 := recoveredArg4.
            recoveredBlock905Block917PC := 1006.
        ].
        recoveredBlock905Block917Step = 1006 ifTrue: [
            recoveredBlock905Block917Stack1 := (recoveredBlock905Block917Stack1) insertInto: (recoveredBlock905Block917Stack2).
            recoveredBlock905Block917PC := 1008.
        ].
        recoveredBlock905Block917Step = 1008 ifTrue: [
            recoveredBlock905Block917Result := recoveredBlock905Block917Stack1.
            recoveredBlock905Block917Done := true.
        ].
    ].
    recoveredBlock905Block917Result
].
    recoveredBlock905Value3 := (recoveredBlock905Value0) updateEditionsOf: (recoveredBlock905Value1) in: (self) using: (recoveredBlock905Value2).
    recoveredBlock905Value3
].
            recoveredPC := 1013.
        ].
        recoveredStep = 1013 ifTrue: [
            (recoveredStack0) updateParts: (recoveredStack1).
            recoveredPC := 1015.
        ].
        recoveredStep = 1015 ifTrue: [
            recoveredStack0 := recoveredLocal17.
            recoveredPC := 1018.
        ].
        recoveredStep = 1018 ifTrue: [
            (recoveredStack0) becomeDefault.
            recoveredPC := 1020.
        ].
        recoveredStep = 1020 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 1021.
        ].
        recoveredStep = 1021 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

