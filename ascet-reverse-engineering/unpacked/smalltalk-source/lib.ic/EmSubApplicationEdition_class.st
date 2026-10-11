"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"lib.ic method 0x200003b8; bytecode file offset 0x3c670"
!EmSubApplicationEdition class methodsFor: 'recovered'!
parentRecordClass
    | recoveredValue0 |
    recoveredValue0 := EmSubApplicationParts.
    ^recoveredValue0
! !

"lib.ic method 0x20000660; bytecode file offset 0x3c804"
!EmSubApplicationEdition class methodsFor: 'recovered'!
releasingUsersKey
    ^'*EM-ARU'
! !

"lib.ic method 0x20000684; bytecode file offset 0x3c804"
!EmSubApplicationEdition class methodsFor: 'recovered'!
privilegeNames
    ^#('readPublicSpec' 'readPublicSource' 'readPrivateSpec' 'readPrivateSource' 'createEditions' 'changeClassOwners')
! !

"lib.ic method 0x20002b48; bytecode file offset 0x3eb68"
!EmSubApplicationEdition class methodsFor: 'recovered'!
defaultLength
    ^42
! !

"lib.ic method 0x20002c18; bytecode file offset 0x3ec38"
!EmSubApplicationEdition class methodsFor: 'recovered'!
tag
    ^4161
! !

"lib.ic method 0x20002e48; bytecode file offset 0x3ee80"
!EmSubApplicationEdition class methodsFor: 'recovered'!
for: recoveredArg1 using: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (self) using: (recoveredValue0).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) application: (recoveredValue2).
    ^recoveredValue3
! !

"lib.ic method 0x20004c14; bytecode file offset 0x40c40"
!EmSubApplicationEdition class methodsFor: 'recovered'!
createFor: recoveredArg1 in: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) empty.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) application: (recoveredValue2).
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue0) createInitialIn: (recoveredValue3).
    ^recoveredValue4
! !

"lib.ic method 0x20005920; bytecode file offset 0x41954"
!EmSubApplicationEdition class methodsFor: 'recovered'!
for: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) partsRecord.
    recoveredValue3 := (recoveredValue2) editionsDictionary.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) timeStamp.
    recoveredValue6 := (recoveredValue3) at: (recoveredValue5).
    recoveredValue7 := (self) for: (recoveredValue0) using: (recoveredValue6).
    ^recoveredValue7
! !

"lib.ic method 0x2000ac60; bytecode file offset 0x46c90"
!EmSubApplicationEdition class methodsFor: 'recovered'!
entryNamed: recoveredArg1 in: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (self) for: (recoveredValue0).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 |
    recoveredBlock11Value0 := EmClassEntry.
    recoveredBlock11Value1 := recoveredArg1.
    recoveredBlock11Value2 := (recoveredBlock11Value0) named: (recoveredBlock11Value1).
    recoveredBlock11Value2
].
    recoveredValue4 := (recoveredValue1) entryAt: (recoveredValue2) ifAbsent: (recoveredValue3).
    ^recoveredValue4
! !

