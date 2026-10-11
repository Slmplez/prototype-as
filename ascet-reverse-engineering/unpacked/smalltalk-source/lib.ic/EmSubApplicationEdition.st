"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"lib.ic method 0x200005b0; bytecode file offset 0x3c670"
!EmSubApplicationEdition methodsFor: 'recovered'!
entryClass
    | recoveredValue0 |
    recoveredValue0 := EmClassEntry.
    ^recoveredValue0
! !

"lib.ic method 0x20000814; bytecode file offset 0x3c838"
!EmSubApplicationEdition methodsFor: 'recovered'!
defaultConfigurationExpression
    | recoveredValue0 |
    recoveredValue0 := (true) storeString.
    ^recoveredValue0
! !

"lib.ic method 0x20000918; bytecode file offset 0x3cba0"
!EmSubApplicationEdition methodsFor: 'recovered'!
isEdition
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) versionName.
    recoveredValue1 := (recoveredValue0) isEmpty.
    ^recoveredValue1
! !

"lib.ic method 0x20000948; bytecode file offset 0x3cba0"
!EmSubApplicationEdition methodsFor: 'recovered'!
isVersion
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) versionName.
    recoveredValue1 := (recoveredValue0) notEmpty.
    ^recoveredValue1
! !

"lib.ic method 0x200012dc; bytecode file offset 0x3d664"
!EmSubApplicationEdition methodsFor: 'recovered'!
manager
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) indexOfManager.
    recoveredValue1 := (self) groupMemberAt: (recoveredValue0).
    ^recoveredValue1
! !

"lib.ic method 0x2000130c; bytecode file offset 0x3d664"
!EmSubApplicationEdition methodsFor: 'recovered'!
timeStamp
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) timeStampIndex.
    recoveredValue1 := (self) timeStampAt: (recoveredValue0).
    ^recoveredValue1
! !

"lib.ic method 0x200013ec; bytecode file offset 0x3d664"
!EmSubApplicationEdition methodsFor: 'recovered'!
privilegesLong
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) privilegesLongIndex.
    recoveredValue1 := (self) longAt: (recoveredValue0).
    ^recoveredValue1
! !

"lib.ic method 0x200014cc; bytecode file offset 0x3d664"
!EmSubApplicationEdition methodsFor: 'recovered'!
indexOfManager
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) managerIndex.
    recoveredValue1 := (self) byteAt: (recoveredValue0).
    ^recoveredValue1
! !

"lib.ic method 0x2000155c; bytecode file offset 0x3d664"
!EmSubApplicationEdition methodsFor: 'recovered'!
previousTimeStamp
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) previousIndex.
    recoveredValue1 := (self) timeStampAt: (recoveredValue0).
    ^recoveredValue1
! !

"lib.ic method 0x2000157c; bytecode file offset 0x3d664"
!EmSubApplicationEdition methodsFor: 'recovered'!
subApplicationDictionary
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) subsIndex.
    recoveredValue1 := (self) obtainDictionaryAt: (recoveredValue0).
    ^recoveredValue1
! !

"lib.ic method 0x2000161c; bytecode file offset 0x3d664"
!EmSubApplicationEdition methodsFor: 'recovered'!
groupMembersIndex
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) startPosition.
    recoveredValue1 := (self) wordAt: (recoveredValue0).
    ^recoveredValue1
! !

"lib.ic method 0x20001e6c; bytecode file offset 0x3de9c"
!EmSubApplicationEdition methodsFor: 'recovered'!
timeStampIndex
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) startPosition.
    recoveredValue1 := (recoveredValue0) + (4).
    ^recoveredValue1
! !

"lib.ic method 0x20001f08; bytecode file offset 0x3df38"
!EmSubApplicationEdition methodsFor: 'recovered'!
previousIndex
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) startPosition.
    recoveredValue1 := (recoveredValue0) + (8).
    ^recoveredValue1
! !

"lib.ic method 0x20001f50; bytecode file offset 0x3df98"
!EmSubApplicationEdition methodsFor: 'recovered'!
privilegesLongIndex
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) startPosition.
    recoveredValue1 := (recoveredValue0) + (12).
    ^recoveredValue1
! !

"lib.ic method 0x20001ffc; bytecode file offset 0x3e02c"
!EmSubApplicationEdition methodsFor: 'recovered'!
subsIndex
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) startPosition.
    recoveredValue1 := (recoveredValue0) + (16).
    ^recoveredValue1
! !

"lib.ic method 0x20002074; bytecode file offset 0x3e0a4"
!EmSubApplicationEdition methodsFor: 'recovered'!
inheritedFieldsIndex
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) startPosition.
    recoveredValue1 := (recoveredValue0) + (24).
    ^recoveredValue1
! !

"lib.ic method 0x200020f8; bytecode file offset 0x3e11c"
!EmSubApplicationEdition methodsFor: 'recovered'!
localFieldsIndex
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) startPosition.
    recoveredValue1 := (recoveredValue0) + (32).
    ^recoveredValue1
! !

"lib.ic method 0x2000214c; bytecode file offset 0x3e170"
!EmSubApplicationEdition methodsFor: 'recovered'!
managerIndex
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) startPosition.
    recoveredValue1 := (recoveredValue0) + (40).
    ^recoveredValue1
! !

"lib.ic method 0x20002164; bytecode file offset 0x3e188"
!EmSubApplicationEdition methodsFor: 'recovered'!
versionIndex
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) startPosition.
    recoveredValue1 := (recoveredValue0) + (41).
    ^recoveredValue1
! !

"lib.ic method 0x200023e4; bytecode file offset 0x3e42c"
!EmSubApplicationEdition methodsFor: 'recovered'!
application
    | recoveredValue0 |
    recoveredValue0 := itsApplication.
    ^recoveredValue0
! !

"lib.ic method 0x2000271c; bytecode file offset 0x3e754"
!EmSubApplicationEdition methodsFor: 'recovered'!
defaultPrivilegesLong
    ^0
! !

"lib.ic method 0x20003c04; bytecode file offset 0x3fc44"
!EmSubApplicationEdition methodsFor: 'recovered'!
versionName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) versionIndex.
    recoveredValue1 := (self) groupMembersIndex.
    recoveredValue2 := (self) nameAt: (recoveredValue0) indexOfNextItem: (recoveredValue1).
    ^recoveredValue2
! !

"lib.ic method 0x20003c38; bytecode file offset 0x3fc60"
!EmSubApplicationEdition methodsFor: 'recovered'!
entriesIndex
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) startPosition.
    recoveredValue1 := (recoveredValue0) + (2).
    recoveredValue2 := (self) wordAt: (recoveredValue1).
    ^recoveredValue2
! !

"lib.ic method 0x20003dd4; bytecode file offset 0x3feac"
!EmSubApplicationEdition methodsFor: 'recovered'!
previousTimeStamp: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) previousIndex.
    recoveredValue1 := recoveredArg1.
    (self) at: (recoveredValue0) putTimeStamp: (recoveredValue1).
    ^self
! !

"lib.ic method 0x20003e04; bytecode file offset 0x3feac"
!EmSubApplicationEdition methodsFor: 'recovered'!
indexOfManager: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) managerIndex.
    recoveredValue1 := recoveredArg1.
    (self) at: (recoveredValue0) putByte: (recoveredValue1).
    ^self
! !

"lib.ic method 0x20003e34; bytecode file offset 0x3feac"
!EmSubApplicationEdition methodsFor: 'recovered'!
groupMembersIndex: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) startPosition.
    recoveredValue1 := recoveredArg1.
    (self) at: (recoveredValue0) putWord: (recoveredValue1).
    ^self
! !

"lib.ic method 0x20003e44; bytecode file offset 0x3feac"
!EmSubApplicationEdition methodsFor: 'recovered'!
timeStamp: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) timeStampIndex.
    recoveredValue1 := recoveredArg1.
    (self) at: (recoveredValue0) putTimeStamp: (recoveredValue1).
    ^self
! !

"lib.ic method 0x20003e84; bytecode file offset 0x3feac"
!EmSubApplicationEdition methodsFor: 'recovered'!
privilegesLong: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) privilegesLongIndex.
    recoveredValue1 := recoveredArg1.
    (self) at: (recoveredValue0) putLong: (recoveredValue1).
    ^self
! !

"lib.ic method 0x20004844; bytecode file offset 0x40884"
!EmSubApplicationEdition methodsFor: 'recovered'!
application: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    itsApplication := recoveredValue0.
    ^self
! !

"lib.ic method 0x2000582c; bytecode file offset 0x41854"
!EmSubApplicationEdition methodsFor: 'recovered'!
entriesIndex: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) startPosition.
    recoveredValue1 := (recoveredValue0) + (2).
    recoveredValue2 := recoveredArg1.
    (self) at: (recoveredValue1) putWord: (recoveredValue2).
    ^self
! !

"lib.ic method 0x20006af8; bytecode file offset 0x42b20"
!EmSubApplicationEdition methodsFor: 'recovered'!
currentConfigurationExpression
    | recoveredValue0 |
    recoveredValue0 := [:recoveredBlock4Arg1 | 
    | recoveredBlock4Value0 recoveredBlock4Value1 |
    recoveredBlock4Value0 := recoveredBlock4Arg1.
    recoveredBlock4Value1 := (recoveredBlock4Value0) name.
    ^recoveredBlock4Value1
].
    (self) currentSubExpressionEntryDo: (recoveredValue0).
    ^nil
! !

"lib.ic method 0x200085b8; bytecode file offset 0x44610"
!EmSubApplicationEdition methodsFor: 'recovered'!
movePartsTo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    super movePartsTo: (recoveredValue0).
    recoveredValue1 := (self) subsIndex.
    recoveredValue2 := (self) subApplicationDictionary.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue2) moveTo: (recoveredValue3).
    (self) at: (recoveredValue1) putFilePointer: (recoveredValue4).
    ^self
! !

"lib.ic method 0x20008610; bytecode file offset 0x44638"
!EmSubApplicationEdition methodsFor: 'recovered'!
includes: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    ^false
].
    recoveredValue2 := (self) entryAt: (recoveredValue0) ifAbsent: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) isDeleted.
    recoveredValue4 := (recoveredValue3) not.
    ^recoveredValue4
! !

"lib.ic method 0x20008664; bytecode file offset 0x44690"
!EmSubApplicationEdition methodsFor: 'recovered'!
ownerOf: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    ^nil
].
    recoveredValue2 := (self) entryAt: (recoveredValue0) ifAbsent: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) indexOfOwner.
    recoveredValue4 := (self) groupMemberAt: (recoveredValue3).
    ^recoveredValue4
! !

"lib.ic method 0x200089cc; bytecode file offset 0x44a00"
!EmSubApplicationEdition methodsFor: 'recovered'!
initializeEmpty
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    super initializeEmpty.
    recoveredValue0 := (self) endPosition.
    recoveredValue1 := (recoveredValue0) + (1).
    (self) groupMembersIndex: (recoveredValue1).
    recoveredValue2 := (self) endPosition.
    recoveredValue3 := (recoveredValue2) + (1).
    (self) entriesIndex: (recoveredValue3).
    ^self
! !

"lib.ic method 0x20009174; bytecode file offset 0x451ac"
!EmSubApplicationEdition methodsFor: 'recovered'!
mustBeVersionTo: recoveredArg1 ifNot: recoveredArg2
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
            (recoveredStack0) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := (recoveredStack3) application.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := (recoveredStack3) signature.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) stopAndReport: (recoveredStack1) withParms: (recoveredStack2) exitUsing: (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20009f68; bytecode file offset 0x45fa4"
!EmSubApplicationEdition methodsFor: 'recovered'!
mustBeEditionTo: recoveredArg1 withParms: recoveredArg2 ifNot: recoveredArg3
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
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := (recoveredStack3) application.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := (recoveredStack3) signature.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) stopAndReport: (recoveredStack1) withParms: (recoveredStack2) exitUsing: (recoveredStack3).
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

"lib.ic method 0x2000aa68; bytecode file offset 0x46a90"
!EmSubApplicationEdition methodsFor: 'recovered'!
needAtLeast: recoveredArg1
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
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) endPosition.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := 128.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := 128.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := (recoveredStack3) endPosition.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) endPosition.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) max: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"lib.ic method 0x2000ad7c; bytecode file offset 0x46dac"
!EmSubApplicationEdition methodsFor: 'recovered'!
manager: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) groupMembers.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexOf: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) indexOfManager: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) insert.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2000b220; bytecode file offset 0x47258"
!EmSubApplicationEdition methodsFor: 'recovered'!
userThatReleased: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) releasingUsersKey.
    recoveredValue2 := EmDictionaryOfStrings.
    recoveredValue3 := (self) inheritedUserFieldAt: (recoveredValue1) ofType: (recoveredValue2).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := [
    | recoveredBlock14Value0 recoveredBlock14Value1 |
    recoveredBlock14Value0 := recoveredArg1.
    recoveredBlock14Value1 := (self) ownerOf: (recoveredBlock14Value0).
    recoveredBlock14Value1
].
    recoveredValue6 := (recoveredValue3) at: (recoveredValue4) ifAbsent: (recoveredValue5).
    ^recoveredValue6
! !

"lib.ic method 0x2000c2ec; bytecode file offset 0x48328"
!EmSubApplicationEdition methodsFor: 'recovered'!
isGroupMember: recoveredArg1 ifNot: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) groupMembers.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexOf: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 28.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack4 := (recoveredStack4) application.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack4 := (recoveredStack4) signature.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) stopAndReport: (recoveredStack1) withParms: (recoveredStack2) exitUsing: (recoveredStack3).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2000c4c0; bytecode file offset 0x484f8"
!EmSubApplicationEdition methodsFor: 'recovered'!
allConfigurationExpressions
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) subApplicationDictionary.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 |
    recoveredBlock11Value0 := recoveredLocal1.
    recoveredBlock11Value1 := recoveredBlock11Arg1.
    recoveredBlock11Value2 := (recoveredBlock11Value1) name.
    recoveredBlock11Value3 := (recoveredBlock11Value0) addFirst: (recoveredBlock11Value2).
    recoveredBlock11Value3
].
    (recoveredValue2) forAllEntriesDo: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"lib.ic method 0x2000decc; bytecode file offset 0x49f04"
!EmSubApplicationEdition methodsFor: 'recovered'!
names
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Stack0 recoveredBlock10Stack1 recoveredBlock10Stack2 recoveredBlock10Stack3 recoveredBlock10PC recoveredBlock10Step recoveredBlock10Done recoveredBlock10Result |
    recoveredBlock10Stack0 := self.
    recoveredBlock10PC := 16.
    recoveredBlock10Done := false.
    [recoveredBlock10Done not] whileTrue: [
        recoveredBlock10Step := recoveredBlock10PC.
        recoveredBlock10Step = 16 ifTrue: [
            recoveredBlock10Stack1 := nil.
            recoveredBlock10PC := 17.
        ].
        recoveredBlock10Step = 17 ifTrue: [
            recoveredBlock10Stack2 := recoveredBlock10Arg1.
            recoveredBlock10PC := 18.
        ].
        recoveredBlock10Step = 18 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) isDeleted.
            recoveredBlock10PC := 19.
        ].
        recoveredBlock10Step = 19 ifTrue: [
            (recoveredBlock10Stack2) ifTrue: [recoveredBlock10PC := 30] ifFalse: [recoveredBlock10PC := 22].
        ].
        recoveredBlock10Step = 22 ifTrue: [
            recoveredBlock10PC := 23.
        ].
        recoveredBlock10Step = 23 ifTrue: [
            recoveredBlock10Stack1 := recoveredLocal1.
            recoveredBlock10PC := 26.
        ].
        recoveredBlock10Step = 26 ifTrue: [
            recoveredBlock10Stack2 := recoveredBlock10Arg1.
            recoveredBlock10PC := 27.
        ].
        recoveredBlock10Step = 27 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) className.
            recoveredBlock10PC := 28.
        ].
        recoveredBlock10Step = 28 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) add: (recoveredBlock10Stack2).
            recoveredBlock10PC := 30.
        ].
        recoveredBlock10Step = 30 ifTrue: [
            recoveredBlock10Result := recoveredBlock10Stack1.
            recoveredBlock10Done := true.
        ].
    ].
    recoveredBlock10Result
].
    (self) forAllEntriesDo: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"lib.ic method 0x2000e99c; bytecode file offset 0x4a9d8"
