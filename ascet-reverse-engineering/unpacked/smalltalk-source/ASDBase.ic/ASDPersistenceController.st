"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200273b0; bytecode file offset 0x923d40"
!ASDPersistenceController methodsFor: 'recovered'!
openCurrentDataStorage
    | recoveredValue0 |
    recoveredValue0 := (self) openCurrentDataStorageNotify: (true).
    ^recoveredValue0
! !

"ASDBase.ic method 0x20027434; bytecode file offset 0x923d40"
!ASDPersistenceController methodsFor: 'recovered'!
closeDataStorage
    | recoveredValue0 |
    recoveredValue0 := (self) closeDataStorageNotify: (true).
    ^recoveredValue0
! !

"ASDBase.ic method 0x20027b2c; bytecode file offset 0x92454c"
!ASDPersistenceController methodsFor: 'recovered'!
supportsAutocommit
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) isWorkspaceMode.
    recoveredValue1 := (recoveredValue0) not.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20027c64; bytecode file offset 0x92454c"
!ASDPersistenceController methodsFor: 'recovered'!
supportsMaxSizeCheck
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) isWorkspaceMode.
    recoveredValue1 := (recoveredValue0) not.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20027c7c; bytecode file offset 0x92454c"
!ASDPersistenceController methodsFor: 'recovered'!
supportsFileSizeCheck
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) isWorkspaceMode.
    recoveredValue1 := (recoveredValue0) not.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20027c88; bytecode file offset 0x92454c"
!ASDPersistenceController methodsFor: 'recovered'!
versionCheckRequired
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) isWorkspaceMode.
    recoveredValue1 := (recoveredValue0) not.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20027ed4; bytecode file offset 0x934580"
!ASDPersistenceController methodsFor: 'recovered'!
errorController
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) internalLibraryLegacy.
    recoveredValue1 := (recoveredValue0) errorController.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20028044; bytecode file offset 0x934580"
!ASDPersistenceController methodsFor: 'recovered'!
iconName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) internalLibraryLegacy.
    recoveredValue1 := (recoveredValue0) iconName.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002ad44; bytecode file offset 0x934580"
!ASDPersistenceController methodsFor: 'recovered'!
interfaces
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) internalLibraryLegacy.
    recoveredValue1 := (recoveredValue0) interfaces.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002c0c4; bytecode file offset 0x934580"
!ASDPersistenceController methodsFor: 'recovered'!
signalPath
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) internalLibraryLegacy.
    recoveredValue1 := (recoveredValue0) signalPath.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002ce54; bytecode file offset 0x934580"
!ASDPersistenceController methodsFor: 'recovered'!
getNewDBProxy
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) internalLibraryLegacy.
    recoveredValue1 := (recoveredValue0) getNewDBProxy.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002e1a4; bytecode file offset 0x934580"
!ASDPersistenceController methodsFor: 'recovered'!
getNewOidBytes
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) internalLibraryLegacy.
    recoveredValue1 := (recoveredValue0) getNewOidBytes.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002ebb4; bytecode file offset 0x934580"
!ASDPersistenceController methodsFor: 'recovered'!
commit
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) internalLibraryLegacy.
    recoveredValue1 := (recoveredValue0) commit.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002efe4; bytecode file offset 0x934580"
!ASDPersistenceController methodsFor: 'recovered'!
lowDiskSpaceWarning
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) internalLibraryLegacy.
    recoveredValue1 := (recoveredValue0) lowDiskSpaceWarning.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002f184; bytecode file offset 0x934580"
!ASDPersistenceController methodsFor: 'recovered'!
isCommitted
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) internalLibraryLegacy.
    recoveredValue1 := (recoveredValue0) isCommitted.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002f5f4; bytecode file offset 0x934580"
!ASDPersistenceController methodsFor: 'recovered'!
defaultProjectManager
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) internalLibraryLegacy.
    recoveredValue1 := (recoveredValue0) internalDefaultProjectManager.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002ff54; bytecode file offset 0x934580"
!ASDPersistenceController methodsFor: 'recovered'!
location
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) internalLibraryLegacy.
    recoveredValue1 := (recoveredValue0) location.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20031c44; bytecode file offset 0x934580"
!ASDPersistenceController methodsFor: 'recovered'!
interfaceName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) internalLibraryLegacy.
    recoveredValue1 := (recoveredValue0) interfaceName.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20033644; bytecode file offset 0x934580"
!ASDPersistenceController methodsFor: 'recovered'!
deleteConfigFile
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) internalLibraryLegacy.
    recoveredValue1 := (recoveredValue0) deleteConfigFile.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20033af4; bytecode file offset 0x934580"
!ASDPersistenceController methodsFor: 'recovered'!
getDataBaseInfo
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) internalLibraryLegacy.
    recoveredValue1 := (recoveredValue0) getDataBaseInfo.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20034454; bytecode file offset 0x934580"
!ASDPersistenceController methodsFor: 'recovered'!
globalIdServer
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) internalLibraryLegacy.
    recoveredValue1 := (recoveredValue0) globalIdServer.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200344c4; bytecode file offset 0x934580"
!ASDPersistenceController methodsFor: 'recovered'!
objectCache
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) internalLibraryLegacy.
    recoveredValue1 := (recoveredValue0) objectCache.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20048a3c; bytecode file offset 0x9452f8"
!ASDPersistenceController methodsFor: 'recovered'!
unlockDataStorageChange
    lockDataStorageChange := false.
    ^self
! !

"ASDBase.ic method 0x2004a948; bytecode file offset 0x94721c"
!ASDPersistenceController methodsFor: 'recovered'!
lockDataStorageChange
    lockDataStorageChange := true.
    ^self
! !

"ASDBase.ic method 0x20050f40; bytecode file offset 0x94d84c"
!ASDPersistenceController methodsFor: 'recovered'!
startUpConfigTest
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) internalStartUpTest.
    recoveredValue1 := (recoveredValue0) isError.
    recoveredValue2 := (recoveredValue1) not.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20057758; bytecode file offset 0x956284"
!ASDPersistenceController methodsFor: 'recovered'!
queryForClassName: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) internalLibraryLegacy.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) queryForClassName: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200577d8; bytecode file offset 0x956284"
!ASDPersistenceController methodsFor: 'recovered'!
copyFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) internalLibraryLegacy.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) copyFor: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20057a58; bytecode file offset 0x956284"
!ASDPersistenceController methodsFor: 'recovered'!
makeProxy: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) internalLibraryLegacy.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) makeProxy: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20057c98; bytecode file offset 0x956284"
!ASDPersistenceController methodsFor: 'recovered'!
interfaceIsCurrentType: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) internalLibraryLegacy.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) isSameInterfaceType: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20057e18; bytecode file offset 0x956284"
!ASDPersistenceController methodsFor: 'recovered'!
writeRecord: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) internalLibraryLegacy.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) writeRecord: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20058168; bytecode file offset 0x956284"
!ASDPersistenceController methodsFor: 'recovered'!
disableCachingWhile: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) internalLibraryLegacy.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) disableCachingWhile: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200581e8; bytecode file offset 0x956284"
!ASDPersistenceController methodsFor: 'recovered'!
queryExactForName: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) internalLibraryLegacy.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) queryExactForName: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20058218; bytecode file offset 0x956284"
!ASDPersistenceController methodsFor: 'recovered'!
queryForName: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) internalLibraryLegacy.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) queryForName: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20058228; bytecode file offset 0x956284"
!ASDPersistenceController methodsFor: 'recovered'!
queriesForClassName: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) internalLibraryLegacy.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) queriesForClassName: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20058488; bytecode file offset 0x956284"
!ASDPersistenceController methodsFor: 'recovered'!
getOidBytesFromAlphaNumString: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) internalLibraryLegacy.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) getOidBytesFromAlphaNumString: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200584d8; bytecode file offset 0x956284"
!ASDPersistenceController methodsFor: 'recovered'!
stringFromBytes: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) internalLibraryLegacy.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) stringFromBytes: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20058918; bytecode file offset 0x956284"
!ASDPersistenceController methodsFor: 'recovered'!
queriesForFirstVersionId: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) internalLibraryLegacy.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) queriesForFirstVersionId: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20058a48; bytecode file offset 0x956284"
!ASDPersistenceController methodsFor: 'recovered'!
queryExactForClassNames: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) internalLibraryLegacy.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) queryExactForClassNames: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20058b48; bytecode file offset 0x956284"
!ASDPersistenceController methodsFor: 'recovered'!
queryExactForClassName: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) internalLibraryLegacy.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) queryExactForClassName: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20058f68; bytecode file offset 0x956284"
!ASDPersistenceController methodsFor: 'recovered'!
getNewDBProxyFromAlphaNumString: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) internalLibraryLegacy.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) getNewDBProxyFromAlphaNumString: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20058ff8; bytecode file offset 0x956284"
!ASDPersistenceController methodsFor: 'recovered'!
readRecord: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) internalLibraryLegacy.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) readRecord: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20059018; bytecode file offset 0x956284"
!ASDPersistenceController methodsFor: 'recovered'!
emptyCache: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) internalLibraryLegacy.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) emptyCache: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200592b8; bytecode file offset 0x956284"
!ASDPersistenceController methodsFor: 'recovered'!
getTimeStampFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) internalLibraryLegacy.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) getTimeStampFrom: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20059388; bytecode file offset 0x956284"
!ASDPersistenceController methodsFor: 'recovered'!
getNewDBProxy: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) internalLibraryLegacy.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) getNewDBProxy: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20059408; bytecode file offset 0x956284"
!ASDPersistenceController methodsFor: 'recovered'!
queryExactFullNameForName: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) internalLibraryLegacy.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) queryExactFullNameForName: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005bbfc; bytecode file offset 0x958548"
!ASDPersistenceController methodsFor: 'recovered'!
exportController
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := DBExImportController.
    recoveredValue1 := (recoveredValue0) create: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20063d24; bytecode file offset 0x961970"
