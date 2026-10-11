"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"lib.ic method 0x20000174; bytecode file offset 0x3c21c"
!ClassDescription methodsFor: 'recovered'!
allLiveInstances
    | recoveredValue0 |
    recoveredValue0 := (self) allInstances.
    ^recoveredValue0
! !

"lib.ic method 0x20000328; bytecode file offset 0x3c670"
!ClassDescription methodsFor: 'recovered'!
creatorClass
    | recoveredValue0 |
    recoveredValue0 := EmClassCreator.
    ^recoveredValue0
! !

"lib.ic method 0x200003d0; bytecode file offset 0x3c670"
!ClassDescription methodsFor: 'recovered'!
classEditionsClass
    | recoveredValue0 |
    recoveredValue0 := EmClassEditions.
    ^recoveredValue0
! !

"lib.ic method 0x20000c1c; bytecode file offset 0x3cc70"
!ClassDescription methodsFor: 'recovered'!
signatureForLoggingIn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) signatureIn: (recoveredValue0).
    ^recoveredValue1
! !

"lib.ic method 0x2000143c; bytecode file offset 0x3d664"
!ClassDescription methodsFor: 'recovered'!
editionEntry
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) controller.
    recoveredValue1 := (self) editionEntryIn: (recoveredValue0).
    ^recoveredValue1
! !

"lib.ic method 0x200015ec; bytecode file offset 0x3d664"
!ClassDescription methodsFor: 'recovered'!
editionsRecord
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) controller.
    recoveredValue1 := (self) editionsRecordIn: (recoveredValue0).
    ^recoveredValue1
! !

"lib.ic method 0x2000183c; bytecode file offset 0x3d890"
!ClassDescription methodsFor: 'recovered'!
ownerInAndUserThatReleasedIn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) ownerOfAndUserThatReleased: (self).
    ^recoveredValue1
! !

"lib.ic method 0x20001848; bytecode file offset 0x3d890"
!ClassDescription methodsFor: 'recovered'!
isReleasedIn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) isReleased: (self).
    ^recoveredValue1
! !

"lib.ic method 0x20001854; bytecode file offset 0x3d890"
!ClassDescription methodsFor: 'recovered'!
ownerIn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) ownerOf: (self).
    ^recoveredValue1
! !

"lib.ic method 0x2000186c; bytecode file offset 0x3d890"
!ClassDescription methodsFor: 'recovered'!
userThatReleasedIn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) userThatReleased: (self).
    ^recoveredValue1
! !

"lib.ic method 0x200018bc; bytecode file offset 0x3d914"
!ClassDescription methodsFor: 'recovered'!
editionEntryIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) editionsRecordIn: (recoveredValue0).
    recoveredValue2 := (recoveredValue1) currentEntry.
    ^recoveredValue2
! !

"lib.ic method 0x200018cc; bytecode file offset 0x3d914"
!ClassDescription methodsFor: 'recovered'!
previousTimeStampIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) editionEntryIn: (recoveredValue0).
    recoveredValue2 := (recoveredValue1) previousTimeStamp.
    ^recoveredValue2
! !

"lib.ic method 0x20001934; bytecode file offset 0x3da5c"
!ClassDescription methodsFor: 'recovered'!
addCategory: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) info.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) addCategory: (recoveredValue1).
    ^recoveredValue2
! !

"lib.ic method 0x20002e08; bytecode file offset 0x3ee34"
!ClassDescription methodsFor: 'recovered'!
categoryDictionaryRecordFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) editionsRecordIn: (recoveredValue0).
    recoveredValue2 := (recoveredValue1) currentEntry.
    recoveredValue3 := (recoveredValue2) categoryDictionary.
    ^recoveredValue3
! !

"lib.ic method 0x20002f58; bytecode file offset 0x3ef84"
!ClassDescription methodsFor: 'recovered'!
knownMFTSKey
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := EmClassEditions.
    recoveredValue1 := (self) withAllSuperclasses.
    recoveredValue2 := (recoveredValue0) knownMFTSKeyFor: (recoveredValue1).
    ^recoveredValue2
! !

"lib.ic method 0x20003124; bytecode file offset 0x3f14c"
!ClassDescription methodsFor: 'recovered'!
forgetSubclasses
    (self) subclasses: (#()).
    ^self
! !

"lib.ic method 0x200034b4; bytecode file offset 0x3f4fc"
!ClassDescription methodsFor: 'recovered'!
compile: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := Transcript.
    recoveredValue2 := (self) compile: (recoveredValue0) notifying: (recoveredValue1).
    ^recoveredValue2
! !

"lib.ic method 0x20004120; bytecode file offset 0x40148"
!ClassDescription methodsFor: 'recovered'!
timeStampIn: recoveredArg1 versionName: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) timeStampIn: (recoveredValue0).
    recoveredValue2 := recoveredArg2.
    (recoveredValue1) versionName: (recoveredValue2).
    ^self
! !

"lib.ic method 0x200045fc; bytecode file offset 0x4063c"
!ClassDescription methodsFor: 'recovered'!
editionsRecordIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EmLibraryCache.
    recoveredValue1 := (recoveredValue0) current.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) classEditionsRecordFor: (self) in: (recoveredValue2).
    ^recoveredValue3
! !

"lib.ic method 0x20004650; bytecode file offset 0x40678"
!ClassDescription methodsFor: 'recovered'!
classHasSourceFor: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := ('PR') = ('1PQCXCI').
    ^false
! !

"lib.ic method 0x2000466c; bytecode file offset 0x40694"
!ClassDescription methodsFor: 'recovered'!
classSuppliedSourceFor: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := ('PR') = ('1PQCXCI').
    ^nil
! !

"lib.ic method 0x20004e54; bytecode file offset 0x40e84"
!ClassDescription methodsFor: 'recovered'!
makeCategorizationConsistent
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) info.
    recoveredValue1 := (self) categoryDictionaryRecord.
    recoveredValue2 := (self) selectors.
    (recoveredValue0) setCategorization: (recoveredValue1) for: (recoveredValue2).
    ^self
! !

"lib.ic method 0x20004fdc; bytecode file offset 0x41084"
!ClassDescription methodsFor: 'recovered'!
inheritedUserFieldNamesIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := EmLibrary.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) operationsInterface.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue2) classInheritedUserFieldNamesInAppFor: (self) application: (recoveredValue3).
    ^recoveredValue4
! !

"lib.ic method 0x2000500c; bytecode file offset 0x41084"
!ClassDescription methodsFor: 'recovered'!
localUserFieldNamesIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := EmLibrary.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) operationsInterface.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue2) classLocalUserFieldNamesInAppFor: (self) application: (recoveredValue3).
    ^recoveredValue4
! !

"lib.ic method 0x20005358; bytecode file offset 0x41380"
!ClassDescription methodsFor: 'recovered'!
updateEditionsRecordIn: recoveredArg1 with: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EmClassEditions.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) for: (self) in: (recoveredValue1) updateUsing: (recoveredValue2).
    ^recoveredValue3
! !

"lib.ic method 0x20005488; bytecode file offset 0x414b8"
!ClassDescription methodsFor: 'recovered'!
inheritedUserFieldAt: recoveredArg1 in: recoveredArg2 put: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    (self) inheritedUserFieldAt: (recoveredValue0) in: (recoveredValue1) put: (recoveredValue2) ifUnable: (nil).
    ^self
! !

"lib.ic method 0x20005494; bytecode file offset 0x414b8"
!ClassDescription methodsFor: 'recovered'!
inheritedUserFieldAt: recoveredArg1 in: recoveredArg2 putRecord: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    (self) inheritedUserFieldAt: (recoveredValue0) in: (recoveredValue1) putRecord: (recoveredValue2) ifUnable: (nil).
    ^self
! !

"lib.ic method 0x20005a6c; bytecode file offset 0x41a94"
!ClassDescription methodsFor: 'recovered'!
updateEditionsRecordIn: recoveredArg1 with: recoveredArg2 ifUnable: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := EmClassEditions.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue0) for: (self) in: (recoveredValue1) updateUsing: (recoveredValue2) ifUnable: (recoveredValue3).
    ^recoveredValue4
! !

"lib.ic method 0x20005ab0; bytecode file offset 0x41ae0"
!ClassDescription methodsFor: 'recovered'!
localUserFieldAt: recoveredArg1 in: recoveredArg2 put: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    (self) localUserFieldAt: (recoveredValue0) in: (recoveredValue1) put: (recoveredValue2) userMustBeDeveloperTo: (nil) ifUnable: (nil).
    ^self
! !

"lib.ic method 0x20005abc; bytecode file offset 0x41ae0"
!ClassDescription methodsFor: 'recovered'!
localUserFieldAt: recoveredArg1 in: recoveredArg2 putRecord: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    (self) localUserFieldAt: (recoveredValue0) in: (recoveredValue1) putRecord: (recoveredValue2) userMustBeDeveloperTo: (nil) ifUnable: (nil).
    ^self
! !

"lib.ic method 0x20005ddc; bytecode file offset 0x41e10"
!ClassDescription methodsFor: 'recovered'!
developerIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := EmUser.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) editionEntryIn: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) developer.
    recoveredValue4 := [].
    recoveredValue5 := (recoveredValue0) called: (recoveredValue3) ifAbsent: (recoveredValue4).
    ^recoveredValue5
! !

"lib.ic method 0x20006000; bytecode file offset 0x42030"
!ClassDescription methodsFor: 'recovered'!
shadowEditionsOf: recoveredArg1 in: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := EmLibrary.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) operationsInterface.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue2) classShadowEditionsOfSelectorInAppFor: (self) selector: (recoveredValue3) application: (recoveredValue4).
    ^recoveredValue5
! !

"lib.ic method 0x20006040; bytecode file offset 0x42100"
!ClassDescription methodsFor: 'recovered'!
deleteInheritedUserFieldAt: recoveredArg1 in: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := EmLibrary.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) operationsInterface.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    (recoveredValue2) classDeleteInheritedUserFieldAtInAppFor: (self) atName: (recoveredValue3) application: (recoveredValue4).
    ^self
! !

"lib.ic method 0x200060a0; bytecode file offset 0x42100"
!ClassDescription methodsFor: 'recovered'!
deleteLocalUserFieldAt: recoveredArg1 in: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := EmLibrary.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) operationsInterface.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    (recoveredValue2) classDeleteLocalUserFieldAtInAppFor: (self) atName: (recoveredValue3) application: (recoveredValue4).
    ^self
! !

"lib.ic method 0x2000615c; bytecode file offset 0x4218c"
!ClassDescription methodsFor: 'recovered'!
compile: recoveredArg1 notifying: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) owningImage.
    recoveredValue3 := (recoveredValue2) defaultApplication.
    recoveredValue4 := (self) compile: (recoveredValue0) notifying: (recoveredValue1) ifNewAddTo: (recoveredValue3) categorizeIn: (#()).
    ^recoveredValue4
! !

"lib.ic method 0x200068c0; bytecode file offset 0x428f8"
!ClassDescription methodsFor: 'recovered'!
comment
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := EmImageSupport.
    recoveredValue1 := (recoveredValue0) textFilter.
    recoveredValue2 := (self) controller.
    recoveredValue3 := (self) inheritedUserFieldAt: ('comment') in: (recoveredValue2).
    recoveredValue4 := (recoveredValue1) filter: (recoveredValue3).
    ^recoveredValue4
! !

"lib.ic method 0x20006de8; bytecode file offset 0x42e30"
!ClassDescription methodsFor: 'recovered'!
inheritedUserFieldAt: recoveredArg1 in: recoveredArg2 putRecord: recoveredArg3 ifUnable: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := EmLibrary.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) operationsInterface.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := recoveredArg4.
    (recoveredValue2) classInheritedUserFieldAtPutRecordInAppFor: (self) atName: (recoveredValue3) putRecord: (recoveredValue4) application: (recoveredValue5) ifUnable: (recoveredValue6).
    ^self
! !

"lib.ic method 0x20006e00; bytecode file offset 0x42e30"
!ClassDescription methodsFor: 'recovered'!
inheritedUserFieldAt: recoveredArg1 in: recoveredArg2 put: recoveredArg3 ifUnable: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := EmLibrary.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) operationsInterface.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := recoveredArg4.
    (recoveredValue2) classInheritedUserFieldAtPutInAppFor: (self) atName: (recoveredValue3) put: (recoveredValue4) application: (recoveredValue5) ifUnable: (recoveredValue6).
    ^self
! !

"lib.ic method 0x20007178; bytecode file offset 0x431a4"
!ClassDescription methodsFor: 'recovered'!
superclassName
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) superclass.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := ''.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) superclass.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) name.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x200071d0; bytecode file offset 0x43204"
!ClassDescription methodsFor: 'recovered'!
asEditionIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := EmClassEdition.
    recoveredValue1 := (self) symbol.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) timeStampIn: (recoveredValue2).
    recoveredValue4 := (self) definitionTimeStamp.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue0) named: (recoveredValue1) timeStamp: (recoveredValue3) definition: (recoveredValue4) in: (recoveredValue5).
    ^recoveredValue6
! !

"lib.ic method 0x20007a9c; bytecode file offset 0x43ae4"
!ClassDescription methodsFor: 'recovered'!
localUserFieldAt: recoveredArg1 in: recoveredArg2 putRecord: recoveredArg3 userMustBeDeveloperTo: recoveredArg4 ifUnable: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := EmLibrary.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) operationsInterface.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := recoveredArg4.
    recoveredValue7 := recoveredArg5.
    (recoveredValue2) classLocalUserFieldAtPutRecordInAppFor: (self) atName: (recoveredValue3) putRecord: (recoveredValue4) application: (recoveredValue5) userMustBeDeveloperTo: (recoveredValue6) ifUnable: (recoveredValue7).
    ^self
! !

"lib.ic method 0x20007ab4; bytecode file offset 0x43ae4"
!ClassDescription methodsFor: 'recovered'!
localUserFieldAt: recoveredArg1 in: recoveredArg2 put: recoveredArg3 userMustBeDeveloperTo: recoveredArg4 ifUnable: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := EmLibrary.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) operationsInterface.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := recoveredArg4.
    recoveredValue7 := recoveredArg5.
    (recoveredValue2) classLocalUserFieldAtPutInAppFor: (self) atName: (recoveredValue3) put: (recoveredValue4) application: (recoveredValue5) userMustBeDeveloperTo: (recoveredValue6) ifUnable: (recoveredValue7).
    ^self
! !

"lib.ic method 0x20007f00; bytecode file offset 0x43f28"
!ClassDescription methodsFor: 'recovered'!
methodIsPrivate: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    ^false
].
    recoveredValue2 := (self) compiledMethodAt: (recoveredValue0) ifAbsent: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) isPrivate.
    ^recoveredValue3
! !

"lib.ic method 0x20007f44; bytecode file offset 0x43f6c"
!ClassDescription methodsFor: 'recovered'!
methodIsPublic: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    ^true
].
    recoveredValue2 := (self) compiledMethodAt: (recoveredValue0) ifAbsent: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) isPublic.
    ^recoveredValue3
! !

"lib.ic method 0x20008bd0; bytecode file offset 0x44c08"
!ClassDescription methodsFor: 'recovered'!
primitiveRemoveSelector: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) info.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) with: (recoveredValue2).
    (recoveredValue0) deleteSelectors: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    (self) applicationFor: (recoveredValue4) is: (nil).
    recoveredValue5 := recoveredArg1.
    (self) deleteSelector: (recoveredValue5).
    ^self
! !