!EmSubApplicationEdition methodsFor: 'recovered'!
forgetUserThatReleased: recoveredArg1 ifUnable: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg2.
    (self) mustBeEditionTo: (286) withParms: (#()) ifNot: (recoveredValue0).
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) releasingUsersKey.
    recoveredValue3 := EmDictionaryOfStrings.
    recoveredValue4 := [:recoveredBlock22Arg1 | 
    | recoveredBlock22Value0 recoveredBlock22Value1 recoveredBlock22Value2 |
    recoveredBlock22Value0 := recoveredBlock22Arg1.
    recoveredBlock22Value1 := recoveredArg1.
    recoveredBlock22Value2 := (recoveredBlock22Value0) removeKey: (recoveredBlock22Value1).
    recoveredBlock22Value2
].
    recoveredValue5 := (self) updateInheritedUserFieldAt: (recoveredValue2) ofType: (recoveredValue3) with: (recoveredValue4).
    ^recoveredValue5
! !

"lib.ic method 0x2000eb2c; bytecode file offset 0x4ab68"
!EmSubApplicationEdition methodsFor: 'recovered'!
namesAndTypes
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (self) endPosition.
    recoveredValue2 := (recoveredValue1) // (10).
    recoveredValue3 := (recoveredValue0) new: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 recoveredBlock15Value3 recoveredBlock15Value4 recoveredBlock15Value5 |
    recoveredBlock15Value0 := recoveredLocal1.
    recoveredBlock15Value1 := recoveredBlock15Arg1.
    recoveredBlock15Value2 := (recoveredBlock15Value1) className.
    recoveredBlock15Value3 := recoveredBlock15Arg1.
    recoveredBlock15Value4 := (recoveredBlock15Value3) classType.
    recoveredBlock15Value5 := (recoveredBlock15Value0) at: (recoveredBlock15Value2) put: (recoveredBlock15Value4).
    recoveredBlock15Value5
].
    (self) forAllEntriesDo: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"lib.ic method 0x2000ec54; bytecode file offset 0x4ac90"
!EmSubApplicationEdition methodsFor: 'recovered'!
groupMembers
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) groupMembersIndex.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) entriesIndex.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) nameAt: (recoveredStack2) indexOfNextItem: (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) totalNameSizeAt: (recoveredStack2) indexOfNextItem: (recoveredStack3).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 37].
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2000feb4; bytecode file offset 0x4bef4"
!EmSubApplicationEdition methodsFor: 'recovered'!
namesAndOwners
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (self) endPosition.
    recoveredValue2 := (recoveredValue1) // (10).
    recoveredValue3 := (recoveredValue0) new: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 recoveredBlock15Value3 recoveredBlock15Value4 recoveredBlock15Value5 recoveredBlock15Value6 |
    recoveredBlock15Value0 := recoveredLocal1.
    recoveredBlock15Value1 := recoveredBlock15Arg1.
    recoveredBlock15Value2 := (recoveredBlock15Value1) className.
    recoveredBlock15Value3 := recoveredBlock15Arg1.
    recoveredBlock15Value4 := (recoveredBlock15Value3) indexOfOwner.
    recoveredBlock15Value5 := (self) groupMemberAt: (recoveredBlock15Value4).
    recoveredBlock15Value6 := (recoveredBlock15Value0) at: (recoveredBlock15Value2) put: (recoveredBlock15Value5).
    recoveredBlock15Value6
].
    (self) forAllEntriesDo: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"lib.ic method 0x20010778; bytecode file offset 0x4c7b8"
!EmSubApplicationEdition methodsFor: 'recovered'!
userHasRightTo: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) statusFor: (recoveredStack1).
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
            recoveredStack1 := 'world'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 'group'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) groupMembers.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := EmUser.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentID.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := EmUser.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentID.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) manager.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20011374; bytecode file offset 0x4d3ac"
!EmSubApplicationEdition methodsFor: 'recovered'!
manager: recoveredArg1 ifUnable: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 241.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := 240.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) userMustBeManagerTo: (recoveredStack1) noUserError: (recoveredStack2) ifNot: (recoveredStack3).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) isGroupMember: (recoveredStack1) ifNot: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) groupMembers.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexOf: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) indexOfManager: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) insert.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredPC := 45.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x200113c4; bytecode file offset 0x4d40c"
!EmSubApplicationEdition methodsFor: 'recovered'!
userMustBeManagerTo: recoveredArg1 noUserError: recoveredArg2 ifNot: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EmUser.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentID.
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
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := #().
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) stopAndReport: (recoveredStack2) withParms: (recoveredStack3) exitUsing: (recoveredStack4).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) manager.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 45] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := Array.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack4 := (recoveredStack4) application.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack4 := (recoveredStack4) signature.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1) stopAndReport: (recoveredStack2) withParms: (recoveredStack3) exitUsing: (recoveredStack4).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20011ec8; bytecode file offset 0x4df0c"
!EmSubApplicationEdition methodsFor: 'recovered'!
addGroupMember: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) groupMembers.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexOf: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal3.
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
            recoveredStack0 := (recoveredStack0) entriesIndex.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) spaceFor: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) shiftContentsStartingAt: (recoveredStack2) by: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) putName: (recoveredStack3).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) entriesIndex: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) groupMembers.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20012670; bytecode file offset 0x4e6a8"
!EmSubApplicationEdition methodsFor: 'recovered'!
deleteExpression: recoveredArg1 ifUnable: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg2.
    (self) userMustBeManagerTo: (225) noUserError: (224) ifNot: (recoveredValue0).
    recoveredValue1 := recoveredArg2.
    (self) mustBeEditionTo: (284) withParms: (#()) ifNot: (recoveredValue1).
    recoveredValue2 := (self) subsIndex.
    recoveredValue3 := [:recoveredBlock33Arg1 | 
    | recoveredBlock33Value0 recoveredBlock33Value1 recoveredBlock33Value2 |
    recoveredBlock33Value0 := recoveredBlock33Arg1.
    recoveredBlock33Value1 := recoveredArg1.
    recoveredBlock33Value2 := (recoveredBlock33Value0) removeKey: (recoveredBlock33Value1).
    recoveredBlock33Value2
].
    recoveredValue4 := (self) updateDictionaryAt: (recoveredValue2) using: (recoveredValue3).
    ^recoveredValue4
! !

"lib.ic method 0x20015114; bytecode file offset 0x51158"
!EmSubApplicationEdition methodsFor: 'recovered'!
mergeWith: recoveredArg1 mapping: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) existsInLibrary.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) isVersion.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            super mergeWith: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) subsIndex.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := [:recoveredBlock26Arg1 | 
    | recoveredBlock26Value0 recoveredBlock26Value1 recoveredBlock26Value2 recoveredBlock26Value3 |
    recoveredBlock26Value0 := recoveredBlock26Arg1.
    recoveredBlock26Value1 := recoveredArg1.
    recoveredBlock26Value2 := (recoveredBlock26Value1) subApplicationDictionary.
    recoveredBlock26Value3 := (recoveredBlock26Value0) mergeWith: (recoveredBlock26Value2).
    recoveredBlock26Value3
].
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) updateDictionaryAt: (recoveredStack1) using: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredPC := 57.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) library.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) moveTo: (recoveredStack1) mapping: (recoveredStack2).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x200157e8; bytecode file offset 0x5182c"
!EmSubApplicationEdition methodsFor: 'recovered'!
releasedNamesAndTimeStamps
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (self) endPosition.
    recoveredValue2 := (recoveredValue1) // (10).
    recoveredValue3 := (recoveredValue0) new: (recoveredValue2).
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := [:recoveredBlock15Arg1 | 
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
            recoveredBlock15Stack2 := recoveredBlock15Arg1.
            recoveredBlock15PC := 24.
        ].
        recoveredBlock15Step = 24 ifTrue: [
            recoveredBlock15Stack2 := (recoveredBlock15Stack2) isDeleted.
            recoveredBlock15PC := 25.
        ].
        recoveredBlock15Step = 25 ifTrue: [
            (recoveredBlock15Stack2) ifTrue: [recoveredBlock15PC := 52] ifFalse: [recoveredBlock15PC := 28].
        ].
        recoveredBlock15Step = 28 ifTrue: [
            recoveredBlock15Stack2 := recoveredBlock15Arg1.
            recoveredBlock15PC := 29.
        ].
        recoveredBlock15Step = 29 ifTrue: [
            recoveredBlock15Stack2 := (recoveredBlock15Stack2) timeStamp.
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
            recoveredBlock15Stack2 := (recoveredBlock15Stack2) isUndefined.
            recoveredBlock15PC := 37.
        ].
        recoveredBlock15Step = 37 ifTrue: [
            (recoveredBlock15Stack2) ifTrue: [recoveredBlock15PC := 52] ifFalse: [recoveredBlock15PC := 40].
        ].
        recoveredBlock15Step = 40 ifTrue: [
            recoveredBlock15PC := 41.
        ].
        recoveredBlock15Step = 41 ifTrue: [
            recoveredBlock15Stack1 := recoveredLocal2.
            recoveredBlock15PC := 44.
        ].
        recoveredBlock15Step = 44 ifTrue: [
            recoveredBlock15Stack2 := recoveredBlock15Arg1.
            recoveredBlock15PC := 45.
        ].
        recoveredBlock15Step = 45 ifTrue: [
            recoveredBlock15Stack2 := (recoveredBlock15Stack2) className.
            recoveredBlock15PC := 47.
        ].
        recoveredBlock15Step = 47 ifTrue: [
            recoveredBlock15Stack3 := recoveredLocal1.
            recoveredBlock15PC := 50.
        ].
        recoveredBlock15Step = 50 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) at: (recoveredBlock15Stack2) put: (recoveredBlock15Stack3).
            recoveredBlock15PC := 52.
        ].
        recoveredBlock15Step = 52 ifTrue: [
            recoveredBlock15Result := recoveredBlock15Stack1.
            recoveredBlock15Done := true.
        ].
    ].
    recoveredBlock15Result
].
    (self) forAllEntriesDo: (recoveredValue4).
    recoveredValue5 := recoveredLocal2.
    ^recoveredValue5
! !

"lib.ic method 0x20015b8c; bytecode file offset 0x51bdc"
!EmSubApplicationEdition methodsFor: 'recovered'!
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
            (recoveredStack2) ifTrue: [recoveredPC := 59] ifFalse: [recoveredPC := 28].
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
            (recoveredStack2) ifTrue: [recoveredPC := 59] ifFalse: [recoveredPC := 48].
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
            recoveredStack3 := EmEvaluationRedirectionForConfigExpressions.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := (recoveredStack3) new.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) evaluate: (recoveredStack2) for: (recoveredStack3).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"lib.ic method 0x20015c00; bytecode file offset 0x51c3c"
!EmSubApplicationEdition methodsFor: 'recovered'!
ownerOf: recoveredArg1 to: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) groupMembers.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexOf: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := [:recoveredBlock25Arg1 | 
    | recoveredBlock25Stack0 recoveredBlock25Stack1 recoveredBlock25Stack2 recoveredBlock25Stack3 recoveredBlock25Stack4 recoveredBlock25PC recoveredBlock25Step recoveredBlock25Done recoveredBlock25Result |
    recoveredBlock25Stack0 := self.
    recoveredBlock25PC := 32.
    recoveredBlock25Done := false.
    [recoveredBlock25Done not] whileTrue: [
        recoveredBlock25Step := recoveredBlock25PC.
        recoveredBlock25Step = 32 ifTrue: [
            recoveredBlock25Stack1 := nil.
            recoveredBlock25PC := 33.
        ].
        recoveredBlock25Step = 33 ifTrue: [
            recoveredBlock25Stack2 := self.
            recoveredBlock25PC := 34.
        ].
        recoveredBlock25Step = 34 ifTrue: [
            recoveredBlock25Stack3 := recoveredBlock25Arg1.
            recoveredBlock25PC := 35.
        ].
        recoveredBlock25Step = 35 ifTrue: [
            recoveredBlock25Stack2 := (recoveredBlock25Stack2) includes: (recoveredBlock25Stack3).
            recoveredBlock25PC := 36.
        ].
        recoveredBlock25Step = 36 ifTrue: [
            (recoveredBlock25Stack2) ifTrue: [recoveredBlock25PC := 40] ifFalse: [recoveredBlock25PC := 49].
        ].
        recoveredBlock25Step = 40 ifTrue: [
            recoveredBlock25PC := 41.
        ].
        recoveredBlock25Step = 41 ifTrue: [
            recoveredBlock25Stack1 := self.
            recoveredBlock25PC := 42.
        ].
        recoveredBlock25Step = 42 ifTrue: [
            recoveredBlock25Stack2 := recoveredBlock25Arg1.
            recoveredBlock25PC := 43.
        ].
        recoveredBlock25Step = 43 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) entryAt: (recoveredBlock25Stack2).
            recoveredBlock25PC := 44.
        ].
        recoveredBlock25Step = 44 ifTrue: [
            recoveredBlock25Stack2 := recoveredLocal1.
            recoveredBlock25PC := 47.
        ].
        recoveredBlock25Step = 47 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) indexOfOwner: (recoveredBlock25Stack2).
            recoveredBlock25PC := 49.
        ].
        recoveredBlock25Step = 49 ifTrue: [
            recoveredBlock25Result := recoveredBlock25Stack1.
            recoveredBlock25Done := true.
        ].
    ].
    recoveredBlock25Result
].
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) insert.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredPC := 59.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20015d9c; bytecode file offset 0x51de0"
!EmSubApplicationEdition methodsFor: 'recovered'!
addExpression: recoveredArg1 ifUnable: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg2.
    (self) userMustBeManagerTo: (219) noUserError: (218) ifNot: (recoveredValue0).
    recoveredValue1 := recoveredArg2.
    (self) mustBeEditionTo: (296) withParms: (#()) ifNot: (recoveredValue1).
    recoveredValue2 := (self) subsIndex.
    recoveredValue3 := [:recoveredBlock33Arg1 | 
    | recoveredBlock33Stack0 recoveredBlock33Stack1 recoveredBlock33Stack2 recoveredBlock33Stack3 recoveredBlock33Stack4 recoveredBlock33PC recoveredBlock33Step recoveredBlock33Done recoveredBlock33Result |
    recoveredBlock33Stack0 := self.
    recoveredBlock33PC := 40.
    recoveredBlock33Done := false.
    [recoveredBlock33Done not] whileTrue: [
        recoveredBlock33Step := recoveredBlock33PC.
        recoveredBlock33Step = 40 ifTrue: [
            recoveredBlock33Stack1 := recoveredBlock33Arg1.
            recoveredBlock33PC := 41.
        ].
        recoveredBlock33Step = 41 ifTrue: [
            recoveredBlock33Stack2 := recoveredArg1.
            recoveredBlock33PC := 44.
        ].
        recoveredBlock33Step = 44 ifTrue: [
            recoveredBlock33Stack3 := [:block28004b4cArg1 | 
    | block28004b4cValue0 block28004b4cValue1 |
    block28004b4cValue0 := EmLibraryPointer.
    block28004b4cValue1 := (block28004b4cValue0) void.
    block28004b4cValue1
].
            recoveredBlock33PC := 46.
        ].
        recoveredBlock33Step = 46 ifTrue: [
            recoveredBlock33PC := 55.
        ].
        recoveredBlock33Step = 55 ifTrue: [
            recoveredBlock33Stack1 := (recoveredBlock33Stack1) at: (recoveredBlock33Stack2) putPointerFrom: (recoveredBlock33Stack3).
            recoveredBlock33PC := 57.
        ].
        recoveredBlock33Step = 57 ifTrue: [
            recoveredBlock33Result := recoveredBlock33Stack1.
            recoveredBlock33Done := true.
        ].
    ].
    recoveredBlock33Result
].
    recoveredValue4 := (self) updateDictionaryAt: (recoveredValue2) using: (recoveredValue3).
    ^recoveredValue4
! !

"lib.ic method 0x20016160; bytecode file offset 0x521a4"
!EmSubApplicationEdition methodsFor: 'recovered'!
allClassNamesOwnedBy: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) groupMembers.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) indexOf: (recoveredValue1).
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := OrderedCollection.
    recoveredValue4 := (recoveredValue3) new.
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Stack0 recoveredBlock19Stack1 recoveredBlock19Stack2 recoveredBlock19Stack3 recoveredBlock19Stack4 recoveredBlock19PC recoveredBlock19Step recoveredBlock19Done recoveredBlock19Result |
    recoveredBlock19Stack0 := self.
    recoveredBlock19PC := 26.
    recoveredBlock19Done := false.
    [recoveredBlock19Done not] whileTrue: [
        recoveredBlock19Step := recoveredBlock19PC.
        recoveredBlock19Step = 26 ifTrue: [
            recoveredBlock19Stack1 := nil.
            recoveredBlock19PC := 27.
        ].
        recoveredBlock19Step = 27 ifTrue: [
            recoveredBlock19Stack2 := recoveredLocal2.
            recoveredBlock19PC := 30.
        ].
        recoveredBlock19Step = 30 ifTrue: [
            recoveredBlock19Stack3 := recoveredBlock19Arg1.
            recoveredBlock19PC := 31.
        ].
        recoveredBlock19Step = 31 ifTrue: [
            recoveredBlock19Stack3 := (recoveredBlock19Stack3) indexOfOwner.
            recoveredBlock19PC := 33.
        ].
        recoveredBlock19Step = 33 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) = (recoveredBlock19Stack3).
            recoveredBlock19PC := 34.
        ].
        recoveredBlock19Step = 34 ifTrue: [
            (recoveredBlock19Stack2) ifTrue: [recoveredBlock19PC := 38] ifFalse: [recoveredBlock19PC := 55].
        ].
        recoveredBlock19Step = 38 ifTrue: [
            recoveredBlock19PC := 39.
        ].
        recoveredBlock19Step = 39 ifTrue: [
            recoveredBlock19Stack1 := nil.
            recoveredBlock19PC := 40.
        ].
        recoveredBlock19Step = 40 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Arg1.
            recoveredBlock19PC := 41.
        ].
        recoveredBlock19Step = 41 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) isDeleted.
            recoveredBlock19PC := 43.
        ].
        recoveredBlock19Step = 43 ifTrue: [
            (recoveredBlock19Stack2) ifTrue: [recoveredBlock19PC := 55] ifFalse: [recoveredBlock19PC := 46].
        ].
        recoveredBlock19Step = 46 ifTrue: [
            recoveredBlock19PC := 47.
        ].
        recoveredBlock19Step = 47 ifTrue: [
            recoveredBlock19Stack1 := recoveredLocal1.
            recoveredBlock19PC := 50.
        ].
        recoveredBlock19Step = 50 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Arg1.
            recoveredBlock19PC := 51.
        ].
        recoveredBlock19Step = 51 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) className.
            recoveredBlock19PC := 53.
        ].
        recoveredBlock19Step = 53 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) add: (recoveredBlock19Stack2).
            recoveredBlock19PC := 55.
        ].
        recoveredBlock19Step = 55 ifTrue: [
            recoveredBlock19Result := recoveredBlock19Stack1.
            recoveredBlock19Done := true.
        ].
    ].
    recoveredBlock19Result
].
    (self) forAllEntriesDo: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"lib.ic method 0x20016ccc; bytecode file offset 0x52d38"
