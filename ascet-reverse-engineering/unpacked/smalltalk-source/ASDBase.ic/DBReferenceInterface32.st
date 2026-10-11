"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200017c8; bytecode file offset 0x8ffcfc"
!DBReferenceInterface32 methodsFor: 'recovered'!
internalLibraryLegacy
    ^self
! !

"ASDBase.ic method 0x20009404; bytecode file offset 0x908be4"
!DBReferenceInterface32 methodsFor: 'recovered'!
rebuildLocalDatabase
    | recoveredValue0 |
    recoveredValue0 := (self) aSyncRebuildLocalDatabase.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20014bd4; bytecode file offset 0x912098"
!DBReferenceInterface32 methodsFor: 'recovered'!
labelDBProxyClass
    | recoveredValue0 |
    recoveredValue0 := DBLabelProxy.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200155e8; bytecode file offset 0x912098"
!DBReferenceInterface32 methodsFor: 'recovered'!
labelDBObjectClass
    | recoveredValue0 |
    recoveredValue0 := DBObject.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2002715c; bytecode file offset 0x923a44"
!DBReferenceInterface32 methodsFor: 'recovered'!
emptyCache
    | recoveredValue0 |
    recoveredValue0 := (self) emptyCache: (false).
    ^recoveredValue0
! !

"ASDBase.ic method 0x20027404; bytecode file offset 0x923d40"
!DBReferenceInterface32 methodsFor: 'recovered'!
closeLocalDatabase
    | recoveredValue0 |
    recoveredValue0 := (self) closeLocalDatabaseNotify: (true).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200387e4; bytecode file offset 0x935c54"
!DBReferenceInterface32 methodsFor: 'recovered'!
aboutToOverwriteItem: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) metaData.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003a73c; bytecode file offset 0x938608"
!DBReferenceInterface32 methodsFor: 'recovered'!
readAttributeRecord: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) readReferenceRecord: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200559bc; bytecode file offset 0x952a9c"
!DBReferenceInterface32 methodsFor: 'recovered'!
loadObject: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) loadObject: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005b5fc; bytecode file offset 0x957ecc"
!DBReferenceInterface32 methodsFor: 'recovered'!
closeOnlyLocalDatabase
    | recoveredLocal1 |
    (self) closeReferenceFile.
    ^self
! !

"ASDBase.ic method 0x2005b608; bytecode file offset 0x957ecc"
!DBReferenceInterface32 methodsFor: 'recovered'!
closeOnlyReferenceFile
    | recoveredLocal1 |
    (self) closeReferenceFile.
    ^self
! !

"ASDBase.ic method 0x2005c3d4; bytecode file offset 0x959680"
!DBReferenceInterface32 methodsFor: 'recovered'!
makeUUIDManager
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ASDXMLUuidLookupBinaryDB.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := (recoveredValue1) init.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20060344; bytecode file offset 0x95ccc0"
!DBReferenceInterface32 methodsFor: 'recovered'!
labelInterface
    | recoveredValue0 |
    (self) etasDevHalt.
    recoveredValue0 := (self) getDefaultInterface.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006fcb0; bytecode file offset 0x96c6ac"
!DBReferenceInterface32 methodsFor: 'recovered'!
attributeInterface
    | recoveredValue0 |
    recoveredValue0 := referenceInterface.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20086ac4; bytecode file offset 0x98376c"
!DBReferenceInterface32 methodsFor: 'recovered'!
writeAttribute: recoveredArg1 record: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) writeReference: (recoveredValue0) record: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20087504; bytecode file offset 0x983e10"
!DBReferenceInterface32 methodsFor: 'recovered'!
deleteAll: recoveredArg1 progressWindow: recoveredArg2 save: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) deleteAll: (recoveredValue0) progressWindow: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20091ac0; bytecode file offset 0x98e394"
!DBReferenceInterface32 methodsFor: 'recovered'!
recordLabelOffset: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := CTError.
    recoveredValue1 := (recoveredValue0) createBasic: ('notavailable').
    ^recoveredValue1
! !

"ASDBase.ic method 0x200963b8; bytecode file offset 0x992c74"
!DBReferenceInterface32 methodsFor: 'recovered'!
writeAttributeRecord: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) asProxy.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) writeAttribute: (recoveredValue1) record: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200969d4; bytecode file offset 0x9932f0"
!DBReferenceInterface32 methodsFor: 'recovered'!
deleteLabels: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super delete: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2009ca0c; bytecode file offset 0x999628"
!DBReferenceInterface32 methodsFor: 'recovered'!
initCacheLimit
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSMemorystatus.
    recoveredValue1 := (recoveredValue0) calculateCacheSizeLimit.
    (self) cacheSizeLimit: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200b45c8; bytecode file offset 0x9b0e8c"
!DBReferenceInterface32 methodsFor: 'recovered'!
referencePath
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) driveRoot.
    recoveredValue1 := (self) pathName.
    recoveredValue2 := (recoveredValue0) , (recoveredValue1).
    recoveredValue3 := (recoveredValue2) , ('\attrib').
    ^recoveredValue3
! !

"ASDBase.ic method 0x200b7824; bytecode file offset 0x9b40f0"
!DBReferenceInterface32 methodsFor: 'recovered'!
setTransactionLoggingMode
    | recoveredValue0 recoveredValue1 |
    super setTransactionLoggingMode.
    recoveredValue0 := referenceInterface.
    recoveredValue1 := (recoveredValue0) setTransactionLoggingMode.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b7834; bytecode file offset 0x9b40f0"
!DBReferenceInterface32 methodsFor: 'recovered'!
clearTransactionLoggingMode
    | recoveredValue0 recoveredValue1 |
    super clearTransactionLoggingMode.
    recoveredValue0 := referenceInterface.
    recoveredValue1 := (recoveredValue0) clearTransactionLoggingMode.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200bb7f4; bytecode file offset 0x9b80b0"
!DBReferenceInterface32 methodsFor: 'recovered'!
deleteAttribute: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    (self) removeFromCache: (recoveredValue0).
    recoveredValue1 := referenceInterface.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) deleteRecord: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200d3a20; bytecode file offset 0x9d0380"
!DBReferenceInterface32 methodsFor: 'recovered'!
closeOnly
    (self) closeReferenceFile.
    super closeOnly.
    ^self
! !

"ASDBase.ic method 0x200d552c; bytecode file offset 0x9d1dec"
!DBReferenceInterface32 methodsFor: 'recovered'!
allFiles
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := super allFiles.
    recoveredValue1 := referenceInterface.
    recoveredValue2 := (recoveredValue1) allFiles.
    recoveredValue3 := (recoveredValue0) , (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200d594c; bytecode file offset 0x9d220c"
!DBReferenceInterface32 methodsFor: 'recovered'!
resetLongOperation
    | recoveredValue0 recoveredValue1 |
    super resetLongOperation.
    recoveredValue0 := referenceInterface.
    recoveredValue1 := (recoveredValue0) enableLongOperation: (false).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200dd5b4; bytecode file offset 0x9d9e6c"
!DBReferenceInterface32 methodsFor: 'recovered'!
readAttributeRecordFromHandle: recoveredArg1 atOffset: recoveredArg2 recordClass: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := referenceInterface.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue0) readRecordFromHandle: (recoveredValue1) atOffset: (recoveredValue2) recordClass: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200e5ec0; bytecode file offset 0x9e277c"
!DBReferenceInterface32 methodsFor: 'recovered'!
selfClosingClose
    | recoveredValue0 |
    super selfClosingClose.
    recoveredValue0 := referenceInterface.
    (recoveredValue0) selfClosingClose.
    ^self
! !

"ASDBase.ic method 0x200e5ee0; bytecode file offset 0x9e27a0"
!DBReferenceInterface32 methodsFor: 'recovered'!
removeCTreeReferences
    | recoveredValue0 |
    super removeCTreeReferences.
    recoveredValue0 := referenceInterface.
    (recoveredValue0) removeCTIFils.
    ^self
! !

"ASDBase.ic method 0x200ef16c; bytecode file offset 0x9eba2c"
!DBReferenceInterface32 methodsFor: 'recovered'!
allAttributeSetObjectsDo: recoveredArg1 for: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (recoveredValue0) asAttributeProxy: ('').
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (self) attributeSetObjectsDo: (recoveredValue2) for: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20108620; bytecode file offset 0xa04ee4"
!DBReferenceInterface32 methodsFor: 'recovered'!
emergencyCloseDatabase
    (self) closeReferenceFile.
    super emergencyCloseDatabase.
    (self) saveConfiguration.
    ^self
! !

"ASDBase.ic method 0x2010eda0; bytecode file offset 0xa0b65c"
!DBReferenceInterface32 methodsFor: 'recovered'!
printFileOpenStateOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    super printFileOpenStateOn: (recoveredValue0).
    recoveredValue1 := referenceInterface.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) printFileOpenStateOn: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2011c574; bytecode file offset 0xa18e38"
!DBReferenceInterface32 methodsFor: 'recovered'!
createDiskSpace
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := super createDiskSpace.
    recoveredValue1 := referenceInterface.
    recoveredValue2 := (recoveredValue1) dataFileExtension.
    recoveredValue3 := (recoveredValue0) + (recoveredValue2).
    recoveredValue4 := referenceInterface.
    recoveredValue5 := (recoveredValue4) indexFileExtension.
    recoveredValue6 := (recoveredValue3) + (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x2011c5a0; bytecode file offset 0xa18e60"
!DBReferenceInterface32 methodsFor: 'recovered'!
existsFiles
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := super existsFiles.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) existsMyReferenceFiles.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201271ac; bytecode file offset 0xa23a70"
!DBReferenceInterface32 methodsFor: 'recovered'!
attributeSetObjectsDo: recoveredArg1 for: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (recoveredValue0) uniqueKey.
    recoveredValue2 := (recoveredValue1) create.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredArg2.
    (recoveredValue3) setKeyValue: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (self) allAttributeSetObjectsDo: (recoveredValue5) forSet: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x2012f470; bytecode file offset 0xa2bd3c"
!DBReferenceInterface32 methodsFor: 'recovered'!
getDatabaseDirectories
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := super getDatabaseDirectories.
    recoveredValue1 := Array.
    recoveredValue2 := referenceInterface.
    recoveredValue3 := (recoveredValue2) pathName.
    recoveredValue4 := (recoveredValue1) with: (recoveredValue3).
    recoveredValue5 := (recoveredValue0) , (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x2012f4d0; bytecode file offset 0xa2bd8c"
!DBReferenceInterface32 methodsFor: 'recovered'!
isOpen
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := super isOpen.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := referenceInterface.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOpen.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20140d18; bytecode file offset 0xa3d5e4"
!DBReferenceInterface32 methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    super initialize.
    recoveredValue0 := (self) interfaces.
    recoveredValue1 := (recoveredValue0) first.
    recoveredValue2 := (recoveredValue1) attributeInterfaceClass.
    recoveredValue3 := (recoveredValue2) create.
    referenceInterface := recoveredValue3.
    ^self
! !

"ASDBase.ic method 0x20142154; bytecode file offset 0xa3ea50"
!DBReferenceInterface32 methodsFor: 'recovered'!
incReferences: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := objectCache.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := objectCache.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) dbObject.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) incReferences: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20142174; bytecode file offset 0xa3ea50"
!DBReferenceInterface32 methodsFor: 'recovered'!
decReferences: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := objectCache.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := objectCache.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) dbObject.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) decReferences: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20142194; bytecode file offset 0xa3ea50"
!DBReferenceInterface32 methodsFor: 'recovered'!
cacheReferences: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := objectCache.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := objectCache.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) dbObject.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) cacheReferences: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20145d3c; bytecode file offset 0xa425fc"
!DBReferenceInterface32 methodsFor: 'recovered'!
printFileStateOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    super printFileStateOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (recoveredValue1) cr.
    recoveredValue2 := referenceInterface.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) printFileStateOn: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20148b2c; bytecode file offset 0xa453e4"
