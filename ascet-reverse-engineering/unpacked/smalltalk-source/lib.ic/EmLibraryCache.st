"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"lib.ic method 0x20000358; bytecode file offset 0x3c670"
!EmLibraryCache methodsFor: 'recovered'!
dictionaryOfTimeStampsClass
    | recoveredValue0 |
    recoveredValue0 := EmDictionaryOfTimeStamps.
    ^recoveredValue0
! !

"lib.ic method 0x20000400; bytecode file offset 0x3c670"
!EmLibraryCache methodsFor: 'recovered'!
libraryClass
    | recoveredValue0 |
    recoveredValue0 := EmLibrary.
    ^recoveredValue0
! !

"lib.ic method 0x2000043c; bytecode file offset 0x3c670"
!EmLibraryCache methodsFor: 'recovered'!
diskDictionaryClass
    | recoveredValue0 |
    recoveredValue0 := EmDiskDictionary.
    ^recoveredValue0
! !

"lib.ic method 0x20000490; bytecode file offset 0x3c670"
!EmLibraryCache methodsFor: 'recovered'!
localMethodCacheClass
    | recoveredValue0 |
    recoveredValue0 := EmLocalMethodCache.
    ^recoveredValue0
! !

"lib.ic method 0x200004e4; bytecode file offset 0x3c670"
!EmLibraryCache methodsFor: 'recovered'!
applicationClass
    | recoveredValue0 |
    recoveredValue0 := Application.
    ^recoveredValue0
! !

"lib.ic method 0x2000064c; bytecode file offset 0x3c670"
!EmLibraryCache methodsFor: 'recovered'!
editionsDictionaryClass
    | recoveredValue0 |
    recoveredValue0 := EmEditionsDictionary.
    ^recoveredValue0
! !

"lib.ic method 0x20000b68; bytecode file offset 0x3cba0"
!EmLibraryCache methodsFor: 'recovered'!
resetMethodCache
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) localMethodCacheClass.
    recoveredValue1 := (recoveredValue0) resetMethodCache.
    ^recoveredValue1
! !

"lib.ic method 0x20001984; bytecode file offset 0x3da5c"
!EmLibraryCache methodsFor: 'recovered'!
methodTimeStampAt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) localMethodCacheClass.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) methodTimeStampAt: (recoveredValue1).
    ^recoveredValue2
! !

"lib.ic method 0x200019a4; bytecode file offset 0x3da5c"
!EmLibraryCache methodsFor: 'recovered'!
cacheEditionsWhileExecuting: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) cacheEditionsWhileExecuting: (recoveredValue1).
    ^recoveredValue2
! !

"lib.ic method 0x2000221c; bytecode file offset 0x3e244"
!EmLibraryCache methodsFor: 'recovered'!
initializeCache
    | recoveredValue0 |
    recoveredValue0 := (self) class.
    (recoveredValue0) initializeCache.
    ^self
! !

"lib.ic method 0x2000361c; bytecode file offset 0x3f654"
!EmLibraryCache methodsFor: 'recovered'!
partsRecordFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) symbol.
    recoveredValue3 := (self) partsRecordFor: (recoveredValue0) named: (recoveredValue2).
    ^recoveredValue3
! !

"lib.ic method 0x20003850; bytecode file offset 0x3f878"
!EmLibraryCache methodsFor: 'recovered'!
methodSourceAt: recoveredArg1 decompress: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) localMethodCacheClass.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) methodSourceAt: (recoveredValue1) decompress: (recoveredValue2).
    ^recoveredValue3
! !

"lib.ic method 0x200054b0; bytecode file offset 0x414d8"
!EmLibraryCache methodsFor: 'recovered'!
cacheFilePointer: recoveredArg1 timeStamp: recoveredArg2 compressedSource: recoveredArg3 from: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) localMethodCacheClass.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := (recoveredValue0) cacheFilePointer: (recoveredValue1) timeStamp: (recoveredValue2) compressedSource: (recoveredValue3) from: (recoveredValue4).
    ^recoveredValue5
! !

"lib.ic method 0x20009e98; bytecode file offset 0x45f10"
!EmLibraryCache methodsFor: 'recovered'!
flushEntriesForMapNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) cache.
    recoveredValue2 := [
    ^self
].
    recoveredValue3 := (recoveredValue1) at: ('configMaps') ifAbsent: (recoveredValue2).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := [].
    (recoveredValue3) removeKey: (recoveredValue4) ifAbsent: (recoveredValue5).
    ^self
! !

"lib.ic method 0x20009eb8; bytecode file offset 0x45f10"
!EmLibraryCache methodsFor: 'recovered'!
flushEntriesForApplicationNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) cache.
    recoveredValue2 := [
    ^self
].
    recoveredValue3 := (recoveredValue1) at: ('applications') ifAbsent: (recoveredValue2).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := [].
    (recoveredValue3) removeKey: (recoveredValue4) ifAbsent: (recoveredValue5).
    ^self
! !

"lib.ic method 0x20009ed8; bytecode file offset 0x45f10"
!EmLibraryCache methodsFor: 'recovered'!
flushEntriesForSubApplicationNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) cache.
    recoveredValue2 := [
    ^self
].
    recoveredValue3 := (recoveredValue1) at: ('subapplications') ifAbsent: (recoveredValue2).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := [].
    (recoveredValue3) removeKey: (recoveredValue4) ifAbsent: (recoveredValue5).
    ^self
! !

"lib.ic method 0x2000a090; bytecode file offset 0x460c8"
!EmLibraryCache methodsFor: 'recovered'!
renewClassEditionsRecord: recoveredArg1 for: recoveredArg2 in: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredStack3 := recoveredArg3.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) cachedAppInfoFor: (recoveredStack3).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) cachedClassInfoFor: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) cacheEditions.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := 'classEditionsRecord'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2000c154; bytecode file offset 0x481cc"
!EmLibraryCache methodsFor: 'recovered'!
flushEntriesForMapNames: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) cache.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := 'configMaps'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := [
    ^self
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := [:block280042b8Arg1 | 
    nil
].
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) removeAllKeys: (recoveredStack1) ifAbsent: (recoveredStack2).
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

"lib.ic method 0x2000c174; bytecode file offset 0x481cc"
!EmLibraryCache methodsFor: 'recovered'!
flushEntriesForApplicationNames: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) cache.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := 'applications'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := [
    ^self
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := [:block280042dcArg1 | 
    nil
].
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) removeAllKeys: (recoveredStack1) ifAbsent: (recoveredStack2).
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

"lib.ic method 0x2000c194; bytecode file offset 0x481cc"
!EmLibraryCache methodsFor: 'recovered'!
flushEntriesForSubApplicationNames: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) cache.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := 'subapplications'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := [
    ^self
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := [:block28004300Arg1 | 
    nil
].
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) removeAllKeys: (recoveredStack1) ifAbsent: (recoveredStack2).
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

"lib.ic method 0x2000c990; bytecode file offset 0x489cc"
!EmLibraryCache methodsFor: 'recovered'!
cachedClassInfoFor: recoveredArg1 in: recoveredArg2
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
            recoveredStack2 := 'classes'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := [
    | block28004324Value0 block28004324Value1 |
    block28004324Value0 := LookupTable.
    block28004324Value1 := (block28004324Value0) new.
    block28004324Value1
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsentPut: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) symbol.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := [
    | block28004348Value0 block28004348Value1 |
    block28004348Value0 := LookupTable.
    block28004348Value1 := (block28004348Value0) new.
    block28004348Value1
].
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsentPut: (recoveredStack3).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"lib.ic method 0x2000ccb8; bytecode file offset 0x48d60"
!EmLibraryCache methodsFor: 'recovered'!
renewSubAppRootDictionary: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) cacheEditions.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) cache.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := 'subapplications'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := [
    | block28004390Value0 block28004390Value1 |
    block28004390Value0 := LookupTable.
    block28004390Value1 := (block28004390Value0) new.
    block28004390Value1
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := 'rootDictionary'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2000cce8; bytecode file offset 0x48d60"
!EmLibraryCache methodsFor: 'recovered'!
renewMapRootDictionary: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) cacheEditions.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) cache.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := 'configMaps'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := [
    | block280043b4Value0 block280043b4Value1 |
    block280043b4Value0 := LookupTable.
    block280043b4Value1 := (block280043b4Value0) new.
    block280043b4Value1
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := 'rootDictionary'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2000cd18; bytecode file offset 0x48d60"
!EmLibraryCache methodsFor: 'recovered'!
renewAppRootDictionary: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) cacheEditions.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) cache.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := 'applications'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := [
    | block280043d8Value0 block280043d8Value1 |
    block280043d8Value0 := LookupTable.
    block280043d8Value1 := (block280043d8Value0) new.
    block280043d8Value1
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := 'rootDictionary'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2000cef8; bytecode file offset 0x48f40"
!EmLibraryCache methodsFor: 'recovered'!
renewMapInheritedUserFields: recoveredArg1 for: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) cacheEditions.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) cachedMapInfoFor: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) timeStamp.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := [
    | block280043fcValue0 block280043fcValue1 |
    block280043fcValue0 := LookupTable.
    block280043fcValue1 := (block280043fcValue0) new.
    block280043fcValue1
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := 'inherited'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2000d298; bytecode file offset 0x492e0"
!EmLibraryCache methodsFor: 'recovered'!
validSubappConfigFrom: recoveredArg1
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
            recoveredStack2 := [:block28004420Arg1 | 
    | block28004420Value0 block28004420Value1 block28004420Value2 block28004420Value3 |
    block28004420Value0 := SubApplication.
    block28004420Value1 := block28004420Arg1.
    block28004420Value2 := (block28004420Value1) key.
    block28004420Value3 := (block28004420Value0) isExpressionValid: (block28004420Value2).
    block28004420Value3
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := [
    | block28004444Value0 block28004444Value1 block28004444Value2 block28004444Value3 |
    block28004444Value0 := Association.
    block28004444Value1 := Dictionary.
    block28004444Value2 := (block28004444Value1) new.
    block28004444Value3 := (block28004444Value0) key: (nil) value: (block28004444Value2).
    block28004444Value3
].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"lib.ic method 0x2000db8c; bytecode file offset 0x49bd4"
!EmLibraryCache methodsFor: 'recovered'!
applicationEditionsFor: recoveredArg1 are: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) cacheEditions.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) cachedMapInfoFor: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) timeStamp.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := [
    | block2800448cValue0 block2800448cValue1 |
    block2800448cValue0 := LookupTable.
    block2800448cValue1 := (block2800448cValue0) new.
    block2800448cValue1
].
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := 'applicationEditions'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2000e064; bytecode file offset 0x4a0a0"
!EmLibraryCache methodsFor: 'recovered'!
classKnownMFTSFor: recoveredArg1 in: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) cachedAppInfoFor: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) cachedClassInfoFor: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 'knownMFTS'.
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
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal2.
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) classEditionsRecordFor: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) allKnownMFTS.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2000e27c; bytecode file offset 0x4a2c0"
!EmLibraryCache methodsFor: 'recovered'!
cachedMapInfoFor: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) cache.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := 'configMaps'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := [
    | block280044f8Value0 block280044f8Value1 |
    block280044f8Value0 := LookupTable.
    block280044f8Value1 := (block280044f8Value0) new.
    block280044f8Value1
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := [
    | block2800451cValue0 block2800451cValue1 |
    block2800451cValue0 := LookupTable.
    block2800451cValue1 := (block2800451cValue0) new.
    block2800451cValue1
].
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2000f974; bytecode file offset 0x4ba4c"
!EmLibraryCache methodsFor: 'recovered'!
namesAndTypesFor: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) cachedAppInfoFor: (recoveredStack1).
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) timeStamp.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := 'namesAndTypes'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal1.
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) appEditionRecordFor: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) namesAndTypes.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2000f994; bytecode file offset 0x4ba4c"
!EmLibraryCache methodsFor: 'recovered'!
releasedNamesAndTimeStampsFor: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) cachedAppInfoFor: (recoveredStack1).
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) timeStamp.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := 'releasedNamesAndTimeStamps'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal1.
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) appEditionRecordFor: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) releasedNamesAndTimeStamps.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2000f9b4; bytecode file offset 0x4ba4c"
!EmLibraryCache methodsFor: 'recovered'!
appVersionNameFor: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) cachedAppInfoFor: (recoveredStack1).
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) timeStamp.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := 'versionName'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal1.
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) appEditionRecordFor: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) versionName.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2000f9d4; bytecode file offset 0x4ba4c"
!EmLibraryCache methodsFor: 'recovered'!
mapVersionNameFor: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) cachedMapInfoFor: (recoveredStack1).
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) timeStamp.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := 'versionName'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal1.
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) mapEditionRecordFor: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) versionName.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2000f9f4; bytecode file offset 0x4ba4c"
!EmLibraryCache methodsFor: 'recovered'!
mapPreviousTimeStampFor: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) cachedMapInfoFor: (recoveredStack1).
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) timeStamp.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := 'previousTimeStamp'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal1.
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) mapEditionRecordFor: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) previousTimeStamp.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2000fa14; bytecode file offset 0x4ba4c"
!EmLibraryCache methodsFor: 'recovered'!
appPreviousTimeStampFor: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) cachedAppInfoFor: (recoveredStack1).
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) timeStamp.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := 'previousTimeStamp'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal1.
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) appEditionRecordFor: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) previousTimeStamp.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2000fc70; bytecode file offset 0x4bcc4"
!EmLibraryCache methodsFor: 'recovered'!
renewClassInheritedUserFieldsFor: recoveredArg1 for: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) cacheEditions.
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
            recoveredStack1 := recoveredArg2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) actualClass.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := (recoveredStack3) application.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) cachedAppInfoFor: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) cachedClassInfoFor: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) timeStamp.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := [
    | block28004738Value0 block28004738Value1 |
    block28004738Value0 := LookupTable.
    block28004738Value1 := (block28004738Value0) new.
    block28004738Value1
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := 'inherited'.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x200102e8; bytecode file offset 0x4c334"
!EmLibraryCache methodsFor: 'recovered'!
methodEditionFor: recoveredArg1
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
            recoveredStack0 := (recoveredStack0) cache.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := 'methods'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := [
    | block28004780Value0 block28004780Value1 |
    block28004780Value0 := LookupTable.
    block28004780Value1 := (block28004780Value0) new.
    block28004780Value1
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := EmMethodEdition.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) using: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20010ac0; bytecode file offset 0x4cb10"
!EmLibraryCache methodsFor: 'recovered'!
renewApplicationEditions: recoveredArg1 for: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) isVersion.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) cacheEditions.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) map.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) cachedMapInfoFor: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) map.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) timeStamp.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := [
    | block280047a4Value0 block280047a4Value1 |
    block280047a4Value0 := LookupTable.
    block280047a4Value1 := (block280047a4Value0) new.
    block280047a4Value1
].
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsentPut: (recoveredStack3).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := 'applicationEditions'.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"lib.ic method 0x20011cc0; bytecode file offset 0x4dd40"
!EmLibraryCache methodsFor: 'recovered'!
renewSubAppPartsRecord: recoveredArg1 for: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) cacheEditions.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) cache.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := 'subapplications'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := [
    | block2800487cValue0 block2800487cValue1 |
    block2800487cValue0 := LookupTable.
    block2800487cValue1 := (block2800487cValue0) new.
    block2800487cValue1
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := [
    | block280048a0Value0 block280048a0Value1 |
    block280048a0Value0 := LookupTable.
    block280048a0Value1 := (block280048a0Value0) new.
    block280048a0Value1
].
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := 'partsRecord'.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20011cf4; bytecode file offset 0x4dd40"
!EmLibraryCache methodsFor: 'recovered'!
renewAppPartsRecord: recoveredArg1 for: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) cacheEditions.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) cache.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := 'applications'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := [
    | block280048c4Value0 block280048c4Value1 |
    block280048c4Value0 := LookupTable.
    block280048c4Value1 := (block280048c4Value0) new.
    block280048c4Value1
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := [
    | block280048e8Value0 block280048e8Value1 |
    block280048e8Value0 := LookupTable.
    block280048e8Value1 := (block280048e8Value0) new.
    block280048e8Value1
].
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := 'partsRecord'.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x200124e4; bytecode file offset 0x4e530"
!EmLibraryCache methodsFor: 'recovered'!
appToBeLoadedCodeFor: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) cachedAppInfoFor: (recoveredStack1).
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) timeStamp.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := 'toBeLoadedCode'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := EmImageSupport.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) textFilter.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) appEditionRecordFor: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := 'toBeLoaded'.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) inheritedUserFieldAt: (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) filter: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2001254c; bytecode file offset 0x4e594"
!EmLibraryCache methodsFor: 'recovered'!
subApplicationsFor: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) cachedAppInfoFor: (recoveredStack1).
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) timeStamp.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := 'subapplications'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) key.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) configurationExpression: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) appEditionRecordFor: (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) subApplications.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x200125fc; bytecode file offset 0x4e654"
!EmLibraryCache methodsFor: 'recovered'!
renewClassTypeDeclarationString: recoveredArg1 for: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) isVersion.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) cacheEditions.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) actualClass.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack4 := (recoveredStack4) application.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := (recoveredStack3) cachedAppInfoFor: (recoveredStack4).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) cachedClassInfoFor: (recoveredStack2) in: (recoveredStack3).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) timeStamp.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := [
    | block2800490cValue0 block2800490cValue1 |
    block2800490cValue0 := LookupTable.
    block2800490cValue1 := (block2800490cValue0) new.
    block2800490cValue1
].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsentPut: (recoveredStack3).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := 'typeDeclarationString'.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"lib.ic method 0x20013140; bytecode file offset 0x4f18c"
!EmLibraryCache methodsFor: 'recovered'!
prerequisiteNamesFor: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) cachedAppInfoFor: (recoveredStack1).
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) timeStamp.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := 'prerequisites'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) key.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) configurationExpression: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) keys.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) appEditionRecordFor: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) prerequisiteNames.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x200132c4; bytecode file offset 0x4f310"
!EmLibraryCache methodsFor: 'recovered'!
cachedAppInfoFor: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isApplication.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 'applications'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 'subapplications'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) cache.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := [
    | block28004978Value0 block28004978Value1 |
    block28004978Value0 := LookupTable.
    block28004978Value1 := (block28004978Value0) new.
    block28004978Value1
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) symbol.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := [
    | block2800499cValue0 block2800499cValue1 |
    block2800499cValue0 := LookupTable.
    block2800499cValue1 := (block2800499cValue0) new.
    block2800499cValue1
].
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20013d2c; bytecode file offset 0x4fdbc"
!EmLibraryCache methodsFor: 'recovered'!
classVersionNameFor: recoveredArg1 in: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) cachedAppInfoFor: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) cachedClassInfoFor: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) timeStamp.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := 'versionName'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) classEditionsRecordFor: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentEntry.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) versionName.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20013d54; bytecode file offset 0x4fdbc"
!EmLibraryCache methodsFor: 'recovered'!
classPreviousTimeStampFor: recoveredArg1 in: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) cachedAppInfoFor: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) cachedClassInfoFor: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) timeStamp.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := 'previousTimeStamp'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) classEditionsRecordFor: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentEntry.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) previousTimeStamp.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20013d7c; bytecode file offset 0x4fdbc"
!EmLibraryCache methodsFor: 'recovered'!
classDefinitionTimeStampFor: recoveredArg1 in: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) cachedAppInfoFor: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) cachedClassInfoFor: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) timeStamp.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := 'definitionTimeStamp'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) classEditionsRecordFor: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentEntry.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) definitionTimeStamp.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20014998; bytecode file offset 0x509d8"
!EmLibraryCache methodsFor: 'recovered'!
classCategoryDictionaryFor: recoveredArg1 in: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) cachedAppInfoFor: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) cachedClassInfoFor: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) timeStampIn: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := 'classCategoryDictionary'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) classEditionsRecordFor: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentEntry.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) classCategoryDictionary.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x200149f8; bytecode file offset 0x50a68"
!EmLibraryCache methodsFor: 'recovered'!
instanceCategoryDictionaryFor: recoveredArg1 in: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) cachedAppInfoFor: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) cachedClassInfoFor: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) timeStampIn: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := 'instCategoryDictionary'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) classEditionsRecordFor: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentEntry.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) instanceCategoryDictionary.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20014a24; bytecode file offset 0x50a68"
!EmLibraryCache methodsFor: 'recovered'!
classDefinitionRecordFor: recoveredArg1 in: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) cachedAppInfoFor: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) cachedClassInfoFor: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) timeStampIn: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := 'classDefinitionRecord'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) classEditionsRecordFor: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentEntry.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) definitionRecord.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20016378; bytecode file offset 0x523d8"
!EmLibraryCache methodsFor: 'recovered'!
renewMethods: recoveredArg1 for: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) isVersion.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) cacheEditions.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 61].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) actualClass.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack4 := (recoveredStack4) application.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := (recoveredStack3) cachedAppInfoFor: (recoveredStack4).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) cachedClassInfoFor: (recoveredStack2) in: (recoveredStack3).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) timeStamp.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := [
    | block28004b70Value0 block28004b70Value1 |
    block28004b70Value0 := LookupTable.
    block28004b70Value1 := (block28004b70Value0) new.
    block28004b70Value1
].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsentPut: (recoveredStack3).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := (recoveredStack2) actualClass.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := (recoveredStack2) isClass.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := 'instMethods'.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredPC := 58.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := 'classMethods'.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"lib.ic method 0x20017b08; bytecode file offset 0x53b5c"
!EmLibraryCache methodsFor: 'recovered'!
classEditionsRecordFor: recoveredArg1 in: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) cachedAppInfoFor: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) cachedClassInfoFor: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) cacheEditions.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := 'classEditionsRecord'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) class: (recoveredStack1) application: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal2.
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
            recoveredStack0 := (recoveredStack0) libraryClass.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) operationsInterface.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) classEditionsRecordFor: (recoveredStack1) class: (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) cacheEditions.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := 'classEditionsRecord'.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x200187c8; bytecode file offset 0x5481c"