!EmSubApplicationEdition methodsFor: 'recovered'!
createInitialIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 |
    recoveredValue0 := recoveredArg1.
    (self) library: (recoveredValue0).
    (self) insertLineUps.
    recoveredValue1 := (self) application.
    recoveredValue2 := (recoveredValue1) timeStamp.
    (self) timeStamp: (recoveredValue2).
    recoveredValue3 := (self) defaultPrivilegesLong.
    (self) privilegesLong: (recoveredValue3).
    recoveredValue4 := EmUser.
    recoveredValue5 := (recoveredValue4) currentID.
    (self) addGroupMember: (recoveredValue5).
    (self) indexOfManager: (1).
    recoveredValue6 := (self) entryClass.
    recoveredValue7 := (self) application.
    recoveredValue8 := (recoveredValue7) symbol.
    recoveredValue9 := (recoveredValue6) named: (recoveredValue8).
    recoveredValue10 := recoveredValue9.
    (recoveredValue10) classType: ('PubliclyDefined').
    recoveredValue11 := recoveredValue9.
    (recoveredValue11) indexOfOwner: (1).
    recoveredValue12 := recoveredValue9.
    recoveredValue13 := (self) application.
    recoveredValue14 := (self) application.
    recoveredValue15 := (recoveredValue13) timeStampFor: (recoveredValue14).
    (recoveredValue12) timeStamp: (recoveredValue15).
    recoveredValue16 := (self) addNewEntry: (recoveredValue9).
    ^recoveredValue16
! !

"lib.ic method 0x20016de8; bytecode file offset 0x52e44"
!EmSubApplicationEdition methodsFor: 'recovered'!
subApplications
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 recoveredBlock10Value4 recoveredBlock10Value5 recoveredBlock10Value6 recoveredBlock10Value7 recoveredBlock10Value8 recoveredBlock10Value9 recoveredBlock10Value10 |
    recoveredBlock10Value0 := (self) application.
    recoveredBlock10Value1 := recoveredBlock10Arg1.
    recoveredBlock10Value2 := (recoveredBlock10Value1) name.
    (recoveredBlock10Value0) configurationExpression: (recoveredBlock10Value2).
    recoveredBlock10Value3 := EmDictionaryOfTimeStamps.
    recoveredBlock10Value4 := recoveredBlock10Arg1.
    recoveredBlock10Value5 := (recoveredBlock10Value4) value.
    recoveredBlock10Value6 := (self) library.
    recoveredBlock10Value7 := (recoveredBlock10Value3) using: (recoveredBlock10Value5) from: (recoveredBlock10Value6).
    recoveredBlock10Value8 := (recoveredBlock10Value7) asDictionary.
    recoveredBlock10Value9 := [:recoveredBlock10Block33Arg1 | 
    | recoveredBlock10Block33Value0 recoveredBlock10Block33Value1 recoveredBlock10Block33Value2 recoveredBlock10Block33Value3 recoveredBlock10Block33Value4 recoveredBlock10Block33Value5 recoveredBlock10Block33Value6 |
    recoveredBlock10Block33Value0 := recoveredLocal1.
    recoveredBlock10Block33Value1 := recoveredBlock10Block33Arg1.
    recoveredBlock10Block33Value2 := (recoveredBlock10Block33Value1) key.
    recoveredBlock10Block33Value3 := (recoveredBlock10Block33Value2) asSymbol.
    recoveredBlock10Block33Value4 := recoveredBlock10Block33Arg1.
    recoveredBlock10Block33Value5 := (recoveredBlock10Block33Value4) value.
    recoveredBlock10Block33Value6 := (recoveredBlock10Block33Value0) at: (recoveredBlock10Block33Value3) put: (recoveredBlock10Block33Value5).
    recoveredBlock10Block33Value6
].
    (recoveredBlock10Value8) associationsDo: (recoveredBlock10Value9).
    recoveredBlock10Value10 := recoveredLocal1.
    ^recoveredBlock10Value10
].
    (self) currentSubExpressionEntryDo: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"lib.ic method 0x200173d8; bytecode file offset 0x5340c"
!EmSubApplicationEdition methodsFor: 'recovered'!
groupMemberAt: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) groupMembersIndex.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) entriesIndex.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 45.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := (recoveredStack2) totalNameSizeAt: (recoveredStack3) indexOfNextItem: (recoveredStack4).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 45].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack0) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 28] ifFalse: [recoveredLocal1 := nil. recoveredPC := 59]] ifFalse: [recoveredPC := 49].
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 57] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := (recoveredStack2) entriesIndex.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) nameAt: (recoveredStack1) indexOfNextItem: (recoveredStack2).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20018168; bytecode file offset 0x541c4"
!EmSubApplicationEdition methodsFor: 'recovered'!
moveTo: recoveredArg1 mapping: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) groupMembers.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredArg2.
    recoveredBlock5Value2 := recoveredBlock5Arg1.
    recoveredBlock5Value3 := [
    | recoveredBlock5Block21Value0 recoveredBlock5Block21Value1 recoveredBlock5Block21Value2 recoveredBlock5Block21Value3 recoveredBlock5Block21Value4 recoveredBlock5Block21Value5 recoveredBlock5Block21Value6 |
    recoveredBlock5Block21Value0 := System.
    recoveredBlock5Block21Value1 := (recoveredBlock5Block21Value0) image.
    recoveredBlock5Block21Value2 := (recoveredBlock5Block21Value1) errorLog.
    recoveredBlock5Block21Value3 := recoveredBlock5Block21Value2.
    (recoveredBlock5Block21Value3) cr.
    recoveredBlock5Block21Value4 := MxEMc149.
    recoveredBlock5Block21Value5 := recoveredBlock5Arg1.
    recoveredBlock5Block21Value6 := (recoveredBlock5Block21Value4) bindWith: (recoveredBlock5Block21Value5).
    (recoveredBlock5Block21Value2) show: (recoveredBlock5Block21Value6).
    'Supervisor'
].
    recoveredBlock5Value4 := (recoveredBlock5Value1) at: (recoveredBlock5Value2) ifAbsent: (recoveredBlock5Value3).
    recoveredBlock5Value5 := (self) replaceGroupMember: (recoveredBlock5Value0) with: (recoveredBlock5Value4).
    recoveredBlock5Value5
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (self) movePartsTo: (recoveredValue2).
    (self) forgetCachedSpace.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (self) insertInto: (recoveredValue3).
    ^recoveredValue4
! !

"lib.ic method 0x2001826c; bytecode file offset 0x542b4"
!EmSubApplicationEdition methodsFor: 'recovered'!
deleteSubApplicationNamed: recoveredArg1 from: recoveredArg2 ifUnable: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg3.
    (self) userMustBeManagerTo: (227) noUserError: (226) ifNot: (recoveredValue0).
    recoveredValue1 := recoveredArg3.
    (self) mustBeEditionTo: (285) withParms: (#()) ifNot: (recoveredValue1).
    recoveredValue2 := (self) subsIndex.
    recoveredValue3 := [:recoveredBlock33Arg1 | 
    | recoveredBlock33Value0 recoveredBlock33Value1 recoveredBlock33Value2 recoveredBlock33Value3 |
    recoveredBlock33Value0 := recoveredBlock33Arg1.
    recoveredBlock33Value1 := recoveredArg2.
    recoveredBlock33Value2 := [:recoveredBlock33Block44Arg1 | 
    | recoveredBlock33Block44Value0 recoveredBlock33Block44Value1 recoveredBlock33Block44Value2 recoveredBlock33Block44Value3 recoveredBlock33Block44Value4 recoveredBlock33Block44Value5 |
    recoveredBlock33Block44Value0 := EmDictionaryOfTimeStamps.
    recoveredBlock33Block44Value1 := recoveredBlock33Block44Arg1.
    recoveredBlock33Block44Value2 := (self) library.
    recoveredBlock33Block44Value3 := (recoveredBlock33Block44Value0) updating: (recoveredBlock33Block44Value1) from: (recoveredBlock33Block44Value2).
    recoveredBlock33Block44Value4 := recoveredArg1.
    recoveredBlock33Block44Value5 := (recoveredBlock33Block44Value3) removeKey: (recoveredBlock33Block44Value4).
    recoveredBlock33Block44Value5
].
    recoveredBlock33Value3 := (recoveredBlock33Value0) replaceAt: (recoveredBlock33Value1) withPointerFrom: (recoveredBlock33Value2).
    recoveredBlock33Value3
].
    recoveredValue4 := (self) updateDictionaryAt: (recoveredValue2) using: (recoveredValue3).
    ^recoveredValue4
! !

"lib.ic method 0x20018a38; bytecode file offset 0x54a80"
!EmSubApplicationEdition methodsFor: 'recovered'!
userThatReleasedClasses: recoveredArg1 is: recoveredArg2 ifUnable: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg3.
    (self) mustBeEditionTo: (290) withParms: (#()) ifNot: (recoveredValue0).
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) releasingUsersKey.
    recoveredValue3 := EmDictionaryOfStrings.
    recoveredValue4 := [:recoveredBlock22Arg1 | 
    | recoveredBlock22Local1 recoveredBlock22Value0 recoveredBlock22Value1 recoveredBlock22Value2 recoveredBlock22Value3 recoveredBlock22Value4 |
    recoveredBlock22Value0 := recoveredBlock22Arg1.
    recoveredBlock22Value1 := (recoveredBlock22Value0) filePointer.
    recoveredBlock22Local1 := recoveredBlock22Value1.
    recoveredBlock22Value2 := recoveredArg1.
    recoveredBlock22Value3 := [:recoveredBlock22Block39Arg1 | 
    | recoveredBlock22Block39Value0 recoveredBlock22Block39Value1 recoveredBlock22Block39Value2 recoveredBlock22Block39Value3 recoveredBlock22Block39Value4 recoveredBlock22Block39Value5 |
    recoveredBlock22Block39Value0 := recoveredBlock22Arg1.
    recoveredBlock22Block39Value1 := recoveredBlock22Block39Arg1.
    recoveredBlock22Block39Value2 := (recoveredBlock22Block39Value1) symbol.
    recoveredBlock22Block39Value3 := recoveredArg2.
    recoveredBlock22Block39Value4 := (recoveredBlock22Block39Value0) at: (recoveredBlock22Block39Value2) put: (recoveredBlock22Block39Value3).
    recoveredBlock22Block39Value5 := recoveredBlock22Block39Value4.
    recoveredBlock22Local1 := recoveredBlock22Block39Value5.
    recoveredBlock22Block39Value4
].
    (recoveredBlock22Value2) do: (recoveredBlock22Value3).
    recoveredBlock22Value4 := recoveredBlock22Local1.
    recoveredBlock22Value4
].
    recoveredValue5 := (self) updateInheritedUserFieldAt: (recoveredValue2) ofType: (recoveredValue3) with: (recoveredValue4).
    ^recoveredValue5
! !

"lib.ic method 0x20018f20; bytecode file offset 0x54f7c"
!EmSubApplicationEdition methodsFor: 'recovered'!
setVersionName: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) spaceFor: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) versionIndex.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := (recoveredStack3) groupMembersIndex.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) totalNameSizeAt: (recoveredStack2) indexOfNextItem: (recoveredStack3).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) groupMembersIndex.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) shiftContentsStartingAt: (recoveredStack1) by: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) versionIndex.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) putByte: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredPC := 44.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) versionIndex.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) putName: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := (recoveredStack2) groupMembersIndex.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack1) groupMembersIndex: (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) entriesIndex.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) entriesIndex: (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) application.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) timeStampVersionName: (recoveredStack1).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2001927c; bytecode file offset 0x552cc"
!EmSubApplicationEdition methodsFor: 'recovered'!
classesAccordingToType
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new: (8).
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := (self) endPosition.
    recoveredValue3 := (recoveredValue2) // (20).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := (self) entryClass.
    recoveredValue5 := (recoveredValue4) classTypes.
    recoveredValue6 := [:recoveredBlock23Arg1 | 
    | recoveredBlock23Value0 recoveredBlock23Value1 recoveredBlock23Value2 recoveredBlock23Value3 recoveredBlock23Value4 recoveredBlock23Value5 |
    recoveredBlock23Value0 := recoveredLocal2.
    recoveredBlock23Value1 := recoveredBlock23Arg1.
    recoveredBlock23Value2 := Dictionary.
    recoveredBlock23Value3 := recoveredLocal1.
    recoveredBlock23Value4 := (recoveredBlock23Value2) new: (recoveredBlock23Value3).
    recoveredBlock23Value5 := (recoveredBlock23Value0) at: (recoveredBlock23Value1) put: (recoveredBlock23Value4).
    recoveredBlock23Value5
].
    (recoveredValue5) do: (recoveredValue6).
    recoveredValue7 := [:recoveredBlock46Arg1 | 
    | recoveredBlock46Value0 recoveredBlock46Value1 recoveredBlock46Value2 recoveredBlock46Value3 recoveredBlock46Value4 recoveredBlock46Value5 recoveredBlock46Value6 recoveredBlock46Value7 recoveredBlock46Value8 |
    recoveredBlock46Value0 := recoveredLocal2.
    recoveredBlock46Value1 := recoveredBlock46Arg1.
    recoveredBlock46Value2 := (recoveredBlock46Value1) classType.
    recoveredBlock46Value3 := (recoveredBlock46Value0) at: (recoveredBlock46Value2).
    recoveredBlock46Value4 := recoveredBlock46Arg1.
    recoveredBlock46Value5 := (recoveredBlock46Value4) className.
    recoveredBlock46Value6 := recoveredBlock46Arg1.
    recoveredBlock46Value7 := (recoveredBlock46Value6) timeStamp.
    recoveredBlock46Value8 := (recoveredBlock46Value3) at: (recoveredBlock46Value5) put: (recoveredBlock46Value7).
    recoveredBlock46Value8
].
    (self) forAllEntriesDo: (recoveredValue7).
    recoveredValue8 := recoveredLocal2.
    ^recoveredValue8