!ASDPersistenceController methodsFor: 'recovered'!
clearWriteError
    | recoveredValue0 |
    recoveredValue0 := (self) internalLibraryLegacy.
    (recoveredValue0) clearWriteError.
    ^self
! !

"ASDBase.ic method 0x20065dd4; bytecode file offset 0x963428"
!ASDPersistenceController methodsFor: 'recovered'!
callbackList
    | recoveredValue0 |
    recoveredValue0 := callbackList.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20083780; bytecode file offset 0x980230"
!ASDPersistenceController methodsFor: 'recovered'!
saveAs: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) saveAs: (recoveredValue0) progressWindow: (nil).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20092170; bytecode file offset 0x98ea2c"
!ASDPersistenceController methodsFor: 'recovered'!
internalPathIsWorkspace: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := CfsStat.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) isDirectory: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) not.
    ^recoveredValue3
! !

"ASDBase.ic method 0x20098444; bytecode file offset 0x995850"
!ASDPersistenceController methodsFor: 'recovered'!
showCreation: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) internalLibraryLegacy.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) showCreation: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20099d78; bytecode file offset 0x997194"
!ASDPersistenceController methodsFor: 'recovered'!
deleteAll: recoveredArg1 progressWindow: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) internalLibraryLegacy.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) deleteAll: (recoveredValue1) progressWindow: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2009a698; bytecode file offset 0x997194"
!ASDPersistenceController methodsFor: 'recovered'!
makeObject: recoveredArg1 data: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) internalLibraryLegacy.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) makeObject: (recoveredValue1) data: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2009a768; bytecode file offset 0x997194"
!ASDPersistenceController methodsFor: 'recovered'!
writeModifiedToDatabaseShowProgressOn: recoveredArg1 maxObjects: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) internalLibraryLegacy.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) writeModifiedToDatabaseShowProgressOn: (recoveredValue1) maxObjects: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200adfbc; bytecode file offset 0x9aa878"
!ASDPersistenceController methodsFor: 'recovered'!
addCallback: recoveredArg1 receiver: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) internalCallbackListFor: (recoveredValue0).
    recoveredValue2 := recoveredArg2.
    (recoveredValue1) add: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200b24a8; bytecode file offset 0x9aed7c"
!ASDPersistenceController methodsFor: 'recovered'!
reopenDataBase
    | recoveredValue0 |
    (self) runtimeAssert: (false) additionalInfo: ('please call openCurrentDataStorage').
    recoveredValue0 := (self) openCurrentDataStorage.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200b24bc; bytecode file offset 0x9aed7c"
!ASDPersistenceController methodsFor: 'recovered'!
closeLocalDatabase
    | recoveredValue0 |
    (self) runtimeAssert: (false) additionalInfo: ('please call closeData storage').
    recoveredValue0 := (self) closeDataStorage.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200bde2c; bytecode file offset 0x9bb178"
!ASDPersistenceController methodsFor: 'recovered'!
callbackList: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    callbackList := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c98e8; bytecode file offset 0x9c61a8"
!ASDPersistenceController methodsFor: 'recovered'!
moveItem: recoveredArg1 toParent: recoveredArg2 newName: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) with: (recoveredValue1).
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (self) moveItems: (recoveredValue2) toParent: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200ca554; bytecode file offset 0x9c7020"
!ASDPersistenceController methodsFor: 'recovered'!
deleteAll: recoveredArg1 progressWindow: recoveredArg2 save: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) internalLibraryLegacy.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue0) deleteAll: (recoveredValue1) progressWindow: (recoveredValue2) save: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200e2104; bytecode file offset 0x9de9b8"
!ASDPersistenceController methodsFor: 'recovered'!
dataStorageChangeLocked
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := lockDataStorageChange.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := lockDataStorageChange.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x200e3ff4; bytecode file offset 0x9e08c8"
!ASDPersistenceController methodsFor: 'recovered'!
deleteIndexFile
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isWorkspaceMode.
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
            recoveredStack0 := (recoveredStack0) internalLibraryLegacy.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) deleteIndexFile.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200e40a0; bytecode file offset 0x9e09ec"
!ASDPersistenceController methodsFor: 'recovered'!
linDeLin
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isWorkspaceMode.
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
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) internalLibraryLegacy.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) linDeLin.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200e40b4; bytecode file offset 0x9e09ec"
!ASDPersistenceController methodsFor: 'recovered'!
cacheSizeLimit
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isWorkspaceMode.
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
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) internalLibraryLegacy.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) cacheSizeLimit.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200e40c8; bytecode file offset 0x9e09ec"
!ASDPersistenceController methodsFor: 'recovered'!
attributeInterface
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isWorkspaceMode.
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
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) internalLibraryLegacy.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributeInterface.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200e40dc; bytecode file offset 0x9e09ec"
!ASDPersistenceController methodsFor: 'recovered'!
getStorageFileSize
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isWorkspaceMode.
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
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) internalLibraryLegacy.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileSize.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200e40f0; bytecode file offset 0x9e09ec"
!ASDPersistenceController methodsFor: 'recovered'!
loadAllProxys
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isWorkspaceMode.
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
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) internalLibraryLegacy.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) loadAllProxys.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200e4104; bytecode file offset 0x9e09ec"
!ASDPersistenceController methodsFor: 'recovered'!
fileSize
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isWorkspaceMode.
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
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) internalLibraryLegacy.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileSize.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200e4118; bytecode file offset 0x9e09ec"
!ASDPersistenceController methodsFor: 'recovered'!
emptyCache
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isWorkspaceMode.
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
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) internalLibraryLegacy.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) emptyCache.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200e412c; bytecode file offset 0x9e09ec"
!ASDPersistenceController methodsFor: 'recovered'!
interfaceRecordClass
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isWorkspaceMode.
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
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) internalLibraryLegacy.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceRecordClass.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200e45f0; bytecode file offset 0x9e0f14"
!ASDPersistenceController methodsFor: 'recovered'!
checkMaxDBSizeAndPromptError
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) supportsFileSizeCheck.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
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
            recoveredStack0 := (recoveredStack0) internalLibraryLegacy.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkMaxDBSizeAndPromptError.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200e46bc; bytecode file offset 0x9e10bc"