!DBReferenceInterface32 methodsFor: 'recovered'!
readSection: recoveredArg1 fromInifile: recoveredArg2 for: recoveredArg3 winProfile: recoveredArg4
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := referenceInterface.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := referenceInterface.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) readSection: (recoveredStack2) fromInifile: (recoveredStack3) winProfile: (recoveredStack4).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20149934; bytecode file offset 0xa461f8"
!DBReferenceInterface32 methodsFor: 'recovered'!
openAttributeFile
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := referenceInterface.
    recoveredValue1 := (self) referencePath.
    recoveredValue2 := (self) user.
    recoveredValue3 := (self) password.
    recoveredValue4 := (recoveredValue0) openDataFile: (recoveredValue1) userName: (recoveredValue2) password: (recoveredValue3) serverName: (nil).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x20149960; bytecode file offset 0xa46220"
!DBReferenceInterface32 methodsFor: 'recovered'!
closeReferenceFile
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := referenceInterface.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) closeDataFile.
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
            recoveredStack1 := (recoveredStack1) isError.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) showError: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2014d024; bytecode file offset 0xa498e8"
!DBReferenceInterface32 methodsFor: 'recovered'!
attributeInterfaceType
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := pathNames.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'attributeInterfaceType'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := [
    | block280ccbdcValue0 |
    block280ccbdcValue0 := CTreeLocalVariableAttributeInterface.
    block280ccbdcValue0
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2015a088; bytecode file offset 0xa56948"
!DBReferenceInterface32 methodsFor: 'recovered'!
readReferenceRecord: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := referenceInterface.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) readRecord: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) isError.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) showError: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20160874; bytecode file offset 0xa5d13c"
!DBReferenceInterface32 methodsFor: 'recovered'!
checkFiles
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOpen.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := referenceInterface.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkFiles.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := super checkFiles.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := #().
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2016b808; bytecode file offset 0xa680cc"
!DBReferenceInterface32 methodsFor: 'recovered'!
restoreDoDa
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := super restoreDoDa.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) restoreReferenceFileDoDa.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2016e4a8; bytecode file offset 0xa6ad78"
!DBReferenceInterface32 methodsFor: 'recovered'!
existsMyReferenceFiles
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := CfsStat.
    recoveredValue1 := (self) referencePath.
    recoveredValue2 := (recoveredValue1) , ('\').
    recoveredValue3 := referenceInterface.
    recoveredValue4 := (recoveredValue3) objectFileName.
    recoveredValue5 := (recoveredValue2) , (recoveredValue4).
    recoveredValue6 := (recoveredValue5) , ('.*').
    recoveredValue7 := (recoveredValue0) exists: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x20172a44; bytecode file offset 0xa6f314"
!DBReferenceInterface32 methodsFor: 'recovered'!
getDatabaseSize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := super getDatabaseSize.
    recoveredValue1 := Array.
    recoveredValue2 := referenceInterface.
    recoveredValue3 := (recoveredValue2) numberOfRecords.
    recoveredValue4 := referenceInterface.
    recoveredValue5 := (recoveredValue4) numberOfKeyEntries.
    recoveredValue6 := (recoveredValue1) with: (recoveredValue3) with: (recoveredValue5).
    recoveredValue7 := (recoveredValue0) , (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x20172a80; bytecode file offset 0xa6f348"
!DBReferenceInterface32 methodsFor: 'recovered'!
checkIfOpen
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := super checkIfOpen.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
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
            recoveredStack0 := ETASOSHandle.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := referenceInterface.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) dataFilePath.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOpen: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201744fc; bytecode file offset 0xa70dbc"
!DBReferenceInterface32 methodsFor: 'recovered'!
changeFileExtensionTo: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := referenceInterface.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := referenceInterface.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) changeFileExtension: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            super changeFileExtensionTo: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2017c6fc; bytecode file offset 0xa78fc0"
!DBReferenceInterface32 methodsFor: 'recovered'!
readReferencesFromDatabase: recoveredArg1
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
            recoveredStack0 := (recoveredStack0) readReferenceRecord: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) showError: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) readFromRecord: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2017c81c; bytecode file offset 0xa790e0"
!DBReferenceInterface32 methodsFor: 'recovered'!
writeToDatabase: recoveredArg1
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
            recoveredStack0 := super writeToDatabase: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 16].
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
            recoveredStack0 := (recoveredStack0) writeReferencesToDatabase: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2017e014; bytecode file offset 0xa7a8d4"
!DBReferenceInterface32 methodsFor: 'recovered'!
execLongOperation: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := referenceInterface.
    recoveredValue1 := (recoveredValue0) enableLongOperation: (true).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := super execLongOperation: (recoveredValue2).
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := referenceInterface.
    recoveredValue5 := recoveredLocal1.
    (recoveredValue4) enableLongOperation: (recoveredValue5).
    recoveredValue6 := recoveredLocal2.
    ^recoveredValue6
! !

"ASDBase.ic method 0x20185b5c; bytecode file offset 0xa82420"
!DBReferenceInterface32 methodsFor: 'recovered'!
changePath: recoveredArg1
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
            super changePath: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := referenceInterface.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := referenceInterface.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) referencePath.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) changePath: (recoveredStack1) serverName: (recoveredStack2).
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

"ASDBase.ic method 0x2018a9a0; bytecode file offset 0xa8726c"
!DBReferenceInterface32 methodsFor: 'recovered'!
existsAttribute: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := referenceInterface.
    recoveredValue1 := (recoveredValue0) keyClass.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) createFrom: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := referenceInterface.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (recoveredValue5) keyValue.
    recoveredValue7 := referenceInterface.
    recoveredValue8 := (recoveredValue7) uniqueKeyNumber.
    recoveredValue9 := (recoveredValue4) readKey: (recoveredValue6) for: (recoveredValue8).
    recoveredValue10 := (recoveredValue9) isCTError.
    recoveredValue11 := (recoveredValue10) not.
    ^recoveredValue11
! !

"ASDBase.ic method 0x2019aff4; bytecode file offset 0xa978b0"
!DBReferenceInterface32 methodsFor: 'recovered'!
cacheSizeLimit: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := objectCache.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := -1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := objectCache.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) cacheSizeLimit.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := objectCache.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) cacheSizeLimit: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201ab91c; bytecode file offset 0xaa81e4"
!DBReferenceInterface32 methodsFor: 'recovered'!
getLoadedObjectFrom: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := linDeLin.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) getLoadedObjectFrom: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) isError.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) showError: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) dbObject.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) dbInterface: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201d4ad0; bytecode file offset 0xad1390"
!DBReferenceInterface32 methodsFor: 'recovered'!
writeReferencesToDatabase: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := linDeLin.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) linkObject.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) storeReferences.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) writeReference: (recoveredStack2) record: (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201eaeac; bytecode file offset 0xae7770"
!DBReferenceInterface32 methodsFor: 'recovered'!
writeSection: recoveredArg1 for: recoveredArg2 toInifile: recoveredArg3 winProfile: recoveredArg4
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := 'location'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := (recoveredStack3) referencePath.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack5 := recoveredArg3.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) writeEntry: (recoveredStack2) value: (recoveredStack3) in: (recoveredStack4) to: (recoveredStack5).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := referenceInterface.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := referenceInterface.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) writeSection: (recoveredStack2) toInifile: (recoveredStack3) winProfile: (recoveredStack4).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201f8990; bytecode file offset 0xaf527c"
!DBReferenceInterface32 methodsFor: 'recovered'!
restoreReferenceFileDoDa
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := referenceInterface.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) referencePath.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := (recoveredStack3) user.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack4 := (recoveredStack4) password.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) restoreDoDa: (recoveredStack2) userName: (recoveredStack3) password: (recoveredStack4) serverName: (recoveredStack5).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) isError.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 29].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) showError: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201f89b0; bytecode file offset 0xaf527c"
!DBReferenceInterface32 methodsFor: 'recovered'!
deleteReferenceFile
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := referenceInterface.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) referencePath.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := (recoveredStack3) user.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack4 := (recoveredStack4) password.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) deleteDataFile: (recoveredStack2) userName: (recoveredStack3) password: (recoveredStack4) serverName: (recoveredStack5).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) isError.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 29].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) showError: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201f9054; bytecode file offset 0xaf591c"
!DBReferenceInterface32 methodsFor: 'recovered'!
commit
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOpen.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
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
            super commit.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := referenceInterface.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) commitTransaction.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal1.
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
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2020f714; bytecode file offset 0xb0bfd4"
!DBReferenceInterface32 methodsFor: 'recovered'!
deleteAttributes: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := [:recoveredBlock4Arg1 | 
    | recoveredBlock4Local1 recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4Stack4 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack1 := nil.
            recoveredBlock4PC := 11.
        ].
        recoveredBlock4Step = 11 ifTrue: [
            recoveredBlock4Stack2 := referenceInterface.
            recoveredBlock4PC := 13.
        ].
        recoveredBlock4Step = 13 ifTrue: [
            recoveredBlock4Stack3 := recoveredBlock4Arg1.
            recoveredBlock4PC := 14.
        ].
        recoveredBlock4Step = 14 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) deleteRecord: (recoveredBlock4Stack3).
            recoveredBlock4PC := 15.
        ].
        recoveredBlock4Step = 15 ifTrue: [
            recoveredBlock4Stack3 := recoveredBlock4Stack2.
            recoveredBlock4PC := 16.
        ].
        recoveredBlock4Step = 16 ifTrue: [
            recoveredBlock4Local1 := recoveredBlock4Stack3.
            recoveredBlock4PC := 17.
        ].
        recoveredBlock4Step = 17 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) isError.
            recoveredBlock4PC := 18.
        ].
        recoveredBlock4Step = 18 ifTrue: [
            (recoveredBlock4Stack2) ifTrue: [recoveredBlock4PC := 22] ifFalse: [recoveredBlock4PC := 25].
        ].
        recoveredBlock4Step = 22 ifTrue: [
            recoveredBlock4PC := 23.
        ].
        recoveredBlock4Step = 23 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Local1.
            recoveredBlock4PC := 24.
        ].
        recoveredBlock4Step = 24 ifTrue: [
            ^recoveredBlock4Stack1
        ].
        recoveredBlock4Step = 25 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack1.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) allAttributeSetObjectsDo: (recoveredValue0) for: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x202371a8; bytecode file offset 0xb33a9c"