"lib.ic method 0x2001a4bc; bytecode file offset 0x56520"
!EmSubApplicationEdition class methodsFor: 'recovered'!
for: recoveredArg1 relocateUsing: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := EmLibrary.
    recoveredValue1 := (recoveredValue0) default.
    (recoveredValue1) transactionBegin.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) partsRecord.
    recoveredValue4 := recoveredValue3.
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := (recoveredValue3) updateEditionsDictionary.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) timeStamp.
    recoveredValue8 := [:recoveredBlock24Arg1 | 
    | recoveredBlock24Stack0 recoveredBlock24Stack1 recoveredBlock24Stack2 recoveredBlock24Stack3 recoveredBlock24Stack4 recoveredBlock24Stack5 recoveredBlock24Stack6 recoveredBlock24PC recoveredBlock24Step recoveredBlock24Done recoveredBlock24Result |
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
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) isVoid.
            recoveredBlock24PC := 33.
        ].
        recoveredBlock24Step = 33 ifTrue: [
            (recoveredBlock24Stack1) ifTrue: [recoveredBlock24PC := 36] ifFalse: [recoveredBlock24PC := 43].
        ].
        recoveredBlock24Step = 36 ifTrue: [
            recoveredBlock24Stack1 := EmLibrary.
            recoveredBlock24PC := 38.
        ].
        recoveredBlock24Step = 38 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) default.
            recoveredBlock24PC := 39.
        ].
        recoveredBlock24Step = 39 ifTrue: [
            recoveredBlock24Stack2 := MxEMcsESa6.
            recoveredBlock24PC := 41.
        ].
        recoveredBlock24Step = 41 ifTrue: [
            (recoveredBlock24Stack1) transactionProtocolError: (recoveredBlock24Stack2).
            recoveredBlock24PC := 43.
        ].
        recoveredBlock24Step = 43 ifTrue: [
            recoveredBlock24Stack1 := recoveredArg2.
            recoveredBlock24PC := 46.
        ].
        recoveredBlock24Step = 46 ifTrue: [
            recoveredBlock24Stack2 := EmLibrary.
            recoveredBlock24PC := 48.
        ].
        recoveredBlock24Step = 48 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) cache.
            recoveredBlock24PC := 50.
        ].
        recoveredBlock24Step = 50 ifTrue: [
            recoveredBlock24Stack3 := self.
            recoveredBlock24PC := 51.
        ].
        recoveredBlock24Step = 51 ifTrue: [
            recoveredBlock24Stack4 := recoveredBlock24Arg1.
            recoveredBlock24PC := 52.
        ].
        recoveredBlock24Step = 52 ifTrue: [
            recoveredBlock24Stack5 := recoveredLocal1.
            recoveredBlock24PC := 55.
        ].
        recoveredBlock24Step = 55 ifTrue: [
            recoveredBlock24Stack5 := (recoveredBlock24Stack5) library.
            recoveredBlock24PC := 57.
        ].
        recoveredBlock24Step = 57 ifTrue: [
            recoveredBlock24Stack3 := (recoveredBlock24Stack3) updating: (recoveredBlock24Stack4) from: (recoveredBlock24Stack5).
            recoveredBlock24PC := 59.
        ].
        recoveredBlock24Step = 59 ifTrue: [
            recoveredBlock24Stack4 := recoveredBlock24Stack3.
            recoveredBlock24PC := 60.
        ].
        recoveredBlock24Step = 60 ifTrue: [
            recoveredBlock24Stack5 := recoveredArg1.
            recoveredBlock24PC := 63.
        ].
        recoveredBlock24Step = 63 ifTrue: [
            (recoveredBlock24Stack4) application: (recoveredBlock24Stack5).
            recoveredBlock24PC := 65.
        ].
        recoveredBlock24Step = 65 ifTrue: [
            recoveredBlock24Stack4 := recoveredArg1.
            recoveredBlock24PC := 68.
        ].
        recoveredBlock24Step = 68 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) renewAppEditionRecord: (recoveredBlock24Stack3) for: (recoveredBlock24Stack4).
            recoveredBlock24PC := 70.
        ].
        recoveredBlock24Step = 70 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) value: (recoveredBlock24Stack2).
            recoveredBlock24PC := 72.
        ].
        recoveredBlock24Step = 72 ifTrue: [
            recoveredBlock24Result := recoveredBlock24Stack1.
            recoveredBlock24Done := true.
        ].
    ].
    recoveredBlock24Result
].
    (recoveredValue5) at: (recoveredValue7) putPointerFrom: (recoveredValue8).
    recoveredValue9 := EmLibrary.
    recoveredValue10 := (recoveredValue9) default.
    (recoveredValue10) transactionEnd.
    ^self