!EmLibraryCache methodsFor: 'recovered'!
cacheAllMethodsFor: recoveredArg1
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
            recoveredStack0 := (recoveredStack0) cacheEditions.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 69].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) cache.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := 'methods'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := LookupTable.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
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
            recoveredStack0 := (recoveredStack0) libraryClass.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) operationsInterface.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) loadingMethodsFor: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 69] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := [:recoveredBlock47Arg1 :recoveredBlock47Arg2 | 
    | recoveredBlock47Value0 recoveredBlock47Value1 recoveredBlock47Value2 recoveredBlock47Value3 recoveredBlock47Value4 recoveredBlock47Value5 |
    recoveredBlock47Value0 := recoveredLocal2.
    recoveredBlock47Value1 := recoveredArg1.
    recoveredBlock47Value2 := recoveredBlock47Arg2.
    recoveredBlock47Value3 := (recoveredBlock47Value1) at: (recoveredBlock47Value2).
    recoveredBlock47Value4 := recoveredBlock47Arg1.
    recoveredBlock47Value5 := (recoveredBlock47Value0) at: (recoveredBlock47Value3) put: (recoveredBlock47Value4).
    recoveredBlock47Value5
].
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) doWithIndex: (recoveredStack1).
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

"lib.ic method 0x20018d30; bytecode file offset 0x54d84"
!EmLibraryCache methodsFor: 'recovered'!
classEditionsRecordForName: recoveredArg1 in: recoveredArg2 recordClass: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) cachedAppInfoFor: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) cachedClassInfoFor: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) cacheEditions.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 43].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := 'classEditionsRecord'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 43] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) class: (recoveredStack1) application: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) libraryClass.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) operationsInterface.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) classEditionsRecordFor: (recoveredStack1) class: (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) cacheEditions.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := 'classEditionsRecord'.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20019d7c; bytecode file offset 0x55de4"
!EmLibraryCache methodsFor: 'recovered'!
mapRootDictionaryFor: recoveredArg1
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
            recoveredStack0 := (recoveredStack0) cache.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := 'configMaps'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := [
    | block28004c90Value0 block28004c90Value1 |
    block28004c90Value0 := LookupTable.
    block28004c90Value1 := (block28004c90Value0) new.
    block28004c90Value1
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) cacheEditions.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := 'rootDictionary'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) libraryClass.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) operationsInterface.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) configurationRecordClass.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) genericRootDictionaryFor: (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) cacheEditions.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) existsInLibrary.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := 'rootDictionary'.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2001b2a4; bytecode file offset 0x57300"
!EmLibraryCache methodsFor: 'recovered'!
mapInheritedUserFieldsFor: recoveredArg1 ifNotCachedUseRecord: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) cacheEditions.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) cachedMapInfoFor: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) timeStamp.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := [
    | block28004cb4Value0 block28004cb4Value1 |
    block28004cb4Value0 := LookupTable.
    block28004cb4Value1 := (block28004cb4Value0) new.
    block28004cb4Value1
].
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
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
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := 'inherited'.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) inheritedFieldsIndex.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) obtainDictionaryAt: (recoveredStack1).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := 'inherited'.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) inheritedFieldsIndex.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) obtainDictionaryAt: (recoveredStack1).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2001b834; bytecode file offset 0x57894"
!EmLibraryCache methodsFor: 'recovered'!
renewMapEditionRecord: recoveredArg1 for: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isVersion.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) cacheEditions.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) cachedMapInfoFor: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) timeStamp.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := LookupTable.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := (recoveredStack3) new.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) isVersion.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := 'previousTimeStamp'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack4 := (recoveredStack4) previousTimeStamp.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := 'inheritedFP'.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack5 := (recoveredStack5) inheritedFieldsIndex.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack4 := (recoveredStack4) filePointerAt: (recoveredStack5).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := 'versionName'.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack4 := (recoveredStack4) versionName.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := 'applicationEditionsFP'.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack4 := (recoveredStack4) applicationEditionsIndex.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack3 := (recoveredStack3) filePointerAt: (recoveredStack4).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) cacheEditions.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := 'editionRecord'.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"lib.ic method 0x2001c6fc; bytecode file offset 0x5875c"
!EmLibraryCache methodsFor: 'recovered'!
renewAppEditionRecord: recoveredArg1 for: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isVersion.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) cacheEditions.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) cachedAppInfoFor: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) timeStamp.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := LookupTable.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := (recoveredStack3) new.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) isVersion.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 77].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := 'previousTimeStamp'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack4 := (recoveredStack4) previousTimeStamp.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := 'inheritedFP'.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack5 := (recoveredStack5) inheritedFieldsIndex.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack4 := (recoveredStack4) filePointerAt: (recoveredStack5).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := 'versionName'.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack4 := (recoveredStack4) versionName.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack3 := 'releasedNamesAndTimeStamps'.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack4 := (recoveredStack4) releasedNamesAndTimeStamps.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := 'namesAndTypes'.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack3 := (recoveredStack3) namesAndTypes.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) cacheEditions.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := 'editionRecord'.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"lib.ic method 0x2001c8cc; bytecode file offset 0x5893c"
!EmLibraryCache methodsFor: 'recovered'!
appRootDictionaryFor: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isApplication.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 'applications'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 'subapplications'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) cache.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := [
    | block28004d44Value0 block28004d44Value1 |
    block28004d44Value0 := LookupTable.
    block28004d44Value1 := (block28004d44Value0) new.
    block28004d44Value1
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) cacheEditions.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := 'rootDictionary'.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) libraryClass.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) operationsInterface.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) partsRecordClass.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) genericRootDictionaryFor: (recoveredStack1).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) cacheEditions.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) existsInLibrary.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := 'rootDictionary'.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2001da9c; bytecode file offset 0x59af4"
!EmLibraryCache methodsFor: 'recovered'!
classInheritedUserFieldsFor: recoveredArg1 in: recoveredArg2 ifNotCachedUseEditionEntry: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 94] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 94] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) cachedAppInfoFor: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) cachedClassInfoFor: (recoveredStack2) in: (recoveredStack3).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := (recoveredStack2) timeStamp.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 94] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := 'inherited'.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := 'inheritedFP'.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 94] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) diskDictionaryClass.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) using: (recoveredStack2).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := (recoveredStack1) cacheEditions.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 92].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := 'inherited'.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := (recoveredStack2) inheritedFieldsIndex.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := (recoveredStack1) obtainDictionaryAt: (recoveredStack2).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"lib.ic method 0x2001e288; bytecode file offset 0x5a2ec"
!EmLibraryCache methodsFor: 'recovered'!
flushEditionsFromCache
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    CacheEditions := 0.
    recoveredValue0 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Local1 recoveredBlock10Stack0 recoveredBlock10Stack1 recoveredBlock10Stack2 recoveredBlock10Stack3 recoveredBlock10Stack4 recoveredBlock10Stack5 recoveredBlock10PC recoveredBlock10Step recoveredBlock10Done recoveredBlock10Result |
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
            recoveredBlock10Stack2 := self.
            recoveredBlock10PC := 18.
        ].
        recoveredBlock10Step = 18 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) class.
            recoveredBlock10PC := 19.
        ].
        recoveredBlock10Step = 19 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) cache.
            recoveredBlock10PC := 20.
        ].
        recoveredBlock10Step = 20 ifTrue: [
            recoveredBlock10Stack3 := recoveredBlock10Arg1.
            recoveredBlock10PC := 21.
        ].
        recoveredBlock10Step = 21 ifTrue: [
            recoveredBlock10Stack4 := [].
            recoveredBlock10PC := 23.
        ].
        recoveredBlock10Step = 23 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) at: (recoveredBlock10Stack3) ifAbsent: (recoveredBlock10Stack4).
            recoveredBlock10PC := 25.
        ].
        recoveredBlock10Step = 25 ifTrue: [
            recoveredBlock10Stack3 := recoveredBlock10Stack2.
            recoveredBlock10PC := 26.
        ].
        recoveredBlock10Step = 26 ifTrue: [
            recoveredBlock10Local1 := recoveredBlock10Stack3.
            recoveredBlock10PC := 27.
        ].
        recoveredBlock10Step = 27 ifTrue: [
            (recoveredBlock10Stack2 == nil) ifTrue: [recoveredBlock10PC := 86] ifFalse: [recoveredBlock10PC := 30].
        ].
        recoveredBlock10Step = 30 ifTrue: [
            recoveredBlock10PC := 31.
        ].
        recoveredBlock10Step = 31 ifTrue: [
            recoveredBlock10Stack1 := recoveredBlock10Local1.
            recoveredBlock10PC := 32.
        ].
        recoveredBlock10Step = 32 ifTrue: [
            recoveredBlock10Stack2 := 'rootDictionary'.
            recoveredBlock10PC := 34.
        ].
        recoveredBlock10Step = 34 ifTrue: [
            recoveredBlock10Stack3 := [].
            recoveredBlock10PC := 36.
        ].
        recoveredBlock10Step = 36 ifTrue: [
            (recoveredBlock10Stack1) removeKey: (recoveredBlock10Stack2) ifAbsent: (recoveredBlock10Stack3).
            recoveredBlock10PC := 38.
        ].
        recoveredBlock10Step = 38 ifTrue: [
            recoveredBlock10Stack1 := recoveredBlock10Local1.
            recoveredBlock10PC := 39.
        ].
        recoveredBlock10Step = 39 ifTrue: [
            recoveredBlock10Stack2 := [:block28004db0Arg1 | 
    | block28004db0Local1 block28004db0Stack0 block28004db0Stack1 block28004db0Stack2 block28004db0Stack3 block28004db0PC block28004db0Step block28004db0Done block28004db0Result |
    block28004db0Stack0 := self.
    block28004db0PC := 4.
    block28004db0Done := false.
    [block28004db0Done not] whileTrue: [
        block28004db0Step := block28004db0PC.
        block28004db0Step = 4 ifTrue: [
            block28004db0Stack1 := block28004db0Arg1.
            block28004db0PC := 7.
        ].
        block28004db0Step = 7 ifTrue: [
            block28004db0Stack1 := (block28004db0Stack1) keys.
            block28004db0PC := 9.
        ].
        block28004db0Step = 9 ifTrue: [
            block28004db0Stack2 := [:block28004dd4Arg1 | 
    | block28004dd4Value0 block28004dd4Value1 |
    block28004dd4Value0 := block28004dd4Arg1.
    block28004dd4Value1 := (block28004dd4Value0) == ('partsRecordFP').
    block28004dd4Value1
].
            block28004db0PC := 11.
        ].
        block28004db0Step = 11 ifTrue: [
            block28004db0PC := 19.
        ].
        block28004db0Step = 19 ifTrue: [
            block28004db0Stack1 := (block28004db0Stack1) reject: (block28004db0Stack2).
            block28004db0PC := 21.
        ].
        block28004db0Step = 21 ifTrue: [
            block28004db0Local1 := block28004db0Stack1.
            block28004db0PC := 24.
        ].
        block28004db0Step = 24 ifTrue: [
            block28004db0Stack1 := block28004db0Local1.
            block28004db0PC := 27.
        ].
        block28004db0Step = 27 ifTrue: [
            block28004db0Stack2 := [:block28004db0Block27Arg1 | 
    | block28004db0Block27Value0 block28004db0Block27Value1 block28004db0Block27Value2 |
    block28004db0Block27Value0 := block28004db0Arg1.
    block28004db0Block27Value1 := block28004db0Block27Arg1.
    block28004db0Block27Value2 := (block28004db0Block27Value0) removeKey: (block28004db0Block27Value1).
    block28004db0Block27Value2
].
            block28004db0PC := 41.
        ].
        block28004db0Step = 41 ifTrue: [
            block28004db0Stack1 := (block28004db0Stack1) do: (block28004db0Stack2).
            block28004db0PC := 43.
        ].
        block28004db0Step = 43 ifTrue: [
            block28004db0Result := block28004db0Stack1.
            block28004db0Done := true.
        ].
    ].
    block28004db0Result
].
            recoveredBlock10PC := 41.
        ].
        recoveredBlock10Step = 41 ifTrue: [
            recoveredBlock10PC := 84.
        ].
        recoveredBlock10Step = 84 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) do: (recoveredBlock10Stack2).
            recoveredBlock10PC := 86.
        ].
        recoveredBlock10Step = 86 ifTrue: [
            recoveredBlock10Result := recoveredBlock10Stack1.
            recoveredBlock10Done := true.
        ].
    ].
    recoveredBlock10Result
].
    (#('applications' 'subapplications')) do: (recoveredValue0).
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) cache.
    recoveredValue3 := [].
    (recoveredValue2) removeKey: ('configMaps') ifAbsent: (recoveredValue3).
    recoveredValue4 := (self) class.
    recoveredValue5 := (recoveredValue4) cache.
    recoveredValue6 := [].
    (recoveredValue5) removeKey: ('methods') ifAbsent: (recoveredValue6).
    ^self
! !

