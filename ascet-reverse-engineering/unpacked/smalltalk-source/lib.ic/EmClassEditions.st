"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"lib.ic method 0x200000f0; bytecode file offset 0x3c21c"
!EmClassEditions methodsFor: 'recovered'!
instEditionsIndex
    | recoveredValue0 |
    recoveredValue0 := (self) startPosition.
    ^recoveredValue0
! !

"lib.ic method 0x2000037c; bytecode file offset 0x3c670"
!EmClassEditions methodsFor: 'recovered'!
entryClass
    | recoveredValue0 |
    recoveredValue0 := EmClassEditionEntry.
    ^recoveredValue0
! !

"lib.ic method 0x200015ac; bytecode file offset 0x3d664"
!EmClassEditions methodsFor: 'recovered'!
methodEditions
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) methodEditionsIndex.
    recoveredValue1 := (self) obtainDictionaryAt: (recoveredValue0).
    ^recoveredValue1
! !

"lib.ic method 0x20001924; bytecode file offset 0x3da5c"
!EmClassEditions methodsFor: 'recovered'!
knownMFTSKeyFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) knownMFTSKeyFor: (recoveredValue1).
    ^recoveredValue2
! !

"lib.ic method 0x20001efc; bytecode file offset 0x3df38"
!EmClassEditions methodsFor: 'recovered'!
classEditionsIndex
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) startPosition.
    recoveredValue1 := (recoveredValue0) + (8).
    ^recoveredValue1
! !

"lib.ic method 0x20001ff0; bytecode file offset 0x3e02c"
!EmClassEditions methodsFor: 'recovered'!
knownMFTSIndex
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) startPosition.
    recoveredValue1 := (recoveredValue0) + (16).
    ^recoveredValue1
! !

"lib.ic method 0x200020ec; bytecode file offset 0x3e11c"
!EmClassEditions methodsFor: 'recovered'!
entriesIndex
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) startPosition.
    recoveredValue1 := (recoveredValue0) + (32).
    ^recoveredValue1
! !

"lib.ic method 0x2000240c; bytecode file offset 0x3e42c"
!EmClassEditions methodsFor: 'recovered'!
actualClass
    | recoveredValue0 |
    recoveredValue0 := itsClass.
    ^recoveredValue0
! !

"lib.ic method 0x20002460; bytecode file offset 0x3e480"
!EmClassEditions methodsFor: 'recovered'!
application
    | recoveredValue0 |
    recoveredValue0 := itsApplication.
    ^recoveredValue0
! !

"lib.ic method 0x200040dc; bytecode file offset 0x400fc"
!EmClassEditions methodsFor: 'recovered'!
class: recoveredArg1 application: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    itsClass := recoveredValue0.
    recoveredValue1 := recoveredArg2.
    itsApplication := recoveredValue1.
    ^self
! !

"lib.ic method 0x20004374; bytecode file offset 0x403a4"
!EmClassEditions methodsFor: 'recovered'!
allKnownMFTS
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) knownMFTSIndex.
    recoveredValue1 := EmDictionaryOfTimeStamps.
    recoveredValue2 := (self) obtainRecordForPartAt: (recoveredValue0) ofType: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) asDictionary.
    ^recoveredValue3
! !

"lib.ic method 0x20004e9c; bytecode file offset 0x40ed0"
!EmClassEditions methodsFor: 'recovered'!
emptyEntry
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) entryClass.
    recoveredValue1 := (recoveredValue0) empty.
    recoveredValue2 := (self) actualClass.
    recoveredValue3 := (self) application.
    recoveredValue4 := (recoveredValue1) class: (recoveredValue2) application: (recoveredValue3).
    ^recoveredValue4
! !

"lib.ic method 0x20005d5c; bytecode file offset 0x41d90"
!EmClassEditions methodsFor: 'recovered'!
defaultEntry
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := super defaultEntry.
    recoveredValue1 := (self) actualClass.
    recoveredValue2 := (self) application.
    recoveredValue3 := (recoveredValue0) class: (recoveredValue1) application: (recoveredValue2).
    ^recoveredValue3
! !

"lib.ic method 0x20007728; bytecode file offset 0x43770"
!EmClassEditions methodsFor: 'recovered'!
methodEditionsIndex
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) actualClass.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isClass.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) instEditionsIndex.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) classEditionsIndex.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2000794c; bytecode file offset 0x43978"
!EmClassEditions methodsFor: 'recovered'!
editionAt: recoveredArg1 named: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    | recoveredBlock5Value0 |
    recoveredBlock5Value0 := (self) emptyEntry.
    recoveredBlock5Value0
].
    recoveredValue2 := (self) entryAt: (recoveredValue0) ifAbsent: (recoveredValue1).
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue2) asEditionNamed: (recoveredValue3).
    ^recoveredValue4
! !

"lib.ic method 0x2000a31c; bytecode file offset 0x46354"
!EmClassEditions methodsFor: 'recovered'!
currentEntry
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) actualClass.
    recoveredValue1 := (self) application.
    recoveredValue2 := (recoveredValue0) timeStampIn: (recoveredValue1).
    recoveredValue3 := [
    | recoveredBlock9Value0 |
    recoveredBlock9Value0 := (self) emptyEntry.
    ^recoveredBlock9Value0
].
    recoveredValue4 := (self) entryAt: (recoveredValue2) ifAbsent: (recoveredValue3).
    recoveredValue5 := (self) actualClass.
    recoveredValue6 := (self) application.
    recoveredValue7 := (recoveredValue4) class: (recoveredValue5) application: (recoveredValue6).
    ^recoveredValue7
! !

"lib.ic method 0x2000c500; bytecode file offset 0x48534"
!EmClassEditions methodsFor: 'recovered'!
editionsNamed: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 recoveredBlock10Value4 |
    recoveredBlock10Value0 := recoveredLocal1.
    recoveredBlock10Value1 := recoveredBlock10Arg1.
    recoveredBlock10Value2 := recoveredArg1.
    recoveredBlock10Value3 := (recoveredBlock10Value1) asEditionNamed: (recoveredBlock10Value2).
    recoveredBlock10Value4 := (recoveredBlock10Value0) add: (recoveredBlock10Value3).
    recoveredBlock10Value4
].
    (self) forAllEntriesDo: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"lib.ic method 0x2000de84; bytecode file offset 0x49ebc"
!EmClassEditions methodsFor: 'recovered'!
versionTimeStamps
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
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) isVersion.
            recoveredBlock10PC := 19.
        ].
        recoveredBlock10Step = 19 ifTrue: [
            (recoveredBlock10Stack2) ifTrue: [recoveredBlock10PC := 22] ifFalse: [recoveredBlock10PC := 30].
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
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) timeStamp.
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

"lib.ic method 0x2000f0d8; bytecode file offset 0x4b110"
!EmClassEditions methodsFor: 'recovered'!
versionsNamed: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Stack0 recoveredBlock10Stack1 recoveredBlock10Stack2 recoveredBlock10Stack3 recoveredBlock10Stack4 recoveredBlock10PC recoveredBlock10Step recoveredBlock10Done recoveredBlock10Result |
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
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) isVersion.
            recoveredBlock10PC := 19.
        ].
        recoveredBlock10Step = 19 ifTrue: [
            (recoveredBlock10Stack2) ifTrue: [recoveredBlock10PC := 22] ifFalse: [recoveredBlock10PC := 33].
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
            recoveredBlock10Stack3 := recoveredArg1.
            recoveredBlock10PC := 30.
        ].
        recoveredBlock10Step = 30 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) asEditionNamed: (recoveredBlock10Stack3).
            recoveredBlock10PC := 31.
        ].
        recoveredBlock10Step = 31 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) add: (recoveredBlock10Stack2).
            recoveredBlock10PC := 33.
        ].
        recoveredBlock10Step = 33 ifTrue: [
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

"lib.ic method 0x2000fff4; bytecode file offset 0x4c03c"
!EmClassEditions methodsFor: 'recovered'!
initialEditionNamed: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) emptyEntry.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) nextTimeStamp.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) initialEntryAt: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) actualClass.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) addNewMFTSTo: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 37].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock24Value0 recoveredBlock24Value1 |
    recoveredBlock24Value0 := MxEMc121.
    recoveredBlock24Value1 := (self) fatalError: (recoveredBlock24Value0).
    recoveredBlock24Value1
].
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) versionName: (recoveredStack1) ifUnable: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) addNewEntry: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2001187c; bytecode file offset 0x4d8d0"
!EmClassEditions methodsFor: 'recovered'!
assignMFTSTo: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EmLibrary.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) cache.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) actualClass.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := (recoveredStack3) application.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) classKnownMFTSFor: (recoveredStack2) in: (recoveredStack3).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := (recoveredStack3) withAllSuperclasses.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) knownMFTSKeyFor: (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := EmLibrary.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) default.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) operationsInterface.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := (recoveredStack2) application.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) applicationAddNewClassMFTSFor: (recoveredStack2) class: (recoveredStack3).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredPC := 46.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) methodFormatTimeStamp: (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20011b60; bytecode file offset 0x4dba0"
!EmClassEditions methodsFor: 'recovered'!
addNewMFTSTo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) knownMFTSIndex.
    recoveredValue1 := EmDictionaryOfTimeStamps.
    recoveredValue2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Local1 recoveredBlock8Local2 recoveredBlock8Stack0 recoveredBlock8Stack1 recoveredBlock8Stack2 recoveredBlock8Stack3 recoveredBlock8Stack4 recoveredBlock8Stack5 recoveredBlock8PC recoveredBlock8Step recoveredBlock8Done recoveredBlock8Result |
    recoveredBlock8Stack0 := self.
    recoveredBlock8PC := 14.
    recoveredBlock8Done := false.
    [recoveredBlock8Done not] whileTrue: [
        recoveredBlock8Step := recoveredBlock8PC.
        recoveredBlock8Step = 14 ifTrue: [
            recoveredBlock8Stack1 := recoveredArg1.
            recoveredBlock8PC := 17.
        ].
        recoveredBlock8Step = 17 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) knownMFTSKey.
            recoveredBlock8PC := 18.
        ].
        recoveredBlock8Step = 18 ifTrue: [
            recoveredBlock8Local2 := recoveredBlock8Stack1.
            recoveredBlock8PC := 19.
        ].
        recoveredBlock8Step = 19 ifTrue: [
            recoveredBlock8Stack1 := recoveredBlock8Arg1.
            recoveredBlock8PC := 20.
        ].
        recoveredBlock8Step = 20 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Local2.
            recoveredBlock8PC := 21.
        ].
        recoveredBlock8Step = 21 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) at: (recoveredBlock8Stack2).
            recoveredBlock8PC := 22.
        ].
        recoveredBlock8Step = 22 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Stack1.
            recoveredBlock8PC := 23.
        ].
        recoveredBlock8Step = 23 ifTrue: [
            recoveredBlock8Local1 := recoveredBlock8Stack2.
            recoveredBlock8PC := 24.
        ].
        recoveredBlock8Step = 24 ifTrue: [
            (recoveredBlock8Stack1 ~~ nil) ifTrue: [recoveredBlock8PC := 37] ifFalse: [recoveredBlock8PC := 28].
        ].
        recoveredBlock8Step = 28 ifTrue: [
            recoveredBlock8Stack1 := recoveredBlock8Arg1.
            recoveredBlock8PC := 29.
        ].
        recoveredBlock8Step = 29 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Local2.
            recoveredBlock8PC := 30.
        ].
        recoveredBlock8Step = 30 ifTrue: [
            recoveredBlock8Stack3 := recoveredBlock8Arg1.
            recoveredBlock8PC := 31.
        ].
        recoveredBlock8Step = 31 ifTrue: [
            recoveredBlock8Stack3 := (recoveredBlock8Stack3) nextTimeStamp.
            recoveredBlock8PC := 33.
        ].
        recoveredBlock8Step = 33 ifTrue: [
            recoveredBlock8Stack4 := recoveredBlock8Stack3.
            recoveredBlock8PC := 34.
        ].
        recoveredBlock8Step = 34 ifTrue: [
            recoveredBlock8Local1 := recoveredBlock8Stack4.
            recoveredBlock8PC := 35.
        ].
        recoveredBlock8Step = 35 ifTrue: [
            (recoveredBlock8Stack1) at: (recoveredBlock8Stack2) put: (recoveredBlock8Stack3).
            recoveredBlock8PC := 37.
        ].
        recoveredBlock8Step = 37 ifTrue: [
            recoveredBlock8Stack1 := recoveredArg1.
            recoveredBlock8PC := 40.
        ].
        recoveredBlock8Step = 40 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Local1.
            recoveredBlock8PC := 41.
        ].
        recoveredBlock8Step = 41 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) methodFormatTimeStamp: (recoveredBlock8Stack2).
            recoveredBlock8PC := 43.
        ].
        recoveredBlock8Step = 43 ifTrue: [
            recoveredBlock8Result := recoveredBlock8Stack1.
            recoveredBlock8Done := true.
        ].
    ].
    recoveredBlock8Result
].
    recoveredValue3 := (self) updateRecordForPartAt: (recoveredValue0) ofType: (recoveredValue1) using: (recoveredValue2).
    ^recoveredValue3
! !