! !

"lib.ic method 0x2001f5d4; bytecode file offset 0x5b630"
!EmSubApplicationEdition class methodsFor: 'recovered'!
entryNamed: recoveredArg1 in: recoveredArg2 relocateUsing: recoveredArg3 ifUnable: recoveredArg4 notEditionError: recoveredArg5 notDefinedError: recoveredArg6 notOwnerError: recoveredArg7 errorArguments: recoveredArg8
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg2.
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
            recoveredBlock7Stack2 := recoveredArg5.
            recoveredBlock7PC := 18.
        ].
        recoveredBlock7Step = 18 ifTrue: [
            recoveredBlock7Stack3 := recoveredArg8.
            recoveredBlock7PC := 21.
        ].
        recoveredBlock7Step = 21 ifTrue: [
            recoveredBlock7Stack4 := recoveredArg4.
            recoveredBlock7PC := 24.
        ].
        recoveredBlock7Step = 24 ifTrue: [
            (recoveredBlock7Stack1) mustBeEditionTo: (recoveredBlock7Stack2) withParms: (recoveredBlock7Stack3) ifNot: (recoveredBlock7Stack4).
            recoveredBlock7PC := 27.
        ].
        recoveredBlock7Step = 27 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg1.
            recoveredBlock7PC := 28.
        ].
        recoveredBlock7Step = 28 ifTrue: [
            recoveredBlock7Stack2 := recoveredArg1.
            recoveredBlock7PC := 31.
        ].
        recoveredBlock7Step = 31 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) includes: (recoveredBlock7Stack2).
            recoveredBlock7PC := 32.
        ].
        recoveredBlock7Step = 32 ifTrue: [
            (recoveredBlock7Stack1) ifTrue: [recoveredBlock7PC := 62] ifFalse: [recoveredBlock7PC := 36].
        ].
        recoveredBlock7Step = 36 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg1.
            recoveredBlock7PC := 37.
        ].
        recoveredBlock7Step = 37 ifTrue: [
            recoveredBlock7Stack2 := recoveredArg6.
            recoveredBlock7PC := 40.
        ].
        recoveredBlock7Step = 40 ifTrue: [
            recoveredBlock7Stack3 := Array.
            recoveredBlock7PC := 42.
        ].
        recoveredBlock7Step = 42 ifTrue: [
            recoveredBlock7Stack4 := recoveredArg1.
            recoveredBlock7PC := 45.
        ].
        recoveredBlock7Step = 45 ifTrue: [
            recoveredBlock7Stack5 := recoveredArg2.
            recoveredBlock7PC := 48.
        ].
        recoveredBlock7Step = 48 ifTrue: [
            recoveredBlock7Stack5 := (recoveredBlock7Stack5) symbol.
            recoveredBlock7PC := 49.
        ].
        recoveredBlock7Step = 49 ifTrue: [
            recoveredBlock7Stack3 := (recoveredBlock7Stack3) with: (recoveredBlock7Stack4) with: (recoveredBlock7Stack5).
            recoveredBlock7PC := 51.
        ].
        recoveredBlock7Step = 51 ifTrue: [
            recoveredBlock7Stack4 := recoveredArg8.
            recoveredBlock7PC := 54.
        ].
        recoveredBlock7Step = 54 ifTrue: [
            recoveredBlock7Stack3 := (recoveredBlock7Stack3) , (recoveredBlock7Stack4).
            recoveredBlock7PC := 56.
        ].
        recoveredBlock7Step = 56 ifTrue: [
            recoveredBlock7Stack4 := recoveredArg4.
            recoveredBlock7PC := 59.
        ].
        recoveredBlock7Step = 59 ifTrue: [
            (recoveredBlock7Stack1) stopAndReport: (recoveredBlock7Stack2) withParms: (recoveredBlock7Stack3) exitUsing: (recoveredBlock7Stack4).
            recoveredBlock7PC := 62.
        ].
        recoveredBlock7Step = 62 ifTrue: [
            recoveredBlock7Stack1 := EmUser.
            recoveredBlock7PC := 64.
        ].
        recoveredBlock7Step = 64 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) currentID.
            recoveredBlock7PC := 66.
        ].
        recoveredBlock7Step = 66 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Arg1.
            recoveredBlock7PC := 67.
        ].
        recoveredBlock7Step = 67 ifTrue: [
            recoveredBlock7Stack3 := recoveredArg1.
            recoveredBlock7PC := 70.
        ].
        recoveredBlock7Step = 70 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) ownerOf: (recoveredBlock7Stack3).
            recoveredBlock7PC := 72.
        ].
        recoveredBlock7Step = 72 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) = (recoveredBlock7Stack2).
            recoveredBlock7PC := 73.
        ].
        recoveredBlock7Step = 73 ifTrue: [
            (recoveredBlock7Stack1) ifTrue: [recoveredBlock7PC := 98] ifFalse: [recoveredBlock7PC := 76].
        ].
        recoveredBlock7Step = 76 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg1.
            recoveredBlock7PC := 77.
        ].
        recoveredBlock7Step = 77 ifTrue: [
            recoveredBlock7Stack2 := recoveredArg7.
            recoveredBlock7PC := 80.
        ].
        recoveredBlock7Step = 80 ifTrue: [
            recoveredBlock7Stack3 := Array.
            recoveredBlock7PC := 82.
        ].
        recoveredBlock7Step = 82 ifTrue: [
            recoveredBlock7Stack4 := recoveredArg1.
            recoveredBlock7PC := 85.
        ].
        recoveredBlock7Step = 85 ifTrue: [
            recoveredBlock7Stack3 := (recoveredBlock7Stack3) with: (recoveredBlock7Stack4).
            recoveredBlock7PC := 87.
        ].
        recoveredBlock7Step = 87 ifTrue: [
            recoveredBlock7Stack4 := recoveredArg8.
            recoveredBlock7PC := 90.
        ].
        recoveredBlock7Step = 90 ifTrue: [
            recoveredBlock7Stack3 := (recoveredBlock7Stack3) , (recoveredBlock7Stack4).
            recoveredBlock7PC := 92.
        ].
        recoveredBlock7Step = 92 ifTrue: [
            recoveredBlock7Stack4 := recoveredArg4.
            recoveredBlock7PC := 95.
        ].
        recoveredBlock7Step = 95 ifTrue: [
            (recoveredBlock7Stack1) stopAndReport: (recoveredBlock7Stack2) withParms: (recoveredBlock7Stack3) exitUsing: (recoveredBlock7Stack4).
            recoveredBlock7PC := 98.
        ].
        recoveredBlock7Step = 98 ifTrue: [
            recoveredBlock7Stack1 := recoveredArg3.
            recoveredBlock7PC := 101.
        ].
        recoveredBlock7Step = 101 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Arg1.
            recoveredBlock7PC := 102.
        ].
        recoveredBlock7Step = 102 ifTrue: [
            recoveredBlock7Stack3 := recoveredArg1.
            recoveredBlock7PC := 105.
        ].
        recoveredBlock7Step = 105 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) entryAt: (recoveredBlock7Stack3).
            recoveredBlock7PC := 107.
        ].
        recoveredBlock7Step = 107 ifTrue: [
            (recoveredBlock7Stack1) value: (recoveredBlock7Stack2).
            recoveredBlock7PC := 109.
        ].
        recoveredBlock7Step = 109 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg1.
            recoveredBlock7PC := 110.
        ].
        recoveredBlock7Step = 110 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) insert.
            recoveredBlock7PC := 112.
        ].
        recoveredBlock7Step = 112 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack1.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
    (self) for: (recoveredValue0) relocateUsing: (recoveredValue1).
    ^self
! !