! !

"lib.ic method 0x200195c8; bytecode file offset 0x55614"
!EmSubApplicationEdition methodsFor: 'recovered'!
copyExpression: recoveredArg1 toCreate: recoveredArg2 ifUnable: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg3.
    (self) userMustBeManagerTo: (223) noUserError: (222) ifNot: (recoveredValue0).
    recoveredValue1 := recoveredArg3.
    (self) mustBeEditionTo: (283) withParms: (#()) ifNot: (recoveredValue1).
    recoveredValue2 := (self) subsIndex.
    recoveredValue3 := [:recoveredBlock33Arg1 | 
    | recoveredBlock33Value0 recoveredBlock33Value1 recoveredBlock33Value2 recoveredBlock33Value3 |
    recoveredBlock33Value0 := recoveredBlock33Arg1.
    recoveredBlock33Value1 := recoveredArg2.
    recoveredBlock33Value2 := [:recoveredBlock33Block46Arg1 | 
    | recoveredBlock33Block46Value0 recoveredBlock33Block46Value1 recoveredBlock33Block46Value2 recoveredBlock33Block46Value3 recoveredBlock33Block46Value4 recoveredBlock33Block46Value5 recoveredBlock33Block46Value6 |
    recoveredBlock33Block46Value0 := EmDictionaryOfTimeStamps.
    recoveredBlock33Block46Value1 := recoveredBlock33Arg1.
    recoveredBlock33Block46Value2 := recoveredArg1.
    recoveredBlock33Block46Value3 := (recoveredBlock33Block46Value1) at: (recoveredBlock33Block46Value2).
    recoveredBlock33Block46Value4 := (self) library.
    recoveredBlock33Block46Value5 := (recoveredBlock33Block46Value0) using: (recoveredBlock33Block46Value3) from: (recoveredBlock33Block46Value4).
    recoveredBlock33Block46Value6 := (recoveredBlock33Block46Value5) insert.
    recoveredBlock33Block46Value6
].
    recoveredBlock33Value3 := (recoveredBlock33Value0) at: (recoveredBlock33Value1) putPointerFrom: (recoveredBlock33Value2).
    recoveredBlock33Value3
].
    recoveredValue4 := (self) updateDictionaryAt: (recoveredValue2) using: (recoveredValue3).
    ^recoveredValue4
! !

"lib.ic method 0x20019814; bytecode file offset 0x55864"
!EmSubApplicationEdition methodsFor: 'recovered'!
releaseSubApplication: recoveredArg1 in: recoveredArg2 ifUnable: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg3.
    (self) userMustBeManagerTo: (231) noUserError: (230) ifNot: (recoveredValue0).
    recoveredValue1 := recoveredArg3.
    (self) mustBeEditionTo: (289) withParms: (#()) ifNot: (recoveredValue1).
    recoveredValue2 := (self) subsIndex.
    recoveredValue3 := [:recoveredBlock33Arg1 | 
    | recoveredBlock33Value0 recoveredBlock33Value1 recoveredBlock33Value2 recoveredBlock33Value3 |
    recoveredBlock33Value0 := recoveredBlock33Arg1.
    recoveredBlock33Value1 := recoveredArg2.
    recoveredBlock33Value2 := [:recoveredBlock33Block44Arg1 | 
    | recoveredBlock33Block44Value0 recoveredBlock33Block44Value1 recoveredBlock33Block44Value2 recoveredBlock33Block44Value3 recoveredBlock33Block44Value4 recoveredBlock33Block44Value5 recoveredBlock33Block44Value6 recoveredBlock33Block44Value7 recoveredBlock33Block44Value8 |
    recoveredBlock33Block44Value0 := EmDictionaryOfTimeStamps.
    recoveredBlock33Block44Value1 := recoveredBlock33Block44Arg1.
    recoveredBlock33Block44Value2 := (self) library.
    recoveredBlock33Block44Value3 := (recoveredBlock33Block44Value0) updating: (recoveredBlock33Block44Value1) from: (recoveredBlock33Block44Value2).
    recoveredBlock33Block44Value4 := recoveredArg1.
    recoveredBlock33Block44Value5 := (recoveredBlock33Block44Value4) symbol.
    recoveredBlock33Block44Value6 := recoveredArg1.
    recoveredBlock33Block44Value7 := (recoveredBlock33Block44Value6) timeStamp.
    recoveredBlock33Block44Value8 := (recoveredBlock33Block44Value3) at: (recoveredBlock33Block44Value5) put: (recoveredBlock33Block44Value7).
    recoveredBlock33Block44Value8
].
    recoveredBlock33Value3 := (recoveredBlock33Value0) replaceAt: (recoveredBlock33Value1) withPointerFrom: (recoveredBlock33Value2).
    recoveredBlock33Value3
].
    recoveredValue4 := (self) updateDictionaryAt: (recoveredValue2) using: (recoveredValue3).
    ^recoveredValue4
! !

"lib.ic method 0x20019b68; bytecode file offset 0x55bc8"
!EmSubApplicationEdition methodsFor: 'recovered'!
newEditionAt: recoveredArg1 ifUnable: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := 229.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := 228.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) userMustBeManagerTo: (recoveredStack2) noUserError: (recoveredStack3) ifNot: (recoveredStack4).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := 381.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) mustBeVersionTo: (recoveredStack2) ifNot: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) insertLineUps.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) application.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) timeStamp.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) previousTimeStamp: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) timeStamp: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := (recoveredStack2) localFieldsIndex.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack3 := EmLibraryPointer.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := (recoveredStack3) void.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) putFilePointer: (recoveredStack3).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) setVersionName: (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) inheritedUserFields.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 69] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) inheritedFieldsIndex.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := (recoveredStack2) insert.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) putFilePointer: (recoveredStack2).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) application.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0) timeStamp: (recoveredStack1).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) insert.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20019e4c; bytecode file offset 0x55e94"
!EmSubApplicationEdition methodsFor: 'recovered'!
currentSubExpressionEntryDo: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := (self) subApplicationDictionary.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := [:recoveredBlock17Arg1 | 
    | recoveredBlock17Value0 recoveredBlock17Value1 recoveredBlock17Value2 recoveredBlock17Value3 |
    recoveredBlock17Value0 := recoveredLocal2.
    recoveredBlock17Value1 := recoveredBlock17Arg1.
    recoveredBlock17Value2 := (recoveredBlock17Value1) name.
    recoveredBlock17Value3 := (recoveredBlock17Value0) addFirst: (recoveredBlock17Value2).
    recoveredBlock17Value3
].
    (recoveredValue3) forAllEntriesDo: (recoveredValue4).
    recoveredValue5 := recoveredLocal2.
    recoveredValue6 := [:recoveredBlock37Arg1 | 
    | recoveredBlock37Stack0 recoveredBlock37Stack1 recoveredBlock37Stack2 recoveredBlock37Stack3 recoveredBlock37Stack4 recoveredBlock37Stack5 recoveredBlock37PC recoveredBlock37Step recoveredBlock37Done recoveredBlock37Result |
    recoveredBlock37Stack0 := self.
    recoveredBlock37PC := 44.
    recoveredBlock37Done := false.
    [recoveredBlock37Done not] whileTrue: [
        recoveredBlock37Step := recoveredBlock37PC.
        recoveredBlock37Step = 44 ifTrue: [
            recoveredBlock37Stack1 := nil.
            recoveredBlock37PC := 45.
        ].
        recoveredBlock37Step = 45 ifTrue: [
            recoveredBlock37Stack2 := self.
            recoveredBlock37PC := 46.
        ].
        recoveredBlock37Step = 46 ifTrue: [
            recoveredBlock37Stack3 := recoveredBlock37Arg1.
            recoveredBlock37PC := 47.
        ].
        recoveredBlock37Step = 47 ifTrue: [
            recoveredBlock37Stack2 := (recoveredBlock37Stack2) isExpressionValid: (recoveredBlock37Stack3).
            recoveredBlock37PC := 49.
        ].
        recoveredBlock37Step = 49 ifTrue: [
            (recoveredBlock37Stack2) ifTrue: [recoveredBlock37PC := 52] ifFalse: [recoveredBlock37PC := 73].
        ].
        recoveredBlock37Step = 52 ifTrue: [
            recoveredBlock37PC := 53.
        ].
        recoveredBlock37Step = 53 ifTrue: [
            recoveredBlock37Stack1 := recoveredArg1.
            recoveredBlock37PC := 56.
        ].
        recoveredBlock37Step = 56 ifTrue: [
            recoveredBlock37Stack2 := recoveredLocal1.
            recoveredBlock37PC := 59.
        ].
        recoveredBlock37Step = 59 ifTrue: [
            recoveredBlock37Stack3 := recoveredBlock37Arg1.
            recoveredBlock37PC := 60.
        ].
        recoveredBlock37Step = 60 ifTrue: [
            recoveredBlock37Stack4 := [
    ^nil
].
            recoveredBlock37PC := 68.
        ].
        recoveredBlock37Step = 68 ifTrue: [
            recoveredBlock37Stack2 := (recoveredBlock37Stack2) entryAt: (recoveredBlock37Stack3) ifAbsent: (recoveredBlock37Stack4).
            recoveredBlock37PC := 70.
        ].
        recoveredBlock37Step = 70 ifTrue: [
            recoveredBlock37Stack1 := (recoveredBlock37Stack1) value: (recoveredBlock37Stack2).
            recoveredBlock37PC := 72.
        ].
        recoveredBlock37Step = 72 ifTrue: [
            ^recoveredBlock37Stack1
        ].
        recoveredBlock37Step = 73 ifTrue: [
            recoveredBlock37Result := recoveredBlock37Stack1.
            recoveredBlock37Done := true.
        ].
    ].
    recoveredBlock37Result
].
    (recoveredValue5) do: (recoveredValue6).
    ^nil
! !