"lib.ic method 0x20011d58; bytecode file offset 0x4dd9c"
!EmClassEditions methodsFor: 'recovered'!
visibleTimeStamps
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Stack0 recoveredBlock10Stack1 recoveredBlock10Stack2 recoveredBlock10Stack3 recoveredBlock10Stack4 recoveredBlock10PC recoveredBlock10Step recoveredBlock10Done recoveredBlock10Result |
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
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) isVersion.
            recoveredBlock10PC := 19.
        ].
        recoveredBlock10Step = 19 ifTrue: [
            (recoveredBlock10Stack2) ifTrue: [recoveredBlock10PC := 32] ifFalse: [recoveredBlock10PC := 22].
        ].
        recoveredBlock10Step = 22 ifTrue: [
            recoveredBlock10Stack2 := recoveredBlock10Arg1.
            recoveredBlock10PC := 23.
        ].
        recoveredBlock10Step = 23 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) developer.
            recoveredBlock10PC := 24.
        ].
        recoveredBlock10Step = 24 ifTrue: [
            recoveredBlock10Stack3 := EmUser.
            recoveredBlock10PC := 26.
        ].
        recoveredBlock10Step = 26 ifTrue: [
            recoveredBlock10Stack3 := (recoveredBlock10Stack3) currentID.
            recoveredBlock10PC := 28.
        ].
        recoveredBlock10Step = 28 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) = (recoveredBlock10Stack3).
            recoveredBlock10PC := 29.
        ].
        recoveredBlock10Step = 29 ifTrue: [
            (recoveredBlock10Stack2) ifTrue: [recoveredBlock10PC := 32] ifFalse: [recoveredBlock10PC := 41].
        ].
        recoveredBlock10Step = 32 ifTrue: [
            recoveredBlock10PC := 33.
        ].
        recoveredBlock10Step = 33 ifTrue: [
            recoveredBlock10Stack1 := recoveredLocal1.
            recoveredBlock10PC := 36.
        ].
        recoveredBlock10Step = 36 ifTrue: [
            recoveredBlock10Stack2 := recoveredBlock10Arg1.
            recoveredBlock10PC := 37.
        ].
        recoveredBlock10Step = 37 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) timeStamp.
            recoveredBlock10PC := 39.
        ].
        recoveredBlock10Step = 39 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) add: (recoveredBlock10Stack2).
            recoveredBlock10PC := 41.
        ].
        recoveredBlock10Step = 41 ifTrue: [
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

"lib.ic method 0x20013088; bytecode file offset 0x4f0cc"
!EmClassEditions methodsFor: 'recovered'!
visibleEditionsNamed: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Stack0 recoveredBlock10Stack1 recoveredBlock10Stack2 recoveredBlock10Stack3 recoveredBlock10Stack4 recoveredBlock10PC recoveredBlock10Step recoveredBlock10Done recoveredBlock10Result |
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
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) isVersion.
            recoveredBlock10PC := 19.
        ].
        recoveredBlock10Step = 19 ifTrue: [
            (recoveredBlock10Stack2) ifTrue: [recoveredBlock10PC := 32] ifFalse: [recoveredBlock10PC := 22].
        ].
        recoveredBlock10Step = 22 ifTrue: [
            recoveredBlock10Stack2 := recoveredBlock10Arg1.
            recoveredBlock10PC := 23.
        ].
        recoveredBlock10Step = 23 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) developer.
            recoveredBlock10PC := 24.
        ].
        recoveredBlock10Step = 24 ifTrue: [
            recoveredBlock10Stack3 := EmUser.
            recoveredBlock10PC := 26.
        ].
        recoveredBlock10Step = 26 ifTrue: [
            recoveredBlock10Stack3 := (recoveredBlock10Stack3) currentID.
            recoveredBlock10PC := 28.
        ].
        recoveredBlock10Step = 28 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) = (recoveredBlock10Stack3).
            recoveredBlock10PC := 29.
        ].
        recoveredBlock10Step = 29 ifTrue: [
            (recoveredBlock10Stack2) ifTrue: [recoveredBlock10PC := 32] ifFalse: [recoveredBlock10PC := 44].
        ].
        recoveredBlock10Step = 32 ifTrue: [
            recoveredBlock10PC := 33.
        ].
        recoveredBlock10Step = 33 ifTrue: [
            recoveredBlock10Stack1 := recoveredLocal1.
            recoveredBlock10PC := 36.
        ].
        recoveredBlock10Step = 36 ifTrue: [
            recoveredBlock10Stack2 := recoveredBlock10Arg1.
            recoveredBlock10PC := 37.
        ].
        recoveredBlock10Step = 37 ifTrue: [
            recoveredBlock10Stack3 := recoveredArg1.
            recoveredBlock10PC := 40.
        ].
        recoveredBlock10Step = 40 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) asEditionNamed: (recoveredBlock10Stack3).
            recoveredBlock10PC := 42.
        ].
        recoveredBlock10Step = 42 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) add: (recoveredBlock10Stack2).
            recoveredBlock10PC := 44.
        ].
        recoveredBlock10Step = 44 ifTrue: [
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

"lib.ic method 0x20013b3c; bytecode file offset 0x4fb88"
!EmClassEditions methodsFor: 'recovered'!
copyInfoFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) knownMFTSIndex.
    recoveredValue1 := EmDictionaryOfTimeStamps.
    recoveredValue2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Local1 recoveredBlock8Local2 recoveredBlock8Stack0 recoveredBlock8Stack1 recoveredBlock8Stack2 recoveredBlock8Stack3 recoveredBlock8Stack4 recoveredBlock8PC recoveredBlock8Step recoveredBlock8Done recoveredBlock8Result |
    recoveredBlock8Stack0 := self.
    recoveredBlock8PC := 14.
    recoveredBlock8Done := false.
    [recoveredBlock8Done not] whileTrue: [
        recoveredBlock8Step := recoveredBlock8PC.
        recoveredBlock8Step = 14 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) actualClass.
            recoveredBlock8PC := 15.
        ].
        recoveredBlock8Step = 15 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) knownMFTSKey.
            recoveredBlock8PC := 16.
        ].
        recoveredBlock8Step = 16 ifTrue: [
            recoveredBlock8Local2 := recoveredBlock8Stack0.
            recoveredBlock8PC := 17.
        ].
        recoveredBlock8Step = 17 ifTrue: [
            recoveredBlock8Stack0 := recoveredBlock8Arg1.
            recoveredBlock8PC := 18.
        ].
        recoveredBlock8Step = 18 ifTrue: [
            recoveredBlock8Stack1 := recoveredBlock8Local2.
            recoveredBlock8PC := 19.
        ].
        recoveredBlock8Step = 19 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) at: (recoveredBlock8Stack1).
            recoveredBlock8PC := 21.
        ].
        recoveredBlock8Step = 21 ifTrue: [
            recoveredBlock8Stack1 := recoveredBlock8Stack0.
            recoveredBlock8PC := 22.
        ].
        recoveredBlock8Step = 22 ifTrue: [
            recoveredBlock8Local1 := recoveredBlock8Stack1.
            recoveredBlock8PC := 23.
        ].
        recoveredBlock8Step = 23 ifTrue: [
            (recoveredBlock8Stack0 ~~ nil) ifTrue: [recoveredBlock8PC := 36] ifFalse: [recoveredBlock8PC := 26].
        ].
        recoveredBlock8Step = 26 ifTrue: [
            recoveredBlock8Stack0 := recoveredBlock8Arg1.
            recoveredBlock8PC := 27.
        ].
        recoveredBlock8Step = 27 ifTrue: [
            recoveredBlock8Stack1 := recoveredBlock8Local2.
            recoveredBlock8PC := 28.
        ].
        recoveredBlock8Step = 28 ifTrue: [
            recoveredBlock8Stack2 := self.
            recoveredBlock8PC := 29.
        ].
        recoveredBlock8Step = 29 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) actualClass.
            recoveredBlock8PC := 30.
        ].
        recoveredBlock8Step = 30 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) methodFormatTimeStamp.
            recoveredBlock8PC := 32.
        ].
        recoveredBlock8Step = 32 ifTrue: [
            recoveredBlock8Stack3 := recoveredBlock8Stack2.
            recoveredBlock8PC := 33.
        ].
        recoveredBlock8Step = 33 ifTrue: [
            recoveredBlock8Local1 := recoveredBlock8Stack3.
            recoveredBlock8PC := 34.
        ].
        recoveredBlock8Step = 34 ifTrue: [
            (recoveredBlock8Stack0) at: (recoveredBlock8Stack1) put: (recoveredBlock8Stack2).
            recoveredBlock8PC := 36.
        ].
        recoveredBlock8Step = 36 ifTrue: [
            recoveredBlock8Stack0 := self.
            recoveredBlock8PC := 37.
        ].
        recoveredBlock8Step = 37 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) actualClass.
            recoveredBlock8PC := 38.
        ].
        recoveredBlock8Step = 38 ifTrue: [
            recoveredBlock8Stack1 := recoveredBlock8Local1.
            recoveredBlock8PC := 39.
        ].
        recoveredBlock8Step = 39 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) methodFormatTimeStamp: (recoveredBlock8Stack1).
            recoveredBlock8PC := 41.
        ].
        recoveredBlock8Step = 41 ifTrue: [
            recoveredBlock8Result := recoveredBlock8Stack0.
            recoveredBlock8Done := true.
        ].
    ].
    recoveredBlock8Result
].
    (self) updateRecordForPartAt: (recoveredValue0) ofType: (recoveredValue1) using: (recoveredValue2).
    recoveredValue3 := (self) currentEntry.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) currentEntry.
    recoveredValue6 := (recoveredValue3) copyInfoFrom: (recoveredValue5).
    ^recoveredValue6
! !

"lib.ic method 0x20018708; bytecode file offset 0x54798"
!EmClassEditions methodsFor: 'recovered'!
nextTimeStamp
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := EmTimeStamp.
    recoveredValue1 := (recoveredValue0) now.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := EmTimeStamp.
    recoveredValue3 := recoveredLocal2.
    recoveredValue4 := (recoveredValue3) seconds.
    recoveredValue5 := (recoveredValue4) + (172800).
    recoveredValue6 := (recoveredValue2) new: (recoveredValue5).
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := [:recoveredBlock24Arg1 | 
    | recoveredBlock24Stack0 recoveredBlock24Stack1 recoveredBlock24Stack2 recoveredBlock24Stack3 recoveredBlock24Stack4 recoveredBlock24PC recoveredBlock24Step recoveredBlock24Done recoveredBlock24Result |
    recoveredBlock24Stack0 := self.
    recoveredBlock24PC := 30.
    recoveredBlock24Done := false.
    [recoveredBlock24Done not] whileTrue: [
        recoveredBlock24Step := recoveredBlock24PC.
        recoveredBlock24Step = 30 ifTrue: [
            recoveredBlock24Stack1 := nil.
            recoveredBlock24PC := 31.
        ].
        recoveredBlock24Step = 31 ifTrue: [
            recoveredBlock24Stack2 := recoveredBlock24Arg1.
            recoveredBlock24PC := 32.
        ].
        recoveredBlock24Step = 32 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) timeStamp.
            recoveredBlock24PC := 34.
        ].
        recoveredBlock24Step = 34 ifTrue: [
            recoveredBlock24Stack3 := recoveredLocal2.
            recoveredBlock24PC := 37.
        ].
        recoveredBlock24Step = 37 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) > (recoveredBlock24Stack3).
            recoveredBlock24PC := 38.
        ].
        recoveredBlock24Step = 38 ifTrue: [
            (recoveredBlock24Stack2) ifTrue: [recoveredBlock24PC := 42] ifFalse: [recoveredBlock24PC := 60].
        ].
        recoveredBlock24Step = 42 ifTrue: [
            recoveredBlock24Stack2 := recoveredBlock24Arg1.
            recoveredBlock24PC := 43.
        ].
        recoveredBlock24Step = 43 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) timeStamp.
            recoveredBlock24PC := 45.
        ].
        recoveredBlock24Step = 45 ifTrue: [
            recoveredBlock24Stack3 := recoveredLocal1.
            recoveredBlock24PC := 48.
        ].
        recoveredBlock24Step = 48 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) <= (recoveredBlock24Stack3).
            recoveredBlock24PC := 49.
        ].
        recoveredBlock24Step = 49 ifTrue: [
            (recoveredBlock24Stack2) ifTrue: [recoveredBlock24PC := 52] ifFalse: [recoveredBlock24PC := 60].
        ].
        recoveredBlock24Step = 52 ifTrue: [
            recoveredBlock24PC := 53.
        ].
        recoveredBlock24Step = 53 ifTrue: [
            recoveredBlock24Stack1 := recoveredBlock24Arg1.
            recoveredBlock24PC := 54.
        ].
        recoveredBlock24Step = 54 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) timeStamp.
            recoveredBlock24PC := 56.
        ].
        recoveredBlock24Step = 56 ifTrue: [
            recoveredBlock24Stack2 := recoveredBlock24Stack1.
            recoveredBlock24PC := 57.
        ].
        recoveredBlock24Step = 57 ifTrue: [
            recoveredLocal2 := recoveredBlock24Stack2.
            recoveredBlock24PC := 60.
        ].
        recoveredBlock24Step = 60 ifTrue: [
            recoveredBlock24Result := recoveredBlock24Stack1.
            recoveredBlock24Done := true.
        ].
    ].
    recoveredBlock24Result
].
    (self) forAllEntriesDo: (recoveredValue7).
    recoveredValue8 := EmTimeStamp.
    recoveredValue9 := recoveredLocal2.
    recoveredValue10 := (recoveredValue8) greaterThan: (recoveredValue9).
    ^recoveredValue10
! !