!ASDPersistenceController methodsFor: 'recovered'!
workspaceBasename
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isWorkspaceMode.
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
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) internalLibraryLegacy.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) workspaceBasename.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200f87b0; bytecode file offset 0x9f5098"
!ASDPersistenceController methodsFor: 'recovered'!
getCacheSize
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isWorkspaceMode.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 11].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) internalLibraryLegacy.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) getCacheSize.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200f87c4; bytecode file offset 0x9f5098"
!ASDPersistenceController methodsFor: 'recovered'!
numModifiedObjects
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isWorkspaceMode.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 11].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) internalLibraryLegacy.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) numModifiedObjects.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200fe5c8; bytecode file offset 0x9fae84"
!ASDPersistenceController methodsFor: 'recovered'!
openDataStorage: recoveredArg1
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
            recoveredStack0 := (recoveredStack0) internalOpenDataStorage: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := false.
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
            recoveredStack0 := (recoveredStack0) isOpen.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200fee30; bytecode file offset 0x9fb704"
!ASDPersistenceController methodsFor: 'recovered'!
existsFilesInPath: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isWorkspaceMode.
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
            recoveredStack0 := (recoveredStack0) internalLibraryLegacy.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) existsFilesInPath: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200fee44; bytecode file offset 0x9fb704"
!ASDPersistenceController methodsFor: 'recovered'!
checkRequiredSpace: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isWorkspaceMode.
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
            recoveredStack0 := (recoveredStack0) internalLibraryLegacy.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkRequiredSpace: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200fee68; bytecode file offset 0x9fb7dc"
!ASDPersistenceController methodsFor: 'recovered'!
writeAttributeRecord: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isWorkspaceMode.
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
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) internalLibraryLegacy.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) writeAttributeRecord: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200fee7c; bytecode file offset 0x9fb7dc"
!ASDPersistenceController methodsFor: 'recovered'!
readAttributeRecord: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isWorkspaceMode.
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
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) internalLibraryLegacy.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) readAttributeRecord: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200fee90; bytecode file offset 0x9fb7dc"
!ASDPersistenceController methodsFor: 'recovered'!
loadFromBytes: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isWorkspaceMode.
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
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) internalLibraryLegacy.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) loadFromBytes: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200feea4; bytecode file offset 0x9fb7dc"
!ASDPersistenceController methodsFor: 'recovered'!
dumpObject: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isWorkspaceMode.
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
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) internalLibraryLegacy.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) dumpObject: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200feeb8; bytecode file offset 0x9fb7dc"
!ASDPersistenceController methodsFor: 'recovered'!
getNewUniqueDBProxy: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isWorkspaceMode.
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
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) internalLibraryLegacy.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) getNewUniqueDBProxy: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200feecc; bytecode file offset 0x9fb7dc"
!ASDPersistenceController methodsFor: 'recovered'!
cacheSizeLimit: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isWorkspaceMode.
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
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) internalLibraryLegacy.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) cacheSizeLimit: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200feee0; bytecode file offset 0x9fb7dc"
!ASDPersistenceController methodsFor: 'recovered'!
backup: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isWorkspaceMode.
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
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) internalLibraryLegacy.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) backup: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200feef4; bytecode file offset 0x9fb7dc"
!ASDPersistenceController methodsFor: 'recovered'!
writeImported: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isWorkspaceMode.
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
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) internalLibraryLegacy.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) writeImported: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200fef08; bytecode file offset 0x9fb7dc"
!ASDPersistenceController methodsFor: 'recovered'!
getLoadedObjectFrom: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isWorkspaceMode.
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
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) internalLibraryLegacy.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) getLoadedObjectFrom: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200fef1c; bytecode file offset 0x9fb7dc"
!ASDPersistenceController methodsFor: 'recovered'!
saveConfiguration: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isWorkspaceMode.
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
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) internalLibraryLegacy.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) saveConfiguration: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200fef40; bytecode file offset 0x9fb800"
!ASDPersistenceController methodsFor: 'recovered'!
updateDataStorageReferencesProgressWindow: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isWorkspaceMode.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := true.
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
            recoveredStack0 := (recoveredStack0) internalLibraryLegacy.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) updateDataStorageReferencesProgressWindow: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20108c84; bytecode file offset 0xa05544"
!ASDPersistenceController methodsFor: 'recovered'!
garbageCollect
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isWorkspaceMode.
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
            recoveredStack0 := (recoveredStack0) internalLibraryLegacy.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) garbageCollect.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2010a7b0; bytecode file offset 0xa07084"
!ASDPersistenceController methodsFor: 'recovered'!
internalLibraryLegacy
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getDBInterfaceGlobal.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) internalDbReferenceInterface.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) setDBInterfaceGlobal: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) getDBInterfaceGlobal.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2011a700; bytecode file offset 0xa17000"
!ASDPersistenceController methodsFor: 'recovered'!
objects
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isWorkspaceMode.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) internalLibraryLegacy.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) objects.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := Set.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20120f1c; bytecode file offset 0xa1d7dc"
!ASDPersistenceController methodsFor: 'recovered'!
allProxysDo: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isWorkspaceMode.
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
            recoveredStack0 := (recoveredStack0) internalLibraryLegacy.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) allProxysDo: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20123018; bytecode file offset 0xa1f8d8"
!ASDPersistenceController methodsFor: 'recovered'!
queriesExactForClassName: recoveredArg1 name: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isWorkspaceMode.
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
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) internalLibraryLegacy.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) queriesExactForClassName: (recoveredStack1) name: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201294c0; bytecode file offset 0xa25d80"
!ASDPersistenceController methodsFor: 'recovered'!
internalCleanUpInstance
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := xmlWorkspaceManager.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280c9504Arg1 | 
    | block280c9504Value0 block280c9504Value1 |
    block280c9504Value0 := block280c9504Arg1.
    block280c9504Value1 := (block280c9504Value0) restoreCTreeInterface.
    block280c9504Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201350a8; bytecode file offset 0xa31968"
!ASDPersistenceController methodsFor: 'recovered'!
allAttributeSetObjectsDo: recoveredArg1 for: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isWorkspaceMode.
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
            recoveredStack0 := (recoveredStack0) internalLibraryLegacy.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) allAttributeSetObjectsDo: (recoveredStack1) for: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2013cb94; bytecode file offset 0xa3945c"
!ASDPersistenceController methodsFor: 'recovered'!
supportsDefragmentation
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            recoveredStack2 := (recoveredStack2) isWorkspaceMode.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := CfsDirectoryDescriptor.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := EtasGeneralDllApi.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) getAppProgramPath.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) allowedToWriteIn: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2013e090; bytecode file offset 0xa3a954"
!ASDPersistenceController methodsFor: 'recovered'!
deleteCodeStorageFile
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isWorkspaceMode.
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
            recoveredStack0 := (recoveredStack0) internalLibraryLegacy.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) internalLibraryLegacy.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) codeStorageDatFileName.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) deleteInterfaceFilesForDefName: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2013e530; bytecode file offset 0xa3adf4"
!ASDPersistenceController methodsFor: 'recovered'!
dataStoragePath
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isWorkspaceMode.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) internalLibraryLegacy.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) workspacePath.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) internalLibraryLegacy.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) location.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20141458; bytecode file offset 0xa3ddcc"
!ASDPersistenceController methodsFor: 'recovered'!
isWorkspaceMode
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) internalLibraryLegacy.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) isWorkspaceMode.
    ^recoveredBlock5Value1
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^false
! !

"ASDBase.ic method 0x2014146c; bytecode file offset 0xa3ddcc"
!ASDPersistenceController methodsFor: 'recovered'!
isOpen
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) internalLibraryLegacy.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) isOpen.
    ^recoveredBlock5Value1
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^false
! !

"ASDBase.ic method 0x20141598; bytecode file offset 0xa3df70"
!ASDPersistenceController methodsFor: 'recovered'!
databasePath
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) internalLibraryLegacy.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) databaseRootPath.
    ^recoveredBlock5Value1
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^nil
! !