"lib.ic method 0x2001a398; bytecode file offset 0x563e8"
!EmSubApplicationEdition methodsFor: 'recovered'!
statusFor: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) privilegeNames.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexOf: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := MxEMc125.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) fatalError: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) privilegesLong.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := 'changeClassOwners'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) isBitSet: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 45].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := 'group'.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := 'managerorowner'.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) isBitSet: (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 61].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := 'group'.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) isBitSet: (recoveredStack1).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 75].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := 'owner'.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := 'world'.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2001aa00; bytecode file offset 0x56a78"
!EmSubApplicationEdition methodsFor: 'recovered'!
insertLineUps
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) timeStamp.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isUndefined.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) subsIndex.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := EmDiskDictionary.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := Dictionary.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack4 := Association.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack5 := (recoveredStack5) defaultConfigurationExpression.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack6 := EmLibraryPointer.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack6 := (recoveredStack6) void.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack4 := (recoveredStack4) key: (recoveredStack5) value: (recoveredStack6).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack4 := (recoveredStack4) library.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := (recoveredStack2) createFor: (recoveredStack3) in: (recoveredStack4).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) putFilePointer: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredPC := 81.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) subApplicationDictionary.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := [:recoveredBlock45Arg1 | 
    | recoveredBlock45Value0 recoveredBlock45Value1 recoveredBlock45Value2 recoveredBlock45Value3 recoveredBlock45Value4 recoveredBlock45Value5 recoveredBlock45Value6 recoveredBlock45Value7 |
    recoveredBlock45Value0 := recoveredBlock45Arg1.
    recoveredBlock45Value1 := EmDictionaryOfTimeStamps.
    recoveredBlock45Value2 := recoveredBlock45Arg1.
    recoveredBlock45Value3 := (recoveredBlock45Value2) value.
    recoveredBlock45Value4 := (self) library.
    recoveredBlock45Value5 := (recoveredBlock45Value1) using: (recoveredBlock45Value3) from: (recoveredBlock45Value4).
    recoveredBlock45Value6 := (recoveredBlock45Value5) insert.
    recoveredBlock45Value7 := (recoveredBlock45Value0) value: (recoveredBlock45Value6).
    recoveredBlock45Value7
].
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) forAllEntriesDo: (recoveredStack1).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack0) forgetCachedSpace.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) subsIndex.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := (recoveredStack2) insert.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) putFilePointer: (recoveredStack2).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2001ac68; bytecode file offset 0x56cc0"
!EmSubApplicationEdition methodsFor: 'recovered'!
subApplicationsFor: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) subApplicationDictionary.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:recoveredBlock5Arg1 | 
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
            recoveredBlock5Stack2 := recoveredArg1.
            recoveredBlock5PC := 16.
        ].
        recoveredBlock5Step = 16 ifTrue: [
            recoveredBlock5Stack3 := recoveredBlock5Arg1.
            recoveredBlock5PC := 17.
        ].
        recoveredBlock5Step = 17 ifTrue: [
            recoveredBlock5Stack3 := (recoveredBlock5Stack3) name.
            recoveredBlock5PC := 18.
        ].
        recoveredBlock5Step = 18 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) = (recoveredBlock5Stack3).
            recoveredBlock5PC := 19.
        ].
        recoveredBlock5Step = 19 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 22] ifFalse: [recoveredBlock5PC := 29].
        ].
        recoveredBlock5Step = 22 ifTrue: [
            recoveredBlock5PC := 23.
        ].
        recoveredBlock5Step = 23 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 24.
        ].
        recoveredBlock5Step = 24 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) value.
            recoveredBlock5PC := 25.
        ].
        recoveredBlock5Step = 25 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Stack1.
            recoveredBlock5PC := 26.
        ].
        recoveredBlock5Step = 26 ifTrue: [
            recoveredLocal2 := recoveredBlock5Stack2.
            recoveredBlock5PC := 29.
        ].
        recoveredBlock5Step = 29 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) forAllEntriesDo: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := Dictionary.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 79] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := EmDictionaryOfTimeStamps.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := (recoveredStack2) library.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) using: (recoveredStack1) from: (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) asDictionary.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := [:recoveredBlock58Arg1 | 
    | recoveredBlock58Value0 recoveredBlock58Value1 recoveredBlock58Value2 recoveredBlock58Value3 recoveredBlock58Value4 recoveredBlock58Value5 recoveredBlock58Value6 |
    recoveredBlock58Value0 := recoveredLocal1.
    recoveredBlock58Value1 := recoveredBlock58Arg1.
    recoveredBlock58Value2 := (recoveredBlock58Value1) key.
    recoveredBlock58Value3 := (recoveredBlock58Value2) asSymbol.
    recoveredBlock58Value4 := recoveredBlock58Arg1.
    recoveredBlock58Value5 := (recoveredBlock58Value4) value.
    recoveredBlock58Value6 := (recoveredBlock58Value0) at: (recoveredBlock58Value3) put: (recoveredBlock58Value5).
    recoveredBlock58Value6
].
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack0) associationsDo: (recoveredStack1).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2001cdc4; bytecode file offset 0x58e18"
!EmSubApplicationEdition methodsFor: 'recovered'!
addSubApplication: recoveredArg1 to: recoveredArg2 ifUnable: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) subsIndex.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := recoveredArg2.
    recoveredBlock6Value2 := [:recoveredBlock6Block16Arg1 | 
    | recoveredBlock6Block16Stack0 recoveredBlock6Block16Stack1 recoveredBlock6Block16Stack2 recoveredBlock6Block16Stack3 recoveredBlock6Block16Stack4 recoveredBlock6Block16Stack5 recoveredBlock6Block16Stack6 recoveredBlock6Block16PC recoveredBlock6Block16Step recoveredBlock6Block16Done recoveredBlock6Block16Result |
    recoveredBlock6Block16Stack0 := self.
    recoveredBlock6Block16PC := 22.
    recoveredBlock6Block16Done := false.
    [recoveredBlock6Block16Done not] whileTrue: [
        recoveredBlock6Block16Step := recoveredBlock6Block16PC.
        recoveredBlock6Block16Step = 22 ifTrue: [
            recoveredBlock6Block16Stack1 := EmDictionaryOfTimeStamps.
            recoveredBlock6Block16PC := 24.
        ].
        recoveredBlock6Block16Step = 24 ifTrue: [
            recoveredBlock6Block16Stack2 := recoveredBlock6Block16Arg1.
            recoveredBlock6Block16PC := 25.
        ].
        recoveredBlock6Block16Step = 25 ifTrue: [
            recoveredBlock6Block16Stack3 := self.
            recoveredBlock6Block16PC := 26.
        ].
        recoveredBlock6Block16Step = 26 ifTrue: [
            recoveredBlock6Block16Stack3 := (recoveredBlock6Block16Stack3) library.
            recoveredBlock6Block16PC := 27.
        ].
        recoveredBlock6Block16Step = 27 ifTrue: [
            recoveredBlock6Block16Stack1 := (recoveredBlock6Block16Stack1) updating: (recoveredBlock6Block16Stack2) from: (recoveredBlock6Block16Stack3).
            recoveredBlock6Block16PC := 29.
        ].
        recoveredBlock6Block16Step = 29 ifTrue: [
            recoveredLocal1 := recoveredBlock6Block16Stack1.
            recoveredBlock6Block16PC := 32.
        ].
        recoveredBlock6Block16Step = 32 ifTrue: [
            recoveredBlock6Block16Stack1 := nil.
            recoveredBlock6Block16PC := 33.
        ].
        recoveredBlock6Block16Step = 33 ifTrue: [
            recoveredBlock6Block16Stack2 := recoveredLocal1.
            recoveredBlock6Block16PC := 36.
        ].
        recoveredBlock6Block16Step = 36 ifTrue: [
            recoveredBlock6Block16Stack3 := recoveredArg1.
            recoveredBlock6Block16PC := 39.
        ].
        recoveredBlock6Block16Step = 39 ifTrue: [
            recoveredBlock6Block16Stack3 := (recoveredBlock6Block16Stack3) symbol.
            recoveredBlock6Block16PC := 41.
        ].
        recoveredBlock6Block16Step = 41 ifTrue: [
            recoveredBlock6Block16Stack2 := (recoveredBlock6Block16Stack2) includesKey: (recoveredBlock6Block16Stack3).
            recoveredBlock6Block16PC := 43.
        ].
        recoveredBlock6Block16Step = 43 ifTrue: [
            (recoveredBlock6Block16Stack2) ifTrue: [recoveredBlock6Block16PC := 89] ifFalse: [recoveredBlock6Block16PC := 46].
        ].
        recoveredBlock6Block16Step = 46 ifTrue: [
            recoveredBlock6Block16PC := 47.
        ].
        recoveredBlock6Block16Step = 47 ifTrue: [
            recoveredBlock6Block16Stack1 := self.
            recoveredBlock6Block16PC := 48.
        ].
        recoveredBlock6Block16Step = 48 ifTrue: [
            recoveredBlock6Block16Stack2 := recoveredBlock6Block16Stack1.
            recoveredBlock6Block16PC := 49.
        ].
        recoveredBlock6Block16Step = 49 ifTrue: [
            recoveredBlock6Block16Stack3 := 221.
            recoveredBlock6Block16PC := 52.
        ].
        recoveredBlock6Block16Step = 52 ifTrue: [
            recoveredBlock6Block16Stack4 := 220.
            recoveredBlock6Block16PC := 56.
        ].
        recoveredBlock6Block16Step = 56 ifTrue: [
            recoveredBlock6Block16Stack5 := recoveredArg3.
            recoveredBlock6Block16PC := 59.
        ].
        recoveredBlock6Block16Step = 59 ifTrue: [
            (recoveredBlock6Block16Stack2) userMustBeManagerTo: (recoveredBlock6Block16Stack3) noUserError: (recoveredBlock6Block16Stack4) ifNot: (recoveredBlock6Block16Stack5).
            recoveredBlock6Block16PC := 62.
        ].
        recoveredBlock6Block16Step = 62 ifTrue: [
            recoveredBlock6Block16Stack2 := 282.
            recoveredBlock6Block16PC := 66.
        ].
        recoveredBlock6Block16Step = 66 ifTrue: [
            recoveredBlock6Block16Stack3 := #().
            recoveredBlock6Block16PC := 68.
        ].
        recoveredBlock6Block16Step = 68 ifTrue: [
            recoveredBlock6Block16Stack4 := recoveredArg3.
            recoveredBlock6Block16PC := 71.
        ].
        recoveredBlock6Block16Step = 71 ifTrue: [
            (recoveredBlock6Block16Stack1) mustBeEditionTo: (recoveredBlock6Block16Stack2) withParms: (recoveredBlock6Block16Stack3) ifNot: (recoveredBlock6Block16Stack4).
            recoveredBlock6Block16PC := 74.
        ].
        recoveredBlock6Block16Step = 74 ifTrue: [
            recoveredBlock6Block16Stack1 := recoveredLocal1.
            recoveredBlock6Block16PC := 77.
        ].
        recoveredBlock6Block16Step = 77 ifTrue: [
            recoveredBlock6Block16Stack2 := recoveredArg1.
            recoveredBlock6Block16PC := 80.
        ].
        recoveredBlock6Block16Step = 80 ifTrue: [
            recoveredBlock6Block16Stack2 := (recoveredBlock6Block16Stack2) symbol.
            recoveredBlock6Block16PC := 82.
        ].
        recoveredBlock6Block16Step = 82 ifTrue: [
            recoveredBlock6Block16Stack3 := recoveredArg1.
            recoveredBlock6Block16PC := 85.
        ].
        recoveredBlock6Block16Step = 85 ifTrue: [
            recoveredBlock6Block16Stack3 := (recoveredBlock6Block16Stack3) timeStamp.
            recoveredBlock6Block16PC := 87.
        ].
        recoveredBlock6Block16Step = 87 ifTrue: [
            recoveredBlock6Block16Stack1 := (recoveredBlock6Block16Stack1) at: (recoveredBlock6Block16Stack2) put: (recoveredBlock6Block16Stack3).
            recoveredBlock6Block16PC := 89.
        ].
        recoveredBlock6Block16Step = 89 ifTrue: [
            recoveredBlock6Block16Result := recoveredBlock6Block16Stack1.
            recoveredBlock6Block16Done := true.
        ].
    ].
    recoveredBlock6Block16Result
].
    recoveredBlock6Value3 := (recoveredBlock6Value0) replaceAt: (recoveredBlock6Value1) withPointerFrom: (recoveredBlock6Value2).
    recoveredBlock6Value3
].
    recoveredValue2 := (self) updateDictionaryAt: (recoveredValue0) using: (recoveredValue1).
    ^recoveredValue2
! !

"lib.ic method 0x2001cfa4; bytecode file offset 0x58ffc"
!EmSubApplicationEdition methodsFor: 'recovered'!
isALineUpLoaded
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) library.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isGateway.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) subApplicationDictionary.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := Expression.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) parameterAt: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := EmDictionaryOfTimeStamps.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := (recoveredStack3) library.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) using: (recoveredStack2) from: (recoveredStack3).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) isLineUpLoaded: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredPC := 96.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) subApplicationDictionary.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := [:recoveredBlock56Arg1 | 
    | recoveredBlock56Stack0 recoveredBlock56Stack1 recoveredBlock56Stack2 recoveredBlock56Stack3 recoveredBlock56Stack4 recoveredBlock56Stack5 recoveredBlock56Stack6 recoveredBlock56PC recoveredBlock56Step recoveredBlock56Done recoveredBlock56Result |
    recoveredBlock56Stack0 := self.
    recoveredBlock56PC := 62.
    recoveredBlock56Done := false.
    [recoveredBlock56Done not] whileTrue: [
        recoveredBlock56Step := recoveredBlock56PC.
        recoveredBlock56Step = 62 ifTrue: [
            recoveredBlock56Stack1 := nil.
            recoveredBlock56PC := 63.
        ].
        recoveredBlock56Step = 63 ifTrue: [
            recoveredBlock56Stack2 := self.
            recoveredBlock56PC := 64.
        ].
        recoveredBlock56Step = 64 ifTrue: [
            recoveredBlock56Stack3 := recoveredBlock56Arg1.
            recoveredBlock56PC := 65.
        ].
        recoveredBlock56Step = 65 ifTrue: [
            recoveredBlock56Stack3 := (recoveredBlock56Stack3) name.
            recoveredBlock56PC := 67.
        ].
        recoveredBlock56Step = 67 ifTrue: [
            recoveredBlock56Stack2 := (recoveredBlock56Stack2) isExpressionValid: (recoveredBlock56Stack3).
            recoveredBlock56PC := 69.
        ].
        recoveredBlock56Step = 69 ifTrue: [
            (recoveredBlock56Stack2) ifTrue: [recoveredBlock56PC := 72] ifFalse: [recoveredBlock56PC := 93].
        ].
        recoveredBlock56Step = 72 ifTrue: [
            recoveredBlock56PC := 73.
        ].
        recoveredBlock56Step = 73 ifTrue: [
            recoveredBlock56Stack1 := nil.
            recoveredBlock56PC := 74.
        ].
        recoveredBlock56Step = 74 ifTrue: [
            recoveredBlock56Stack2 := self.
            recoveredBlock56PC := 75.
        ].
        recoveredBlock56Step = 75 ifTrue: [
            recoveredBlock56Stack3 := EmDictionaryOfTimeStamps.
            recoveredBlock56PC := 77.
        ].
        recoveredBlock56Step = 77 ifTrue: [
            recoveredBlock56Stack4 := recoveredBlock56Arg1.
            recoveredBlock56PC := 78.
        ].
        recoveredBlock56Step = 78 ifTrue: [
            recoveredBlock56Stack4 := (recoveredBlock56Stack4) value.
            recoveredBlock56PC := 80.
        ].
        recoveredBlock56Step = 80 ifTrue: [
            recoveredBlock56Stack5 := self.
            recoveredBlock56PC := 81.
        ].
        recoveredBlock56Step = 81 ifTrue: [
            recoveredBlock56Stack5 := (recoveredBlock56Stack5) library.
            recoveredBlock56PC := 82.
        ].
        recoveredBlock56Step = 82 ifTrue: [
            recoveredBlock56Stack3 := (recoveredBlock56Stack3) using: (recoveredBlock56Stack4) from: (recoveredBlock56Stack5).
            recoveredBlock56PC := 84.
        ].
        recoveredBlock56Step = 84 ifTrue: [
            recoveredBlock56Stack2 := (recoveredBlock56Stack2) isLineUpLoaded: (recoveredBlock56Stack3).
            recoveredBlock56PC := 86.
        ].
        recoveredBlock56Step = 86 ifTrue: [
            (recoveredBlock56Stack2) ifTrue: [recoveredBlock56PC := 90] ifFalse: [recoveredBlock56PC := 93].
        ].
        recoveredBlock56Step = 90 ifTrue: [
            recoveredBlock56PC := 91.
        ].
        recoveredBlock56Step = 91 ifTrue: [
            recoveredBlock56Stack1 := true.
            recoveredBlock56PC := 92.
        ].
        recoveredBlock56Step = 92 ifTrue: [
            ^recoveredBlock56Stack1
        ].
        recoveredBlock56Step = 93 ifTrue: [
            recoveredBlock56Result := recoveredBlock56Stack1.
            recoveredBlock56Done := true.
        ].
    ].
    recoveredBlock56Result
].
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack0) forAllEntriesDo: (recoveredStack1).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2001d1cc; bytecode file offset 0x5923c"
!EmSubApplicationEdition methodsFor: 'recovered'!
subApplicationConfigurations
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := (self) subApplicationDictionary.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 recoveredBlock11Value4 recoveredBlock11Value5 recoveredBlock11Value6 recoveredBlock11Value7 recoveredBlock11Value8 recoveredBlock11Value9 recoveredBlock11Value10 recoveredBlock11Value11 |
    recoveredBlock11Value0 := recoveredLocal2.
    recoveredBlock11Value1 := Association.
    recoveredBlock11Value2 := recoveredBlock11Arg1.
    recoveredBlock11Value3 := (recoveredBlock11Value2) name.
    recoveredBlock11Value4 := EmDictionaryOfTimeStamps.
    recoveredBlock11Value5 := recoveredBlock11Arg1.
    recoveredBlock11Value6 := (recoveredBlock11Value5) value.
    recoveredBlock11Value7 := (self) library.
    recoveredBlock11Value8 := (recoveredBlock11Value4) using: (recoveredBlock11Value6) from: (recoveredBlock11Value7).
    recoveredBlock11Value9 := (recoveredBlock11Value8) asDictionary.
    recoveredBlock11Value10 := (recoveredBlock11Value1) key: (recoveredBlock11Value3) value: (recoveredBlock11Value9).
    recoveredBlock11Value11 := (recoveredBlock11Value0) addFirst: (recoveredBlock11Value10).
    recoveredBlock11Value11
].
    (recoveredValue2) forAllEntriesDo: (recoveredValue3).
    recoveredValue4 := recoveredLocal2.
    recoveredValue5 := [:recoveredBlock48Arg1 | 
    | recoveredBlock48Value0 recoveredBlock48Value1 recoveredBlock48Value2 recoveredBlock48Value3 recoveredBlock48Value4 recoveredBlock48Value5 recoveredBlock48Value6 recoveredBlock48Value7 |
    recoveredBlock48Value0 := Dictionary.
    recoveredBlock48Value1 := (recoveredBlock48Value0) new.
    recoveredLocal1 := recoveredBlock48Value1.
    recoveredBlock48Value2 := recoveredBlock48Arg1.
    recoveredBlock48Value3 := (recoveredBlock48Value2) value.
    recoveredBlock48Value4 := [:recoveredBlock48Block63Arg1 | 
    | recoveredBlock48Block63Value0 recoveredBlock48Block63Value1 recoveredBlock48Block63Value2 recoveredBlock48Block63Value3 recoveredBlock48Block63Value4 recoveredBlock48Block63Value5 recoveredBlock48Block63Value6 |
    recoveredBlock48Block63Value0 := recoveredLocal1.
    recoveredBlock48Block63Value1 := recoveredBlock48Block63Arg1.
    recoveredBlock48Block63Value2 := (recoveredBlock48Block63Value1) key.
    recoveredBlock48Block63Value3 := (recoveredBlock48Block63Value2) asSymbol.
    recoveredBlock48Block63Value4 := recoveredBlock48Block63Arg1.
    recoveredBlock48Block63Value5 := (recoveredBlock48Block63Value4) value.
    recoveredBlock48Block63Value6 := (recoveredBlock48Block63Value0) at: (recoveredBlock48Block63Value3) put: (recoveredBlock48Block63Value5).
    recoveredBlock48Block63Value6
].
    (recoveredBlock48Value3) associationsDo: (recoveredBlock48Value4).
    recoveredBlock48Value5 := recoveredBlock48Arg1.
    recoveredBlock48Value6 := recoveredLocal1.
    recoveredBlock48Value7 := (recoveredBlock48Value5) value: (recoveredBlock48Value6).
    recoveredBlock48Value7
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := recoveredLocal2.
    ^recoveredValue6
! !

"lib.ic method 0x2001d514; bytecode file offset 0x59564"
!EmSubApplicationEdition methodsFor: 'recovered'!
userHasRightTo: recoveredArg1 forEachIn: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) statusFor: (recoveredStack1).
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
            recoveredStack1 := 'world'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 'group'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 31] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) groupMembers.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := EmUser.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentID.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := 'owner'.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 59] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := [:recoveredBlock39Arg1 | 
    | recoveredBlock39Value0 recoveredBlock39Value1 recoveredBlock39Value2 recoveredBlock39Value3 recoveredBlock39Value4 |
    recoveredBlock39Value0 := EmUser.
    recoveredBlock39Value1 := (recoveredBlock39Value0) currentID.
    recoveredBlock39Value2 := recoveredBlock39Arg1.
    recoveredBlock39Value3 := (self) ownerOf: (recoveredBlock39Value2).
    recoveredBlock39Value4 := (recoveredBlock39Value1) = (recoveredBlock39Value3).
    recoveredBlock39Value4
].
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) conform: (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := 'managerorowner'.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 99] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := EmUser.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentID.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := (recoveredStack2) manager.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 98] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := [:recoveredBlock80Arg1 | 
    | recoveredBlock80Value0 recoveredBlock80Value1 recoveredBlock80Value2 recoveredBlock80Value3 recoveredBlock80Value4 |
    recoveredBlock80Value0 := EmUser.
    recoveredBlock80Value1 := (recoveredBlock80Value0) currentID.
    recoveredBlock80Value2 := recoveredBlock80Arg1.
    recoveredBlock80Value3 := (self) ownerOf: (recoveredBlock80Value2).
    recoveredBlock80Value4 := (recoveredBlock80Value1) = (recoveredBlock80Value3).
    recoveredBlock80Value4
].
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := (recoveredStack0) conform: (recoveredStack1).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2001d964; bytecode file offset 0x599a8"
!EmSubApplicationEdition methodsFor: 'recovered'!
replaceGroupMember: recoveredArg1 with: recoveredArg2
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
            recoveredStack2 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) groupMembers.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexOf: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 42].
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
            recoveredStack0 := (recoveredStack0) addGroupMember: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) groupMembers.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexOf: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := [:recoveredBlock52Arg1 | 
    | recoveredBlock52Stack0 recoveredBlock52Stack1 recoveredBlock52Stack2 recoveredBlock52Stack3 recoveredBlock52Stack4 recoveredBlock52PC recoveredBlock52Step recoveredBlock52Done recoveredBlock52Result |
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
            recoveredBlock52Stack2 := recoveredLocal1.
            recoveredBlock52PC := 62.
        ].
        recoveredBlock52Step = 62 ifTrue: [
            recoveredBlock52Stack3 := recoveredBlock52Arg1.
            recoveredBlock52PC := 63.
        ].
        recoveredBlock52Step = 63 ifTrue: [
            recoveredBlock52Stack3 := (recoveredBlock52Stack3) indexOfOwner.
            recoveredBlock52PC := 64.
        ].
        recoveredBlock52Step = 64 ifTrue: [
            recoveredBlock52Stack2 := (recoveredBlock52Stack2) = (recoveredBlock52Stack3).
            recoveredBlock52PC := 65.
        ].
        recoveredBlock52Step = 65 ifTrue: [
            (recoveredBlock52Stack2) ifTrue: [recoveredBlock52PC := 68] ifFalse: [recoveredBlock52PC := 75].
        ].
        recoveredBlock52Step = 68 ifTrue: [
            recoveredBlock52PC := 69.
        ].
        recoveredBlock52Step = 69 ifTrue: [
            recoveredBlock52Stack1 := recoveredBlock52Arg1.
            recoveredBlock52PC := 70.
        ].
        recoveredBlock52Step = 70 ifTrue: [
            recoveredBlock52Stack2 := recoveredLocal2.
            recoveredBlock52PC := 73.
        ].
        recoveredBlock52Step = 73 ifTrue: [
            recoveredBlock52Stack1 := (recoveredBlock52Stack1) indexOfOwner: (recoveredBlock52Stack2).
            recoveredBlock52PC := 75.
        ].
        recoveredBlock52Step = 75 ifTrue: [
            recoveredBlock52Result := recoveredBlock52Stack1.
            recoveredBlock52Done := true.
        ].
    ].
    recoveredBlock52Result
].
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0) forAllEntriesDo: (recoveredStack1).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexOfManager.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 94].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack0) indexOfManager: (recoveredStack1).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack0) removeGroupMember: (recoveredStack1).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2001e070; bytecode file offset 0x5a0d0"
!EmSubApplicationEdition methodsFor: 'recovered'!
statusFor: recoveredArg1 is: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) privilegeNames.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexOf: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := MxEMc125.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) fatalError: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := 4294967295.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := 3.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (-1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitShift: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) privilegesLong.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) bitAnd: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := 'changeClassOwners'.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := 'managerorowner'.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0 == recoveredStack1) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) setBit: (recoveredStack1).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredPC := 98.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := 'world'.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack0 == recoveredStack1) ifTrue: [recoveredPC := 98] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := 'group'.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredPC := 95.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) setBit: (recoveredStack1).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack0) privilegesLong: (recoveredStack1).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := (recoveredStack0) insert.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20021264; bytecode file offset 0x5d2e4"
!EmSubApplicationEdition methodsFor: 'recovered'!
insertClassName: recoveredArg1 type: recoveredArg2 ifUnable: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EmUser.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentID.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) isGroupMember: (recoveredStack1) ifNot: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) entryAt: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 89] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDeleted.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) classType: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) groupMembers.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexOf: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) indexOfOwner: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) insert.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredPC := 88.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) groupMembers.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexOfOwner.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 87] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := 27.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack5 := recoveredLocal2.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack4 := (recoveredStack4) userFullNameForLogging: (recoveredStack5).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack5 := (recoveredStack5) application.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack5 := (recoveredStack5) signature.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack0) stopAndReport: (recoveredStack1) withParms: (recoveredStack2) exitUsing: (recoveredStack3).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := nil.
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
            recoveredStack1 := 287.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack4 := (recoveredStack4) application.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack4 := (recoveredStack4) symbol.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack0) mustBeEditionTo: (recoveredStack1) withParms: (recoveredStack2) ifNot: (recoveredStack3).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := (recoveredStack1) entryClass.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := (recoveredStack1) named: (recoveredStack2).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack2) classType: (recoveredStack3).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack2 := (recoveredStack2) groupMembers.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := (recoveredStack2) indexOf: (recoveredStack3).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexOfOwner: (recoveredStack2).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := (recoveredStack0) addNewEntry: (recoveredStack1).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20021354; bytecode file offset 0x5d3c4"