"lib.ic method 0x2001f3a8; bytecode file offset 0x5b400"
!EmLibraryCache methodsFor: 'recovered'!
applicationEditionsFor: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) cachedMapInfoFor: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) timeStamp.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) mapEditionRecordFor: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) applicationEditions.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) isVersion.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) cacheEditions.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) timeStamp.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := 'applicationEditions'.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredPC := 113.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := 'applicationEditions'.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 113] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := 'applicationEditionsFP'.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := (recoveredStack0) mapEditionRecordFor: (recoveredStack1).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) applicationEditions.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredPC := 107.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) dictionaryOfTimeStampsClass.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := (recoveredStack0) using: (recoveredStack1).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := 'applicationEditions'.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20021510; bytecode file offset 0x5d580"
!EmLibraryCache methodsFor: 'recovered'!
classMethodsFor: recoveredArg1 in: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) cachedAppInfoFor: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) cachedClassInfoFor: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) timeStampIn: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 77] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := 'classMethods'.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := 'classMethodsFP'.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 77] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) diskDictionaryClass.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) using: (recoveredStack1).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) asDictionary.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := 'classMethods'.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) classEditionsRecordFor: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentEntry.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := (recoveredStack0) classMethods.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := (recoveredStack0) asDictionary.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := (recoveredStack0) isVersion.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 108] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := (recoveredStack0) cacheEditions.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 108] ifFalse: [recoveredPC := 132].
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := (recoveredStack1) timeStampIn: (recoveredStack2).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack2 := [
    | block28004f84Value0 block28004f84Value1 |
    block28004f84Value0 := LookupTable.
    block28004f84Value1 := (block28004f84Value0) new.
    block28004f84Value1
].
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := 'classMethods'.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x200215f0; bytecode file offset 0x5d664"
!EmLibraryCache methodsFor: 'recovered'!
instanceMethodsFor: recoveredArg1 in: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) cachedAppInfoFor: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) cachedClassInfoFor: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) timeStampIn: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 77] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := 'instMethods'.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := 'instMethodsFP'.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 77] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) diskDictionaryClass.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) using: (recoveredStack1).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) asDictionary.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := 'instMethods'.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) classEditionsRecordFor: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentEntry.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := (recoveredStack0) instanceMethods.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := (recoveredStack0) asDictionary.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := (recoveredStack0) isVersion.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 108] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := (recoveredStack0) cacheEditions.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 108] ifFalse: [recoveredPC := 132].
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := (recoveredStack1) timeStampIn: (recoveredStack2).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack2 := [
    | block28004fa8Value0 block28004fa8Value1 |
    block28004fa8Value0 := LookupTable.
    block28004fa8Value1 := (block28004fa8Value0) new.
    block28004fa8Value1
].
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := 'instMethods'.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20021a64; bytecode file offset 0x5dae0"
!EmLibraryCache methodsFor: 'recovered'!
mapEditionRecordFor: recoveredArg1
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
            recoveredStack0 := (recoveredStack0) cachedMapInfoFor: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) cacheEditions.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) timeStamp.
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
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := 'editionRecord'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) map: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) libraryClass.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) operationsInterface.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) configMapConfigurationRecordFor: (recoveredStack1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) isVersion.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) cacheEditions.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 134].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) timeStamp.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := LookupTable.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) isVersion.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 122].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := 'previousTimeStamp'.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack3 := (recoveredStack3) previousTimeStamp.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := 'inheritedFP'.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack4 := (recoveredStack4) inheritedFieldsIndex.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack3 := (recoveredStack3) filePointerAt: (recoveredStack4).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack2 := 'versionName'.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack3 := (recoveredStack3) versionName.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := 'applicationEditionsFP'.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack3 := (recoveredStack3) applicationEditionsIndex.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := (recoveredStack2) filePointerAt: (recoveredStack3).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := (recoveredStack0) cacheEditions.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 128] ifFalse: [recoveredPC := 134].
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := 'editionRecord'.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x200228f4; bytecode file offset 0x5e970"
!EmLibraryCache methodsFor: 'recovered'!
appEditionRecordFor: recoveredArg1
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
            recoveredStack0 := (recoveredStack0) cachedAppInfoFor: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) cacheEditions.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) timeStamp.
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
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := 'editionRecord'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) application: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) libraryClass.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) operationsInterface.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) applicationEditionRecordFor: (recoveredStack1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) isVersion.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) cacheEditions.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 140].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) timeStamp.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := LookupTable.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) isVersion.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 127].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := 'previousTimeStamp'.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack3 := (recoveredStack3) previousTimeStamp.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := 'inheritedFP'.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack4 := (recoveredStack4) inheritedFieldsIndex.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack3 := (recoveredStack3) filePointerAt: (recoveredStack4).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack2 := 'versionName'.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack3 := (recoveredStack3) versionName.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := 'releasedNamesAndTimeStamps'.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack3 := (recoveredStack3) releasedNamesAndTimeStamps.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := 'namesAndTypes'.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack2 := (recoveredStack2) namesAndTypes.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := (recoveredStack0) cacheEditions.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 134] ifFalse: [recoveredPC := 140].
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := 'editionRecord'.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x200249c8; bytecode file offset 0x60a48"
!EmLibraryCache methodsFor: 'recovered'!
partsRecordFor: recoveredArg1 named: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isApplication.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 'applications'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 'subapplications'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) cache.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := [
    | block280051e8Value0 block280051e8Value1 |
    block280051e8Value0 := LookupTable.
    block280051e8Value1 := (block280051e8Value0) new.
    block280051e8Value1
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := [
    | block2800520cValue0 block2800520cValue1 |
    block2800520cValue0 := LookupTable.
    block2800520cValue1 := (block2800520cValue0) new.
    block2800520cValue1
].
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := 'partsRecord'.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 69] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := 'partsRecordFP'.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 110] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) partsRecordClass.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := (recoveredStack0) using: (recoveredStack1).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := (recoveredStack0) cacheEditions.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 107].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := 'partsRecord'.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := (recoveredStack0) libraryClass.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := (recoveredStack0) operationsInterface.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := (recoveredStack0) applicationPartsRecordFor: (recoveredStack1) named: (recoveredStack2).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := (recoveredStack0) existsInLibrary.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 132] ifFalse: [recoveredPC := 141].
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := 'partsRecordFP'.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack2 := (recoveredStack2) filePointer.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack0 := (recoveredStack0) cacheEditions.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 148] ifFalse: [recoveredPC := 163].
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := (recoveredStack0) existsInLibrary.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 156] ifFalse: [recoveredPC := 163].
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := 'partsRecord'.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20031d1c; bytecode file offset 0x6ddf4"
!EmLibraryCache methodsFor: 'recovered'!
cacheAllSubappInfoFor: recoveredArg1 classes: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) cacheEditions.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 465].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) new: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := [:recoveredBlock31Arg1 :recoveredBlock31Arg2 | 
    | recoveredBlock31Value0 recoveredBlock31Value1 recoveredBlock31Value2 recoveredBlock31Value3 recoveredBlock31Value4 recoveredBlock31Value5 recoveredBlock31Value6 recoveredBlock31Value7 recoveredBlock31Value8 recoveredBlock31Value9 recoveredBlock31Value10 recoveredBlock31Value11 recoveredBlock31Value12 |
    recoveredBlock31Value0 := recoveredLocal2.
    recoveredBlock31Value1 := Array.
    recoveredBlock31Value2 := (recoveredBlock31Value1) new: (5).
    recoveredBlock31Value3 := recoveredBlock31Value2.
    recoveredBlock31Value4 := recoveredBlock31Arg1.
    (recoveredBlock31Value3) at: (1) put: (recoveredBlock31Value4).
    recoveredBlock31Value5 := recoveredBlock31Value2.
    recoveredBlock31Value6 := recoveredBlock31Arg2.
    (recoveredBlock31Value5) at: (2) put: (recoveredBlock31Value6).
    recoveredBlock31Value7 := recoveredBlock31Value2.
    (recoveredBlock31Value7) at: (3) put: (false).
    recoveredBlock31Value8 := recoveredBlock31Value2.
    recoveredBlock31Value9 := SubApplication.
    recoveredBlock31Value10 := (recoveredBlock31Value9) editionRecordClass.
    (recoveredBlock31Value8) at: (4) put: (recoveredBlock31Value10).
    recoveredBlock31Value11 := recoveredBlock31Value2.
    (recoveredBlock31Value11) at: (5) put: (false).
    recoveredBlock31Value12 := (recoveredBlock31Value0) add: (recoveredBlock31Value2).
    recoveredBlock31Value12
].
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack0) keysAndValuesDo: (recoveredStack1).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := (recoveredStack0) libraryClass.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := (recoveredStack0) operationsInterface.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) loadingApplications: (recoveredStack1).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := [:recoveredBlock103Arg1 :recoveredBlock103Arg2 | 
    | recoveredBlock103Local1 recoveredBlock103Local2 recoveredBlock103Local3 recoveredBlock103Local4 recoveredBlock103Local5 recoveredBlock103Local6 recoveredBlock103Local7 recoveredBlock103Local8 recoveredBlock103Local9 recoveredBlock103Stack0 recoveredBlock103Stack1 recoveredBlock103Stack2 recoveredBlock103Stack3 recoveredBlock103Stack4 recoveredBlock103Stack5 recoveredBlock103PC recoveredBlock103Step recoveredBlock103Done recoveredBlock103Result |
    recoveredBlock103Stack0 := self.
    recoveredBlock103PC := 110.
    recoveredBlock103Done := false.
    [recoveredBlock103Done not] whileTrue: [
        recoveredBlock103Step := recoveredBlock103PC.
        recoveredBlock103Step = 110 ifTrue: [
            recoveredBlock103Stack1 := recoveredBlock103Arg1.
            recoveredBlock103PC := 113.
        ].
        recoveredBlock103Step = 113 ifTrue: [
            recoveredBlock103Stack2 := 1.
            recoveredBlock103PC := 115.
        ].
        recoveredBlock103Step = 115 ifTrue: [
            recoveredBlock103Stack1 := (recoveredBlock103Stack1) at: (recoveredBlock103Stack2).
            recoveredBlock103PC := 117.
        ].
        recoveredBlock103Step = 117 ifTrue: [
            recoveredBlock103Local9 := recoveredBlock103Stack1.
            recoveredBlock103PC := 120.
        ].
        recoveredBlock103Step = 120 ifTrue: [
            recoveredBlock103Stack1 := recoveredBlock103Arg1.
            recoveredBlock103PC := 123.
        ].
        recoveredBlock103Step = 123 ifTrue: [
            recoveredBlock103Stack2 := 2.
            recoveredBlock103PC := 125.
        ].
        recoveredBlock103Step = 125 ifTrue: [
            recoveredBlock103Stack1 := (recoveredBlock103Stack1) at: (recoveredBlock103Stack2).
            recoveredBlock103PC := 127.
        ].
        recoveredBlock103Step = 127 ifTrue: [
            recoveredBlock103Local8 := recoveredBlock103Stack1.
            recoveredBlock103PC := 130.
        ].
        recoveredBlock103Step = 130 ifTrue: [
            recoveredBlock103Stack1 := recoveredBlock103Arg1.
            recoveredBlock103PC := 133.
        ].
        recoveredBlock103Step = 133 ifTrue: [
            recoveredBlock103Stack2 := 3.
            recoveredBlock103PC := 135.
        ].
        recoveredBlock103Step = 135 ifTrue: [
            recoveredBlock103Stack1 := (recoveredBlock103Stack1) at: (recoveredBlock103Stack2).
            recoveredBlock103PC := 137.
        ].
        recoveredBlock103Step = 137 ifTrue: [
            recoveredBlock103Local7 := recoveredBlock103Stack1.
            recoveredBlock103PC := 140.
        ].
        recoveredBlock103Step = 140 ifTrue: [
            recoveredBlock103Stack1 := recoveredBlock103Local7.
            recoveredBlock103PC := 143.
        ].
        recoveredBlock103Step = 143 ifTrue: [
            (recoveredBlock103Stack1) ifTrue: [recoveredBlock103PC := 146] ifFalse: [recoveredBlock103PC := 152].
        ].
        recoveredBlock103Step = 146 ifTrue: [
            recoveredBlock103Stack1 := 'applications'.
            recoveredBlock103PC := 148.
        ].
        recoveredBlock103Step = 148 ifTrue: [
            recoveredBlock103PC := 154.
        ].
        recoveredBlock103Step = 152 ifTrue: [
            recoveredBlock103Stack1 := 'subapplications'.
            recoveredBlock103PC := 154.
        ].
        recoveredBlock103Step = 154 ifTrue: [
            recoveredBlock103Local6 := recoveredBlock103Stack1.
            recoveredBlock103PC := 157.
        ].
        recoveredBlock103Step = 157 ifTrue: [
            recoveredBlock103Stack0 := (recoveredBlock103Stack0) class.
            recoveredBlock103PC := 158.
        ].
        recoveredBlock103Step = 158 ifTrue: [
            recoveredBlock103Stack0 := (recoveredBlock103Stack0) cache.
            recoveredBlock103PC := 160.
        ].
        recoveredBlock103Step = 160 ifTrue: [
            recoveredBlock103Stack1 := recoveredBlock103Local6.
            recoveredBlock103PC := 163.
        ].
        recoveredBlock103Step = 163 ifTrue: [
            recoveredBlock103Stack2 := [
    | block28005ac4Value0 block28005ac4Value1 |
    block28005ac4Value0 := LookupTable.
    block28005ac4Value1 := (block28005ac4Value0) new.
    block28005ac4Value1
].
            recoveredBlock103PC := 165.
        ].
        recoveredBlock103Step = 165 ifTrue: [
            recoveredBlock103PC := 172.
        ].
        recoveredBlock103Step = 172 ifTrue: [
            recoveredBlock103Stack0 := (recoveredBlock103Stack0) at: (recoveredBlock103Stack1) ifAbsentPut: (recoveredBlock103Stack2).
            recoveredBlock103PC := 174.
        ].
        recoveredBlock103Step = 174 ifTrue: [
            recoveredBlock103Stack1 := recoveredBlock103Local9.
            recoveredBlock103PC := 177.
        ].
        recoveredBlock103Step = 177 ifTrue: [
            recoveredBlock103Stack2 := [
    | block28005ae8Value0 block28005ae8Value1 |
    block28005ae8Value0 := LookupTable.
    block28005ae8Value1 := (block28005ae8Value0) new.
    block28005ae8Value1
].
            recoveredBlock103PC := 179.
        ].
        recoveredBlock103Step = 179 ifTrue: [
            recoveredBlock103PC := 186.
        ].
        recoveredBlock103Step = 186 ifTrue: [
            recoveredBlock103Stack0 := (recoveredBlock103Stack0) at: (recoveredBlock103Stack1) ifAbsentPut: (recoveredBlock103Stack2).
            recoveredBlock103PC := 188.
        ].
        recoveredBlock103Step = 188 ifTrue: [
            recoveredBlock103Local5 := recoveredBlock103Stack0.
            recoveredBlock103PC := 191.
        ].
        recoveredBlock103Step = 191 ifTrue: [
            recoveredBlock103Stack0 := recoveredLocal1.
            recoveredBlock103PC := 194.
        ].
        recoveredBlock103Step = 194 ifTrue: [
            recoveredBlock103Stack1 := recoveredBlock103Arg2.
            recoveredBlock103PC := 197.
        ].
        recoveredBlock103Step = 197 ifTrue: [
            recoveredBlock103Stack0 := (recoveredBlock103Stack0) at: (recoveredBlock103Stack1).
            recoveredBlock103PC := 199.
        ].
        recoveredBlock103Step = 199 ifTrue: [
            recoveredBlock103Stack1 := 1.
            recoveredBlock103PC := 201.
        ].
        recoveredBlock103Step = 201 ifTrue: [
            recoveredBlock103Stack0 := (recoveredBlock103Stack0) at: (recoveredBlock103Stack1).
            recoveredBlock103PC := 203.
        ].
        recoveredBlock103Step = 203 ifTrue: [
            recoveredBlock103Local3 := recoveredBlock103Stack0.
            recoveredBlock103PC := 206.
        ].
        recoveredBlock103Step = 206 ifTrue: [
            recoveredBlock103Stack0 := recoveredBlock103Local3.
            recoveredBlock103PC := 209.
        ].
        recoveredBlock103Step = 209 ifTrue: [
            recoveredBlock103Stack0 := (recoveredBlock103Stack0) filePointer.
            recoveredBlock103PC := 211.
        ].
        recoveredBlock103Step = 211 ifTrue: [
            recoveredBlock103Stack0 := (recoveredBlock103Stack0) notVoid.
            recoveredBlock103PC := 213.
        ].
        recoveredBlock103Step = 213 ifTrue: [
            (recoveredBlock103Stack0) ifTrue: [recoveredBlock103PC := 216] ifFalse: [recoveredBlock103PC := 236].
        ].
        recoveredBlock103Step = 216 ifTrue: [
            recoveredBlock103Stack0 := recoveredBlock103Local5.
            recoveredBlock103PC := 219.
        ].
        recoveredBlock103Step = 219 ifTrue: [
            recoveredBlock103Stack1 := recoveredBlock103Stack0.
            recoveredBlock103PC := 220.
        ].
        recoveredBlock103Step = 220 ifTrue: [
            recoveredBlock103Stack2 := 'partsRecord'.
            recoveredBlock103PC := 222.
        ].
        recoveredBlock103Step = 222 ifTrue: [
            recoveredBlock103Stack3 := recoveredBlock103Local3.
            recoveredBlock103PC := 225.
        ].
        recoveredBlock103Step = 225 ifTrue: [
            (recoveredBlock103Stack1) at: (recoveredBlock103Stack2) put: (recoveredBlock103Stack3).
            recoveredBlock103PC := 227.
        ].
        recoveredBlock103Step = 227 ifTrue: [
            recoveredBlock103Stack1 := 'partsRecordFP'.
            recoveredBlock103PC := 229.
        ].
        recoveredBlock103Step = 229 ifTrue: [
            recoveredBlock103Stack2 := recoveredBlock103Local3.
            recoveredBlock103PC := 232.
        ].
        recoveredBlock103Step = 232 ifTrue: [
            recoveredBlock103Stack2 := (recoveredBlock103Stack2) filePointer.
            recoveredBlock103PC := 234.
        ].
        recoveredBlock103Step = 234 ifTrue: [
            (recoveredBlock103Stack0) at: (recoveredBlock103Stack1) put: (recoveredBlock103Stack2).
            recoveredBlock103PC := 236.
        ].
        recoveredBlock103Step = 236 ifTrue: [
            recoveredBlock103Stack0 := recoveredBlock103Local5.
            recoveredBlock103PC := 239.
        ].
        recoveredBlock103Step = 239 ifTrue: [
            recoveredBlock103Stack1 := recoveredBlock103Local8.
            recoveredBlock103PC := 242.
        ].
        recoveredBlock103Step = 242 ifTrue: [
            recoveredBlock103Stack2 := [
    | block28005b0cValue0 block28005b0cValue1 |
    block28005b0cValue0 := LookupTable.
    block28005b0cValue1 := (block28005b0cValue0) new.
    block28005b0cValue1
].
            recoveredBlock103PC := 244.
        ].
        recoveredBlock103Step = 244 ifTrue: [
            recoveredBlock103PC := 252.
        ].
        recoveredBlock103Step = 252 ifTrue: [
            recoveredBlock103Stack0 := (recoveredBlock103Stack0) at: (recoveredBlock103Stack1) ifAbsentPut: (recoveredBlock103Stack2).
            recoveredBlock103PC := 254.
        ].
        recoveredBlock103Step = 254 ifTrue: [
            recoveredBlock103Local4 := recoveredBlock103Stack0.
            recoveredBlock103PC := 257.
        ].
        recoveredBlock103Step = 257 ifTrue: [
            recoveredBlock103Stack0 := recoveredLocal1.
            recoveredBlock103PC := 260.
        ].
        recoveredBlock103Step = 260 ifTrue: [
            recoveredBlock103Stack1 := recoveredBlock103Arg2.
            recoveredBlock103PC := 263.
        ].
        recoveredBlock103Step = 263 ifTrue: [
            recoveredBlock103Stack0 := (recoveredBlock103Stack0) at: (recoveredBlock103Stack1).
            recoveredBlock103PC := 265.
        ].
        recoveredBlock103Step = 265 ifTrue: [
            recoveredBlock103Stack1 := 2.
            recoveredBlock103PC := 267.
        ].
        recoveredBlock103Step = 267 ifTrue: [
            recoveredBlock103Stack0 := (recoveredBlock103Stack0) at: (recoveredBlock103Stack1).
            recoveredBlock103PC := 269.
        ].
        recoveredBlock103Step = 269 ifTrue: [
            recoveredBlock103Local2 := recoveredBlock103Stack0.
            recoveredBlock103PC := 272.
        ].
        recoveredBlock103Step = 272 ifTrue: [
            recoveredBlock103Stack0 := recoveredBlock103Local4.
            recoveredBlock103PC := 275.
        ].
        recoveredBlock103Step = 275 ifTrue: [
            recoveredBlock103Stack1 := 'editionRecord'.
            recoveredBlock103PC := 277.
        ].
        recoveredBlock103Step = 277 ifTrue: [
            recoveredBlock103Stack2 := recoveredBlock103Local2.
            recoveredBlock103PC := 280.
        ].
        recoveredBlock103Step = 280 ifTrue: [
            (recoveredBlock103Stack0) at: (recoveredBlock103Stack1) put: (recoveredBlock103Stack2).
            recoveredBlock103PC := 282.
        ].
        recoveredBlock103Step = 282 ifTrue: [
            recoveredBlock103Stack0 := recoveredBlock103Local4.
            recoveredBlock103PC := 285.
        ].
        recoveredBlock103Step = 285 ifTrue: [
            recoveredBlock103Stack1 := 'toBeLoadedCode'.
            recoveredBlock103PC := 287.
        ].
        recoveredBlock103Step = 287 ifTrue: [
            recoveredBlock103Stack2 := EmImageSupport.
            recoveredBlock103PC := 289.
        ].
        recoveredBlock103Step = 289 ifTrue: [
            recoveredBlock103Stack2 := (recoveredBlock103Stack2) textFilter.
            recoveredBlock103PC := 291.
        ].
        recoveredBlock103Step = 291 ifTrue: [
            recoveredBlock103Stack3 := recoveredLocal1.
            recoveredBlock103PC := 294.
        ].
        recoveredBlock103Step = 294 ifTrue: [
            recoveredBlock103Stack4 := recoveredBlock103Arg2.
            recoveredBlock103PC := 297.
        ].
        recoveredBlock103Step = 297 ifTrue: [
            recoveredBlock103Stack3 := (recoveredBlock103Stack3) at: (recoveredBlock103Stack4).
            recoveredBlock103PC := 299.
        ].
        recoveredBlock103Step = 299 ifTrue: [
            recoveredBlock103Stack4 := 3.
            recoveredBlock103PC := 301.
        ].
        recoveredBlock103Step = 301 ifTrue: [
            recoveredBlock103Stack3 := (recoveredBlock103Stack3) at: (recoveredBlock103Stack4).
            recoveredBlock103PC := 303.
        ].
        recoveredBlock103Step = 303 ifTrue: [
            recoveredBlock103Stack2 := (recoveredBlock103Stack2) filter: (recoveredBlock103Stack3).
            recoveredBlock103PC := 305.
        ].
        recoveredBlock103Step = 305 ifTrue: [
            (recoveredBlock103Stack0) at: (recoveredBlock103Stack1) put: (recoveredBlock103Stack2).
            recoveredBlock103PC := 307.
        ].
        recoveredBlock103Step = 307 ifTrue: [
            recoveredBlock103Stack0 := self.
            recoveredBlock103PC := 308.
        ].
        recoveredBlock103Step = 308 ifTrue: [
            recoveredBlock103Stack1 := recoveredLocal1.
            recoveredBlock103PC := 311.
        ].
        recoveredBlock103Step = 311 ifTrue: [
            recoveredBlock103Stack2 := recoveredBlock103Arg2.
            recoveredBlock103PC := 314.
        ].
        recoveredBlock103Step = 314 ifTrue: [
            recoveredBlock103Stack1 := (recoveredBlock103Stack1) at: (recoveredBlock103Stack2).
            recoveredBlock103PC := 316.
        ].
        recoveredBlock103Step = 316 ifTrue: [
            recoveredBlock103Stack2 := 4.
            recoveredBlock103PC := 318.
        ].
        recoveredBlock103Step = 318 ifTrue: [
            recoveredBlock103Stack1 := (recoveredBlock103Stack1) at: (recoveredBlock103Stack2).
            recoveredBlock103PC := 320.
        ].
        recoveredBlock103Step = 320 ifTrue: [
            recoveredBlock103Stack0 := (recoveredBlock103Stack0) validSubappConfigFrom: (recoveredBlock103Stack1).
            recoveredBlock103PC := 322.
        ].
        recoveredBlock103Step = 322 ifTrue: [
            recoveredBlock103Local1 := recoveredBlock103Stack0.
            recoveredBlock103PC := 325.
        ].
        recoveredBlock103Step = 325 ifTrue: [
            recoveredBlock103Stack0 := recoveredBlock103Local4.
            recoveredBlock103PC := 328.
        ].
        recoveredBlock103Step = 328 ifTrue: [
            recoveredBlock103Stack1 := 'subapplications'.
            recoveredBlock103PC := 330.
        ].
        recoveredBlock103Step = 330 ifTrue: [
            recoveredBlock103Stack2 := recoveredBlock103Local1.
            recoveredBlock103PC := 333.
        ].
        recoveredBlock103Step = 333 ifTrue: [
            (recoveredBlock103Stack0) at: (recoveredBlock103Stack1) put: (recoveredBlock103Stack2).
            recoveredBlock103PC := 335.
        ].
        recoveredBlock103Step = 335 ifTrue: [
            recoveredBlock103Stack0 := recoveredLocal3.
            recoveredBlock103PC := 338.
        ].
        recoveredBlock103Step = 338 ifTrue: [
            recoveredBlock103Stack1 := recoveredBlock103Local1.
            recoveredBlock103PC := 341.
        ].
        recoveredBlock103Step = 341 ifTrue: [
            recoveredBlock103Stack1 := (recoveredBlock103Stack1) value.
            recoveredBlock103PC := 343.
        ].
        recoveredBlock103Step = 343 ifTrue: [
            (recoveredBlock103Stack0) addAll: (recoveredBlock103Stack1).
            recoveredBlock103PC := 345.
        ].
        recoveredBlock103Step = 345 ifTrue: [
            recoveredBlock103Stack0 := recoveredBlock103Local7.
            recoveredBlock103PC := 348.
        ].
        recoveredBlock103Step = 348 ifTrue: [
            (recoveredBlock103Stack0) ifTrue: [recoveredBlock103PC := 352] ifFalse: [recoveredBlock103PC := 398].
        ].
        recoveredBlock103Step = 352 ifTrue: [
            recoveredBlock103Stack0 := recoveredBlock103Local1.
            recoveredBlock103PC := 355.
        ].
        recoveredBlock103Step = 355 ifTrue: [
            recoveredBlock103Stack0 := (recoveredBlock103Stack0) key.
            recoveredBlock103PC := 357.
        ].
        recoveredBlock103Step = 357 ifTrue: [
            (recoveredBlock103Stack0 == nil) ifTrue: [recoveredBlock103PC := 398] ifFalse: [recoveredBlock103PC := 360].
        ].
        recoveredBlock103Step = 360 ifTrue: [
            recoveredBlock103Stack0 := recoveredBlock103Local4.
            recoveredBlock103PC := 363.
        ].
        recoveredBlock103Step = 363 ifTrue: [
            recoveredBlock103Stack1 := 'prerequisites'.
            recoveredBlock103PC := 365.
        ].
        recoveredBlock103Step = 365 ifTrue: [
            recoveredBlock103Stack2 := recoveredLocal1.
            recoveredBlock103PC := 368.
        ].
        recoveredBlock103Step = 368 ifTrue: [
            recoveredBlock103Stack3 := recoveredBlock103Arg2.
            recoveredBlock103PC := 371.
        ].
        recoveredBlock103Step = 371 ifTrue: [
            recoveredBlock103Stack2 := (recoveredBlock103Stack2) at: (recoveredBlock103Stack3).
            recoveredBlock103PC := 373.
        ].
        recoveredBlock103Step = 373 ifTrue: [
            recoveredBlock103Stack3 := 5.
            recoveredBlock103PC := 375.
        ].
        recoveredBlock103Step = 375 ifTrue: [
            recoveredBlock103Stack2 := (recoveredBlock103Stack2) at: (recoveredBlock103Stack3).
            recoveredBlock103PC := 377.
        ].
        recoveredBlock103Step = 377 ifTrue: [
            recoveredBlock103Stack3 := [:recoveredBlock103Block377Arg1 | 
    | recoveredBlock103Block377Value0 recoveredBlock103Block377Value1 recoveredBlock103Block377Value2 recoveredBlock103Block377Value3 recoveredBlock103Block377Value4 |
    recoveredBlock103Block377Value0 := recoveredBlock103Block377Arg1.
    recoveredBlock103Block377Value1 := (recoveredBlock103Block377Value0) key.
    recoveredBlock103Block377Value2 := recoveredBlock103Local1.
    recoveredBlock103Block377Value3 := (recoveredBlock103Block377Value2) key.
    recoveredBlock103Block377Value4 := (recoveredBlock103Block377Value1) = (recoveredBlock103Block377Value3).
    recoveredBlock103Block377Value4
].
            recoveredBlock103PC := 394.
        ].
        recoveredBlock103Step = 394 ifTrue: [
            recoveredBlock103Stack2 := (recoveredBlock103Stack2) detect: (recoveredBlock103Stack3).
            recoveredBlock103PC := 396.
        ].
        recoveredBlock103Step = 396 ifTrue: [
            (recoveredBlock103Stack0) at: (recoveredBlock103Stack1) put: (recoveredBlock103Stack2).
            recoveredBlock103PC := 398.
        ].
        recoveredBlock103Step = 398 ifTrue: [
            recoveredBlock103Stack0 := recoveredBlock103Local2.
            recoveredBlock103PC := 401.
        ].
        recoveredBlock103Step = 401 ifTrue: [
            recoveredBlock103Stack0 := (recoveredBlock103Stack0) releasedNamesAndTimeStamps.
            recoveredBlock103PC := 403.
        ].
        recoveredBlock103Step = 403 ifTrue: [
            recoveredBlock103Stack1 := [:recoveredBlock103Block403Arg1 | 
    | recoveredBlock103Block403Value0 recoveredBlock103Block403Value1 recoveredBlock103Block403Value2 recoveredBlock103Block403Value3 recoveredBlock103Block403Value4 recoveredBlock103Block403Value5 recoveredBlock103Block403Value6 recoveredBlock103Block403Value7 recoveredBlock103Block403Value8 recoveredBlock103Block403Value9 recoveredBlock103Block403Value10 recoveredBlock103Block403Value11 recoveredBlock103Block403Value12 recoveredBlock103Block403Value13 recoveredBlock103Block403Value14 |
    recoveredBlock103Block403Value0 := recoveredArg2.
    recoveredBlock103Block403Value1 := Array.
    recoveredBlock103Block403Value2 := (recoveredBlock103Block403Value1) new: (5).
    recoveredBlock103Block403Value3 := recoveredBlock103Block403Value2.
    recoveredBlock103Block403Value4 := recoveredBlock103Block403Arg1.
    recoveredBlock103Block403Value5 := (recoveredBlock103Block403Value4) key.
    (recoveredBlock103Block403Value3) at: (1) put: (recoveredBlock103Block403Value5).
    recoveredBlock103Block403Value6 := recoveredBlock103Block403Value2.
    recoveredBlock103Block403Value7 := recoveredBlock103Block403Arg1.
    recoveredBlock103Block403Value8 := (recoveredBlock103Block403Value7) value.
    (recoveredBlock103Block403Value6) at: (2) put: (recoveredBlock103Block403Value8).
    recoveredBlock103Block403Value9 := recoveredBlock103Block403Value2.
    recoveredBlock103Block403Value10 := recoveredBlock103Local9.
    (recoveredBlock103Block403Value9) at: (3) put: (recoveredBlock103Block403Value10).
    recoveredBlock103Block403Value11 := recoveredBlock103Block403Value2.
    recoveredBlock103Block403Value12 := recoveredBlock103Local7.
    (recoveredBlock103Block403Value11) at: (4) put: (recoveredBlock103Block403Value12).
    recoveredBlock103Block403Value13 := recoveredBlock103Block403Value2.
    (recoveredBlock103Block403Value13) at: (5) put: (false).
    recoveredBlock103Block403Value14 := (recoveredBlock103Block403Value0) add: (recoveredBlock103Block403Value2).
    recoveredBlock103Block403Value14
].
            recoveredBlock103PC := 460.
        ].
        recoveredBlock103Step = 460 ifTrue: [
            recoveredBlock103Stack0 := (recoveredBlock103Stack0) associationsDo: (recoveredBlock103Stack1).
            recoveredBlock103PC := 462.
        ].
        recoveredBlock103Step = 462 ifTrue: [
            recoveredBlock103Result := recoveredBlock103Stack0.
            recoveredBlock103Done := true.
        ].
    ].
    recoveredBlock103Result
].
            recoveredPC := 463.
        ].
        recoveredStep = 463 ifTrue: [
            (recoveredStack0) doWithIndex: (recoveredStack1).
            recoveredPC := 465.
        ].
        recoveredStep = 465 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 468.
        ].
        recoveredStep = 468 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 470.
        ].
        recoveredStep = 470 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 474] ifFalse: [recoveredPC := 483].
        ].
        recoveredStep = 474 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 475.
        ].
        recoveredStep = 475 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 478.
        ].
        recoveredStep = 478 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 481.
        ].
        recoveredStep = 481 ifTrue: [
            (recoveredStack0) cacheAllSubappInfoFor: (recoveredStack1) classes: (recoveredStack2).
            recoveredPC := 483.
        ].
        recoveredStep = 483 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 484.
        ].
        recoveredStep = 484 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20033440; bytecode file offset 0x6f53c"