"ASDBase.ic method 0x2014656c; bytecode file offset 0xa42f4c"
!ASDPersistenceController methodsFor: 'recovered'!
internalCallbackListFor: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) callbackList.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [
    | block280cc5acValue0 block280cc5acValue1 |
    block280cc5acValue0 := OrderedCollection.
    block280cc5acValue1 := (block280cc5acValue0) new.
    block280cc5acValue1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20148818; bytecode file offset 0xa450ec"
!ASDPersistenceController methodsFor: 'recovered'!
readRecordFromHandle: recoveredArg1 atOffset: recoveredArg2 recordClass: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isWorkspaceMode.
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
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) internalLibraryLegacy.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) readRecordFromHandle: (recoveredStack1) atOffset: (recoveredStack2) recordClass: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2014882c; bytecode file offset 0xa450ec"
!ASDPersistenceController methodsFor: 'recovered'!
readAttributeRecordFromHandle: recoveredArg1 atOffset: recoveredArg2 recordClass: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isWorkspaceMode.
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
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) internalLibraryLegacy.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) readAttributeRecordFromHandle: (recoveredStack1) atOffset: (recoveredStack2) recordClass: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20152a74; bytecode file offset 0xa4f334"
!ASDPersistenceController methodsFor: 'recovered'!
pathNameLimit
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) internalLibraryLegacy.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) pathNameLimit.
    ^recoveredBlock5Value1
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^0
! !

"ASDBase.ic method 0x20169188; bytecode file offset 0xa65a4c"
!ASDPersistenceController methodsFor: 'recovered'!
saveAs: recoveredArg1 progressWindow: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isWorkspaceMode.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) internalLibraryLegacy.
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
            recoveredStack0 := (recoveredStack0) saveAllAs: (recoveredStack1) progressOn: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) backupDataStorageTo: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201780e8; bytecode file offset 0xa749e4"
!ASDPersistenceController methodsFor: 'recovered'!
commitShowProgressOn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) internalLibraryLegacy.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredArg1.
    recoveredBlock5Value2 := (recoveredBlock5Value0) commitShowProgressOn: (recoveredBlock5Value1).
    ^recoveredBlock5Value2
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^nil
! !

"ASDBase.ic method 0x20183fac; bytecode file offset 0xa80878"
!ASDPersistenceController methodsFor: 'recovered'!
doesNotUnderstand: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRuntime.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := 'use api'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) runtimeAssert: (recoveredStack2) additionalInfo: (recoveredStack3).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) internalLibraryLegacy.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) sendTo: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20185fe4; bytecode file offset 0xa828ac"
!ASDPersistenceController methodsFor: 'recovered'!
writeToDatabase: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isWorkspaceMode.
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
            recoveredStack1 := false.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := 'Invalid API for Workspace'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) runtimeAssert: (recoveredStack1) additionalInfo: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := false.
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
            recoveredStack0 := (recoveredStack0) internalLibraryLegacy.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) writeToDatabase: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20186048; bytecode file offset 0xa8290c"
!ASDPersistenceController methodsFor: 'recovered'!
saveDataStorageProgressWindow: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isWorkspaceMode.
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
            recoveredStack0 := (recoveredStack0) internalLibraryLegacy.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) saveAllProgressOn: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) internalLibraryLegacy.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) commitShowProgressOn: (recoveredStack1).
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

"ASDBase.ic method 0x201919bc; bytecode file offset 0xa8e27c"
!ASDPersistenceController methodsFor: 'recovered'!
internalDbReferenceInterface
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := dbReferenceInterface.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    ^recoveredBlock6Value0
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    recoveredValue2 := DBReferenceInterface32.
    recoveredValue3 := (recoveredValue2) create.
    dbReferenceInterface := recoveredValue3.
    recoveredValue4 := dbReferenceInterface.
    ^recoveredValue4
! !

"ASDBase.ic method 0x20191b84; bytecode file offset 0xa8e44c"
!ASDPersistenceController methodsFor: 'recovered'!
binaryDatabaseSizeErrorLevel
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) supportsFileSizeCheck.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) internalLibraryLegacy.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 |
    recoveredBlock10Value0 := recoveredBlock10Arg1.
    recoveredBlock10Value1 := (recoveredBlock10Value0) binaryDatabaseSizeErrorLevel.
    ^recoveredBlock10Value1
].
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := #[0 0 0 0 0 0 0 0].
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201a2a44; bytecode file offset 0xa9f30c"
!ASDPersistenceController methodsFor: 'recovered'!
internalSwitchToDatabase
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) internalLibraryLegacy.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOpen.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := false.
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
            recoveredStack0 := (recoveredStack0) isWorkspaceMode.
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
            recoveredStack1 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) internalDbReferenceInterface.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) setDBInterfaceGlobal: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201a7e6c; bytecode file offset 0xaa4734"
!ASDPersistenceController methodsFor: 'recovered'!
removeCallbacksFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) callbackList.
    recoveredValue1 := (recoveredValue0) values.
    recoveredValue2 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := recoveredArg1.
    recoveredBlock6Value2 := [].
    recoveredBlock6Value3 := (recoveredBlock6Value0) remove: (recoveredBlock6Value1) ifAbsent: (recoveredBlock6Value2).
    recoveredBlock6Value3
].
    (recoveredValue1) do: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x201d7e74; bytecode file offset 0xad4744"
!ASDPersistenceController methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    super initialize.
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    (self) callbackList: (recoveredValue1).
    recoveredValue2 := EtasCache.
    recoveredValue3 := (recoveredValue2) new.
    dbSizeCache := recoveredValue3.
    recoveredValue4 := dbSizeCache.
    (recoveredValue4) lifetime: (1000).
    ^self
! !

"ASDBase.ic method 0x201e6af0; bytecode file offset 0xae33b4"
!ASDPersistenceController methodsFor: 'recovered'!
openCurrentDataStorageNotify: recoveredArg1
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
            (recoveredStack1) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock9Value0 recoveredBlock9Value1 |
    recoveredBlock9Value0 := (self) internalLibraryLegacy.
    recoveredBlock9Value1 := (recoveredBlock9Value0) reopenDataBase.
    recoveredBlock9Value1
].
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := (recoveredStack3) location.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) internalDoWithOpenCallbacks: (recoveredStack2) path: (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) internalLibraryLegacy.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) reopenDataBase.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201f351c; bytecode file offset 0xaefde8"
!ASDPersistenceController methodsFor: 'recovered'!
internalXmlWorkspaceManager
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := xmlWorkspaceManager.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    ^recoveredBlock6Value0
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    recoveredValue2 := Smalltalk.
    recoveredValue3 := (recoveredValue2) at: ('DBXmlWorkspaceManager').
    recoveredValue4 := (recoveredValue3) new.
    recoveredValue5 := (recoveredValue4) init.
    xmlWorkspaceManager := recoveredValue5.
    recoveredValue6 := xmlWorkspaceManager.
    ^recoveredValue6
! !

"ASDBase.ic method 0x201f7634; bytecode file offset 0xaf3efc"
!ASDPersistenceController methodsFor: 'recovered'!
openDataStorage: recoveredArg1 conversionBlock: recoveredArg2
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
            recoveredStack0 := (recoveredStack0) internalOpenDataStorage: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := false.
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
            recoveredStack0 := (recoveredStack0) internalDataStorageVersionIsValid.
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
            (recoveredStack0) closeDataStorage.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) value.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOpen.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20208fec; bytecode file offset 0xb058c4"
!ASDPersistenceController methodsFor: 'recovered'!
setDataStorageToCurrentVersion
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := (self) getDataBaseInfo.
    recoveredLocal2 := recoveredValue0.
    recoveredValue1 := recoveredLocal2.
    recoveredValue2 := (recoveredValue1) applicationInfo.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (self) class.
    recoveredValue5 := (recoveredValue4) versionKey.
    recoveredValue6 := (self) class.
    recoveredValue7 := (recoveredValue6) currentDBVersion.
    (recoveredValue3) at: (recoveredValue5) put: (recoveredValue7).
    recoveredValue8 := recoveredLocal2.
    recoveredValue9 := (recoveredValue8) dbObject.
    (recoveredValue9) setModifyBit.
    recoveredValue10 := recoveredLocal2.
    recoveredValue11 := (recoveredValue10) dbObject.
    (recoveredValue11) commit.
    ^self
! !