"lib.ic method 0x20008fb0; bytecode file offset 0x44fd8"
!ClassDescription methodsFor: 'recovered'!
removeSelector: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 |
    recoveredBlock7Value0 := recoveredArg1.
    recoveredBlock7Value1 := (self) errorAbsentSelector: (recoveredBlock7Value0).
    recoveredBlock7Value1
].
    (self) removeSelector: (recoveredValue0) ifAbsent: (recoveredValue1).
    ^self
! !

"lib.ic method 0x20009038; bytecode file offset 0x45090"
!ClassDescription methodsFor: 'recovered'!
localUserFieldAt: recoveredArg1 in: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack5 := [
    ''
].
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) classLocalUserFieldAtInAppFor: (recoveredStack2) atName: (recoveredStack3) application: (recoveredStack4) ifUnable: (recoveredStack5).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"lib.ic method 0x20009058; bytecode file offset 0x45090"
!ClassDescription methodsFor: 'recovered'!
inheritedUserFieldAt: recoveredArg1 in: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack5 := [
    ''
].
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) classInheritedUserFieldAtInAppFor: (recoveredStack2) atName: (recoveredStack3) application: (recoveredStack4) ifUnable: (recoveredStack5).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"lib.ic method 0x20009a08; bytecode file offset 0x45a58"
!ClassDescription methodsFor: 'recovered'!
commentFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 |
    recoveredBlock7Value0 := NlsCatEMc.
    recoveredBlock7Value1 := (recoveredBlock7Value0) residentMsg: ('MxEMc9').
    ^recoveredBlock7Value1
].
    recoveredValue2 := (self) compiledMethodAt: (recoveredValue0) ifAbsent: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) comment.
    ^recoveredValue3
! !

"lib.ic method 0x20009a24; bytecode file offset 0x45a58"
!ClassDescription methodsFor: 'recovered'!
descriptionFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 |
    recoveredBlock7Value0 := NlsCatEMc.
    recoveredBlock7Value1 := (recoveredBlock7Value0) residentMsg: ('MxEMc9').
    ^recoveredBlock7Value1
].
    recoveredValue2 := (self) compiledMethodAt: (recoveredValue0) ifAbsent: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) description.
    ^recoveredValue3
! !

"lib.ic method 0x20009dec; bytecode file offset 0x45e20"
!ClassDescription methodsFor: 'recovered'!
isReallyVersionIn: recoveredArg1
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
            recoveredStack0 := (recoveredStack0) editionEntryIn: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) isVersion.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := true.
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) isVersionIn: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 24].
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
            recoveredStack0 := (recoveredStack0) timeStampIn: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) versionName: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2000de14; bytecode file offset 0x49e3c"
!ClassDescription methodsFor: 'recovered'!
compile: recoveredArg1 notifying: recoveredArg2 ifNewAddTo: recoveredArg3 categorizeIn: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := [
    ^nil
].
    recoveredValue3 := (self) basicCompile: (recoveredValue0) notifying: (recoveredValue1) ifFail: (recoveredValue2).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := recoveredArg3.
    recoveredValue6 := recoveredArg4.
    recoveredValue7 := (self) install: (recoveredValue3) asPrivate: (false) withSource: (recoveredValue4) ifNewAddTo: (recoveredValue5) categorizeIn: (recoveredValue6).
    ^recoveredValue7
! !

"lib.ic method 0x2000de4c; bytecode file offset 0x49e74"
!ClassDescription methodsFor: 'recovered'!
compileAsPrivate: recoveredArg1 notifying: recoveredArg2 ifNewAddTo: recoveredArg3 categorizeIn: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := [
    ^nil
].
    recoveredValue3 := (self) basicCompile: (recoveredValue0) notifying: (recoveredValue1) ifFail: (recoveredValue2).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := recoveredArg3.
    recoveredValue6 := recoveredArg4.
    recoveredValue7 := (self) install: (recoveredValue3) asPrivate: (true) withSource: (recoveredValue4) ifNewAddTo: (recoveredValue5) categorizeIn: (recoveredValue6).
    ^recoveredValue7
! !

"lib.ic method 0x2000e9e8; bytecode file offset 0x4aa20"
!ClassDescription methodsFor: 'recovered'!
removeSelectorFromLibraryOnly: recoveredArg1 in: recoveredArg2 ifUnable: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 |
    recoveredBlock7Value0 := recoveredArg3.
    recoveredBlock7Value1 := (recoveredBlock7Value0) value.
    ^recoveredBlock7Value1
].
    (self) modifyIn: (recoveredValue0) ifUnable: (recoveredValue1).
    recoveredValue2 := EmLibrary.
    recoveredValue3 := (recoveredValue2) default.
    recoveredValue4 := (recoveredValue3) operationsInterface.
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := recoveredArg1.
    (recoveredValue4) applicationRemoveSelectorFromClassFor: (recoveredValue5) selector: (recoveredValue6) class: (self) ifUnable: (nil).
    ^self
! !

"lib.ic method 0x2000ef5c; bytecode file offset 0x4af9c"
!ClassDescription methodsFor: 'recovered'!
commentFor: recoveredArg1 is: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 recoveredBlock7Value5 |
    recoveredBlock7Value0 := EmImageSupport.
    recoveredBlock7Value1 := (recoveredBlock7Value0) errorReporter.
    recoveredBlock7Value2 := Array.
    recoveredBlock7Value3 := recoveredArg1.
    recoveredBlock7Value4 := (self) name.
    recoveredBlock7Value5 := (recoveredBlock7Value2) with: (recoveredBlock7Value3) with: (recoveredBlock7Value4).
    (recoveredBlock7Value1) logError: (45) withParms: (recoveredBlock7Value5).
    ^false
].
    recoveredValue2 := (self) compiledMethodAt: (recoveredValue0) ifAbsent: (recoveredValue1).
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue2) comment: (recoveredValue3).
    ^recoveredValue4
! !

"lib.ic method 0x2000efac; bytecode file offset 0x4afec"
!ClassDescription methodsFor: 'recovered'!
descriptionFor: recoveredArg1 is: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 recoveredBlock7Value5 |
    recoveredBlock7Value0 := EmImageSupport.
    recoveredBlock7Value1 := (recoveredBlock7Value0) errorReporter.
    recoveredBlock7Value2 := Array.
    recoveredBlock7Value3 := recoveredArg1.
    recoveredBlock7Value4 := (self) name.
    recoveredBlock7Value5 := (recoveredBlock7Value2) with: (recoveredBlock7Value3) with: (recoveredBlock7Value4).
    (recoveredBlock7Value1) logError: (47) withParms: (recoveredBlock7Value5).
    ^false
].
    recoveredValue2 := (self) compiledMethodAt: (recoveredValue0) ifAbsent: (recoveredValue1).
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue2) description: (recoveredValue3).
    ^recoveredValue4
! !

"lib.ic method 0x2000f28c; bytecode file offset 0x4b2b8"
!ClassDescription methodsFor: 'recovered'!
classFormatByte
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isBytes.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) isPointers.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := 1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) isWords.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := 2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := 4.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20010498; bytecode file offset 0x4c4d4"
!ClassDescription methodsFor: 'recovered'!
comment: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) controller.
    recoveredValue1 := [
    ^false
].
    (self) modifyIn: (recoveredValue0) ifUnable: (recoveredValue1).
    recoveredValue2 := EmLibrary.
    recoveredValue3 := (recoveredValue2) default.
    recoveredValue4 := (recoveredValue3) operationsInterface.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (self) controller.
    recoveredValue7 := [
    ^false
].
    (recoveredValue4) classInheritedUserFieldAtPutInAppFor: (self) atName: ('comment') put: (recoveredValue5) application: (recoveredValue6) ifUnable: (recoveredValue7).
    ^true
! !

"lib.ic method 0x2001058c; bytecode file offset 0x4c5cc"
!ClassDescription methodsFor: 'recovered'!
addSelector: recoveredArg1 withMethod: recoveredArg2 categories: recoveredArg3 application: recoveredArg4
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
            recoveredStack2 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) addSelector: (recoveredStack1) withMethod: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) info.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) addSelectors: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 36.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) info.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) categorizeSelectors: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredArg4.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) applicationFor: (recoveredStack1) is: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x200111e4; bytecode file offset 0x4d230"
!ClassDescription methodsFor: 'recovered'!
allMethodNames
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := Set.
    recoveredValue1 := (self) methodDictionary.
    recoveredValue2 := (recoveredValue1) size.
    recoveredValue3 := (recoveredValue2) * (2).
    recoveredValue4 := (recoveredValue0) new: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := (self) applications.
    recoveredValue6 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Value0 recoveredBlock18Value1 recoveredBlock18Value2 recoveredBlock18Value3 recoveredBlock18Value4 recoveredBlock18Value5 |
    recoveredBlock18Value0 := recoveredLocal1.
    recoveredBlock18Value1 := recoveredBlock18Arg1.
    recoveredBlock18Value2 := (self) editionsRecordIn: (recoveredBlock18Value1).
    recoveredBlock18Value3 := (recoveredBlock18Value2) methodEditions.
    recoveredBlock18Value4 := (recoveredBlock18Value3) keys.
    recoveredBlock18Value5 := (recoveredBlock18Value0) addAll: (recoveredBlock18Value4).
    recoveredBlock18Value5
].
    (recoveredValue5) do: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (recoveredValue7) asSortedCollection.
    ^recoveredValue8
! !

"lib.ic method 0x20011248; bytecode file offset 0x4d2b8"
!ClassDescription methodsFor: 'recovered'!
publicSelectors
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (self) methodDictionary.
    recoveredValue2 := (recoveredValue1) size.
    recoveredValue3 := (recoveredValue0) new: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := (self) methodDictionary.
    recoveredValue5 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Stack0 recoveredBlock14Stack1 recoveredBlock14Stack2 recoveredBlock14Stack3 recoveredBlock14PC recoveredBlock14Step recoveredBlock14Done recoveredBlock14Result |
    recoveredBlock14Stack0 := self.
    recoveredBlock14PC := 20.
    recoveredBlock14Done := false.
    [recoveredBlock14Done not] whileTrue: [
        recoveredBlock14Step := recoveredBlock14PC.
        recoveredBlock14Step = 20 ifTrue: [
            recoveredBlock14Stack1 := nil.
            recoveredBlock14PC := 21.
        ].
        recoveredBlock14Step = 21 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Arg1.
            recoveredBlock14PC := 22.
        ].
        recoveredBlock14Step = 22 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) isPublic.
            recoveredBlock14PC := 24.
        ].
        recoveredBlock14Step = 24 ifTrue: [
            (recoveredBlock14Stack2) ifTrue: [recoveredBlock14PC := 28] ifFalse: [recoveredBlock14PC := 37].
        ].
        recoveredBlock14Step = 28 ifTrue: [
            recoveredBlock14PC := 29.
        ].
        recoveredBlock14Step = 29 ifTrue: [
            recoveredBlock14Stack1 := recoveredLocal1.
            recoveredBlock14PC := 32.
        ].
        recoveredBlock14Step = 32 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Arg1.
            recoveredBlock14PC := 33.
        ].
        recoveredBlock14Step = 33 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) selector.
            recoveredBlock14PC := 35.
        ].
        recoveredBlock14Step = 35 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) add: (recoveredBlock14Stack2).
            recoveredBlock14PC := 37.
        ].
        recoveredBlock14Step = 37 ifTrue: [
            recoveredBlock14Result := recoveredBlock14Stack1.
            recoveredBlock14Done := true.
        ].
    ].
    recoveredBlock14Result
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (recoveredValue6) asSortedCollection.
    ^recoveredValue7
! !

"lib.ic method 0x20011274; bytecode file offset 0x4d2b8"
!ClassDescription methodsFor: 'recovered'!
privateSelectors
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (self) methodDictionary.
    recoveredValue2 := (recoveredValue1) size.
    recoveredValue3 := (recoveredValue0) new: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := (self) methodDictionary.
    recoveredValue5 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Stack0 recoveredBlock14Stack1 recoveredBlock14Stack2 recoveredBlock14Stack3 recoveredBlock14PC recoveredBlock14Step recoveredBlock14Done recoveredBlock14Result |
    recoveredBlock14Stack0 := self.
    recoveredBlock14PC := 20.
    recoveredBlock14Done := false.
    [recoveredBlock14Done not] whileTrue: [
        recoveredBlock14Step := recoveredBlock14PC.
        recoveredBlock14Step = 20 ifTrue: [
            recoveredBlock14Stack1 := nil.
            recoveredBlock14PC := 21.
        ].
        recoveredBlock14Step = 21 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Arg1.
            recoveredBlock14PC := 22.
        ].
        recoveredBlock14Step = 22 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) isPrivate.
            recoveredBlock14PC := 24.
        ].
        recoveredBlock14Step = 24 ifTrue: [
            (recoveredBlock14Stack2) ifTrue: [recoveredBlock14PC := 28] ifFalse: [recoveredBlock14PC := 37].
        ].
        recoveredBlock14Step = 28 ifTrue: [
            recoveredBlock14PC := 29.
        ].
        recoveredBlock14Step = 29 ifTrue: [
            recoveredBlock14Stack1 := recoveredLocal1.
            recoveredBlock14PC := 32.
        ].
        recoveredBlock14Step = 32 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Arg1.
            recoveredBlock14PC := 33.
        ].
        recoveredBlock14Step = 33 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) selector.
            recoveredBlock14PC := 35.
        ].
        recoveredBlock14Step = 35 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) add: (recoveredBlock14Stack2).
            recoveredBlock14PC := 37.
        ].
        recoveredBlock14Step = 37 ifTrue: [
            recoveredBlock14Result := recoveredBlock14Stack1.
            recoveredBlock14Done := true.
        ].
    ].
    recoveredBlock14Result
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (recoveredValue6) asSortedCollection.
    ^recoveredValue7
! !

"lib.ic method 0x20011424; bytecode file offset 0x4d460"
!ClassDescription methodsFor: 'recovered'!
basicCompile: recoveredArg1 notifying: recoveredArg2 ifFail: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) compiler.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [:recoveredBlock9Arg1 | 
    | recoveredBlock9Value0 recoveredBlock9Value1 recoveredBlock9Value2 recoveredBlock9Value3 |
    recoveredBlock9Value0 := recoveredArg2.
    recoveredBlock9Value1 := recoveredBlock9Arg1.
    (recoveredBlock9Value0) compilerError: (recoveredBlock9Value1).
    recoveredBlock9Value2 := recoveredArg3.
    recoveredBlock9Value3 := (recoveredBlock9Value2) value.
    ^recoveredBlock9Value3
].
    recoveredValue3 := (recoveredValue0) compile: (recoveredValue1) inClass: (self) ifFail: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := EmLibraryPointer.
    recoveredValue6 := (recoveredValue5) void.
    (recoveredValue4) filePointer: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    ^recoveredValue7
! !