!DBReferenceInterface32 methodsFor: 'recovered'!
aSyncCompactLocalDatabase
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := super aSyncCompactLocalDatabase.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 33] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOpen.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := referenceInterface.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) reinit.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := referenceInterface.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) aSyncCompactLocalDatabase: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) saveConfiguration.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202371cc; bytecode file offset 0xb33a9c"
!DBReferenceInterface32 methodsFor: 'recovered'!
aSyncRebuildLocalDatabase
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := super aSyncRebuildLocalDatabase.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 33] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOpen.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := referenceInterface.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) reinit.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := referenceInterface.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) aSyncRebuildLocalDatabase: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) saveConfiguration.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2023a088; bytecode file offset 0xb36960"
!DBReferenceInterface32 methodsFor: 'recovered'!
fileSize
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := super fileSize.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) referencePath.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := CfsStat.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) exists: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 33].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) asPathname.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := referenceInterface.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) objectFileName.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) fileSizeFor: (recoveredStack1) result: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2023b5a8; bytecode file offset 0xb37e70"
!DBReferenceInterface32 methodsFor: 'recovered'!
garbageCollect
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := objectCache.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := objectCache.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) garbageCollect.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := [:block280ddb44Arg1 | 
    | block280ddb44Value0 block280ddb44Value1 |
    block280ddb44Value0 := block280ddb44Arg1.
    block280ddb44Value1 := (block280ddb44Value0) preCloseDB.
    block280ddb44Value1
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := linDeLin.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := linDeLin.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) cleanupInstances.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            progressBlock := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20244bc8; bytecode file offset 0xb41490"
!DBReferenceInterface32 methodsFor: 'recovered'!
writeReference: recoveredArg1 record: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isWriteError.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := referenceInterface.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) write: (recoveredStack1) record: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCTError.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) isWriteError.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 29].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) setWriteError.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) showError: (recoveredStack1).
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
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2025d7f8; bytecode file offset 0xb5a0c4"
!DBReferenceInterface32 methodsFor: 'recovered'!
loadOnlyAttributeFromDatabase: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) readAttributeRecord: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) showError: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := linDeLin.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) getLoadedObjectFrom: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) showError: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) dbObject.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) dbInterface: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20264228; bytecode file offset 0xb60b00"
!DBReferenceInterface32 methodsFor: 'recovered'!
createReferenceFile
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := referenceInterface.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) referencePath.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := (recoveredStack3) user.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack4 := (recoveredStack4) password.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDataFile: (recoveredStack2) userName: (recoveredStack3) password: (recoveredStack4) serverName: (recoveredStack5).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) isError.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) closeLocalDatabase.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) checkFiles.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) subErrors: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) showError: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20265fcc; bytecode file offset 0xb62898"
!DBReferenceInterface32 methodsFor: 'recovered'!
loadAttributeFromDatabase: recoveredArg1
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
            recoveredStack0 := (recoveredStack0) loadFromCache: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 37] ifFalse: [recoveredPC := 12].
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
            recoveredStack0 := (recoveredStack0) loadOnlyAttributeFromDatabase: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 33].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) clearModified.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := objectCache.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) writeToCache: (recoveredStack1).
            recoveredPC := 37.
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

"ASDBase.ic method 0x20270004; bytecode file offset 0xb6c8d0"
!DBReferenceInterface32 methodsFor: 'recovered'!
deleteLocalDatabase
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := super deleteLocalDatabase.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) existsMyReferenceFiles.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) deleteReferenceFile.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := referenceInterface.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) deletePath.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20291b8c; bytecode file offset 0xb8e460"
!DBReferenceInterface32 methodsFor: 'recovered'!
compactLocalDatabase
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := super compactLocalDatabase.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := referenceInterface.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) referencePath.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) user.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := (recoveredStack3) password.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) compactDataFile: (recoveredStack1) userName: (recoveredStack2) password: (recoveredStack3) serverName: (recoveredStack4).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 41].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) showError: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack0
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

"ASDBase.ic method 0x2029ac24; bytecode file offset 0xb974ec"
!DBReferenceInterface32 methodsFor: 'recovered'!
createNewReferenceFile
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOpen.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
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
            recoveredStack0 := (recoveredStack0) closeReferenceFile.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) deleteReferenceFile.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) createReferenceFile.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 42].
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
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202b10c0; bytecode file offset 0xbad994"
!DBReferenceInterface32 methodsFor: 'recovered'!
writeAttributeToDatabase: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := linDeLin.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) dump: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) isError.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) showError: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) dbObject.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) writeAttribute: (recoveredStack1) record: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) showError: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) dbObject.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) clearModified.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) setWritten.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) setCommited.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203386a8; bytecode file offset 0xc34f7c"
!DBReferenceInterface32 methodsFor: 'recovered'!
getLinkObject: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) loadCache: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) linkObject.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) dbObject.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) isModified.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := linDeLin.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) object.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) getLinkObject: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredPC := 51.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) readReferencesOnly.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredPC := 51.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredPC := 59.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) linkObject.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2034c944; bytecode file offset 0xc49228"
!DBReferenceInterface32 methodsFor: 'recovered'!
openLocalDatabase
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOpen.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
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
            recoveredStack0 := super openLocalDatabase.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) closeOnlyLocalDatabase.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) openAttributeFile.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) closeOnlyReferenceFile.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) checkFiles.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) subErrors: (recoveredStack1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) showError: (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) isReadError.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 59].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) closeOnlyLocalDatabase.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) saveConfiguration.
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

"ASDBase.ic method 0x2034fa94; bytecode file offset 0xc4c37c"
!DBReferenceInterface32 methodsFor: 'recovered'!
closeLocalDatabaseNotify: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := Smalltalk.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := 'EtasSCMInterface'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) asSymbol.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := [:block280eee0cArg1 | 
    | block280eee0cValue0 block280eee0cValue1 |
    block280eee0cValue0 := block280eee0cArg1.
    block280eee0cValue1 := (block280eee0cValue0) closeSCM.
    block280eee0cValue1
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) ifPresent: (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOpen.
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
            recoveredStack0 := super isOpen.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) writeSpecialObjects.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) waitUntilWriteTerminates.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) closeReferenceFile.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            super closeLocalDatabaseNotify: (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 59].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) saveConfiguration.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOpen.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) not.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20357038; bytecode file offset 0xc53920"
!DBReferenceInterface32 methodsFor: 'recovered'!
deleteStateFromInifile: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := WinProfile.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) initialize.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            super deleteStateFromInifile: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := 1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 41.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) attributeInterfaceType.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := '.attribute'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) deleteSection: (recoveredStack1) from: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) attributeInterfaceType.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := '.attribute'.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) readSection: (recoveredStack1) from: (recoveredStack2).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 63] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203bd5b8; bytecode file offset 0xcb9e94"
!DBReferenceInterface32 methodsFor: 'recovered'!
delete: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 |
    recoveredValue0 := [
    | recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack1 := recoveredArg1.
            recoveredBlock4PC := 13.
        ].
        recoveredBlock4Step = 13 ifTrue: [
            recoveredBlock4Stack0 := super delete: (recoveredBlock4Stack1).
            recoveredBlock4PC := 17.
        ].
        recoveredBlock4Step = 17 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Stack0.
            recoveredBlock4PC := 18.
        ].
        recoveredBlock4Step = 18 ifTrue: [
            recoveredLocal2 := recoveredBlock4Stack1.
            recoveredBlock4PC := 21.
        ].
        recoveredBlock4Step = 21 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) isCTError.
            recoveredBlock4PC := 22.
        ].
        recoveredBlock4Step = 22 ifTrue: [
            (recoveredBlock4Stack0) ifTrue: [recoveredBlock4PC := 26] ifFalse: [recoveredBlock4PC := 32].
        ].
        recoveredBlock4Step = 26 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 27.
        ].
        recoveredBlock4Step = 27 ifTrue: [
            recoveredBlock4Stack1 := recoveredLocal2.
            recoveredBlock4PC := 30.
        ].
        recoveredBlock4Step = 30 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) showError: (recoveredBlock4Stack1).
            recoveredBlock4PC := 31.
        ].
        recoveredBlock4Step = 31 ifTrue: [
            ^recoveredBlock4Stack0
        ].
        recoveredBlock4Step = 32 ifTrue: [
            recoveredBlock4Stack0 := nil.
            recoveredBlock4PC := 33.
        ].
        recoveredBlock4Step = 33 ifTrue: [
            recoveredBlock4Stack1 := recoveredArg1.
            recoveredBlock4PC := 36.
        ].
        recoveredBlock4Step = 36 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) readReferencesOnly.
            recoveredBlock4PC := 38.
        ].
        recoveredBlock4Step = 38 ifTrue: [
            recoveredBlock4Stack2 := recoveredBlock4Stack1.
            recoveredBlock4PC := 39.
        ].
        recoveredBlock4Step = 39 ifTrue: [
            recoveredLocal1 := recoveredBlock4Stack2.
            recoveredBlock4PC := 42.
        ].
        recoveredBlock4Step = 42 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) isError.
            recoveredBlock4PC := 44.
        ].
        recoveredBlock4Step = 44 ifTrue: [
            (recoveredBlock4Stack1) ifTrue: [recoveredBlock4PC := 77] ifFalse: [recoveredBlock4PC := 48].
        ].
        recoveredBlock4Step = 48 ifTrue: [
            recoveredBlock4PC := 49.
        ].
        recoveredBlock4Step = 49 ifTrue: [
            recoveredBlock4Stack0 := recoveredArg1.
            recoveredBlock4PC := 52.
        ].
        recoveredBlock4Step = 52 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) asDBReferenceLinkProxy.
            recoveredBlock4PC := 54.
        ].
        recoveredBlock4Step = 54 ifTrue: [
            recoveredBlock4Stack1 := recoveredLocal1.
            recoveredBlock4PC := 57.
        ].
        recoveredBlock4Step = 57 ifTrue: [
            (recoveredBlock4Stack0) updateRemovedReferences: (recoveredBlock4Stack1).
            recoveredBlock4PC := 59.
        ].
        recoveredBlock4Step = 59 ifTrue: [
            recoveredBlock4Stack0 := nil.
            recoveredBlock4PC := 60.
        ].
        recoveredBlock4Step = 60 ifTrue: [
            recoveredBlock4Stack1 := self.
            recoveredBlock4PC := 61.
        ].
        recoveredBlock4Step = 61 ifTrue: [
            recoveredBlock4Stack2 := recoveredArg1.
            recoveredBlock4PC := 64.
        ].
        recoveredBlock4Step = 64 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) deleteAttributes: (recoveredBlock4Stack2).
            recoveredBlock4PC := 66.
        ].
        recoveredBlock4Step = 66 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) isCTError.
            recoveredBlock4PC := 67.
        ].
        recoveredBlock4Step = 67 ifTrue: [
            (recoveredBlock4Stack1) ifTrue: [recoveredBlock4PC := 70] ifFalse: [recoveredBlock4PC := 77].
        ].
        recoveredBlock4Step = 70 ifTrue: [
            recoveredBlock4PC := 71.
        ].
        recoveredBlock4Step = 71 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 72.
        ].
        recoveredBlock4Step = 72 ifTrue: [
            recoveredBlock4Stack1 := recoveredLocal2.
            recoveredBlock4PC := 75.
        ].
        recoveredBlock4Step = 75 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) showError: (recoveredBlock4Stack1).
            recoveredBlock4PC := 76.
        ].
        recoveredBlock4Step = 76 ifTrue: [
            ^recoveredBlock4Stack0
        ].
        recoveredBlock4Step = 77 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack0.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
    (recoveredValue0) ctCritical.
    ^self