"ASDBase.ic method 0x20214398; bytecode file offset 0xb10c60"
!ASDPersistenceController methodsFor: 'recovered'!
pathIncludesDatabase: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) internalDbReferenceInterface.
    recoveredValue1 := (recoveredValue0) interfaces.
    recoveredValue2 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6Stack3 recoveredBlock6Stack4 recoveredBlock6Stack5 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
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
            recoveredBlock6Stack3 := #('dat' 'idx').
            recoveredBlock6PC := 16.
        ].
        recoveredBlock6Step = 16 ifTrue: [
            recoveredBlock6Stack4 := recoveredArg1.
            recoveredBlock6PC := 19.
        ].
        recoveredBlock6Step = 19 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) checkFilesWithExtensionsExist: (recoveredBlock6Stack3) path: (recoveredBlock6Stack4).
            recoveredBlock6PC := 21.
        ].
        recoveredBlock6Step = 21 ifTrue: [
            (recoveredBlock6Stack2) ifTrue: [recoveredBlock6PC := 24] ifFalse: [recoveredBlock6PC := 27].
        ].
        recoveredBlock6Step = 24 ifTrue: [
            recoveredBlock6PC := 25.
        ].
        recoveredBlock6Step = 25 ifTrue: [
            recoveredBlock6Stack1 := true.
            recoveredBlock6PC := 26.
        ].
        recoveredBlock6Step = 26 ifTrue: [
            ^recoveredBlock6Stack1
        ].
        recoveredBlock6Step = 27 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack1.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
    (recoveredValue1) do: (recoveredValue2).
    ^false
! !

"ASDBase.ic method 0x20218b90; bytecode file offset 0xb1548c"
!ASDPersistenceController methodsFor: 'recovered'!
getModelStorageFileSize
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) supportsFileSizeCheck.
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
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) internalLibraryLegacy.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 recoveredBlock12Value4 recoveredBlock12Value5 recoveredBlock12Value6 |
    recoveredBlock12Value0 := recoveredBlock12Arg1.
    recoveredBlock12Value1 := (self) databasePath.
    recoveredBlock12Value2 := (recoveredBlock12Value1) asPathname.
    recoveredBlock12Value3 := recoveredBlock12Arg1.
    recoveredBlock12Value4 := (recoveredBlock12Value3) defaultDatFileName.
    recoveredBlock12Value5 := (recoveredBlock12Value2) , (recoveredBlock12Value4).
    recoveredBlock12Value6 := (recoveredBlock12Value0) fileSizeFor: (recoveredBlock12Value5).
    recoveredBlock12Value6
].
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20218bb8; bytecode file offset 0xb1548c"
!ASDPersistenceController methodsFor: 'recovered'!
getGeneratedCodeStorageFileSize
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) supportsFileSizeCheck.
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
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) internalLibraryLegacy.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 recoveredBlock12Value4 recoveredBlock12Value5 recoveredBlock12Value6 |
    recoveredBlock12Value0 := recoveredBlock12Arg1.
    recoveredBlock12Value1 := (self) databasePath.
    recoveredBlock12Value2 := (recoveredBlock12Value1) asPathname.
    recoveredBlock12Value3 := recoveredBlock12Arg1.
    recoveredBlock12Value4 := (recoveredBlock12Value3) codeStorageDatFileName.
    recoveredBlock12Value5 := (recoveredBlock12Value2) , (recoveredBlock12Value4).
    recoveredBlock12Value6 := (recoveredBlock12Value0) fileSizeFor: (recoveredBlock12Value5).
    recoveredBlock12Value6
].
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20236b30; bytecode file offset 0xb333fc"
!ASDPersistenceController methodsFor: 'recovered'!
performDefragmentation
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) supportsDefragmentation.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
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
            recoveredStack0 := (recoveredStack0) isOpen.
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
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) closeDataStorage.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) internalLibraryLegacy.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) compactLocalDatabase.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 33].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) openCurrentDataStorage.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202722e8; bytecode file offset 0xb6ebbc"
!ASDPersistenceController methodsFor: 'recovered'!
renameItem: recoveredArg1 newName: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isWorkspaceMode.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) internalLibraryLegacy.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) saveAll.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) internalLibraryLegacy.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) dbObject.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) moveItem: (recoveredStack1) toParent: (recoveredStack2) newName: (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) internalLibraryLegacy.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) saveAll.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) label: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultProjectManager.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) renameDefaultProjectFor: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202a43a4; bytecode file offset 0xba0c7c"
!ASDPersistenceController methodsFor: 'recovered'!
defaultDatabaseName
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isWorkspaceMode.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 11].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := 'database'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) library.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) location.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileNameOnly.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := DBInterface32.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultPath.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) fileName.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 43].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := 'database'.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202a8d50; bytecode file offset 0xba5624"
!ASDPersistenceController methodsFor: 'recovered'!
checkMaxDBSize
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) supportsFileSizeCheck.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := dbSizeCache.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := EtasCache.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            dbSizeCache := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := dbSizeCache.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := 1000.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) lifetime: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := dbSizeCache.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := 'checkMaxDBSize'.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock32Value0 recoveredBlock32Value1 |
    recoveredBlock32Value0 := (self) internalLibraryLegacy.
    recoveredBlock32Value1 := (recoveredBlock32Value0) checkMaxDBSize.
    recoveredBlock32Value1
].
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202b7f04; bytecode file offset 0xbb47e0"
!ASDPersistenceController methodsFor: 'recovered'!
createDatabase: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isWorkspaceMode.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 'Call_93890'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := MainController.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) resetCopyBuffers.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) internalSwitchToDatabase.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) isWorkspaceMode.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := false.
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
            recoveredStack0 := (recoveredStack0) internalLibraryLegacy.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) createDatabase: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOpen.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 45] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) openDataStorage: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20310620; bytecode file offset 0xc0cf00"
!ASDPersistenceController methodsFor: 'recovered'!
binaryDatabasePathCurrent: recoveredArg1 defaultPath: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) exists: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) internalDbReferenceInterface.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) location.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) asPath.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := DBInterface32.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultPath.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) asPath.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasSamePathName: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) pathName.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) asPathname.
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
            recoveredStack0 := (recoveredStack0) isWorkspaceMode.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) asPathname.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) pathName.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) asPathname.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20326cb0; bytecode file offset 0xc23590"