!EmSubApplicationEdition methodsFor: 'recovered'!
releaseEachClassIn: recoveredArg1 ifUnable: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg2.
    (self) mustBeEditionTo: (288) withParms: (#()) ifNot: (recoveredValue0).
    recoveredValue1 := [:recoveredBlock17Arg1 | 
    | recoveredBlock17Local1 recoveredBlock17Stack0 recoveredBlock17Stack1 recoveredBlock17Stack2 recoveredBlock17Stack3 recoveredBlock17Stack4 recoveredBlock17Stack5 recoveredBlock17PC recoveredBlock17Step recoveredBlock17Done recoveredBlock17Result |
    recoveredBlock17Stack0 := self.
    recoveredBlock17PC := 24.
    recoveredBlock17Done := false.
    [recoveredBlock17Done not] whileTrue: [
        recoveredBlock17Step := recoveredBlock17PC.
        recoveredBlock17Step = 24 ifTrue: [
            recoveredBlock17Stack1 := recoveredBlock17Arg1.
            recoveredBlock17PC := 27.
        ].
        recoveredBlock17Step = 27 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) isDeleted.
            recoveredBlock17PC := 28.
        ].
        recoveredBlock17Step = 28 ifTrue: [
            (recoveredBlock17Stack1) ifTrue: [recoveredBlock17PC := 32] ifFalse: [recoveredBlock17PC := 36].
        ].
        recoveredBlock17Step = 32 ifTrue: [
            recoveredBlock17Stack1 := nil.
            recoveredBlock17PC := 33.
        ].
        recoveredBlock17Step = 33 ifTrue: [
            recoveredBlock17PC := 59.
        ].
        recoveredBlock17Step = 36 ifTrue: [
            recoveredBlock17Stack1 := recoveredArg1.
            recoveredBlock17PC := 39.
        ].
        recoveredBlock17Step = 39 ifTrue: [
            recoveredBlock17Stack2 := [:recoveredBlock17Block39Arg1 | 
    | recoveredBlock17Block39Value0 recoveredBlock17Block39Value1 recoveredBlock17Block39Value2 recoveredBlock17Block39Value3 recoveredBlock17Block39Value4 |
    recoveredBlock17Block39Value0 := recoveredBlock17Block39Arg1.
    recoveredBlock17Block39Value1 := (recoveredBlock17Block39Value0) symbol.
    recoveredBlock17Block39Value2 := recoveredBlock17Arg1.
    recoveredBlock17Block39Value3 := (recoveredBlock17Block39Value2) className.
    recoveredBlock17Block39Value4 := (recoveredBlock17Block39Value1) == (recoveredBlock17Block39Value3).
    recoveredBlock17Block39Value4
].
            recoveredBlock17PC := 55.
        ].
        recoveredBlock17Step = 55 ifTrue: [
            recoveredBlock17Stack3 := [].
            recoveredBlock17PC := 57.
        ].
        recoveredBlock17Step = 57 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) detect: (recoveredBlock17Stack2) ifNone: (recoveredBlock17Stack3).
            recoveredBlock17PC := 59.
        ].
        recoveredBlock17Step = 59 ifTrue: [
            recoveredBlock17Local1 := recoveredBlock17Stack1.
            recoveredBlock17PC := 62.
        ].
        recoveredBlock17Step = 62 ifTrue: [
            recoveredBlock17Stack1 := nil.
            recoveredBlock17PC := 63.
        ].
        recoveredBlock17Step = 63 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Local1.
            recoveredBlock17PC := 66.
        ].
        recoveredBlock17Step = 66 ifTrue: [
            (recoveredBlock17Stack2 == nil) ifTrue: [recoveredBlock17PC := 127] ifFalse: [recoveredBlock17PC := 70].
        ].
        recoveredBlock17Step = 70 ifTrue: [
            recoveredBlock17PC := 71.
        ].
        recoveredBlock17Step = 71 ifTrue: [
            recoveredBlock17Stack1 := recoveredArg1.
            recoveredBlock17PC := 74.
        ].
        recoveredBlock17Step = 74 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Local1.
            recoveredBlock17PC := 77.
        ].
        recoveredBlock17Step = 77 ifTrue: [
            (recoveredBlock17Stack1) remove: (recoveredBlock17Stack2).
            recoveredBlock17PC := 79.
        ].
        recoveredBlock17Step = 79 ifTrue: [
            recoveredBlock17Stack1 := EmUser.
            recoveredBlock17PC := 81.
        ].
        recoveredBlock17Step = 81 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) currentID.
            recoveredBlock17PC := 83.
        ].
        recoveredBlock17Step = 83 ifTrue: [
            recoveredBlock17Stack2 := self.
            recoveredBlock17PC := 84.
        ].
        recoveredBlock17Step = 84 ifTrue: [
            recoveredBlock17Stack3 := recoveredBlock17Arg1.
            recoveredBlock17PC := 87.
        ].
        recoveredBlock17Step = 87 ifTrue: [
            recoveredBlock17Stack3 := (recoveredBlock17Stack3) indexOfOwner.
            recoveredBlock17PC := 89.
        ].
        recoveredBlock17Step = 89 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) groupMemberAt: (recoveredBlock17Stack3).
            recoveredBlock17PC := 91.
        ].
        recoveredBlock17Step = 91 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) = (recoveredBlock17Stack2).
            recoveredBlock17PC := 92.
        ].
        recoveredBlock17Step = 92 ifTrue: [
            (recoveredBlock17Stack1) ifTrue: [recoveredBlock17PC := 114] ifFalse: [recoveredBlock17PC := 96].
        ].
        recoveredBlock17Step = 96 ifTrue: [
            recoveredBlock17Stack1 := self.
            recoveredBlock17PC := 97.
        ].
        recoveredBlock17Step = 97 ifTrue: [
            recoveredBlock17Stack2 := 30.
            recoveredBlock17PC := 99.
        ].
        recoveredBlock17Step = 99 ifTrue: [
            recoveredBlock17Stack3 := Array.
            recoveredBlock17PC := 101.
        ].
        recoveredBlock17Step = 101 ifTrue: [
            recoveredBlock17Stack4 := recoveredBlock17Arg1.
            recoveredBlock17PC := 104.
        ].
        recoveredBlock17Step = 104 ifTrue: [
            recoveredBlock17Stack4 := (recoveredBlock17Stack4) className.
            recoveredBlock17PC := 106.
        ].
        recoveredBlock17Step = 106 ifTrue: [
            recoveredBlock17Stack3 := (recoveredBlock17Stack3) with: (recoveredBlock17Stack4).
            recoveredBlock17PC := 108.
        ].
        recoveredBlock17Step = 108 ifTrue: [
            recoveredBlock17Stack4 := recoveredArg2.
            recoveredBlock17PC := 111.
        ].
        recoveredBlock17Step = 111 ifTrue: [
            (recoveredBlock17Stack1) stopAndReport: (recoveredBlock17Stack2) withParms: (recoveredBlock17Stack3) exitUsing: (recoveredBlock17Stack4).
            recoveredBlock17PC := 114.
        ].
        recoveredBlock17Step = 114 ifTrue: [
            recoveredBlock17Stack1 := recoveredBlock17Arg1.
            recoveredBlock17PC := 117.
        ].
        recoveredBlock17Step = 117 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Local1.
            recoveredBlock17PC := 120.
        ].
        recoveredBlock17Step = 120 ifTrue: [
            recoveredBlock17Stack3 := self.
            recoveredBlock17PC := 121.
        ].
        recoveredBlock17Step = 121 ifTrue: [
            recoveredBlock17Stack3 := (recoveredBlock17Stack3) application.
            recoveredBlock17PC := 123.
        ].
        recoveredBlock17Step = 123 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) timeStampIn: (recoveredBlock17Stack3).
            recoveredBlock17PC := 125.
        ].
        recoveredBlock17Step = 125 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) timeStamp: (recoveredBlock17Stack2).
            recoveredBlock17PC := 127.
        ].
        recoveredBlock17Step = 127 ifTrue: [
            recoveredBlock17Result := recoveredBlock17Stack1.
            recoveredBlock17Done := true.
        ].
    ].
    recoveredBlock17Result
].
    (self) forAllEntriesDo: (recoveredValue1).
    recoveredValue2 := (self) insert.
    ^recoveredValue2
! !