!EmLibraryCache methodsFor: 'recovered'!
cacheAllClassInfoFor: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) cacheEditions.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 584].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) new: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := [:recoveredBlock24Arg1 | 
    | recoveredBlock24Value0 recoveredBlock24Value1 recoveredBlock24Value2 recoveredBlock24Value3 recoveredBlock24Value4 recoveredBlock24Value5 |
    recoveredBlock24Value0 := recoveredBlock24Arg1.
    recoveredBlock24Value1 := (recoveredBlock24Value0) newApplications.
    recoveredBlock24Value2 := [:recoveredBlock24Block35Arg1 | 
    | recoveredBlock24Block35Value0 recoveredBlock24Block35Value1 recoveredBlock24Block35Value2 recoveredBlock24Block35Value3 |
    recoveredBlock24Block35Value0 := recoveredBlock24Arg1.
    recoveredBlock24Block35Value1 := (recoveredBlock24Block35Value0) removedApplications.
    recoveredBlock24Block35Value2 := recoveredBlock24Block35Arg1.
    recoveredBlock24Block35Value3 := (recoveredBlock24Block35Value1) includes: (recoveredBlock24Block35Value2).
    recoveredBlock24Block35Value3
].
    recoveredBlock24Value3 := (recoveredBlock24Value1) reject: (recoveredBlock24Value2).
    recoveredBlock24Value4 := [:recoveredBlock24Block53Arg1 | 
    | recoveredBlock24Block53Local1 recoveredBlock24Block53Local2 recoveredBlock24Block53Stack0 recoveredBlock24Block53Stack1 recoveredBlock24Block53Stack2 recoveredBlock24Block53Stack3 recoveredBlock24Block53Stack4 recoveredBlock24Block53Stack5 recoveredBlock24Block53Stack6 recoveredBlock24Block53PC recoveredBlock24Block53Step recoveredBlock24Block53Done recoveredBlock24Block53Result |
    recoveredBlock24Block53Stack0 := self.
    recoveredBlock24Block53PC := 60.
    recoveredBlock24Block53Done := false.
    [recoveredBlock24Block53Done not] whileTrue: [
        recoveredBlock24Block53Step := recoveredBlock24Block53PC.
        recoveredBlock24Block53Step = 60 ifTrue: [
            recoveredBlock24Block53Stack1 := recoveredBlock24Block53Arg1.
            recoveredBlock24Block53PC := 61.
        ].
        recoveredBlock24Block53Step = 61 ifTrue: [
            recoveredBlock24Block53Stack0 := (recoveredBlock24Block53Stack0) cachedAppInfoFor: (recoveredBlock24Block53Stack1).
            recoveredBlock24Block53PC := 63.
        ].
        recoveredBlock24Block53Step = 63 ifTrue: [
            recoveredBlock24Block53Local2 := recoveredBlock24Block53Stack0.
            recoveredBlock24Block53PC := 64.
        ].
        recoveredBlock24Block53Step = 64 ifTrue: [
            recoveredBlock24Block53Stack0 := self.
            recoveredBlock24Block53PC := 65.
        ].
        recoveredBlock24Block53Step = 65 ifTrue: [
            recoveredBlock24Block53Stack1 := recoveredBlock24Arg1.
            recoveredBlock24Block53PC := 68.
        ].
        recoveredBlock24Block53Step = 68 ifTrue: [
            recoveredBlock24Block53Stack2 := recoveredBlock24Block53Local2.
            recoveredBlock24Block53PC := 69.
        ].
        recoveredBlock24Block53Step = 69 ifTrue: [
            recoveredBlock24Block53Stack0 := (recoveredBlock24Block53Stack0) cachedClassInfoFor: (recoveredBlock24Block53Stack1) in: (recoveredBlock24Block53Stack2).
            recoveredBlock24Block53PC := 71.
        ].
        recoveredBlock24Block53Step = 71 ifTrue: [
            recoveredBlock24Block53Local1 := recoveredBlock24Block53Stack0.
            recoveredBlock24Block53PC := 72.
        ].
        recoveredBlock24Block53Step = 72 ifTrue: [
            recoveredBlock24Block53Stack0 := nil.
            recoveredBlock24Block53PC := 73.
        ].
        recoveredBlock24Block53Step = 73 ifTrue: [
            recoveredBlock24Block53Stack1 := recoveredBlock24Block53Local1.
            recoveredBlock24Block53PC := 74.
        ].
        recoveredBlock24Block53Step = 74 ifTrue: [
            recoveredBlock24Block53Stack2 := 'classEditionsRecord'.
            recoveredBlock24Block53PC := 76.
        ].
        recoveredBlock24Block53Step = 76 ifTrue: [
            recoveredBlock24Block53Stack3 := [].
            recoveredBlock24Block53PC := 78.
        ].
        recoveredBlock24Block53Step = 78 ifTrue: [
            recoveredBlock24Block53Stack1 := (recoveredBlock24Block53Stack1) at: (recoveredBlock24Block53Stack2) ifAbsent: (recoveredBlock24Block53Stack3).
            recoveredBlock24Block53PC := 80.
        ].
        recoveredBlock24Block53Step = 80 ifTrue: [
            (recoveredBlock24Block53Stack1 ~~ nil) ifTrue: [recoveredBlock24Block53PC := 139] ifFalse: [recoveredBlock24Block53PC := 84].
        ].
        recoveredBlock24Block53Step = 84 ifTrue: [
            recoveredBlock24Block53PC := 85.
        ].
        recoveredBlock24Block53Step = 85 ifTrue: [
            recoveredBlock24Block53Stack0 := recoveredLocal2.
            recoveredBlock24Block53PC := 88.
        ].
        recoveredBlock24Block53Step = 88 ifTrue: [
            recoveredBlock24Block53Stack1 := Array.
            recoveredBlock24Block53PC := 90.
        ].
        recoveredBlock24Block53Step = 90 ifTrue: [
            recoveredBlock24Block53Stack2 := 5.
            recoveredBlock24Block53PC := 92.
        ].
        recoveredBlock24Block53Step = 92 ifTrue: [
            recoveredBlock24Block53Stack1 := (recoveredBlock24Block53Stack1) new: (recoveredBlock24Block53Stack2).
            recoveredBlock24Block53PC := 94.
        ].
        recoveredBlock24Block53Step = 94 ifTrue: [
            recoveredBlock24Block53Stack2 := recoveredBlock24Block53Stack1.
            recoveredBlock24Block53PC := 95.
        ].
        recoveredBlock24Block53Step = 95 ifTrue: [
            recoveredBlock24Block53Stack3 := 1.
            recoveredBlock24Block53PC := 97.
        ].
        recoveredBlock24Block53Step = 97 ifTrue: [
            recoveredBlock24Block53Stack4 := recoveredBlock24Arg1.
            recoveredBlock24Block53PC := 100.
        ].
        recoveredBlock24Block53Step = 100 ifTrue: [
            recoveredBlock24Block53Stack4 := (recoveredBlock24Block53Stack4) symbol.
            recoveredBlock24Block53PC := 102.
        ].
        recoveredBlock24Block53Step = 102 ifTrue: [
            (recoveredBlock24Block53Stack2) at: (recoveredBlock24Block53Stack3) put: (recoveredBlock24Block53Stack4).
            recoveredBlock24Block53Stack2 := recoveredBlock24Block53Stack1.
            recoveredBlock24Block53PC := 105.
        ].
        recoveredBlock24Block53Step = 105 ifTrue: [
            recoveredBlock24Block53Stack3 := 2.
            recoveredBlock24Block53PC := 107.
        ].
        recoveredBlock24Block53Step = 107 ifTrue: [
            recoveredBlock24Block53Stack4 := recoveredBlock24Arg1.
            recoveredBlock24Block53PC := 110.
        ].
        recoveredBlock24Block53Step = 110 ifTrue: [
            recoveredBlock24Block53Stack5 := recoveredBlock24Block53Arg1.
            recoveredBlock24Block53PC := 111.
        ].
        recoveredBlock24Block53Step = 111 ifTrue: [
            recoveredBlock24Block53Stack4 := (recoveredBlock24Block53Stack4) timeStampIn: (recoveredBlock24Block53Stack5).
            recoveredBlock24Block53PC := 113.
        ].
        recoveredBlock24Block53Step = 113 ifTrue: [
            (recoveredBlock24Block53Stack2) at: (recoveredBlock24Block53Stack3) put: (recoveredBlock24Block53Stack4).
            recoveredBlock24Block53Stack2 := recoveredBlock24Block53Stack1.
            recoveredBlock24Block53PC := 116.
        ].
        recoveredBlock24Block53Step = 116 ifTrue: [
            recoveredBlock24Block53Stack3 := 3.
            recoveredBlock24Block53PC := 118.
        ].
        recoveredBlock24Block53Step = 118 ifTrue: [
            recoveredBlock24Block53Stack4 := recoveredBlock24Block53Arg1.
            recoveredBlock24Block53PC := 119.
        ].
        recoveredBlock24Block53Step = 119 ifTrue: [
            recoveredBlock24Block53Stack4 := (recoveredBlock24Block53Stack4) symbol.
            recoveredBlock24Block53PC := 121.
        ].
        recoveredBlock24Block53Step = 121 ifTrue: [
            (recoveredBlock24Block53Stack2) at: (recoveredBlock24Block53Stack3) put: (recoveredBlock24Block53Stack4).
            recoveredBlock24Block53Stack2 := recoveredBlock24Block53Stack1.
            recoveredBlock24Block53PC := 124.
        ].
        recoveredBlock24Block53Step = 124 ifTrue: [
            recoveredBlock24Block53Stack3 := 4.
            recoveredBlock24Block53PC := 126.
        ].
        recoveredBlock24Block53Step = 126 ifTrue: [
            recoveredBlock24Block53Stack4 := recoveredBlock24Block53Arg1.
            recoveredBlock24Block53PC := 127.
        ].
        recoveredBlock24Block53Step = 127 ifTrue: [
            recoveredBlock24Block53Stack4 := (recoveredBlock24Block53Stack4) isApplication.
            recoveredBlock24Block53PC := 129.
        ].
        recoveredBlock24Block53Step = 129 ifTrue: [
            (recoveredBlock24Block53Stack2) at: (recoveredBlock24Block53Stack3) put: (recoveredBlock24Block53Stack4).
            recoveredBlock24Block53Stack2 := recoveredBlock24Block53Stack1.
            recoveredBlock24Block53PC := 132.
        ].
        recoveredBlock24Block53Step = 132 ifTrue: [
            recoveredBlock24Block53Stack3 := 5.
            recoveredBlock24Block53PC := 134.
        ].
        recoveredBlock24Block53Step = 134 ifTrue: [
            recoveredBlock24Block53Stack4 := false.
            recoveredBlock24Block53PC := 135.
        ].
        recoveredBlock24Block53Step = 135 ifTrue: [
            (recoveredBlock24Block53Stack2) at: (recoveredBlock24Block53Stack3) put: (recoveredBlock24Block53Stack4).
            recoveredBlock24Block53PC := 137.
        ].
        recoveredBlock24Block53Step = 137 ifTrue: [
            recoveredBlock24Block53Stack0 := (recoveredBlock24Block53Stack0) add: (recoveredBlock24Block53Stack1).
            recoveredBlock24Block53PC := 139.
        ].
        recoveredBlock24Block53Step = 139 ifTrue: [
            recoveredBlock24Block53Result := recoveredBlock24Block53Stack0.
            recoveredBlock24Block53Done := true.
        ].
    ].
    recoveredBlock24Block53Result
].
    recoveredBlock24Value5 := (recoveredBlock24Value3) do: (recoveredBlock24Value4).
    recoveredBlock24Value5
].
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := (recoveredStack0) libraryClass.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := (recoveredStack0) operationsInterface.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack0 := (recoveredStack0) loadingClasses: (recoveredStack1).
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack1 := [:recoveredBlock163Arg1 :recoveredBlock163Arg2 | 
    | recoveredBlock163Local1 recoveredBlock163Local2 recoveredBlock163Local3 recoveredBlock163Local4 recoveredBlock163Local5 recoveredBlock163Local6 recoveredBlock163Local7 recoveredBlock163Local8 recoveredBlock163Stack0 recoveredBlock163Stack1 recoveredBlock163Stack2 recoveredBlock163Stack3 recoveredBlock163PC recoveredBlock163Step recoveredBlock163Done recoveredBlock163Result |
    recoveredBlock163Stack0 := self.
    recoveredBlock163PC := 170.
    recoveredBlock163Done := false.
    [recoveredBlock163Done not] whileTrue: [
        recoveredBlock163Step := recoveredBlock163PC.
        recoveredBlock163Step = 170 ifTrue: [
            recoveredBlock163Stack1 := recoveredBlock163Arg1.
            recoveredBlock163PC := 173.
        ].
        recoveredBlock163Step = 173 ifTrue: [
            recoveredBlock163Stack2 := 1.
            recoveredBlock163PC := 175.
        ].
        recoveredBlock163Step = 175 ifTrue: [
            recoveredBlock163Stack1 := (recoveredBlock163Stack1) at: (recoveredBlock163Stack2).
            recoveredBlock163PC := 177.
        ].
        recoveredBlock163Step = 177 ifTrue: [
            recoveredBlock163Local8 := recoveredBlock163Stack1.
            recoveredBlock163PC := 180.
        ].
        recoveredBlock163Step = 180 ifTrue: [
            recoveredBlock163Stack1 := recoveredBlock163Arg1.
            recoveredBlock163PC := 183.
        ].
        recoveredBlock163Step = 183 ifTrue: [
            recoveredBlock163Stack2 := 2.
            recoveredBlock163PC := 185.
        ].
        recoveredBlock163Step = 185 ifTrue: [
            recoveredBlock163Stack1 := (recoveredBlock163Stack1) at: (recoveredBlock163Stack2).
            recoveredBlock163PC := 187.
        ].
        recoveredBlock163Step = 187 ifTrue: [
            recoveredBlock163Local7 := recoveredBlock163Stack1.
            recoveredBlock163PC := 190.
        ].
        recoveredBlock163Step = 190 ifTrue: [
            recoveredBlock163Stack1 := recoveredBlock163Arg1.
            recoveredBlock163PC := 193.
        ].
        recoveredBlock163Step = 193 ifTrue: [
            recoveredBlock163Stack2 := 3.
            recoveredBlock163PC := 195.
        ].
        recoveredBlock163Step = 195 ifTrue: [
            recoveredBlock163Stack1 := (recoveredBlock163Stack1) at: (recoveredBlock163Stack2).
            recoveredBlock163PC := 197.
        ].
        recoveredBlock163Step = 197 ifTrue: [
            recoveredBlock163Local6 := recoveredBlock163Stack1.
            recoveredBlock163PC := 200.
        ].
        recoveredBlock163Step = 200 ifTrue: [
            recoveredBlock163Stack1 := recoveredBlock163Arg1.
            recoveredBlock163PC := 203.
        ].
        recoveredBlock163Step = 203 ifTrue: [
            recoveredBlock163Stack2 := 4.
            recoveredBlock163PC := 205.
        ].
        recoveredBlock163Step = 205 ifTrue: [
            recoveredBlock163Stack1 := (recoveredBlock163Stack1) at: (recoveredBlock163Stack2).
            recoveredBlock163PC := 207.
        ].
        recoveredBlock163Step = 207 ifTrue: [
            recoveredBlock163Local5 := recoveredBlock163Stack1.
            recoveredBlock163PC := 210.
        ].
        recoveredBlock163Step = 210 ifTrue: [
            recoveredBlock163Stack1 := recoveredBlock163Local5.
            recoveredBlock163PC := 213.
        ].
        recoveredBlock163Step = 213 ifTrue: [
            (recoveredBlock163Stack1) ifTrue: [recoveredBlock163PC := 216] ifFalse: [recoveredBlock163PC := 222].
        ].
        recoveredBlock163Step = 216 ifTrue: [
            recoveredBlock163Stack1 := 'applications'.
            recoveredBlock163PC := 218.
        ].
        recoveredBlock163Step = 218 ifTrue: [
            recoveredBlock163PC := 224.
        ].
        recoveredBlock163Step = 222 ifTrue: [
            recoveredBlock163Stack1 := 'subapplications'.
            recoveredBlock163PC := 224.
        ].
        recoveredBlock163Step = 224 ifTrue: [
            recoveredBlock163Local4 := recoveredBlock163Stack1.
            recoveredBlock163PC := 227.
        ].
        recoveredBlock163Step = 227 ifTrue: [
            recoveredBlock163Stack0 := (recoveredBlock163Stack0) class.
            recoveredBlock163PC := 228.
        ].
        recoveredBlock163Step = 228 ifTrue: [
            recoveredBlock163Stack0 := (recoveredBlock163Stack0) cache.
            recoveredBlock163PC := 230.
        ].
        recoveredBlock163Step = 230 ifTrue: [
            recoveredBlock163Stack1 := recoveredBlock163Local4.
            recoveredBlock163PC := 233.
        ].
        recoveredBlock163Step = 233 ifTrue: [
            recoveredBlock163Stack2 := [
    | block28005c2cValue0 block28005c2cValue1 |
    block28005c2cValue0 := LookupTable.
    block28005c2cValue1 := (block28005c2cValue0) new.
    block28005c2cValue1
].
            recoveredBlock163PC := 235.
        ].
        recoveredBlock163Step = 235 ifTrue: [
            recoveredBlock163PC := 243.
        ].
        recoveredBlock163Step = 243 ifTrue: [
            recoveredBlock163Stack0 := (recoveredBlock163Stack0) at: (recoveredBlock163Stack1) ifAbsentPut: (recoveredBlock163Stack2).
            recoveredBlock163PC := 245.
        ].
        recoveredBlock163Step = 245 ifTrue: [
            recoveredBlock163Stack1 := recoveredBlock163Local6.
            recoveredBlock163PC := 248.
        ].
        recoveredBlock163Step = 248 ifTrue: [
            recoveredBlock163Stack2 := [
    | block28005c50Value0 block28005c50Value1 |
    block28005c50Value0 := LookupTable.
    block28005c50Value1 := (block28005c50Value0) new.
    block28005c50Value1
].
            recoveredBlock163PC := 250.
        ].
        recoveredBlock163Step = 250 ifTrue: [
            recoveredBlock163PC := 259.
        ].
        recoveredBlock163Step = 259 ifTrue: [
            recoveredBlock163Stack0 := (recoveredBlock163Stack0) at: (recoveredBlock163Stack1) ifAbsentPut: (recoveredBlock163Stack2).
            recoveredBlock163PC := 261.
        ].
        recoveredBlock163Step = 261 ifTrue: [
            recoveredBlock163Local3 := recoveredBlock163Stack0.
            recoveredBlock163PC := 264.
        ].
        recoveredBlock163Step = 264 ifTrue: [
            recoveredBlock163Stack0 := self.
            recoveredBlock163PC := 265.
        ].
        recoveredBlock163Step = 265 ifTrue: [
            recoveredBlock163Stack1 := recoveredBlock163Local8.
            recoveredBlock163PC := 268.
        ].
        recoveredBlock163Step = 268 ifTrue: [
            recoveredBlock163Stack2 := recoveredBlock163Local3.
            recoveredBlock163PC := 271.
        ].
        recoveredBlock163Step = 271 ifTrue: [
            recoveredBlock163Stack0 := (recoveredBlock163Stack0) cachedClassInfoFor: (recoveredBlock163Stack1) in: (recoveredBlock163Stack2).
            recoveredBlock163PC := 273.
        ].
        recoveredBlock163Step = 273 ifTrue: [
            recoveredBlock163Local2 := recoveredBlock163Stack0.
            recoveredBlock163PC := 276.
        ].
        recoveredBlock163Step = 276 ifTrue: [
            recoveredBlock163Stack0 := recoveredLocal1.
            recoveredBlock163PC := 279.
        ].
        recoveredBlock163Step = 279 ifTrue: [
            recoveredBlock163Stack1 := recoveredBlock163Arg2.
            recoveredBlock163PC := 282.
        ].
        recoveredBlock163Step = 282 ifTrue: [
            recoveredBlock163Stack0 := (recoveredBlock163Stack0) at: (recoveredBlock163Stack1).
            recoveredBlock163PC := 284.
        ].
        recoveredBlock163Step = 284 ifTrue: [
            recoveredBlock163Stack1 := 1.
            recoveredBlock163PC := 286.
        ].
        recoveredBlock163Step = 286 ifTrue: [
            recoveredBlock163Stack0 := (recoveredBlock163Stack0) at: (recoveredBlock163Stack1).
            recoveredBlock163PC := 288.
        ].
        recoveredBlock163Step = 288 ifTrue: [
            recoveredBlock163Local1 := recoveredBlock163Stack0.
            recoveredBlock163PC := 291.
        ].
        recoveredBlock163Step = 291 ifTrue: [
            recoveredBlock163Stack0 := recoveredBlock163Local2.
            recoveredBlock163PC := 294.
        ].
        recoveredBlock163Step = 294 ifTrue: [
            recoveredBlock163Stack1 := 'classEditionsRecord'.
            recoveredBlock163PC := 296.
        ].
        recoveredBlock163Step = 296 ifTrue: [
            recoveredBlock163Stack2 := recoveredBlock163Local1.
            recoveredBlock163PC := 299.
        ].
        recoveredBlock163Step = 299 ifTrue: [
            (recoveredBlock163Stack0) at: (recoveredBlock163Stack1) put: (recoveredBlock163Stack2).
            recoveredBlock163PC := 301.
        ].
        recoveredBlock163Step = 301 ifTrue: [
            recoveredBlock163Stack0 := recoveredBlock163Local1.
            recoveredBlock163PC := 304.
        ].
        recoveredBlock163Step = 304 ifTrue: [
            recoveredBlock163Stack1 := [:recoveredBlock163Block304Arg1 | 
    | recoveredBlock163Block304Local1 recoveredBlock163Block304Stack0 recoveredBlock163Block304Stack1 recoveredBlock163Block304Stack2 recoveredBlock163Block304Stack3 recoveredBlock163Block304Stack4 recoveredBlock163Block304Stack5 recoveredBlock163Block304PC recoveredBlock163Block304Step recoveredBlock163Block304Done recoveredBlock163Block304Result |
    recoveredBlock163Block304Stack0 := nil.
    recoveredBlock163Block304PC := 310.
    recoveredBlock163Block304Done := false.
    [recoveredBlock163Block304Done not] whileTrue: [
        recoveredBlock163Block304Step := recoveredBlock163Block304PC.
        recoveredBlock163Block304Step = 310 ifTrue: [
            recoveredBlock163Block304Stack1 := nil.
            recoveredBlock163Block304PC := 311.
        ].
        recoveredBlock163Block304Step = 311 ifTrue: [
            recoveredBlock163Block304Stack2 := recoveredBlock163Block304Arg1.
            recoveredBlock163Block304PC := 312.
        ].
        recoveredBlock163Block304Step = 312 ifTrue: [
            recoveredBlock163Block304Stack2 := (recoveredBlock163Block304Stack2) timeStamp.
            recoveredBlock163Block304PC := 314.
        ].
        recoveredBlock163Block304Step = 314 ifTrue: [
            recoveredBlock163Block304Stack3 := recoveredBlock163Local7.
            recoveredBlock163Block304PC := 317.
        ].
        recoveredBlock163Block304Step = 317 ifTrue: [
            recoveredBlock163Block304Stack2 := (recoveredBlock163Block304Stack2) = (recoveredBlock163Block304Stack3).
            recoveredBlock163Block304PC := 318.
        ].
        recoveredBlock163Block304Step = 318 ifTrue: [
            (recoveredBlock163Block304Stack2) ifTrue: [recoveredBlock163Block304PC := 322] ifFalse: [recoveredBlock163Block304PC := 353].
        ].
        recoveredBlock163Block304Step = 322 ifTrue: [
            recoveredBlock163Block304PC := 323.
        ].
        recoveredBlock163Block304Step = 323 ifTrue: [
            recoveredBlock163Block304Stack1 := recoveredBlock163Local2.
            recoveredBlock163Block304PC := 326.
        ].
        recoveredBlock163Block304Step = 326 ifTrue: [
            recoveredBlock163Block304Stack2 := recoveredBlock163Block304Arg1.
            recoveredBlock163Block304PC := 327.
        ].
        recoveredBlock163Block304Step = 327 ifTrue: [
            recoveredBlock163Block304Stack2 := (recoveredBlock163Block304Stack2) timeStamp.
            recoveredBlock163Block304PC := 329.
        ].
        recoveredBlock163Block304Step = 329 ifTrue: [
            recoveredBlock163Block304Stack3 := [
    | block28005c74Value0 block28005c74Value1 |
    block28005c74Value0 := LookupTable.
    block28005c74Value1 := (block28005c74Value0) new.
    block28005c74Value1
].
            recoveredBlock163Block304PC := 331.
        ].
        recoveredBlock163Block304Step = 331 ifTrue: [
            recoveredBlock163Block304PC := 339.
        ].
        recoveredBlock163Block304Step = 339 ifTrue: [
            recoveredBlock163Block304Stack1 := (recoveredBlock163Block304Stack1) at: (recoveredBlock163Block304Stack2) ifAbsentPut: (recoveredBlock163Block304Stack3).
            recoveredBlock163Block304PC := 341.
        ].
        recoveredBlock163Block304Step = 341 ifTrue: [
            recoveredBlock163Block304Stack2 := recoveredBlock163Block304Stack1.
            recoveredBlock163Block304PC := 342.
        ].
        recoveredBlock163Block304Step = 342 ifTrue: [
            recoveredBlock163Block304Local1 := recoveredBlock163Block304Stack2.
            recoveredBlock163Block304PC := 343.
        ].
        recoveredBlock163Block304Step = 343 ifTrue: [
            recoveredBlock163Block304Stack2 := 'inheritedFP'.
            recoveredBlock163Block304PC := 345.
        ].
        recoveredBlock163Block304Step = 345 ifTrue: [
            recoveredBlock163Block304Stack3 := recoveredBlock163Block304Arg1.
            recoveredBlock163Block304PC := 346.
        ].
        recoveredBlock163Block304Step = 346 ifTrue: [
            recoveredBlock163Block304Stack4 := recoveredBlock163Block304Arg1.
            recoveredBlock163Block304PC := 347.
        ].
        recoveredBlock163Block304Step = 347 ifTrue: [
            recoveredBlock163Block304Stack4 := (recoveredBlock163Block304Stack4) inheritedFieldsIndex.
            recoveredBlock163Block304PC := 349.
        ].
        recoveredBlock163Block304Step = 349 ifTrue: [
            recoveredBlock163Block304Stack3 := (recoveredBlock163Block304Stack3) filePointerAt: (recoveredBlock163Block304Stack4).
            recoveredBlock163Block304PC := 351.
        ].
        recoveredBlock163Block304Step = 351 ifTrue: [
            recoveredBlock163Block304Stack1 := (recoveredBlock163Block304Stack1) at: (recoveredBlock163Block304Stack2) put: (recoveredBlock163Block304Stack3).
            recoveredBlock163Block304PC := 353.
        ].
        recoveredBlock163Block304Step = 353 ifTrue: [
            recoveredBlock163Block304Result := recoveredBlock163Block304Stack1.
            recoveredBlock163Block304Done := true.
        ].
    ].
    recoveredBlock163Block304Result
].
            recoveredBlock163PC := 354.
        ].
        recoveredBlock163Step = 354 ifTrue: [
            recoveredBlock163Stack0 := (recoveredBlock163Stack0) forAllEntriesDo: (recoveredBlock163Stack1).
            recoveredBlock163PC := 356.
        ].
        recoveredBlock163Step = 356 ifTrue: [
            recoveredBlock163Result := recoveredBlock163Stack0.
            recoveredBlock163Done := true.
        ].
    ].
    recoveredBlock163Result
].
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            (recoveredStack0) doWithIndex: (recoveredStack1).
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 364.
        ].
        recoveredStep = 364 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            recoveredStack0 := (recoveredStack0) new: (recoveredStack1).
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            recoveredStack1 := [:recoveredBlock373Arg1 | 
    | recoveredBlock373Value0 recoveredBlock373Value1 recoveredBlock373Value2 recoveredBlock373Value3 recoveredBlock373Value4 recoveredBlock373Value5 |
    recoveredBlock373Value0 := recoveredBlock373Arg1.
    recoveredBlock373Value1 := (recoveredBlock373Value0) newApplications.
    recoveredBlock373Value2 := [:recoveredBlock373Block385Arg1 | 
    | recoveredBlock373Block385Value0 recoveredBlock373Block385Value1 recoveredBlock373Block385Value2 recoveredBlock373Block385Value3 |
    recoveredBlock373Block385Value0 := recoveredBlock373Arg1.
    recoveredBlock373Block385Value1 := (recoveredBlock373Block385Value0) removedApplications.
    recoveredBlock373Block385Value2 := recoveredBlock373Block385Arg1.
    recoveredBlock373Block385Value3 := (recoveredBlock373Block385Value1) includes: (recoveredBlock373Block385Value2).
    recoveredBlock373Block385Value3
].
    recoveredBlock373Value3 := (recoveredBlock373Value1) reject: (recoveredBlock373Value2).
    recoveredBlock373Value4 := [:recoveredBlock373Block403Arg1 | 
    | recoveredBlock373Block403Value0 recoveredBlock373Block403Value1 recoveredBlock373Block403Value2 recoveredBlock373Block403Value3 recoveredBlock373Block403Value4 |
    recoveredBlock373Block403Value0 := recoveredLocal3.
    recoveredBlock373Block403Value1 := recoveredBlock373Arg1.
    recoveredBlock373Block403Value2 := recoveredBlock373Block403Arg1.
    recoveredBlock373Block403Value3 := (self) classEditionsRecordFor: (recoveredBlock373Block403Value1) in: (recoveredBlock373Block403Value2).
    recoveredBlock373Block403Value4 := (recoveredBlock373Block403Value0) add: (recoveredBlock373Block403Value3).
    recoveredBlock373Block403Value4
].
    recoveredBlock373Value5 := (recoveredBlock373Value3) do: (recoveredBlock373Value4).
    recoveredBlock373Value5
].
            recoveredPC := 426.
        ].
        recoveredStep = 426 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 428.
        ].
        recoveredStep = 428 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 429.
        ].
        recoveredStep = 429 ifTrue: [
            recoveredStack0 := (recoveredStack0) libraryClass.
            recoveredPC := 431.
        ].
        recoveredStep = 431 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 433.
        ].
        recoveredStep = 433 ifTrue: [
            recoveredStack0 := (recoveredStack0) operationsInterface.
            recoveredPC := 435.
        ].
        recoveredStep = 435 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 438.
        ].
        recoveredStep = 438 ifTrue: [
            recoveredStack0 := (recoveredStack0) loadingClassInfoFor: (recoveredStack1).
            recoveredPC := 440.
        ].
        recoveredStep = 440 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 443.
        ].
        recoveredStep = 443 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 446.
        ].
        recoveredStep = 446 ifTrue: [
            recoveredStack1 := [:recoveredBlock446Arg1 :recoveredBlock446Arg2 | 
    | recoveredBlock446Local1 recoveredBlock446Local2 recoveredBlock446Local3 recoveredBlock446Local4 recoveredBlock446Stack0 recoveredBlock446Stack1 recoveredBlock446Stack2 recoveredBlock446Stack3 recoveredBlock446Stack4 recoveredBlock446Stack5 recoveredBlock446PC recoveredBlock446Step recoveredBlock446Done recoveredBlock446Result |
    recoveredBlock446Stack0 := self.
    recoveredBlock446PC := 452.
    recoveredBlock446Done := false.
    [recoveredBlock446Done not] whileTrue: [
        recoveredBlock446Step := recoveredBlock446PC.
        recoveredBlock446Step = 452 ifTrue: [
            recoveredBlock446Stack1 := recoveredBlock446Arg1.
            recoveredBlock446PC := 454.
        ].
        recoveredBlock446Step = 454 ifTrue: [
            recoveredBlock446Stack1 := (recoveredBlock446Stack1) currentEntry.
            recoveredBlock446PC := 456.
        ].
        recoveredBlock446Step = 456 ifTrue: [
            recoveredBlock446Local1 := recoveredBlock446Stack1.
            recoveredBlock446PC := 457.
        ].
        recoveredBlock446Step = 457 ifTrue: [
            recoveredBlock446Stack1 := recoveredLocal1.
            recoveredBlock446PC := 460.
        ].
        recoveredBlock446Step = 460 ifTrue: [
            recoveredBlock446Stack2 := recoveredBlock446Arg2.
            recoveredBlock446PC := 462.
        ].
        recoveredBlock446Step = 462 ifTrue: [
            recoveredBlock446Stack1 := (recoveredBlock446Stack1) at: (recoveredBlock446Stack2).
            recoveredBlock446PC := 464.
        ].
        recoveredBlock446Step = 464 ifTrue: [
            recoveredBlock446Local4 := recoveredBlock446Stack1.
            recoveredBlock446PC := 465.
        ].
        recoveredBlock446Step = 465 ifTrue: [
            recoveredBlock446Stack1 := recoveredBlock446Arg1.
            recoveredBlock446PC := 467.
        ].
        recoveredBlock446Step = 467 ifTrue: [
            recoveredBlock446Stack1 := (recoveredBlock446Stack1) application.
            recoveredBlock446PC := 469.
        ].
        recoveredBlock446Step = 469 ifTrue: [
            recoveredBlock446Stack0 := (recoveredBlock446Stack0) cachedAppInfoFor: (recoveredBlock446Stack1).
            recoveredBlock446PC := 471.
        ].
        recoveredBlock446Step = 471 ifTrue: [
            recoveredBlock446Local3 := recoveredBlock446Stack0.
            recoveredBlock446PC := 472.
        ].
        recoveredBlock446Step = 472 ifTrue: [
            recoveredBlock446Stack0 := self.
            recoveredBlock446PC := 473.
        ].
        recoveredBlock446Step = 473 ifTrue: [
            recoveredBlock446Stack1 := recoveredBlock446Arg1.
            recoveredBlock446PC := 475.
        ].
        recoveredBlock446Step = 475 ifTrue: [
            recoveredBlock446Stack1 := (recoveredBlock446Stack1) actualClass.
            recoveredBlock446PC := 477.
        ].
        recoveredBlock446Step = 477 ifTrue: [
            recoveredBlock446Stack2 := recoveredBlock446Local3.
            recoveredBlock446PC := 478.
        ].
        recoveredBlock446Step = 478 ifTrue: [
            recoveredBlock446Stack0 := (recoveredBlock446Stack0) cachedClassInfoFor: (recoveredBlock446Stack1) in: (recoveredBlock446Stack2).
            recoveredBlock446PC := 480.
        ].
        recoveredBlock446Step = 480 ifTrue: [
            recoveredBlock446Local2 := recoveredBlock446Stack0.
            recoveredBlock446PC := 481.
        ].
        recoveredBlock446Step = 481 ifTrue: [
            recoveredBlock446Stack0 := recoveredBlock446Local2.
            recoveredBlock446PC := 482.
        ].
        recoveredBlock446Step = 482 ifTrue: [
            recoveredBlock446Stack1 := 'knownMFTS'.
            recoveredBlock446PC := 484.
        ].
        recoveredBlock446Step = 484 ifTrue: [
            recoveredBlock446Stack2 := recoveredBlock446Local4.
            recoveredBlock446PC := 485.
        ].
        recoveredBlock446Step = 485 ifTrue: [
            recoveredBlock446Stack3 := 2.
            recoveredBlock446PC := 487.
        ].
        recoveredBlock446Step = 487 ifTrue: [
            recoveredBlock446Stack2 := (recoveredBlock446Stack2) at: (recoveredBlock446Stack3).
            recoveredBlock446PC := 489.
        ].
        recoveredBlock446Step = 489 ifTrue: [
            (recoveredBlock446Stack0) at: (recoveredBlock446Stack1) put: (recoveredBlock446Stack2).
            recoveredBlock446PC := 491.
        ].
        recoveredBlock446Step = 491 ifTrue: [
            recoveredBlock446Stack0 := recoveredBlock446Local2.
            recoveredBlock446PC := 492.
        ].
        recoveredBlock446Step = 492 ifTrue: [
            recoveredBlock446Stack1 := recoveredBlock446Local1.
            recoveredBlock446PC := 493.
        ].
        recoveredBlock446Step = 493 ifTrue: [
            recoveredBlock446Stack1 := (recoveredBlock446Stack1) timeStamp.
            recoveredBlock446PC := 495.
        ].
        recoveredBlock446Step = 495 ifTrue: [
            recoveredBlock446Stack2 := [
    | block28005c98Value0 block28005c98Value1 |
    block28005c98Value0 := LookupTable.
    block28005c98Value1 := (block28005c98Value0) new.
    block28005c98Value1
].
            recoveredBlock446PC := 497.
        ].
        recoveredBlock446Step = 497 ifTrue: [
            recoveredBlock446PC := 505.
        ].
        recoveredBlock446Step = 505 ifTrue: [
            recoveredBlock446Stack0 := (recoveredBlock446Stack0) at: (recoveredBlock446Stack1) ifAbsentPut: (recoveredBlock446Stack2).
            recoveredBlock446PC := 507.
        ].
        recoveredBlock446Step = 507 ifTrue: [
            recoveredBlock446Stack1 := recoveredBlock446Stack0.
            recoveredBlock446PC := 508.
        ].
        recoveredBlock446Step = 508 ifTrue: [
            recoveredBlock446Stack2 := 'inheritedFP'.
            recoveredBlock446PC := 510.
        ].
        recoveredBlock446Step = 510 ifTrue: [
            recoveredBlock446Stack3 := recoveredBlock446Local1.
            recoveredBlock446PC := 511.
        ].
        recoveredBlock446Step = 511 ifTrue: [
            recoveredBlock446Stack4 := recoveredBlock446Local1.
            recoveredBlock446PC := 512.
        ].
        recoveredBlock446Step = 512 ifTrue: [
            recoveredBlock446Stack4 := (recoveredBlock446Stack4) inheritedFieldsIndex.
            recoveredBlock446PC := 514.
        ].
        recoveredBlock446Step = 514 ifTrue: [
            recoveredBlock446Stack3 := (recoveredBlock446Stack3) filePointerAt: (recoveredBlock446Stack4).
            recoveredBlock446PC := 516.
        ].
        recoveredBlock446Step = 516 ifTrue: [
            (recoveredBlock446Stack1) at: (recoveredBlock446Stack2) put: (recoveredBlock446Stack3).
            recoveredBlock446Stack1 := recoveredBlock446Stack0.
            recoveredBlock446PC := 519.
        ].
        recoveredBlock446Step = 519 ifTrue: [
            recoveredBlock446Stack2 := 'inherited'.
            recoveredBlock446PC := 521.
        ].
        recoveredBlock446Step = 521 ifTrue: [
            recoveredBlock446Stack3 := recoveredBlock446Local4.
            recoveredBlock446PC := 522.
        ].
        recoveredBlock446Step = 522 ifTrue: [
            recoveredBlock446Stack4 := 1.
            recoveredBlock446PC := 524.
        ].
        recoveredBlock446Step = 524 ifTrue: [
            recoveredBlock446Stack3 := (recoveredBlock446Stack3) at: (recoveredBlock446Stack4).
            recoveredBlock446PC := 526.
        ].
        recoveredBlock446Step = 526 ifTrue: [
            (recoveredBlock446Stack1) at: (recoveredBlock446Stack2) put: (recoveredBlock446Stack3).
            recoveredBlock446Stack1 := recoveredBlock446Stack0.
            recoveredBlock446PC := 529.
        ].
        recoveredBlock446Step = 529 ifTrue: [
            recoveredBlock446Stack2 := 'classDefinitionRecord'.
            recoveredBlock446PC := 531.
        ].
        recoveredBlock446Step = 531 ifTrue: [
            recoveredBlock446Stack3 := recoveredBlock446Local4.
            recoveredBlock446PC := 532.
        ].
        recoveredBlock446Step = 532 ifTrue: [
            recoveredBlock446Stack4 := 3.
            recoveredBlock446PC := 534.
        ].
        recoveredBlock446Step = 534 ifTrue: [
            recoveredBlock446Stack3 := (recoveredBlock446Stack3) at: (recoveredBlock446Stack4).
            recoveredBlock446PC := 536.
        ].
        recoveredBlock446Step = 536 ifTrue: [
            (recoveredBlock446Stack1) at: (recoveredBlock446Stack2) put: (recoveredBlock446Stack3).
            recoveredBlock446Stack1 := recoveredBlock446Stack0.
            recoveredBlock446PC := 539.
        ].
        recoveredBlock446Step = 539 ifTrue: [
            recoveredBlock446Stack2 := 'classMethods'.
            recoveredBlock446PC := 541.
        ].
        recoveredBlock446Step = 541 ifTrue: [
            recoveredBlock446Stack3 := recoveredBlock446Local4.
            recoveredBlock446PC := 542.
        ].
        recoveredBlock446Step = 542 ifTrue: [
            recoveredBlock446Stack4 := 4.
            recoveredBlock446PC := 544.
        ].
        recoveredBlock446Step = 544 ifTrue: [
            recoveredBlock446Stack3 := (recoveredBlock446Stack3) at: (recoveredBlock446Stack4).
            recoveredBlock446PC := 546.
        ].
        recoveredBlock446Step = 546 ifTrue: [
            recoveredBlock446Stack3 := (recoveredBlock446Stack3) asDictionary.
            recoveredBlock446PC := 548.
        ].
        recoveredBlock446Step = 548 ifTrue: [
            (recoveredBlock446Stack1) at: (recoveredBlock446Stack2) put: (recoveredBlock446Stack3).
            recoveredBlock446Stack1 := recoveredBlock446Stack0.
            recoveredBlock446PC := 551.
        ].
        recoveredBlock446Step = 551 ifTrue: [
            recoveredBlock446Stack2 := 'instMethods'.
            recoveredBlock446PC := 553.
        ].
        recoveredBlock446Step = 553 ifTrue: [
            recoveredBlock446Stack3 := recoveredBlock446Local4.
            recoveredBlock446PC := 554.
        ].
        recoveredBlock446Step = 554 ifTrue: [
            recoveredBlock446Stack4 := 5.
            recoveredBlock446PC := 556.
        ].
        recoveredBlock446Step = 556 ifTrue: [
            recoveredBlock446Stack3 := (recoveredBlock446Stack3) at: (recoveredBlock446Stack4).
            recoveredBlock446PC := 558.
        ].
        recoveredBlock446Step = 558 ifTrue: [
            recoveredBlock446Stack3 := (recoveredBlock446Stack3) asDictionary.
            recoveredBlock446PC := 560.
        ].
        recoveredBlock446Step = 560 ifTrue: [
            (recoveredBlock446Stack1) at: (recoveredBlock446Stack2) put: (recoveredBlock446Stack3).
            recoveredBlock446Stack1 := recoveredBlock446Stack0.
            recoveredBlock446PC := 563.
        ].
        recoveredBlock446Step = 563 ifTrue: [
            recoveredBlock446Stack2 := 'classCategoryDictionary'.
            recoveredBlock446PC := 565.
        ].
        recoveredBlock446Step = 565 ifTrue: [
            recoveredBlock446Stack3 := recoveredBlock446Local4.
            recoveredBlock446PC := 566.
        ].
        recoveredBlock446Step = 566 ifTrue: [
            recoveredBlock446Stack4 := 6.
            recoveredBlock446PC := 568.
        ].
        recoveredBlock446Step = 568 ifTrue: [
            recoveredBlock446Stack3 := (recoveredBlock446Stack3) at: (recoveredBlock446Stack4).
            recoveredBlock446PC := 570.
        ].
        recoveredBlock446Step = 570 ifTrue: [
            (recoveredBlock446Stack1) at: (recoveredBlock446Stack2) put: (recoveredBlock446Stack3).
            recoveredBlock446PC := 572.
        ].
        recoveredBlock446Step = 572 ifTrue: [
            recoveredBlock446Stack1 := 'instCategoryDictionary'.
            recoveredBlock446PC := 574.
        ].
        recoveredBlock446Step = 574 ifTrue: [
            recoveredBlock446Stack2 := recoveredBlock446Local4.
            recoveredBlock446PC := 575.
        ].
        recoveredBlock446Step = 575 ifTrue: [
            recoveredBlock446Stack3 := 7.
            recoveredBlock446PC := 577.
        ].
        recoveredBlock446Step = 577 ifTrue: [
            recoveredBlock446Stack2 := (recoveredBlock446Stack2) at: (recoveredBlock446Stack3).
            recoveredBlock446PC := 579.
        ].
        recoveredBlock446Step = 579 ifTrue: [
            recoveredBlock446Stack0 := (recoveredBlock446Stack0) at: (recoveredBlock446Stack1) put: (recoveredBlock446Stack2).
            recoveredBlock446PC := 581.
        ].
        recoveredBlock446Step = 581 ifTrue: [
            recoveredBlock446Result := recoveredBlock446Stack0.
            recoveredBlock446Done := true.
        ].
    ].
    recoveredBlock446Result
].
            recoveredPC := 582.
        ].
        recoveredStep = 582 ifTrue: [
            (recoveredStack0) doWithIndex: (recoveredStack1).
            recoveredPC := 584.
        ].
        recoveredStep = 584 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 585.
        ].
        recoveredStep = 585 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20034ffc; bytecode file offset 0x71130"