!ASDPersistenceController methodsFor: 'recovered'!
createWorkspace: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDirectory: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := 'Call_93890'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) isWorkspaceMode.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := MainController.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) resetCopyBuffers.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) internalXmlWorkspaceManager.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) newWorkspace: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) isWorkspaceMode.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := CfsStat.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) exists: (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := false.
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
            recoveredStack0 := (recoveredStack0) openDataStorage: (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20327b0c; bytecode file offset 0xc243e8"
!ASDPersistenceController methodsFor: 'recovered'!
internalDoWithOpenCallbacks: recoveredArg1 path: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := SGMonitorStreamDummy.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 recoveredBlock7Value5 recoveredBlock7Value6 recoveredBlock7Value7 recoveredBlock7Value8 recoveredBlock7Value9 recoveredBlock7Value10 |
    recoveredBlock7Value0 := ASDDataStorageAboutToOpenCallback.
    recoveredBlock7Value1 := (recoveredBlock7Value0) create.
    recoveredBlock7Value2 := recoveredBlock7Value1.
    recoveredBlock7Value3 := recoveredArg2.
    (recoveredBlock7Value2) path: (recoveredBlock7Value3).
    (self) internalCallCallbacks: (recoveredBlock7Value1).
    recoveredBlock7Value4 := recoveredArg1.
    recoveredBlock7Value5 := (recoveredBlock7Value4) value.
    recoveredLocal1 := recoveredBlock7Value5.
    recoveredBlock7Value6 := ASDDataStorageOpenCallback.
    recoveredBlock7Value7 := (recoveredBlock7Value6) create.
    recoveredBlock7Value8 := recoveredBlock7Value7.
    recoveredBlock7Value9 := recoveredArg2.
    (recoveredBlock7Value8) path: (recoveredBlock7Value9).
    recoveredBlock7Value10 := (self) internalCallCallbacks: (recoveredBlock7Value7).
    recoveredBlock7Value10
].
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := ('Open Datastorage at %1') bindWith: (recoveredValue3).
    (recoveredValue1) measureTimeFor: (recoveredValue2) description: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x20376d54; bytecode file offset 0xc7362c"
!ASDPersistenceController methodsFor: 'recovered'!
internalCallCallbacks: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) class.
    recoveredValue2 := (self) internalCallbackListFor: (recoveredValue1).
    recoveredValue3 := [:recoveredBlock9Arg1 | 
    | recoveredBlock9Value0 recoveredBlock9Value1 recoveredBlock9Value2 recoveredBlock9Value3 |
    recoveredBlock9Value0 := recoveredBlock9Arg1.
    recoveredBlock9Value1 := (recoveredBlock9Value0) copy.
    recoveredBlock9Value2 := [:recoveredBlock9Block18Arg1 | 
    | recoveredBlock9Block18Value0 recoveredBlock9Block18Value1 recoveredBlock9Block18Value2 recoveredBlock9Block18Value3 |
    recoveredBlock9Block18Value0 := [
    | recoveredBlock9Block18Block24Value0 recoveredBlock9Block18Block24Value1 |
    recoveredBlock9Block18Block24Value0 := recoveredBlock9Block18Arg1.
    recoveredBlock9Block18Block24Value1 := (recoveredBlock9Block18Block24Value0) notNil.
    recoveredBlock9Block18Block24Value1
].
    (self) runtimeAssert: (recoveredBlock9Block18Value0) additionalInfo: ('callback was not cleaned up').
    recoveredBlock9Block18Value1 := recoveredBlock9Block18Arg1.
    recoveredBlock9Block18Value2 := [:recoveredBlock9Block18Block42Arg1 | 
    | recoveredBlock9Block18Block42Value0 recoveredBlock9Block18Block42Value1 recoveredBlock9Block18Block42Value2 recoveredBlock9Block18Block42Value3 recoveredBlock9Block18Block42Value4 |
    recoveredBlock9Block18Block42Value0 := recoveredBlock9Block18Block42Arg1.
    recoveredBlock9Block18Block42Value1 := recoveredArg1.
    recoveredBlock9Block18Block42Value2 := (recoveredBlock9Block18Block42Value1) eventSelector.
    recoveredBlock9Block18Block42Value3 := recoveredArg1.
    recoveredBlock9Block18Block42Value4 := (recoveredBlock9Block18Block42Value0) perform: (recoveredBlock9Block18Block42Value2) with: (recoveredBlock9Block18Block42Value3).
    recoveredBlock9Block18Block42Value4
].
    recoveredBlock9Block18Value3 := (recoveredBlock9Block18Value1) ifNotNil: (recoveredBlock9Block18Value2).
    recoveredBlock9Block18Value3
].
    recoveredBlock9Value3 := (recoveredBlock9Value1) do: (recoveredBlock9Value2).
    recoveredBlock9Value3
].
    (recoveredValue2) ifNotNil: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2039250c; bytecode file offset 0xc8edf4"
!ASDPersistenceController methodsFor: 'recovered'!
internalDataStorageVersionIsValid
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            recoveredStack0 := (recoveredStack0) isWorkspaceMode.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
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
            recoveredStack0 := (recoveredStack0) internalLibraryLegacy.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) getDataBaseInfo.
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
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) applicationInfo.
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
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) versionKey.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := [
    ''
].
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentDBVersion.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203b90a8; bytecode file offset 0xcb5994"
!ASDPersistenceController methodsFor: 'recovered'!
closeDataStorageNotify: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredStack0 := true.
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
            recoveredStack0 := (recoveredStack0) isCommitted.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOpen.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultProjectManager.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) cleanUpVolatileDefaultProjects.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCommitted.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) saveDataStorageProgressWindow: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := ASDDataStorageAboutToCloseCallback.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := (recoveredStack2) library.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := (recoveredStack2) location.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) path: (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) internalCallCallbacks: (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) internalLibraryLegacy.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) closeLocalDatabaseNotify: (recoveredStack1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := ASDDataStorageCloseCallback.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) path: (recoveredStack2).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0) internalCallCallbacks: (recoveredStack1).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203e3f64; bytecode file offset 0xce0854"
!ASDPersistenceController methodsFor: 'recovered'!
backupDataStorageTo: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) internalLibraryLegacy.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) location.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := CfsStat.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) exists: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := CfsStat.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) pathName.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) exists: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := CfsDirectoryDescriptor.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := '*.*'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) findFiles: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 41].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := -1.
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
            recoveredStack0 := (recoveredStack0) closeDataStorage.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 51] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := -2.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := CfsDirectoryDescriptor.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyTree: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 75].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := CfsDirectoryDescriptor.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) deletePathRecursive: (recoveredStack1).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := -3.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := (recoveredStack0) internalLibraryLegacy.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0) initPathNames: (recoveredStack1).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack0) openCurrentDataStorageNotify: (recoveredStack1).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20422140; bytecode file offset 0xd1ea34"