"lib.ic method 0x20023ed8; bytecode file offset 0x5ff34"
!EmSubApplicationEdition methodsFor: 'recovered'!
removeGroupMember: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) groupMembers.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexOf: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 152] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexOfManager.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 49].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) indexOfManager: (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := [:recoveredBlock50Arg1 | 
    | recoveredBlock50Stack0 recoveredBlock50Stack1 recoveredBlock50Stack2 recoveredBlock50Stack3 recoveredBlock50Stack4 recoveredBlock50PC recoveredBlock50Step recoveredBlock50Done recoveredBlock50Result |
    recoveredBlock50Stack0 := self.
    recoveredBlock50PC := 56.
    recoveredBlock50Done := false.
    [recoveredBlock50Done not] whileTrue: [
        recoveredBlock50Step := recoveredBlock50PC.
        recoveredBlock50Step = 56 ifTrue: [
            recoveredBlock50Stack1 := nil.
            recoveredBlock50PC := 57.
        ].
        recoveredBlock50Step = 57 ifTrue: [
            recoveredBlock50Stack2 := recoveredBlock50Arg1.
            recoveredBlock50PC := 58.
        ].
        recoveredBlock50Step = 58 ifTrue: [
            recoveredBlock50Stack2 := (recoveredBlock50Stack2) indexOfOwner.
            recoveredBlock50PC := 60.
        ].
        recoveredBlock50Step = 60 ifTrue: [
            recoveredBlock50Stack3 := recoveredBlock50Stack2.
            recoveredBlock50PC := 61.
        ].
        recoveredBlock50Step = 61 ifTrue: [
            recoveredLocal3 := recoveredBlock50Stack3.
            recoveredBlock50PC := 64.
        ].
        recoveredBlock50Step = 64 ifTrue: [
            recoveredBlock50Stack3 := recoveredLocal4.
            recoveredBlock50PC := 67.
        ].
        recoveredBlock50Step = 67 ifTrue: [
            recoveredBlock50Stack2 := (recoveredBlock50Stack2) > (recoveredBlock50Stack3).
            recoveredBlock50PC := 68.
        ].
        recoveredBlock50Step = 68 ifTrue: [
            (recoveredBlock50Stack2) ifTrue: [recoveredBlock50PC := 72] ifFalse: [recoveredBlock50PC := 80].
        ].
        recoveredBlock50Step = 72 ifTrue: [
            recoveredBlock50PC := 73.
        ].
        recoveredBlock50Step = 73 ifTrue: [
            recoveredBlock50Stack1 := recoveredBlock50Arg1.
            recoveredBlock50PC := 74.
        ].
        recoveredBlock50Step = 74 ifTrue: [
            recoveredBlock50Stack2 := recoveredLocal3.
            recoveredBlock50PC := 77.
        ].
        recoveredBlock50Step = 77 ifTrue: [
            recoveredBlock50Stack2 := (recoveredBlock50Stack2) + (-1).
            recoveredBlock50PC := 78.
        ].
        recoveredBlock50Step = 78 ifTrue: [
            recoveredBlock50Stack1 := (recoveredBlock50Stack1) indexOfOwner: (recoveredBlock50Stack2).
            recoveredBlock50PC := 80.
        ].
        recoveredBlock50Step = 80 ifTrue: [
            recoveredBlock50Result := recoveredBlock50Stack1.
            recoveredBlock50Done := true.
        ].
    ].
    recoveredBlock50Result
].
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0) forAllEntriesDo: (recoveredStack1).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) groupMembersIndex.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyWithout: (recoveredStack1).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := [:recoveredBlock97Arg1 | 
    | recoveredBlock97Value0 recoveredBlock97Value1 recoveredBlock97Value2 recoveredBlock97Value3 recoveredBlock97Value4 recoveredBlock97Value5 recoveredBlock97Value6 |
    recoveredBlock97Value0 := recoveredLocal2.
    recoveredBlock97Value1 := recoveredBlock97Arg1.
    (self) at: (recoveredBlock97Value0) putName: (recoveredBlock97Value1).
    recoveredBlock97Value2 := recoveredLocal2.
    recoveredBlock97Value3 := recoveredLocal2.
    recoveredBlock97Value4 := (self) totalNameSizeAt: (recoveredBlock97Value3).
    recoveredBlock97Value5 := (recoveredBlock97Value2) + (recoveredBlock97Value4).
    recoveredBlock97Value6 := recoveredBlock97Value5.
    recoveredLocal2 := recoveredBlock97Value6.
    recoveredBlock97Value5
].
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := (recoveredStack0) entriesIndex.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack3 := (recoveredStack3) - (recoveredStack4).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            (recoveredStack1) shiftContentsStartingAt: (recoveredStack2) by: (recoveredStack3).
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            (recoveredStack0) entriesIndex: (recoveredStack1).
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20026c34; bytecode file offset 0x62ca8"
!EmSubApplicationEdition methodsFor: 'recovered'!
differencesWith: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) classes.
    recoveredLocal5 := recoveredValue1.
    recoveredValue2 := Dictionary.
    recoveredValue3 := recoveredLocal5.
    recoveredValue4 := (recoveredValue3) size.
    recoveredValue5 := (recoveredValue4) * (2).
    recoveredValue6 := (recoveredValue2) new: (recoveredValue5).
    recoveredLocal4 := recoveredValue6.
    recoveredValue7 := Dictionary.
    recoveredValue8 := recoveredLocal5.
    recoveredValue9 := (recoveredValue8) size.
    recoveredValue10 := (recoveredValue9) * (2).
    recoveredValue11 := (recoveredValue7) new: (recoveredValue10).
    recoveredLocal3 := recoveredValue11.
    recoveredValue12 := recoveredLocal5.
    recoveredValue13 := [:recoveredBlock40Arg1 | 
    | recoveredBlock40Value0 recoveredBlock40Value1 recoveredBlock40Value2 recoveredBlock40Value3 recoveredBlock40Value4 |
    recoveredBlock40Value0 := recoveredLocal3.
    recoveredBlock40Value1 := recoveredBlock40Arg1.
    recoveredBlock40Value2 := (recoveredBlock40Value1) symbol.
    recoveredBlock40Value3 := recoveredBlock40Arg1.
    recoveredBlock40Value4 := (recoveredBlock40Value0) at: (recoveredBlock40Value2) put: (recoveredBlock40Value3).
    recoveredBlock40Value4
].
    (recoveredValue12) do: (recoveredValue13).
    recoveredValue14 := [:recoveredBlock58Arg1 | 
    | recoveredBlock58Stack0 recoveredBlock58Stack1 recoveredBlock58Stack2 recoveredBlock58Stack3 recoveredBlock58Stack4 recoveredBlock58Stack5 recoveredBlock58Stack6 recoveredBlock58PC recoveredBlock58Step recoveredBlock58Done recoveredBlock58Result |
    recoveredBlock58Stack0 := self.
    recoveredBlock58PC := 64.
    recoveredBlock58Done := false.
    [recoveredBlock58Done not] whileTrue: [
        recoveredBlock58Step := recoveredBlock58PC.
        recoveredBlock58Step = 64 ifTrue: [
            recoveredBlock58Stack1 := nil.
            recoveredBlock58PC := 65.
        ].
        recoveredBlock58Step = 65 ifTrue: [
            recoveredBlock58Stack2 := recoveredBlock58Arg1.
            recoveredBlock58PC := 66.
        ].
        recoveredBlock58Step = 66 ifTrue: [
            recoveredBlock58Stack2 := (recoveredBlock58Stack2) isDeleted.
            recoveredBlock58PC := 68.
        ].
        recoveredBlock58Step = 68 ifTrue: [
            (recoveredBlock58Stack2) ifTrue: [recoveredBlock58PC := 153] ifFalse: [recoveredBlock58PC := 72].
        ].
        recoveredBlock58Step = 72 ifTrue: [
            recoveredBlock58PC := 73.
        ].
        recoveredBlock58Step = 73 ifTrue: [
            recoveredBlock58Stack1 := recoveredBlock58Arg1.
            recoveredBlock58PC := 74.
        ].
        recoveredBlock58Step = 74 ifTrue: [
            recoveredBlock58Stack1 := (recoveredBlock58Stack1) className.
            recoveredBlock58PC := 76.
        ].
        recoveredBlock58Step = 76 ifTrue: [
            recoveredLocal2 := recoveredBlock58Stack1.
            recoveredBlock58PC := 79.
        ].
        recoveredBlock58Step = 79 ifTrue: [
            recoveredBlock58Stack1 := recoveredBlock58Arg1.
            recoveredBlock58PC := 80.
        ].
        recoveredBlock58Step = 80 ifTrue: [
            recoveredBlock58Stack1 := (recoveredBlock58Stack1) timeStamp.
            recoveredBlock58PC := 82.
        ].
        recoveredBlock58Step = 82 ifTrue: [
            recoveredBlock58Stack2 := recoveredArg1.
            recoveredBlock58PC := 85.
        ].
        recoveredBlock58Step = 85 ifTrue: [
            recoveredBlock58Stack3 := recoveredLocal2.
            recoveredBlock58PC := 88.
        ].
        recoveredBlock58Step = 88 ifTrue: [
            recoveredBlock58Stack2 := (recoveredBlock58Stack2) timeStampFor: (recoveredBlock58Stack3).
            recoveredBlock58PC := 90.
        ].
        recoveredBlock58Step = 90 ifTrue: [
            recoveredBlock58Stack1 := (recoveredBlock58Stack1) = (recoveredBlock58Stack2).
            recoveredBlock58PC := 91.
        ].
        recoveredBlock58Step = 91 ifTrue: [
            (recoveredBlock58Stack1) ifTrue: [recoveredBlock58PC := 143] ifFalse: [recoveredBlock58PC := 94].
        ].
        recoveredBlock58Step = 94 ifTrue: [
            recoveredBlock58Stack1 := recoveredLocal3.
            recoveredBlock58PC := 97.
        ].
        recoveredBlock58Step = 97 ifTrue: [
            recoveredBlock58Stack2 := recoveredLocal2.
            recoveredBlock58PC := 100.
        ].
        recoveredBlock58Step = 100 ifTrue: [
            recoveredBlock58Stack3 := [
    | recoveredBlock58Block100Value0 recoveredBlock58Block100Value1 recoveredBlock58Block100Value2 recoveredBlock58Block100Value3 recoveredBlock58Block100Value4 |
    recoveredBlock58Block100Value0 := EmShadowClass.
    recoveredBlock58Block100Value1 := recoveredLocal2.
    recoveredBlock58Block100Value2 := (recoveredBlock58Block100Value0) named: (recoveredBlock58Block100Value1).
    recoveredBlock58Block100Value3 := recoveredArg1.
    recoveredBlock58Block100Value4 := (recoveredBlock58Block100Value2) controller: (recoveredBlock58Block100Value3).
    recoveredBlock58Block100Value4
].
            recoveredBlock58PC := 119.
        ].
        recoveredBlock58Step = 119 ifTrue: [
            recoveredBlock58Stack1 := (recoveredBlock58Stack1) at: (recoveredBlock58Stack2) ifAbsent: (recoveredBlock58Stack3).
            recoveredBlock58PC := 121.
        ].
        recoveredBlock58Step = 121 ifTrue: [
            recoveredLocal1 := recoveredBlock58Stack1.
            recoveredBlock58PC := 124.
        ].
        recoveredBlock58Step = 124 ifTrue: [
            recoveredBlock58Stack1 := recoveredLocal4.
            recoveredBlock58PC := 127.
        ].
        recoveredBlock58Step = 127 ifTrue: [
            recoveredBlock58Stack2 := recoveredLocal1.
            recoveredBlock58PC := 130.
        ].
        recoveredBlock58Step = 130 ifTrue: [
            recoveredBlock58Stack3 := recoveredLocal1.
            recoveredBlock58PC := 133.
        ].
        recoveredBlock58Step = 133 ifTrue: [
            recoveredBlock58Stack4 := recoveredBlock58Arg1.
            recoveredBlock58PC := 134.
        ].
        recoveredBlock58Step = 134 ifTrue: [
            recoveredBlock58Stack4 := (recoveredBlock58Stack4) timeStamp.
            recoveredBlock58PC := 136.
        ].
        recoveredBlock58Step = 136 ifTrue: [
            recoveredBlock58Stack5 := recoveredArg1.
            recoveredBlock58PC := 139.
        ].
        recoveredBlock58Step = 139 ifTrue: [
            recoveredBlock58Stack3 := (recoveredBlock58Stack3) changesSince: (recoveredBlock58Stack4) in: (recoveredBlock58Stack5).
            recoveredBlock58PC := 141.
        ].
        recoveredBlock58Step = 141 ifTrue: [
            (recoveredBlock58Stack1) at: (recoveredBlock58Stack2) put: (recoveredBlock58Stack3).
            recoveredBlock58PC := 143.
        ].
        recoveredBlock58Step = 143 ifTrue: [
            recoveredBlock58Stack1 := recoveredLocal3.
            recoveredBlock58PC := 146.
        ].
        recoveredBlock58Step = 146 ifTrue: [
            recoveredBlock58Stack2 := recoveredLocal2.
            recoveredBlock58PC := 149.
        ].
        recoveredBlock58Step = 149 ifTrue: [
            recoveredBlock58Stack3 := [].
            recoveredBlock58PC := 151.
        ].
        recoveredBlock58Step = 151 ifTrue: [
            recoveredBlock58Stack1 := (recoveredBlock58Stack1) removeKey: (recoveredBlock58Stack2) ifAbsent: (recoveredBlock58Stack3).
            recoveredBlock58PC := 153.
        ].
        recoveredBlock58Step = 153 ifTrue: [
            recoveredBlock58Result := recoveredBlock58Stack1.
            recoveredBlock58Done := true.
        ].
    ].
    recoveredBlock58Result
].
    (self) forAllEntriesDo: (recoveredValue14).
    recoveredValue15 := recoveredLocal3.
    recoveredValue16 := [:recoveredBlock159Arg1 | 
    | recoveredBlock159Value0 recoveredBlock159Value1 recoveredBlock159Value2 recoveredBlock159Value3 recoveredBlock159Value4 recoveredBlock159Value5 recoveredBlock159Value6 recoveredBlock159Value7 |
    recoveredBlock159Value0 := recoveredLocal4.
    recoveredBlock159Value1 := recoveredBlock159Arg1.
    recoveredBlock159Value2 := recoveredBlock159Arg1.
    recoveredBlock159Value3 := EmTimeStamp.
    recoveredBlock159Value4 := (recoveredBlock159Value3) undefined.
    recoveredBlock159Value5 := recoveredArg1.
    recoveredBlock159Value6 := (recoveredBlock159Value2) changesSince: (recoveredBlock159Value4) in: (recoveredBlock159Value5).
    recoveredBlock159Value7 := (recoveredBlock159Value0) at: (recoveredBlock159Value1) put: (recoveredBlock159Value6).
    recoveredBlock159Value7
].
    (recoveredValue15) do: (recoveredValue16).
    recoveredValue17 := recoveredLocal4.
    ^recoveredValue17
! !