!EmLibraryCache methodsFor: 'recovered'!
cacheAllInfoForApps: recoveredArg1 classes: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) cacheEditions.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 834].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := Dictionary.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := [:block28005e48Arg1 | 
    | block28005e48Value0 block28005e48Value1 block28005e48Value2 block28005e48Value3 block28005e48Value4 block28005e48Value5 block28005e48Value6 block28005e48Value7 block28005e48Value8 block28005e48Value9 block28005e48Value10 block28005e48Value11 block28005e48Value12 block28005e48Value13 block28005e48Value14 |
    block28005e48Value0 := Array.
    block28005e48Value1 := (block28005e48Value0) new: (5).
    block28005e48Value2 := block28005e48Value1.
    block28005e48Value3 := block28005e48Arg1.
    block28005e48Value4 := (block28005e48Value3) symbol.
    (block28005e48Value2) at: (1) put: (block28005e48Value4).
    block28005e48Value5 := block28005e48Value1.
    block28005e48Value6 := block28005e48Arg1.
    block28005e48Value7 := (block28005e48Value6) timeStamp.
    (block28005e48Value5) at: (2) put: (block28005e48Value7).
    block28005e48Value8 := block28005e48Value1.
    block28005e48Value9 := block28005e48Arg1.
    block28005e48Value10 := (block28005e48Value9) isApplication.
    (block28005e48Value8) at: (3) put: (block28005e48Value10).
    block28005e48Value11 := block28005e48Value1.
    block28005e48Value12 := block28005e48Arg1.
    block28005e48Value13 := (block28005e48Value12) editionRecordClass.
    (block28005e48Value11) at: (4) put: (block28005e48Value13).
    block28005e48Value14 := block28005e48Value1.
    (block28005e48Value14) at: (5) put: (false).
    block28005e48Value1
].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) asOrderedCollection.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := [:block28005e6cArg1 | 
    | block28005e6cValue0 block28005e6cValue1 block28005e6cValue2 block28005e6cValue3 block28005e6cValue4 block28005e6cValue5 block28005e6cValue6 block28005e6cValue7 block28005e6cValue8 block28005e6cValue9 block28005e6cValue10 block28005e6cValue11 block28005e6cValue12 block28005e6cValue13 block28005e6cValue14 block28005e6cValue15 block28005e6cValue16 block28005e6cValue17 block28005e6cValue18 |
    block28005e6cValue0 := Array.
    block28005e6cValue1 := (block28005e6cValue0) new: (5).
    block28005e6cValue2 := block28005e6cValue1.
    block28005e6cValue3 := block28005e6cArg1.
    block28005e6cValue4 := (block28005e6cValue3) symbol.
    (block28005e6cValue2) at: (1) put: (block28005e6cValue4).
    block28005e6cValue5 := block28005e6cValue1.
    block28005e6cValue6 := block28005e6cArg1.
    block28005e6cValue7 := block28005e6cArg1.
    block28005e6cValue8 := (block28005e6cValue7) controller.
    block28005e6cValue9 := (block28005e6cValue6) timeStampIn: (block28005e6cValue8).
    (block28005e6cValue5) at: (2) put: (block28005e6cValue9).
    block28005e6cValue10 := block28005e6cValue1.
    block28005e6cValue11 := block28005e6cArg1.
    block28005e6cValue12 := (block28005e6cValue11) controller.
    block28005e6cValue13 := (block28005e6cValue12) symbol.
    (block28005e6cValue10) at: (3) put: (block28005e6cValue13).
    block28005e6cValue14 := block28005e6cValue1.
    block28005e6cValue15 := block28005e6cArg1.
    block28005e6cValue16 := (block28005e6cValue15) controller.
    block28005e6cValue17 := (block28005e6cValue16) isApplication.
    (block28005e6cValue14) at: (4) put: (block28005e6cValue17).
    block28005e6cValue18 := block28005e6cValue1.
    (block28005e6cValue18) at: (5) put: (false).
    block28005e6cValue1
].
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := (recoveredStack0) asOrderedCollection.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack0 := (recoveredStack0) cache.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack1 := 'configMaps'.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack2 := [
    | block28005e90Value0 block28005e90Value1 |
    block28005e90Value0 := LookupTable.
    block28005e90Value1 := (block28005e90Value0) new.
    block28005e90Value1
].
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack0 := (recoveredStack0) libraryClass.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack0 := (recoveredStack0) operationsInterface.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack0 := (recoveredStack0) loadingApplications: (recoveredStack1).
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack1 := [:recoveredBlock181Arg1 :recoveredBlock181Arg2 | 
    | recoveredBlock181Local1 recoveredBlock181Local2 recoveredBlock181Local3 recoveredBlock181Local4 recoveredBlock181Local5 recoveredBlock181Local6 recoveredBlock181Local7 recoveredBlock181Local8 recoveredBlock181Local9 recoveredBlock181Local10 recoveredBlock181Stack0 recoveredBlock181Stack1 recoveredBlock181Stack2 recoveredBlock181Stack3 recoveredBlock181Stack4 recoveredBlock181Stack5 recoveredBlock181PC recoveredBlock181Step recoveredBlock181Done recoveredBlock181Result |
    recoveredBlock181Stack0 := self.
    recoveredBlock181PC := 188.
    recoveredBlock181Done := false.
    [recoveredBlock181Done not] whileTrue: [
        recoveredBlock181Step := recoveredBlock181PC.
        recoveredBlock181Step = 188 ifTrue: [
            recoveredBlock181Stack1 := recoveredBlock181Arg1.
            recoveredBlock181PC := 191.
        ].
        recoveredBlock181Step = 191 ifTrue: [
            recoveredBlock181Stack2 := 1.
            recoveredBlock181PC := 193.
        ].
        recoveredBlock181Step = 193 ifTrue: [
            recoveredBlock181Stack1 := (recoveredBlock181Stack1) at: (recoveredBlock181Stack2).
            recoveredBlock181PC := 195.
        ].
        recoveredBlock181Step = 195 ifTrue: [
            recoveredBlock181Local10 := recoveredBlock181Stack1.
            recoveredBlock181PC := 198.
        ].
        recoveredBlock181Step = 198 ifTrue: [
            recoveredBlock181Stack1 := recoveredBlock181Arg1.
            recoveredBlock181PC := 201.
        ].
        recoveredBlock181Step = 201 ifTrue: [
            recoveredBlock181Stack2 := 2.
            recoveredBlock181PC := 203.
        ].
        recoveredBlock181Step = 203 ifTrue: [
            recoveredBlock181Stack1 := (recoveredBlock181Stack1) at: (recoveredBlock181Stack2).
            recoveredBlock181PC := 205.
        ].
        recoveredBlock181Step = 205 ifTrue: [
            recoveredBlock181Local9 := recoveredBlock181Stack1.
            recoveredBlock181PC := 208.
        ].
        recoveredBlock181Step = 208 ifTrue: [
            recoveredBlock181Stack1 := recoveredBlock181Arg1.
            recoveredBlock181PC := 211.
        ].
        recoveredBlock181Step = 211 ifTrue: [
            recoveredBlock181Stack2 := 3.
            recoveredBlock181PC := 213.
        ].
        recoveredBlock181Step = 213 ifTrue: [
            recoveredBlock181Stack1 := (recoveredBlock181Stack1) at: (recoveredBlock181Stack2).
            recoveredBlock181PC := 215.
        ].
        recoveredBlock181Step = 215 ifTrue: [
            recoveredBlock181Local8 := recoveredBlock181Stack1.
            recoveredBlock181PC := 218.
        ].
        recoveredBlock181Step = 218 ifTrue: [
            recoveredBlock181Stack1 := recoveredBlock181Arg1.
            recoveredBlock181PC := 221.
        ].
        recoveredBlock181Step = 221 ifTrue: [
            recoveredBlock181Stack2 := 4.
            recoveredBlock181PC := 223.
        ].
        recoveredBlock181Step = 223 ifTrue: [
            recoveredBlock181Stack1 := (recoveredBlock181Stack1) at: (recoveredBlock181Stack2).
            recoveredBlock181PC := 225.
        ].
        recoveredBlock181Step = 225 ifTrue: [
            recoveredBlock181Local7 := recoveredBlock181Stack1.
            recoveredBlock181PC := 228.
        ].
        recoveredBlock181Step = 228 ifTrue: [
            recoveredBlock181Stack1 := recoveredBlock181Local8.
            recoveredBlock181PC := 231.
        ].
        recoveredBlock181Step = 231 ifTrue: [
            (recoveredBlock181Stack1) ifTrue: [recoveredBlock181PC := 234] ifFalse: [recoveredBlock181PC := 240].
        ].
        recoveredBlock181Step = 234 ifTrue: [
            recoveredBlock181Stack1 := 'applications'.
            recoveredBlock181PC := 236.
        ].
        recoveredBlock181Step = 236 ifTrue: [
            recoveredBlock181PC := 242.
        ].
        recoveredBlock181Step = 240 ifTrue: [
            recoveredBlock181Stack1 := 'subapplications'.
            recoveredBlock181PC := 242.
        ].
        recoveredBlock181Step = 242 ifTrue: [
            recoveredBlock181Local6 := recoveredBlock181Stack1.
            recoveredBlock181PC := 245.
        ].
        recoveredBlock181Step = 245 ifTrue: [
            recoveredBlock181Stack0 := (recoveredBlock181Stack0) class.
            recoveredBlock181PC := 246.
        ].
        recoveredBlock181Step = 246 ifTrue: [
            recoveredBlock181Stack0 := (recoveredBlock181Stack0) cache.
            recoveredBlock181PC := 248.
        ].
        recoveredBlock181Step = 248 ifTrue: [
            recoveredBlock181Stack1 := recoveredBlock181Local6.
            recoveredBlock181PC := 251.
        ].
        recoveredBlock181Step = 251 ifTrue: [
            recoveredBlock181Stack2 := [
    | block28005eb4Value0 block28005eb4Value1 |
    block28005eb4Value0 := LookupTable.
    block28005eb4Value1 := (block28005eb4Value0) new.
    block28005eb4Value1
].
            recoveredBlock181PC := 253.
        ].
        recoveredBlock181Step = 253 ifTrue: [
            recoveredBlock181PC := 260.
        ].
        recoveredBlock181Step = 260 ifTrue: [
            recoveredBlock181Stack0 := (recoveredBlock181Stack0) at: (recoveredBlock181Stack1) ifAbsentPut: (recoveredBlock181Stack2).
            recoveredBlock181PC := 262.
        ].
        recoveredBlock181Step = 262 ifTrue: [
            recoveredBlock181Stack1 := recoveredBlock181Local10.
            recoveredBlock181PC := 265.
        ].
        recoveredBlock181Step = 265 ifTrue: [
            recoveredBlock181Stack2 := [
    | block28005ed8Value0 block28005ed8Value1 |
    block28005ed8Value0 := LookupTable.
    block28005ed8Value1 := (block28005ed8Value0) new.
    block28005ed8Value1
].
            recoveredBlock181PC := 267.
        ].
        recoveredBlock181Step = 267 ifTrue: [
            recoveredBlock181PC := 274.
        ].
        recoveredBlock181Step = 274 ifTrue: [
            recoveredBlock181Stack0 := (recoveredBlock181Stack0) at: (recoveredBlock181Stack1) ifAbsentPut: (recoveredBlock181Stack2).
            recoveredBlock181PC := 276.
        ].
        recoveredBlock181Step = 276 ifTrue: [
            recoveredBlock181Local5 := recoveredBlock181Stack0.
            recoveredBlock181PC := 279.
        ].
        recoveredBlock181Step = 279 ifTrue: [
            recoveredBlock181Stack0 := recoveredLocal2.
            recoveredBlock181PC := 282.
        ].
        recoveredBlock181Step = 282 ifTrue: [
            recoveredBlock181Stack1 := recoveredBlock181Arg2.
            recoveredBlock181PC := 285.
        ].
        recoveredBlock181Step = 285 ifTrue: [
            recoveredBlock181Stack0 := (recoveredBlock181Stack0) at: (recoveredBlock181Stack1).
            recoveredBlock181PC := 287.
        ].
        recoveredBlock181Step = 287 ifTrue: [
            recoveredBlock181Stack1 := 1.
            recoveredBlock181PC := 289.
        ].
        recoveredBlock181Step = 289 ifTrue: [
            recoveredBlock181Stack0 := (recoveredBlock181Stack0) at: (recoveredBlock181Stack1).
            recoveredBlock181PC := 291.
        ].
        recoveredBlock181Step = 291 ifTrue: [
            recoveredBlock181Local3 := recoveredBlock181Stack0.
            recoveredBlock181PC := 294.
        ].
        recoveredBlock181Step = 294 ifTrue: [
            recoveredBlock181Stack0 := recoveredBlock181Local3.
            recoveredBlock181PC := 297.
        ].
        recoveredBlock181Step = 297 ifTrue: [
            recoveredBlock181Stack0 := (recoveredBlock181Stack0) filePointer.
            recoveredBlock181PC := 299.
        ].
        recoveredBlock181Step = 299 ifTrue: [
            recoveredBlock181Stack0 := (recoveredBlock181Stack0) notVoid.
            recoveredBlock181PC := 301.
        ].
        recoveredBlock181Step = 301 ifTrue: [
            (recoveredBlock181Stack0) ifTrue: [recoveredBlock181PC := 304] ifFalse: [recoveredBlock181PC := 324].
        ].
        recoveredBlock181Step = 304 ifTrue: [
            recoveredBlock181Stack0 := recoveredBlock181Local5.
            recoveredBlock181PC := 307.
        ].
        recoveredBlock181Step = 307 ifTrue: [
            recoveredBlock181Stack1 := recoveredBlock181Stack0.
            recoveredBlock181PC := 308.
        ].
        recoveredBlock181Step = 308 ifTrue: [
            recoveredBlock181Stack2 := 'partsRecord'.
            recoveredBlock181PC := 310.
        ].
        recoveredBlock181Step = 310 ifTrue: [
            recoveredBlock181Stack3 := recoveredBlock181Local3.
            recoveredBlock181PC := 313.
        ].
        recoveredBlock181Step = 313 ifTrue: [
            (recoveredBlock181Stack1) at: (recoveredBlock181Stack2) put: (recoveredBlock181Stack3).
            recoveredBlock181PC := 315.
        ].
        recoveredBlock181Step = 315 ifTrue: [
            recoveredBlock181Stack1 := 'partsRecordFP'.
            recoveredBlock181PC := 317.
        ].
        recoveredBlock181Step = 317 ifTrue: [
            recoveredBlock181Stack2 := recoveredBlock181Local3.
            recoveredBlock181PC := 320.
        ].
        recoveredBlock181Step = 320 ifTrue: [
            recoveredBlock181Stack2 := (recoveredBlock181Stack2) filePointer.
            recoveredBlock181PC := 322.
        ].
        recoveredBlock181Step = 322 ifTrue: [
            (recoveredBlock181Stack0) at: (recoveredBlock181Stack1) put: (recoveredBlock181Stack2).
            recoveredBlock181PC := 324.
        ].
        recoveredBlock181Step = 324 ifTrue: [
            recoveredBlock181Stack0 := recoveredBlock181Local5.
            recoveredBlock181PC := 327.
        ].
        recoveredBlock181Step = 327 ifTrue: [
            recoveredBlock181Stack1 := recoveredBlock181Local9.
            recoveredBlock181PC := 330.
        ].
        recoveredBlock181Step = 330 ifTrue: [
            recoveredBlock181Stack2 := [
    | block28005efcValue0 block28005efcValue1 |
    block28005efcValue0 := LookupTable.
    block28005efcValue1 := (block28005efcValue0) new.
    block28005efcValue1
].
            recoveredBlock181PC := 332.
        ].
        recoveredBlock181Step = 332 ifTrue: [
            recoveredBlock181PC := 340.
        ].
        recoveredBlock181Step = 340 ifTrue: [
            recoveredBlock181Stack0 := (recoveredBlock181Stack0) at: (recoveredBlock181Stack1) ifAbsentPut: (recoveredBlock181Stack2).
            recoveredBlock181PC := 342.
        ].
        recoveredBlock181Step = 342 ifTrue: [
            recoveredBlock181Local4 := recoveredBlock181Stack0.
            recoveredBlock181PC := 345.
        ].
        recoveredBlock181Step = 345 ifTrue: [
            recoveredBlock181Stack0 := recoveredLocal2.
            recoveredBlock181PC := 348.
        ].
        recoveredBlock181Step = 348 ifTrue: [
            recoveredBlock181Stack1 := recoveredBlock181Arg2.
            recoveredBlock181PC := 351.
        ].
        recoveredBlock181Step = 351 ifTrue: [
            recoveredBlock181Stack0 := (recoveredBlock181Stack0) at: (recoveredBlock181Stack1).
            recoveredBlock181PC := 353.
        ].
        recoveredBlock181Step = 353 ifTrue: [
            recoveredBlock181Stack1 := 2.
            recoveredBlock181PC := 355.
        ].
        recoveredBlock181Step = 355 ifTrue: [
            recoveredBlock181Stack0 := (recoveredBlock181Stack0) at: (recoveredBlock181Stack1).
            recoveredBlock181PC := 357.
        ].
        recoveredBlock181Step = 357 ifTrue: [
            recoveredBlock181Local2 := recoveredBlock181Stack0.
            recoveredBlock181PC := 360.
        ].
        recoveredBlock181Step = 360 ifTrue: [
            recoveredBlock181Stack0 := recoveredBlock181Local4.
            recoveredBlock181PC := 363.
        ].
        recoveredBlock181Step = 363 ifTrue: [
            recoveredBlock181Stack1 := 'editionRecord'.
            recoveredBlock181PC := 365.
        ].
        recoveredBlock181Step = 365 ifTrue: [
            recoveredBlock181Stack2 := recoveredBlock181Local2.
            recoveredBlock181PC := 368.
        ].
        recoveredBlock181Step = 368 ifTrue: [
            (recoveredBlock181Stack0) at: (recoveredBlock181Stack1) put: (recoveredBlock181Stack2).
            recoveredBlock181PC := 370.
        ].
        recoveredBlock181Step = 370 ifTrue: [
            recoveredBlock181Stack0 := recoveredBlock181Local4.
            recoveredBlock181PC := 373.
        ].
        recoveredBlock181Step = 373 ifTrue: [
            recoveredBlock181Stack1 := 'toBeLoadedCode'.
            recoveredBlock181PC := 375.
        ].
        recoveredBlock181Step = 375 ifTrue: [
            recoveredBlock181Stack2 := EmImageSupport.
            recoveredBlock181PC := 377.
        ].
        recoveredBlock181Step = 377 ifTrue: [
            recoveredBlock181Stack2 := (recoveredBlock181Stack2) textFilter.
            recoveredBlock181PC := 379.
        ].
        recoveredBlock181Step = 379 ifTrue: [
            recoveredBlock181Stack3 := recoveredLocal2.
            recoveredBlock181PC := 382.
        ].
        recoveredBlock181Step = 382 ifTrue: [
            recoveredBlock181Stack4 := recoveredBlock181Arg2.
            recoveredBlock181PC := 385.
        ].
        recoveredBlock181Step = 385 ifTrue: [
            recoveredBlock181Stack3 := (recoveredBlock181Stack3) at: (recoveredBlock181Stack4).
            recoveredBlock181PC := 387.
        ].
        recoveredBlock181Step = 387 ifTrue: [
            recoveredBlock181Stack4 := 3.
            recoveredBlock181PC := 389.
        ].
        recoveredBlock181Step = 389 ifTrue: [
            recoveredBlock181Stack3 := (recoveredBlock181Stack3) at: (recoveredBlock181Stack4).
            recoveredBlock181PC := 391.
        ].
        recoveredBlock181Step = 391 ifTrue: [
            recoveredBlock181Stack2 := (recoveredBlock181Stack2) filter: (recoveredBlock181Stack3).
            recoveredBlock181PC := 393.
        ].
        recoveredBlock181Step = 393 ifTrue: [
            (recoveredBlock181Stack0) at: (recoveredBlock181Stack1) put: (recoveredBlock181Stack2).
            recoveredBlock181PC := 395.
        ].
        recoveredBlock181Step = 395 ifTrue: [
            recoveredBlock181Stack0 := recoveredLocal2.
            recoveredBlock181PC := 398.
        ].
        recoveredBlock181Step = 398 ifTrue: [
            recoveredBlock181Stack1 := recoveredBlock181Arg2.
            recoveredBlock181PC := 401.
        ].
        recoveredBlock181Step = 401 ifTrue: [
            recoveredBlock181Stack0 := (recoveredBlock181Stack0) at: (recoveredBlock181Stack1).
            recoveredBlock181PC := 403.
        ].
        recoveredBlock181Step = 403 ifTrue: [
            recoveredBlock181Stack1 := 4.
            recoveredBlock181PC := 405.
        ].
        recoveredBlock181Step = 405 ifTrue: [
            recoveredBlock181Stack0 := (recoveredBlock181Stack0) at: (recoveredBlock181Stack1).
            recoveredBlock181PC := 407.
        ].
        recoveredBlock181Step = 407 ifTrue: [
            recoveredBlock181Stack1 := [:block28005f20Arg1 | 
    | block28005f20Value0 block28005f20Value1 block28005f20Value2 block28005f20Value3 |
    block28005f20Value0 := SubApplication.
    block28005f20Value1 := block28005f20Arg1.
    block28005f20Value2 := (block28005f20Value1) key.
    block28005f20Value3 := (block28005f20Value0) isExpressionValid: (block28005f20Value2).
    block28005f20Value3
].
            recoveredBlock181PC := 409.
        ].
        recoveredBlock181Step = 409 ifTrue: [
            recoveredBlock181PC := 420.
        ].
        recoveredBlock181Step = 420 ifTrue: [
            recoveredBlock181Stack2 := [
    | block28005f44Value0 block28005f44Value1 block28005f44Value2 block28005f44Value3 |
    block28005f44Value0 := Association.
    block28005f44Value1 := Dictionary.
    block28005f44Value2 := (block28005f44Value1) new.
    block28005f44Value3 := (block28005f44Value0) key: (nil) value: (block28005f44Value2).
    block28005f44Value3
].
            recoveredBlock181PC := 422.
        ].
        recoveredBlock181Step = 422 ifTrue: [
            recoveredBlock181PC := 435.
        ].
        recoveredBlock181Step = 435 ifTrue: [
            recoveredBlock181Stack0 := (recoveredBlock181Stack0) detect: (recoveredBlock181Stack1) ifNone: (recoveredBlock181Stack2).
            recoveredBlock181PC := 437.
        ].
        recoveredBlock181Step = 437 ifTrue: [
            recoveredBlock181Local1 := recoveredBlock181Stack0.
            recoveredBlock181PC := 440.
        ].
        recoveredBlock181Step = 440 ifTrue: [
            recoveredBlock181Stack0 := recoveredBlock181Local4.
            recoveredBlock181PC := 443.
        ].
        recoveredBlock181Step = 443 ifTrue: [
            recoveredBlock181Stack1 := 'subapplications'.
            recoveredBlock181PC := 445.
        ].
        recoveredBlock181Step = 445 ifTrue: [
            recoveredBlock181Stack2 := recoveredBlock181Local1.
            recoveredBlock181PC := 448.
        ].
        recoveredBlock181Step = 448 ifTrue: [
            (recoveredBlock181Stack0) at: (recoveredBlock181Stack1) put: (recoveredBlock181Stack2).
            recoveredBlock181PC := 450.
        ].
        recoveredBlock181Step = 450 ifTrue: [
            recoveredBlock181Stack0 := recoveredLocal5.
            recoveredBlock181PC := 453.
        ].
        recoveredBlock181Step = 453 ifTrue: [
            recoveredBlock181Stack1 := recoveredBlock181Local1.
            recoveredBlock181PC := 456.
        ].
        recoveredBlock181Step = 456 ifTrue: [
            recoveredBlock181Stack1 := (recoveredBlock181Stack1) value.
            recoveredBlock181PC := 458.
        ].
        recoveredBlock181Step = 458 ifTrue: [
            (recoveredBlock181Stack0) addAll: (recoveredBlock181Stack1).
            recoveredBlock181PC := 460.
        ].
        recoveredBlock181Step = 460 ifTrue: [
            recoveredBlock181Stack0 := recoveredBlock181Local8.
            recoveredBlock181PC := 463.
        ].
        recoveredBlock181Step = 463 ifTrue: [
            (recoveredBlock181Stack0) ifTrue: [recoveredBlock181PC := 466] ifFalse: [recoveredBlock181PC := 512].
        ].
        recoveredBlock181Step = 466 ifTrue: [
            recoveredBlock181Stack0 := recoveredBlock181Local1.
            recoveredBlock181PC := 469.
        ].
        recoveredBlock181Step = 469 ifTrue: [
            recoveredBlock181Stack0 := (recoveredBlock181Stack0) key.
            recoveredBlock181PC := 471.
        ].
        recoveredBlock181Step = 471 ifTrue: [
            (recoveredBlock181Stack0 == nil) ifTrue: [recoveredBlock181PC := 512] ifFalse: [recoveredBlock181PC := 474].
        ].
        recoveredBlock181Step = 474 ifTrue: [
            recoveredBlock181Stack0 := recoveredBlock181Local4.
            recoveredBlock181PC := 477.
        ].
        recoveredBlock181Step = 477 ifTrue: [
            recoveredBlock181Stack1 := 'prerequisites'.
            recoveredBlock181PC := 479.
        ].
        recoveredBlock181Step = 479 ifTrue: [
            recoveredBlock181Stack2 := recoveredLocal2.
            recoveredBlock181PC := 482.
        ].
        recoveredBlock181Step = 482 ifTrue: [
            recoveredBlock181Stack3 := recoveredBlock181Arg2.
            recoveredBlock181PC := 485.
        ].
        recoveredBlock181Step = 485 ifTrue: [
            recoveredBlock181Stack2 := (recoveredBlock181Stack2) at: (recoveredBlock181Stack3).
            recoveredBlock181PC := 487.
        ].
        recoveredBlock181Step = 487 ifTrue: [
            recoveredBlock181Stack3 := 5.
            recoveredBlock181PC := 489.
        ].
        recoveredBlock181Step = 489 ifTrue: [
            recoveredBlock181Stack2 := (recoveredBlock181Stack2) at: (recoveredBlock181Stack3).
            recoveredBlock181PC := 491.
        ].
        recoveredBlock181Step = 491 ifTrue: [
            recoveredBlock181Stack3 := [:recoveredBlock181Block491Arg1 | 
    | recoveredBlock181Block491Value0 recoveredBlock181Block491Value1 recoveredBlock181Block491Value2 recoveredBlock181Block491Value3 recoveredBlock181Block491Value4 |
    recoveredBlock181Block491Value0 := recoveredBlock181Block491Arg1.
    recoveredBlock181Block491Value1 := (recoveredBlock181Block491Value0) key.
    recoveredBlock181Block491Value2 := recoveredBlock181Local1.
    recoveredBlock181Block491Value3 := (recoveredBlock181Block491Value2) key.
    recoveredBlock181Block491Value4 := (recoveredBlock181Block491Value1) = (recoveredBlock181Block491Value3).
    recoveredBlock181Block491Value4
].
            recoveredBlock181PC := 508.
        ].
        recoveredBlock181Step = 508 ifTrue: [
            recoveredBlock181Stack2 := (recoveredBlock181Stack2) detect: (recoveredBlock181Stack3).
            recoveredBlock181PC := 510.
        ].
        recoveredBlock181Step = 510 ifTrue: [
            (recoveredBlock181Stack0) at: (recoveredBlock181Stack1) put: (recoveredBlock181Stack2).
            recoveredBlock181PC := 512.
        ].
        recoveredBlock181Step = 512 ifTrue: [
            recoveredBlock181Stack0 := recoveredBlock181Local2.
            recoveredBlock181PC := 515.
        ].
        recoveredBlock181Step = 515 ifTrue: [
            recoveredBlock181Stack0 := (recoveredBlock181Stack0) releasedNamesAndTimeStamps.
            recoveredBlock181PC := 517.
        ].
        recoveredBlock181Step = 517 ifTrue: [
            recoveredBlock181Stack1 := [:recoveredBlock181Block517Arg1 | 
    | recoveredBlock181Block517Value0 recoveredBlock181Block517Value1 recoveredBlock181Block517Value2 recoveredBlock181Block517Value3 recoveredBlock181Block517Value4 recoveredBlock181Block517Value5 recoveredBlock181Block517Value6 recoveredBlock181Block517Value7 recoveredBlock181Block517Value8 recoveredBlock181Block517Value9 recoveredBlock181Block517Value10 recoveredBlock181Block517Value11 recoveredBlock181Block517Value12 recoveredBlock181Block517Value13 recoveredBlock181Block517Value14 |
    recoveredBlock181Block517Value0 := recoveredLocal3.
    recoveredBlock181Block517Value1 := Array.
    recoveredBlock181Block517Value2 := (recoveredBlock181Block517Value1) new: (5).
    recoveredBlock181Block517Value3 := recoveredBlock181Block517Value2.
    recoveredBlock181Block517Value4 := recoveredBlock181Block517Arg1.
    recoveredBlock181Block517Value5 := (recoveredBlock181Block517Value4) key.
    (recoveredBlock181Block517Value3) at: (1) put: (recoveredBlock181Block517Value5).
    recoveredBlock181Block517Value6 := recoveredBlock181Block517Value2.
    recoveredBlock181Block517Value7 := recoveredBlock181Block517Arg1.
    recoveredBlock181Block517Value8 := (recoveredBlock181Block517Value7) value.
    (recoveredBlock181Block517Value6) at: (2) put: (recoveredBlock181Block517Value8).
    recoveredBlock181Block517Value9 := recoveredBlock181Block517Value2.
    recoveredBlock181Block517Value10 := recoveredBlock181Local10.
    (recoveredBlock181Block517Value9) at: (3) put: (recoveredBlock181Block517Value10).
    recoveredBlock181Block517Value11 := recoveredBlock181Block517Value2.
    recoveredBlock181Block517Value12 := recoveredBlock181Local8.
    (recoveredBlock181Block517Value11) at: (4) put: (recoveredBlock181Block517Value12).
    recoveredBlock181Block517Value13 := recoveredBlock181Block517Value2.
    (recoveredBlock181Block517Value13) at: (5) put: (false).
    recoveredBlock181Block517Value14 := (recoveredBlock181Block517Value0) add: (recoveredBlock181Block517Value2).
    recoveredBlock181Block517Value14
].
            recoveredBlock181PC := 574.
        ].
        recoveredBlock181Step = 574 ifTrue: [
            recoveredBlock181Stack0 := (recoveredBlock181Stack0) associationsDo: (recoveredBlock181Stack1).
            recoveredBlock181PC := 576.
        ].
        recoveredBlock181Step = 576 ifTrue: [
            recoveredBlock181Result := recoveredBlock181Stack0.
            recoveredBlock181Done := true.
        ].
    ].
    recoveredBlock181Result
].
            recoveredPC := 577.
        ].
        recoveredStep = 577 ifTrue: [
            (recoveredStack0) doWithIndex: (recoveredStack1).
            recoveredPC := 579.
        ].
        recoveredStep = 579 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 582.
        ].
        recoveredStep = 582 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 587.
        ].
        recoveredStep = 587 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 590] ifFalse: [recoveredPC := 601].
        ].
        recoveredStep = 590 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 591.
        ].
        recoveredStep = 591 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 594.
        ].
        recoveredStep = 594 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 597.
        ].
        recoveredStep = 597 ifTrue: [
            (recoveredStack0) cacheAllSubappInfoFor: (recoveredStack1) classes: (recoveredStack2).
            recoveredPC := 601.
        ].
        recoveredStep = 601 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 602.
        ].
        recoveredStep = 602 ifTrue: [
            recoveredStack0 := (recoveredStack0) libraryClass.
            recoveredPC := 604.
        ].
        recoveredStep = 604 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 606.
        ].
        recoveredStep = 606 ifTrue: [
            recoveredStack0 := (recoveredStack0) operationsInterface.
            recoveredPC := 608.
        ].
        recoveredStep = 608 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 611.
        ].
        recoveredStep = 611 ifTrue: [
            recoveredStack0 := (recoveredStack0) loadingClasses: (recoveredStack1).
            recoveredPC := 615.
        ].
        recoveredStep = 615 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 618.
        ].
        recoveredStep = 618 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 621.
        ].
        recoveredStep = 621 ifTrue: [
            recoveredStack1 := [:recoveredBlock621Arg1 :recoveredBlock621Arg2 | 
    | recoveredBlock621Local1 recoveredBlock621Local2 recoveredBlock621Local3 recoveredBlock621Local4 recoveredBlock621Local5 recoveredBlock621Local6 recoveredBlock621Local7 recoveredBlock621Local8 recoveredBlock621Stack0 recoveredBlock621Stack1 recoveredBlock621Stack2 recoveredBlock621Stack3 recoveredBlock621PC recoveredBlock621Step recoveredBlock621Done recoveredBlock621Result |
    recoveredBlock621Stack0 := self.
    recoveredBlock621PC := 628.
    recoveredBlock621Done := false.
    [recoveredBlock621Done not] whileTrue: [
        recoveredBlock621Step := recoveredBlock621PC.
        recoveredBlock621Step = 628 ifTrue: [
            recoveredBlock621Stack1 := recoveredBlock621Arg1.
            recoveredBlock621PC := 631.
        ].
        recoveredBlock621Step = 631 ifTrue: [
            recoveredBlock621Stack2 := 1.
            recoveredBlock621PC := 633.
        ].
        recoveredBlock621Step = 633 ifTrue: [
            recoveredBlock621Stack1 := (recoveredBlock621Stack1) at: (recoveredBlock621Stack2).
            recoveredBlock621PC := 635.
        ].
        recoveredBlock621Step = 635 ifTrue: [
            recoveredBlock621Local8 := recoveredBlock621Stack1.
            recoveredBlock621PC := 638.
        ].
        recoveredBlock621Step = 638 ifTrue: [
            recoveredBlock621Stack1 := recoveredBlock621Arg1.
            recoveredBlock621PC := 641.
        ].
        recoveredBlock621Step = 641 ifTrue: [
            recoveredBlock621Stack2 := 2.
            recoveredBlock621PC := 643.
        ].
        recoveredBlock621Step = 643 ifTrue: [
            recoveredBlock621Stack1 := (recoveredBlock621Stack1) at: (recoveredBlock621Stack2).
            recoveredBlock621PC := 645.
        ].
        recoveredBlock621Step = 645 ifTrue: [
            recoveredBlock621Local7 := recoveredBlock621Stack1.
            recoveredBlock621PC := 648.
        ].
        recoveredBlock621Step = 648 ifTrue: [
            recoveredBlock621Stack1 := recoveredBlock621Arg1.
            recoveredBlock621PC := 651.
        ].
        recoveredBlock621Step = 651 ifTrue: [
            recoveredBlock621Stack2 := 3.
            recoveredBlock621PC := 653.
        ].
        recoveredBlock621Step = 653 ifTrue: [
            recoveredBlock621Stack1 := (recoveredBlock621Stack1) at: (recoveredBlock621Stack2).
            recoveredBlock621PC := 655.
        ].
        recoveredBlock621Step = 655 ifTrue: [
            recoveredBlock621Local6 := recoveredBlock621Stack1.
            recoveredBlock621PC := 658.
        ].
        recoveredBlock621Step = 658 ifTrue: [
            recoveredBlock621Stack1 := recoveredBlock621Arg1.
            recoveredBlock621PC := 661.
        ].
        recoveredBlock621Step = 661 ifTrue: [
            recoveredBlock621Stack2 := 4.
            recoveredBlock621PC := 663.
        ].
        recoveredBlock621Step = 663 ifTrue: [
            recoveredBlock621Stack1 := (recoveredBlock621Stack1) at: (recoveredBlock621Stack2).
            recoveredBlock621PC := 665.
        ].
        recoveredBlock621Step = 665 ifTrue: [
            recoveredBlock621Local5 := recoveredBlock621Stack1.
            recoveredBlock621PC := 668.
        ].
        recoveredBlock621Step = 668 ifTrue: [
            recoveredBlock621Stack1 := recoveredBlock621Local5.
            recoveredBlock621PC := 671.
        ].
        recoveredBlock621Step = 671 ifTrue: [
            (recoveredBlock621Stack1) ifTrue: [recoveredBlock621PC := 674] ifFalse: [recoveredBlock621PC := 680].
        ].
        recoveredBlock621Step = 674 ifTrue: [
            recoveredBlock621Stack1 := 'applications'.
            recoveredBlock621PC := 676.
        ].
        recoveredBlock621Step = 676 ifTrue: [
            recoveredBlock621PC := 682.
        ].
        recoveredBlock621Step = 680 ifTrue: [
            recoveredBlock621Stack1 := 'subapplications'.
            recoveredBlock621PC := 682.
        ].
        recoveredBlock621Step = 682 ifTrue: [
            recoveredBlock621Local4 := recoveredBlock621Stack1.
            recoveredBlock621PC := 685.
        ].
        recoveredBlock621Step = 685 ifTrue: [
            recoveredBlock621Stack0 := (recoveredBlock621Stack0) class.
            recoveredBlock621PC := 686.
        ].
        recoveredBlock621Step = 686 ifTrue: [
            recoveredBlock621Stack0 := (recoveredBlock621Stack0) cache.
            recoveredBlock621PC := 688.
        ].
        recoveredBlock621Step = 688 ifTrue: [
            recoveredBlock621Stack1 := recoveredBlock621Local4.
            recoveredBlock621PC := 691.
        ].
        recoveredBlock621Step = 691 ifTrue: [
            recoveredBlock621Stack2 := [
    | block28005f68Value0 block28005f68Value1 |
    block28005f68Value0 := LookupTable.
    block28005f68Value1 := (block28005f68Value0) new.
    block28005f68Value1
].
            recoveredBlock621PC := 694.
        ].
        recoveredBlock621Step = 694 ifTrue: [
            recoveredBlock621PC := 702.
        ].
        recoveredBlock621Step = 702 ifTrue: [
            recoveredBlock621Stack0 := (recoveredBlock621Stack0) at: (recoveredBlock621Stack1) ifAbsentPut: (recoveredBlock621Stack2).
            recoveredBlock621PC := 704.
        ].
        recoveredBlock621Step = 704 ifTrue: [
            recoveredBlock621Stack1 := recoveredBlock621Local6.
            recoveredBlock621PC := 707.
        ].
        recoveredBlock621Step = 707 ifTrue: [
            recoveredBlock621Stack2 := [
    | block28005f8cValue0 block28005f8cValue1 |
    block28005f8cValue0 := LookupTable.
    block28005f8cValue1 := (block28005f8cValue0) new.
    block28005f8cValue1
].
            recoveredBlock621PC := 710.
        ].
        recoveredBlock621Step = 710 ifTrue: [
            recoveredBlock621PC := 718.
        ].
        recoveredBlock621Step = 718 ifTrue: [
            recoveredBlock621Stack0 := (recoveredBlock621Stack0) at: (recoveredBlock621Stack1) ifAbsentPut: (recoveredBlock621Stack2).
            recoveredBlock621PC := 720.
        ].
        recoveredBlock621Step = 720 ifTrue: [
            recoveredBlock621Local3 := recoveredBlock621Stack0.
            recoveredBlock621PC := 723.
        ].
        recoveredBlock621Step = 723 ifTrue: [
            recoveredBlock621Stack0 := self.
            recoveredBlock621PC := 724.
        ].
        recoveredBlock621Step = 724 ifTrue: [
            recoveredBlock621Stack1 := recoveredBlock621Local8.
            recoveredBlock621PC := 727.
        ].
        recoveredBlock621Step = 727 ifTrue: [
            recoveredBlock621Stack2 := recoveredBlock621Local3.
            recoveredBlock621PC := 730.
        ].
        recoveredBlock621Step = 730 ifTrue: [
            recoveredBlock621Stack0 := (recoveredBlock621Stack0) cachedClassInfoFor: (recoveredBlock621Stack1) in: (recoveredBlock621Stack2).
            recoveredBlock621PC := 735.
        ].
        recoveredBlock621Step = 735 ifTrue: [
            recoveredBlock621Local2 := recoveredBlock621Stack0.
            recoveredBlock621PC := 738.
        ].
        recoveredBlock621Step = 738 ifTrue: [
            recoveredBlock621Stack0 := recoveredLocal2.
            recoveredBlock621PC := 741.
        ].
        recoveredBlock621Step = 741 ifTrue: [
            recoveredBlock621Stack1 := recoveredBlock621Arg2.
            recoveredBlock621PC := 744.
        ].
        recoveredBlock621Step = 744 ifTrue: [
            recoveredBlock621Stack0 := (recoveredBlock621Stack0) at: (recoveredBlock621Stack1).
            recoveredBlock621PC := 746.
        ].
        recoveredBlock621Step = 746 ifTrue: [
            recoveredBlock621Stack1 := 1.
            recoveredBlock621PC := 748.
        ].
        recoveredBlock621Step = 748 ifTrue: [
            recoveredBlock621Stack0 := (recoveredBlock621Stack0) at: (recoveredBlock621Stack1).
            recoveredBlock621PC := 750.
        ].
        recoveredBlock621Step = 750 ifTrue: [
            recoveredBlock621Local1 := recoveredBlock621Stack0.
            recoveredBlock621PC := 753.
        ].
        recoveredBlock621Step = 753 ifTrue: [
            recoveredBlock621Stack0 := recoveredBlock621Local2.
            recoveredBlock621PC := 756.
        ].
        recoveredBlock621Step = 756 ifTrue: [
            recoveredBlock621Stack1 := 'classEditionsRecord'.
            recoveredBlock621PC := 760.
        ].
        recoveredBlock621Step = 760 ifTrue: [
            recoveredBlock621Stack2 := recoveredBlock621Local1.
            recoveredBlock621PC := 763.
        ].
        recoveredBlock621Step = 763 ifTrue: [
            (recoveredBlock621Stack0) at: (recoveredBlock621Stack1) put: (recoveredBlock621Stack2).
            recoveredBlock621PC := 765.
        ].
        recoveredBlock621Step = 765 ifTrue: [
            recoveredBlock621Stack0 := recoveredBlock621Local1.
            recoveredBlock621PC := 768.
        ].
        recoveredBlock621Step = 768 ifTrue: [
            recoveredBlock621Stack1 := [:recoveredBlock621Block768Arg1 | 
    | recoveredBlock621Block768Local1 recoveredBlock621Block768Stack0 recoveredBlock621Block768Stack1 recoveredBlock621Block768Stack2 recoveredBlock621Block768Stack3 recoveredBlock621Block768Stack4 recoveredBlock621Block768Stack5 recoveredBlock621Block768PC recoveredBlock621Block768Step recoveredBlock621Block768Done recoveredBlock621Block768Result |
    recoveredBlock621Block768Stack0 := nil.
    recoveredBlock621Block768PC := 774.
    recoveredBlock621Block768Done := false.
    [recoveredBlock621Block768Done not] whileTrue: [
        recoveredBlock621Block768Step := recoveredBlock621Block768PC.
        recoveredBlock621Block768Step = 774 ifTrue: [
            recoveredBlock621Block768Stack1 := nil.
            recoveredBlock621Block768PC := 775.
        ].
        recoveredBlock621Block768Step = 775 ifTrue: [
            recoveredBlock621Block768Stack2 := recoveredBlock621Block768Arg1.
            recoveredBlock621Block768PC := 776.
        ].
        recoveredBlock621Block768Step = 776 ifTrue: [
            recoveredBlock621Block768Stack2 := (recoveredBlock621Block768Stack2) timeStamp.
            recoveredBlock621Block768PC := 778.
        ].
        recoveredBlock621Block768Step = 778 ifTrue: [
            recoveredBlock621Block768Stack3 := recoveredBlock621Local7.
            recoveredBlock621Block768PC := 781.
        ].
        recoveredBlock621Block768Step = 781 ifTrue: [
            recoveredBlock621Block768Stack2 := (recoveredBlock621Block768Stack2) = (recoveredBlock621Block768Stack3).
            recoveredBlock621Block768PC := 782.
        ].
        recoveredBlock621Block768Step = 782 ifTrue: [
            (recoveredBlock621Block768Stack2) ifTrue: [recoveredBlock621Block768PC := 786] ifFalse: [recoveredBlock621Block768PC := 825].
        ].
        recoveredBlock621Block768Step = 786 ifTrue: [
            recoveredBlock621Block768PC := 787.
        ].
        recoveredBlock621Block768Step = 787 ifTrue: [
            recoveredBlock621Block768Stack1 := recoveredBlock621Local2.
            recoveredBlock621Block768PC := 790.
        ].
        recoveredBlock621Block768Step = 790 ifTrue: [
            recoveredBlock621Block768Stack2 := recoveredBlock621Block768Arg1.
            recoveredBlock621Block768PC := 791.
        ].
        recoveredBlock621Block768Step = 791 ifTrue: [
            recoveredBlock621Block768Stack2 := (recoveredBlock621Block768Stack2) timeStamp.
            recoveredBlock621Block768PC := 793.
        ].
        recoveredBlock621Block768Step = 793 ifTrue: [
            recoveredBlock621Block768Stack3 := [
    | block28005fb0Value0 block28005fb0Value1 |
    block28005fb0Value0 := LookupTable.
    block28005fb0Value1 := (block28005fb0Value0) new.
    block28005fb0Value1
].
            recoveredBlock621Block768PC := 796.
        ].
        recoveredBlock621Block768Step = 796 ifTrue: [
            recoveredBlock621Block768PC := 804.
        ].
        recoveredBlock621Block768Step = 804 ifTrue: [
            recoveredBlock621Block768Stack1 := (recoveredBlock621Block768Stack1) at: (recoveredBlock621Block768Stack2) ifAbsentPut: (recoveredBlock621Block768Stack3).
            recoveredBlock621Block768PC := 806.
        ].
        recoveredBlock621Block768Step = 806 ifTrue: [
            recoveredBlock621Block768Stack2 := recoveredBlock621Block768Stack1.
            recoveredBlock621Block768PC := 807.
        ].
        recoveredBlock621Block768Step = 807 ifTrue: [
            recoveredBlock621Block768Local1 := recoveredBlock621Block768Stack2.
            recoveredBlock621Block768PC := 808.
        ].
        recoveredBlock621Block768Step = 808 ifTrue: [
            recoveredBlock621Block768Stack2 := 'inheritedFP'.
            recoveredBlock621Block768PC := 812.
        ].
        recoveredBlock621Block768Step = 812 ifTrue: [
            recoveredBlock621Block768Stack3 := recoveredBlock621Block768Arg1.
            recoveredBlock621Block768PC := 813.
        ].
        recoveredBlock621Block768Step = 813 ifTrue: [
            recoveredBlock621Block768Stack4 := recoveredBlock621Block768Arg1.
            recoveredBlock621Block768PC := 814.
        ].
        recoveredBlock621Block768Step = 814 ifTrue: [
            recoveredBlock621Block768Stack4 := (recoveredBlock621Block768Stack4) inheritedFieldsIndex.
            recoveredBlock621Block768PC := 819.
        ].
        recoveredBlock621Block768Step = 819 ifTrue: [
            recoveredBlock621Block768Stack3 := (recoveredBlock621Block768Stack3) filePointerAt: (recoveredBlock621Block768Stack4).
            recoveredBlock621Block768PC := 823.
        ].
        recoveredBlock621Block768Step = 823 ifTrue: [
            recoveredBlock621Block768Stack1 := (recoveredBlock621Block768Stack1) at: (recoveredBlock621Block768Stack2) put: (recoveredBlock621Block768Stack3).
            recoveredBlock621Block768PC := 825.
        ].
        recoveredBlock621Block768Step = 825 ifTrue: [
            recoveredBlock621Block768Result := recoveredBlock621Block768Stack1.
            recoveredBlock621Block768Done := true.
        ].
    ].
    recoveredBlock621Block768Result
].
            recoveredBlock621PC := 826.
        ].
        recoveredBlock621Step = 826 ifTrue: [
            recoveredBlock621Stack0 := (recoveredBlock621Stack0) forAllEntriesDo: (recoveredBlock621Stack1).
            recoveredBlock621PC := 831.
        ].
        recoveredBlock621Step = 831 ifTrue: [
            recoveredBlock621Result := recoveredBlock621Stack0.
            recoveredBlock621Done := true.
        ].
    ].
    recoveredBlock621Result
].
            recoveredPC := 832.
        ].
        recoveredStep = 832 ifTrue: [
            (recoveredStack0) doWithIndex: (recoveredStack1).
            recoveredPC := 834.
        ].
        recoveredStep = 834 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 835.
        ].
        recoveredStep = 835 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