"lib.ic method 0x20019300; bytecode file offset 0x55368"
!EmClassEditions methodsFor: 'recovered'!
newEditionIfUnable: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
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
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 378.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := #().
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) stopAndReport: (recoveredStack2) withParms: (recoveredStack3) exitUsing: (recoveredStack4).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentEntry.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) timeStamp.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) isUndefined.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 59] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) isVersion.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 59] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := 20.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := (recoveredStack3) actualClass.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack4 := (recoveredStack4) application.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack3 := (recoveredStack3) signatureIn: (recoveredStack4).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) stopAndReport: (recoveredStack1) withParms: (recoveredStack2) exitUsing: (recoveredStack3).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) emptyEntry.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) nextTimeStamp.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) newEditionAt: (recoveredStack1) basedOn: (recoveredStack2).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) addNewEntry: (recoveredStack1).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2001b488; bytecode file offset 0x574ec"
!EmClassEditions methodsFor: 'recovered'!
redefined
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentEntry.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) timeStamp.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) isUndefined.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 45].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 3.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := (recoveredStack3) actualClass.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := (recoveredStack3) symbol.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack4 := (recoveredStack4) application.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack4 := (recoveredStack4) signature.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := [
    ^nil
].
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) stopAndReport: (recoveredStack1) withParms: (recoveredStack2) exitUsing: (recoveredStack3).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) isVersion.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) emptyEntry.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack3 := (recoveredStack3) nextTimeStamp.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) redefined: (recoveredStack2) as: (recoveredStack3).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0) appendWith: (recoveredStack1).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredPC := 77.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack0) newDefinition.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) actualClass.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0) addNewMFTSTo: (recoveredStack1).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2001c540; bytecode file offset 0x58594"
!EmClassEditions methodsFor: 'recovered'!
addFormats: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allKnownMFTS.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := [:recoveredBlock15Arg1 | 
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
            recoveredBlock15Stack2 := recoveredLocal2.
            recoveredBlock15PC := 26.
        ].
        recoveredBlock15Step = 26 ifTrue: [
            recoveredBlock15Stack3 := recoveredBlock15Arg1.
            recoveredBlock15PC := 27.
        ].
        recoveredBlock15Step = 27 ifTrue: [
            recoveredBlock15Stack3 := (recoveredBlock15Stack3) key.
            recoveredBlock15PC := 28.
        ].
        recoveredBlock15Step = 28 ifTrue: [
            recoveredBlock15Stack2 := (recoveredBlock15Stack2) includesKey: (recoveredBlock15Stack3).
            recoveredBlock15PC := 29.
        ].
        recoveredBlock15Step = 29 ifTrue: [
            (recoveredBlock15Stack2) ifTrue: [recoveredBlock15PC := 32] ifFalse: [recoveredBlock15PC := 46].
        ].
        recoveredBlock15Step = 32 ifTrue: [
            recoveredBlock15Stack2 := recoveredLocal2.
            recoveredBlock15PC := 35.
        ].
        recoveredBlock15Step = 35 ifTrue: [
            recoveredBlock15Stack3 := recoveredBlock15Arg1.
            recoveredBlock15PC := 36.
        ].
        recoveredBlock15Step = 36 ifTrue: [
            recoveredBlock15Stack3 := (recoveredBlock15Stack3) key.
            recoveredBlock15PC := 37.
        ].
        recoveredBlock15Step = 37 ifTrue: [
            recoveredBlock15Stack2 := (recoveredBlock15Stack2) at: (recoveredBlock15Stack3).
            recoveredBlock15PC := 38.
        ].
        recoveredBlock15Step = 38 ifTrue: [
            recoveredBlock15Stack3 := recoveredBlock15Arg1.
            recoveredBlock15PC := 39.
        ].
        recoveredBlock15Step = 39 ifTrue: [
            recoveredBlock15Stack3 := (recoveredBlock15Stack3) value.
            recoveredBlock15PC := 41.
        ].
        recoveredBlock15Step = 41 ifTrue: [
            recoveredBlock15Stack2 := (recoveredBlock15Stack2) = (recoveredBlock15Stack3).
            recoveredBlock15PC := 42.
        ].
        recoveredBlock15Step = 42 ifTrue: [
            (recoveredBlock15Stack2) ifTrue: [recoveredBlock15PC := 57] ifFalse: [recoveredBlock15PC := 46].
        ].
        recoveredBlock15Step = 46 ifTrue: [
            recoveredBlock15PC := 47.
        ].
        recoveredBlock15Step = 47 ifTrue: [
            recoveredBlock15Stack1 := true.
            recoveredBlock15PC := 48.
        ].
        recoveredBlock15Step = 48 ifTrue: [
            recoveredLocal1 := recoveredBlock15Stack1.
            recoveredBlock15PC := 51.
        ].
        recoveredBlock15Step = 51 ifTrue: [
            recoveredBlock15Stack1 := recoveredLocal2.
            recoveredBlock15PC := 54.
        ].
        recoveredBlock15Step = 54 ifTrue: [
            recoveredBlock15Stack2 := recoveredBlock15Arg1.
            recoveredBlock15PC := 55.
        ].
        recoveredBlock15Step = 55 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) add: (recoveredBlock15Stack2).
            recoveredBlock15PC := 57.
        ].
        recoveredBlock15Step = 57 ifTrue: [
            recoveredBlock15Result := recoveredBlock15Stack1.
            recoveredBlock15Done := true.
        ].
    ].
    recoveredBlock15Result
].
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) associationsDo: (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) existsInLibrary.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := (recoveredStack1) knownMFTSIndex.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := EmDictionaryOfTimeStamps.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack4 := (recoveredStack4) library.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := (recoveredStack2) createFor: (recoveredStack3) in: (recoveredStack4).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := (recoveredStack0) replacePointerAt: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2002769c; bytecode file offset 0x6372c"
!EmClassEditions methodsFor: 'recovered'!
addMethod: recoveredArg1 source: recoveredArg2 basedOn: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentEntry.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) filePointer.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) timeStamp.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) isUndefined.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := (recoveredStack3) actualClass.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := (recoveredStack3) name.
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
            recoveredStack5 := recoveredArg1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack5 := (recoveredStack5) selector.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock47Stack0 recoveredBlock47Stack1 recoveredBlock47Stack2 recoveredBlock47Stack3 recoveredBlock47PC recoveredBlock47Step recoveredBlock47Done recoveredBlock47Result |
    recoveredBlock47Stack0 := self.
    recoveredBlock47PC := 54.
    recoveredBlock47Done := false.
    [recoveredBlock47Done not] whileTrue: [
        recoveredBlock47Step := recoveredBlock47PC.
        recoveredBlock47Step = 54 ifTrue: [
            recoveredBlock47Stack0 := (recoveredBlock47Stack0) library.
            recoveredBlock47PC := 56.
        ].
        recoveredBlock47Step = 56 ifTrue: [
            recoveredBlock47Stack0 := (recoveredBlock47Stack0) isGateway.
            recoveredBlock47PC := 58.
        ].
        recoveredBlock47Step = 58 ifTrue: [
            (recoveredBlock47Stack0) ifTrue: [recoveredBlock47PC := 62] ifFalse: [recoveredBlock47PC := 74].
        ].
        recoveredBlock47Step = 62 ifTrue: [
            recoveredBlock47Stack0 := self.
            recoveredBlock47PC := 63.
        ].
        recoveredBlock47Step = 63 ifTrue: [
            recoveredBlock47Stack1 := MethodTimeStamp.
            recoveredBlock47PC := 65.
        ].
        recoveredBlock47Step = 65 ifTrue: [
            recoveredBlock47Stack2 := EmTimeStamp.
            recoveredBlock47PC := 67.
        ].
        recoveredBlock47Step = 67 ifTrue: [
            recoveredBlock47Stack2 := (recoveredBlock47Stack2) undefined.
            recoveredBlock47PC := 69.
        ].
        recoveredBlock47Step = 69 ifTrue: [
            recoveredBlock47Stack0 := (recoveredBlock47Stack0) resultAt: (recoveredBlock47Stack1) put: (recoveredBlock47Stack2).
            recoveredBlock47PC := 71.
        ].
        recoveredBlock47Step = 71 ifTrue: [
            recoveredBlock47PC := 78.
        ].
        recoveredBlock47Step = 74 ifTrue: [
            recoveredBlock47Stack0 := EmTimeStamp.
            recoveredBlock47PC := 76.
        ].
        recoveredBlock47Step = 76 ifTrue: [
            recoveredBlock47Stack0 := (recoveredBlock47Stack0) undefined.
            recoveredBlock47PC := 78.
        ].
        recoveredBlock47Step = 78 ifTrue: [
            ^recoveredBlock47Stack0
        ].
    ].
    recoveredBlock47Result
].
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0) stopAndReport: (recoveredStack1) withParms: (recoveredStack2) exitUsing: (recoveredStack3).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodEditionsIndex.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := [:recoveredBlock86Arg1 | 
    | recoveredBlock86Value0 recoveredBlock86Value1 recoveredBlock86Value2 recoveredBlock86Value3 recoveredBlock86Value4 |
    recoveredBlock86Value0 := recoveredBlock86Arg1.
    recoveredBlock86Value1 := recoveredArg1.
    recoveredBlock86Value2 := (recoveredBlock86Value1) selector.
    recoveredBlock86Value3 := [:recoveredBlock86Block98Arg1 | 
    | recoveredBlock86Block98Local1 recoveredBlock86Block98Value0 recoveredBlock86Block98Value1 recoveredBlock86Block98Value2 recoveredBlock86Block98Value3 recoveredBlock86Block98Value4 recoveredBlock86Block98Value5 recoveredBlock86Block98Value6 recoveredBlock86Block98Value7 recoveredBlock86Block98Value8 recoveredBlock86Block98Value9 |
    recoveredBlock86Block98Value0 := EmEditionsDictionary.
    recoveredBlock86Block98Value1 := recoveredBlock86Block98Arg1.
    recoveredBlock86Block98Value2 := (self) library.
    recoveredBlock86Block98Value3 := (recoveredBlock86Block98Value0) updating: (recoveredBlock86Block98Value1) from: (recoveredBlock86Block98Value2).
    recoveredBlock86Block98Value4 := recoveredBlock86Block98Value3.
    recoveredBlock86Block98Local1 := recoveredBlock86Block98Value4.
    recoveredBlock86Block98Value5 := recoveredBlock86Block98Local1.
    recoveredBlock86Block98Value6 := (recoveredBlock86Block98Value5) nextTimeStamp.
    recoveredBlock86Block98Value7 := recoveredBlock86Block98Value6.
    recoveredLocal1 := recoveredBlock86Block98Value7.
    recoveredBlock86Block98Value8 := [:recoveredBlock86Block98Block121Arg1 | 
    | recoveredBlock86Block98Block121Stack0 recoveredBlock86Block98Block121Stack1 recoveredBlock86Block98Block121Stack2 recoveredBlock86Block98Block121Stack3 recoveredBlock86Block98Block121Stack4 recoveredBlock86Block98Block121Stack5 recoveredBlock86Block98Block121Stack6 recoveredBlock86Block98Block121PC recoveredBlock86Block98Block121Step recoveredBlock86Block98Block121Done recoveredBlock86Block98Block121Result |
    recoveredBlock86Block98Block121Stack0 := self.
    recoveredBlock86Block98Block121PC := 128.
    recoveredBlock86Block98Block121Done := false.
    [recoveredBlock86Block98Block121Done not] whileTrue: [
        recoveredBlock86Block98Block121Step := recoveredBlock86Block98Block121PC.
        recoveredBlock86Block98Block121Step = 128 ifTrue: [
            recoveredBlock86Block98Block121Stack0 := (recoveredBlock86Block98Block121Stack0) library.
            recoveredBlock86Block98Block121PC := 130.
        ].
        recoveredBlock86Block98Block121Step = 130 ifTrue: [
            recoveredBlock86Block98Block121Stack0 := (recoveredBlock86Block98Block121Stack0) isGateway.
            recoveredBlock86Block98Block121PC := 132.
        ].
        recoveredBlock86Block98Block121Step = 132 ifTrue: [
            (recoveredBlock86Block98Block121Stack0) ifTrue: [recoveredBlock86Block98Block121PC := 136] ifFalse: [recoveredBlock86Block98Block121PC := 144].
        ].
        recoveredBlock86Block98Block121Step = 136 ifTrue: [
            recoveredBlock86Block98Block121Stack0 := self.
            recoveredBlock86Block98Block121PC := 137.
        ].
        recoveredBlock86Block98Block121Step = 137 ifTrue: [
            recoveredBlock86Block98Block121Stack1 := MethodTimeStamp.
            recoveredBlock86Block98Block121PC := 139.
        ].
        recoveredBlock86Block98Block121Step = 139 ifTrue: [
            recoveredBlock86Block98Block121Stack2 := recoveredLocal1.
            recoveredBlock86Block98Block121PC := 142.
        ].
        recoveredBlock86Block98Block121Step = 142 ifTrue: [
            (recoveredBlock86Block98Block121Stack0) resultAt: (recoveredBlock86Block98Block121Stack1) put: (recoveredBlock86Block98Block121Stack2).
            recoveredBlock86Block98Block121PC := 144.
        ].
        recoveredBlock86Block98Block121Step = 144 ifTrue: [
            recoveredBlock86Block98Block121Stack0 := recoveredArg1.
            recoveredBlock86Block98Block121PC := 147.
        ].
        recoveredBlock86Block98Block121Step = 147 ifTrue: [
            recoveredBlock86Block98Block121Stack1 := recoveredArg3.
            recoveredBlock86Block98Block121PC := 150.
        ].
        recoveredBlock86Block98Block121Step = 150 ifTrue: [
            recoveredBlock86Block98Block121Stack2 := recoveredBlock86Block98Block121Stack1.
            recoveredBlock86Block98Block121PC := 151.
        ].
        recoveredBlock86Block98Block121Step = 151 ifTrue: [
            recoveredBlock86Block98Block121Stack3 := recoveredArg1.
            recoveredBlock86Block98Block121PC := 154.
        ].
        recoveredBlock86Block98Block121Step = 154 ifTrue: [
            recoveredBlock86Block98Block121Stack4 := recoveredLocal1.
            recoveredBlock86Block98Block121PC := 157.
        ].
        recoveredBlock86Block98Block121Step = 157 ifTrue: [
            recoveredBlock86Block98Block121Stack5 := recoveredArg2.
            recoveredBlock86Block98Block121PC := 160.
        ].
        recoveredBlock86Block98Block121Step = 160 ifTrue: [
            (recoveredBlock86Block98Block121Stack2) for: (recoveredBlock86Block98Block121Stack3) at: (recoveredBlock86Block98Block121Stack4) with: (recoveredBlock86Block98Block121Stack5).
            recoveredBlock86Block98Block121PC := 163.
        ].
        recoveredBlock86Block98Block121Step = 163 ifTrue: [
            recoveredBlock86Block98Block121Stack2 := self.
            recoveredBlock86Block98Block121PC := 164.
        ].
        recoveredBlock86Block98Block121Step = 164 ifTrue: [
            recoveredBlock86Block98Block121Stack2 := (recoveredBlock86Block98Block121Stack2) library.
            recoveredBlock86Block98Block121PC := 166.
        ].
        recoveredBlock86Block98Block121Step = 166 ifTrue: [
            recoveredBlock86Block98Block121Stack1 := (recoveredBlock86Block98Block121Stack1) insertInto: (recoveredBlock86Block98Block121Stack2).
            recoveredBlock86Block98Block121PC := 168.
        ].
        recoveredBlock86Block98Block121Step = 168 ifTrue: [
            recoveredBlock86Block98Block121Stack0 := (recoveredBlock86Block98Block121Stack0) primitiveFilePointer: (recoveredBlock86Block98Block121Stack1).
            recoveredBlock86Block98Block121PC := 170.
        ].
        recoveredBlock86Block98Block121Step = 170 ifTrue: [
            recoveredBlock86Block98Block121Result := recoveredBlock86Block98Block121Stack0.
            recoveredBlock86Block98Block121Done := true.
        ].
    ].
    recoveredBlock86Block98Block121Result
].
    recoveredBlock86Block98Value9 := (recoveredBlock86Block98Value3) at: (recoveredBlock86Block98Value6) putPointerFrom: (recoveredBlock86Block98Value8).
    recoveredBlock86Block98Value9
].
    recoveredBlock86Value4 := (recoveredBlock86Value0) at: (recoveredBlock86Value2) putPointerFrom: (recoveredBlock86Value3).
    recoveredBlock86Value4
].
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            (recoveredStack0) updateDictionaryAt: (recoveredStack1) using: (recoveredStack2).
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            (recoveredStack0) releaseMethod: (recoveredStack1) replacing: (recoveredStack2).
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x200285a4; bytecode file offset 0x64664"
!EmClassEditions methodsFor: 'recovered'!
addMethodEditionsIn: recoveredArg1 from: recoveredArg2 including: recoveredArg3 removeSource: recoveredArg4 removeComment: recoveredArg5 mapNewPositionsUsing: recoveredArg6
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) value.
    recoveredValue4 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Local1 recoveredBlock14Local2 recoveredBlock14Local3 recoveredBlock14Local4 recoveredBlock14Stack0 recoveredBlock14Stack1 recoveredBlock14Stack2 recoveredBlock14Stack3 recoveredBlock14Stack4 recoveredBlock14Stack5 recoveredBlock14PC recoveredBlock14Step recoveredBlock14Done recoveredBlock14Result |
    recoveredBlock14Stack0 := self.
    recoveredBlock14PC := 20.
    recoveredBlock14Done := false.
    [recoveredBlock14Done not] whileTrue: [
        recoveredBlock14Step := recoveredBlock14PC.
        recoveredBlock14Step = 20 ifTrue: [
            recoveredBlock14Stack1 := EmMethodEdition.
            recoveredBlock14PC := 22.
        ].
        recoveredBlock14Step = 22 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Arg1.
            recoveredBlock14PC := 24.
        ].
        recoveredBlock14Step = 24 ifTrue: [
            recoveredBlock14Stack3 := recoveredArg2.
            recoveredBlock14PC := 27.
        ].
        recoveredBlock14Step = 27 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) using: (recoveredBlock14Stack2) from: (recoveredBlock14Stack3).
            recoveredBlock14PC := 29.
        ].
        recoveredBlock14Step = 29 ifTrue: [
            recoveredBlock14Local4 := recoveredBlock14Stack1.
            recoveredBlock14PC := 30.
        ].
        recoveredBlock14Step = 30 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Local4.
            recoveredBlock14PC := 31.
        ].
        recoveredBlock14Step = 31 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) filePointer.
            recoveredBlock14PC := 33.
        ].
        recoveredBlock14Step = 33 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) statusBits.
            recoveredBlock14PC := 35.
        ].
        recoveredBlock14Step = 35 ifTrue: [
            recoveredBlock14Local3 := recoveredBlock14Stack1.
            recoveredBlock14PC := 36.
        ].
        recoveredBlock14Step = 36 ifTrue: [
            recoveredBlock14Stack1 := recoveredLocal1.
            recoveredBlock14PC := 39.
        ].
        recoveredBlock14Step = 39 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Local4.
            recoveredBlock14PC := 40.
        ].
        recoveredBlock14Step = 40 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) timeStamp.
            recoveredBlock14PC := 42.
        ].
        recoveredBlock14Step = 42 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) includesKey: (recoveredBlock14Stack2).
            recoveredBlock14PC := 44.
        ].
        recoveredBlock14Step = 44 ifTrue: [
            (recoveredBlock14Stack1) ifTrue: [recoveredBlock14PC := 48] ifFalse: [recoveredBlock14PC := 66].
        ].
        recoveredBlock14Step = 48 ifTrue: [
            recoveredBlock14Stack1 := recoveredLocal1.
            recoveredBlock14PC := 51.
        ].
        recoveredBlock14Step = 51 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Local4.
            recoveredBlock14PC := 52.
        ].
        recoveredBlock14Step = 52 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) timeStamp.
            recoveredBlock14PC := 54.
        ].
        recoveredBlock14Step = 54 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) at: (recoveredBlock14Stack2).
            recoveredBlock14PC := 56.
        ].
        recoveredBlock14Step = 56 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) copy.
            recoveredBlock14PC := 58.
        ].
        recoveredBlock14Step = 58 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Local3.
            recoveredBlock14PC := 59.
        ].
        recoveredBlock14Step = 59 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) statusBits: (recoveredBlock14Stack2).
            recoveredBlock14PC := 61.
        ].
        recoveredBlock14Step = 61 ifTrue: [
            recoveredBlock14Local2 := recoveredBlock14Stack1.
            recoveredBlock14PC := 62.
        ].
        recoveredBlock14Step = 62 ifTrue: [
            recoveredBlock14PC := 191.
        ].
        recoveredBlock14Step = 66 ifTrue: [
            recoveredBlock14Stack1 := recoveredArg5.
            recoveredBlock14PC := 69.
        ].
        recoveredBlock14Step = 69 ifTrue: [
            (recoveredBlock14Stack1) ifTrue: [recoveredBlock14PC := 72] ifFalse: [recoveredBlock14PC := 78].
        ].
        recoveredBlock14Step = 72 ifTrue: [
            recoveredBlock14Stack1 := #('comment').
            recoveredBlock14PC := 74.
        ].
        recoveredBlock14Step = 74 ifTrue: [
            recoveredBlock14Local1 := recoveredBlock14Stack1.
            recoveredBlock14PC := 75.
        ].
        recoveredBlock14Step = 75 ifTrue: [
            recoveredBlock14PC := 81.
        ].
        recoveredBlock14Step = 78 ifTrue: [
            recoveredBlock14Stack1 := #().
            recoveredBlock14PC := 80.
        ].
        recoveredBlock14Step = 80 ifTrue: [
            recoveredBlock14Local1 := recoveredBlock14Stack1.
            recoveredBlock14PC := 81.
        ].
        recoveredBlock14Step = 81 ifTrue: [
            recoveredBlock14Stack1 := recoveredArg4.
            recoveredBlock14PC := 84.
        ].
        recoveredBlock14Step = 84 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Local4.
            recoveredBlock14PC := 85.
        ].
        recoveredBlock14Step = 85 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) compressedSource.
            recoveredBlock14PC := 87.
        ].
        recoveredBlock14Step = 87 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) notNil.
            recoveredBlock14PC := 88.
        ].
        recoveredBlock14Step = 88 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) & (recoveredBlock14Stack2).
            recoveredBlock14PC := 90.
        ].
        recoveredBlock14Step = 90 ifTrue: [
            (recoveredBlock14Stack1) ifTrue: [recoveredBlock14PC := 94] ifFalse: [recoveredBlock14PC := 156].
        ].
        recoveredBlock14Step = 94 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Local4.
            recoveredBlock14PC := 95.
        ].
        recoveredBlock14Step = 95 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) mustBeCompiled.
            recoveredBlock14PC := 97.
        ].
        recoveredBlock14Step = 97 ifTrue: [
            (recoveredBlock14Stack1) ifTrue: [recoveredBlock14PC := 112] ifFalse: [recoveredBlock14PC := 100].
        ].
        recoveredBlock14Step = 100 ifTrue: [
            recoveredBlock14Stack1 := '_PRAGMA_*'.
            recoveredBlock14PC := 102.
        ].
        recoveredBlock14Step = 102 ifTrue: [
            recoveredBlock14Stack2 := recoveredArg1.
            recoveredBlock14PC := 105.
        ].
        recoveredBlock14Step = 105 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) key.
            recoveredBlock14PC := 107.
        ].
        recoveredBlock14Step = 107 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) match: (recoveredBlock14Stack2).
            recoveredBlock14PC := 109.
        ].
        recoveredBlock14Step = 109 ifTrue: [
            (recoveredBlock14Stack1) ifTrue: [recoveredBlock14PC := 112] ifFalse: [recoveredBlock14PC := 132].
        ].
        recoveredBlock14Step = 112 ifTrue: [
            recoveredBlock14Stack1 := self.
            recoveredBlock14PC := 113.
        ].
        recoveredBlock14Step = 113 ifTrue: [
            recoveredBlock14Stack2 := MxEMc147.
            recoveredBlock14PC := 115.
        ].
        recoveredBlock14Step = 115 ifTrue: [
            recoveredBlock14Stack3 := self.
            recoveredBlock14PC := 116.
        ].
        recoveredBlock14Step = 116 ifTrue: [
            recoveredBlock14Stack3 := (recoveredBlock14Stack3) actualClass.
            recoveredBlock14PC := 118.
        ].
        recoveredBlock14Step = 118 ifTrue: [
            recoveredBlock14Stack3 := (recoveredBlock14Stack3) name.
            recoveredBlock14PC := 120.
        ].
        recoveredBlock14Step = 120 ifTrue: [
            recoveredBlock14Stack4 := recoveredArg1.
            recoveredBlock14PC := 123.
        ].
        recoveredBlock14Step = 123 ifTrue: [
            recoveredBlock14Stack4 := (recoveredBlock14Stack4) key.
            recoveredBlock14PC := 125.
        ].
        recoveredBlock14Step = 125 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) bindWith: (recoveredBlock14Stack3) with: (recoveredBlock14Stack4).
            recoveredBlock14PC := 127.
        ].
        recoveredBlock14Step = 127 ifTrue: [
            (recoveredBlock14Stack1) logConsoleError: (recoveredBlock14Stack2).
            recoveredBlock14PC := 129.
        ].
        recoveredBlock14Step = 129 ifTrue: [
            recoveredBlock14PC := 156.
        ].
        recoveredBlock14Step = 132 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Local4.
            recoveredBlock14PC := 133.
        ].
        recoveredBlock14Step = 133 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) hasExtendedSource.
            recoveredBlock14PC := 135.
        ].
        recoveredBlock14Step = 135 ifTrue: [
            (recoveredBlock14Stack1) ifTrue: [recoveredBlock14PC := 138] ifFalse: [recoveredBlock14PC := 153].
        ].
        recoveredBlock14Step = 138 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Local1.
            recoveredBlock14PC := 139.
        ].
        recoveredBlock14Step = 139 ifTrue: [
            recoveredBlock14Stack2 := Array.
            recoveredBlock14PC := 141.
        ].
        recoveredBlock14Step = 141 ifTrue: [
            recoveredBlock14Stack3 := recoveredBlock14Local4.
            recoveredBlock14PC := 142.
        ].
        recoveredBlock14Step = 142 ifTrue: [
            recoveredBlock14Stack3 := (recoveredBlock14Stack3) class.
            recoveredBlock14PC := 144.
        ].
        recoveredBlock14Step = 144 ifTrue: [
            recoveredBlock14Stack3 := (recoveredBlock14Stack3) extendedSourceKey.
            recoveredBlock14PC := 146.
        ].
        recoveredBlock14Step = 146 ifTrue: [
            recoveredBlock14Stack3 := (recoveredBlock14Stack3) asSymbol.
            recoveredBlock14PC := 148.
        ].
        recoveredBlock14Step = 148 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) with: (recoveredBlock14Stack3).
            recoveredBlock14PC := 150.
        ].
        recoveredBlock14Step = 150 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) , (recoveredBlock14Stack2).
            recoveredBlock14PC := 152.
        ].
        recoveredBlock14Step = 152 ifTrue: [
            recoveredBlock14Local1 := recoveredBlock14Stack1.
            recoveredBlock14PC := 153.
        ].
        recoveredBlock14Step = 153 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Local4.
            recoveredBlock14PC := 154.
        ].
        recoveredBlock14Step = 154 ifTrue: [
            (recoveredBlock14Stack1) clearSource.
            recoveredBlock14PC := 156.
        ].
        recoveredBlock14Step = 156 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Local4.
            recoveredBlock14PC := 157.
        ].
        recoveredBlock14Step = 157 ifTrue: [
            recoveredBlock14Stack2 := self.
            recoveredBlock14PC := 158.
        ].
        recoveredBlock14Step = 158 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) library.
            recoveredBlock14PC := 160.
        ].
        recoveredBlock14Step = 160 ifTrue: [
            recoveredBlock14Stack3 := recoveredBlock14Local1.
            recoveredBlock14PC := 161.
        ].
        recoveredBlock14Step = 161 ifTrue: [
            recoveredBlock14Stack4 := self.
            recoveredBlock14PC := 162.
        ].
        recoveredBlock14Step = 162 ifTrue: [
            recoveredBlock14Stack4 := (recoveredBlock14Stack4) class.
            recoveredBlock14PC := 164.
        ].
        recoveredBlock14Step = 164 ifTrue: [
            recoveredBlock14Stack4 := (recoveredBlock14Stack4) forgettableLocalFields.
            recoveredBlock14PC := 166.
        ].
        recoveredBlock14Step = 166 ifTrue: [
            (recoveredBlock14Stack1) movePartsTo: (recoveredBlock14Stack2) leavingOutInherited: (recoveredBlock14Stack3) leavingOutLocal: (recoveredBlock14Stack4).
            recoveredBlock14PC := 169.
        ].
        recoveredBlock14Step = 169 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Local4.
            recoveredBlock14PC := 170.
        ].
        recoveredBlock14Step = 170 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Stack1.
            recoveredBlock14PC := 171.
        ].
        recoveredBlock14Step = 171 ifTrue: [
            recoveredBlock14Stack3 := recoveredArg3.
            recoveredBlock14PC := 174.
        ].
        recoveredBlock14Step = 174 ifTrue: [
            recoveredBlock14Stack4 := self.
            recoveredBlock14PC := 175.
        ].
        recoveredBlock14Step = 175 ifTrue: [
            recoveredBlock14Stack4 := (recoveredBlock14Stack4) library.
            recoveredBlock14PC := 177.
        ].
        recoveredBlock14Step = 177 ifTrue: [
            (recoveredBlock14Stack2) moveFormats: (recoveredBlock14Stack3) to: (recoveredBlock14Stack4).
            recoveredBlock14PC := 179.
        ].
        recoveredBlock14Step = 179 ifTrue: [
            recoveredBlock14Stack2 := self.
            recoveredBlock14PC := 180.
        ].
        recoveredBlock14Step = 180 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) library.
            recoveredBlock14PC := 182.
        ].
        recoveredBlock14Step = 182 ifTrue: [
            (recoveredBlock14Stack1) insertInto: (recoveredBlock14Stack2).
            recoveredBlock14PC := 184.
        ].
        recoveredBlock14Step = 184 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Local4.
            recoveredBlock14PC := 185.
        ].
        recoveredBlock14Step = 185 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) filePointer.
            recoveredBlock14PC := 187.
        ].
        recoveredBlock14Step = 187 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Local3.
            recoveredBlock14PC := 188.
        ].
        recoveredBlock14Step = 188 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) statusBits: (recoveredBlock14Stack2).
            recoveredBlock14PC := 190.
        ].
        recoveredBlock14Step = 190 ifTrue: [
            recoveredBlock14Local2 := recoveredBlock14Stack1.
            recoveredBlock14PC := 191.
        ].
        recoveredBlock14Step = 191 ifTrue: [
            recoveredBlock14Stack1 := recoveredArg6.
            recoveredBlock14PC := 194.
        ].
        recoveredBlock14Step = 194 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Arg1.
            recoveredBlock14PC := 196.
        ].
        recoveredBlock14Step = 196 ifTrue: [
            recoveredBlock14Stack3 := recoveredBlock14Local2.
            recoveredBlock14PC := 197.
        ].
        recoveredBlock14Step = 197 ifTrue: [
            (recoveredBlock14Stack1) at: (recoveredBlock14Stack2) put: (recoveredBlock14Stack3).
            recoveredBlock14PC := 199.
        ].
        recoveredBlock14Step = 199 ifTrue: [
            recoveredBlock14Stack1 := recoveredLocal1.
            recoveredBlock14PC := 202.
        ].
        recoveredBlock14Step = 202 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Local4.
            recoveredBlock14PC := 203.
        ].
        recoveredBlock14Step = 203 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) timeStamp.
            recoveredBlock14PC := 205.
        ].
        recoveredBlock14Step = 205 ifTrue: [
            recoveredBlock14Stack3 := recoveredBlock14Local2.
            recoveredBlock14PC := 206.
        ].
        recoveredBlock14Step = 206 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) at: (recoveredBlock14Stack2) put: (recoveredBlock14Stack3).
            recoveredBlock14PC := 208.
        ].
        recoveredBlock14Step = 208 ifTrue: [
            recoveredBlock14Result := recoveredBlock14Stack1.
            recoveredBlock14Done := true.
        ].
    ].
    recoveredBlock14Result
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"lib.ic method 0x2002a304; bytecode file offset 0x66388"
!EmClassEditions methodsFor: 'recovered'!
addEntry: recoveredArg1 instanceMethods: recoveredArg2 classMethods: recoveredArg3 mappingPositionsUsing: recoveredArg4 removeComment: recoveredArg5
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EmLibraryPointer.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) void.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Stack0 recoveredBlock14Stack1 recoveredBlock14Stack2 recoveredBlock14Stack3 recoveredBlock14Stack4 recoveredBlock14PC recoveredBlock14Step recoveredBlock14Done recoveredBlock14Result |
    recoveredBlock14Stack0 := self.
    recoveredBlock14PC := 20.
    recoveredBlock14Done := false.
    [recoveredBlock14Done not] whileTrue: [
        recoveredBlock14Step := recoveredBlock14PC.
        recoveredBlock14Step = 20 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Arg1.
            recoveredBlock14PC := 23.
        ].
        recoveredBlock14Step = 23 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) definitionTimeStamp.
            recoveredBlock14PC := 24.
        ].
        recoveredBlock14Step = 24 ifTrue: [
            recoveredBlock14Stack2 := recoveredArg1.
            recoveredBlock14PC := 27.
        ].
        recoveredBlock14Step = 27 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) definitionTimeStamp.
            recoveredBlock14PC := 28.
        ].
        recoveredBlock14Step = 28 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) = (recoveredBlock14Stack2).
            recoveredBlock14PC := 29.
        ].
        recoveredBlock14Step = 29 ifTrue: [
            (recoveredBlock14Stack1) ifTrue: [recoveredBlock14PC := 32] ifFalse: [recoveredBlock14PC := 39].
        ].
        recoveredBlock14Step = 32 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Arg1.
            recoveredBlock14PC := 35.
        ].
        recoveredBlock14Step = 35 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) definitionFilePointer.
            recoveredBlock14PC := 36.
        ].
        recoveredBlock14Step = 36 ifTrue: [
            recoveredLocal4 := recoveredBlock14Stack1.
            recoveredBlock14PC := 39.
        ].
        recoveredBlock14Step = 39 ifTrue: [
            recoveredBlock14Stack1 := nil.
            recoveredBlock14PC := 40.
        ].
        recoveredBlock14Step = 40 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Arg1.
            recoveredBlock14PC := 43.
        ].
        recoveredBlock14Step = 43 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) timeStamp.
            recoveredBlock14PC := 45.
        ].
        recoveredBlock14Step = 45 ifTrue: [
            recoveredBlock14Stack3 := recoveredArg1.
            recoveredBlock14PC := 48.
        ].
        recoveredBlock14Step = 48 ifTrue: [
            recoveredBlock14Stack3 := (recoveredBlock14Stack3) timeStamp.
            recoveredBlock14PC := 50.
        ].
        recoveredBlock14Step = 50 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) = (recoveredBlock14Stack3).
            recoveredBlock14PC := 51.
        ].
        recoveredBlock14Step = 51 ifTrue: [
            (recoveredBlock14Stack2) ifTrue: [recoveredBlock14PC := 54] ifFalse: [recoveredBlock14PC := 142].
        ].
        recoveredBlock14Step = 54 ifTrue: [
            recoveredBlock14PC := 55.
        ].
        recoveredBlock14Step = 55 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Arg1.
            recoveredBlock14PC := 58.
        ].
        recoveredBlock14Step = 58 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) isVersion.
            recoveredBlock14PC := 60.
        ].
        recoveredBlock14Step = 60 ifTrue: [
            (recoveredBlock14Stack1) ifTrue: [recoveredBlock14PC := 64] ifFalse: [recoveredBlock14PC := 137].
        ].
        recoveredBlock14Step = 64 ifTrue: [
            recoveredBlock14Stack1 := recoveredArg1.
            recoveredBlock14PC := 67.
        ].
        recoveredBlock14Step = 67 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) knownFormats.
            recoveredBlock14PC := 69.
        ].
        recoveredBlock14Step = 69 ifTrue: [
            recoveredLocal2 := recoveredBlock14Stack1.
            recoveredBlock14PC := 72.
        ].
        recoveredBlock14Step = 72 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Arg1.
            recoveredBlock14PC := 75.
        ].
        recoveredBlock14Step = 75 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) knownFormats.
            recoveredBlock14PC := 77.
        ].
        recoveredBlock14Step = 77 ifTrue: [
            recoveredBlock14Stack2 := [:recoveredBlock14Block77Arg1 | 
    | recoveredBlock14Block77Value0 recoveredBlock14Block77Value1 recoveredBlock14Block77Value2 |
    recoveredBlock14Block77Value0 := recoveredLocal2.
    recoveredBlock14Block77Value1 := recoveredBlock14Block77Arg1.
    recoveredBlock14Block77Value2 := (recoveredBlock14Block77Value0) includes: (recoveredBlock14Block77Value1).
    recoveredBlock14Block77Value2
].
            recoveredBlock14PC := 91.
        ].
        recoveredBlock14Step = 91 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) reject: (recoveredBlock14Stack2).
            recoveredBlock14PC := 93.
        ].
        recoveredBlock14Step = 93 ifTrue: [
            recoveredLocal1 := recoveredBlock14Stack1.
            recoveredBlock14PC := 96.
        ].
        recoveredBlock14Step = 96 ifTrue: [
            recoveredBlock14Stack1 := recoveredLocal1.
            recoveredBlock14PC := 99.
        ].
        recoveredBlock14Step = 99 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) isEmpty.
            recoveredBlock14PC := 101.
        ].
        recoveredBlock14Step = 101 ifTrue: [
            (recoveredBlock14Stack1) ifTrue: [recoveredBlock14PC := 104] ifFalse: [recoveredBlock14PC := 106].
        ].
        recoveredBlock14Step = 104 ifTrue: [
            recoveredBlock14Stack1 := nil.
            recoveredBlock14PC := 105.
        ].
        recoveredBlock14Step = 105 ifTrue: [
            ^recoveredBlock14Stack1
        ].
        recoveredBlock14Step = 106 ifTrue: [
            recoveredBlock14Stack1 := recoveredLocal1.
            recoveredBlock14PC := 109.
        ].
        recoveredBlock14Step = 109 ifTrue: [
            recoveredBlock14Stack2 := [:recoveredBlock14Block109Arg1 | 
    | recoveredBlock14Block109Value0 recoveredBlock14Block109Value1 recoveredBlock14Block109Value2 |
    recoveredBlock14Block109Value0 := recoveredBlock14Arg1.
    recoveredBlock14Block109Value1 := recoveredBlock14Block109Arg1.
    recoveredBlock14Block109Value2 := (recoveredBlock14Block109Value0) knowsMFTS: (recoveredBlock14Block109Value1).
    recoveredBlock14Block109Value2
].
            recoveredBlock14PC := 123.
        ].
        recoveredBlock14Step = 123 ifTrue: [
            (recoveredBlock14Stack1) do: (recoveredBlock14Stack2).
            recoveredBlock14PC := 125.
        ].
        recoveredBlock14Step = 125 ifTrue: [
            recoveredBlock14Stack1 := self.
            recoveredBlock14PC := 126.
        ].
        recoveredBlock14Step = 126 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Arg1.
            recoveredBlock14PC := 129.
        ].
        recoveredBlock14Step = 129 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) collection.
            recoveredBlock14PC := 131.
        ].
        recoveredBlock14Step = 131 ifTrue: [
            (recoveredBlock14Stack1) collection: (recoveredBlock14Stack2).
            recoveredBlock14PC := 133.
        ].
        recoveredBlock14Step = 133 ifTrue: [
            recoveredBlock14Stack1 := self.
            recoveredBlock14PC := 134.
        ].
        recoveredBlock14Step = 134 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) noLongerExistsInLibrary.
            recoveredBlock14PC := 136.
        ].
        recoveredBlock14Step = 136 ifTrue: [
            ^recoveredBlock14Stack1
        ].
        recoveredBlock14Step = 137 ifTrue: [
            recoveredBlock14Stack1 := true.
            recoveredBlock14PC := 138.
        ].
        recoveredBlock14Step = 138 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Stack1.
            recoveredBlock14PC := 139.
        ].
        recoveredBlock14Step = 139 ifTrue: [
            recoveredLocal3 := recoveredBlock14Stack2.
            recoveredBlock14PC := 142.
        ].
        recoveredBlock14Step = 142 ifTrue: [
            recoveredBlock14Result := recoveredBlock14Stack1.
            recoveredBlock14Done := true.
        ].
    ].
    recoveredBlock14Result
].
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            (recoveredStack0) forAllEntriesDo: (recoveredStack1).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 152] ifFalse: [recoveredPC := 163].
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack2 := (recoveredStack2) timeStamp.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := (recoveredStack1) entryAt: (recoveredStack2).
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            (recoveredStack0) removeEntry: (recoveredStack1).
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := [:recoveredBlock166Arg1 | 
    | recoveredBlock166Value0 recoveredBlock166Value1 recoveredBlock166Value2 recoveredBlock166Value3 recoveredBlock166Value4 recoveredBlock166Value5 |
    recoveredBlock166Value0 := recoveredBlock166Arg1.
    recoveredBlock166Value1 := recoveredArg4.
    recoveredBlock166Value2 := recoveredBlock166Arg1.
    recoveredBlock166Value3 := (recoveredBlock166Value2) value.
    recoveredBlock166Value4 := (recoveredBlock166Value1) at: (recoveredBlock166Value3).
    recoveredBlock166Value5 := (recoveredBlock166Value0) value: (recoveredBlock166Value4).
    recoveredBlock166Value5
].
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            (recoveredStack0) associationsDo: (recoveredStack1).
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack1 := [:recoveredBlock189Arg1 | 
    | recoveredBlock189Value0 recoveredBlock189Value1 recoveredBlock189Value2 recoveredBlock189Value3 recoveredBlock189Value4 recoveredBlock189Value5 |
    recoveredBlock189Value0 := recoveredBlock189Arg1.
    recoveredBlock189Value1 := recoveredArg4.
    recoveredBlock189Value2 := recoveredBlock189Arg1.
    recoveredBlock189Value3 := (recoveredBlock189Value2) value.
    recoveredBlock189Value4 := (recoveredBlock189Value1) at: (recoveredBlock189Value3).
    recoveredBlock189Value5 := (recoveredBlock189Value0) value: (recoveredBlock189Value4).
    recoveredBlock189Value5
].
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            (recoveredStack0) associationsDo: (recoveredStack1).
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack1 := (recoveredStack1) library.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack2 := recoveredArg5.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack5 := recoveredArg3.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            (recoveredStack0) movePartsTo: (recoveredStack1) removeComment: (recoveredStack2) definitionFP: (recoveredStack3) instMethods: (recoveredStack4) classMethods: (recoveredStack5).
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            (recoveredStack0) appendWith: (recoveredStack1).
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2002d3a8; bytecode file offset 0x69418"
!EmClassEditions methodsFor: 'recovered'!
addNewClassVersions: recoveredArg1 from: recoveredArg2 withInstanceMethods: recoveredArg3 and: recoveredArg4 withClassMethods: recoveredArg5 and: recoveredArg6 allFormats: recoveredArg7 removeSourceFrom: recoveredArg8 removeCommentsFrom: recoveredArg9
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := recoveredArg4.
    recoveredValue2 := (recoveredValue1) size.
    recoveredValue3 := recoveredArg6.
    recoveredValue4 := (recoveredValue3) size.
    recoveredValue5 := (recoveredValue2) + (recoveredValue4).
    recoveredValue6 := (recoveredValue5) * (2).
    recoveredValue7 := (recoveredValue0) new: (recoveredValue6).
    recoveredLocal4 := recoveredValue7.
    recoveredValue8 := Dictionary.
    recoveredValue9 := recoveredArg4.
    recoveredValue10 := (recoveredValue9) size.
    recoveredValue11 := (recoveredValue10) * (2).
    recoveredValue12 := (recoveredValue8) new: (recoveredValue11).
    recoveredLocal3 := recoveredValue12.
    recoveredValue13 := recoveredArg4.
    recoveredValue14 := [:recoveredBlock38Arg1 | 
    | recoveredBlock38Stack0 recoveredBlock38Stack1 recoveredBlock38Stack2 recoveredBlock38Stack3 recoveredBlock38Stack4 recoveredBlock38Stack5 recoveredBlock38Stack6 recoveredBlock38Stack7 recoveredBlock38PC recoveredBlock38Step recoveredBlock38Done recoveredBlock38Result |
    recoveredBlock38Stack0 := self.
    recoveredBlock38PC := 44.
    recoveredBlock38Done := false.
    [recoveredBlock38Done not] whileTrue: [
        recoveredBlock38Step := recoveredBlock38PC.
        recoveredBlock38Step = 44 ifTrue: [
            recoveredBlock38Stack1 := recoveredBlock38Arg1.
            recoveredBlock38PC := 45.
        ].
        recoveredBlock38Step = 45 ifTrue: [
            recoveredBlock38Stack2 := recoveredArg2.
            recoveredBlock38PC := 48.
        ].
        recoveredBlock38Step = 48 ifTrue: [
            recoveredBlock38Stack2 := (recoveredBlock38Stack2) library.
            recoveredBlock38PC := 49.
        ].
        recoveredBlock38Step = 49 ifTrue: [
            recoveredBlock38Stack3 := recoveredArg7.
            recoveredBlock38PC := 52.
        ].
        recoveredBlock38Step = 52 ifTrue: [
            recoveredBlock38Stack4 := recoveredArg8.
            recoveredBlock38PC := 55.
        ].
        recoveredBlock38Step = 55 ifTrue: [
            (recoveredBlock38Stack4 ~~ nil) ifTrue: [recoveredBlock38PC := 62] ifFalse: [recoveredBlock38PC := 58].
        ].
        recoveredBlock38Step = 58 ifTrue: [
            recoveredBlock38Stack4 := true.
            recoveredBlock38PC := 59.
        ].
        recoveredBlock38Step = 59 ifTrue: [
            recoveredBlock38PC := 72.
        ].
        recoveredBlock38Step = 62 ifTrue: [
            recoveredBlock38Stack4 := recoveredArg8.
            recoveredBlock38PC := 65.
        ].
        recoveredBlock38Step = 65 ifTrue: [
            recoveredBlock38Stack4 := (recoveredBlock38Stack4) key.
            recoveredBlock38PC := 67.
        ].
        recoveredBlock38Step = 67 ifTrue: [
            recoveredBlock38Stack5 := recoveredBlock38Arg1.
            recoveredBlock38PC := 68.
        ].
        recoveredBlock38Step = 68 ifTrue: [
            recoveredBlock38Stack5 := (recoveredBlock38Stack5) key.
            recoveredBlock38PC := 70.
        ].
        recoveredBlock38Step = 70 ifTrue: [
            recoveredBlock38Stack4 := (recoveredBlock38Stack4) includes: (recoveredBlock38Stack5).
            recoveredBlock38PC := 72.
        ].
        recoveredBlock38Step = 72 ifTrue: [
            recoveredBlock38Stack5 := recoveredArg9.
            recoveredBlock38PC := 75.
        ].
        recoveredBlock38Step = 75 ifTrue: [
            (recoveredBlock38Stack5 ~~ nil) ifTrue: [recoveredBlock38PC := 82] ifFalse: [recoveredBlock38PC := 78].
        ].
        recoveredBlock38Step = 78 ifTrue: [
            recoveredBlock38Stack5 := true.
            recoveredBlock38PC := 79.
        ].
        recoveredBlock38Step = 79 ifTrue: [
            recoveredBlock38PC := 92.
        ].
        recoveredBlock38Step = 82 ifTrue: [
            recoveredBlock38Stack5 := recoveredArg9.
            recoveredBlock38PC := 85.
        ].
        recoveredBlock38Step = 85 ifTrue: [
            recoveredBlock38Stack5 := (recoveredBlock38Stack5) key.
            recoveredBlock38PC := 87.
        ].
        recoveredBlock38Step = 87 ifTrue: [
            recoveredBlock38Stack6 := recoveredBlock38Arg1.
            recoveredBlock38PC := 88.
        ].
        recoveredBlock38Step = 88 ifTrue: [
            recoveredBlock38Stack6 := (recoveredBlock38Stack6) key.
            recoveredBlock38PC := 90.
        ].
        recoveredBlock38Step = 90 ifTrue: [
            recoveredBlock38Stack5 := (recoveredBlock38Stack5) includes: (recoveredBlock38Stack6).
            recoveredBlock38PC := 92.
        ].
        recoveredBlock38Step = 92 ifTrue: [
            recoveredBlock38Stack6 := recoveredLocal4.
            recoveredBlock38PC := 95.
        ].
        recoveredBlock38Step = 95 ifTrue: [
            recoveredBlock38Stack0 := (recoveredBlock38Stack0) addMethodEditionsIn: (recoveredBlock38Stack1) from: (recoveredBlock38Stack2) including: (recoveredBlock38Stack3) removeSource: (recoveredBlock38Stack4) removeComment: (recoveredBlock38Stack5) mapNewPositionsUsing: (recoveredBlock38Stack6).
            recoveredBlock38PC := 98.
        ].
        recoveredBlock38Step = 98 ifTrue: [
            recoveredLocal2 := recoveredBlock38Stack0.
            recoveredBlock38PC := 101.
        ].
        recoveredBlock38Step = 101 ifTrue: [
            recoveredBlock38Stack0 := recoveredLocal3.
            recoveredBlock38PC := 104.
        ].
        recoveredBlock38Step = 104 ifTrue: [
            recoveredBlock38Stack1 := recoveredBlock38Arg1.
            recoveredBlock38PC := 105.
        ].
        recoveredBlock38Step = 105 ifTrue: [
            recoveredBlock38Stack1 := (recoveredBlock38Stack1) key.
            recoveredBlock38PC := 107.
        ].
        recoveredBlock38Step = 107 ifTrue: [
            recoveredBlock38Stack2 := EmEditionsDictionary.
            recoveredBlock38PC := 109.
        ].
        recoveredBlock38Step = 109 ifTrue: [
            recoveredBlock38Stack3 := recoveredLocal2.
            recoveredBlock38PC := 112.
        ].
        recoveredBlock38Step = 112 ifTrue: [
            recoveredBlock38Stack4 := self.
            recoveredBlock38PC := 113.
        ].
        recoveredBlock38Step = 113 ifTrue: [
            recoveredBlock38Stack4 := (recoveredBlock38Stack4) library.
            recoveredBlock38PC := 114.
        ].
        recoveredBlock38Step = 114 ifTrue: [
            recoveredBlock38Stack2 := (recoveredBlock38Stack2) createFor: (recoveredBlock38Stack3) in: (recoveredBlock38Stack4).
            recoveredBlock38PC := 116.
        ].
        recoveredBlock38Step = 116 ifTrue: [
            recoveredBlock38Stack0 := (recoveredBlock38Stack0) at: (recoveredBlock38Stack1) put: (recoveredBlock38Stack2).
            recoveredBlock38PC := 118.
        ].
        recoveredBlock38Step = 118 ifTrue: [
            recoveredBlock38Result := recoveredBlock38Stack0.
            recoveredBlock38Done := true.
        ].
    ].
    recoveredBlock38Result
].
    (recoveredValue13) associationsDo: (recoveredValue14).
    recoveredValue15 := (self) instEditionsIndex.
    recoveredValue16 := EmDiskDictionary.
    recoveredValue17 := recoveredLocal3.
    recoveredValue18 := (self) library.
    recoveredValue19 := (recoveredValue16) createFor: (recoveredValue17) in: (recoveredValue18).
    (self) at: (recoveredValue15) putFilePointer: (recoveredValue19).
    recoveredValue20 := Dictionary.
    recoveredValue21 := recoveredArg6.
    recoveredValue22 := (recoveredValue21) size.
    recoveredValue23 := (recoveredValue22) * (2).
    recoveredValue24 := (recoveredValue20) new: (recoveredValue23).
    recoveredLocal3 := recoveredValue24.
    recoveredValue25 := recoveredArg6.
    recoveredValue26 := [:recoveredBlock151Arg1 | 
    | recoveredBlock151Stack0 recoveredBlock151Stack1 recoveredBlock151Stack2 recoveredBlock151Stack3 recoveredBlock151Stack4 recoveredBlock151Stack5 recoveredBlock151Stack6 recoveredBlock151Stack7 recoveredBlock151PC recoveredBlock151Step recoveredBlock151Done recoveredBlock151Result |
    recoveredBlock151Stack0 := self.
    recoveredBlock151PC := 158.
    recoveredBlock151Done := false.
    [recoveredBlock151Done not] whileTrue: [
        recoveredBlock151Step := recoveredBlock151PC.
        recoveredBlock151Step = 158 ifTrue: [
            recoveredBlock151Stack1 := recoveredBlock151Arg1.
            recoveredBlock151PC := 159.
        ].
        recoveredBlock151Step = 159 ifTrue: [
            recoveredBlock151Stack2 := recoveredArg2.
            recoveredBlock151PC := 162.
        ].
        recoveredBlock151Step = 162 ifTrue: [
            recoveredBlock151Stack2 := (recoveredBlock151Stack2) library.
            recoveredBlock151PC := 163.
        ].
        recoveredBlock151Step = 163 ifTrue: [
            recoveredBlock151Stack3 := recoveredArg7.
            recoveredBlock151PC := 166.
        ].
        recoveredBlock151Step = 166 ifTrue: [
            recoveredBlock151Stack4 := recoveredArg8.
            recoveredBlock151PC := 169.
        ].
        recoveredBlock151Step = 169 ifTrue: [
            (recoveredBlock151Stack4 ~~ nil) ifTrue: [recoveredBlock151PC := 176] ifFalse: [recoveredBlock151PC := 172].
        ].
        recoveredBlock151Step = 172 ifTrue: [
            recoveredBlock151Stack4 := true.
            recoveredBlock151PC := 173.
        ].
        recoveredBlock151Step = 173 ifTrue: [
            recoveredBlock151PC := 186.
        ].
        recoveredBlock151Step = 176 ifTrue: [
            recoveredBlock151Stack4 := recoveredArg8.
            recoveredBlock151PC := 179.
        ].
        recoveredBlock151Step = 179 ifTrue: [
            recoveredBlock151Stack4 := (recoveredBlock151Stack4) value.
            recoveredBlock151PC := 181.
        ].
        recoveredBlock151Step = 181 ifTrue: [
            recoveredBlock151Stack5 := recoveredBlock151Arg1.
            recoveredBlock151PC := 182.
        ].
        recoveredBlock151Step = 182 ifTrue: [
            recoveredBlock151Stack5 := (recoveredBlock151Stack5) key.
            recoveredBlock151PC := 184.
        ].
        recoveredBlock151Step = 184 ifTrue: [
            recoveredBlock151Stack4 := (recoveredBlock151Stack4) includes: (recoveredBlock151Stack5).
            recoveredBlock151PC := 186.
        ].
        recoveredBlock151Step = 186 ifTrue: [
            recoveredBlock151Stack5 := recoveredArg9.
            recoveredBlock151PC := 189.
        ].
        recoveredBlock151Step = 189 ifTrue: [
            (recoveredBlock151Stack5 ~~ nil) ifTrue: [recoveredBlock151PC := 196] ifFalse: [recoveredBlock151PC := 192].
        ].
        recoveredBlock151Step = 192 ifTrue: [
            recoveredBlock151Stack5 := true.
            recoveredBlock151PC := 193.
        ].
        recoveredBlock151Step = 193 ifTrue: [
            recoveredBlock151PC := 206.
        ].
        recoveredBlock151Step = 196 ifTrue: [
            recoveredBlock151Stack5 := recoveredArg9.
            recoveredBlock151PC := 199.
        ].
        recoveredBlock151Step = 199 ifTrue: [
            recoveredBlock151Stack5 := (recoveredBlock151Stack5) value.
            recoveredBlock151PC := 201.
        ].
        recoveredBlock151Step = 201 ifTrue: [
            recoveredBlock151Stack6 := recoveredBlock151Arg1.
            recoveredBlock151PC := 202.
        ].
        recoveredBlock151Step = 202 ifTrue: [
            recoveredBlock151Stack6 := (recoveredBlock151Stack6) key.
            recoveredBlock151PC := 204.
        ].
        recoveredBlock151Step = 204 ifTrue: [
            recoveredBlock151Stack5 := (recoveredBlock151Stack5) includes: (recoveredBlock151Stack6).
            recoveredBlock151PC := 206.
        ].
        recoveredBlock151Step = 206 ifTrue: [
            recoveredBlock151Stack6 := recoveredLocal4.
            recoveredBlock151PC := 209.
        ].
        recoveredBlock151Step = 209 ifTrue: [
            recoveredBlock151Stack0 := (recoveredBlock151Stack0) addMethodEditionsIn: (recoveredBlock151Stack1) from: (recoveredBlock151Stack2) including: (recoveredBlock151Stack3) removeSource: (recoveredBlock151Stack4) removeComment: (recoveredBlock151Stack5) mapNewPositionsUsing: (recoveredBlock151Stack6).
            recoveredBlock151PC := 212.
        ].
        recoveredBlock151Step = 212 ifTrue: [
            recoveredLocal2 := recoveredBlock151Stack0.
            recoveredBlock151PC := 215.
        ].
        recoveredBlock151Step = 215 ifTrue: [
            recoveredBlock151Stack0 := recoveredLocal3.
            recoveredBlock151PC := 218.
        ].
        recoveredBlock151Step = 218 ifTrue: [
            recoveredBlock151Stack1 := recoveredBlock151Arg1.
            recoveredBlock151PC := 219.
        ].
        recoveredBlock151Step = 219 ifTrue: [
            recoveredBlock151Stack1 := (recoveredBlock151Stack1) key.
            recoveredBlock151PC := 221.
        ].
        recoveredBlock151Step = 221 ifTrue: [
            recoveredBlock151Stack2 := EmEditionsDictionary.
            recoveredBlock151PC := 223.
        ].
        recoveredBlock151Step = 223 ifTrue: [
            recoveredBlock151Stack3 := recoveredLocal2.
            recoveredBlock151PC := 226.
        ].
        recoveredBlock151Step = 226 ifTrue: [
            recoveredBlock151Stack4 := self.
            recoveredBlock151PC := 227.
        ].
        recoveredBlock151Step = 227 ifTrue: [
            recoveredBlock151Stack4 := (recoveredBlock151Stack4) library.
            recoveredBlock151PC := 228.
        ].
        recoveredBlock151Step = 228 ifTrue: [
            recoveredBlock151Stack2 := (recoveredBlock151Stack2) createFor: (recoveredBlock151Stack3) in: (recoveredBlock151Stack4).
            recoveredBlock151PC := 230.
        ].
        recoveredBlock151Step = 230 ifTrue: [
            recoveredBlock151Stack0 := (recoveredBlock151Stack0) at: (recoveredBlock151Stack1) put: (recoveredBlock151Stack2).
            recoveredBlock151PC := 232.
        ].
        recoveredBlock151Step = 232 ifTrue: [
            recoveredBlock151Result := recoveredBlock151Stack0.
            recoveredBlock151Done := true.
        ].
    ].
    recoveredBlock151Result
].
    (recoveredValue25) associationsDo: (recoveredValue26).
    recoveredValue27 := (self) classEditionsIndex.
    recoveredValue28 := EmDiskDictionary.
    recoveredValue29 := recoveredLocal3.
    recoveredValue30 := (self) library.
    recoveredValue31 := (recoveredValue28) createFor: (recoveredValue29) in: (recoveredValue30).
    (self) at: (recoveredValue27) putFilePointer: (recoveredValue31).
    recoveredValue32 := recoveredArg2.
    recoveredValue33 := [:recoveredBlock253Arg1 | 
    | recoveredBlock253Stack0 recoveredBlock253Stack1 recoveredBlock253Stack2 recoveredBlock253Stack3 recoveredBlock253Stack4 recoveredBlock253Stack5 recoveredBlock253Stack6 recoveredBlock253Stack7 recoveredBlock253PC recoveredBlock253Step recoveredBlock253Done recoveredBlock253Result |
    recoveredBlock253Stack0 := self.
    recoveredBlock253PC := 260.
    recoveredBlock253Done := false.
    [recoveredBlock253Done not] whileTrue: [
        recoveredBlock253Step := recoveredBlock253PC.
        recoveredBlock253Step = 260 ifTrue: [
            recoveredBlock253Stack1 := nil.
            recoveredBlock253PC := 261.
        ].
        recoveredBlock253Step = 261 ifTrue: [
            recoveredBlock253Stack2 := recoveredArg1.
            recoveredBlock253PC := 264.
        ].
        recoveredBlock253Step = 264 ifTrue: [
            recoveredBlock253Stack3 := recoveredBlock253Arg1.
            recoveredBlock253PC := 265.
        ].
        recoveredBlock253Step = 265 ifTrue: [
            recoveredBlock253Stack3 := (recoveredBlock253Stack3) timeStamp.
            recoveredBlock253PC := 267.
        ].
        recoveredBlock253Step = 267 ifTrue: [
            recoveredBlock253Stack4 := recoveredBlock253Stack3.
            recoveredBlock253PC := 268.
        ].
        recoveredBlock253Step = 268 ifTrue: [
            recoveredLocal1 := recoveredBlock253Stack4.
            recoveredBlock253PC := 271.
        ].
        recoveredBlock253Step = 271 ifTrue: [
            recoveredBlock253Stack2 := (recoveredBlock253Stack2) includes: (recoveredBlock253Stack3).
            recoveredBlock253PC := 273.
        ].
        recoveredBlock253Step = 273 ifTrue: [
            (recoveredBlock253Stack2) ifTrue: [recoveredBlock253PC := 276] ifFalse: [recoveredBlock253PC := 305].
        ].
        recoveredBlock253Step = 276 ifTrue: [
            recoveredBlock253PC := 277.
        ].
        recoveredBlock253Step = 277 ifTrue: [
            recoveredBlock253Stack1 := self.
            recoveredBlock253PC := 278.
        ].
        recoveredBlock253Step = 278 ifTrue: [
            recoveredBlock253Stack2 := recoveredBlock253Arg1.
            recoveredBlock253PC := 279.
        ].
        recoveredBlock253Step = 279 ifTrue: [
            recoveredBlock253Stack3 := recoveredArg3.
            recoveredBlock253PC := 282.
        ].
        recoveredBlock253Step = 282 ifTrue: [
            recoveredBlock253Stack4 := recoveredLocal1.
            recoveredBlock253PC := 285.
        ].
        recoveredBlock253Step = 285 ifTrue: [
            recoveredBlock253Stack3 := (recoveredBlock253Stack3) at: (recoveredBlock253Stack4).
            recoveredBlock253PC := 287.
        ].
        recoveredBlock253Step = 287 ifTrue: [
            recoveredBlock253Stack4 := recoveredArg5.
            recoveredBlock253PC := 290.
        ].
        recoveredBlock253Step = 290 ifTrue: [
            recoveredBlock253Stack5 := recoveredLocal1.
            recoveredBlock253PC := 293.
        ].
        recoveredBlock253Step = 293 ifTrue: [
            recoveredBlock253Stack4 := (recoveredBlock253Stack4) at: (recoveredBlock253Stack5).
            recoveredBlock253PC := 295.
        ].
        recoveredBlock253Step = 295 ifTrue: [
            recoveredBlock253Stack5 := recoveredLocal4.
            recoveredBlock253PC := 298.
        ].
        recoveredBlock253Step = 298 ifTrue: [
            recoveredBlock253Stack6 := recoveredArg9.
            recoveredBlock253PC := 301.
        ].
        recoveredBlock253Step = 301 ifTrue: [
            recoveredBlock253Stack6 := (recoveredBlock253Stack6) isNil.
            recoveredBlock253PC := 302.
        ].
        recoveredBlock253Step = 302 ifTrue: [
            recoveredBlock253Stack1 := (recoveredBlock253Stack1) addEntry: (recoveredBlock253Stack2) instanceMethods: (recoveredBlock253Stack3) classMethods: (recoveredBlock253Stack4) mappingPositionsUsing: (recoveredBlock253Stack5) removeComment: (recoveredBlock253Stack6).
            recoveredBlock253PC := 305.
        ].
        recoveredBlock253Step = 305 ifTrue: [
            recoveredBlock253Result := recoveredBlock253Stack1.
            recoveredBlock253Done := true.
        ].
    ].
    recoveredBlock253Result
].
    (recoveredValue32) forAllEntriesDo: (recoveredValue33).
    ^self