"lib.ic method 0x20013218; bytecode file offset 0x4f24c"
!ClassDescription methodsFor: 'recovered'!
containsCompileTimeConstant: recoveredArg1
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
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
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
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := '##('.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack4 := [
    ^false
].
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) indexOfSubCollection: (recoveredStack2) startingAt: (recoveredStack3) ifAbsent: (recoveredStack4).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) compiler.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack4 := [
    ^false
].
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) parse: (recoveredStack1) class: (recoveredStack2) errorHandler: (recoveredStack3) ifFail: (recoveredStack4).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) containsCompileTimeConstant.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2001356c; bytecode file offset 0x4f5b8"
!ClassDescription methodsFor: 'recovered'!
resaveMethod: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) compiledMethodAt: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) comment.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) isPrivate.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := (recoveredStack3) sourceString.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack4 := (recoveredStack4) application.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack5 := #().
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) install: (recoveredStack1) asPrivate: (recoveredStack2) withSource: (recoveredStack3) ifNewAddTo: (recoveredStack4) categorizeIn: (recoveredStack5).
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
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) selector.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) removeSelector: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredPC := 50.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) comment: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x200165b4; bytecode file offset 0x525f0"
!ClassDescription methodsFor: 'recovered'!
shadowEditionsOf: recoveredArg1
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
            recoveredStack0 := (recoveredStack0) applicationFor: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) shadowEditionsOf: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) applications.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := [:recoveredBlock37Arg1 | 
    | recoveredBlock37Value0 recoveredBlock37Value1 recoveredBlock37Value2 recoveredBlock37Value3 recoveredBlock37Value4 |
    recoveredBlock37Value0 := recoveredLocal1.
    recoveredBlock37Value1 := recoveredArg1.
    recoveredBlock37Value2 := recoveredBlock37Arg1.
    recoveredBlock37Value3 := (self) shadowEditionsOf: (recoveredBlock37Value1) in: (recoveredBlock37Value2).
    recoveredBlock37Value4 := (recoveredBlock37Value0) addAll: (recoveredBlock37Value3).
    recoveredBlock37Value4
].
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x200169ec; bytecode file offset 0x52a38"
!ClassDescription methodsFor: 'recovered'!
rebindVariableReferencesUsing: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodDictionary.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
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
            recoveredStack0 := EmImageSupport.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorReporter.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 184.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := (recoveredStack3) name.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) logError: (recoveredStack1) withParms: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodDictionary.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := [:recoveredBlock29Arg1 | 
    | recoveredBlock29Stack0 recoveredBlock29Stack1 recoveredBlock29Stack2 recoveredBlock29Stack3 recoveredBlock29Stack4 recoveredBlock29Stack5 recoveredBlock29PC recoveredBlock29Step recoveredBlock29Done recoveredBlock29Result |
    recoveredBlock29Stack0 := self.
    recoveredBlock29PC := 36.
    recoveredBlock29Done := false.
    [recoveredBlock29Done not] whileTrue: [
        recoveredBlock29Step := recoveredBlock29PC.
        recoveredBlock29Step = 36 ifTrue: [
            recoveredBlock29Stack1 := nil.
            recoveredBlock29PC := 37.
        ].
        recoveredBlock29Step = 37 ifTrue: [
            recoveredBlock29Stack2 := self.
            recoveredBlock29PC := 38.
        ].
        recoveredBlock29Step = 38 ifTrue: [
            recoveredBlock29Stack3 := recoveredBlock29Arg1.
            recoveredBlock29PC := 39.
        ].
        recoveredBlock29Step = 39 ifTrue: [
            recoveredBlock29Stack4 := recoveredArg1.
            recoveredBlock29PC := 42.
        ].
        recoveredBlock29Step = 42 ifTrue: [
            recoveredBlock29Stack2 := (recoveredBlock29Stack2) rebindVariablesIn: (recoveredBlock29Stack3) using: (recoveredBlock29Stack4).
            recoveredBlock29PC := 44.
        ].
        recoveredBlock29Step = 44 ifTrue: [
            recoveredBlock29Stack3 := recoveredBlock29Stack2.
            recoveredBlock29PC := 45.
        ].
        recoveredBlock29Step = 45 ifTrue: [
            recoveredLocal1 := recoveredBlock29Stack3.
            recoveredBlock29PC := 48.
        ].
        recoveredBlock29Step = 48 ifTrue: [
            recoveredBlock29Stack3 := recoveredBlock29Arg1.
            recoveredBlock29PC := 49.
        ].
        recoveredBlock29Step = 49 ifTrue: [
            (recoveredBlock29Stack2 == recoveredBlock29Stack3) ifTrue: [recoveredBlock29PC := 60] ifFalse: [recoveredBlock29PC := 52].
        ].
        recoveredBlock29Step = 52 ifTrue: [
            recoveredBlock29PC := 53.
        ].
        recoveredBlock29Step = 53 ifTrue: [
            recoveredBlock29Stack1 := self.
            recoveredBlock29PC := 54.
        ].
        recoveredBlock29Step = 54 ifTrue: [
            recoveredBlock29Stack1 := (recoveredBlock29Stack1) methodDictionary.
            recoveredBlock29PC := 55.
        ].
        recoveredBlock29Step = 55 ifTrue: [
            recoveredBlock29Stack2 := recoveredLocal1.
            recoveredBlock29PC := 58.
        ].
        recoveredBlock29Step = 58 ifTrue: [
            recoveredBlock29Stack1 := (recoveredBlock29Stack1) add: (recoveredBlock29Stack2).
            recoveredBlock29PC := 60.
        ].
        recoveredBlock29Step = 60 ifTrue: [
            recoveredBlock29Result := recoveredBlock29Stack1.
            recoveredBlock29Done := true.
        ].
    ].
    recoveredBlock29Result
].
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20017a1c; bytecode file offset 0x53a54"
!ClassDescription methodsFor: 'recovered'!
compileAsSame: recoveredArg1 notifying: recoveredArg2 ifNewAddTo: recoveredArg3 categorizeIn: recoveredArg4
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
            recoveredStack2 := recoveredArg2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := [
    ^nil
].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) basicCompile: (recoveredStack1) notifying: (recoveredStack2) ifFail: (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) selector.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) compiledMethodAt: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack2 ~~ nil) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredPC := 55.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := (recoveredStack2) isPrivate.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack5 := recoveredArg4.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) install: (recoveredStack1) asPrivate: (recoveredStack2) withSource: (recoveredStack3) ifNewAddTo: (recoveredStack4) categorizeIn: (recoveredStack5).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2001847c; bytecode file offset 0x544b8"
!ClassDescription methodsFor: 'recovered'!
copyAll: recoveredArg1 from: recoveredArg2 ifNewAddTo: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Stack0 recoveredBlock13Stack1 recoveredBlock13Stack2 recoveredBlock13Stack3 recoveredBlock13Stack4 recoveredBlock13Stack5 recoveredBlock13Stack6 recoveredBlock13PC recoveredBlock13Step recoveredBlock13Done recoveredBlock13Result |
    recoveredBlock13Stack0 := self.
    recoveredBlock13PC := 20.
    recoveredBlock13Done := false.
    [recoveredBlock13Done not] whileTrue: [
        recoveredBlock13Step := recoveredBlock13PC.
        recoveredBlock13Step = 20 ifTrue: [
            recoveredBlock13Stack1 := nil.
            recoveredBlock13PC := 21.
        ].
        recoveredBlock13Step = 21 ifTrue: [
            recoveredBlock13Stack2 := self.
            recoveredBlock13PC := 22.
        ].
        recoveredBlock13Step = 22 ifTrue: [
            recoveredBlock13Stack3 := recoveredBlock13Arg1.
            recoveredBlock13PC := 23.
        ].
        recoveredBlock13Step = 23 ifTrue: [
            recoveredBlock13Stack4 := recoveredArg2.
            recoveredBlock13PC := 26.
        ].
        recoveredBlock13Step = 26 ifTrue: [
            recoveredBlock13Stack5 := recoveredArg3.
            recoveredBlock13PC := 29.
        ].
        recoveredBlock13Step = 29 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) copy: (recoveredBlock13Stack3) from: (recoveredBlock13Stack4) ifNewAddTo: (recoveredBlock13Stack5).
            recoveredBlock13PC := 32.
        ].
        recoveredBlock13Step = 32 ifTrue: [
            (recoveredBlock13Stack2 ~~ nil) ifTrue: [recoveredBlock13PC := 63] ifFalse: [recoveredBlock13PC := 36].
        ].
        recoveredBlock13Step = 36 ifTrue: [
            recoveredBlock13PC := 37.
        ].
        recoveredBlock13Step = 37 ifTrue: [
            recoveredBlock13Stack1 := nil.
            recoveredBlock13PC := 38.
        ].
        recoveredBlock13Step = 38 ifTrue: [
            recoveredBlock13Stack2 := recoveredArg2.
            recoveredBlock13PC := 41.
        ].
        recoveredBlock13Step = 41 ifTrue: [
            recoveredBlock13Stack3 := recoveredBlock13Arg1.
            recoveredBlock13PC := 42.
        ].
        recoveredBlock13Step = 42 ifTrue: [
            recoveredBlock13Stack4 := [].
            recoveredBlock13PC := 44.
        ].
        recoveredBlock13Step = 44 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) compiledMethodAt: (recoveredBlock13Stack3) ifAbsent: (recoveredBlock13Stack4).
            recoveredBlock13PC := 46.
        ].
        recoveredBlock13Step = 46 ifTrue: [
            recoveredBlock13Stack3 := recoveredBlock13Stack2.
            recoveredBlock13PC := 47.
        ].
        recoveredBlock13Step = 47 ifTrue: [
            recoveredLocal1 := recoveredBlock13Stack3.
            recoveredBlock13PC := 50.
        ].
        recoveredBlock13Step = 50 ifTrue: [
            (recoveredBlock13Stack2 == nil) ifTrue: [recoveredBlock13PC := 63] ifFalse: [recoveredBlock13PC := 54].
        ].
        recoveredBlock13Step = 54 ifTrue: [
            recoveredBlock13PC := 55.
        ].
        recoveredBlock13Step = 55 ifTrue: [
            recoveredBlock13Stack1 := recoveredLocal2.
            recoveredBlock13PC := 58.
        ].
        recoveredBlock13Step = 58 ifTrue: [
            recoveredBlock13Stack2 := recoveredLocal1.
            recoveredBlock13PC := 61.
        ].
        recoveredBlock13Step = 61 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) add: (recoveredBlock13Stack2).
            recoveredBlock13PC := 63.
        ].
        recoveredBlock13Step = 63 ifTrue: [
            recoveredBlock13Result := recoveredBlock13Stack1.
            recoveredBlock13Done := true.
        ].
    ].
    recoveredBlock13Result
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal2.
    ^recoveredValue4
! !

"lib.ic method 0x200184e8; bytecode file offset 0x54560"
!ClassDescription methodsFor: 'recovered'!
privateSelectorsFor: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) methodNamesIn: (recoveredValue0).
    recoveredLocal3 := recoveredValue1.
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := recoveredLocal3.
    recoveredValue4 := (recoveredValue3) size.
    recoveredValue5 := (recoveredValue2) new: (recoveredValue4).
    recoveredLocal2 := recoveredValue5.
    recoveredValue6 := recoveredLocal3.
    recoveredValue7 := [:recoveredBlock24Arg1 | 
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
            recoveredBlock24Stack2 := [].
            recoveredBlock24PC := 33.
        ].
        recoveredBlock24Step = 33 ifTrue: [
            recoveredBlock24Stack0 := (recoveredBlock24Stack0) compiledMethodAt: (recoveredBlock24Stack1) ifAbsent: (recoveredBlock24Stack2).
            recoveredBlock24PC := 35.
        ].
        recoveredBlock24Step = 35 ifTrue: [
            recoveredLocal1 := recoveredBlock24Stack0.
            recoveredBlock24PC := 38.
        ].
        recoveredBlock24Step = 38 ifTrue: [
            recoveredBlock24Stack0 := nil.
            recoveredBlock24PC := 39.
        ].
        recoveredBlock24Step = 39 ifTrue: [
            recoveredBlock24Stack1 := recoveredLocal1.
            recoveredBlock24PC := 42.
        ].
        recoveredBlock24Step = 42 ifTrue: [
            (recoveredBlock24Stack1 == nil) ifTrue: [recoveredBlock24PC := 61] ifFalse: [recoveredBlock24PC := 46].
        ].
        recoveredBlock24Step = 46 ifTrue: [
            recoveredBlock24Stack1 := recoveredLocal1.
            recoveredBlock24PC := 49.
        ].
        recoveredBlock24Step = 49 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) isPrivate.
            recoveredBlock24PC := 51.
        ].
        recoveredBlock24Step = 51 ifTrue: [
            (recoveredBlock24Stack1) ifTrue: [recoveredBlock24PC := 54] ifFalse: [recoveredBlock24PC := 61].
        ].
        recoveredBlock24Step = 54 ifTrue: [
            recoveredBlock24PC := 55.
        ].
        recoveredBlock24Step = 55 ifTrue: [
            recoveredBlock24Stack0 := recoveredLocal2.
            recoveredBlock24PC := 58.
        ].
        recoveredBlock24Step = 58 ifTrue: [
            recoveredBlock24Stack1 := recoveredBlock24Arg1.
            recoveredBlock24PC := 59.
        ].
        recoveredBlock24Step = 59 ifTrue: [
            recoveredBlock24Stack0 := (recoveredBlock24Stack0) add: (recoveredBlock24Stack1).
            recoveredBlock24PC := 61.
        ].
        recoveredBlock24Step = 61 ifTrue: [
            recoveredBlock24Result := recoveredBlock24Stack0.
            recoveredBlock24Done := true.
        ].
    ].
    recoveredBlock24Result
].
    (recoveredValue6) do: (recoveredValue7).
    recoveredValue8 := recoveredLocal2.
    recoveredValue9 := (recoveredValue8) asSortedCollection.
    ^recoveredValue9
! !

"lib.ic method 0x20018518; bytecode file offset 0x54560"
!ClassDescription methodsFor: 'recovered'!
publicSelectorsFor: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) methodNamesIn: (recoveredValue0).
    recoveredLocal3 := recoveredValue1.
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := recoveredLocal3.
    recoveredValue4 := (recoveredValue3) size.
    recoveredValue5 := (recoveredValue2) new: (recoveredValue4).
    recoveredLocal2 := recoveredValue5.
    recoveredValue6 := recoveredLocal3.
    recoveredValue7 := [:recoveredBlock24Arg1 | 
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
            recoveredBlock24Stack2 := [].
            recoveredBlock24PC := 33.
        ].
        recoveredBlock24Step = 33 ifTrue: [
            recoveredBlock24Stack0 := (recoveredBlock24Stack0) compiledMethodAt: (recoveredBlock24Stack1) ifAbsent: (recoveredBlock24Stack2).
            recoveredBlock24PC := 35.
        ].
        recoveredBlock24Step = 35 ifTrue: [
            recoveredLocal1 := recoveredBlock24Stack0.
            recoveredBlock24PC := 38.
        ].
        recoveredBlock24Step = 38 ifTrue: [
            recoveredBlock24Stack0 := nil.
            recoveredBlock24PC := 39.
        ].
        recoveredBlock24Step = 39 ifTrue: [
            recoveredBlock24Stack1 := recoveredLocal1.
            recoveredBlock24PC := 42.
        ].
        recoveredBlock24Step = 42 ifTrue: [
            (recoveredBlock24Stack1 == nil) ifTrue: [recoveredBlock24PC := 61] ifFalse: [recoveredBlock24PC := 46].
        ].
        recoveredBlock24Step = 46 ifTrue: [
            recoveredBlock24Stack1 := recoveredLocal1.
            recoveredBlock24PC := 49.
        ].
        recoveredBlock24Step = 49 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) isPublic.
            recoveredBlock24PC := 51.
        ].
        recoveredBlock24Step = 51 ifTrue: [
            (recoveredBlock24Stack1) ifTrue: [recoveredBlock24PC := 54] ifFalse: [recoveredBlock24PC := 61].
        ].
        recoveredBlock24Step = 54 ifTrue: [
            recoveredBlock24PC := 55.
        ].
        recoveredBlock24Step = 55 ifTrue: [
            recoveredBlock24Stack0 := recoveredLocal2.
            recoveredBlock24PC := 58.
        ].
        recoveredBlock24Step = 58 ifTrue: [
            recoveredBlock24Stack1 := recoveredBlock24Arg1.
            recoveredBlock24PC := 59.
        ].
        recoveredBlock24Step = 59 ifTrue: [
            recoveredBlock24Stack0 := (recoveredBlock24Stack0) add: (recoveredBlock24Stack1).
            recoveredBlock24PC := 61.
        ].
        recoveredBlock24Step = 61 ifTrue: [
            recoveredBlock24Result := recoveredBlock24Stack0.
            recoveredBlock24Done := true.
        ].
    ].
    recoveredBlock24Result
].
    (recoveredValue6) do: (recoveredValue7).
    recoveredValue8 := recoveredLocal2.
    recoveredValue9 := (recoveredValue8) asSortedCollection.
    ^recoveredValue9