! !

"ASDBase.ic method 0x203c827c; bytecode file offset 0xcc4b64"
!DBReferenceInterface32 methodsFor: 'recovered'!
emptyCache: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := objectCache.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := objectCache.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) getModifiedObjects.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) isBatchTesting.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 31].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) commit.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 49].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) commit.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := objectCache.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := -1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) emptyCache: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            objectCache := recoveredStack2.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := RBUserQuestion.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := DBNotCommited.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := Array.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack4 := (recoveredStack4) size.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) confirm: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack2) yesNo.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) prompt.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := objectCache.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := -1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) emptyCache: (recoveredStack2).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            objectCache := recoveredStack1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20423f08; bytecode file offset 0xd207e4"
!DBReferenceInterface32 methodsFor: 'recovered'!
readReferencesFromLoadedObject: recoveredArg1
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
            recoveredStack0 := (recoveredStack0) getLinkObject: (recoveredStack1).
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
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := nil.
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
            recoveredStack0 := (recoveredStack0) getModifiedObjects.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) remove: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) isReferencedBys: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredPC := 98.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) replaceArrays.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := [:recoveredBlock60Arg1 | 
    | recoveredBlock60Local1 recoveredBlock60Stack0 recoveredBlock60Stack1 recoveredBlock60Stack2 recoveredBlock60Stack3 recoveredBlock60Stack4 recoveredBlock60PC recoveredBlock60Step recoveredBlock60Done recoveredBlock60Result |
    recoveredBlock60Stack0 := self.
    recoveredBlock60PC := 66.
    recoveredBlock60Done := false.
    [recoveredBlock60Done not] whileTrue: [
        recoveredBlock60Step := recoveredBlock60PC.
        recoveredBlock60Step = 66 ifTrue: [
            recoveredBlock60Stack1 := nil.
            recoveredBlock60PC := 67.
        ].
        recoveredBlock60Step = 67 ifTrue: [
            recoveredBlock60Stack2 := self.
            recoveredBlock60PC := 68.
        ].
        recoveredBlock60Step = 68 ifTrue: [
            recoveredBlock60Stack3 := recoveredBlock60Arg1.
            recoveredBlock60PC := 69.
        ].
        recoveredBlock60Step = 69 ifTrue: [
            recoveredBlock60Stack2 := (recoveredBlock60Stack2) getLinkObject: (recoveredBlock60Stack3).
            recoveredBlock60PC := 70.
        ].
        recoveredBlock60Step = 70 ifTrue: [
            recoveredBlock60Stack3 := recoveredBlock60Stack2.
            recoveredBlock60PC := 71.
        ].
        recoveredBlock60Step = 71 ifTrue: [
            recoveredBlock60Local1 := recoveredBlock60Stack3.
            recoveredBlock60PC := 72.
        ].
        recoveredBlock60Step = 72 ifTrue: [
            (recoveredBlock60Stack2 == nil) ifTrue: [recoveredBlock60PC := 95] ifFalse: [recoveredBlock60PC := 76].
        ].
        recoveredBlock60Step = 76 ifTrue: [
            recoveredBlock60PC := 77.
        ].
        recoveredBlock60Step = 77 ifTrue: [
            recoveredBlock60Stack1 := nil.
            recoveredBlock60PC := 78.
        ].
        recoveredBlock60Step = 78 ifTrue: [
            recoveredBlock60Stack2 := recoveredBlock60Local1.
            recoveredBlock60PC := 79.
        ].
        recoveredBlock60Step = 79 ifTrue: [
            recoveredBlock60Stack3 := recoveredArg1.
            recoveredBlock60PC := 82.
        ].
        recoveredBlock60Step = 82 ifTrue: [
            recoveredBlock60Stack2 := (recoveredBlock60Stack2) hasReferencesTo: (recoveredBlock60Stack3).
            recoveredBlock60PC := 84.
        ].
        recoveredBlock60Step = 84 ifTrue: [
            (recoveredBlock60Stack2) ifTrue: [recoveredBlock60PC := 88] ifFalse: [recoveredBlock60PC := 95].
        ].
        recoveredBlock60Step = 88 ifTrue: [
            recoveredBlock60PC := 89.
        ].
        recoveredBlock60Step = 89 ifTrue: [
            recoveredBlock60Stack1 := recoveredLocal1.
            recoveredBlock60PC := 92.
        ].
        recoveredBlock60Step = 92 ifTrue: [
            recoveredBlock60Stack2 := recoveredBlock60Arg1.
            recoveredBlock60PC := 93.
        ].
        recoveredBlock60Step = 93 ifTrue: [
            recoveredBlock60Stack1 := (recoveredBlock60Stack1) addIsReferencedBy: (recoveredBlock60Stack2).
            recoveredBlock60PC := 95.
        ].
        recoveredBlock60Step = 95 ifTrue: [
            recoveredBlock60Result := recoveredBlock60Stack1.
            recoveredBlock60Done := true.
        ].
    ].
    recoveredBlock60Result
].
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20447a7c; bytecode file offset 0xd44388"
!DBReferenceInterface32 methodsFor: 'recovered'!
updateDataStorageReferencesProgressWindow: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'call_89333'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) referencePath.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) exists: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributeInterface.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := [:recoveredBlock24Arg1 | 
    | recoveredBlock24Value0 recoveredBlock24Value1 recoveredBlock24Value2 recoveredBlock24Value3 recoveredBlock24Value4 |
    recoveredBlock24Value0 := recoveredBlock24Arg1.
    (recoveredBlock24Value0) closeDataFile.
    recoveredBlock24Value1 := recoveredBlock24Arg1.
    recoveredBlock24Value2 := recoveredBlock24Arg1.
    recoveredBlock24Value3 := (recoveredBlock24Value2) defaultDataFilename.
    (recoveredBlock24Value1) copyFiles: (recoveredBlock24Value3) to: ('temp').
    recoveredBlock24Value4 := (self) openAttributeFile.
    recoveredBlock24Value4
].
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) internalRestoreBackReferencesProgressWindow: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributeInterface.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := [:recoveredBlock57Arg1 | 
    | recoveredBlock57Value0 recoveredBlock57Value1 recoveredBlock57Value2 recoveredBlock57Value3 recoveredBlock57Value4 |
    recoveredBlock57Value0 := recoveredBlock57Arg1.
    (recoveredBlock57Value0) closeDataFile.
    recoveredBlock57Value1 := recoveredBlock57Arg1.
    recoveredBlock57Value2 := recoveredBlock57Arg1.
    recoveredBlock57Value3 := (recoveredBlock57Value2) defaultDataFilename.
    (recoveredBlock57Value1) copyFiles: ('temp') to: (recoveredBlock57Value3).
    recoveredBlock57Value4 := (self) openAttributeFile.
    recoveredBlock57Value4
].
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := CfsDirectoryDescriptor.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := 'temp.*'.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := (recoveredStack2) attributeInterface.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := (recoveredStack2) pathName.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) findFileNames: (recoveredStack1) local: (recoveredStack2).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := [:block280fed10Arg1 | 
    | block280fed10Value0 block280fed10Value1 block280fed10Value2 block280fed10Value3 block280fed10Value4 |
    block280fed10Value0 := CfsStat.
    block280fed10Value1 := block280fed10Arg1.
    (block280fed10Value0) clearReadOnly: (block280fed10Value1).
    block280fed10Value2 := CfsFileDescriptor.
    block280fed10Value3 := block280fed10Arg1.
    block280fed10Value4 := (block280fed10Value2) remove: (block280fed10Value3).
    block280fed10Value4
].
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20489960; bytecode file offset 0xd86238"
!DBReferenceInterface32 methodsFor: 'recovered'!
allAttributeSetObjectsDo: recoveredArg1 forSet: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) getSetSize: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 128].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := [:recoveredBlock23Arg1 | 
    | recoveredBlock23Value0 recoveredBlock23Value1 recoveredBlock23Value2 |
    recoveredBlock23Value0 := recoveredLocal1.
    recoveredBlock23Value1 := recoveredLocal2.
    recoveredBlock23Value2 := (recoveredBlock23Value0) / (recoveredBlock23Value1).
    recoveredBlock23Value2
].
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            progressBlock := recoveredStack0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock41Local1 recoveredBlock41Stack0 recoveredBlock41Stack1 recoveredBlock41Stack2 recoveredBlock41Stack3 recoveredBlock41Stack4 recoveredBlock41PC recoveredBlock41Step recoveredBlock41Done recoveredBlock41Result |
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
            recoveredBlock41Stack3 := recoveredArg2.
            recoveredBlock41PC := 53.
        ].
        recoveredBlock41Step = 53 ifTrue: [
            recoveredBlock41Stack2 := (recoveredBlock41Stack2) loadFirstInSetProxy: (recoveredBlock41Stack3).
            recoveredBlock41PC := 54.
        ].
        recoveredBlock41Step = 54 ifTrue: [
            recoveredBlock41Stack3 := recoveredBlock41Stack2.
            recoveredBlock41PC := 55.
        ].
        recoveredBlock41Step = 55 ifTrue: [
            recoveredBlock41Local1 := recoveredBlock41Stack3.
            recoveredBlock41PC := 56.
        ].
        recoveredBlock41Step = 56 ifTrue: [
            recoveredBlock41Stack2 := (recoveredBlock41Stack2) isError.
            recoveredBlock41PC := 57.
        ].
        recoveredBlock41Step = 57 ifTrue: [
            (recoveredBlock41Stack2) ifTrue: [recoveredBlock41PC := 125] ifFalse: [recoveredBlock41PC := 60].
        ].
        recoveredBlock41Step = 60 ifTrue: [
            recoveredBlock41PC := 61.
        ].
        recoveredBlock41Step = 61 ifTrue: [
            recoveredBlock41Stack1 := recoveredArg1.
            recoveredBlock41PC := 64.
        ].
        recoveredBlock41Step = 64 ifTrue: [
            recoveredBlock41Stack2 := recoveredBlock41Local1.
            recoveredBlock41PC := 65.
        ].
        recoveredBlock41Step = 65 ifTrue: [
            (recoveredBlock41Stack1) value: (recoveredBlock41Stack2).
            recoveredBlock41PC := 67.
        ].
        recoveredBlock41Step = 67 ifTrue: [
            recoveredBlock41Stack1 := self.
            recoveredBlock41PC := 68.
        ].
        recoveredBlock41Step = 68 ifTrue: [
            recoveredBlock41Stack1 := (recoveredBlock41Stack1) operationCancel.
            recoveredBlock41PC := 70.
        ].
        recoveredBlock41Step = 70 ifTrue: [
            (recoveredBlock41Stack1) ifTrue: [recoveredBlock41PC := 74] ifFalse: [recoveredBlock41PC := 80].
        ].
        recoveredBlock41Step = 74 ifTrue: [
            recoveredBlock41Stack1 := self.
            recoveredBlock41PC := 75.
        ].
        recoveredBlock41Step = 75 ifTrue: [
            recoveredBlock41Stack2 := false.
            recoveredBlock41PC := 76.
        ].
        recoveredBlock41Step = 76 ifTrue: [
            (recoveredBlock41Stack1) operationCancel: (recoveredBlock41Stack2).
            recoveredBlock41PC := 78.
        ].
        recoveredBlock41Step = 78 ifTrue: [
            recoveredBlock41Stack1 := self.
            recoveredBlock41PC := 79.
        ].
        recoveredBlock41Step = 79 ifTrue: [
            ^recoveredBlock41Stack1
        ].
        recoveredBlock41Step = 80 ifTrue: [
            recoveredBlock41Stack1 := 1.
            recoveredBlock41PC := 82.
        ].
        recoveredBlock41Step = 82 ifTrue: [
            recoveredLocal1 := recoveredBlock41Stack1.
            recoveredBlock41PC := 85.
        ].
        recoveredBlock41Step = 85 ifTrue: [
            recoveredBlock41PC := 113.
        ].
        recoveredBlock41Step = 88 ifTrue: [
            recoveredBlock41Stack1 := recoveredArg1.
            recoveredBlock41PC := 91.
        ].
        recoveredBlock41Step = 91 ifTrue: [
            recoveredBlock41Stack2 := recoveredBlock41Local1.
            recoveredBlock41PC := 92.
        ].
        recoveredBlock41Step = 92 ifTrue: [
            (recoveredBlock41Stack1) value: (recoveredBlock41Stack2).
            recoveredBlock41PC := 94.
        ].
        recoveredBlock41Step = 94 ifTrue: [
            recoveredBlock41Stack1 := self.
            recoveredBlock41PC := 95.
        ].
        recoveredBlock41Step = 95 ifTrue: [
            recoveredBlock41Stack1 := (recoveredBlock41Stack1) operationCancel.
            recoveredBlock41PC := 97.
        ].
        recoveredBlock41Step = 97 ifTrue: [
            (recoveredBlock41Stack1) ifTrue: [recoveredBlock41PC := 100] ifFalse: [recoveredBlock41PC := 106].
        ].
        recoveredBlock41Step = 100 ifTrue: [
            recoveredBlock41Stack1 := self.
            recoveredBlock41PC := 101.
        ].
        recoveredBlock41Step = 101 ifTrue: [
            recoveredBlock41Stack2 := false.
            recoveredBlock41PC := 102.
        ].
        recoveredBlock41Step = 102 ifTrue: [
            (recoveredBlock41Stack1) operationCancel: (recoveredBlock41Stack2).
            recoveredBlock41PC := 104.
        ].
        recoveredBlock41Step = 104 ifTrue: [
            recoveredBlock41Stack1 := self.
            recoveredBlock41PC := 105.
        ].
        recoveredBlock41Step = 105 ifTrue: [
            ^recoveredBlock41Stack1
        ].
        recoveredBlock41Step = 106 ifTrue: [
            recoveredBlock41Stack1 := recoveredLocal1.
            recoveredBlock41PC := 109.
        ].
        recoveredBlock41Step = 109 ifTrue: [
            recoveredBlock41Stack1 := (recoveredBlock41Stack1) + (1).
            recoveredBlock41PC := 110.
        ].
        recoveredBlock41Step = 110 ifTrue: [
            recoveredLocal1 := recoveredBlock41Stack1.
            recoveredBlock41PC := 113.
        ].
        recoveredBlock41Step = 113 ifTrue: [
            recoveredBlock41Stack1 := self.
            recoveredBlock41PC := 114.
        ].
        recoveredBlock41Step = 114 ifTrue: [
            recoveredBlock41Stack2 := recoveredArg2.
            recoveredBlock41PC := 117.
        ].
        recoveredBlock41Step = 117 ifTrue: [
            recoveredBlock41Stack1 := (recoveredBlock41Stack1) loadNextInSetProxy: (recoveredBlock41Stack2).
            recoveredBlock41PC := 119.
        ].
        recoveredBlock41Step = 119 ifTrue: [
            recoveredBlock41Stack2 := recoveredBlock41Stack1.
            recoveredBlock41PC := 120.
        ].
        recoveredBlock41Step = 120 ifTrue: [
            recoveredBlock41Local1 := recoveredBlock41Stack2.
            recoveredBlock41PC := 121.
        ].
        recoveredBlock41Step = 121 ifTrue: [
            recoveredBlock41Stack1 := (recoveredBlock41Stack1) isError.
            recoveredBlock41PC := 122.
        ].
        recoveredBlock41Step = 122 ifTrue: [
            (recoveredBlock41Stack1) ifTrue: [recoveredBlock41PC := 124] ifFalse: [recoveredBlock41PC := 88].
        ].
        recoveredBlock41Step = 124 ifTrue: [
            recoveredBlock41Stack1 := nil.
            recoveredBlock41PC := 125.
        ].
        recoveredBlock41Step = 125 ifTrue: [
            recoveredBlock41Result := recoveredBlock41Stack1.
            recoveredBlock41Done := true.
        ].
    ].
    recoveredBlock41Result
].
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            (recoveredStack0) execLongOperation: (recoveredStack1).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20492df8; bytecode file offset 0xd8f6d4"
!DBReferenceInterface32 methodsFor: 'recovered'!
allAttributeSetObjectsSpecialDo: recoveredArg1 forSet: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'call_89333'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) getSetSize: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 131].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := [:recoveredBlock29Arg1 | 
    | recoveredBlock29Value0 recoveredBlock29Value1 recoveredBlock29Value2 |
    recoveredBlock29Value0 := recoveredLocal2.
    recoveredBlock29Value1 := recoveredLocal3.
    recoveredBlock29Value2 := (recoveredBlock29Value0) / (recoveredBlock29Value1).
    recoveredBlock29Value2
].
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            progressBlock := recoveredStack0.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) loadFirstInSetProxy: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 131] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) operationCancel.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) operationCancel: (recoveredStack1).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := 1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredPC := 117.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := (recoveredStack0) operationCancel.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 104] ifFalse: [recoveredPC := 110].
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack0) operationCancel: (recoveredStack1).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := (recoveredStack0) loadNextInSetProxy: (recoveredStack1).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 131] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204eaa88; bytecode file offset 0xde73d0"
!DBReferenceInterface32 methodsFor: 'recovered'!
createLocalDatabase
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) emptyCache: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOpen.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := [:block28109198Arg1 | 
    | block28109198Value0 block28109198Value1 |
    block28109198Value0 := block28109198Arg1.
    block28109198Value1 := (block28109198Value0) reinit.
    block28109198Value1
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) doWithInterfaces: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) initializeState.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDiskSpace.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkRequiredSpace: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := CfsStat.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) location.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) stat: (recoveredStack1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 67].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := DBErrorCouldNotCreateDatabase.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := (recoveredStack2) location.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) errorObject: (recoveredStack1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) showError: (recoveredStack1).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := DBError.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := DBNotEnoughDiskSpace.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack3 := (recoveredStack3) driveRoot.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack4 := 'CreateDatabase'.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) create: (recoveredStack2).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) showError: (recoveredStack1).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack0) lowDiskSpaceWarning.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := (recoveredStack0) existsFiles.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 94] ifFalse: [recoveredPC := 112].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := DBError.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := DBErrorDatabaseAlreadyExists.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := (recoveredStack2) location.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := 'Use OpenDatabase'.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := (recoveredStack0) create: (recoveredStack1) advice: (recoveredStack2).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredPC := 126.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := (recoveredStack0) createObjectFile.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 126] ifFalse: [recoveredPC := 122].
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := (recoveredStack0) createReferenceFile.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 132] ifFalse: [recoveredPC := 153].
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            (recoveredStack0) closeOnlyLocalDatabase.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCTError.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 142] ifFalse: [recoveredPC := 148].
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := (recoveredStack1) checkFiles.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            (recoveredStack0) subErrors: (recoveredStack1).
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := (recoveredStack0) showError: (recoveredStack1).
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            (recoveredStack0) saveConfiguration.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            (recoveredStack0) loadSpecialObjects.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            (recoveredStack0) closeLocalDatabase.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack0 := (recoveredStack0) openLocalDatabase.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205203a4; bytecode file offset 0xe1ccc4"
!DBReferenceInterface32 methodsFor: 'recovered'!
deleteAll: recoveredArg1 progressWindow: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := objectCache.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) clearKeyCacheValid.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 512.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) changeToSingleUser.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock23Value0 recoveredBlock23Value1 recoveredBlock23Value2 |
    recoveredBlock23Value0 := recoveredArg1.
    recoveredBlock23Value1 := [:recoveredBlock23Block33Arg1 :recoveredBlock23Block33Arg2 | 
    | recoveredBlock23Block33Value0 recoveredBlock23Block33Value1 recoveredBlock23Block33Value2 |
    recoveredBlock23Block33Value0 := statistics.
    (recoveredBlock23Block33Value0) incDelete.
    recoveredBlock23Block33Value1 := [
    | recoveredBlock23Block33Block44Local1 recoveredBlock23Block33Block44Stack0 recoveredBlock23Block33Block44Stack1 recoveredBlock23Block33Block44Stack2 recoveredBlock23Block33Block44PC recoveredBlock23Block33Block44Step recoveredBlock23Block33Block44Done recoveredBlock23Block33Block44Result |
    recoveredBlock23Block33Block44Stack0 := self.
    recoveredBlock23Block33Block44PC := 50.
    recoveredBlock23Block33Block44Done := false.
    [recoveredBlock23Block33Block44Done not] whileTrue: [
        recoveredBlock23Block33Block44Step := recoveredBlock23Block33Block44PC.
        recoveredBlock23Block33Block44Step = 50 ifTrue: [
            recoveredBlock23Block33Block44Stack1 := recoveredBlock23Block33Arg1.
            recoveredBlock23Block33Block44PC := 53.
        ].
        recoveredBlock23Block33Block44Step = 53 ifTrue: [
            recoveredBlock23Block33Block44Stack0 := (recoveredBlock23Block33Block44Stack0) loadCache: (recoveredBlock23Block33Block44Stack1).
            recoveredBlock23Block33Block44PC := 55.
        ].
        recoveredBlock23Block33Block44Step = 55 ifTrue: [
            recoveredBlock23Block33Block44Stack1 := recoveredBlock23Block33Block44Stack0.
            recoveredBlock23Block33Block44PC := 56.
        ].
        recoveredBlock23Block33Block44Step = 56 ifTrue: [
            recoveredLocal1 := recoveredBlock23Block33Block44Stack1.
            recoveredBlock23Block33Block44PC := 59.
        ].
        recoveredBlock23Block33Block44Step = 59 ifTrue: [
            (recoveredBlock23Block33Block44Stack0 == nil) ifTrue: [recoveredBlock23Block33Block44PC := 76] ifFalse: [recoveredBlock23Block33Block44PC := 62].
        ].
        recoveredBlock23Block33Block44Step = 62 ifTrue: [
            recoveredBlock23Block33Block44Stack0 := recoveredLocal1.
            recoveredBlock23Block33Block44PC := 65.
        ].
        recoveredBlock23Block33Block44Step = 65 ifTrue: [
            recoveredBlock23Block33Block44Stack0 := (recoveredBlock23Block33Block44Stack0) object.
            recoveredBlock23Block33Block44PC := 67.
        ].
        recoveredBlock23Block33Block44Step = 67 ifTrue: [
            recoveredBlock23Block33Block44Stack1 := self.
            recoveredBlock23Block33Block44PC := 68.
        ].
        recoveredBlock23Block33Block44Step = 68 ifTrue: [
            (recoveredBlock23Block33Block44Stack0) preDelete: (recoveredBlock23Block33Block44Stack1).
            recoveredBlock23Block33Block44PC := 70.
        ].
        recoveredBlock23Block33Block44Step = 70 ifTrue: [
            recoveredBlock23Block33Block44Stack0 := self.
            recoveredBlock23Block33Block44PC := 71.
        ].
        recoveredBlock23Block33Block44Step = 71 ifTrue: [
            recoveredBlock23Block33Block44Stack1 := recoveredBlock23Block33Arg1.
            recoveredBlock23Block33Block44PC := 74.
        ].
        recoveredBlock23Block33Block44Step = 74 ifTrue: [
            (recoveredBlock23Block33Block44Stack0) removeFromCache: (recoveredBlock23Block33Block44Stack1).
            recoveredBlock23Block33Block44PC := 76.
        ].
        recoveredBlock23Block33Block44Step = 76 ifTrue: [
            recoveredBlock23Block33Block44Stack0 := self.
            recoveredBlock23Block33Block44PC := 77.
        ].
        recoveredBlock23Block33Block44Step = 77 ifTrue: [
            recoveredBlock23Block33Block44Stack1 := recoveredBlock23Block33Arg1.
            recoveredBlock23Block33Block44PC := 80.
        ].
        recoveredBlock23Block33Block44Step = 80 ifTrue: [
            recoveredBlock23Block33Block44Stack0 := (recoveredBlock23Block33Block44Stack0) getInterfaceForProxy: (recoveredBlock23Block33Block44Stack1).
            recoveredBlock23Block33Block44PC := 82.
        ].
        recoveredBlock23Block33Block44Step = 82 ifTrue: [
            recoveredBlock23Block33Block44Stack1 := recoveredBlock23Block33Arg1.
            recoveredBlock23Block33Block44PC := 85.
        ].
        recoveredBlock23Block33Block44Step = 85 ifTrue: [
            recoveredBlock23Block33Block44Stack0 := (recoveredBlock23Block33Block44Stack0) deleteRecord: (recoveredBlock23Block33Block44Stack1).
            recoveredBlock23Block33Block44PC := 87.
        ].
        recoveredBlock23Block33Block44Step = 87 ifTrue: [
            recoveredLocal1 := recoveredBlock23Block33Block44Stack0.
            recoveredBlock23Block33Block44PC := 90.
        ].
        recoveredBlock23Block33Block44Step = 90 ifTrue: [
            recoveredBlock23Block33Block44Stack0 := recoveredBlock23Block33Arg1.
            recoveredBlock23Block33Block44PC := 93.
        ].
        recoveredBlock23Block33Block44Step = 93 ifTrue: [
            recoveredBlock23Block33Block44Stack0 := (recoveredBlock23Block33Block44Stack0) readReferencesOnly.
            recoveredBlock23Block33Block44PC := 95.
        ].
        recoveredBlock23Block33Block44Step = 95 ifTrue: [
            recoveredBlock23Block33Block44Stack1 := recoveredBlock23Block33Block44Stack0.
            recoveredBlock23Block33Block44PC := 96.
        ].
        recoveredBlock23Block33Block44Step = 96 ifTrue: [
            recoveredBlock23Block33Block44Local1 := recoveredBlock23Block33Block44Stack1.
            recoveredBlock23Block33Block44PC := 97.
        ].
        recoveredBlock23Block33Block44Step = 97 ifTrue: [
            recoveredBlock23Block33Block44Stack0 := (recoveredBlock23Block33Block44Stack0) isError.
            recoveredBlock23Block33Block44PC := 99.
        ].
        recoveredBlock23Block33Block44Step = 99 ifTrue: [
            (recoveredBlock23Block33Block44Stack0) ifTrue: [recoveredBlock23Block33Block44PC := 116] ifFalse: [recoveredBlock23Block33Block44PC := 102].
        ].
        recoveredBlock23Block33Block44Step = 102 ifTrue: [
            recoveredBlock23Block33Block44Stack0 := recoveredBlock23Block33Arg1.
            recoveredBlock23Block33Block44PC := 105.
        ].
        recoveredBlock23Block33Block44Step = 105 ifTrue: [
            recoveredBlock23Block33Block44Stack0 := (recoveredBlock23Block33Block44Stack0) asDBReferenceLinkProxy.
            recoveredBlock23Block33Block44PC := 107.
        ].
        recoveredBlock23Block33Block44Step = 107 ifTrue: [
            recoveredBlock23Block33Block44Stack1 := recoveredBlock23Block33Block44Local1.
            recoveredBlock23Block33Block44PC := 108.
        ].
        recoveredBlock23Block33Block44Step = 108 ifTrue: [
            (recoveredBlock23Block33Block44Stack0) updateRemovedReferences: (recoveredBlock23Block33Block44Stack1).
            recoveredBlock23Block33Block44PC := 110.
        ].
        recoveredBlock23Block33Block44Step = 110 ifTrue: [
            recoveredBlock23Block33Block44Stack0 := self.
            recoveredBlock23Block33Block44PC := 111.
        ].
        recoveredBlock23Block33Block44Step = 111 ifTrue: [
            recoveredBlock23Block33Block44Stack1 := recoveredBlock23Block33Arg1.
            recoveredBlock23Block33Block44PC := 114.
        ].
        recoveredBlock23Block33Block44Step = 114 ifTrue: [
            (recoveredBlock23Block33Block44Stack0) deleteAttributes: (recoveredBlock23Block33Block44Stack1).
            recoveredBlock23Block33Block44PC := 116.
        ].
        recoveredBlock23Block33Block44Step = 116 ifTrue: [
            recoveredBlock23Block33Block44Stack0 := 'Kli'.
            recoveredBlock23Block33Block44PC := 118.
        ].
        recoveredBlock23Block33Block44Step = 118 ifTrue: [
            recoveredBlock23Block33Block44Stack1 := 'Call_2010404151'.
            recoveredBlock23Block33Block44PC := 120.
        ].
        recoveredBlock23Block33Block44Step = 120 ifTrue: [
            recoveredBlock23Block33Block44Stack0 := (recoveredBlock23Block33Block44Stack0) == (recoveredBlock23Block33Block44Stack1).
            recoveredBlock23Block33Block44PC := 121.
        ].
        recoveredBlock23Block33Block44Step = 121 ifTrue: [
            recoveredBlock23Block33Block44PC := 122.
        ].
        recoveredBlock23Block33Block44Step = 122 ifTrue: [
            recoveredBlock23Block33Block44Stack0 := ASDAscetController.
            recoveredBlock23Block33Block44PC := 124.
        ].
        recoveredBlock23Block33Block44Step = 124 ifTrue: [
            recoveredBlock23Block33Block44Stack0 := (recoveredBlock23Block33Block44Stack0) isSCMActive.
            recoveredBlock23Block33Block44PC := 126.
        ].
        recoveredBlock23Block33Block44Step = 126 ifTrue: [
            (recoveredBlock23Block33Block44Stack0) ifTrue: [recoveredBlock23Block33Block44PC := 130] ifFalse: [recoveredBlock23Block33Block44PC := 136].
        ].
        recoveredBlock23Block33Block44Step = 130 ifTrue: [
            recoveredBlock23Block33Block44Stack0 := self.
            recoveredBlock23Block33Block44PC := 131.
        ].
        recoveredBlock23Block33Block44Step = 131 ifTrue: [
            recoveredBlock23Block33Block44Stack1 := recoveredBlock23Block33Arg1.
            recoveredBlock23Block33Block44PC := 134.
        ].
        recoveredBlock23Block33Block44Step = 134 ifTrue: [
            (recoveredBlock23Block33Block44Stack0) scmDeleteWorkspaceEntryFor: (recoveredBlock23Block33Block44Stack1).
            recoveredBlock23Block33Block44PC := 136.
        ].
        recoveredBlock23Block33Block44Step = 136 ifTrue: [
            recoveredBlock23Block33Block44Stack0 := recoveredArg2.
            recoveredBlock23Block33Block44PC := 139.
        ].
        recoveredBlock23Block33Block44Step = 139 ifTrue: [
            recoveredBlock23Block33Block44Stack1 := [:recoveredBlock23Block33Block44Block139Arg1 | 
    | recoveredBlock23Block33Block44Block139Value0 recoveredBlock23Block33Block44Block139Value1 recoveredBlock23Block33Block44Block139Value2 recoveredBlock23Block33Block44Block139Value3 recoveredBlock23Block33Block44Block139Value4 recoveredBlock23Block33Block44Block139Value5 |
    recoveredBlock23Block33Block44Block139Value0 := recoveredBlock23Block33Block44Block139Arg1.
    recoveredBlock23Block33Block44Block139Value1 := recoveredBlock23Block33Arg2.
    recoveredBlock23Block33Block44Block139Value2 := recoveredArg1.
    recoveredBlock23Block33Block44Block139Value3 := (recoveredBlock23Block33Block44Block139Value2) size.
    recoveredBlock23Block33Block44Block139Value4 := (recoveredBlock23Block33Block44Block139Value1) / (recoveredBlock23Block33Block44Block139Value3).
    recoveredBlock23Block33Block44Block139Value5 := (recoveredBlock23Block33Block44Block139Value0) fractionComplete: (recoveredBlock23Block33Block44Block139Value4).
    recoveredBlock23Block33Block44Block139Value5
].
            recoveredBlock23Block33Block44PC := 159.
        ].
        recoveredBlock23Block33Block44Step = 159 ifTrue: [
            recoveredBlock23Block33Block44Stack0 := (recoveredBlock23Block33Block44Stack0) ifNotNil: (recoveredBlock23Block33Block44Stack1).
            recoveredBlock23Block33Block44PC := 161.
        ].
        recoveredBlock23Block33Block44Step = 161 ifTrue: [
            recoveredBlock23Block33Block44Result := recoveredBlock23Block33Block44Stack0.
            recoveredBlock23Block33Block44Done := true.
        ].
    ].
    recoveredBlock23Block33Block44Result
].
    recoveredBlock23Block33Value2 := (recoveredBlock23Block33Value1) ctCritical.
    recoveredBlock23Block33Value2
].
    recoveredBlock23Value2 := (recoveredBlock23Value0) doWithIndex: (recoveredBlock23Value1).
    recoveredBlock23Value2
].
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock168Stack0 recoveredBlock168Stack1 recoveredBlock168Stack2 recoveredBlock168Stack3 recoveredBlock168Stack4 recoveredBlock168PC recoveredBlock168Step recoveredBlock168Done recoveredBlock168Result |
    recoveredBlock168Stack0 := self.
    recoveredBlock168PC := 174.
    recoveredBlock168Done := false.
    [recoveredBlock168Done not] whileTrue: [
        recoveredBlock168Step := recoveredBlock168PC.
        recoveredBlock168Step = 174 ifTrue: [
            recoveredBlock168Stack1 := nil.
            recoveredBlock168PC := 175.
        ].
        recoveredBlock168Step = 175 ifTrue: [
            recoveredBlock168Stack2 := recoveredArg1.
            recoveredBlock168PC := 178.
        ].
        recoveredBlock168Step = 178 ifTrue: [
            recoveredBlock168Stack2 := (recoveredBlock168Stack2) size.
            recoveredBlock168PC := 179.
        ].
        recoveredBlock168Step = 179 ifTrue: [
            recoveredBlock168Stack3 := 512.
            recoveredBlock168PC := 182.
        ].
        recoveredBlock168Step = 182 ifTrue: [
            recoveredBlock168Stack2 := (recoveredBlock168Stack2) > (recoveredBlock168Stack3).
            recoveredBlock168PC := 183.
        ].
        recoveredBlock168Step = 183 ifTrue: [
            (recoveredBlock168Stack2) ifTrue: [recoveredBlock168PC := 186] ifFalse: [recoveredBlock168PC := 190].
        ].
        recoveredBlock168Step = 186 ifTrue: [
            recoveredBlock168PC := 187.
        ].
        recoveredBlock168Step = 187 ifTrue: [
            recoveredBlock168Stack1 := self.
            recoveredBlock168PC := 188.
        ].
        recoveredBlock168Step = 188 ifTrue: [
            recoveredBlock168Stack1 := (recoveredBlock168Stack1) changeToLocalMultiUser.
            recoveredBlock168PC := 190.
        ].
        recoveredBlock168Step = 190 ifTrue: [
            recoveredBlock168Result := recoveredBlock168Stack1.
            recoveredBlock168Done := true.
        ].
    ].
    recoveredBlock168Result
].
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            (recoveredStack1) ensure: (recoveredStack2).
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20529d38; bytecode file offset 0xe26648"
!DBReferenceInterface32 methodsFor: 'recovered'!
internalRestoreBackReferencesProgressWindow: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 |
    recoveredValue0 := ('hw') == ('call_89333').
    recoveredValue1 := (self) uniqueKey.
    recoveredValue2 := (self) loadFirstProxy: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) asDBReferencedByLinkProxy.
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := DBAttributeKey.
    recoveredValue5 := (recoveredValue4) create.
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := recoveredLocal2.
    (recoveredValue6) setKeyValue: (recoveredValue7).
    recoveredValue8 := [:recoveredBlock34Arg1 | 
    | recoveredBlock34Stack0 recoveredBlock34Stack1 recoveredBlock34Stack2 recoveredBlock34Stack3 recoveredBlock34PC recoveredBlock34Step recoveredBlock34Done recoveredBlock34Result |
    recoveredBlock34Stack0 := self.
    recoveredBlock34PC := 40.
    recoveredBlock34Done := false.
    [recoveredBlock34Done not] whileTrue: [
        recoveredBlock34Step := recoveredBlock34PC.
        recoveredBlock34Step = 40 ifTrue: [
            recoveredBlock34Stack1 := [
    | block2810cc60Value0 block2810cc60Value1 block2810cc60Value2 |
    block2810cc60Value0 := CwAppContext.
    block2810cc60Value1 := (block2810cc60Value0) default.
    block2810cc60Value2 := (block2810cc60Value1) readAndDispatch.
    block2810cc60Value2
].
            recoveredBlock34PC := 42.
        ].
        recoveredBlock34Step = 42 ifTrue: [
            recoveredBlock34PC := 53.
        ].
        recoveredBlock34Step = 53 ifTrue: [
            (recoveredBlock34Stack1) whileTrue.
            recoveredBlock34PC := 55.
        ].
        recoveredBlock34Step = 55 ifTrue: [
            recoveredBlock34Stack1 := recoveredBlock34Arg1.
            recoveredBlock34PC := 56.
        ].
        recoveredBlock34Step = 56 ifTrue: [
            (recoveredBlock34Stack1) delete.
            recoveredBlock34PC := 58.
        ].
        recoveredBlock34Step = 58 ifTrue: [
            recoveredBlock34Stack1 := recoveredArg1.
            recoveredBlock34PC := 61.
        ].
        recoveredBlock34Step = 61 ifTrue: [
            recoveredBlock34Stack2 := [:recoveredBlock34Block61Arg1 | 
    | recoveredBlock34Block61Stack0 recoveredBlock34Block61Stack1 recoveredBlock34Block61Stack2 recoveredBlock34Block61Stack3 recoveredBlock34Block61Stack4 recoveredBlock34Block61PC recoveredBlock34Block61Step recoveredBlock34Block61Done recoveredBlock34Block61Result |
    recoveredBlock34Block61Stack0 := self.
    recoveredBlock34Block61PC := 68.
    recoveredBlock34Block61Done := false.
    [recoveredBlock34Block61Done not] whileTrue: [
        recoveredBlock34Block61Step := recoveredBlock34Block61PC.
        recoveredBlock34Block61Step = 68 ifTrue: [
            recoveredBlock34Block61Stack1 := recoveredBlock34Block61Arg1.
            recoveredBlock34Block61PC := 69.
        ].
        recoveredBlock34Block61Step = 69 ifTrue: [
            recoveredBlock34Block61Stack1 := (recoveredBlock34Block61Stack1) cancelled.
            recoveredBlock34Block61PC := 71.
        ].
        recoveredBlock34Block61Step = 71 ifTrue: [
            (recoveredBlock34Block61Stack1) ifTrue: [recoveredBlock34Block61PC := 74] ifFalse: [recoveredBlock34Block61PC := 76].
        ].
        recoveredBlock34Block61Step = 74 ifTrue: [
            recoveredBlock34Block61Stack1 := nil.
            recoveredBlock34Block61PC := 75.
        ].
        recoveredBlock34Block61Step = 75 ifTrue: [
            ^recoveredBlock34Block61Stack1
        ].
        recoveredBlock34Block61Step = 76 ifTrue: [
            recoveredBlock34Block61Stack1 := recoveredBlock34Block61Arg1.
            recoveredBlock34Block61PC := 77.
        ].
        recoveredBlock34Block61Step = 77 ifTrue: [
            recoveredBlock34Block61Stack2 := self.
            recoveredBlock34Block61PC := 78.
        ].
        recoveredBlock34Block61Step = 78 ifTrue: [
            recoveredBlock34Block61Stack3 := 1.
            recoveredBlock34Block61PC := 80.
        ].
        recoveredBlock34Block61Step = 80 ifTrue: [
            recoveredBlock34Block61Stack2 := (recoveredBlock34Block61Stack2) showProgress: (recoveredBlock34Block61Stack3).
            recoveredBlock34Block61PC := 82.
        ].
        recoveredBlock34Block61Step = 82 ifTrue: [
            recoveredBlock34Block61Stack3 := 1.
            recoveredBlock34Block61PC := 84.
        ].
        recoveredBlock34Block61Step = 84 ifTrue: [
            recoveredBlock34Block61Stack2 := (recoveredBlock34Block61Stack2) * (recoveredBlock34Block61Stack3).
            recoveredBlock34Block61PC := 85.
        ].
        recoveredBlock34Block61Step = 85 ifTrue: [
            recoveredBlock34Block61Stack3 := 2.
            recoveredBlock34Block61PC := 87.
        ].
        recoveredBlock34Block61Step = 87 ifTrue: [
            recoveredBlock34Block61Stack2 := (recoveredBlock34Block61Stack2) / (recoveredBlock34Block61Stack3).
            recoveredBlock34Block61PC := 89.
        ].
        recoveredBlock34Block61Step = 89 ifTrue: [
            recoveredBlock34Block61Stack1 := (recoveredBlock34Block61Stack1) fractionComplete: (recoveredBlock34Block61Stack2).
            recoveredBlock34Block61PC := 91.
        ].
        recoveredBlock34Block61Step = 91 ifTrue: [
            recoveredBlock34Block61Result := recoveredBlock34Block61Stack1.
            recoveredBlock34Block61Done := true.
        ].
    ].
    recoveredBlock34Block61Result
].
            recoveredBlock34PC := 92.
        ].
        recoveredBlock34Step = 92 ifTrue: [
            recoveredBlock34Stack1 := (recoveredBlock34Stack1) ifNotNil: (recoveredBlock34Stack2).
            recoveredBlock34PC := 94.
        ].
        recoveredBlock34Step = 94 ifTrue: [
            recoveredBlock34Result := recoveredBlock34Stack1.
            recoveredBlock34Done := true.
        ].
    ].
    recoveredBlock34Result
].
    recoveredValue9 := recoveredLocal1.
    (self) allAttributeSetObjectsSpecialDo: (recoveredValue8) forSet: (recoveredValue9).
    recoveredValue10 := (self) uniqueKey.
    recoveredValue11 := (self) loadFirstProxy: (recoveredValue10).
    recoveredValue12 := (recoveredValue11) asDBReferenceLinkProxy.
    recoveredLocal2 := recoveredValue12.
    recoveredValue13 := DBAttributeKey.
    recoveredValue14 := (recoveredValue13) create.
    recoveredLocal1 := recoveredValue14.
    recoveredValue15 := recoveredLocal1.
    recoveredValue16 := recoveredLocal2.
    (recoveredValue15) setKeyValue: (recoveredValue16).
    recoveredValue17 := [:recoveredBlock125Arg1 | 
    | recoveredBlock125Stack0 recoveredBlock125Stack1 recoveredBlock125Stack2 recoveredBlock125Stack3 recoveredBlock125PC recoveredBlock125Step recoveredBlock125Done recoveredBlock125Result |
    recoveredBlock125Stack0 := self.
    recoveredBlock125PC := 132.
    recoveredBlock125Done := false.
    [recoveredBlock125Done not] whileTrue: [
        recoveredBlock125Step := recoveredBlock125PC.
        recoveredBlock125Step = 132 ifTrue: [
            recoveredBlock125Stack1 := [
    | block2810cc84Value0 block2810cc84Value1 block2810cc84Value2 |
    block2810cc84Value0 := CwAppContext.
    block2810cc84Value1 := (block2810cc84Value0) default.
    block2810cc84Value2 := (block2810cc84Value1) readAndDispatch.
    block2810cc84Value2
].
            recoveredBlock125PC := 134.
        ].
        recoveredBlock125Step = 134 ifTrue: [
            recoveredBlock125PC := 145.
        ].
        recoveredBlock125Step = 145 ifTrue: [
            (recoveredBlock125Stack1) whileTrue.
            recoveredBlock125PC := 147.
        ].
        recoveredBlock125Step = 147 ifTrue: [
            recoveredBlock125Stack1 := recoveredBlock125Arg1.
            recoveredBlock125PC := 148.
        ].
        recoveredBlock125Step = 148 ifTrue: [
            (recoveredBlock125Stack1) restoreBackReferences.
            recoveredBlock125PC := 150.
        ].
        recoveredBlock125Step = 150 ifTrue: [
            recoveredBlock125Stack1 := recoveredArg1.
            recoveredBlock125PC := 153.
        ].
        recoveredBlock125Step = 153 ifTrue: [
            recoveredBlock125Stack2 := [:recoveredBlock125Block153Arg1 | 
    | recoveredBlock125Block153Stack0 recoveredBlock125Block153Stack1 recoveredBlock125Block153Stack2 recoveredBlock125Block153Stack3 recoveredBlock125Block153Stack4 recoveredBlock125Block153PC recoveredBlock125Block153Step recoveredBlock125Block153Done recoveredBlock125Block153Result |
    recoveredBlock125Block153Stack0 := self.
    recoveredBlock125Block153PC := 160.
    recoveredBlock125Block153Done := false.
    [recoveredBlock125Block153Done not] whileTrue: [
        recoveredBlock125Block153Step := recoveredBlock125Block153PC.
        recoveredBlock125Block153Step = 160 ifTrue: [
            recoveredBlock125Block153Stack1 := recoveredBlock125Block153Arg1.
            recoveredBlock125Block153PC := 161.
        ].
        recoveredBlock125Block153Step = 161 ifTrue: [
            recoveredBlock125Block153Stack1 := (recoveredBlock125Block153Stack1) cancelled.
            recoveredBlock125Block153PC := 163.
        ].
        recoveredBlock125Block153Step = 163 ifTrue: [
            (recoveredBlock125Block153Stack1) ifTrue: [recoveredBlock125Block153PC := 166] ifFalse: [recoveredBlock125Block153PC := 168].
        ].
        recoveredBlock125Block153Step = 166 ifTrue: [
            recoveredBlock125Block153Stack1 := nil.
            recoveredBlock125Block153PC := 167.
        ].
        recoveredBlock125Block153Step = 167 ifTrue: [
            ^recoveredBlock125Block153Stack1
        ].
        recoveredBlock125Block153Step = 168 ifTrue: [
            recoveredBlock125Block153Stack1 := recoveredBlock125Block153Arg1.
            recoveredBlock125Block153PC := 169.
        ].
        recoveredBlock125Block153Step = 169 ifTrue: [
            recoveredBlock125Block153Stack2 := self.
            recoveredBlock125Block153PC := 170.
        ].
        recoveredBlock125Block153Step = 170 ifTrue: [
            recoveredBlock125Block153Stack3 := 1.
            recoveredBlock125Block153PC := 172.
        ].
        recoveredBlock125Block153Step = 172 ifTrue: [
            recoveredBlock125Block153Stack2 := (recoveredBlock125Block153Stack2) showProgress: (recoveredBlock125Block153Stack3).
            recoveredBlock125Block153PC := 174.
        ].
        recoveredBlock125Block153Step = 174 ifTrue: [
            recoveredBlock125Block153Stack3 := 1.
            recoveredBlock125Block153PC := 176.
        ].
        recoveredBlock125Block153Step = 176 ifTrue: [
            recoveredBlock125Block153Stack2 := (recoveredBlock125Block153Stack2) * (recoveredBlock125Block153Stack3).
            recoveredBlock125Block153PC := 177.
        ].
        recoveredBlock125Block153Step = 177 ifTrue: [
            recoveredBlock125Block153Stack3 := 2.
            recoveredBlock125Block153PC := 179.
        ].
        recoveredBlock125Block153Step = 179 ifTrue: [
            recoveredBlock125Block153Stack2 := (recoveredBlock125Block153Stack2) / (recoveredBlock125Block153Stack3).
            recoveredBlock125Block153PC := 181.
        ].
        recoveredBlock125Block153Step = 181 ifTrue: [
            recoveredBlock125Block153Stack2 := (recoveredBlock125Block153Stack2) + (1).
            recoveredBlock125Block153PC := 182.
        ].
        recoveredBlock125Block153Step = 182 ifTrue: [
            recoveredBlock125Block153Stack3 := 2.
            recoveredBlock125Block153PC := 184.
        ].
        recoveredBlock125Block153Step = 184 ifTrue: [
            recoveredBlock125Block153Stack2 := (recoveredBlock125Block153Stack2) / (recoveredBlock125Block153Stack3).
            recoveredBlock125Block153PC := 186.
        ].
        recoveredBlock125Block153Step = 186 ifTrue: [
            recoveredBlock125Block153Stack1 := (recoveredBlock125Block153Stack1) fractionComplete: (recoveredBlock125Block153Stack2).
            recoveredBlock125Block153PC := 188.
        ].
        recoveredBlock125Block153Step = 188 ifTrue: [
            recoveredBlock125Block153Result := recoveredBlock125Block153Stack1.
            recoveredBlock125Block153Done := true.
        ].
    ].
    recoveredBlock125Block153Result
].
            recoveredBlock125PC := 189.
        ].
        recoveredBlock125Step = 189 ifTrue: [
            recoveredBlock125Stack1 := (recoveredBlock125Stack1) ifNotNil: (recoveredBlock125Stack2).
            recoveredBlock125PC := 191.
        ].
        recoveredBlock125Step = 191 ifTrue: [
            recoveredBlock125Result := recoveredBlock125Stack1.
            recoveredBlock125Done := true.
        ].
    ].
    recoveredBlock125Result
].
    recoveredValue18 := recoveredLocal1.
    (self) allAttributeSetObjectsSpecialDo: (recoveredValue17) forSet: (recoveredValue18).
    ^self