! !

"lib.ic method 0x20030898; bytecode file offset 0x6c970"
!EmClassEditions methodsFor: 'recovered'!
updateMethodEditionsAt: recoveredArg1 using: recoveredArg2 from: recoveredArg3 including: recoveredArg4 removeSource: recoveredArg5 removeComment: recoveredArg6 mapNewPositionsUsing: recoveredArg7
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) methodEditionsIndex.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := recoveredArg1.
    recoveredBlock6Value2 := [:recoveredBlock6Block16Arg1 | 
    | recoveredBlock6Block16Local1 recoveredBlock6Block16Value0 recoveredBlock6Block16Value1 recoveredBlock6Block16Value2 recoveredBlock6Block16Value3 recoveredBlock6Block16Value4 recoveredBlock6Block16Value5 recoveredBlock6Block16Value6 recoveredBlock6Block16Value7 |
    recoveredBlock6Block16Value0 := EmEditionsDictionary.
    recoveredBlock6Block16Value1 := recoveredBlock6Block16Arg1.
    recoveredBlock6Block16Value2 := (self) library.
    recoveredBlock6Block16Value3 := (recoveredBlock6Block16Value0) updating: (recoveredBlock6Block16Value1) from: (recoveredBlock6Block16Value2).
    recoveredBlock6Block16Local1 := recoveredBlock6Block16Value3.
    recoveredBlock6Block16Value4 := recoveredArg2.
    recoveredBlock6Block16Value5 := [:recoveredBlock6Block16Block37Arg1 | 
    | recoveredBlock6Block16Block37Local1 recoveredBlock6Block16Block37Value0 recoveredBlock6Block16Block37Value1 recoveredBlock6Block16Block37Value2 recoveredBlock6Block16Block37Value3 recoveredBlock6Block16Block37Value4 recoveredBlock6Block16Block37Value5 recoveredBlock6Block16Block37Value6 recoveredBlock6Block16Block37Value7 recoveredBlock6Block16Block37Value8 |
    recoveredBlock6Block16Block37Value0 := EmMethodEdition.
    recoveredBlock6Block16Block37Value1 := recoveredBlock6Block16Block37Arg1.
    recoveredBlock6Block16Block37Value2 := recoveredArg3.
    recoveredBlock6Block16Block37Value3 := (recoveredBlock6Block16Block37Value0) using: (recoveredBlock6Block16Block37Value1) from: (recoveredBlock6Block16Block37Value2).
    recoveredBlock6Block16Block37Local1 := recoveredBlock6Block16Block37Value3.
    recoveredBlock6Block16Block37Value4 := recoveredBlock6Block16Local1.
    recoveredBlock6Block16Block37Value5 := recoveredBlock6Block16Block37Local1.
    recoveredBlock6Block16Block37Value6 := (recoveredBlock6Block16Block37Value5) timeStamp.
    recoveredBlock6Block16Block37Value7 := [:recoveredBlock6Block16Block37Block65Arg1 | 
    | recoveredBlock6Block16Block37Block65Local1 recoveredBlock6Block16Block37Block65Local2 recoveredBlock6Block16Block37Block65Local3 recoveredBlock6Block16Block37Block65Local4 recoveredBlock6Block16Block37Block65Local5 recoveredBlock6Block16Block37Block65Stack0 recoveredBlock6Block16Block37Block65Stack1 recoveredBlock6Block16Block37Block65Stack2 recoveredBlock6Block16Block37Block65Stack3 recoveredBlock6Block16Block37Block65Stack4 recoveredBlock6Block16Block37Block65Stack5 recoveredBlock6Block16Block37Block65PC recoveredBlock6Block16Block37Block65Step recoveredBlock6Block16Block37Block65Done recoveredBlock6Block16Block37Block65Result |
    recoveredBlock6Block16Block37Block65Stack0 := self.
    recoveredBlock6Block16Block37Block65PC := 72.
    recoveredBlock6Block16Block37Block65Done := false.
    [recoveredBlock6Block16Block37Block65Done not] whileTrue: [
        recoveredBlock6Block16Block37Block65Step := recoveredBlock6Block16Block37Block65PC.
        recoveredBlock6Block16Block37Block65Step = 72 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack1 := recoveredBlock6Block16Block37Block65Arg1.
            recoveredBlock6Block16Block37Block65PC := 74.
        ].
        recoveredBlock6Block16Block37Block65Step = 74 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack1 := (recoveredBlock6Block16Block37Block65Stack1) isVoid.
            recoveredBlock6Block16Block37Block65PC := 76.
        ].
        recoveredBlock6Block16Block37Block65Step = 76 ifTrue: [
            (recoveredBlock6Block16Block37Block65Stack1) ifTrue: [recoveredBlock6Block16Block37Block65PC := 80] ifFalse: [recoveredBlock6Block16Block37Block65PC := 224].
        ].
        recoveredBlock6Block16Block37Block65Step = 80 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack1 := recoveredArg6.
            recoveredBlock6Block16Block37Block65PC := 83.
        ].
        recoveredBlock6Block16Block37Block65Step = 83 ifTrue: [
            (recoveredBlock6Block16Block37Block65Stack1) ifTrue: [recoveredBlock6Block16Block37Block65PC := 86] ifFalse: [recoveredBlock6Block16Block37Block65PC := 92].
        ].
        recoveredBlock6Block16Block37Block65Step = 86 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack1 := #('comment').
            recoveredBlock6Block16Block37Block65PC := 88.
        ].
        recoveredBlock6Block16Block37Block65Step = 88 ifTrue: [
            recoveredBlock6Block16Block37Block65Local1 := recoveredBlock6Block16Block37Block65Stack1.
            recoveredBlock6Block16Block37Block65PC := 89.
        ].
        recoveredBlock6Block16Block37Block65Step = 89 ifTrue: [
            recoveredBlock6Block16Block37Block65PC := 95.
        ].
        recoveredBlock6Block16Block37Block65Step = 92 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack1 := #().
            recoveredBlock6Block16Block37Block65PC := 94.
        ].
        recoveredBlock6Block16Block37Block65Step = 94 ifTrue: [
            recoveredBlock6Block16Block37Block65Local1 := recoveredBlock6Block16Block37Block65Stack1.
            recoveredBlock6Block16Block37Block65PC := 95.
        ].
        recoveredBlock6Block16Block37Block65Step = 95 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack1 := recoveredArg5.
            recoveredBlock6Block16Block37Block65PC := 98.
        ].
        recoveredBlock6Block16Block37Block65Step = 98 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack2 := recoveredBlock6Block16Block37Local1.
            recoveredBlock6Block16Block37Block65PC := 101.
        ].
        recoveredBlock6Block16Block37Block65Step = 101 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack2 := (recoveredBlock6Block16Block37Block65Stack2) compressedSource.
            recoveredBlock6Block16Block37Block65PC := 103.
        ].
        recoveredBlock6Block16Block37Block65Step = 103 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack2 := (recoveredBlock6Block16Block37Block65Stack2) notNil.
            recoveredBlock6Block16Block37Block65PC := 104.
        ].
        recoveredBlock6Block16Block37Block65Step = 104 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack1 := (recoveredBlock6Block16Block37Block65Stack1) & (recoveredBlock6Block16Block37Block65Stack2).
            recoveredBlock6Block16Block37Block65PC := 106.
        ].
        recoveredBlock6Block16Block37Block65Step = 106 ifTrue: [
            (recoveredBlock6Block16Block37Block65Stack1) ifTrue: [recoveredBlock6Block16Block37Block65PC := 110] ifFalse: [recoveredBlock6Block16Block37Block65PC := 176].
        ].
        recoveredBlock6Block16Block37Block65Step = 110 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack1 := recoveredBlock6Block16Block37Local1.
            recoveredBlock6Block16Block37Block65PC := 113.
        ].
        recoveredBlock6Block16Block37Block65Step = 113 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack1 := (recoveredBlock6Block16Block37Block65Stack1) mustBeCompiled.
            recoveredBlock6Block16Block37Block65PC := 115.
        ].
        recoveredBlock6Block16Block37Block65Step = 115 ifTrue: [
            (recoveredBlock6Block16Block37Block65Stack1) ifTrue: [recoveredBlock6Block16Block37Block65PC := 128] ifFalse: [recoveredBlock6Block16Block37Block65PC := 118].
        ].
        recoveredBlock6Block16Block37Block65Step = 118 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack1 := '_PRAGMA_*'.
            recoveredBlock6Block16Block37Block65PC := 120.
        ].
        recoveredBlock6Block16Block37Block65Step = 120 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack2 := recoveredArg1.
            recoveredBlock6Block16Block37Block65PC := 123.
        ].
        recoveredBlock6Block16Block37Block65Step = 123 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack1 := (recoveredBlock6Block16Block37Block65Stack1) match: (recoveredBlock6Block16Block37Block65Stack2).
            recoveredBlock6Block16Block37Block65PC := 125.
        ].
        recoveredBlock6Block16Block37Block65Step = 125 ifTrue: [
            (recoveredBlock6Block16Block37Block65Stack1) ifTrue: [recoveredBlock6Block16Block37Block65PC := 128] ifFalse: [recoveredBlock6Block16Block37Block65PC := 146].
        ].
        recoveredBlock6Block16Block37Block65Step = 128 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack1 := self.
            recoveredBlock6Block16Block37Block65PC := 129.
        ].
        recoveredBlock6Block16Block37Block65Step = 129 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack2 := MxEMc148.
            recoveredBlock6Block16Block37Block65PC := 131.
        ].
        recoveredBlock6Block16Block37Block65Step = 131 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack3 := self.
            recoveredBlock6Block16Block37Block65PC := 132.
        ].
        recoveredBlock6Block16Block37Block65Step = 132 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack3 := (recoveredBlock6Block16Block37Block65Stack3) actualClass.
            recoveredBlock6Block16Block37Block65PC := 134.
        ].
        recoveredBlock6Block16Block37Block65Step = 134 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack3 := (recoveredBlock6Block16Block37Block65Stack3) name.
            recoveredBlock6Block16Block37Block65PC := 136.
        ].
        recoveredBlock6Block16Block37Block65Step = 136 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack4 := recoveredArg1.
            recoveredBlock6Block16Block37Block65PC := 139.
        ].
        recoveredBlock6Block16Block37Block65Step = 139 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack2 := (recoveredBlock6Block16Block37Block65Stack2) bindWith: (recoveredBlock6Block16Block37Block65Stack3) with: (recoveredBlock6Block16Block37Block65Stack4).
            recoveredBlock6Block16Block37Block65PC := 141.
        ].
        recoveredBlock6Block16Block37Block65Step = 141 ifTrue: [
            (recoveredBlock6Block16Block37Block65Stack1) logConsoleError: (recoveredBlock6Block16Block37Block65Stack2).
            recoveredBlock6Block16Block37Block65PC := 143.
        ].
        recoveredBlock6Block16Block37Block65Step = 143 ifTrue: [
            recoveredBlock6Block16Block37Block65PC := 176.
        ].
        recoveredBlock6Block16Block37Block65Step = 146 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack1 := recoveredBlock6Block16Block37Local1.
            recoveredBlock6Block16Block37Block65PC := 149.
        ].
        recoveredBlock6Block16Block37Block65Step = 149 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack1 := (recoveredBlock6Block16Block37Block65Stack1) hasExtendedSource.
            recoveredBlock6Block16Block37Block65PC := 151.
        ].
        recoveredBlock6Block16Block37Block65Step = 151 ifTrue: [
            (recoveredBlock6Block16Block37Block65Stack1) ifTrue: [recoveredBlock6Block16Block37Block65PC := 154] ifFalse: [recoveredBlock6Block16Block37Block65PC := 171].
        ].
        recoveredBlock6Block16Block37Block65Step = 154 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack1 := recoveredBlock6Block16Block37Block65Local1.
            recoveredBlock6Block16Block37Block65PC := 155.
        ].
        recoveredBlock6Block16Block37Block65Step = 155 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack2 := Array.
            recoveredBlock6Block16Block37Block65PC := 157.
        ].
        recoveredBlock6Block16Block37Block65Step = 157 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack3 := recoveredBlock6Block16Block37Local1.
            recoveredBlock6Block16Block37Block65PC := 160.
        ].
        recoveredBlock6Block16Block37Block65Step = 160 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack3 := (recoveredBlock6Block16Block37Block65Stack3) class.
            recoveredBlock6Block16Block37Block65PC := 162.
        ].
        recoveredBlock6Block16Block37Block65Step = 162 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack3 := (recoveredBlock6Block16Block37Block65Stack3) extendedSourceKey.
            recoveredBlock6Block16Block37Block65PC := 164.
        ].
        recoveredBlock6Block16Block37Block65Step = 164 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack3 := (recoveredBlock6Block16Block37Block65Stack3) asSymbol.
            recoveredBlock6Block16Block37Block65PC := 166.
        ].
        recoveredBlock6Block16Block37Block65Step = 166 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack2 := (recoveredBlock6Block16Block37Block65Stack2) with: (recoveredBlock6Block16Block37Block65Stack3).
            recoveredBlock6Block16Block37Block65PC := 168.
        ].
        recoveredBlock6Block16Block37Block65Step = 168 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack1 := (recoveredBlock6Block16Block37Block65Stack1) , (recoveredBlock6Block16Block37Block65Stack2).
            recoveredBlock6Block16Block37Block65PC := 170.
        ].
        recoveredBlock6Block16Block37Block65Step = 170 ifTrue: [
            recoveredBlock6Block16Block37Block65Local1 := recoveredBlock6Block16Block37Block65Stack1.
            recoveredBlock6Block16Block37Block65PC := 171.
        ].
        recoveredBlock6Block16Block37Block65Step = 171 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack1 := recoveredBlock6Block16Block37Local1.
            recoveredBlock6Block16Block37Block65PC := 174.
        ].
        recoveredBlock6Block16Block37Block65Step = 174 ifTrue: [
            (recoveredBlock6Block16Block37Block65Stack1) clearSource.
            recoveredBlock6Block16Block37Block65PC := 176.
        ].
        recoveredBlock6Block16Block37Block65Step = 176 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack1 := recoveredBlock6Block16Block37Local1.
            recoveredBlock6Block16Block37Block65PC := 179.
        ].
        recoveredBlock6Block16Block37Block65Step = 179 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack1 := (recoveredBlock6Block16Block37Block65Stack1) filePointer.
            recoveredBlock6Block16Block37Block65PC := 181.
        ].
        recoveredBlock6Block16Block37Block65Step = 181 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack1 := (recoveredBlock6Block16Block37Block65Stack1) statusBits.
            recoveredBlock6Block16Block37Block65PC := 183.
        ].
        recoveredBlock6Block16Block37Block65Step = 183 ifTrue: [
            recoveredBlock6Block16Block37Block65Local4 := recoveredBlock6Block16Block37Block65Stack1.
            recoveredBlock6Block16Block37Block65PC := 184.
        ].
        recoveredBlock6Block16Block37Block65Step = 184 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack1 := recoveredBlock6Block16Block37Local1.
            recoveredBlock6Block16Block37Block65PC := 187.
        ].
        recoveredBlock6Block16Block37Block65Step = 187 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack2 := self.
            recoveredBlock6Block16Block37Block65PC := 188.
        ].
        recoveredBlock6Block16Block37Block65Step = 188 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack2 := (recoveredBlock6Block16Block37Block65Stack2) library.
            recoveredBlock6Block16Block37Block65PC := 189.
        ].
        recoveredBlock6Block16Block37Block65Step = 189 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack3 := recoveredBlock6Block16Block37Block65Local1.
            recoveredBlock6Block16Block37Block65PC := 190.
        ].
        recoveredBlock6Block16Block37Block65Step = 190 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack4 := self.
            recoveredBlock6Block16Block37Block65PC := 191.
        ].
        recoveredBlock6Block16Block37Block65Step = 191 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack4 := (recoveredBlock6Block16Block37Block65Stack4) class.
            recoveredBlock6Block16Block37Block65PC := 193.
        ].
        recoveredBlock6Block16Block37Block65Step = 193 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack4 := (recoveredBlock6Block16Block37Block65Stack4) forgettableLocalFields.
            recoveredBlock6Block16Block37Block65PC := 195.
        ].
        recoveredBlock6Block16Block37Block65Step = 195 ifTrue: [
            (recoveredBlock6Block16Block37Block65Stack1) movePartsTo: (recoveredBlock6Block16Block37Block65Stack2) leavingOutInherited: (recoveredBlock6Block16Block37Block65Stack3) leavingOutLocal: (recoveredBlock6Block16Block37Block65Stack4).
            recoveredBlock6Block16Block37Block65PC := 198.
        ].
        recoveredBlock6Block16Block37Block65Step = 198 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack1 := recoveredBlock6Block16Block37Local1.
            recoveredBlock6Block16Block37Block65PC := 201.
        ].
        recoveredBlock6Block16Block37Block65Step = 201 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack2 := recoveredBlock6Block16Block37Block65Stack1.
            recoveredBlock6Block16Block37Block65PC := 202.
        ].
        recoveredBlock6Block16Block37Block65Step = 202 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack3 := recoveredArg4.
            recoveredBlock6Block16Block37Block65PC := 205.
        ].
        recoveredBlock6Block16Block37Block65Step = 205 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack4 := self.
            recoveredBlock6Block16Block37Block65PC := 206.
        ].
        recoveredBlock6Block16Block37Block65Step = 206 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack4 := (recoveredBlock6Block16Block37Block65Stack4) library.
            recoveredBlock6Block16Block37Block65PC := 207.
        ].
        recoveredBlock6Block16Block37Block65Step = 207 ifTrue: [
            (recoveredBlock6Block16Block37Block65Stack2) moveFormats: (recoveredBlock6Block16Block37Block65Stack3) to: (recoveredBlock6Block16Block37Block65Stack4).
            recoveredBlock6Block16Block37Block65PC := 209.
        ].
        recoveredBlock6Block16Block37Block65Step = 209 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack2 := self.
            recoveredBlock6Block16Block37Block65PC := 210.
        ].
        recoveredBlock6Block16Block37Block65Step = 210 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack2 := (recoveredBlock6Block16Block37Block65Stack2) library.
            recoveredBlock6Block16Block37Block65PC := 211.
        ].
        recoveredBlock6Block16Block37Block65Step = 211 ifTrue: [
            (recoveredBlock6Block16Block37Block65Stack1) insertInto: (recoveredBlock6Block16Block37Block65Stack2).
            recoveredBlock6Block16Block37Block65PC := 213.
        ].
        recoveredBlock6Block16Block37Block65Step = 213 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack1 := recoveredBlock6Block16Block37Local1.
            recoveredBlock6Block16Block37Block65PC := 216.
        ].
        recoveredBlock6Block16Block37Block65Step = 216 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack1 := (recoveredBlock6Block16Block37Block65Stack1) filePointer.
            recoveredBlock6Block16Block37Block65PC := 218.
        ].
        recoveredBlock6Block16Block37Block65Step = 218 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack2 := recoveredBlock6Block16Block37Block65Local4.
            recoveredBlock6Block16Block37Block65PC := 219.
        ].
        recoveredBlock6Block16Block37Block65Step = 219 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack1 := (recoveredBlock6Block16Block37Block65Stack1) statusBits: (recoveredBlock6Block16Block37Block65Stack2).
            recoveredBlock6Block16Block37Block65PC := 221.
        ].
        recoveredBlock6Block16Block37Block65Step = 221 ifTrue: [
            recoveredBlock6Block16Block37Block65PC := 343.
        ].
        recoveredBlock6Block16Block37Block65Step = 224 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack1 := EmMethodEdition.
            recoveredBlock6Block16Block37Block65PC := 226.
        ].
        recoveredBlock6Block16Block37Block65Step = 226 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack2 := recoveredBlock6Block16Block37Block65Arg1.
            recoveredBlock6Block16Block37Block65PC := 228.
        ].
        recoveredBlock6Block16Block37Block65Step = 228 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack3 := self.
            recoveredBlock6Block16Block37Block65PC := 229.
        ].
        recoveredBlock6Block16Block37Block65Step = 229 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack3 := (recoveredBlock6Block16Block37Block65Stack3) library.
            recoveredBlock6Block16Block37Block65PC := 230.
        ].
        recoveredBlock6Block16Block37Block65Step = 230 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack1 := (recoveredBlock6Block16Block37Block65Stack1) updating: (recoveredBlock6Block16Block37Block65Stack2) from: (recoveredBlock6Block16Block37Block65Stack3).
            recoveredBlock6Block16Block37Block65PC := 232.
        ].
        recoveredBlock6Block16Block37Block65Step = 232 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack2 := recoveredBlock6Block16Block37Block65Stack1.
            recoveredBlock6Block16Block37Block65PC := 233.
        ].
        recoveredBlock6Block16Block37Block65Step = 233 ifTrue: [
            recoveredBlock6Block16Block37Block65Local3 := recoveredBlock6Block16Block37Block65Stack2.
            recoveredBlock6Block16Block37Block65PC := 234.
        ].
        recoveredBlock6Block16Block37Block65Step = 234 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack2 := recoveredArg4.
            recoveredBlock6Block16Block37Block65PC := 237.
        ].
        recoveredBlock6Block16Block37Block65Step = 237 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack3 := recoveredBlock6Block16Block37Local1.
            recoveredBlock6Block16Block37Block65PC := 240.
        ].
        recoveredBlock6Block16Block37Block65Step = 240 ifTrue: [
            (recoveredBlock6Block16Block37Block65Stack1) mergeFormats: (recoveredBlock6Block16Block37Block65Stack2) with: (recoveredBlock6Block16Block37Block65Stack3).
            recoveredBlock6Block16Block37Block65PC := 242.
        ].
        recoveredBlock6Block16Block37Block65Step = 242 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack1 := self.
            recoveredBlock6Block16Block37Block65PC := 243.
        ].
        recoveredBlock6Block16Block37Block65Step = 243 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack1 := (recoveredBlock6Block16Block37Block65Stack1) class.
            recoveredBlock6Block16Block37Block65PC := 245.
        ].
        recoveredBlock6Block16Block37Block65Step = 245 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack1 := (recoveredBlock6Block16Block37Block65Stack1) refreshMethodComments.
            recoveredBlock6Block16Block37Block65PC := 247.
        ].
        recoveredBlock6Block16Block37Block65Step = 247 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack2 := true.
            recoveredBlock6Block16Block37Block65PC := 248.
        ].
        recoveredBlock6Block16Block37Block65Step = 248 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack1 := (recoveredBlock6Block16Block37Block65Stack1) = (recoveredBlock6Block16Block37Block65Stack2).
            recoveredBlock6Block16Block37Block65PC := 249.
        ].
        recoveredBlock6Block16Block37Block65Step = 249 ifTrue: [
            (recoveredBlock6Block16Block37Block65Stack1) ifTrue: [recoveredBlock6Block16Block37Block65PC := 252] ifFalse: [recoveredBlock6Block16Block37Block65PC := 282].
        ].
        recoveredBlock6Block16Block37Block65Step = 252 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack1 := recoveredBlock6Block16Block37Local1.
            recoveredBlock6Block16Block37Block65PC := 255.
        ].
        recoveredBlock6Block16Block37Block65Step = 255 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack2 := 'comment'.
            recoveredBlock6Block16Block37Block65PC := 257.
        ].
        recoveredBlock6Block16Block37Block65Step = 257 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack1 := (recoveredBlock6Block16Block37Block65Stack1) inheritedUserFieldAt: (recoveredBlock6Block16Block37Block65Stack2).
            recoveredBlock6Block16Block37Block65PC := 259.
        ].
        recoveredBlock6Block16Block37Block65Step = 259 ifTrue: [
            recoveredBlock6Block16Block37Block65Local2 := recoveredBlock6Block16Block37Block65Stack1.
            recoveredBlock6Block16Block37Block65PC := 260.
        ].
        recoveredBlock6Block16Block37Block65Step = 260 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack1 := recoveredBlock6Block16Block37Block65Local2.
            recoveredBlock6Block16Block37Block65PC := 261.
        ].
        recoveredBlock6Block16Block37Block65Step = 261 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack1 := (recoveredBlock6Block16Block37Block65Stack1) isEmpty.
            recoveredBlock6Block16Block37Block65PC := 263.
        ].
        recoveredBlock6Block16Block37Block65Step = 263 ifTrue: [
            (recoveredBlock6Block16Block37Block65Stack1) ifTrue: [recoveredBlock6Block16Block37Block65PC := 282] ifFalse: [recoveredBlock6Block16Block37Block65PC := 266].
        ].
        recoveredBlock6Block16Block37Block65Step = 266 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack1 := recoveredBlock6Block16Block37Block65Local2.
            recoveredBlock6Block16Block37Block65PC := 267.
        ].
        recoveredBlock6Block16Block37Block65Step = 267 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack2 := recoveredBlock6Block16Block37Block65Local3.
            recoveredBlock6Block16Block37Block65PC := 268.
        ].
        recoveredBlock6Block16Block37Block65Step = 268 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack3 := 'comment'.
            recoveredBlock6Block16Block37Block65PC := 270.
        ].
        recoveredBlock6Block16Block37Block65Step = 270 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack2 := (recoveredBlock6Block16Block37Block65Stack2) inheritedUserFieldAt: (recoveredBlock6Block16Block37Block65Stack3).
            recoveredBlock6Block16Block37Block65PC := 272.
        ].
        recoveredBlock6Block16Block37Block65Step = 272 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack1 := (recoveredBlock6Block16Block37Block65Stack1) = (recoveredBlock6Block16Block37Block65Stack2).
            recoveredBlock6Block16Block37Block65PC := 273.
        ].
        recoveredBlock6Block16Block37Block65Step = 273 ifTrue: [
            (recoveredBlock6Block16Block37Block65Stack1) ifTrue: [recoveredBlock6Block16Block37Block65PC := 282] ifFalse: [recoveredBlock6Block16Block37Block65PC := 276].
        ].
        recoveredBlock6Block16Block37Block65Step = 276 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack1 := recoveredBlock6Block16Block37Block65Local3.
            recoveredBlock6Block16Block37Block65PC := 277.
        ].
        recoveredBlock6Block16Block37Block65Step = 277 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack2 := 'comment'.
            recoveredBlock6Block16Block37Block65PC := 279.
        ].
        recoveredBlock6Block16Block37Block65Step = 279 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack3 := recoveredBlock6Block16Block37Block65Local2.
            recoveredBlock6Block16Block37Block65PC := 280.
        ].
        recoveredBlock6Block16Block37Block65Step = 280 ifTrue: [
            (recoveredBlock6Block16Block37Block65Stack1) inheritedUserFieldAt: (recoveredBlock6Block16Block37Block65Stack2) put: (recoveredBlock6Block16Block37Block65Stack3).
            recoveredBlock6Block16Block37Block65PC := 282.
        ].
        recoveredBlock6Block16Block37Block65Step = 282 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack1 := recoveredArg5.
            recoveredBlock6Block16Block37Block65PC := 285.
        ].
        recoveredBlock6Block16Block37Block65Step = 285 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack2 := recoveredBlock6Block16Block37Block65Local3.
            recoveredBlock6Block16Block37Block65PC := 286.
        ].
        recoveredBlock6Block16Block37Block65Step = 286 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack2 := (recoveredBlock6Block16Block37Block65Stack2) compressedSource.
            recoveredBlock6Block16Block37Block65PC := 288.
        ].
        recoveredBlock6Block16Block37Block65Step = 288 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack2 := (recoveredBlock6Block16Block37Block65Stack2) notNil.
            recoveredBlock6Block16Block37Block65PC := 289.
        ].
        recoveredBlock6Block16Block37Block65Step = 289 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack1 := (recoveredBlock6Block16Block37Block65Stack1) & (recoveredBlock6Block16Block37Block65Stack2).
            recoveredBlock6Block16Block37Block65PC := 291.
        ].
        recoveredBlock6Block16Block37Block65Step = 291 ifTrue: [
            (recoveredBlock6Block16Block37Block65Stack1) ifTrue: [recoveredBlock6Block16Block37Block65PC := 294] ifFalse: [recoveredBlock6Block16Block37Block65PC := 331].
        ].
        recoveredBlock6Block16Block37Block65Step = 294 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack1 := recoveredBlock6Block16Block37Block65Local3.
            recoveredBlock6Block16Block37Block65PC := 295.
        ].
        recoveredBlock6Block16Block37Block65Step = 295 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack1 := (recoveredBlock6Block16Block37Block65Stack1) mustBeCompiled.
            recoveredBlock6Block16Block37Block65PC := 297.
        ].
        recoveredBlock6Block16Block37Block65Step = 297 ifTrue: [
            (recoveredBlock6Block16Block37Block65Stack1) ifTrue: [recoveredBlock6Block16Block37Block65PC := 310] ifFalse: [recoveredBlock6Block16Block37Block65PC := 300].
        ].
        recoveredBlock6Block16Block37Block65Step = 300 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack1 := '_PRAGMA_*'.
            recoveredBlock6Block16Block37Block65PC := 302.
        ].
        recoveredBlock6Block16Block37Block65Step = 302 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack2 := recoveredArg1.
            recoveredBlock6Block16Block37Block65PC := 305.
        ].
        recoveredBlock6Block16Block37Block65Step = 305 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack1 := (recoveredBlock6Block16Block37Block65Stack1) match: (recoveredBlock6Block16Block37Block65Stack2).
            recoveredBlock6Block16Block37Block65PC := 307.
        ].
        recoveredBlock6Block16Block37Block65Step = 307 ifTrue: [
            (recoveredBlock6Block16Block37Block65Stack1) ifTrue: [recoveredBlock6Block16Block37Block65PC := 310] ifFalse: [recoveredBlock6Block16Block37Block65PC := 328].
        ].
        recoveredBlock6Block16Block37Block65Step = 310 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack1 := self.
            recoveredBlock6Block16Block37Block65PC := 311.
        ].
        recoveredBlock6Block16Block37Block65Step = 311 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack2 := MxEMc148.
            recoveredBlock6Block16Block37Block65PC := 313.
        ].
        recoveredBlock6Block16Block37Block65Step = 313 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack3 := self.
            recoveredBlock6Block16Block37Block65PC := 314.
        ].
        recoveredBlock6Block16Block37Block65Step = 314 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack3 := (recoveredBlock6Block16Block37Block65Stack3) actualClass.
            recoveredBlock6Block16Block37Block65PC := 316.
        ].
        recoveredBlock6Block16Block37Block65Step = 316 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack3 := (recoveredBlock6Block16Block37Block65Stack3) name.
            recoveredBlock6Block16Block37Block65PC := 318.
        ].
        recoveredBlock6Block16Block37Block65Step = 318 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack4 := recoveredArg1.
            recoveredBlock6Block16Block37Block65PC := 321.
        ].
        recoveredBlock6Block16Block37Block65Step = 321 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack2 := (recoveredBlock6Block16Block37Block65Stack2) bindWith: (recoveredBlock6Block16Block37Block65Stack3) with: (recoveredBlock6Block16Block37Block65Stack4).
            recoveredBlock6Block16Block37Block65PC := 323.
        ].
        recoveredBlock6Block16Block37Block65Step = 323 ifTrue: [
            (recoveredBlock6Block16Block37Block65Stack1) logConsoleError: (recoveredBlock6Block16Block37Block65Stack2).
            recoveredBlock6Block16Block37Block65PC := 325.
        ].
        recoveredBlock6Block16Block37Block65Step = 325 ifTrue: [
            recoveredBlock6Block16Block37Block65PC := 331.
        ].
        recoveredBlock6Block16Block37Block65Step = 328 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack1 := recoveredBlock6Block16Block37Block65Local3.
            recoveredBlock6Block16Block37Block65PC := 329.
        ].
        recoveredBlock6Block16Block37Block65Step = 329 ifTrue: [
            (recoveredBlock6Block16Block37Block65Stack1) removeSource.
            recoveredBlock6Block16Block37Block65PC := 331.
        ].
        recoveredBlock6Block16Block37Block65Step = 331 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack1 := recoveredBlock6Block16Block37Block65Local3.
            recoveredBlock6Block16Block37Block65PC := 332.
        ].
        recoveredBlock6Block16Block37Block65Step = 332 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack1 := (recoveredBlock6Block16Block37Block65Stack1) filePointer.
            recoveredBlock6Block16Block37Block65PC := 334.
        ].
        recoveredBlock6Block16Block37Block65Step = 334 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack2 := recoveredBlock6Block16Block37Local1.
            recoveredBlock6Block16Block37Block65PC := 337.
        ].
        recoveredBlock6Block16Block37Block65Step = 337 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack2 := (recoveredBlock6Block16Block37Block65Stack2) filePointer.
            recoveredBlock6Block16Block37Block65PC := 339.
        ].
        recoveredBlock6Block16Block37Block65Step = 339 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack2 := (recoveredBlock6Block16Block37Block65Stack2) statusBits.
            recoveredBlock6Block16Block37Block65PC := 341.
        ].
        recoveredBlock6Block16Block37Block65Step = 341 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack1 := (recoveredBlock6Block16Block37Block65Stack1) statusBits: (recoveredBlock6Block16Block37Block65Stack2).
            recoveredBlock6Block16Block37Block65PC := 343.
        ].
        recoveredBlock6Block16Block37Block65Step = 343 ifTrue: [
            recoveredBlock6Block16Block37Block65Local5 := recoveredBlock6Block16Block37Block65Stack1.
            recoveredBlock6Block16Block37Block65PC := 345.
        ].
        recoveredBlock6Block16Block37Block65Step = 345 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack1 := recoveredArg7.
            recoveredBlock6Block16Block37Block65PC := 348.
        ].
        recoveredBlock6Block16Block37Block65Step = 348 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack2 := recoveredBlock6Block16Block37Arg1.
            recoveredBlock6Block16Block37Block65PC := 351.
        ].
        recoveredBlock6Block16Block37Block65Step = 351 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack3 := recoveredBlock6Block16Block37Block65Local5.
            recoveredBlock6Block16Block37Block65PC := 353.
        ].
        recoveredBlock6Block16Block37Block65Step = 353 ifTrue: [
            (recoveredBlock6Block16Block37Block65Stack1) at: (recoveredBlock6Block16Block37Block65Stack2) put: (recoveredBlock6Block16Block37Block65Stack3).
            recoveredBlock6Block16Block37Block65PC := 355.
        ].
        recoveredBlock6Block16Block37Block65Step = 355 ifTrue: [
            recoveredBlock6Block16Block37Block65Stack1 := recoveredBlock6Block16Block37Block65Local5.
            recoveredBlock6Block16Block37Block65PC := 357.
        ].
        recoveredBlock6Block16Block37Block65Step = 357 ifTrue: [
            recoveredBlock6Block16Block37Block65Result := recoveredBlock6Block16Block37Block65Stack1.
            recoveredBlock6Block16Block37Block65Done := true.
        ].
    ].
    recoveredBlock6Block16Block37Block65Result
].
    recoveredBlock6Block16Block37Value8 := (recoveredBlock6Block16Block37Value4) at: (recoveredBlock6Block16Block37Value6) putPointerFrom: (recoveredBlock6Block16Block37Value7).
    recoveredBlock6Block16Block37Value8
].
    (recoveredBlock6Block16Value4) do: (recoveredBlock6Block16Value5).
    recoveredBlock6Block16Value6 := recoveredBlock6Block16Local1.
    recoveredBlock6Block16Value7 := (recoveredBlock6Block16Value6) filePointer.
    recoveredBlock6Block16Value7
].
    recoveredBlock6Value3 := (recoveredBlock6Value0) at: (recoveredBlock6Value1) putPointerFrom: (recoveredBlock6Value2).
    recoveredBlock6Value3
].
    (self) updateDictionaryAt: (recoveredValue0) using: (recoveredValue1).
    ^self
! !