! !

"lib.ic method 0x2001bc7c; bytecode file offset 0x57cd4"
!ClassDescription methodsFor: 'recovered'!
privateMethod: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 recoveredBlock7Value5 |
    recoveredBlock7Value0 := EmImageSupport.
    recoveredBlock7Value1 := (recoveredBlock7Value0) errorReporter.
    recoveredBlock7Value2 := Array.
    recoveredBlock7Value3 := recoveredArg1.
    recoveredBlock7Value4 := (self) name.
    recoveredBlock7Value5 := (recoveredBlock7Value2) with: (recoveredBlock7Value3) with: (recoveredBlock7Value4).
    (recoveredBlock7Value1) logError: (50) withParms: (recoveredBlock7Value5).
    ^false
].
    recoveredValue2 := (self) compiledMethodAt: (recoveredValue0) ifAbsent: (recoveredValue1).
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (self) applicationFor: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := [
    ^false
].
    (self) modifyIn: (recoveredValue5) ifUnable: (recoveredValue6).
    recoveredValue7 := EmLibrary.
    recoveredValue8 := (recoveredValue7) default.
    recoveredValue9 := (recoveredValue8) operationsInterface.
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := recoveredLocal2.
    recoveredValue12 := (recoveredValue11) private.
    recoveredValue13 := [
    ^false
].
    (recoveredValue9) applicationReleaseSelectorInClassFor: (recoveredValue10) compiledMethod: (recoveredValue12) ifUnable: (recoveredValue13).
    ^true
! !

"lib.ic method 0x2001bd14; bytecode file offset 0x57d6c"
!ClassDescription methodsFor: 'recovered'!
publicMethod: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 recoveredBlock7Value5 |
    recoveredBlock7Value0 := EmImageSupport.
    recoveredBlock7Value1 := (recoveredBlock7Value0) errorReporter.
    recoveredBlock7Value2 := Array.
    recoveredBlock7Value3 := recoveredArg1.
    recoveredBlock7Value4 := (self) name.
    recoveredBlock7Value5 := (recoveredBlock7Value2) with: (recoveredBlock7Value3) with: (recoveredBlock7Value4).
    (recoveredBlock7Value1) logError: (51) withParms: (recoveredBlock7Value5).
    ^false
].
    recoveredValue2 := (self) compiledMethodAt: (recoveredValue0) ifAbsent: (recoveredValue1).
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (self) applicationFor: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := [
    ^false
].
    (self) modifyIn: (recoveredValue5) ifUnable: (recoveredValue6).
    recoveredValue7 := EmLibrary.
    recoveredValue8 := (recoveredValue7) default.
    recoveredValue9 := (recoveredValue8) operationsInterface.
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := recoveredLocal2.
    recoveredValue12 := (recoveredValue11) public.
    recoveredValue13 := [
    ^false
].
    (recoveredValue9) applicationReleaseSelectorInClassFor: (recoveredValue10) compiledMethod: (recoveredValue12) ifUnable: (recoveredValue13).
    ^true
! !