! !

"ASDBase.ic method 0x205d9c98; bytecode file offset 0xed6634"
!DBReferenceInterface32 methodsFor: 'recovered'!
checkStartup
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := super checkStartup.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) initializeUser.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) loadConfiguration.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 363] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := UndefinedObject.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 363] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 104].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaces.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := [:block28119e78Arg1 | 
    | block28119e78Local1 block28119e78Stack0 block28119e78Stack1 block28119e78Stack2 block28119e78Stack3 block28119e78Stack4 block28119e78PC block28119e78Step block28119e78Done block28119e78Result |
    block28119e78Stack0 := self.
    block28119e78PC := 4.
    block28119e78Done := false.
    [block28119e78Done not] whileTrue: [
        block28119e78Step := block28119e78PC.
        block28119e78Step = 4 ifTrue: [
            block28119e78Stack1 := false.
            block28119e78PC := 5.
        ].
        block28119e78Step = 5 ifTrue: [
            block28119e78Stack2 := block28119e78Arg1.
            block28119e78PC := 6.
        ].
        block28119e78Step = 6 ifTrue: [
            block28119e78Stack2 := (block28119e78Stack2) allFiles.
            block28119e78PC := 8.
        ].
        block28119e78Step = 8 ifTrue: [
            block28119e78Stack2 := (block28119e78Stack2) firstOrNil.
            block28119e78PC := 10.
        ].
        block28119e78Step = 10 ifTrue: [
            block28119e78Stack3 := block28119e78Stack2.
            block28119e78PC := 11.
        ].
        block28119e78Step = 11 ifTrue: [
            block28119e78Local1 := block28119e78Stack3.
            block28119e78PC := 12.
        ].
        block28119e78Step = 12 ifTrue: [
            (block28119e78Stack2 == nil) ifTrue: [block28119e78PC := 22] ifFalse: [block28119e78PC := 16].
        ].
        block28119e78Step = 16 ifTrue: [
            block28119e78PC := 17.
        ].
        block28119e78Step = 17 ifTrue: [
            block28119e78Stack1 := ETASOSHandle.
            block28119e78PC := 19.
        ].
        block28119e78Step = 19 ifTrue: [
            block28119e78Stack2 := block28119e78Local1.
            block28119e78PC := 20.
        ].
        block28119e78Step = 20 ifTrue: [
            block28119e78Stack1 := (block28119e78Stack1) isOpen: (block28119e78Stack2).
            block28119e78PC := 22.
        ].
        block28119e78Step = 22 ifTrue: [
            block28119e78Result := block28119e78Stack1.
            block28119e78Done := true.
        ].
    ].
    block28119e78Result
].
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) allSatisfy: (recoveredStack1).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 101].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := WriteStream.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := (recoveredStack0) on: (recoveredStack1).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := DBAlreadyOpen.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := (recoveredStack2) databasePath.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := DBError.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := (recoveredStack1) contents.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := (recoveredStack0) create: (recoveredStack1).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 101 ifTrue: [
            recoveredPC := 161.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 161] ifFalse: [recoveredPC := 114].
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := (recoveredStack0) dbVersion.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 136] ifFalse: [recoveredPC := 124].
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := DBError.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := DBWrongDBVersion.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack2 := (recoveredStack2) location.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2).
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := (recoveredStack0) create: (recoveredStack1).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := WriteStream.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := (recoveredStack0) on: (recoveredStack1).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := DBErrorOpenDBFailed.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack2 := (recoveredStack2) databasePath.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2).
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack0 := DBError.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := (recoveredStack1) contents.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack0 := (recoveredStack0) create: (recoveredStack1).
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack0 := (recoveredStack0) dbVersion.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := 3.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 170] ifFalse: [recoveredPC := 173].
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            (recoveredStack0) etasDevHalt.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 363] ifFalse: [recoveredPC := 178].
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOpen.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 184] ifFalse: [recoveredPC := 344].
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack0 := ReadWriteStream.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkIfOpen.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 296] ifFalse: [recoveredPC := 196].
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack0 := errorController.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            (recoveredStack0) setLastSessionCrashed.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack0 := CTError.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            (recoveredStack0) setLastSessionCrashed.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack2 := DBErrorLastSessionCrashed.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack3 := (recoveredStack3) databasePath.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3).
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSingleUserMode.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 224] ifFalse: [recoveredPC := 232].
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack1 := DBAdivceRebuildRecommended.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredPC := 257.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack0 := (recoveredStack0) isWriteError.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 244] ifFalse: [recoveredPC := 238].
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack0 := (recoveredStack0) isReadError.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 244] ifFalse: [recoveredPC := 252].
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack1 := DBAdviceMustRebuild.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredPC := 257.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack1 := DBAdviceEventuallyRebuild.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack1 := DBMayTakeSomeTime.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack0 := SGMonitorStreamDummy.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack1 := (recoveredStack1) contents.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            (recoveredStack0) addText: (recoveredStack1).
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack0 := RBUserQuestion.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack0 := (recoveredStack0) confirm: (recoveredStack1).
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            (recoveredStack1) yesNo.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack0 := (recoveredStack0) promptInMainWindow.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 286] ifFalse: [recoveredPC := 294].
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            (recoveredStack0) restoreDoDa.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack0 := (recoveredStack0) rebuildLocalDatabase.
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack2 := DBAlreadyOpen.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack3 := (recoveredStack3) databasePath.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3).
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack2 := ' ('.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            recoveredStack2 := (recoveredStack2) user.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack2 := ' on '.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack2 := (recoveredStack2) hostName.
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack2 := ')'.
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack0 := DBError.
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            recoveredStack1 := (recoveredStack1) contents.
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            recoveredStack0 := (recoveredStack0) create: (recoveredStack1).
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 344 ifTrue: [
            recoveredStack0 := errorController.
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 357] ifFalse: [recoveredPC := 350].
        ].
        recoveredStep = 350 ifTrue: [
            recoveredStack0 := errorController.
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            (recoveredStack0) clearLastSessionCrashed.
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            recoveredStack0 := CTError.
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            (recoveredStack0) clearLastSessionCrashed.
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 364.
        ].
        recoveredStep = 364 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