"lib.ic method 0x20028460; bytecode file offset 0x644e8"
!EmSubApplicationEdition methodsFor: 'recovered'!
versionName: recoveredArg1 ifUnable: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) containsByteCharacters.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 191.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := Array.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack5 := (recoveredStack5) application.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack5 := (recoveredStack5) signature.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) stopAndReport: (recoveredStack2) withParms: (recoveredStack3) exitUsing: (recoveredStack4).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := 233.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := 232.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) userMustBeManagerTo: (recoveredStack1) noUserError: (recoveredStack2) ifNot: (recoveredStack3).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := 291.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := #().
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) mustBeEditionTo: (recoveredStack1) withParms: (recoveredStack2) ifNot: (recoveredStack3).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) isALineUpLoaded.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 83] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := 117.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack3 := (recoveredStack3) application.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack3 := (recoveredStack3) signature.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0) logError: (recoveredStack1) withParms: (recoveredStack2).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := Set.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := [:recoveredBlock91Arg1 | 
    | recoveredBlock91Stack0 recoveredBlock91Stack1 recoveredBlock91Stack2 recoveredBlock91Stack3 recoveredBlock91Stack4 recoveredBlock91Stack5 recoveredBlock91Stack6 recoveredBlock91PC recoveredBlock91Step recoveredBlock91Done recoveredBlock91Result |
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
            recoveredBlock91Stack1 := (recoveredBlock91Stack1) isDeleted.
            recoveredBlock91PC := 101.
        ].
        recoveredBlock91Step = 101 ifTrue: [
            (recoveredBlock91Stack1) ifTrue: [recoveredBlock91PC := 104] ifFalse: [recoveredBlock91PC := 116].
        ].
        recoveredBlock91Step = 104 ifTrue: [
            recoveredBlock91Stack1 := recoveredLocal2.
            recoveredBlock91PC := 107.
        ].
        recoveredBlock91Step = 107 ifTrue: [
            recoveredBlock91Stack2 := recoveredBlock91Arg1.
            recoveredBlock91PC := 108.
        ].
        recoveredBlock91Step = 108 ifTrue: [
            recoveredBlock91Stack2 := (recoveredBlock91Stack2) className.
            recoveredBlock91PC := 110.
        ].
        recoveredBlock91Step = 110 ifTrue: [
            recoveredBlock91Stack1 := (recoveredBlock91Stack1) add: (recoveredBlock91Stack2).
            recoveredBlock91PC := 112.
        ].
        recoveredBlock91Step = 112 ifTrue: [
            recoveredBlock91PC := 154.
        ].
        recoveredBlock91Step = 116 ifTrue: [
            recoveredBlock91Stack1 := nil.
            recoveredBlock91PC := 117.
        ].
        recoveredBlock91Step = 117 ifTrue: [
            recoveredBlock91Stack2 := recoveredBlock91Arg1.
            recoveredBlock91PC := 118.
        ].
        recoveredBlock91Step = 118 ifTrue: [
            recoveredBlock91Stack2 := (recoveredBlock91Stack2) timeStamp.
            recoveredBlock91PC := 120.
        ].
        recoveredBlock91Step = 120 ifTrue: [
            recoveredBlock91Stack3 := self.
            recoveredBlock91PC := 121.
        ].
        recoveredBlock91Step = 121 ifTrue: [
            recoveredBlock91Stack3 := (recoveredBlock91Stack3) application.
            recoveredBlock91PC := 122.
        ].
        recoveredBlock91Step = 122 ifTrue: [
            recoveredBlock91Stack4 := recoveredBlock91Arg1.
            recoveredBlock91PC := 123.
        ].
        recoveredBlock91Step = 123 ifTrue: [
            recoveredBlock91Stack4 := (recoveredBlock91Stack4) className.
            recoveredBlock91PC := 125.
        ].
        recoveredBlock91Step = 125 ifTrue: [
            recoveredBlock91Stack3 := (recoveredBlock91Stack3) timeStampFor: (recoveredBlock91Stack4).
            recoveredBlock91PC := 127.
        ].
        recoveredBlock91Step = 127 ifTrue: [
            recoveredBlock91Stack2 := (recoveredBlock91Stack2) = (recoveredBlock91Stack3).
            recoveredBlock91PC := 128.
        ].
        recoveredBlock91Step = 128 ifTrue: [
            (recoveredBlock91Stack2) ifTrue: [recoveredBlock91PC := 154] ifFalse: [recoveredBlock91PC := 132].
        ].
        recoveredBlock91Step = 132 ifTrue: [
            recoveredBlock91PC := 133.
        ].
        recoveredBlock91Step = 133 ifTrue: [
            recoveredBlock91Stack1 := false.
            recoveredBlock91PC := 134.
        ].
        recoveredBlock91Step = 134 ifTrue: [
            recoveredLocal1 := recoveredBlock91Stack1.
            recoveredBlock91PC := 137.
        ].
        recoveredBlock91Step = 137 ifTrue: [
            recoveredBlock91Stack1 := self.
            recoveredBlock91PC := 138.
        ].
        recoveredBlock91Step = 138 ifTrue: [
            recoveredBlock91Stack2 := 118.
            recoveredBlock91PC := 142.
        ].
        recoveredBlock91Step = 142 ifTrue: [
            recoveredBlock91Stack3 := Array.
            recoveredBlock91PC := 144.
        ].
        recoveredBlock91Step = 144 ifTrue: [
            recoveredBlock91Stack4 := self.
            recoveredBlock91PC := 145.
        ].
        recoveredBlock91Step = 145 ifTrue: [
            recoveredBlock91Stack4 := (recoveredBlock91Stack4) application.
            recoveredBlock91PC := 146.
        ].
        recoveredBlock91Step = 146 ifTrue: [
            recoveredBlock91Stack4 := (recoveredBlock91Stack4) signature.
            recoveredBlock91PC := 147.
        ].
        recoveredBlock91Step = 147 ifTrue: [
            recoveredBlock91Stack5 := recoveredBlock91Arg1.
            recoveredBlock91PC := 148.
        ].
        recoveredBlock91Step = 148 ifTrue: [
            recoveredBlock91Stack5 := (recoveredBlock91Stack5) className.
            recoveredBlock91PC := 150.
        ].
        recoveredBlock91Step = 150 ifTrue: [
            recoveredBlock91Stack3 := (recoveredBlock91Stack3) with: (recoveredBlock91Stack4) with: (recoveredBlock91Stack5).
            recoveredBlock91PC := 152.
        ].
        recoveredBlock91Step = 152 ifTrue: [
            recoveredBlock91Stack1 := (recoveredBlock91Stack1) logError: (recoveredBlock91Stack2) withParms: (recoveredBlock91Stack3).
            recoveredBlock91PC := 154.
        ].
        recoveredBlock91Step = 154 ifTrue: [
            recoveredBlock91Result := recoveredBlock91Stack1.
            recoveredBlock91Done := true.
        ].
    ].
    recoveredBlock91Result
].
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            (recoveredStack0) forAllEntriesDo: (recoveredStack1).
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 180] ifFalse: [recoveredPC := 164].
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack1 := 32.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack3 := (recoveredStack3) application.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack3 := (recoveredStack3) signature.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            (recoveredStack0) stopAndReport: (recoveredStack1) withParms: (recoveredStack2) exitUsing: (recoveredStack3).
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack1 := [:recoveredBlock183Arg1 | 
    | recoveredBlock183Value0 recoveredBlock183Value1 recoveredBlock183Value2 |
    recoveredBlock183Value0 := recoveredBlock183Arg1.
    recoveredBlock183Value1 := (self) entryAt: (recoveredBlock183Value0).
    recoveredBlock183Value2 := (self) removeEntry: (recoveredBlock183Value1).
    recoveredBlock183Value2
].
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            (recoveredStack1) setVersionName: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            (recoveredStack1) forgetCachedSpace.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack0 := (recoveredStack0) insert.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20028724; bytecode file offset 0x64790"
!EmSubApplicationEdition methodsFor: 'recovered'!
isLineUpLoaded: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) library.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isGateway.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 103].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := SubAppNamesAndTimeStamps.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) parameterAt: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := [:recoveredBlock25Arg1 | 
    | recoveredBlock25Stack0 recoveredBlock25Stack1 recoveredBlock25Stack2 recoveredBlock25Stack3 recoveredBlock25PC recoveredBlock25Step recoveredBlock25Done recoveredBlock25Result |
    recoveredBlock25Stack0 := self.
    recoveredBlock25PC := 32.
    recoveredBlock25Done := false.
    [recoveredBlock25Done not] whileTrue: [
        recoveredBlock25Step := recoveredBlock25PC.
        recoveredBlock25Step = 32 ifTrue: [
            recoveredBlock25Stack1 := recoveredLocal3.
            recoveredBlock25PC := 35.
        ].
        recoveredBlock25Step = 35 ifTrue: [
            recoveredBlock25Stack2 := [:recoveredBlock25Block35Arg1 | 
    | recoveredBlock25Block35Value0 recoveredBlock25Block35Value1 recoveredBlock25Block35Value2 recoveredBlock25Block35Value3 recoveredBlock25Block35Value4 recoveredBlock25Block35Value5 |
    recoveredBlock25Block35Value0 := recoveredBlock25Block35Arg1.
    recoveredBlock25Block35Value1 := (recoveredBlock25Block35Value0) key.
    recoveredBlock25Block35Value2 := recoveredBlock25Arg1.
    recoveredBlock25Block35Value3 := (recoveredBlock25Block35Value2) key.
    recoveredBlock25Block35Value4 := (recoveredBlock25Block35Value3) asSymbol.
    recoveredBlock25Block35Value5 := (recoveredBlock25Block35Value1) = (recoveredBlock25Block35Value4).
    recoveredBlock25Block35Value5
].
            recoveredBlock25PC := 54.
        ].
        recoveredBlock25Step = 54 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) detect: (recoveredBlock25Stack2).
            recoveredBlock25PC := 56.
        ].
        recoveredBlock25Step = 56 ifTrue: [
            recoveredBlock25Stack2 := recoveredBlock25Stack1.
            recoveredBlock25PC := 57.
        ].
        recoveredBlock25Step = 57 ifTrue: [
            recoveredLocal1 := recoveredBlock25Stack2.
            recoveredBlock25PC := 60.
        ].
        recoveredBlock25Step = 60 ifTrue: [
            (recoveredBlock25Stack1 ~~ nil) ifTrue: [recoveredBlock25PC := 66] ifFalse: [recoveredBlock25PC := 64].
        ].
        recoveredBlock25Step = 64 ifTrue: [
            recoveredBlock25Stack1 := false.
            recoveredBlock25PC := 65.
        ].
        recoveredBlock25Step = 65 ifTrue: [
            ^recoveredBlock25Stack1
        ].
        recoveredBlock25Step = 66 ifTrue: [
            recoveredBlock25Stack1 := recoveredLocal1.
            recoveredBlock25PC := 69.
        ].
        recoveredBlock25Step = 69 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) value.
            recoveredBlock25PC := 71.
        ].
        recoveredBlock25Step = 71 ifTrue: [
            recoveredBlock25Stack2 := recoveredBlock25Arg1.
            recoveredBlock25PC := 74.
        ].
        recoveredBlock25Step = 74 ifTrue: [
            recoveredBlock25Stack2 := (recoveredBlock25Stack2) value.
            recoveredBlock25PC := 76.
        ].
        recoveredBlock25Step = 76 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) = (recoveredBlock25Stack2).
            recoveredBlock25PC := 77.
        ].
        recoveredBlock25Step = 77 ifTrue: [
            (recoveredBlock25Stack1) ifTrue: [recoveredBlock25PC := 82] ifFalse: [recoveredBlock25PC := 80].
        ].
        recoveredBlock25Step = 80 ifTrue: [
            recoveredBlock25Stack1 := false.
            recoveredBlock25PC := 81.
        ].
        recoveredBlock25Step = 81 ifTrue: [
            ^recoveredBlock25Stack1
        ].
        recoveredBlock25Step = 82 ifTrue: [
            recoveredBlock25Stack1 := recoveredLocal2.
            recoveredBlock25PC := 85.
        ].
        recoveredBlock25Step = 85 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) + (1).
            recoveredBlock25PC := 86.
        ].
        recoveredBlock25Step = 86 ifTrue: [
            recoveredBlock25Stack2 := recoveredBlock25Stack1.
            recoveredBlock25PC := 87.
        ].
        recoveredBlock25Step = 87 ifTrue: [
            recoveredLocal2 := recoveredBlock25Stack2.
            recoveredBlock25PC := 90.
        ].
        recoveredBlock25Step = 90 ifTrue: [
            recoveredBlock25Result := recoveredBlock25Stack1.
            recoveredBlock25Done := true.
        ].
    ].
    recoveredBlock25Result
].
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack0) forAllEntriesDo: (recoveredStack1).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := (recoveredStack0) application.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := (recoveredStack0) subApplications.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := [:recoveredBlock119Arg1 | 
    | recoveredBlock119Stack0 recoveredBlock119Stack1 recoveredBlock119Stack2 recoveredBlock119Stack3 recoveredBlock119Stack4 recoveredBlock119PC recoveredBlock119Step recoveredBlock119Done recoveredBlock119Result |
    recoveredBlock119Stack0 := self.
    recoveredBlock119PC := 126.
    recoveredBlock119Done := false.
    [recoveredBlock119Done not] whileTrue: [
        recoveredBlock119Step := recoveredBlock119PC.
        recoveredBlock119Step = 126 ifTrue: [
            recoveredBlock119Stack1 := System.
            recoveredBlock119PC := 128.
        ].
        recoveredBlock119Step = 128 ifTrue: [
            recoveredBlock119Stack1 := (recoveredBlock119Stack1) image.
            recoveredBlock119PC := 130.
        ].
        recoveredBlock119Step = 130 ifTrue: [
            recoveredBlock119Stack1 := (recoveredBlock119Stack1) loadedSubApplications.
            recoveredBlock119PC := 132.
        ].
        recoveredBlock119Step = 132 ifTrue: [
            recoveredBlock119Stack2 := [:recoveredBlock119Block132Arg1 | 
    | recoveredBlock119Block132Value0 recoveredBlock119Block132Value1 recoveredBlock119Block132Value2 recoveredBlock119Block132Value3 recoveredBlock119Block132Value4 recoveredBlock119Block132Value5 |
    recoveredBlock119Block132Value0 := recoveredBlock119Block132Arg1.
    recoveredBlock119Block132Value1 := (recoveredBlock119Block132Value0) symbol.
    recoveredBlock119Block132Value2 := recoveredBlock119Arg1.
    recoveredBlock119Block132Value3 := (recoveredBlock119Block132Value2) key.
    recoveredBlock119Block132Value4 := (recoveredBlock119Block132Value3) asSymbol.
    recoveredBlock119Block132Value5 := (recoveredBlock119Block132Value1) == (recoveredBlock119Block132Value4).
    recoveredBlock119Block132Value5
].
            recoveredBlock119PC := 150.
        ].
        recoveredBlock119Step = 150 ifTrue: [
            recoveredBlock119Stack3 := [
    ^false
].
            recoveredBlock119PC := 158.
        ].
        recoveredBlock119Step = 158 ifTrue: [
            recoveredBlock119Stack1 := (recoveredBlock119Stack1) detect: (recoveredBlock119Stack2) ifNone: (recoveredBlock119Stack3).
            recoveredBlock119PC := 160.
        ].
        recoveredBlock119Step = 160 ifTrue: [
            recoveredLocal1 := recoveredBlock119Stack1.
            recoveredBlock119PC := 163.
        ].
        recoveredBlock119Step = 163 ifTrue: [
            recoveredBlock119Stack1 := recoveredLocal3.
            recoveredBlock119PC := 166.
        ].
        recoveredBlock119Step = 166 ifTrue: [
            recoveredBlock119Stack2 := recoveredLocal1.
            recoveredBlock119PC := 169.
        ].
        recoveredBlock119Step = 169 ifTrue: [
            recoveredBlock119Stack1 := (recoveredBlock119Stack1) includes: (recoveredBlock119Stack2).
            recoveredBlock119PC := 171.
        ].
        recoveredBlock119Step = 171 ifTrue: [
            (recoveredBlock119Stack1) ifTrue: [recoveredBlock119PC := 176] ifFalse: [recoveredBlock119PC := 174].
        ].
        recoveredBlock119Step = 174 ifTrue: [
            recoveredBlock119Stack1 := false.
            recoveredBlock119PC := 175.
        ].
        recoveredBlock119Step = 175 ifTrue: [
            ^recoveredBlock119Stack1
        ].
        recoveredBlock119Step = 176 ifTrue: [
            recoveredBlock119Stack1 := recoveredBlock119Arg1.
            recoveredBlock119PC := 179.
        ].
        recoveredBlock119Step = 179 ifTrue: [
            recoveredBlock119Stack1 := (recoveredBlock119Stack1) value.
            recoveredBlock119PC := 181.
        ].
        recoveredBlock119Step = 181 ifTrue: [
            recoveredBlock119Stack2 := recoveredLocal1.
            recoveredBlock119PC := 184.
        ].
        recoveredBlock119Step = 184 ifTrue: [
            recoveredBlock119Stack2 := (recoveredBlock119Stack2) timeStamp.
            recoveredBlock119PC := 186.
        ].
        recoveredBlock119Step = 186 ifTrue: [
            recoveredBlock119Stack1 := (recoveredBlock119Stack1) = (recoveredBlock119Stack2).
            recoveredBlock119PC := 187.
        ].
        recoveredBlock119Step = 187 ifTrue: [
            (recoveredBlock119Stack1) ifTrue: [recoveredBlock119PC := 192] ifFalse: [recoveredBlock119PC := 190].
        ].
        recoveredBlock119Step = 190 ifTrue: [
            recoveredBlock119Stack1 := false.
            recoveredBlock119PC := 191.
        ].
        recoveredBlock119Step = 191 ifTrue: [
            ^recoveredBlock119Stack1
        ].
        recoveredBlock119Step = 192 ifTrue: [
            recoveredBlock119Stack1 := recoveredLocal2.
            recoveredBlock119PC := 195.
        ].
        recoveredBlock119Step = 195 ifTrue: [
            recoveredBlock119Stack1 := (recoveredBlock119Stack1) + (1).
            recoveredBlock119PC := 196.
        ].
        recoveredBlock119Step = 196 ifTrue: [
            recoveredBlock119Stack2 := recoveredBlock119Stack1.
            recoveredBlock119PC := 197.
        ].
        recoveredBlock119Step = 197 ifTrue: [
            recoveredLocal2 := recoveredBlock119Stack2.
            recoveredBlock119PC := 200.
        ].
        recoveredBlock119Step = 200 ifTrue: [
            recoveredBlock119Result := recoveredBlock119Stack1.
            recoveredBlock119Done := true.
        ].
    ].
    recoveredBlock119Result
].
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            (recoveredStack0) forAllEntriesDo: (recoveredStack1).
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