"lib.ic method 0x2001c384; bytecode file offset 0x583dc"
!ClassDescription methodsFor: 'recovered'!
regenerate: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) sourceString.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 37] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := EmImageSupport.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorReporter.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := 70.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := Array.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack4 := (recoveredStack4) methodSignature.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) logError: (recoveredStack2) withParms: (recoveredStack3).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := EsCompiler.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock39Value0 recoveredBlock39Value1 recoveredBlock39Value2 recoveredBlock39Value3 |
    recoveredBlock39Value0 := recoveredLocal2.
    recoveredBlock39Value1 := Transcript.
    recoveredBlock39Value2 := [].
    recoveredBlock39Value3 := (self) basicCompile: (recoveredBlock39Value0) notifying: (recoveredBlock39Value1) ifFail: (recoveredBlock39Value2).
    recoveredBlock39Value3
].
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) useWarningLevel0While: (recoveredStack2).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 77] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack1) doesNotCompile.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack1) replacing: (recoveredStack2).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"lib.ic method 0x2001de64; bytecode file offset 0x59ed4"
!ClassDescription methodsFor: 'recovered'!
addSelectors: recoveredArg1 toCategories: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
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
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := [:recoveredBlock17Arg1 | 
    | recoveredBlock17Value0 recoveredBlock17Value1 |
    recoveredBlock17Value0 := recoveredBlock17Arg1.
    recoveredBlock17Value1 := (self) includesSelector: (recoveredBlock17Value0).
    recoveredBlock17Value1
].
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) applicationsForSelectors: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := [:recoveredBlock46Arg1 | 
    | recoveredBlock46Value0 recoveredBlock46Value1 recoveredBlock46Value2 |
    recoveredBlock46Value0 := recoveredBlock46Arg1.
    recoveredBlock46Value1 := [
    ^false
].
    recoveredBlock46Value2 := (self) currentUserCanModifyIn: (recoveredBlock46Value0) ifUnable: (recoveredBlock46Value1).
    recoveredBlock46Value2
].
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) info.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0) addSelectors: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := [:recoveredBlock81Arg1 | 
    | recoveredBlock81Value0 recoveredBlock81Value1 recoveredBlock81Value2 |
    recoveredBlock81Value0 := recoveredBlock81Arg1.
    recoveredBlock81Value1 := [
    ^false
].
    recoveredBlock81Value2 := (self) updateCategoryDictionaryRecordIn: (recoveredBlock81Value0) ifUnable: (recoveredBlock81Value1).
    recoveredBlock81Value2
].
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2001de90; bytecode file offset 0x59ed4"
!ClassDescription methodsFor: 'recovered'!
removeSelectors: recoveredArg1 fromCategories: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
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
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := [:recoveredBlock17Arg1 | 
    | recoveredBlock17Value0 recoveredBlock17Value1 |
    recoveredBlock17Value0 := recoveredBlock17Arg1.
    recoveredBlock17Value1 := (self) includesSelector: (recoveredBlock17Value0).
    recoveredBlock17Value1
].
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) applicationsForSelectors: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := [:recoveredBlock46Arg1 | 
    | recoveredBlock46Value0 recoveredBlock46Value1 recoveredBlock46Value2 |
    recoveredBlock46Value0 := recoveredBlock46Arg1.
    recoveredBlock46Value1 := [
    ^false
].
    recoveredBlock46Value2 := (self) currentUserCanModifyIn: (recoveredBlock46Value0) ifUnable: (recoveredBlock46Value1).
    recoveredBlock46Value2
].
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) info.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0) removeSelectors: (recoveredStack1) fromCategories: (recoveredStack2).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := [:recoveredBlock81Arg1 | 
    | recoveredBlock81Value0 recoveredBlock81Value1 recoveredBlock81Value2 |
    recoveredBlock81Value0 := recoveredBlock81Arg1.
    recoveredBlock81Value1 := [
    ^false
].
    recoveredBlock81Value2 := (self) updateCategoryDictionaryRecordIn: (recoveredBlock81Value0) ifUnable: (recoveredBlock81Value1).
    recoveredBlock81Value2
].
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2002004c; bytecode file offset 0x5c0c4"
!ClassDescription methodsFor: 'recovered'!
updateCategoryDictionaryRecordIn: recoveredArg1 ifUnable: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
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
            recoveredStack0 := (recoveredStack0) info.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodNamesIn: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) categoriesForSelectors: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := WriteStream.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := String.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := 100.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) on: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := [:recoveredBlock48Arg1 :recoveredBlock48Arg2 | 
    | recoveredBlock48Value0 recoveredBlock48Value1 recoveredBlock48Value2 recoveredBlock48Value3 recoveredBlock48Value4 recoveredBlock48Value5 recoveredBlock48Value6 recoveredBlock48Value7 recoveredBlock48Value8 recoveredBlock48Value9 recoveredBlock48Value10 |
    recoveredBlock48Value0 := recoveredLocal1.
    (recoveredBlock48Value0) reset.
    recoveredBlock48Value1 := recoveredBlock48Arg2.
    recoveredBlock48Value2 := [:recoveredBlock48Block60Arg1 | 
    | recoveredBlock48Block60Value0 recoveredBlock48Block60Value1 recoveredBlock48Block60Value2 recoveredBlock48Block60Value3 |
    recoveredBlock48Block60Value0 := recoveredLocal1.
    recoveredBlock48Block60Value1 := recoveredBlock48Block60Value0.
    recoveredBlock48Block60Value2 := recoveredBlock48Block60Arg1.
    (recoveredBlock48Block60Value1) nextPutAll: (recoveredBlock48Block60Value2).
    recoveredBlock48Block60Value3 := (recoveredBlock48Block60Value0) space.
    recoveredBlock48Block60Value3
].
    (recoveredBlock48Value1) do: (recoveredBlock48Value2).
    recoveredBlock48Value3 := recoveredLocal3.
    recoveredBlock48Value4 := recoveredBlock48Arg1.
    recoveredBlock48Value5 := recoveredLocal1.
    recoveredBlock48Value6 := recoveredLocal1.
    recoveredBlock48Value7 := (recoveredBlock48Value6) position.
    recoveredBlock48Value8 := (recoveredBlock48Value7) + (-1).
    recoveredBlock48Value9 := (recoveredBlock48Value5) copyFrom: (1) to: (recoveredBlock48Value8).
    recoveredBlock48Value10 := (recoveredBlock48Value3) at: (recoveredBlock48Value4) put: (recoveredBlock48Value9).
    recoveredBlock48Value10
].
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack0) keysAndValuesDo: (recoveredStack1).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := EmLibrary.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := (recoveredStack0) operationsInterface.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack0) applicationUpdateClassCategoryDictionaryFor: (recoveredStack1) class: (recoveredStack2) dictionary: (recoveredStack3) ifUnable: (recoveredStack4).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20020438; bytecode file offset 0x5c48c"
!ClassDescription methodsFor: 'recovered'!
copy: recoveredArg1 from: recoveredArg2 ifNewAddTo: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := [
    ^nil
].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) compiledMethodAt: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := EsCompiler.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock25Stack0 recoveredBlock25Stack1 recoveredBlock25Stack2 recoveredBlock25Stack3 recoveredBlock25Stack4 recoveredBlock25Stack5 recoveredBlock25Stack6 recoveredBlock25Stack7 recoveredBlock25PC recoveredBlock25Step recoveredBlock25Done recoveredBlock25Result |
    recoveredBlock25Stack0 := self.
    recoveredBlock25PC := 32.
    recoveredBlock25Done := false.
    [recoveredBlock25Done not] whileTrue: [
        recoveredBlock25Step := recoveredBlock25PC.
        recoveredBlock25Step = 32 ifTrue: [
            recoveredBlock25Stack1 := recoveredLocal2.
            recoveredBlock25PC := 35.
        ].
        recoveredBlock25Step = 35 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) isPrivate.
            recoveredBlock25PC := 36.
        ].
        recoveredBlock25Step = 36 ifTrue: [
            (recoveredBlock25Stack1) ifTrue: [recoveredBlock25PC := 40] ifFalse: [recoveredBlock25PC := 64].
        ].
        recoveredBlock25Step = 40 ifTrue: [
            recoveredBlock25Stack1 := self.
            recoveredBlock25PC := 41.
        ].
        recoveredBlock25Step = 41 ifTrue: [
            recoveredBlock25Stack2 := recoveredLocal2.
            recoveredBlock25PC := 44.
        ].
        recoveredBlock25Step = 44 ifTrue: [
            recoveredBlock25Stack2 := (recoveredBlock25Stack2) sourceString.
            recoveredBlock25PC := 45.
        ].
        recoveredBlock25Step = 45 ifTrue: [
            recoveredBlock25Stack3 := Transcript.
            recoveredBlock25PC := 47.
        ].
        recoveredBlock25Step = 47 ifTrue: [
            recoveredBlock25Stack4 := recoveredArg3.
            recoveredBlock25PC := 50.
        ].
        recoveredBlock25Step = 50 ifTrue: [
            recoveredBlock25Stack5 := recoveredArg2.
            recoveredBlock25PC := 53.
        ].
        recoveredBlock25Step = 53 ifTrue: [
            recoveredBlock25Stack6 := recoveredArg1.
            recoveredBlock25PC := 56.
        ].
        recoveredBlock25Step = 56 ifTrue: [
            recoveredBlock25Stack5 := (recoveredBlock25Stack5) categoriesFor: (recoveredBlock25Stack6).
            recoveredBlock25PC := 58.
        ].
        recoveredBlock25Step = 58 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) compileAsPrivate: (recoveredBlock25Stack2) notifying: (recoveredBlock25Stack3) ifNewAddTo: (recoveredBlock25Stack4) categorizeIn: (recoveredBlock25Stack5).
            recoveredBlock25PC := 61.
        ].
        recoveredBlock25Step = 61 ifTrue: [
            recoveredBlock25PC := 85.
        ].
        recoveredBlock25Step = 64 ifTrue: [
            recoveredBlock25Stack1 := self.
            recoveredBlock25PC := 65.
        ].
        recoveredBlock25Step = 65 ifTrue: [
            recoveredBlock25Stack2 := recoveredLocal2.
            recoveredBlock25PC := 68.
        ].
        recoveredBlock25Step = 68 ifTrue: [
            recoveredBlock25Stack2 := (recoveredBlock25Stack2) sourceString.
            recoveredBlock25PC := 69.
        ].
        recoveredBlock25Step = 69 ifTrue: [
            recoveredBlock25Stack3 := Transcript.
            recoveredBlock25PC := 71.
        ].
        recoveredBlock25Step = 71 ifTrue: [
            recoveredBlock25Stack4 := recoveredArg3.
            recoveredBlock25PC := 74.
        ].
        recoveredBlock25Step = 74 ifTrue: [
            recoveredBlock25Stack5 := recoveredArg2.
            recoveredBlock25PC := 77.
        ].
        recoveredBlock25Step = 77 ifTrue: [
            recoveredBlock25Stack6 := recoveredArg1.
            recoveredBlock25PC := 80.
        ].
        recoveredBlock25Step = 80 ifTrue: [
            recoveredBlock25Stack5 := (recoveredBlock25Stack5) categoriesFor: (recoveredBlock25Stack6).
            recoveredBlock25PC := 82.
        ].
        recoveredBlock25Step = 82 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) compile: (recoveredBlock25Stack2) notifying: (recoveredBlock25Stack3) ifNewAddTo: (recoveredBlock25Stack4) categorizeIn: (recoveredBlock25Stack5).
            recoveredBlock25PC := 85.
        ].
        recoveredBlock25Step = 85 ifTrue: [
            recoveredBlock25Result := recoveredBlock25Stack1.
            recoveredBlock25Done := true.
        ].
    ].
    recoveredBlock25Result
].
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := (recoveredStack1) useWarningLevel0While: (recoveredStack2).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack2 := [:recoveredBlock105Arg1 | 
    | recoveredBlock105Value0 recoveredBlock105Value1 recoveredBlock105Value2 recoveredBlock105Value3 |
    recoveredBlock105Value0 := recoveredBlock105Arg1.
    recoveredBlock105Value1 := recoveredLocal2.
    recoveredBlock105Value2 := (recoveredBlock105Value1) record.
    recoveredBlock105Value3 := (recoveredBlock105Value0) copyInheritedUserFieldsFrom: (recoveredBlock105Value2).
    recoveredBlock105Value3
].
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack1) updateRecordWith: (recoveredStack2).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20020924; bytecode file offset 0x5c988"
!ClassDescription methodsFor: 'recovered'!
regenerateMethodsFrom: recoveredArg1 using: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := MethodDictionary.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) methodDictionary.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodDictionary.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 120] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) allInstVarNames.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := (recoveredStack2) allInstVarNames.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := EmImageSupport.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorReporter.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := 184.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := Array.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack4 := (recoveredStack4) name.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) logError: (recoveredStack2) withParms: (recoveredStack3).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodDictionary.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := [:recoveredBlock57Arg1 | 
    | recoveredBlock57Value0 recoveredBlock57Value1 recoveredBlock57Value2 recoveredBlock57Value3 recoveredBlock57Value4 |
    recoveredBlock57Value0 := recoveredLocal1.
    recoveredBlock57Value1 := recoveredBlock57Arg1.
    recoveredBlock57Value2 := recoveredArg2.
    recoveredBlock57Value3 := (self) rebindVariablesIn: (recoveredBlock57Value1) using: (recoveredBlock57Value2).
    recoveredBlock57Value4 := (recoveredBlock57Value0) add: (recoveredBlock57Value3).
    recoveredBlock57Value4
].
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredPC := 120.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := EmImageSupport.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorReporter.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := 46.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack3 := Array.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack4 := (recoveredStack4) name.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack3 := (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack1) logError: (recoveredStack2) withParms: (recoveredStack3).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodDictionary.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := [:recoveredBlock101Arg1 | 
    | recoveredBlock101Value0 recoveredBlock101Value1 recoveredBlock101Value2 recoveredBlock101Value3 |
    recoveredBlock101Value0 := recoveredLocal1.
    recoveredBlock101Value1 := recoveredBlock101Arg1.
    recoveredBlock101Value2 := (self) regenerate: (recoveredBlock101Value1).
    recoveredBlock101Value3 := (recoveredBlock101Value0) add: (recoveredBlock101Value2).
    recoveredBlock101Value3
].
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            (recoveredStack0) setMethodDictionary: (recoveredStack1).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20022e68; bytecode file offset 0x5eed4"
!ClassDescription methodsFor: 'recovered'!
categoryDictionaryRecord
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) applications.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) categoryDictionaryRecordFor: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 92.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := Dictionary.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := [:recoveredBlock38Arg1 | 
    | recoveredBlock38Value0 recoveredBlock38Value1 recoveredBlock38Value2 recoveredBlock38Value3 |
    recoveredBlock38Value0 := recoveredBlock38Arg1.
    recoveredBlock38Value1 := (self) categoryDictionaryRecordFor: (recoveredBlock38Value0).
    recoveredBlock38Value2 := [:recoveredBlock38Block46Arg1 | 
    | recoveredBlock38Block46Stack0 recoveredBlock38Block46Stack1 recoveredBlock38Block46Stack2 recoveredBlock38Block46Stack3 recoveredBlock38Block46PC recoveredBlock38Block46Step recoveredBlock38Block46Done recoveredBlock38Block46Result |
    recoveredBlock38Block46Stack0 := nil.
    recoveredBlock38Block46PC := 52.
    recoveredBlock38Block46Done := false.
    [recoveredBlock38Block46Done not] whileTrue: [
        recoveredBlock38Block46Step := recoveredBlock38Block46PC.
        recoveredBlock38Block46Step = 52 ifTrue: [
            recoveredBlock38Block46Stack1 := recoveredLocal2.
            recoveredBlock38Block46PC := 55.
        ].
        recoveredBlock38Block46Step = 55 ifTrue: [
            recoveredBlock38Block46Stack2 := recoveredBlock38Block46Arg1.
            recoveredBlock38Block46PC := 56.
        ].
        recoveredBlock38Block46Step = 56 ifTrue: [
            recoveredBlock38Block46Stack2 := (recoveredBlock38Block46Stack2) key.
            recoveredBlock38Block46PC := 58.
        ].
        recoveredBlock38Block46Step = 58 ifTrue: [
            recoveredBlock38Block46Stack1 := (recoveredBlock38Block46Stack1) includesKey: (recoveredBlock38Block46Stack2).
            recoveredBlock38Block46PC := 60.
        ].
        recoveredBlock38Block46Step = 60 ifTrue: [
            (recoveredBlock38Block46Stack1) ifTrue: [recoveredBlock38Block46PC := 64] ifFalse: [recoveredBlock38Block46PC := 80].
        ].
        recoveredBlock38Block46Step = 64 ifTrue: [
            recoveredBlock38Block46Stack1 := recoveredLocal2.
            recoveredBlock38Block46PC := 67.
        ].
        recoveredBlock38Block46Step = 67 ifTrue: [
            recoveredBlock38Block46Stack2 := recoveredBlock38Block46Arg1.
            recoveredBlock38Block46PC := 68.
        ].
        recoveredBlock38Block46Step = 68 ifTrue: [
            recoveredBlock38Block46Stack2 := (recoveredBlock38Block46Stack2) key.
            recoveredBlock38Block46PC := 70.
        ].
        recoveredBlock38Block46Step = 70 ifTrue: [
            recoveredBlock38Block46Stack1 := (recoveredBlock38Block46Stack1) at: (recoveredBlock38Block46Stack2).
            recoveredBlock38Block46PC := 72.
        ].
        recoveredBlock38Block46Step = 72 ifTrue: [
            recoveredBlock38Block46Stack2 := recoveredBlock38Block46Arg1.
            recoveredBlock38Block46PC := 73.
        ].
        recoveredBlock38Block46Step = 73 ifTrue: [
            recoveredBlock38Block46Stack2 := (recoveredBlock38Block46Stack2) value.
            recoveredBlock38Block46PC := 75.
        ].
        recoveredBlock38Block46Step = 75 ifTrue: [
            recoveredBlock38Block46Stack1 := (recoveredBlock38Block46Stack1) addAll: (recoveredBlock38Block46Stack2).
            recoveredBlock38Block46PC := 77.
        ].
        recoveredBlock38Block46Step = 77 ifTrue: [
            recoveredBlock38Block46PC := 86.
        ].
        recoveredBlock38Block46Step = 80 ifTrue: [
            recoveredBlock38Block46Stack1 := recoveredLocal2.
            recoveredBlock38Block46PC := 83.
        ].
        recoveredBlock38Block46Step = 83 ifTrue: [
            recoveredBlock38Block46Stack2 := recoveredBlock38Block46Arg1.
            recoveredBlock38Block46PC := 84.
        ].
        recoveredBlock38Block46Step = 84 ifTrue: [
            recoveredBlock38Block46Stack1 := (recoveredBlock38Block46Stack1) add: (recoveredBlock38Block46Stack2).
            recoveredBlock38Block46PC := 86.
        ].
        recoveredBlock38Block46Step = 86 ifTrue: [
            recoveredBlock38Block46Result := recoveredBlock38Block46Stack1.
            recoveredBlock38Block46Done := true.
        ].
    ].
    recoveredBlock38Block46Result
].
    recoveredBlock38Value3 := (recoveredBlock38Value1) associationsDo: (recoveredBlock38Value2).
    recoveredBlock38Value3
].
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 140].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectors.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := [:recoveredBlock109Arg1 | 
    | recoveredBlock109Value0 recoveredBlock109Value1 recoveredBlock109Value2 recoveredBlock109Value3 recoveredBlock109Value4 recoveredBlock109Value5 |
    recoveredBlock109Value0 := recoveredBlock109Arg1.
    recoveredBlock109Value1 := recoveredBlock109Arg1.
    recoveredBlock109Value2 := (recoveredBlock109Value1) value.
    recoveredBlock109Value3 := [:recoveredBlock109Block120Arg1 | 
    | recoveredBlock109Block120Value0 recoveredBlock109Block120Value1 recoveredBlock109Block120Value2 |
    recoveredBlock109Block120Value0 := recoveredLocal1.
    recoveredBlock109Block120Value1 := recoveredBlock109Block120Arg1.
    recoveredBlock109Block120Value2 := (recoveredBlock109Block120Value0) includes: (recoveredBlock109Block120Value1).
    recoveredBlock109Block120Value2
].
    recoveredBlock109Value4 := (recoveredBlock109Value2) select: (recoveredBlock109Value3).
    recoveredBlock109Value5 := (recoveredBlock109Value0) value: (recoveredBlock109Value4).
    recoveredBlock109Value5
].
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            (recoveredStack0) associationsDo: (recoveredStack1).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2002d538; bytecode file offset 0x695e8"
!ClassDescription methodsFor: 'recovered'!
moveSelector: recoveredArg1 to: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [
    ^false
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) compiledMethodAt: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) application.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) compiledCorrectly.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := EmImageSupport.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorReporter.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := 202.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack4 := (recoveredStack4) name.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0) reportError: (recoveredStack1) withParms: (recoveredStack2).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) sourceString.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) record.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := (recoveredStack0) isPrivate.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) info.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSelectorCategorized: (recoveredStack1).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := (recoveredStack0) filePointer.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 186] ifFalse: [recoveredPC := 118].
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack2 := [
    ^false
].
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack0) modifyIn: (recoveredStack1) ifUnable: (recoveredStack2).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := EmLibrary.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := (recoveredStack0) operationsInterface.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack4 := [
    ^false
].
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            (recoveredStack0) applicationRemoveSelectorFromClassFor: (recoveredStack1) selector: (recoveredStack2) class: (recoveredStack3) ifUnable: (recoveredStack4).
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack0 := EmNamespaceSupport.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack0 := (recoveredStack0) declarationPattern.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack0 := (recoveredStack0) match: (recoveredStack1).
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 170] ifFalse: [recoveredPC := 179].
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := EmNamespaceSupport.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack1 := (recoveredStack1) rootApplication.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            (recoveredStack0) noteDamageTo: (recoveredStack1).
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            (recoveredStack0) applicationFor: (recoveredStack1) is: (recoveredStack2).
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack1 := EmLibraryPointer.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack1 := (recoveredStack1) void.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            (recoveredStack0) filePointer: (recoveredStack1).
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack5 := #().
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack0 := (recoveredStack0) install: (recoveredStack1) asPrivate: (recoveredStack2) withSource: (recoveredStack3) ifNewAddTo: (recoveredStack4) categorizeIn: (recoveredStack5).
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 248] ifFalse: [recoveredPC := 222].
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            (recoveredStack0) filePointer: (recoveredStack1).
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack3 := (recoveredStack3) categoriesFor: (recoveredStack4).
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            (recoveredStack0) releaseMethod: (recoveredStack1) in: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack1 := [:recoveredBlock251Arg1 | 
    | recoveredBlock251Value0 recoveredBlock251Value1 recoveredBlock251Value2 |
    recoveredBlock251Value0 := recoveredBlock251Arg1.
    recoveredBlock251Value1 := recoveredLocal5.
    recoveredBlock251Value2 := (recoveredBlock251Value0) copyInheritedUserFieldsFrom: (recoveredBlock251Value1).
    recoveredBlock251Value2
].
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            (recoveredStack0) updateRecordWith: (recoveredStack1).
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 274] ifFalse: [recoveredPC := 308].
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 294] ifFalse: [recoveredPC := 280].
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack2 := [
    ^false
].
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            (recoveredStack0) updateCategoryDictionaryRecordIn: (recoveredStack1) ifUnable: (recoveredStack2).
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack2 := [
    ^false
].
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            (recoveredStack0) updateCategoryDictionaryRecordIn: (recoveredStack1) ifUnable: (recoveredStack2).
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2002e470; bytecode file offset 0x6a54c"
!ClassDescription methodsFor: 'recovered'!
removeSelector: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) applicationFor: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 142] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock20Value0 recoveredBlock20Value1 |
    recoveredBlock20Value0 := recoveredArg2.
    recoveredBlock20Value1 := (recoveredBlock20Value0) value.
    ^recoveredBlock20Value1
].
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) modifyIn: (recoveredStack1) ifUnable: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := EmLibrary.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) operationsInterface.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack4 := [
    ^false
].
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) applicationRemoveSelectorFromClassFor: (recoveredStack1) selector: (recoveredStack2) class: (recoveredStack3) ifUnable: (recoveredStack4).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) applicationFor: (recoveredStack1) is: (recoveredStack2).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) info.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := (recoveredStack0) deleteSelectors: (recoveredStack1).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 99].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock86Value0 recoveredBlock86Value1 |
    recoveredBlock86Value0 := recoveredArg2.
    recoveredBlock86Value1 := (recoveredBlock86Value0) value.
    ^recoveredBlock86Value1
].
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack0) updateCategoryDictionaryRecordIn: (recoveredStack1) ifUnable: (recoveredStack2).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := EmNamespaceSupport.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) declarationPattern.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := (recoveredStack0) match: (recoveredStack1).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 112] ifFalse: [recoveredPC := 121].
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := EmNamespaceSupport.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := (recoveredStack1) rootApplication.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack0) noteDamageTo: (recoveredStack1).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := (recoveredStack0) owningImage.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := 'Removed #%1 from %2 in %3'.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack3 := (recoveredStack3) name.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack4 := (recoveredStack4) name.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            (recoveredStack0) logNotice: (recoveredStack1).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock146Value0 recoveredBlock146Value1 |
    recoveredBlock146Value0 := recoveredArg2.
    recoveredBlock146Value1 := (recoveredBlock146Value0) value.
    ^recoveredBlock146Value1
].
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            (recoveredStack0) deleteSelector: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack0 := (recoveredStack0) owningImage.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodChangedCallback.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 170] ifFalse: [recoveredPC := 256].
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack0 := (recoveredStack0) owningImage.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack1 := EmConstants.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack2 := 'EmNmethodChangedCallback'.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack2 := (recoveredStack2) asPoolKey.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack2 := EmMethodChangeCallbackData.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack4 := (recoveredStack4) isClass.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            (recoveredStack4) ifTrue: [recoveredPC := 192] ifFalse: [recoveredPC := 198].
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack4 := (recoveredStack4) name.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredPC := 203.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack4 := (recoveredStack4) primaryInstance.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack4 := (recoveredStack4) name.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            (recoveredStack3) className: (recoveredStack4).
            recoveredStack3 := recoveredStack2.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack4 := (recoveredStack4) controller.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack4 := (recoveredStack4) name.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            (recoveredStack3) applicationName: (recoveredStack4).
            recoveredStack3 := recoveredStack2.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            (recoveredStack3) selector: (recoveredStack4).
            recoveredStack3 := recoveredStack2.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            (recoveredStack4 ~~ nil) ifTrue: [recoveredPC := 230] ifFalse: [recoveredPC := 226].
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredPC := 235.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack4 := (recoveredStack4) name.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            (recoveredStack3) controllingApplicationName: (recoveredStack4).
            recoveredStack3 := recoveredStack2.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack4 := (recoveredStack4) isClass.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            (recoveredStack3) instanceLevel: (recoveredStack4).
            recoveredStack3 := recoveredStack2.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack4 := EmConstants.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack5 := 'EMCRemoved'.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack5 := (recoveredStack5) asPoolKey.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5).
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            (recoveredStack3) changeType: (recoveredStack4).
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            (recoveredStack0) callCallbacks: (recoveredStack1) callData: (recoveredStack2).
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack0 := (recoveredStack0) owningImage.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack0 := (recoveredStack0) classChangedCallback.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 266] ifFalse: [recoveredPC := 322].
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack0 := (recoveredStack0) owningImage.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack1 := EmConstants.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack2 := 'EmNclassChangedCallback'.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack2 := (recoveredStack2) asPoolKey.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack2 := EmClassChangeCallbackData.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack4 := (recoveredStack4) isClass.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            (recoveredStack4) ifTrue: [recoveredPC := 288] ifFalse: [recoveredPC := 294].
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack4 := (recoveredStack4) name.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredPC := 299.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack4 := (recoveredStack4) primaryInstance.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack4 := (recoveredStack4) name.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            (recoveredStack3) className: (recoveredStack4).
            recoveredStack3 := recoveredStack2.
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack4 := (recoveredStack4) controller.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack4 := (recoveredStack4) name.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            (recoveredStack3) applicationName: (recoveredStack4).
            recoveredStack3 := recoveredStack2.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack4 := EmConstants.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack5 := 'EMCChanged'.
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            recoveredStack5 := (recoveredStack5) asPoolKey.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5).
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            (recoveredStack3) changeType: (recoveredStack4).
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            (recoveredStack0) callCallbacks: (recoveredStack1) callData: (recoveredStack2).
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2002e9a0; bytecode file offset 0x6aa08"
!ClassDescription methodsFor: 'recovered'!
canAdd: recoveredArg1 in: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) applicationFor: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := EmImageSupport.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorReporter.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := 40.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := (recoveredStack3) name.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack5 := (recoveredStack5) name.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack6 := recoveredLocal4.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack6 := (recoveredStack6) name.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5) with: (recoveredStack6).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) logError: (recoveredStack1) withParms: (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) rootApplication.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) whichClassIncludesSelector: (recoveredStack1).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0 == recoveredStack1) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 194] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := (recoveredStack0) allDependentApplications.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 102] ifFalse: [recoveredPC := 192].
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := [:recoveredBlock103Arg1 | 
    | recoveredBlock103Stack0 recoveredBlock103Stack1 recoveredBlock103Stack2 recoveredBlock103Stack3 recoveredBlock103Stack4 recoveredBlock103Stack5 recoveredBlock103Stack6 recoveredBlock103Stack7 recoveredBlock103Stack8 recoveredBlock103PC recoveredBlock103Step recoveredBlock103Done recoveredBlock103Result |
    recoveredBlock103Stack0 := self.
    recoveredBlock103PC := 110.
    recoveredBlock103Done := false.
    [recoveredBlock103Done not] whileTrue: [
        recoveredBlock103Step := recoveredBlock103PC.
        recoveredBlock103Step = 110 ifTrue: [
            recoveredBlock103Stack1 := nil.
            recoveredBlock103PC := 111.
        ].
        recoveredBlock103Step = 111 ifTrue: [
            recoveredBlock103Stack2 := recoveredBlock103Arg1.
            recoveredBlock103PC := 112.
        ].
        recoveredBlock103Step = 112 ifTrue: [
            recoveredBlock103Stack3 := recoveredArg1.
            recoveredBlock103PC := 115.
        ].
        recoveredBlock103Step = 115 ifTrue: [
            recoveredBlock103Stack2 := (recoveredBlock103Stack2) includesSelector: (recoveredBlock103Stack3).
            recoveredBlock103PC := 117.
        ].
        recoveredBlock103Step = 117 ifTrue: [
            (recoveredBlock103Stack2) ifTrue: [recoveredBlock103PC := 120] ifFalse: [recoveredBlock103PC := 189].
        ].
        recoveredBlock103Step = 120 ifTrue: [
            recoveredBlock103Stack2 := recoveredBlock103Arg1.
            recoveredBlock103PC := 121.
        ].
        recoveredBlock103Step = 121 ifTrue: [
            recoveredBlock103Stack2 := (recoveredBlock103Stack2) hasController.
            recoveredBlock103PC := 123.
        ].
        recoveredBlock103Step = 123 ifTrue: [
            (recoveredBlock103Stack2) ifTrue: [recoveredBlock103PC := 126] ifFalse: [recoveredBlock103PC := 189].
        ].
        recoveredBlock103Step = 126 ifTrue: [
            recoveredBlock103PC := 127.
        ].
        recoveredBlock103Step = 127 ifTrue: [
            recoveredBlock103Stack1 := recoveredBlock103Arg1.
            recoveredBlock103PC := 128.
        ].
        recoveredBlock103Step = 128 ifTrue: [
            recoveredBlock103Stack2 := recoveredArg1.
            recoveredBlock103PC := 131.
        ].
        recoveredBlock103Step = 131 ifTrue: [
            recoveredBlock103Stack1 := (recoveredBlock103Stack1) applicationFor: (recoveredBlock103Stack2).
            recoveredBlock103PC := 132.
        ].
        recoveredBlock103Step = 132 ifTrue: [
            recoveredLocal4 := recoveredBlock103Stack1.
            recoveredBlock103PC := 135.
        ].
        recoveredBlock103Step = 135 ifTrue: [
            recoveredBlock103Stack1 := nil.
            recoveredBlock103PC := 136.
        ].
        recoveredBlock103Step = 136 ifTrue: [
            recoveredBlock103Stack2 := recoveredLocal1.
            recoveredBlock103PC := 139.
        ].
        recoveredBlock103Step = 139 ifTrue: [
            recoveredBlock103Stack3 := recoveredLocal4.
            recoveredBlock103PC := 142.
        ].
        recoveredBlock103Step = 142 ifTrue: [
            recoveredBlock103Stack2 := (recoveredBlock103Stack2) includes: (recoveredBlock103Stack3).
            recoveredBlock103PC := 144.
        ].
        recoveredBlock103Step = 144 ifTrue: [
            (recoveredBlock103Stack2) ifTrue: [recoveredBlock103PC := 148] ifFalse: [recoveredBlock103PC := 189].
        ].
        recoveredBlock103Step = 148 ifTrue: [
            recoveredBlock103Stack2 := recoveredLocal4.
            recoveredBlock103PC := 151.
        ].
        recoveredBlock103Step = 151 ifTrue: [
            recoveredBlock103Stack2 := (recoveredBlock103Stack2) rootApplication.
            recoveredBlock103PC := 153.
        ].
        recoveredBlock103Step = 153 ifTrue: [
            recoveredBlock103Stack3 := recoveredBlock103Arg1.
            recoveredBlock103PC := 154.
        ].
        recoveredBlock103Step = 154 ifTrue: [
            recoveredBlock103Stack3 := (recoveredBlock103Stack3) controller.
            recoveredBlock103PC := 156.
        ].
        recoveredBlock103Step = 156 ifTrue: [
            recoveredBlock103Stack3 := (recoveredBlock103Stack3) rootApplication.
            recoveredBlock103PC := 158.
        ].
        recoveredBlock103Step = 158 ifTrue: [
            (recoveredBlock103Stack2 == recoveredBlock103Stack3) ifTrue: [recoveredBlock103PC := 189] ifFalse: [recoveredBlock103PC := 162].
        ].
        recoveredBlock103Step = 162 ifTrue: [
            recoveredBlock103PC := 163.
        ].
        recoveredBlock103Step = 163 ifTrue: [
            recoveredBlock103Stack1 := EmImageSupport.
            recoveredBlock103PC := 165.
        ].
        recoveredBlock103Step = 165 ifTrue: [
            recoveredBlock103Stack1 := (recoveredBlock103Stack1) errorReporter.
            recoveredBlock103PC := 166.
        ].
        recoveredBlock103Step = 166 ifTrue: [
            recoveredBlock103Stack2 := 41.
            recoveredBlock103PC := 168.
        ].
        recoveredBlock103Step = 168 ifTrue: [
            recoveredBlock103Stack3 := Array.
            recoveredBlock103PC := 170.
        ].
        recoveredBlock103Step = 170 ifTrue: [
            recoveredBlock103Stack4 := recoveredLocal4.
            recoveredBlock103PC := 173.
        ].
        recoveredBlock103Step = 173 ifTrue: [
            recoveredBlock103Stack4 := (recoveredBlock103Stack4) name.
            recoveredBlock103PC := 175.
        ].
        recoveredBlock103Step = 175 ifTrue: [
            recoveredBlock103Stack5 := recoveredBlock103Arg1.
            recoveredBlock103PC := 176.
        ].
        recoveredBlock103Step = 176 ifTrue: [
            recoveredBlock103Stack5 := (recoveredBlock103Stack5) name.
            recoveredBlock103PC := 178.
        ].
        recoveredBlock103Step = 178 ifTrue: [
            recoveredBlock103Stack6 := recoveredArg1.
            recoveredBlock103PC := 181.
        ].
        recoveredBlock103Step = 181 ifTrue: [
            recoveredBlock103Stack7 := self.
            recoveredBlock103PC := 182.
        ].
        recoveredBlock103Step = 182 ifTrue: [
            recoveredBlock103Stack7 := (recoveredBlock103Stack7) name.
            recoveredBlock103PC := 184.
        ].
        recoveredBlock103Step = 184 ifTrue: [
            recoveredBlock103Stack3 := (recoveredBlock103Stack3) with: (recoveredBlock103Stack4) with: (recoveredBlock103Stack5) with: (recoveredBlock103Stack6) with: (recoveredBlock103Stack7).
            recoveredBlock103PC := 187.
        ].
        recoveredBlock103Step = 187 ifTrue: [
            recoveredBlock103Stack1 := (recoveredBlock103Stack1) logError: (recoveredBlock103Stack2) withParms: (recoveredBlock103Stack3).
            recoveredBlock103PC := 189.
        ].
        recoveredBlock103Step = 189 ifTrue: [
            recoveredBlock103Result := recoveredBlock103Stack1.
            recoveredBlock103Done := true.
        ].
    ].
    recoveredBlock103Result
].
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            (recoveredStack0) allSubclassesDo: (recoveredStack1).
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack0 := (recoveredStack0) applicationFor: (recoveredStack1).
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack1 := (recoveredStack1) controller.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack1 := (recoveredStack1) rootApplication.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            (recoveredStack0 == recoveredStack1) ifTrue: [recoveredPC := 228] ifFalse: [recoveredPC := 216].
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack1 := (recoveredStack1) rootApplication.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 254] ifFalse: [recoveredPC := 228].
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack0 := EmImageSupport.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorReporter.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack1 := 42.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack3 := (recoveredStack3) name.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack5 := recoveredLocal2.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack5 := (recoveredStack5) name.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5).
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            (recoveredStack0) logError: (recoveredStack1) withParms: (recoveredStack2).
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredPC := 325.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack1 := (recoveredStack1) rootApplication.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack0 := (recoveredStack0) isBasedOn: (recoveredStack1).
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 268] ifFalse: [recoveredPC := 300].
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack0 := EmImageSupport.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorReporter.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack1 := 43.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack3 := (recoveredStack3) name.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack5 := recoveredLocal2.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack5 := (recoveredStack5) name.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack6 := recoveredArg2.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack6 := (recoveredStack6) name.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5) with: (recoveredStack6).
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            (recoveredStack0) logError: (recoveredStack1) withParms: (recoveredStack2).
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredPC := 325.
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack0 := EmImageSupport.
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorReporter.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack1 := 44.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack3 := (recoveredStack3) name.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack4 := (recoveredStack4) name.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5).
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            (recoveredStack0) logError: (recoveredStack1) withParms: (recoveredStack2).
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2002ef34; bytecode file offset 0x6afc4"
!ClassDescription methodsFor: 'recovered'!
rebindVariablesIn: recoveredArg1 using: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodClass.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) copy.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) methodClass: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) literalSize.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredPC := 282.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal4 := recoveredStack3.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredLocal5 := recoveredStack4.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack3 := (recoveredStack3) isAssociation.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 270].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack3 := (recoveredStack3) key.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack4 := 'super'.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack3 := (recoveredStack3) ~= (recoveredStack4).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 270].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack4 := recoveredLocal5.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack4 := (recoveredStack4) key.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack5 := recoveredArg2.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack6 := [].
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack3 := (recoveredStack3) variableAssociationAt: (recoveredStack4) using: (recoveredStack5) ifAbsent: (recoveredStack6).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredLocal3 := recoveredStack3.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack4 := recoveredLocal5.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack3 == recoveredStack4) ifTrue: [recoveredPC := 194] ifFalse: [recoveredPC := 106].
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack3 := System.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack3 := (recoveredStack3) image.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack3 := (recoveredStack3) globalNamespace.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack4 := [:recoveredBlock116Arg1 | 
    | recoveredBlock116Stack0 recoveredBlock116Stack1 recoveredBlock116Stack2 recoveredBlock116Stack3 recoveredBlock116Stack4 recoveredBlock116PC recoveredBlock116Step recoveredBlock116Done recoveredBlock116Result |
    recoveredBlock116Stack0 := self.
    recoveredBlock116PC := 122.
    recoveredBlock116Done := false.
    [recoveredBlock116Done not] whileTrue: [
        recoveredBlock116Step := recoveredBlock116PC.
        recoveredBlock116Step = 122 ifTrue: [
            recoveredBlock116Stack1 := false.
            recoveredBlock116PC := 123.
        ].
        recoveredBlock116Step = 123 ifTrue: [
            recoveredBlock116Stack2 := recoveredBlock116Arg1.
            recoveredBlock116PC := 124.
        ].
        recoveredBlock116Step = 124 ifTrue: [
            recoveredBlock116Stack2 := (recoveredBlock116Stack2) class.
            recoveredBlock116PC := 126.
        ].
        recoveredBlock116Step = 126 ifTrue: [
            recoveredBlock116Stack3 := EsPoolDictionary.
            recoveredBlock116PC := 128.
        ].
        recoveredBlock116Step = 128 ifTrue: [
            (recoveredBlock116Stack2 ~~ recoveredBlock116Stack3) ifTrue: [recoveredBlock116PC := 165] ifFalse: [recoveredBlock116PC := 132].
        ].
        recoveredBlock116Step = 132 ifTrue: [
            recoveredBlock116PC := 133.
        ].
        recoveredBlock116Step = 133 ifTrue: [
            recoveredBlock116Stack1 := recoveredBlock116Arg1.
            recoveredBlock116PC := 134.
        ].
        recoveredBlock116Step = 134 ifTrue: [
            recoveredBlock116Stack2 := recoveredLocal5.
            recoveredBlock116PC := 137.
        ].
        recoveredBlock116Step = 137 ifTrue: [
            recoveredBlock116Stack2 := (recoveredBlock116Stack2) key.
            recoveredBlock116PC := 139.
        ].
        recoveredBlock116Step = 139 ifTrue: [
            recoveredBlock116Stack3 := [].
            recoveredBlock116PC := 141.
        ].
        recoveredBlock116Step = 141 ifTrue: [
            recoveredBlock116Stack1 := (recoveredBlock116Stack1) associationAt: (recoveredBlock116Stack2) ifAbsent: (recoveredBlock116Stack3).
            recoveredBlock116PC := 143.
        ].
        recoveredBlock116Step = 143 ifTrue: [
            recoveredBlock116Stack2 := recoveredBlock116Stack1.
            recoveredBlock116PC := 144.
        ].
        recoveredBlock116Step = 144 ifTrue: [
            recoveredLocal1 := recoveredBlock116Stack2.
            recoveredBlock116PC := 147.
        ].
        recoveredBlock116Step = 147 ifTrue: [
            recoveredBlock116Stack2 := recoveredLocal5.
            recoveredBlock116PC := 150.
        ].
        recoveredBlock116Step = 150 ifTrue: [
            (recoveredBlock116Stack1 ~~ recoveredBlock116Stack2) ifTrue: [recoveredBlock116PC := 164] ifFalse: [recoveredBlock116PC := 154].
        ].
        recoveredBlock116Step = 154 ifTrue: [
            recoveredBlock116Stack1 := recoveredLocal1.
            recoveredBlock116PC := 157.
        ].
        recoveredBlock116Step = 157 ifTrue: [
            recoveredLocal2 := recoveredBlock116Stack1.
            recoveredBlock116PC := 160.
        ].
        recoveredBlock116Step = 160 ifTrue: [
            recoveredBlock116Stack1 := true.
            recoveredBlock116PC := 161.
        ].
        recoveredBlock116Step = 161 ifTrue: [
            recoveredBlock116PC := 165.
        ].
        recoveredBlock116Step = 164 ifTrue: [
            recoveredBlock116Stack1 := false.
            recoveredBlock116PC := 165.
        ].
        recoveredBlock116Step = 165 ifTrue: [
            recoveredBlock116Result := recoveredBlock116Stack1.
            recoveredBlock116Done := true.
        ].
    ].
    recoveredBlock116Result
].
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack5 := [].
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            (recoveredStack3) detect: (recoveredStack4) ifNone: (recoveredStack5).
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            (recoveredStack3 == nil) ifTrue: [recoveredPC := 182] ifFalse: [recoveredPC := 176].
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredLocal3 := recoveredStack3.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            (recoveredStack3 ~~ nil) ifTrue: [recoveredPC := 194] ifFalse: [recoveredPC := 188].
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredLocal3 := recoveredStack3.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            (recoveredStack3 == recoveredStack4) ifTrue: [recoveredPC := 270] ifFalse: [recoveredPC := 204].
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            (recoveredStack3 ~~ nil) ifTrue: [recoveredPC := 242] ifFalse: [recoveredPC := 210].
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredLocal7 := recoveredStack3.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack3 := Transcript.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            (recoveredStack4) cr.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack4 := NlsCatEMbsES.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack5 := 'MxEMbsES1'.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack4 := (recoveredStack4) residentMsg: (recoveredStack5).
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack5 := (recoveredStack5) printString.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack6 := recoveredLocal5.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack6 := (recoveredStack6) key.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack4 := (recoveredStack4) bindWith: (recoveredStack5) with: (recoveredStack6).
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            (recoveredStack3) show: (recoveredStack4).
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredPC := 270.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            (recoveredStack3 ~~ recoveredStack4) ifTrue: [recoveredPC := 259] ifFalse: [recoveredPC := 252].
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack3 := (recoveredStack3) copy.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredLocal6 := recoveredStack3.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack5 := recoveredLocal3.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            (recoveredStack3) at: (recoveredStack4) put: (recoveredStack5).
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredLocal3 := recoveredStack4.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredLocal2 := recoveredStack4.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredStack2 isInteger]) ifTrue: [(recoveredStack2 + 1 <= recoveredStack1) ifTrue: [recoveredStack2 := recoveredStack2 + 1. recoveredStack3 := recoveredStack2. recoveredPC := 48] ifFalse: [recoveredPC := 314]] ifFalse: [recoveredPC := 287].
        ].
        recoveredStep = 287 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredLocal4 := recoveredStack4.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 310] ifFalse: [recoveredPC := 304].
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredPC := 51.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 322] ifFalse: [recoveredPC := 330].
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            (recoveredStack1) doesCompile.
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            recoveredPC := 335.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            (recoveredStack1) doesNotCompile.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"lib.ic method 0x2002f4bc; bytecode file offset 0x6b5a4"
!ClassDescription methodsFor: 'recovered'!
releaseMethod: recoveredArg1 in: recoveredArg2 with: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) compiledCorrectly.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 12].
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
            recoveredStack2 := 202.
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
            recoveredStack4 := (recoveredStack4) selector.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack5 := (recoveredStack5) name.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) reportError: (recoveredStack2) withParms: (recoveredStack3).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodDictionary.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) selector.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) includesKey: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := EmLibrary.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) operationsInterface.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := [
    ^false
].
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0) applicationReleaseSelectorInClassFor: (recoveredStack1) compiledMethod: (recoveredStack2) ifUnable: (recoveredStack3).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := (recoveredStack1) selector.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack0) addSelector: (recoveredStack1) withMethod: (recoveredStack2) categories: (recoveredStack3) application: (recoveredStack4).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 110].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack2 := [
    ^false
].
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack0) updateCategoryDictionaryRecordIn: (recoveredStack1) ifUnable: (recoveredStack2).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := (recoveredStack0) owningImage.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := 'Added #%1%2 to %3 in %4'.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := (recoveredStack2) selector.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack3 := (recoveredStack3) timeStamp.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack3 := (recoveredStack3) signature.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack4 := (recoveredStack4) name.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack5 := recoveredArg2.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack5 := (recoveredStack5) signature.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            (recoveredStack0) logNotice: (recoveredStack1).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := EmNamespaceSupport.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := (recoveredStack0) declarationPattern.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack1 := (recoveredStack1) selector.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack0 := (recoveredStack0) match: (recoveredStack1).
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 154] ifFalse: [recoveredPC := 163].
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack0 := EmNamespaceSupport.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := (recoveredStack1) rootApplication.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            (recoveredStack0) noteDamageTo: (recoveredStack1).
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack0 := (recoveredStack0) owningImage.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodChangedCallback.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 174] ifFalse: [recoveredPC := 280].
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack0 := (recoveredStack0) owningImage.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack1 := EmConstants.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack2 := 'EmNmethodChangedCallback'.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack2 := (recoveredStack2) asPoolKey.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack2 := EmMethodChangeCallbackData.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack4 := (recoveredStack4) isClass.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            (recoveredStack4) ifTrue: [recoveredPC := 196] ifFalse: [recoveredPC := 202].
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack4 := (recoveredStack4) name.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredPC := 207.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack4 := (recoveredStack4) primaryInstance.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack4 := (recoveredStack4) name.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            (recoveredStack3) className: (recoveredStack4).
            recoveredStack3 := recoveredStack2.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack4 := (recoveredStack4) controller.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack4 := (recoveredStack4) name.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            (recoveredStack3) applicationName: (recoveredStack4).
            recoveredStack3 := recoveredStack2.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack4 := (recoveredStack4) selector.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            (recoveredStack3) selector: (recoveredStack4).
            recoveredStack3 := recoveredStack2.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            (recoveredStack4 ~~ nil) ifTrue: [recoveredPC := 236] ifFalse: [recoveredPC := 232].
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredPC := 241.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack4 := (recoveredStack4) name.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            (recoveredStack3) controllingApplicationName: (recoveredStack4).
            recoveredStack3 := recoveredStack2.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack4 := (recoveredStack4) isClass.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            (recoveredStack3) instanceLevel: (recoveredStack4).
            recoveredStack3 := recoveredStack2.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            (recoveredStack4) ifTrue: [recoveredPC := 256] ifFalse: [recoveredPC := 268].
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack4 := EmConstants.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack5 := 'EMCChanged'.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack5 := (recoveredStack5) asPoolKey.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5).
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredPC := 276.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack4 := EmConstants.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack5 := 'EMCAdded'.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack5 := (recoveredStack5) asPoolKey.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5).
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            (recoveredStack3) changeType: (recoveredStack4).
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            (recoveredStack0) callCallbacks: (recoveredStack1) callData: (recoveredStack2).
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack0 := (recoveredStack0) owningImage.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack0 := (recoveredStack0) classChangedCallback.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 290] ifFalse: [recoveredPC := 346].
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack0 := (recoveredStack0) owningImage.
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack1 := EmConstants.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack2 := 'EmNclassChangedCallback'.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack2 := (recoveredStack2) asPoolKey.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack2 := EmClassChangeCallbackData.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack4 := (recoveredStack4) isClass.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            (recoveredStack4) ifTrue: [recoveredPC := 312] ifFalse: [recoveredPC := 318].
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack4 := (recoveredStack4) name.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredPC := 323.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack4 := (recoveredStack4) primaryInstance.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack4 := (recoveredStack4) name.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            (recoveredStack3) className: (recoveredStack4).
            recoveredStack3 := recoveredStack2.
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            recoveredStack4 := (recoveredStack4) controller.
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            recoveredStack4 := (recoveredStack4) name.
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            (recoveredStack3) applicationName: (recoveredStack4).
            recoveredStack3 := recoveredStack2.
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            recoveredStack4 := EmConstants.
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack5 := 'EMCChanged'.
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack5 := (recoveredStack5) asPoolKey.
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5).
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            (recoveredStack3) changeType: (recoveredStack4).
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            (recoveredStack0) callCallbacks: (recoveredStack1) callData: (recoveredStack2).
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20034b98; bytecode file offset 0x70d00"
!ClassDescription methodsFor: 'recovered'!
install: recoveredArg1 asPrivate: recoveredArg2 withSource: recoveredArg3 ifNewAddTo: recoveredArg4 categorizeIn: recoveredArg5
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodDictionary.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) selector.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) includesKey: (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) private.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 33.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) public.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) selector.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal9 := recoveredStack0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) includesSelector: (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := #().
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredPC := 59.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredArg5.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasController.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 93] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0) addSelector: (recoveredStack1) withMethod: (recoveredStack2) categories: (recoveredStack3) application: (recoveredStack4).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := Association.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := (recoveredStack0) key: (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := (recoveredStack0) applicationFor: (recoveredStack1).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 170] ifFalse: [recoveredPC := 106].
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 120] ifFalse: [recoveredPC := 112].
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := (recoveredStack0) owningImage.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultApplication.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredPC := 123.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := (recoveredStack0) canAdd: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 140] ifFalse: [recoveredPC := 138].
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack3 := [
    ^nil
].
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            (recoveredStack0) canAddMethod: (recoveredStack1) in: (recoveredStack2) ifUnable: (recoveredStack3).
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack0 := EmLibraryPointer.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack0 := (recoveredStack0) void.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredPC := 195.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack2 := [
    ^nil
].
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            (recoveredStack0) modifyIn: (recoveredStack1) ifUnable: (recoveredStack2).
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack0 := (recoveredStack0) compiledMethodAt: (recoveredStack1).
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack0 := (recoveredStack0) filePointer.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            (recoveredStack0) testVisibilityIn: (recoveredStack1).
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack0 := Dictionary.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack0 := (recoveredStack0) info.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodNamesIn: (recoveredStack2).
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack0 := (recoveredStack0) categoriesForSelectors: (recoveredStack1).
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack1 := [:recoveredBlock227Arg1 | 
    | recoveredBlock227Value0 recoveredBlock227Value1 recoveredBlock227Value2 recoveredBlock227Value3 recoveredBlock227Value4 |
    recoveredBlock227Value0 := recoveredBlock227Arg1.
    recoveredBlock227Value1 := recoveredArg1.
    recoveredBlock227Value2 := (recoveredBlock227Value1) selector.
    recoveredBlock227Value3 := [].
    recoveredBlock227Value4 := (recoveredBlock227Value0) remove: (recoveredBlock227Value2) ifAbsent: (recoveredBlock227Value3).
    recoveredBlock227Value4
].
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack1 := [:recoveredBlock249Arg1 | 
    | recoveredBlock249Stack0 recoveredBlock249Stack1 recoveredBlock249Stack2 recoveredBlock249Stack3 recoveredBlock249Stack4 recoveredBlock249PC recoveredBlock249Step recoveredBlock249Done recoveredBlock249Result |
    recoveredBlock249Stack0 := self.
    recoveredBlock249PC := 256.
    recoveredBlock249Done := false.
    [recoveredBlock249Done not] whileTrue: [
        recoveredBlock249Step := recoveredBlock249PC.
        recoveredBlock249Step = 256 ifTrue: [
            recoveredBlock249Stack1 := recoveredLocal2.
            recoveredBlock249PC := 259.
        ].
        recoveredBlock249Step = 259 ifTrue: [
            recoveredBlock249Stack2 := recoveredBlock249Arg1.
            recoveredBlock249PC := 260.
        ].
        recoveredBlock249Step = 260 ifTrue: [
            recoveredBlock249Stack3 := [
    | block28005e24Value0 block28005e24Value1 |
    block28005e24Value0 := Set.
    block28005e24Value1 := (block28005e24Value0) new.
    block28005e24Value1
].
            recoveredBlock249PC := 262.
        ].
        recoveredBlock249Step = 262 ifTrue: [
            recoveredBlock249PC := 271.
        ].
        recoveredBlock249Step = 271 ifTrue: [
            recoveredBlock249Stack1 := (recoveredBlock249Stack1) at: (recoveredBlock249Stack2) ifAbsentPut: (recoveredBlock249Stack3).
            recoveredBlock249PC := 273.
        ].
        recoveredBlock249Step = 273 ifTrue: [
            recoveredBlock249Stack2 := recoveredArg1.
            recoveredBlock249PC := 276.
        ].
        recoveredBlock249Step = 276 ifTrue: [
            recoveredBlock249Stack2 := (recoveredBlock249Stack2) selector.
            recoveredBlock249PC := 277.
        ].
        recoveredBlock249Step = 277 ifTrue: [
            recoveredBlock249Stack1 := (recoveredBlock249Stack1) add: (recoveredBlock249Stack2).
            recoveredBlock249PC := 279.
        ].
        recoveredBlock249Step = 279 ifTrue: [
            recoveredBlock249Result := recoveredBlock249Stack1.
            recoveredBlock249Done := true.
        ].
    ].
    recoveredBlock249Result
].
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 290] ifFalse: [recoveredPC := 360].
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack0 := WriteStream.
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack1 := String.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack2 := 100.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack0 := (recoveredStack0) on: (recoveredStack1).
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack1 := [:recoveredBlock308Arg1 :recoveredBlock308Arg2 | 
    | recoveredBlock308Value0 recoveredBlock308Value1 recoveredBlock308Value2 recoveredBlock308Value3 recoveredBlock308Value4 recoveredBlock308Value5 recoveredBlock308Value6 recoveredBlock308Value7 recoveredBlock308Value8 recoveredBlock308Value9 recoveredBlock308Value10 |
    recoveredBlock308Value0 := recoveredLocal1.
    (recoveredBlock308Value0) reset.
    recoveredBlock308Value1 := recoveredBlock308Arg2.
    recoveredBlock308Value2 := [:recoveredBlock308Block320Arg1 | 
    | recoveredBlock308Block320Value0 recoveredBlock308Block320Value1 recoveredBlock308Block320Value2 recoveredBlock308Block320Value3 |
    recoveredBlock308Block320Value0 := recoveredLocal1.
    recoveredBlock308Block320Value1 := recoveredBlock308Block320Value0.
    recoveredBlock308Block320Value2 := recoveredBlock308Block320Arg1.
    (recoveredBlock308Block320Value1) nextPutAll: (recoveredBlock308Block320Value2).
    recoveredBlock308Block320Value3 := (recoveredBlock308Block320Value0) space.
    recoveredBlock308Block320Value3
].
    (recoveredBlock308Value1) do: (recoveredBlock308Value2).
    recoveredBlock308Value3 := recoveredLocal3.
    recoveredBlock308Value4 := recoveredBlock308Arg1.
    recoveredBlock308Value5 := recoveredLocal1.
    recoveredBlock308Value6 := recoveredLocal1.
    recoveredBlock308Value7 := (recoveredBlock308Value6) position.
    recoveredBlock308Value8 := (recoveredBlock308Value7) + (-1).
    recoveredBlock308Value9 := (recoveredBlock308Value5) copyFrom: (1) to: (recoveredBlock308Value8).
    recoveredBlock308Value10 := (recoveredBlock308Value3) at: (recoveredBlock308Value4) put: (recoveredBlock308Value9).
    recoveredBlock308Value10
].
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            (recoveredStack0) keysAndValuesDo: (recoveredStack1).
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            recoveredStack0 := EmLibrary.
            recoveredPC := 362.
        ].
        recoveredStep = 362 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 364.
        ].
        recoveredStep = 364 ifTrue: [
            recoveredStack0 := (recoveredStack0) operationsInterface.
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            recoveredStack4 := recoveredLocal7.
            recoveredPC := 378.
        ].
        recoveredStep = 378 ifTrue: [
            recoveredStack5 := recoveredLocal8.
            recoveredPC := 381.
        ].
        recoveredStep = 381 ifTrue: [
            recoveredStack5 := (recoveredStack5) notEmpty.
            recoveredPC := 383.
        ].
        recoveredStep = 383 ifTrue: [
            recoveredStack6 := recoveredLocal3.
            recoveredPC := 386.
        ].
        recoveredStep = 386 ifTrue: [
            recoveredStack7 := [
    ^nil
].
            recoveredPC := 394.
        ].
        recoveredStep = 394 ifTrue: [
            recoveredStack8 := [
    | recoveredBlock394Value0 recoveredBlock394Value1 recoveredBlock394Value2 recoveredBlock394Value3 |
    recoveredBlock394Value0 := recoveredLocal9.
    recoveredBlock394Value1 := recoveredArg1.
    recoveredBlock394Value2 := recoveredLocal8.
    recoveredBlock394Value3 := recoveredLocal7.
    (self) addSelector: (recoveredBlock394Value0) withMethod: (recoveredBlock394Value1) categories: (recoveredBlock394Value2) application: (recoveredBlock394Value3).
    ^nil
].
            recoveredPC := 417.
        ].
        recoveredStep = 417 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodAddNewMethodToClassFor: (recoveredStack1) source: (recoveredStack2) basedOn: (recoveredStack3) inApp: (recoveredStack4) updateCategories: (recoveredStack5) classCategoryDictionary: (recoveredStack6) ifUnableToAddMethod: (recoveredStack7) ifUnableToCategorize: (recoveredStack8).
            recoveredPC := 420.
        ].
        recoveredStep = 420 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 423.
        ].
        recoveredStep = 423 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 424.
        ].
        recoveredStep = 424 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 427.
        ].
        recoveredStep = 427 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 430.
        ].
        recoveredStep = 430 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 433.
        ].
        recoveredStep = 433 ifTrue: [
            recoveredStack4 := recoveredLocal7.
            recoveredPC := 436.
        ].
        recoveredStep = 436 ifTrue: [
            (recoveredStack0) addSelector: (recoveredStack1) withMethod: (recoveredStack2) categories: (recoveredStack3) application: (recoveredStack4).
            recoveredPC := 439.
        ].
        recoveredStep = 439 ifTrue: [
            recoveredStack0 := EmNamespaceSupport.
            recoveredPC := 441.
        ].
        recoveredStep = 441 ifTrue: [
            recoveredStack0 := (recoveredStack0) declarationPattern.
            recoveredPC := 443.
        ].
        recoveredStep = 443 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 446.
        ].
        recoveredStep = 446 ifTrue: [
            recoveredStack0 := (recoveredStack0) match: (recoveredStack1).
            recoveredPC := 448.
        ].
        recoveredStep = 448 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 452] ifFalse: [recoveredPC := 461].
        ].
        recoveredStep = 452 ifTrue: [
            recoveredStack0 := EmNamespaceSupport.
            recoveredPC := 454.
        ].
        recoveredStep = 454 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 457.
        ].
        recoveredStep = 457 ifTrue: [
            recoveredStack1 := (recoveredStack1) rootApplication.
            recoveredPC := 459.
        ].
        recoveredStep = 459 ifTrue: [
            (recoveredStack0) noteDamageTo: (recoveredStack1).
            recoveredPC := 461.
        ].
        recoveredStep = 461 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 462.
        ].
        recoveredStep = 462 ifTrue: [
            recoveredStack0 := (recoveredStack0) owningImage.
            recoveredPC := 464.
        ].
        recoveredStep = 464 ifTrue: [
            recoveredStack1 := 'Made %1%2 in %3'.
            recoveredPC := 466.
        ].
        recoveredStep = 466 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 469.
        ].
        recoveredStep = 469 ifTrue: [
            recoveredStack2 := (recoveredStack2) storeString.
            recoveredPC := 471.
        ].
        recoveredStep = 471 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 474.
        ].
        recoveredStep = 474 ifTrue: [
            recoveredStack3 := (recoveredStack3) signature.
            recoveredPC := 479.
        ].
        recoveredStep = 479 ifTrue: [
            recoveredStack4 := recoveredLocal7.
            recoveredPC := 482.
        ].
        recoveredStep = 482 ifTrue: [
            recoveredStack4 := (recoveredStack4) name.
            recoveredPC := 487.
        ].
        recoveredStep = 487 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 491.
        ].
        recoveredStep = 491 ifTrue: [
            (recoveredStack0) logNotice: (recoveredStack1).
            recoveredPC := 495.
        ].
        recoveredStep = 495 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 496.
        ].
        recoveredStep = 496 ifTrue: [
            recoveredStack0 := (recoveredStack0) owningImage.
            recoveredPC := 498.
        ].
        recoveredStep = 498 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodChangedCallback.
            recoveredPC := 503.
        ].
        recoveredStep = 503 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 505.
        ].
        recoveredStep = 505 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 508] ifFalse: [recoveredPC := 669].
        ].
        recoveredStep = 508 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 509.
        ].
        recoveredStep = 509 ifTrue: [
            recoveredStack0 := (recoveredStack0) owningImage.
            recoveredPC := 511.
        ].
        recoveredStep = 511 ifTrue: [
            recoveredStack1 := EmConstants.
            recoveredPC := 514.
        ].
        recoveredStep = 514 ifTrue: [
            recoveredStack2 := 'EmNmethodChangedCallback'.
            recoveredPC := 518.
        ].
        recoveredStep = 518 ifTrue: [
            recoveredStack2 := (recoveredStack2) asPoolKey.
            recoveredPC := 523.
        ].
        recoveredStep = 523 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 527.
        ].
        recoveredStep = 527 ifTrue: [
            recoveredStack2 := EmMethodChangeCallbackData.
            recoveredPC := 530.
        ].
        recoveredStep = 530 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 532.
        ].
        recoveredStep = 532 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 533.
        ].
        recoveredStep = 533 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 534.
        ].
        recoveredStep = 534 ifTrue: [
            recoveredStack4 := (recoveredStack4) isClass.
            recoveredPC := 539.
        ].
        recoveredStep = 539 ifTrue: [
            (recoveredStack4) ifTrue: [recoveredPC := 542] ifFalse: [recoveredPC := 550].
        ].
        recoveredStep = 542 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 543.
        ].
        recoveredStep = 543 ifTrue: [
            recoveredStack4 := (recoveredStack4) name.
            recoveredPC := 547.
        ].
        recoveredStep = 547 ifTrue: [
            recoveredPC := 559.
        ].
        recoveredStep = 550 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 551.
        ].
        recoveredStep = 551 ifTrue: [
            recoveredStack4 := (recoveredStack4) primaryInstance.
            recoveredPC := 555.
        ].
        recoveredStep = 555 ifTrue: [
            recoveredStack4 := (recoveredStack4) name.
            recoveredPC := 559.
        ].
        recoveredStep = 559 ifTrue: [
            (recoveredStack3) className: (recoveredStack4).
            recoveredStack3 := recoveredStack2.
            recoveredPC := 563.
        ].
        recoveredStep = 563 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 564.
        ].
        recoveredStep = 564 ifTrue: [
            recoveredStack4 := (recoveredStack4) controller.
            recoveredPC := 569.
        ].
        recoveredStep = 569 ifTrue: [
            recoveredStack4 := (recoveredStack4) name.
            recoveredPC := 573.
        ].
        recoveredStep = 573 ifTrue: [
            (recoveredStack3) applicationName: (recoveredStack4).
            recoveredStack3 := recoveredStack2.
            recoveredPC := 577.
        ].
        recoveredStep = 577 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 580.
        ].
        recoveredStep = 580 ifTrue: [
            recoveredStack4 := (recoveredStack4) selector.
            recoveredPC := 581.
        ].
        recoveredStep = 581 ifTrue: [
            (recoveredStack3) selector: (recoveredStack4).
            recoveredStack3 := recoveredStack2.
            recoveredPC := 585.
        ].
        recoveredStep = 585 ifTrue: [
            recoveredStack4 := recoveredLocal7.
            recoveredPC := 588.
        ].
        recoveredStep = 588 ifTrue: [
            (recoveredStack4 ~~ nil) ifTrue: [recoveredPC := 596] ifFalse: [recoveredPC := 592].
        ].
        recoveredStep = 592 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 593.
        ].
        recoveredStep = 593 ifTrue: [
            recoveredPC := 603.
        ].
        recoveredStep = 596 ifTrue: [
            recoveredStack4 := recoveredLocal7.
            recoveredPC := 599.
        ].
        recoveredStep = 599 ifTrue: [
            recoveredStack4 := (recoveredStack4) name.
            recoveredPC := 603.
        ].
        recoveredStep = 603 ifTrue: [
            (recoveredStack3) controllingApplicationName: (recoveredStack4).
            recoveredStack3 := recoveredStack2.
            recoveredPC := 607.
        ].
        recoveredStep = 607 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 608.
        ].
        recoveredStep = 608 ifTrue: [
            recoveredStack4 := (recoveredStack4) isClass.
            recoveredPC := 613.
        ].
        recoveredStep = 613 ifTrue: [
            (recoveredStack3) instanceLevel: (recoveredStack4).
            recoveredStack3 := recoveredStack2.
            recoveredPC := 617.
        ].
        recoveredStep = 617 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 620.
        ].
        recoveredStep = 620 ifTrue: [
            (recoveredStack4) ifTrue: [recoveredPC := 624] ifFalse: [recoveredPC := 644].
        ].
        recoveredStep = 624 ifTrue: [
            recoveredStack4 := EmConstants.
            recoveredPC := 628.
        ].
        recoveredStep = 628 ifTrue: [
            recoveredStack5 := 'EMCChanged'.
            recoveredPC := 632.
        ].
        recoveredStep = 632 ifTrue: [
            recoveredStack5 := (recoveredStack5) asPoolKey.
            recoveredPC := 637.
        ].
        recoveredStep = 637 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5).
            recoveredPC := 641.
        ].
        recoveredStep = 641 ifTrue: [
            recoveredPC := 661.
        ].
        recoveredStep = 644 ifTrue: [
            recoveredStack4 := EmConstants.
            recoveredPC := 648.
        ].
        recoveredStep = 648 ifTrue: [
            recoveredStack5 := 'EMCAdded'.
            recoveredPC := 652.
        ].
        recoveredStep = 652 ifTrue: [
            recoveredStack5 := (recoveredStack5) asPoolKey.
            recoveredPC := 657.
        ].
        recoveredStep = 657 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5).
            recoveredPC := 661.
        ].
        recoveredStep = 661 ifTrue: [
            (recoveredStack3) changeType: (recoveredStack4).
            recoveredPC := 665.
        ].
        recoveredStep = 665 ifTrue: [
            (recoveredStack0) callCallbacks: (recoveredStack1) callData: (recoveredStack2).
            recoveredPC := 669.
        ].
        recoveredStep = 669 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 670.
        ].
        recoveredStep = 670 ifTrue: [
            recoveredStack0 := (recoveredStack0) owningImage.
            recoveredPC := 672.
        ].
        recoveredStep = 672 ifTrue: [
            recoveredStack0 := (recoveredStack0) classChangedCallback.
            recoveredPC := 677.
        ].
        recoveredStep = 677 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 679.
        ].
        recoveredStep = 679 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 682] ifFalse: [recoveredPC := 775].
        ].
        recoveredStep = 682 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 683.
        ].
        recoveredStep = 683 ifTrue: [
            recoveredStack0 := (recoveredStack0) owningImage.
            recoveredPC := 685.
        ].
        recoveredStep = 685 ifTrue: [
            recoveredStack1 := EmConstants.
            recoveredPC := 688.
        ].
        recoveredStep = 688 ifTrue: [
            recoveredStack2 := 'EmNclassChangedCallback'.
            recoveredPC := 692.
        ].
        recoveredStep = 692 ifTrue: [
            recoveredStack2 := (recoveredStack2) asPoolKey.
            recoveredPC := 697.
        ].
        recoveredStep = 697 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 701.
        ].
        recoveredStep = 701 ifTrue: [
            recoveredStack2 := EmClassChangeCallbackData.
            recoveredPC := 704.
        ].
        recoveredStep = 704 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 706.
        ].
        recoveredStep = 706 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 707.
        ].
        recoveredStep = 707 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 708.
        ].
        recoveredStep = 708 ifTrue: [
            recoveredStack4 := (recoveredStack4) isClass.
            recoveredPC := 713.
        ].
        recoveredStep = 713 ifTrue: [
            (recoveredStack4) ifTrue: [recoveredPC := 716] ifFalse: [recoveredPC := 724].
        ].
        recoveredStep = 716 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 717.
        ].
        recoveredStep = 717 ifTrue: [
            recoveredStack4 := (recoveredStack4) name.
            recoveredPC := 721.
        ].
        recoveredStep = 721 ifTrue: [
            recoveredPC := 733.
        ].
        recoveredStep = 724 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 725.
        ].
        recoveredStep = 725 ifTrue: [
            recoveredStack4 := (recoveredStack4) primaryInstance.
            recoveredPC := 729.
        ].
        recoveredStep = 729 ifTrue: [
            recoveredStack4 := (recoveredStack4) name.
            recoveredPC := 733.
        ].
        recoveredStep = 733 ifTrue: [
            (recoveredStack3) className: (recoveredStack4).
            recoveredStack3 := recoveredStack2.
            recoveredPC := 737.
        ].
        recoveredStep = 737 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 738.
        ].
        recoveredStep = 738 ifTrue: [
            recoveredStack4 := (recoveredStack4) controller.
            recoveredPC := 743.
        ].
        recoveredStep = 743 ifTrue: [
            recoveredStack4 := (recoveredStack4) name.
            recoveredPC := 747.
        ].
        recoveredStep = 747 ifTrue: [
            (recoveredStack3) applicationName: (recoveredStack4).
            recoveredStack3 := recoveredStack2.
            recoveredPC := 751.
        ].
        recoveredStep = 751 ifTrue: [
            recoveredStack4 := EmConstants.
            recoveredPC := 754.
        ].
        recoveredStep = 754 ifTrue: [
            recoveredStack5 := 'EMCChanged'.
            recoveredPC := 758.
        ].
        recoveredStep = 758 ifTrue: [
            recoveredStack5 := (recoveredStack5) asPoolKey.
            recoveredPC := 763.
        ].
        recoveredStep = 763 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5).
            recoveredPC := 767.
        ].
        recoveredStep = 767 ifTrue: [
            (recoveredStack3) changeType: (recoveredStack4).
            recoveredPC := 771.
        ].
        recoveredStep = 771 ifTrue: [
            (recoveredStack0) callCallbacks: (recoveredStack1) callData: (recoveredStack2).
            recoveredPC := 775.
        ].
        recoveredStep = 775 ifTrue: [
            recoveredStack0 := Association.
            recoveredPC := 777.
        ].
        recoveredStep = 777 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 780.
        ].
        recoveredStep = 780 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 783.
        ].
        recoveredStep = 783 ifTrue: [
            recoveredStack0 := (recoveredStack0) key: (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 785.
        ].
        recoveredStep = 785 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