!ASDPersistenceController methodsFor: 'recovered'!
internalOpenDataStorage: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) internalLibraryLegacy.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOpen.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := false.
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
            recoveredStack1 := [
    | recoveredBlock13Stack0 recoveredBlock13Stack1 recoveredBlock13Stack2 recoveredBlock13Stack3 recoveredBlock13PC recoveredBlock13Step recoveredBlock13Done recoveredBlock13Result |
    recoveredBlock13Stack0 := self.
    recoveredBlock13PC := 20.
    recoveredBlock13Done := false.
    [recoveredBlock13Done not] whileTrue: [
        recoveredBlock13Step := recoveredBlock13PC.
        recoveredBlock13Step = 20 ifTrue: [
            recoveredBlock13Stack1 := recoveredArg1.
            recoveredBlock13PC := 23.
        ].
        recoveredBlock13Step = 23 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) internalPathIsWorkspace: (recoveredBlock13Stack1).
            recoveredBlock13PC := 24.
        ].
        recoveredBlock13Step = 24 ifTrue: [
            (recoveredBlock13Stack0) ifTrue: [recoveredBlock13PC := 28] ifFalse: [recoveredBlock13PC := 64].
        ].
        recoveredBlock13Step = 28 ifTrue: [
            recoveredBlock13Stack0 := 'Kli'.
            recoveredBlock13PC := 30.
        ].
        recoveredBlock13Step = 30 ifTrue: [
            recoveredBlock13Stack1 := 'Call_93890'.
            recoveredBlock13PC := 32.
        ].
        recoveredBlock13Step = 32 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) == (recoveredBlock13Stack1).
            recoveredBlock13PC := 33.
        ].
        recoveredBlock13Step = 33 ifTrue: [
            recoveredBlock13PC := 34.
        ].
        recoveredBlock13Step = 34 ifTrue: [
            recoveredBlock13Stack0 := self.
            recoveredBlock13PC := 35.
        ].
        recoveredBlock13Step = 35 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) isWorkspaceMode.
            recoveredBlock13PC := 37.
        ].
        recoveredBlock13Step = 37 ifTrue: [
            (recoveredBlock13Stack0) ifTrue: [recoveredBlock13PC := 44] ifFalse: [recoveredBlock13PC := 40].
        ].
        recoveredBlock13Step = 40 ifTrue: [
            recoveredBlock13Stack0 := MainController.
            recoveredBlock13PC := 42.
        ].
        recoveredBlock13Step = 42 ifTrue: [
            (recoveredBlock13Stack0) resetCopyBuffers.
            recoveredBlock13PC := 44.
        ].
        recoveredBlock13Step = 44 ifTrue: [
            recoveredBlock13Stack0 := self.
            recoveredBlock13PC := 45.
        ].
        recoveredBlock13Step = 45 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) internalXmlWorkspaceManager.
            recoveredBlock13PC := 47.
        ].
        recoveredBlock13Step = 47 ifTrue: [
            recoveredBlock13Stack1 := recoveredArg1.
            recoveredBlock13PC := 50.
        ].
        recoveredBlock13Step = 50 ifTrue: [
            (recoveredBlock13Stack0) openWorkspace: (recoveredBlock13Stack1).
            recoveredBlock13PC := 52.
        ].
        recoveredBlock13Step = 52 ifTrue: [
            recoveredBlock13Stack0 := self.
            recoveredBlock13PC := 53.
        ].
        recoveredBlock13Step = 53 ifTrue: [
            recoveredBlock13Stack1 := self.
            recoveredBlock13PC := 54.
        ].
        recoveredBlock13Step = 54 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) isWorkspaceMode.
            recoveredBlock13PC := 56.
        ].
        recoveredBlock13Step = 56 ifTrue: [
            recoveredBlock13Stack2 := 'currently it is assumed, that workspace manager switches DBInerface to ws'.
            recoveredBlock13PC := 58.
        ].
        recoveredBlock13Step = 58 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) runtimeAssert: (recoveredBlock13Stack1) additionalInfo: (recoveredBlock13Stack2).
            recoveredBlock13PC := 60.
        ].
        recoveredBlock13Step = 60 ifTrue: [
            recoveredBlock13PC := 92.
        ].
        recoveredBlock13Step = 64 ifTrue: [
            recoveredBlock13Stack0 := 'Kli'.
            recoveredBlock13PC := 66.
        ].
        recoveredBlock13Step = 66 ifTrue: [
            recoveredBlock13Stack1 := 'Call_93890'.
            recoveredBlock13PC := 68.
        ].
        recoveredBlock13Step = 68 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) == (recoveredBlock13Stack1).
            recoveredBlock13PC := 69.
        ].
        recoveredBlock13Step = 69 ifTrue: [
            recoveredBlock13PC := 70.
        ].
        recoveredBlock13Step = 70 ifTrue: [
            recoveredBlock13Stack0 := self.
            recoveredBlock13PC := 71.
        ].
        recoveredBlock13Step = 71 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) isWorkspaceMode.
            recoveredBlock13PC := 73.
        ].
        recoveredBlock13Step = 73 ifTrue: [
            (recoveredBlock13Stack0) ifTrue: [recoveredBlock13PC := 76] ifFalse: [recoveredBlock13PC := 80].
        ].
        recoveredBlock13Step = 76 ifTrue: [
            recoveredBlock13Stack0 := MainController.
            recoveredBlock13PC := 78.
        ].
        recoveredBlock13Step = 78 ifTrue: [
            (recoveredBlock13Stack0) resetCopyBuffers.
            recoveredBlock13PC := 80.
        ].
        recoveredBlock13Step = 80 ifTrue: [
            recoveredBlock13Stack0 := self.
            recoveredBlock13PC := 81.
        ].
        recoveredBlock13Step = 81 ifTrue: [
            recoveredBlock13Stack1 := self.
            recoveredBlock13PC := 82.
        ].
        recoveredBlock13Step = 82 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) internalDbReferenceInterface.
            recoveredBlock13PC := 84.
        ].
        recoveredBlock13Step = 84 ifTrue: [
            (recoveredBlock13Stack0) setDBInterfaceGlobal: (recoveredBlock13Stack1).
            recoveredBlock13PC := 86.
        ].
        recoveredBlock13Step = 86 ifTrue: [
            recoveredBlock13Stack0 := self.
            recoveredBlock13PC := 87.
        ].
        recoveredBlock13Step = 87 ifTrue: [
            recoveredBlock13Stack1 := recoveredArg1.
            recoveredBlock13PC := 90.
        ].
        recoveredBlock13Step = 90 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) internalOpenBinaryDB: (recoveredBlock13Stack1).
            recoveredBlock13PC := 92.
        ].
        recoveredBlock13Step = 92 ifTrue: [
            recoveredBlock13Result := recoveredBlock13Stack0.
            recoveredBlock13Done := true.
        ].
    ].
    recoveredBlock13Result
].
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack0) internalDoWithOpenCallbacks: (recoveredStack1) path: (recoveredStack2).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := (recoveredStack0) internalLibraryLegacy.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOpen.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204309f4; bytecode file offset 0xd2d2f4"
!ASDPersistenceController methodsFor: 'recovered'!
internalStartUpTest
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := 'bcrtl32.dll'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) stat: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := 'bcrtl32.dll'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorObject: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := RBBcrtl32DLL.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := 'bc450rtl.dll'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) searchPath: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 51] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := DBFileError.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := 'could not find file %1 in searchPath'.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := #('bc450rtl.dll').
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) create: (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := 'ctstdmul.dll'.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) stat: (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := 'ctreestd.dll'.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorObject: (recoveredStack2).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := 'ctstdsgl.dll'.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) stat: (recoveredStack2).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := 'ctreestd.dll'.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorObject: (recoveredStack2).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := 'ctstdsnl.dll'.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := (recoveredStack1) stat: (recoveredStack2).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 98] ifFalse: [recoveredPC := 104].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := 'ctstdsnl.dll'.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorObject: (recoveredStack2).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 104 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20479950; bytecode file offset 0xd76254"
!ASDPersistenceController methodsFor: 'recovered'!
internalOpenBinaryDB: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) internalLibraryLegacy.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) isWorkspaceMode.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
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
            (recoveredStack0) initPathNames: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) existsFiles.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 101] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := RBDirectory.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) driveRoot.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) createPath: (recoveredStack1) parentDirectory: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) location.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) createDirectoryRecursive: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := RBDirectory.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) location.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) createPath: (recoveredStack1) parentDirectory: (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasSubDirectories.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) allFiles.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0) createDataBase.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredPC := 99.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := 'hw'.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := 'todo'.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack0) etasDevHalt.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOpen.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 111] ifFalse: [recoveredPC := 108].
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack0) reopenDataBase.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOpen.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 120] ifFalse: [recoveredPC := 118].
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack0) initCacheLimit.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20530774; bytecode file offset 0xe2d084"
!ASDPersistenceController methodsFor: 'recovered'!
moveItems: recoveredArg1 toParent: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) modifiable.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := nil.
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
    | recoveredBlock17Stack0 recoveredBlock17Stack1 recoveredBlock17Stack2 recoveredBlock17Stack3 recoveredBlock17Stack4 recoveredBlock17PC recoveredBlock17Step recoveredBlock17Done recoveredBlock17Result |
    recoveredBlock17Stack0 := self.
    recoveredBlock17PC := 24.
    recoveredBlock17Done := false.
    [recoveredBlock17Done not] whileTrue: [
        recoveredBlock17Step := recoveredBlock17PC.
        recoveredBlock17Step = 24 ifTrue: [
            recoveredBlock17Stack1 := true.
            recoveredBlock17PC := 25.
        ].
        recoveredBlock17Step = 25 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Arg1.
            recoveredBlock17PC := 26.
        ].
        recoveredBlock17Step = 26 ifTrue: [
            (recoveredBlock17Stack2 == nil) ifTrue: [recoveredBlock17PC := 55] ifFalse: [recoveredBlock17PC := 30].
        ].
        recoveredBlock17Step = 30 ifTrue: [
            recoveredBlock17PC := 31.
        ].
        recoveredBlock17Step = 31 ifTrue: [
            recoveredBlock17Stack1 := true.
            recoveredBlock17PC := 32.
        ].
        recoveredBlock17Step = 32 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Arg1.
            recoveredBlock17PC := 33.
        ].
        recoveredBlock17Step = 33 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) isLibrary.
            recoveredBlock17PC := 34.
        ].
        recoveredBlock17Step = 34 ifTrue: [
            (recoveredBlock17Stack2) ifTrue: [recoveredBlock17PC := 55] ifFalse: [recoveredBlock17PC := 38].
        ].
        recoveredBlock17Step = 38 ifTrue: [
            recoveredBlock17PC := 39.
        ].
        recoveredBlock17Step = 39 ifTrue: [
            recoveredBlock17Stack1 := true.
            recoveredBlock17PC := 40.
        ].
        recoveredBlock17Step = 40 ifTrue: [
            recoveredBlock17Stack2 := recoveredArg2.
            recoveredBlock17PC := 43.
        ].
        recoveredBlock17Step = 43 ifTrue: [
            recoveredBlock17Stack3 := recoveredBlock17Arg1.
            recoveredBlock17PC := 44.
        ].
        recoveredBlock17Step = 44 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) = (recoveredBlock17Stack3).
            recoveredBlock17PC := 45.
        ].
        recoveredBlock17Step = 45 ifTrue: [
            (recoveredBlock17Stack2) ifTrue: [recoveredBlock17PC := 55] ifFalse: [recoveredBlock17PC := 48].
        ].
        recoveredBlock17Step = 48 ifTrue: [
            recoveredBlock17PC := 49.
        ].
        recoveredBlock17Step = 49 ifTrue: [
            recoveredBlock17Stack1 := recoveredBlock17Arg1.
            recoveredBlock17PC := 50.
        ].
        recoveredBlock17Step = 50 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) allFolderChildrenRecursive.
            recoveredBlock17PC := 51.
        ].
        recoveredBlock17Step = 51 ifTrue: [
            recoveredBlock17Stack2 := recoveredArg2.
            recoveredBlock17PC := 54.
        ].
        recoveredBlock17Step = 54 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) includes: (recoveredBlock17Stack2).
            recoveredBlock17PC := 55.
        ].
        recoveredBlock17Step = 55 ifTrue: [
            recoveredBlock17Result := recoveredBlock17Stack1.
            recoveredBlock17Done := true.
        ].
    ].
    recoveredBlock17Result
].
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) anySatisfy: (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) isWorkspaceMode.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) internalLibraryLegacy.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack0) saveAll.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := [:block2810d53cArg1 | 
    | block2810d53cValue0 block2810d53cValue1 |
    block2810d53cValue0 := block2810d53cArg1.
    block2810d53cValue1 := (block2810d53cValue0) label.
    block2810d53cValue1
].
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredPC := 117.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) childrenKeys.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := [:block2810d560Arg1 | 
    | block2810d560Value0 block2810d560Value1 |
    block2810d560Value0 := block2810d560Arg1.
    block2810d560Value1 := (block2810d560Value0) label.
    block2810d560Value1
].
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := [:recoveredBlock120Arg1 | 
    | recoveredBlock120Stack0 recoveredBlock120Stack1 recoveredBlock120Stack2 recoveredBlock120Stack3 recoveredBlock120Stack4 recoveredBlock120Stack5 recoveredBlock120PC recoveredBlock120Step recoveredBlock120Done recoveredBlock120Result |
    recoveredBlock120Stack0 := self.
    recoveredBlock120PC := 126.
    recoveredBlock120Done := false.
    [recoveredBlock120Done not] whileTrue: [
        recoveredBlock120Step := recoveredBlock120PC.
        recoveredBlock120Step = 126 ifTrue: [
            recoveredBlock120Stack0 := (recoveredBlock120Stack0) isWorkspaceMode.
            recoveredBlock120PC := 128.
        ].
        recoveredBlock120Step = 128 ifTrue: [
            (recoveredBlock120Stack0) ifTrue: [recoveredBlock120PC := 132] ifFalse: [recoveredBlock120PC := 156].
        ].
        recoveredBlock120Step = 132 ifTrue: [
            recoveredBlock120Stack0 := self.
            recoveredBlock120PC := 133.
        ].
        recoveredBlock120Step = 133 ifTrue: [
            recoveredBlock120Stack0 := (recoveredBlock120Stack0) internalLibraryLegacy.
            recoveredBlock120PC := 135.
        ].
        recoveredBlock120Step = 135 ifTrue: [
            recoveredBlock120Stack1 := recoveredBlock120Arg1.
            recoveredBlock120PC := 136.
        ].
        recoveredBlock120Step = 136 ifTrue: [
            recoveredBlock120Stack1 := (recoveredBlock120Stack1) dbObject.
            recoveredBlock120PC := 138.
        ].
        recoveredBlock120Step = 138 ifTrue: [
            recoveredBlock120Stack2 := recoveredArg2.
            recoveredBlock120PC := 141.
        ].
        recoveredBlock120Step = 141 ifTrue: [
            recoveredBlock120Stack3 := recoveredBlock120Arg1.
            recoveredBlock120PC := 142.
        ].
        recoveredBlock120Step = 142 ifTrue: [
            recoveredBlock120Stack3 := (recoveredBlock120Stack3) label.
            recoveredBlock120PC := 144.
        ].
        recoveredBlock120Step = 144 ifTrue: [
            recoveredBlock120Stack4 := recoveredLocal1.
            recoveredBlock120PC := 147.
        ].
        recoveredBlock120Step = 147 ifTrue: [
            recoveredBlock120Stack3 := (recoveredBlock120Stack3) uniqueStringFor: (recoveredBlock120Stack4).
            recoveredBlock120PC := 149.
        ].
        recoveredBlock120Step = 149 ifTrue: [
            (recoveredBlock120Stack0) moveItem: (recoveredBlock120Stack1) toParent: (recoveredBlock120Stack2) newName: (recoveredBlock120Stack3).
            recoveredBlock120PC := 152.
        ].
        recoveredBlock120Step = 152 ifTrue: [
            recoveredBlock120PC := 181.
        ].
        recoveredBlock120Step = 156 ifTrue: [
            recoveredBlock120Stack0 := recoveredBlock120Arg1.
            recoveredBlock120PC := 157.
        ].
        recoveredBlock120Step = 157 ifTrue: [
            recoveredBlock120Stack1 := recoveredBlock120Arg1.
            recoveredBlock120PC := 158.
        ].
        recoveredBlock120Step = 158 ifTrue: [
            recoveredBlock120Stack1 := (recoveredBlock120Stack1) label.
            recoveredBlock120PC := 160.
        ].
        recoveredBlock120Step = 160 ifTrue: [
            recoveredBlock120Stack2 := recoveredLocal1.
            recoveredBlock120PC := 163.
        ].
        recoveredBlock120Step = 163 ifTrue: [
            recoveredBlock120Stack1 := (recoveredBlock120Stack1) uniqueStringFor: (recoveredBlock120Stack2).
            recoveredBlock120PC := 165.
        ].
        recoveredBlock120Step = 165 ifTrue: [
            (recoveredBlock120Stack0) label: (recoveredBlock120Stack1).
            recoveredBlock120PC := 167.
        ].
        recoveredBlock120Step = 167 ifTrue: [
            recoveredBlock120Stack0 := recoveredArg2.
            recoveredBlock120PC := 170.
        ].
        recoveredBlock120Step = 170 ifTrue: [
            recoveredBlock120Stack1 := recoveredBlock120Arg1.
            recoveredBlock120PC := 171.
        ].
        recoveredBlock120Step = 171 ifTrue: [
            (recoveredBlock120Stack0) addChild: (recoveredBlock120Stack1).
            recoveredBlock120PC := 173.
        ].
        recoveredBlock120Step = 173 ifTrue: [
            recoveredBlock120Stack0 := recoveredLocal1.
            recoveredBlock120PC := 176.
        ].
        recoveredBlock120Step = 176 ifTrue: [
            recoveredBlock120Stack1 := recoveredBlock120Arg1.
            recoveredBlock120PC := 177.
        ].
        recoveredBlock120Step = 177 ifTrue: [
            recoveredBlock120Stack1 := (recoveredBlock120Stack1) label.
            recoveredBlock120PC := 179.
        ].
        recoveredBlock120Step = 179 ifTrue: [
            (recoveredBlock120Stack0) add: (recoveredBlock120Stack1).
            recoveredBlock120PC := 181.
        ].
        recoveredBlock120Step = 181 ifTrue: [
            recoveredBlock120Stack0 := self.
            recoveredBlock120PC := 182.
        ].
        recoveredBlock120Step = 182 ifTrue: [
            recoveredBlock120Stack0 := (recoveredBlock120Stack0) defaultProjectManager.
            recoveredBlock120PC := 184.
        ].
        recoveredBlock120Step = 184 ifTrue: [
            recoveredBlock120Stack1 := recoveredBlock120Arg1.
            recoveredBlock120PC := 185.
        ].
        recoveredBlock120Step = 185 ifTrue: [
            recoveredBlock120Stack0 := (recoveredBlock120Stack0) moveDefaultProjectFor: (recoveredBlock120Stack1).
            recoveredBlock120PC := 187.
        ].
        recoveredBlock120Step = 187 ifTrue: [
            recoveredBlock120Result := recoveredBlock120Stack0.
            recoveredBlock120Done := true.
        ].
    ].
    recoveredBlock120Result
].
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack0 := (recoveredStack0) isWorkspaceMode.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 196] ifFalse: [recoveredPC := 201].
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack0 := (recoveredStack0) internalLibraryLegacy.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            (recoveredStack0) saveAll.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

