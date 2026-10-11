"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200006e8; bytecode file offset 0x8ffcfc"
!DBXml methodsFor: 'recovered'!
deleteIndexFile
    ^self
! !

"ASDBase.ic method 0x20001120; bytecode file offset 0x8ffcfc"
!DBXml methodsFor: 'recovered'!
regenerateSources
    ^self
! !

"ASDBase.ic method 0x20001570; bytecode file offset 0x8ffcfc"
!DBXml methodsFor: 'recovered'!
deleteConfigFile
    ^self
! !

"ASDBase.ic method 0x200024b0; bytecode file offset 0x8ffcfc"
!DBXml methodsFor: 'recovered'!
compactDataBase
    ^self
! !

"ASDBase.ic method 0x200028e8; bytecode file offset 0x8ffcfc"
!DBXml methodsFor: 'recovered'!
interface
    ^self
! !

"ASDBase.ic method 0x200032f8; bytecode file offset 0x8ffcfc"
!DBXml methodsFor: 'recovered'!
reopenDataBase
    ^self
! !

"ASDBase.ic method 0x20003cb0; bytecode file offset 0x90206c"
!DBXml methodsFor: 'recovered'!
loadFromBytes: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20003f90; bytecode file offset 0x90206c"
!DBXml methodsFor: 'recovered'!
progressWindow: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20004e48; bytecode file offset 0x90206c"
!DBXml methodsFor: 'recovered'!
showCreation: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x200050b8; bytecode file offset 0x90206c"
!DBXml methodsFor: 'recovered'!
cacheSizeLimit: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20005d30; bytecode file offset 0x902744"
!DBXml methodsFor: 'recovered'!
dbConfigurationAt: recoveredArg1 put: recoveredArg2
    ^self
! !

"ASDBase.ic method 0x20006980; bytecode file offset 0x908be4"
!DBXml methodsFor: 'recovered'!
referencePath
    | recoveredValue0 |
    recoveredValue0 := (self) workspacePath.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20008a8c; bytecode file offset 0x908be4"
!DBXml methodsFor: 'recovered'!
getCachedObjects
    | recoveredValue0 |
    recoveredValue0 := (self) objects.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20009bb4; bytecode file offset 0x908be4"
!DBXml methodsFor: 'recovered'!
garbageCollect
    | recoveredValue0 |
    recoveredValue0 := (self) emptyCache.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000aec8; bytecode file offset 0x908be4"
!DBXml methodsFor: 'recovered'!
pathName
    | recoveredValue0 |
    recoveredValue0 := (self) workspacePath.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000cf84; bytecode file offset 0x909ab8"
!DBXml methodsFor: 'recovered'!
loadCache: recoveredArg1
    ^nil
! !

"ASDBase.ic method 0x2000d22c; bytecode file offset 0x909e08"
!DBXml methodsFor: 'recovered'!
updateDataStorageReferencesProgressWindow: recoveredArg1
    ^true
! !

"ASDBase.ic method 0x2000d884; bytecode file offset 0x90a4b8"
!DBXml methodsFor: 'recovered'!
loadProxy: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000db84; bytecode file offset 0x90a4b8"
!DBXml methodsFor: 'recovered'!
readRecord: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000f43c; bytecode file offset 0x90bd10"
!DBXml methodsFor: 'recovered'!
dump: recoveredArg1 intoFile: recoveredArg2
    ^true
! !

"ASDBase.ic method 0x20013d04; bytecode file offset 0x912098"
!DBXml methodsFor: 'recovered'!
recordClass
    | recoveredValue0 |
    recoveredValue0 := CTreeSearchObjectRecord.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20018b30; bytecode file offset 0x92209c"
!DBXml methodsFor: 'recovered'!
interfaceName
    ^'Workspace'
! !

"ASDBase.ic method 0x2001a4b0; bytecode file offset 0x92209c"
!DBXml methodsFor: 'recovered'!
getDatabaseDirectories
    ^#('C:\tmp')
! !

"ASDBase.ic method 0x2001ae94; bytecode file offset 0x92209c"
!DBXml methodsFor: 'recovered'!
iconName
    ^'GeneralWorkspace'
! !

"ASDBase.ic method 0x20025c90; bytecode file offset 0x923928"
!DBXml methodsFor: 'recovered'!
xmlPathString
    ^''
! !

"ASDBase.ic method 0x20027368; bytecode file offset 0x923d40"
!DBXml methodsFor: 'recovered'!
closeLocalDatabase
    | recoveredValue0 |
    recoveredValue0 := (self) closeLocalDatabaseNotify: (true).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200355a4; bytecode file offset 0x934580"
!DBXml methodsFor: 'recovered'!
isCommitted
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) getModifiedItemsWithoutDefaultProjects.
    recoveredValue1 := (recoveredValue0) isEmpty.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20039174; bytecode file offset 0x935c54"
!DBXml methodsFor: 'recovered'!
disableCachingWhile: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) value.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003a1cc; bytecode file offset 0x938608"
!DBXml methodsFor: 'recovered'!
isSameInterfaceType: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) equals: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003a8bc; bytecode file offset 0x938608"
!DBXml methodsFor: 'recovered'!
getOidBytesFromAlphaNumString: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) bytesFromString: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003e598; bytecode file offset 0x93bf94"
!DBXml methodsFor: 'recovered'!
getDataBaseInfo
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := DBXmlInfo.
    recoveredValue1 := (recoveredValue0) new.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004118c; bytecode file offset 0x93dd2c"
!DBXml methodsFor: 'recovered'!
getNewOidBytes
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := globalIdServer.
    recoveredValue1 := (recoveredValue0) getNewGlobalId.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200421d0; bytecode file offset 0x93eb24"
!DBXml methodsFor: 'recovered'!
databasePath
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := workspacePath.
    recoveredValue1 := (recoveredValue0) pathName.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200429cc; bytecode file offset 0x9451f8"
!DBXml methodsFor: 'recovered'!
children
    | recoveredValue0 |
    recoveredValue0 := (self) objectsForClass: ('SGLibrary').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004964c; bytecode file offset 0x947128"
!DBXml methodsFor: 'recovered'!
getNewDBProxy
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) getNewOidBytes.
    recoveredValue1 := (self) makeProxy: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20050754; bytecode file offset 0x94d048"
!DBXml methodsFor: 'recovered'!
incGetObject
    (self) etasDevHalt.
    ^self
! !

"ASDBase.ic method 0x20052874; bytecode file offset 0x94f200"
!DBXml methodsFor: 'recovered'!
loadFromFile: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20052b18; bytecode file offset 0x9505d0"
!DBXml methodsFor: 'recovered'!
writeModified: recoveredArg1
    (self) halt.
    ^self
! !

"ASDBase.ic method 0x2005bc2c; bytecode file offset 0x958548"
!DBXml methodsFor: 'recovered'!
exportController
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := DBExImportController.
    recoveredValue1 := (recoveredValue0) create: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005e7fc; bytecode file offset 0x95b0c0"
!DBXml methodsFor: 'recovered'!
openLocalDatabase
    | recoveredValue0 |
    recoveredValue0 := ('todo') notNil.
    ^self
! !

"ASDBase.ic method 0x2005eec0; bytecode file offset 0x95b7f0"
!DBXml methodsFor: 'recovered'!
saveAll
    (self) saveAllProgressOn: (nil).
    ^self
! !

"ASDBase.ic method 0x2005fe3c; bytecode file offset 0x95c79c"
!DBXml methodsFor: 'recovered'!
emptyCache
    (self) emptyCache: (true).
    ^self
! !

"ASDBase.ic method 0x20064214; bytecode file offset 0x961970"
!DBXml methodsFor: 'recovered'!
closeOnly
    | recoveredValue0 |
    recoveredValue0 := (self) workspaceManager.
    (recoveredValue0) closeWorkspace.
    ^self
! !

"ASDBase.ic method 0x2006592c; bytecode file offset 0x963428"
!DBXml methodsFor: 'recovered'!
workspaceManager
    | recoveredValue0 |
    recoveredValue0 := wsManager.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20067dec; bytecode file offset 0x9646f8"
!DBXml methodsFor: 'recovered'!
workspaceFilename
    | recoveredValue0 |
    recoveredValue0 := workspaceFile.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20067ea4; bytecode file offset 0x965b90"
!DBXml methodsFor: 'recovered'!
globalIdServer
    | recoveredValue0 |
    recoveredValue0 := globalIdServer.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006bde8; bytecode file offset 0x96873c"
!DBXml methodsFor: 'recovered'!
errorController
    | recoveredValue0 |
    recoveredValue0 := errorController.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006cb20; bytecode file offset 0x969c04"
!DBXml methodsFor: 'recovered'!
catalog
    | recoveredValue0 |
    recoveredValue0 := catalog.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006e708; bytecode file offset 0x96b41c"
!DBXml methodsFor: 'recovered'!
workspacePath
    | recoveredValue0 |
    recoveredValue0 := workspacePath.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006eb38; bytecode file offset 0x96b41c"
!DBXml methodsFor: 'recovered'!
basePath
    | recoveredValue0 |
    recoveredValue0 := workspacePath.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006f728; bytecode file offset 0x96c1f4"
!DBXml methodsFor: 'recovered'!
frozen
    | recoveredValue0 |
    recoveredValue0 := frozen.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20073818; bytecode file offset 0x970b34"
!DBXml methodsFor: 'recovered'!
objectCache
    ^nil
! !

"ASDBase.ic method 0x20074ff4; bytecode file offset 0x9757c8"
!DBXml methodsFor: 'recovered'!
lowDiskSpaceWarning
    ^true
! !

"ASDBase.ic method 0x20075e04; bytecode file offset 0x9757c8"
!DBXml methodsFor: 'recovered'!
isWorkspaceMode
    ^true
! !

"ASDBase.ic method 0x20081ed0; bytecode file offset 0x97e9b0"
!DBXml methodsFor: 'recovered'!
outdatedGlobalId: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := globalIdServer.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) outdatedGlobalId: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20081ee8; bytecode file offset 0x97e9b0"
!DBXml methodsFor: 'recovered'!
stringFromBytes: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := globalIdServer.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) stringFromBytes: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20081ff0; bytecode file offset 0x97e9b0"
!DBXml methodsFor: 'recovered'!
validateGlobalId: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := globalIdServer.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) validateGlobalId: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200820d4; bytecode file offset 0x97e9b0"
!DBXml methodsFor: 'recovered'!
bytesFromString: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := globalIdServer.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) bytesFromString: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008271c; bytecode file offset 0x97efd4"
!DBXml methodsFor: 'recovered'!
saveConfiguration: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := ('todo') notNil.
    ^self
! !

"ASDBase.ic method 0x200844f8; bytecode file offset 0x981ca4"
!DBXml methodsFor: 'recovered'!
commitShowProgressOn: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) saveAllProgressOn: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x20089bf0; bytecode file offset 0x986668"
!DBXml methodsFor: 'recovered'!
makeUUIDManager
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := DBXmlUuidLookup.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := (recoveredValue1) initOn: (self).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008ac58; bytecode file offset 0x987514"
!DBXml methodsFor: 'recovered'!
lockFilename
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := workspaceFile.
    recoveredValue1 := (recoveredValue0) , ('.wslock').
    ^recoveredValue1
! !

"ASDBase.ic method 0x2008cee4; bytecode file offset 0x989db0"
!DBXml methodsFor: 'recovered'!
readWorkspace
    | recoveredValue0 |
    recoveredValue0 := (self) workspaceFilename.
    (self) doReadWorkspace: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x20092bc4; bytecode file offset 0x98f480"
!DBXml methodsFor: 'recovered'!
getTimeStampFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := globalIdServer.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) globalId.
    recoveredValue3 := (recoveredValue0) getTimeStampFrom: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20093a10; bytecode file offset 0x9904ac"
!DBXml methodsFor: 'recovered'!
getNewDBProxy: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) getNewOidBytes.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) makeObject: (recoveredValue0) data: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20093c9c; bytecode file offset 0x9905e8"
!DBXml methodsFor: 'recovered'!
getNewDBProxyFromAlphaNumString: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) globalIdServer.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) fromAlphaNumString: (recoveredValue1).
    recoveredValue3 := (self) makeProxy: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2009964c; bytecode file offset 0x995f04"
!DBXml methodsFor: 'recovered'!
writeModifiedToDatabaseShowProgressOn: recoveredArg1 maxObjects: recoveredArg2
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) saveAllProgressOn: (recoveredValue0).
    ^0
! !

"ASDBase.ic method 0x2009bb0c; bytecode file offset 0x998444"
!DBXml methodsFor: 'recovered'!
unlock
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := CfsFileDescriptor.
    recoveredValue1 := (self) lockFilename.
    (recoveredValue0) remove: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a24f8; bytecode file offset 0x99ee44"
!DBXml methodsFor: 'recovered'!
queriesForClassName: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Array.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) queryForClassName: (recoveredValue1).
    recoveredValue3 := (recoveredValue0) with: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200a2534; bytecode file offset 0x99ee44"
!DBXml methodsFor: 'recovered'!
queriesForFirstVersionId: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Array.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) queryForFirstVersionId: (recoveredValue1).
    recoveredValue3 := (recoveredValue0) with: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200a2c1c; bytecode file offset 0x99f57c"
!DBXml methodsFor: 'recovered'!
logWarning: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGMonitorStreamDummy.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) addWarningText: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200a2c30; bytecode file offset 0x99f57c"
!DBXml methodsFor: 'recovered'!
logFatal: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGMonitorStreamDummy.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) addErrorText: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200a2c94; bytecode file offset 0x99f57c"
!DBXml methodsFor: 'recovered'!
logInfo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGMonitorStreamDummy.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) addInfoText: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200ac3d8; bytecode file offset 0x9a8c98"
!DBXml methodsFor: 'recovered'!
queriesExactForClassName: recoveredArg1 name: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Array.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) queryExactForClassName: (recoveredValue1).
    recoveredValue3 := (recoveredValue0) with: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200acc1c; bytecode file offset 0x9a94d4"
!DBXml methodsFor: 'recovered'!
registerUUID: recoveredArg1 dbo: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := uuids.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (recoveredValue0) at: (recoveredValue1) put: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200b1ab0; bytecode file offset 0x9ae364"
!DBXml methodsFor: 'recovered'!
nextAccessCount
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := accessCount.
    recoveredValue1 := (recoveredValue0) + (1).
    accessCount := recoveredValue1.
    recoveredValue2 := accessCount.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200b7c40; bytecode file offset 0x9b4504"
!DBXml methodsFor: 'recovered'!
existsFilesInPath: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := CfsStat.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) , ('/newdb.marker').
    recoveredValue3 := (recoveredValue0) exists: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200b7efc; bytecode file offset 0x9b48c0"
!DBXml methodsFor: 'recovered'!
queryWildcardForName: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := DBXmlQueryName.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) initOn: (self) pattern: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200b7f38; bytecode file offset 0x9b48c0"
!DBXml methodsFor: 'recovered'!
queryForFirstVersionId: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := DBXmlQueryFirstVersionId.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) initOn: (self) firstVersionId: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200b7f4c; bytecode file offset 0x9b48c0"
!DBXml methodsFor: 'recovered'!
queryExactForName: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := DBXmlQueryExactName.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) initOn: (self) name: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200b7f60; bytecode file offset 0x9b48c0"
!DBXml methodsFor: 'recovered'!
queryExactForClassName: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := DBXmlQueryClassName.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) initOn: (self) name: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200b7f9c; bytecode file offset 0x9b48c0"
!DBXml methodsFor: 'recovered'!
queryExactForClassNames: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := DBXmlQueryClassNamesWildcard.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) initOn: (self) patterns: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200b7fb0; bytecode file offset 0x9b48c0"
!DBXml methodsFor: 'recovered'!
queryForClassName: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := DBXmlQueryClassName.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) initOn: (self) name: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200b7fc4; bytecode file offset 0x9b48c0"
!DBXml methodsFor: 'recovered'!
queryWildcardForClassNames: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := DBXmlQueryClassNamesWildcard.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) initOn: (self) patterns: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200b7fd8; bytecode file offset 0x9b48c0"
!DBXml methodsFor: 'recovered'!
queryExactFullNameForName: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := DBXmlQueryExactName.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) initOn: (self) name: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200c2dac; bytecode file offset 0x9bfde0"
!DBXml methodsFor: 'recovered'!
noSave: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    noSave := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2eac; bytecode file offset 0x9bfde0"
!DBXml methodsFor: 'recovered'!
setNoSave: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    noSave := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c50d0; bytecode file offset 0x9c1afc"
!DBXml methodsFor: 'recovered'!
changePath: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    workspacePath := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5448; bytecode file offset 0x9c1f64"
!DBXml methodsFor: 'recovered'!
setAbuse: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    abuse := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5f08; bytecode file offset 0x9c2804"
!DBXml methodsFor: 'recovered'!
frozen: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    frozen := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c8ae0; bytecode file offset 0x9c53b0"
!DBXml methodsFor: 'recovered'!
deleteAll: recoveredArg1 progressWindow: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    (self) deleteAll: (recoveredValue0) progressWindow: (recoveredValue1) save: (false).
    ^self
! !

"ASDBase.ic method 0x200cbb58; bytecode file offset 0x9c841c"
!DBXml methodsFor: 'recovered'!
existsFiles
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := CfsStat.
    recoveredValue1 := workspacePath.
    recoveredValue2 := (recoveredValue1) , ('/newdb.marker').
    recoveredValue3 := (recoveredValue0) exists: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200e1ab8; bytecode file offset 0x9de37c"
!DBXml methodsFor: 'recovered'!
allFolders
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ('Kli') == ('BOSCH_CC_WORKSPACE').
    recoveredValue1 := (self) objectsForClasses: (#('SGLibrary' 'RBFolder')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200eb2b8; bytecode file offset 0x9e7b78"
!DBXml methodsFor: 'recovered'!
queryExactForClassName: recoveredArg1 name: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := DBXmlQueryContainer.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue1) initOn: (self) className: (recoveredValue2) name: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200eed58; bytecode file offset 0x9eb618"
!DBXml methodsFor: 'recovered'!
makeNewProxy: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) getNewOidBytes.
    recoveredValue1 := (self) makeProxy: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) importDesc: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x200f0390; bytecode file offset 0x9ecc54"
!DBXml methodsFor: 'recovered'!
pathNameLimit
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := Util.
    recoveredValue1 := (recoveredValue0) maxPathLen.
    recoveredValue2 := (self) workspacePath.
    recoveredValue3 := (recoveredValue2) size.
    recoveredValue4 := (recoveredValue1) - (recoveredValue3).
    recoveredValue5 := (recoveredValue4) - (36).
    ^recoveredValue5
! !

"ASDBase.ic method 0x200f2308; bytecode file offset 0x9eebd8"
!DBXml methodsFor: 'recovered'!
isOpen
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
            recoveredStack2 := workspaceFile.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := workspaceFile.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x200f74c4; bytecode file offset 0x9f4e38"
!DBXml methodsFor: 'recovered'!
getModifiedItems
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) objects.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c4524Arg1 | 
    | block280c4524Value0 block280c4524Value1 |
    block280c4524Value0 := block280c4524Arg1.
    block280c4524Value1 := (block280c4524Value0) dbXmlIsModifiedItem.
    block280c4524Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200f786c; bytecode file offset 0x9f4e38"
!DBXml methodsFor: 'recovered'!
getModifiedObjects
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) objects.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c4aa0Arg1 | 
    | block280c4aa0Value0 block280c4aa0Value1 |
    block280c4aa0Value0 := block280c4aa0Arg1.
    block280c4aa0Value1 := (block280c4aa0Value0) isModified.
    block280c4aa0Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200f89dc; bytecode file offset 0x9f5298"
!DBXml methodsFor: 'recovered'!
commit
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
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
            (recoveredStack0) saveAll.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2010506c; bytecode file offset 0xa01934"
!DBXml methodsFor: 'recovered'!
emergencyCloseDatabase
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := EtasComponentLoader.
    (recoveredValue0) terminate.
    (self) dispose.
    recoveredValue1 := (self) workspaceManager.
    (recoveredValue1) closeWorkspace.
    ^self
! !

"ASDBase.ic method 0x2010591c; bytecode file offset 0xa021f8"
!DBXml methodsFor: 'recovered'!
location
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := workspaceFile.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := workspaceFile.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20105ed8; bytecode file offset 0xa02790"
!DBXml methodsFor: 'recovered'!
getLastError
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := errorController.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := errorController.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) getLastError.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2010c90c; bytecode file offset 0xa091d4"
!DBXml methodsFor: 'recovered'!
logError: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := SGMonitorStreamDummy.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) addErrorText: (recoveredValue2).
    recoveredValue3 := System.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) logError: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x2010d298; bytecode file offset 0xa09b5c"
!DBXml methodsFor: 'recovered'!
copyFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('todo') notNil.
    recoveredValue1 := Util.
    (recoveredValue1) show: ('(EE) Returning original as copy').
    recoveredValue2 := recoveredArg1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20110ab0; bytecode file offset 0xa0d378"
!DBXml methodsFor: 'recovered'!
initOn: recoveredArg1 path: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue1) , ('\workspace').
    recoveredValue3 := MainController.
    recoveredValue4 := (recoveredValue3) workspaceExtension.
    recoveredValue5 := (recoveredValue2) , (recoveredValue4).
    recoveredValue6 := (self) initOn: (recoveredValue0) file: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x201130b4; bytecode file offset 0xa0f97c"
!DBXml methodsFor: 'recovered'!
aboutToOverwriteItem: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := MainController.
    recoveredValue1 := (recoveredValue0) metaDataManager.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) globalId.
    recoveredValue4 := (recoveredValue1) aboutToOverwriteItemID: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredArg1.
    (recoveredValue5) deleteFromDisk.
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x2011e568; bytecode file offset 0xa1ae28"
!DBXml methodsFor: 'recovered'!
emptyCache: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:block280c8b2cArg1 | 
    | block280c8b2cValue0 block280c8b2cValue1 |
    block280c8b2cValue0 := block280c8b2cArg1.
    block280c8b2cValue1 := (block280c8b2cValue0) size.
    block280c8b2cValue1
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) garbageCollect: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2012272c; bytecode file offset 0xa1efe8"
!DBXml methodsFor: 'recovered'!
delete: recoveredArg1 commit: recoveredArg2
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
            (recoveredStack0) delete: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := recoveredArg2.
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
            (recoveredStack0) saveWorkspace.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20127cb4; bytecode file offset 0xa24578"
!DBXml methodsFor: 'recovered'!
getNewDBDirectories: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) location.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := CfsDirectoryDescriptor.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) findDirectoryNames: ('*') in: (recoveredValue2).
    recoveredLocal4 := recoveredValue3.
    recoveredValue4 := recoveredLocal4.
    ^recoveredValue4
! !

"ASDBase.ic method 0x20130a7c; bytecode file offset 0xa2d33c"
!DBXml methodsFor: 'recovered'!
objectsForClass: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := classes.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := [
    #()
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2013910c; bytecode file offset 0xa359c8"
!DBXml methodsFor: 'recovered'!
makeObject: recoveredArg1 data: recoveredArg2
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
            recoveredStack0 := (recoveredStack0) makeProxy: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) object: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2013b844; bytecode file offset 0xa38118"
!DBXml methodsFor: 'recovered'!
internalDefaultProjectManager
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := defaultProjectManager.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := DBXmlDefaultProjectManager.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) initialize.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            defaultProjectManager := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := defaultProjectManager.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2013c840; bytecode file offset 0xa39110"
!DBXml methodsFor: 'recovered'!
signalPath
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ('Kli') == ('Call_2009404176').
    recoveredValue1 := (self) location.
    recoveredValue2 := (recoveredValue1) pathName.
    recoveredValue3 := (recoveredValue2) asPathname.
    recoveredValue4 := (recoveredValue3) , ('signal\').
    ^recoveredValue4
! !

"ASDBase.ic method 0x2014f544; bytecode file offset 0xa4be30"
!DBXml methodsFor: 'recovered'!
allItems
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) objects.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280cd0a4Arg1 | 
    | block280cd0a4Value0 block280cd0a4Value1 block280cd0a4Value2 block280cd0a4Value3 |
    block280cd0a4Value0 := (Set new) add: (ARClientServerInterface); add: (SGImageDB); add: (ASDElementInterface); add: (SGLibrarySignal); add: (ASDLibraryInterface); add: (SGLibraryAsap2Item); add: (ASDGenericComponent); add: (SGItem); add: (ARSenderReceiverInterface); add: (SGLibraryFolder); add: (SGLibraryProject); add: (SGComponent); add: (SGAsap2Item); add: (SGEnumerationDB); add: (SGSignalItem); add: (SGLibraryEnumeration); add: (ARLibraryModeGroup); add: (SGClass); add: (ARAtomicSoftwareComponent); add: (ASDInterface); add: (ASDExperimentComponent); add: (SGModule); add: (SGProject); add: (ARLibraryAutosar); add: (SGLibraryContainer); add: (ASDContainer); add: (SGLibraryClass); add: (ASDRecord); add: (ASDMethodInterface); add: (SGLibrary); add: (SGLibraryIcon); add: (SGItemWithSpec); add: (SGContinuousTimeClass); add: (ARDataInterface); add: (ARModeGroupDB); add: (ARCalibrationInterface); yourself.
    block280cd0a4Value1 := block280cd0a4Arg1.
    block280cd0a4Value2 := (block280cd0a4Value1) objectClass.
    block280cd0a4Value3 := (block280cd0a4Value0) includes: (block280cd0a4Value2).
    block280cd0a4Value3
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2014f598; bytecode file offset 0xa4be64"
!DBXml methodsFor: 'recovered'!
getItemObjects
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) objects.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280cd0ecArg1 | 
    | block280cd0ecValue0 block280cd0ecValue1 block280cd0ecValue2 block280cd0ecValue3 |
    block280cd0ecValue0 := block280cd0ecArg1.
    block280cd0ecValue1 := (block280cd0ecValue0) object.
    block280cd0ecValue2 := SGComponent.
    block280cd0ecValue3 := (block280cd0ecValue1) isKindOf: (block280cd0ecValue2).
    block280cd0ecValue3
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20165f0c; bytecode file offset 0xa627e0"
!DBXml methodsFor: 'recovered'!
removeAll: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (self) remove: (recoveredBlock5Value0).
    recoveredBlock5Value1
].
    (recoveredValue0) do: (recoveredValue1).
    (self) saveWorkspace.
    ^self
! !

"ASDBase.ic method 0x201777b0; bytecode file offset 0xa7406c"
!DBXml methodsFor: 'recovered'!
itemByUUID: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := uuids.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    ^nil
].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    recoveredValue4 := (recoveredValue3) object.
    ^recoveredValue4
! !

"ASDBase.ic method 0x2017f284; bytecode file offset 0xa7bb48"
!DBXml methodsFor: 'recovered'!
rawObjects
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := objects.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 10].
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
            recoveredStack3 := 'Attempt to access uninitialized workspace object list'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) runtimeAssert: (recoveredStack2) additionalInfo: (recoveredStack3).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := AbtHighCapacityLookupTable.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := objects.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201813d8; bytecode file offset 0xa7dcbc"
!DBXml methodsFor: 'recovered'!
getModifiedItemsWithoutDefaultProjects
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getModifiedItems.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280d0248Arg1 | 
    | block280d0248Stack0 block280d0248Stack1 block280d0248Stack2 block280d0248Stack3 block280d0248PC block280d0248Step block280d0248Done block280d0248Result |
    block280d0248Stack0 := self.
    block280d0248PC := 4.
    block280d0248Done := false.
    [block280d0248Done not] whileTrue: [
        block280d0248Step := block280d0248PC.
        block280d0248Step = 4 ifTrue: [
            block280d0248Stack1 := true.
            block280d0248PC := 5.
        ].
        block280d0248Step = 5 ifTrue: [
            block280d0248Stack2 := block280d0248Arg1.
            block280d0248PC := 6.
        ].
        block280d0248Step = 6 ifTrue: [
            block280d0248Stack2 := (block280d0248Stack2) isDefaultProject.
            block280d0248PC := 7.
        ].
        block280d0248Step = 7 ifTrue: [
            (block280d0248Stack2) ifTrue: [block280d0248PC := 13] ifFalse: [block280d0248PC := 10].
        ].
        block280d0248Step = 10 ifTrue: [
            block280d0248PC := 11.
        ].
        block280d0248Step = 11 ifTrue: [
            block280d0248Stack1 := block280d0248Arg1.
            block280d0248PC := 12.
        ].
        block280d0248Step = 12 ifTrue: [
            block280d0248Stack1 := (block280d0248Stack1) isDefaultDefaultProject.
            block280d0248PC := 13.
        ].
        block280d0248Step = 13 ifTrue: [
            block280d0248Result := block280d0248Stack1.
            block280d0248Done := true.
        ].
    ].
    block280d0248Result
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) reject: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20185f3c; bytecode file offset 0xa827f8"
!DBXml methodsFor: 'recovered'!
holdModifiedWhile: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) getModifiedObjects.
    holdModified := recoveredValue0.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    holdModified := nil.
    nil
].
    (recoveredValue1) ensure: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20194a1c; bytecode file offset 0xa912e4"
!DBXml methodsFor: 'recovered'!
remove: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) className.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := classes.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) className.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) remove: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) clear.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201ae918; bytecode file offset 0xaab1e0"
!DBXml methodsFor: 'recovered'!
databaseRootPath
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := workspacePath.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := workspacePath.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := workspacePath.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (-1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) pathName.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201c74f0; bytecode file offset 0xac3db4"
!DBXml methodsFor: 'recovered'!
objects
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := objects.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := objects.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) values.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [:block280d47c0Arg1 | 
    | block280d47c0Value0 block280d47c0Value1 |
    block280d47c0Value0 := block280d47c0Arg1.
    block280d47c0Value1 := (block280d47c0Value0) notNil.
    block280d47c0Value1
].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201caf6c; bytecode file offset 0xac7838"
!DBXml methodsFor: 'recovered'!
noSave
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := EtasXMLDefinedOptions.
    recoveredValue1 := (recoveredValue0) instance.
    recoveredValue2 := (recoveredValue1) getOption: ('NoSaveMode') fromCategory: ('ToolSettings\Workspace').
    recoveredValue3 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 |
    recoveredBlock13Value0 := recoveredBlock13Arg1.
    ^recoveredBlock13Value0
].
    (recoveredValue2) ifNotNil: (recoveredValue3).
    recoveredValue4 := noSave.
    ^recoveredValue4
! !

"ASDBase.ic method 0x201ce228; bytecode file offset 0xacaaf0"
!DBXml methodsFor: 'recovered'!
makeProxy: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) rawObjects.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 |
    recoveredBlock8Value0 := DBXmlObject.
    recoveredBlock8Value1 := (recoveredBlock8Value0) new.
    recoveredBlock8Value2 := recoveredArg1.
    recoveredBlock8Value3 := (recoveredBlock8Value1) initOn: (self) oid: (recoveredBlock8Value2).
    recoveredBlock8Value3
].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsentPut: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x201ce2cc; bytecode file offset 0xacab90"
!DBXml methodsFor: 'recovered'!
writeRecord: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) rawObjects.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) globalId.
    recoveredValue3 := [
    ^nil
].
    recoveredValue4 := (recoveredValue0) at: (recoveredValue2) ifAbsent: (recoveredValue3).
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) object: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x201d1acc; bytecode file offset 0xace3a4"
!DBXml methodsFor: 'recovered'!
loadFailed: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) getDescription.
    recoveredValue2 := ('Failed to access an item: ') , (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := ('MultiInstance') == ('Kk').
    recoveredValue4 := SGMonitorStreamDummy.
    recoveredValue5 := (recoveredValue4) create.
    recoveredValue6 := recoveredLocal1.
    (recoveredValue5) addErrorText: (recoveredValue6).
    (self) etasDevHalt.
    ^self
! !

"ASDBase.ic method 0x2020569c; bytecode file offset 0xb01f68"
!DBXml methodsFor: 'recovered'!
workspaceBasename
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := RBBcrtl32DLL.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := (self) workspaceFilename.
    recoveredValue3 := (recoveredValue1) splitPath: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue4) at: (1).
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (recoveredValue6) at: (2).
    recoveredValue8 := (recoveredValue5) , (recoveredValue7).
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := (recoveredValue9) at: (3).
    recoveredValue11 := (recoveredValue8) , (recoveredValue10).
    ^recoveredValue11
! !

"ASDBase.ic method 0x202444a4; bytecode file offset 0xb40d74"
!DBXml methodsFor: 'recovered'!
dbObjectFor: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 recoveredBlock4Value4 |
    recoveredBlock4Value0 := DBError.
    recoveredBlock4Value1 := recoveredArg1.
    recoveredBlock4Value2 := (recoveredBlock4Value1) printString.
    recoveredBlock4Value3 := ('No object with OID %1 found!!') bindWith: (recoveredBlock4Value2).
    recoveredBlock4Value4 := (recoveredBlock4Value0) createDebugMonitor: (recoveredBlock4Value3).
    recoveredBlock4Value4
].
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := (self) rawObjects.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (recoveredValue1) at: (recoveredValue2) ifAbsent: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20265c30; bytecode file offset 0xb62500"
!DBXml methodsFor: 'recovered'!
queryForName: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) last.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := $*.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := '*'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 29.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := DBXmlQueryName.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) initOn: (recoveredStack2) pattern: (recoveredStack3).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20274310; bytecode file offset 0xb70bd8"
!DBXml methodsFor: 'recovered'!
copyItem: recoveredArg1 toParent: recoveredArg2 newName: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := SGDatabaseAccess.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isKindOf: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) label.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 29.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) dbXmlCopyInto: (recoveredStack2) name: (recoveredStack3).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) saveAll.
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

"ASDBase.ic method 0x20293820; bytecode file offset 0xb900f8"
!DBXml methodsFor: 'recovered'!
objectFor: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 recoveredBlock4Value4 |
    recoveredBlock4Value0 := DBError.
    recoveredBlock4Value1 := recoveredArg1.
    recoveredBlock4Value2 := (recoveredBlock4Value1) printString.
    recoveredBlock4Value3 := ('No object with OID %1 found!!') bindWith: (recoveredBlock4Value2).
    recoveredBlock4Value4 := (recoveredBlock4Value0) createDebugMonitor: (recoveredBlock4Value3).
    ^recoveredBlock4Value4
].
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := (self) rawObjects.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (recoveredValue1) at: (recoveredValue2) ifAbsent: (recoveredValue3).
    recoveredValue5 := (recoveredValue4) object.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (recoveredValue5) ifNil: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x202a5a94; bytecode file offset 0xba2360"
!DBXml methodsFor: 'recovered'!
handleDynamicLoadIssues: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 recoveredBlock11Value4 |
    recoveredBlock11Value0 := recoveredLocal1.
    recoveredBlock11Value1 := recoveredBlock11Arg1.
    recoveredBlock11Value2 := (recoveredBlock11Value1) repair: (self).
    recoveredBlock11Value3 := (recoveredBlock11Value0) & (recoveredBlock11Value2).
    recoveredBlock11Value4 := recoveredBlock11Value3.
    recoveredLocal1 := recoveredBlock11Value4.
    recoveredBlock11Value3
].
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := ExASDXML.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := 'Unable to load'.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1) signalWith: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202b00a0; bytecode file offset 0xbac968"
!DBXml methodsFor: 'recovered'!
dynamicallyLoaded: recoveredArg1 object: recoveredArg2 name: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) rawObjects.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    | recoveredBlock8Value0 recoveredBlock8Value1 |
    (self) etasDBXmlHalt.
    recoveredBlock8Value0 := recoveredArg1.
    recoveredBlock8Value1 := (self) makeProxy: (recoveredBlock8Value0).
    recoveredBlock8Value1
].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredArg2.
    recoveredValue7 := recoveredArg3.
    (recoveredValue4) dynamicallyLoaded: (recoveredValue5) object: (recoveredValue6) name: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    ^recoveredValue8
! !

"ASDBase.ic method 0x202d1240; bytecode file offset 0xbcdb10"
!DBXml methodsFor: 'recovered'!
classChanged: recoveredArg1 new: recoveredArg2 old: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := classes.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) remove: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := classes.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := [
    | block280e6124Value0 block280e6124Value1 |
    block280e6124Value0 := Set.
    block280e6124Value1 := (block280e6124Value0) new.
    block280e6124Value1
].
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsentPut: (recoveredStack3).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202d28d0; bytecode file offset 0xbcf1b0"
!DBXml methodsFor: 'recovered'!
dbXmlDesc
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasXmlSupportDOMElement.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 'workspace'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) initOn: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := [:block280e6220Arg1 :block280e6220Arg2 | 
    | block280e6220Value0 block280e6220Value1 block280e6220Value2 |
    block280e6220Value0 := block280e6220Arg1.
    block280e6220Value1 := block280e6220Arg2.
    block280e6220Value2 := (block280e6220Value0) dbXmlBefore: (block280e6220Value1).
    block280e6220Value2
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := [:recoveredBlock27Arg1 | 
    | recoveredBlock27Value0 recoveredBlock27Value1 recoveredBlock27Value2 recoveredBlock27Value3 |
    recoveredBlock27Value0 := recoveredLocal1.
    recoveredBlock27Value1 := recoveredBlock27Arg1.
    recoveredBlock27Value2 := (recoveredBlock27Value1) dbXmlDesc.
    recoveredBlock27Value3 := (recoveredBlock27Value0) addSubElement: (recoveredBlock27Value2).
    recoveredBlock27Value3
].
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202e360c; bytecode file offset 0xbdfef0"
!DBXml methodsFor: 'recovered'!
initPathNames: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := CfsDirectoryDescriptor.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    | recoveredBlock9Value0 recoveredBlock9Value1 recoveredBlock9Value2 recoveredBlock9Value3 recoveredBlock9Value4 |
    recoveredBlock9Value0 := Transcript.
    recoveredBlock9Value1 := recoveredBlock9Value0.
    recoveredBlock9Value2 := recoveredArg1.
    recoveredBlock9Value3 := (recoveredBlock9Value2) , (' already exists').
    (recoveredBlock9Value1) show: (recoveredBlock9Value3).
    recoveredBlock9Value4 := (recoveredBlock9Value0) cr.
    recoveredBlock9Value4
].
    (recoveredValue0) mkdir: (recoveredValue1) ifPresent: (recoveredValue2).
    recoveredValue3 := CfsWriteFileStream.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) , ('/newdb.marker').
    recoveredValue6 := (recoveredValue3) open: (recoveredValue5).
    (recoveredValue6) close.
    recoveredValue7 := recoveredArg1.
    (self) changePath: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x202e7858; bytecode file offset 0xbe412c"
!DBXml methodsFor: 'recovered'!
changeOIDFor: recoveredArg1 to: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := (self) rawObjects.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := [
    | recoveredBlock8Value0 recoveredBlock8Value1 |
    recoveredBlock8Value0 := recoveredArg2.
    recoveredBlock8Value1 := (self) makeProxy: (recoveredBlock8Value0).
    recoveredBlock8Value1
].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) object.
    (recoveredValue4) object: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := (recoveredValue8) name.
    (recoveredValue7) name: (recoveredValue9).
    recoveredValue10 := recoveredArg1.
    (self) delete: (recoveredValue10).
    ^self
! !

"ASDBase.ic method 0x202fad44; bytecode file offset 0xbf7618"
!DBXml methodsFor: 'recovered'!
directImport: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := Util.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := 'wsc'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) getTmpFilename: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := Util.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := 'wscLog'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) getTmpFilename: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := Util.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := workspacePath.
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
            recoveredStack5 := workspacePath.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack6 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) runWSCreator: (recoveredStack2) aws: (recoveredStack3) log: (recoveredStack4) destDir: (recoveredStack5) amds: (recoveredStack6).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) isError.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) doReadWorkspace: (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2031a9e8; bytecode file offset 0xc172d4"
!DBXml methodsFor: 'recovered'!
addComponent: recoveredArg1 toFolder: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'BOSCH_CC_WORKSPACE'.
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
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) getFolderByNamespace: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := Util.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := 'Add Component'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) readDOMTree: (recoveredStack1) id: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := DBXmlImportDescItemWithSpec.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) initOn: (recoveredStack1) namespace: (recoveredStack2) database: (recoveredStack3).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) proxy.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) object.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) addChild: (recoveredStack1) checkPath: (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) modified.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) dbObject.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2031f750; bytecode file offset 0xc1c020"
!DBXml methodsFor: 'recovered'!
objectsForClasses: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := classes.
    recoveredValue3 := [:recoveredBlock12Arg1 :recoveredBlock12Arg2 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 |
    recoveredBlock12Value0 := recoveredArg1.
    recoveredBlock12Value1 := [:recoveredBlock12Block21Arg1 | 
    | recoveredBlock12Block21Stack0 recoveredBlock12Block21Stack1 recoveredBlock12Block21Stack2 recoveredBlock12Block21Stack3 recoveredBlock12Block21Stack4 recoveredBlock12Block21PC recoveredBlock12Block21Step recoveredBlock12Block21Done recoveredBlock12Block21Result |
    recoveredBlock12Block21Stack0 := nil.
    recoveredBlock12Block21PC := 28.
    recoveredBlock12Block21Done := false.
    [recoveredBlock12Block21Done not] whileTrue: [
        recoveredBlock12Block21Step := recoveredBlock12Block21PC.
        recoveredBlock12Block21Step = 28 ifTrue: [
            recoveredBlock12Block21Stack1 := nil.
            recoveredBlock12Block21PC := 29.
        ].
        recoveredBlock12Block21Step = 29 ifTrue: [
            recoveredBlock12Block21Stack2 := recoveredBlock12Block21Arg1.
            recoveredBlock12Block21PC := 30.
        ].
        recoveredBlock12Block21Step = 30 ifTrue: [
            recoveredBlock12Block21Stack3 := recoveredBlock12Arg1.
            recoveredBlock12Block21PC := 33.
        ].
        recoveredBlock12Block21Step = 33 ifTrue: [
            recoveredBlock12Block21Stack2 := (recoveredBlock12Block21Stack2) match: (recoveredBlock12Block21Stack3).
            recoveredBlock12Block21PC := 34.
        ].
        recoveredBlock12Block21Step = 34 ifTrue: [
            (recoveredBlock12Block21Stack2) ifTrue: [recoveredBlock12Block21PC := 38] ifFalse: [recoveredBlock12Block21PC := 46].
        ].
        recoveredBlock12Block21Step = 38 ifTrue: [
            recoveredBlock12Block21PC := 39.
        ].
        recoveredBlock12Block21Step = 39 ifTrue: [
            recoveredBlock12Block21Stack1 := recoveredLocal1.
            recoveredBlock12Block21PC := 42.
        ].
        recoveredBlock12Block21Step = 42 ifTrue: [
            recoveredBlock12Block21Stack2 := recoveredBlock12Arg2.
            recoveredBlock12Block21PC := 45.
        ].
        recoveredBlock12Block21Step = 45 ifTrue: [
            recoveredBlock12Block21Stack1 := (recoveredBlock12Block21Stack1) addAll: (recoveredBlock12Block21Stack2).
            recoveredBlock12Block21PC := 46.
        ].
        recoveredBlock12Block21Step = 46 ifTrue: [
            recoveredBlock12Block21Result := recoveredBlock12Block21Stack1.
            recoveredBlock12Block21Done := true.
        ].
    ].
    recoveredBlock12Block21Result
].
    recoveredBlock12Value2 := (recoveredBlock12Value0) do: (recoveredBlock12Value1).
    recoveredBlock12Value2
].
    (recoveredValue2) keysAndValuesDo: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue4) asSet.
    ^recoveredValue5
! !

"ASDBase.ic method 0x2033326c; bytecode file offset 0xc2fb38"
!DBXml methodsFor: 'recovered'!
dispose
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := objects.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := objects.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := [:block280ecfacArg1 | 
    | block280ecfacValue0 block280ecfacValue1 |
    block280ecfacValue0 := block280ecfacArg1.
    block280ecfacValue1 := (block280ecfacValue0) dispose.
    block280ecfacValue1
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            objects := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := trash.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := trash.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := [:block280ecfd0Arg1 | 
    | block280ecfd0Value0 block280ecfd0Value1 |
    block280ecfd0Value0 := block280ecfd0Arg1.
    block280ecfd0Value1 := (block280ecfd0Value0) dispose.
    block280ecfd0Value1
].
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            trash := recoveredStack1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            classes := recoveredStack1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            workspaceFile := recoveredStack1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := EtasXmlSupportCatalog.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := catalog.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) dispose: (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203379c8; bytecode file offset 0xc34298"
!DBXml methodsFor: 'recovered'!
moveItem: recoveredArg1 toParent: recoveredArg2 newName: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) object.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) dbXmlParent.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := EtasDatamodelObserver.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock26Value0 recoveredBlock26Value1 recoveredBlock26Value2 recoveredBlock26Value3 recoveredBlock26Value4 recoveredBlock26Value5 |
    recoveredBlock26Value0 := recoveredArg1.
    recoveredBlock26Value1 := (recoveredBlock26Value0) objectClass.
    recoveredBlock26Value2 := recoveredArg1.
    recoveredBlock26Value3 := recoveredLocal1.
    recoveredBlock26Value4 := recoveredArg3.
    recoveredBlock26Value5 := (recoveredBlock26Value1) dbXmlMove: (recoveredBlock26Value2) to: (recoveredBlock26Value3) name: (recoveredBlock26Value4).
    recoveredBlock26Value5
].
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack1) suspendObserving: (recoveredStack2) notify: (recoveredStack3).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := EtasDatamodelObserver.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := (recoveredStack2) object.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) etasObserve: (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203384f4; bytecode file offset 0xc34dd8"
!DBXml methodsFor: 'recovered'!
closeLocalDatabaseNotify: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasComponentLoader.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) terminate.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) noSave.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 33] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) getModifiedItemsWithoutDefaultProjects.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 33].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 31].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) saveAll.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 49].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := ASDAscetController.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSCMInstalled.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 49].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) scmClose.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) unlock.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := 'todo'.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) notNil.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) dispose.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2037a23c; bytecode file offset 0xc76b20"
!DBXml methodsFor: 'recovered'!
prepareForReopen
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'BOSCH_CC_WORKSPACE'.
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
            recoveredStack1 := MainController.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := MainController.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) userInterface.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) checkAllViewsExcept: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := classes.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := 'RBFolder'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := classes.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := 'SGLibrary'.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            classes := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 57] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := classes.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := 'RBFolder'.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 69] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := classes.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := 'SGLibrary'.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203af78c; bytecode file offset 0xcac068"
!DBXml methodsFor: 'recovered'!
getFolderByNamespace: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ('Kli') == ('BOSCH_CC_WORKSPACE').
    recoveredValue1 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 |
    recoveredBlock12Value0 := classes.
    recoveredBlock12Value1 := recoveredBlock12Arg1.
    recoveredBlock12Value2 := [:recoveredBlock12Block21Arg1 | 
    | recoveredBlock12Block21Local1 recoveredBlock12Block21Stack0 recoveredBlock12Block21Stack1 recoveredBlock12Block21Stack2 recoveredBlock12Block21Stack3 recoveredBlock12Block21Stack4 recoveredBlock12Block21PC recoveredBlock12Block21Step recoveredBlock12Block21Done recoveredBlock12Block21Result |
    recoveredBlock12Block21Stack0 := self.
    recoveredBlock12Block21PC := 28.
    recoveredBlock12Block21Done := false.
    [recoveredBlock12Block21Done not] whileTrue: [
        recoveredBlock12Block21Step := recoveredBlock12Block21PC.
        recoveredBlock12Block21Step = 28 ifTrue: [
            recoveredBlock12Block21Stack1 := recoveredBlock12Block21Arg1.
            recoveredBlock12Block21PC := 29.
        ].
        recoveredBlock12Block21Step = 29 ifTrue: [
            recoveredBlock12Block21Stack2 := [:recoveredBlock12Block21Block29Arg1 | 
    | recoveredBlock12Block21Block29Stack0 recoveredBlock12Block21Block29Stack1 recoveredBlock12Block21Block29Stack2 recoveredBlock12Block21Block29Stack3 recoveredBlock12Block21Block29Stack4 recoveredBlock12Block21Block29PC recoveredBlock12Block21Block29Step recoveredBlock12Block21Block29Done recoveredBlock12Block21Block29Result |
    recoveredBlock12Block21Block29Stack0 := nil.
    recoveredBlock12Block21Block29PC := 36.
    recoveredBlock12Block21Block29Done := false.
    [recoveredBlock12Block21Block29Done not] whileTrue: [
        recoveredBlock12Block21Block29Step := recoveredBlock12Block21Block29PC.
        recoveredBlock12Block21Block29Step = 36 ifTrue: [
            recoveredBlock12Block21Block29Stack1 := false.
            recoveredBlock12Block21Block29PC := 37.
        ].
        recoveredBlock12Block21Block29Step = 37 ifTrue: [
            recoveredBlock12Block21Block29Stack2 := recoveredArg1.
            recoveredBlock12Block21Block29PC := 40.
        ].
        recoveredBlock12Block21Block29Step = 40 ifTrue: [
            recoveredBlock12Block21Block29Stack3 := recoveredBlock12Block21Block29Arg1.
            recoveredBlock12Block21Block29PC := 41.
        ].
        recoveredBlock12Block21Block29Step = 41 ifTrue: [
            recoveredBlock12Block21Block29Stack3 := (recoveredBlock12Block21Block29Stack3) name.
            recoveredBlock12Block21Block29PC := 42.
        ].
        recoveredBlock12Block21Block29Step = 42 ifTrue: [
            recoveredBlock12Block21Block29Stack2 := (recoveredBlock12Block21Block29Stack2) endsWith: (recoveredBlock12Block21Block29Stack3).
            recoveredBlock12Block21Block29PC := 44.
        ].
        recoveredBlock12Block21Block29Step = 44 ifTrue: [
            (recoveredBlock12Block21Block29Stack2) ifTrue: [recoveredBlock12Block21Block29PC := 48] ifFalse: [recoveredBlock12Block21Block29PC := 56].
        ].
        recoveredBlock12Block21Block29Step = 48 ifTrue: [
            recoveredBlock12Block21Block29PC := 49.
        ].
        recoveredBlock12Block21Block29Step = 49 ifTrue: [
            recoveredBlock12Block21Block29Stack1 := recoveredBlock12Block21Block29Arg1.
            recoveredBlock12Block21Block29PC := 50.
        ].
        recoveredBlock12Block21Block29Step = 50 ifTrue: [
            recoveredBlock12Block21Block29Stack1 := (recoveredBlock12Block21Block29Stack1) xmlPathString.
            recoveredBlock12Block21Block29PC := 52.
        ].
        recoveredBlock12Block21Block29Step = 52 ifTrue: [
            recoveredBlock12Block21Block29Stack2 := recoveredArg1.
            recoveredBlock12Block21Block29PC := 55.
        ].
        recoveredBlock12Block21Block29Step = 55 ifTrue: [
            recoveredBlock12Block21Block29Stack1 := (recoveredBlock12Block21Block29Stack1) = (recoveredBlock12Block21Block29Stack2).
            recoveredBlock12Block21Block29PC := 56.
        ].
        recoveredBlock12Block21Block29Step = 56 ifTrue: [
            recoveredBlock12Block21Block29Result := recoveredBlock12Block21Block29Stack1.
            recoveredBlock12Block21Block29Done := true.
        ].
    ].
    recoveredBlock12Block21Block29Result
].
            recoveredBlock12Block21PC := 57.
        ].
        recoveredBlock12Block21Step = 57 ifTrue: [
            recoveredBlock12Block21Stack3 := [].
            recoveredBlock12Block21PC := 59.
        ].
        recoveredBlock12Block21Step = 59 ifTrue: [
            recoveredBlock12Block21Stack1 := (recoveredBlock12Block21Stack1) detect: (recoveredBlock12Block21Stack2) ifNone: (recoveredBlock12Block21Stack3).
            recoveredBlock12Block21PC := 61.
        ].
        recoveredBlock12Block21Step = 61 ifTrue: [
            recoveredBlock12Block21Local1 := recoveredBlock12Block21Stack1.
            recoveredBlock12Block21PC := 62.
        ].
        recoveredBlock12Block21Step = 62 ifTrue: [
            recoveredBlock12Block21Stack1 := nil.
            recoveredBlock12Block21PC := 63.
        ].
        recoveredBlock12Block21Step = 63 ifTrue: [
            recoveredBlock12Block21Stack2 := recoveredBlock12Block21Local1.
            recoveredBlock12Block21PC := 64.
        ].
        recoveredBlock12Block21Step = 64 ifTrue: [
            (recoveredBlock12Block21Stack2 == nil) ifTrue: [recoveredBlock12Block21PC := 71] ifFalse: [recoveredBlock12Block21PC := 68].
        ].
        recoveredBlock12Block21Step = 68 ifTrue: [
            recoveredBlock12Block21PC := 69.
        ].
        recoveredBlock12Block21Step = 69 ifTrue: [
            recoveredBlock12Block21Stack1 := recoveredBlock12Block21Local1.
            recoveredBlock12Block21PC := 70.
        ].
        recoveredBlock12Block21Step = 70 ifTrue: [
            ^recoveredBlock12Block21Stack1
        ].
        recoveredBlock12Block21Step = 71 ifTrue: [
            recoveredBlock12Block21Result := recoveredBlock12Block21Stack1.
            recoveredBlock12Block21Done := true.
        ].
    ].
    recoveredBlock12Block21Result
].
    recoveredBlock12Value3 := (recoveredBlock12Value0) at: (recoveredBlock12Value1) ifPresent: (recoveredBlock12Value2).
    recoveredBlock12Value3
].
    (#('SGLibrary' 'RBFolder')) do: (recoveredValue1).
    ^nil
! !

"ASDBase.ic method 0x203b0b90; bytecode file offset 0xcad498"
!DBXml methodsFor: 'recovered'!
doesNotUnderstand: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
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
            (recoveredStack1) ifTrue: [recoveredPC := 47] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := OSCall.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) getUserName.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 'wohaug'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 47].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) selector.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := 'scm'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) startsWith: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 47] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := 'use api ('.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack4 := (recoveredStack4) selector.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack4 := (recoveredStack4) printString.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack4 := ')'.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) runtimeAssert: (recoveredStack2) additionalInfo: (recoveredStack3).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := ASDPersistenceController.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := (recoveredStack2) selector.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) canUnderstand: (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) sendTo: (recoveredStack2).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredPC := 78.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := super doesNotUnderstand: (recoveredStack2).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203bb02c; bytecode file offset 0xcb791c"
!DBXml methodsFor: 'recovered'!
initOn: recoveredArg1 file: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 |
    recoveredValue0 := DBXmlObject.
    (recoveredValue0) loaded.
    noSave := false.
    frozen := false.
    recoveredValue1 := recoveredArg1.
    wsManager := recoveredValue1.
    recoveredValue2 := DBLocalGlobalIdServer.
    recoveredValue3 := DBXmlRecordClass.
    recoveredValue4 := (recoveredValue3) new.
    recoveredValue5 := (recoveredValue4) init.
    recoveredValue6 := (recoveredValue2) create: (recoveredValue5).
    globalIdServer := recoveredValue6.
    recoveredValue7 := AbtHighCapacityLookupTable.
    recoveredValue8 := (recoveredValue7) new.
    objects := recoveredValue8.
    recoveredValue9 := OrderedCollection.
    recoveredValue10 := (recoveredValue9) new.
    trash := recoveredValue10.
    recoveredValue11 := DBErrorController.
    recoveredValue12 := (recoveredValue11) create.
    errorController := recoveredValue12.
    recoveredValue13 := recoveredArg2.
    recoveredValue14 := (recoveredValue13) pathName.
    workspacePath := recoveredValue14.
    recoveredValue15 := recoveredArg2.
    workspaceFile := recoveredValue15.
    recoveredValue16 := EtasXmlSupportCatalog.
    recoveredValue17 := (recoveredValue16) makeCatalog.
    catalog := recoveredValue17.
    recoveredValue18 := LookupTable.
    recoveredValue19 := (recoveredValue18) new.
    classes := recoveredValue19.
    recoveredValue20 := AbtHighCapacityLookupTable.
    recoveredValue21 := (recoveredValue20) new.
    uuids := recoveredValue21.
    abuse := false.
    accessCount := 0.
    ^self
! !

"ASDBase.ic method 0x203c22ac; bytecode file offset 0xcbebc4"
!DBXml methodsFor: 'recovered'!
saveEmptyWorkspace
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 |
    recoveredValue0 := EtasXmlSupportDOMElement.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := (recoveredValue1) initOn: ('workspace').
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := recoveredLocal2.
    (recoveredValue3) setAttr: ('toolName') value: ('ASCET').
    recoveredValue4 := recoveredLocal2.
    (recoveredValue4) setAttr: ('toolVersion') value: ('0.0.1-alpha').
    recoveredValue5 := recoveredLocal2.
    recoveredValue6 := catalog.
    recoveredValue7 := (recoveredValue6) getSchema: ('workspace.xsd').
    recoveredValue8 := (recoveredValue7) at: (2).
    (recoveredValue5) setAttr: ('schemaVersion') value: (recoveredValue8).
    recoveredValue9 := EtasXmlSupportDoc.
    recoveredValue10 := (recoveredValue9) new.
    recoveredValue11 := recoveredLocal2.
    recoveredValue12 := (recoveredValue11) xmlNormalize.
    recoveredValue13 := (recoveredValue10) initFromTree: (recoveredValue12).
    recoveredLocal1 := recoveredValue13.
    recoveredValue14 := SGMonitorStreamDummy.
    recoveredValue15 := (recoveredValue14) create.
    recoveredValue16 := [
    | recoveredBlock53Value0 recoveredBlock53Value1 recoveredBlock53Value2 |
    recoveredBlock53Value0 := (self) workspaceFilename.
    recoveredBlock53Value1 := (recoveredBlock53Value0) asString.
    recoveredBlock53Value2 := ('<Workspace> Save empty workspace to file: %1.') bindWith: (recoveredBlock53Value1).
    recoveredBlock53Value2
].
    (recoveredValue15) addDebugTextBlock: (recoveredValue16).
    recoveredValue17 := recoveredLocal1.
    recoveredValue18 := (self) workspaceFilename.
    (recoveredValue17) writeToFile: (recoveredValue18).
    recoveredValue19 := recoveredLocal1.
    (recoveredValue19) dispose.
    ^self
! !

"ASDBase.ic method 0x203f507c; bytecode file offset 0xcf1950"
!DBXml methodsFor: 'recovered'!
deleteAll: recoveredArg1 progressWindow: recoveredArg2 save: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := [:recoveredBlock11Arg1 :recoveredBlock11Arg2 | 
    | recoveredBlock11Stack0 recoveredBlock11Stack1 recoveredBlock11Stack2 recoveredBlock11Stack3 recoveredBlock11PC recoveredBlock11Step recoveredBlock11Done recoveredBlock11Result |
    recoveredBlock11Stack0 := self.
    recoveredBlock11PC := 18.
    recoveredBlock11Done := false.
    [recoveredBlock11Done not] whileTrue: [
        recoveredBlock11Step := recoveredBlock11PC.
        recoveredBlock11Step = 18 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Arg1.
            recoveredBlock11PC := 21.
        ].
        recoveredBlock11Step = 21 ifTrue: [
            (recoveredBlock11Stack1 == nil) ifTrue: [recoveredBlock11PC := 42] ifFalse: [recoveredBlock11PC := 24].
        ].
        recoveredBlock11Step = 24 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Arg1.
            recoveredBlock11PC := 27.
        ].
        recoveredBlock11Step = 27 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) isFolder.
            recoveredBlock11PC := 28.
        ].
        recoveredBlock11Step = 28 ifTrue: [
            (recoveredBlock11Stack1) ifTrue: [recoveredBlock11PC := 32] ifFalse: [recoveredBlock11PC := 36].
        ].
        recoveredBlock11Step = 32 ifTrue: [
            recoveredBlock11Stack1 := true.
            recoveredBlock11PC := 33.
        ].
        recoveredBlock11Step = 33 ifTrue: [
            recoveredLocal1 := recoveredBlock11Stack1.
            recoveredBlock11PC := 36.
        ].
        recoveredBlock11Step = 36 ifTrue: [
            recoveredBlock11Stack1 := self.
            recoveredBlock11PC := 37.
        ].
        recoveredBlock11Step = 37 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 40.
        ].
        recoveredBlock11Step = 40 ifTrue: [
            (recoveredBlock11Stack1) delete: (recoveredBlock11Stack2).
            recoveredBlock11PC := 42.
        ].
        recoveredBlock11Step = 42 ifTrue: [
            recoveredBlock11Stack1 := recoveredArg2.
            recoveredBlock11PC := 45.
        ].
        recoveredBlock11Step = 45 ifTrue: [
            recoveredBlock11Stack2 := [:recoveredBlock11Block45Arg1 | 
    | recoveredBlock11Block45Value0 recoveredBlock11Block45Value1 recoveredBlock11Block45Value2 recoveredBlock11Block45Value3 recoveredBlock11Block45Value4 recoveredBlock11Block45Value5 |
    recoveredBlock11Block45Value0 := recoveredBlock11Block45Arg1.
    recoveredBlock11Block45Value1 := recoveredBlock11Arg2.
    recoveredBlock11Block45Value2 := recoveredArg1.
    recoveredBlock11Block45Value3 := (recoveredBlock11Block45Value2) size.
    recoveredBlock11Block45Value4 := (recoveredBlock11Block45Value1) / (recoveredBlock11Block45Value3).
    recoveredBlock11Block45Value5 := (recoveredBlock11Block45Value0) fractionComplete: (recoveredBlock11Block45Value4).
    recoveredBlock11Block45Value5
].
            recoveredBlock11PC := 64.
        ].
        recoveredBlock11Step = 64 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) ifNotNil: (recoveredBlock11Stack2).
            recoveredBlock11PC := 66.
        ].
        recoveredBlock11Step = 66 ifTrue: [
            recoveredBlock11Result := recoveredBlock11Stack1.
            recoveredBlock11Done := true.
        ].
    ].
    recoveredBlock11Result
].
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack1) doWithIndex: (recoveredStack2).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack1) saveWorkspace.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredPC := 91.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 91].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack1) saveWorkspace.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20402948; bytecode file offset 0xcff234"
!DBXml methodsFor: 'recovered'!
directExport: recoveredArg1 to: recoveredArg2 with: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) toExport.
    recoveredValue2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Local1 recoveredBlock8Local2 recoveredBlock8Local3 recoveredBlock8Local4 recoveredBlock8Stack0 recoveredBlock8Stack1 recoveredBlock8Stack2 recoveredBlock8Stack3 recoveredBlock8Stack4 recoveredBlock8Stack5 recoveredBlock8Stack6 recoveredBlock8PC recoveredBlock8Step recoveredBlock8Done recoveredBlock8Result |
    recoveredBlock8Stack0 := self.
    recoveredBlock8PC := 14.
    recoveredBlock8Done := false.
    [recoveredBlock8Done not] whileTrue: [
        recoveredBlock8Step := recoveredBlock8PC.
        recoveredBlock8Step = 14 ifTrue: [
            recoveredBlock8Stack1 := recoveredBlock8Arg1.
            recoveredBlock8PC := 16.
        ].
        recoveredBlock8Step = 16 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) dbObject.
            recoveredBlock8PC := 17.
        ].
        recoveredBlock8Step = 17 ifTrue: [
            recoveredBlock8Local2 := recoveredBlock8Stack1.
            recoveredBlock8PC := 18.
        ].
        recoveredBlock8Step = 18 ifTrue: [
            recoveredBlock8Stack1 := recoveredArg3.
            recoveredBlock8PC := 21.
        ].
        recoveredBlock8Step = 21 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) createCompleteHierarchy.
            recoveredBlock8PC := 22.
        ].
        recoveredBlock8Step = 22 ifTrue: [
            (recoveredBlock8Stack1) ifTrue: [recoveredBlock8PC := 26] ifFalse: [recoveredBlock8PC := 54].
        ].
        recoveredBlock8Step = 26 ifTrue: [
            recoveredBlock8Stack1 := recoveredBlock8Local2.
            recoveredBlock8PC := 27.
        ].
        recoveredBlock8Step = 27 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) isLibrary.
            recoveredBlock8PC := 28.
        ].
        recoveredBlock8Step = 28 ifTrue: [
            (recoveredBlock8Stack1) ifTrue: [recoveredBlock8PC := 54] ifFalse: [recoveredBlock8PC := 32].
        ].
        recoveredBlock8Step = 32 ifTrue: [
            recoveredBlock8Stack1 := Util.
            recoveredBlock8PC := 34.
        ].
        recoveredBlock8Step = 34 ifTrue: [
            recoveredBlock8Stack2 := recoveredArg2.
            recoveredBlock8PC := 37.
        ].
        recoveredBlock8Step = 37 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) asPathname.
            recoveredBlock8PC := 39.
        ].
        recoveredBlock8Step = 39 ifTrue: [
            recoveredBlock8Stack3 := recoveredBlock8Local2.
            recoveredBlock8PC := 40.
        ].
        recoveredBlock8Step = 40 ifTrue: [
            recoveredBlock8Stack3 := (recoveredBlock8Stack3) pathString.
            recoveredBlock8PC := 42.
        ].
        recoveredBlock8Step = 42 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) , (recoveredBlock8Stack3).
            recoveredBlock8PC := 44.
        ].
        recoveredBlock8Step = 44 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) splitPath: (recoveredBlock8Stack2).
            recoveredBlock8PC := 46.
        ].
        recoveredBlock8Step = 46 ifTrue: [
            recoveredBlock8Stack2 := 1.
            recoveredBlock8PC := 48.
        ].
        recoveredBlock8Step = 48 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) at: (recoveredBlock8Stack2).
            recoveredBlock8PC := 50.
        ].
        recoveredBlock8Step = 50 ifTrue: [
            recoveredBlock8PC := 59.
        ].
        recoveredBlock8Step = 54 ifTrue: [
            recoveredBlock8Stack1 := recoveredArg2.
            recoveredBlock8PC := 57.
        ].
        recoveredBlock8Step = 57 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) asPathname.
            recoveredBlock8PC := 59.
        ].
        recoveredBlock8Step = 59 ifTrue: [
            recoveredBlock8Local4 := recoveredBlock8Stack1.
            recoveredBlock8PC := 60.
        ].
        recoveredBlock8Step = 60 ifTrue: [
            recoveredBlock8Stack1 := Util.
            recoveredBlock8PC := 62.
        ].
        recoveredBlock8Step = 62 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Local4.
            recoveredBlock8PC := 63.
        ].
        recoveredBlock8Step = 63 ifTrue: [
            (recoveredBlock8Stack1) mkdirs: (recoveredBlock8Stack2).
            recoveredBlock8PC := 65.
        ].
        recoveredBlock8Step = 65 ifTrue: [
            recoveredBlock8Stack1 := nil.
            recoveredBlock8PC := 66.
        ].
        recoveredBlock8Step = 66 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Local2.
            recoveredBlock8PC := 67.
        ].
        recoveredBlock8Step = 67 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) objectClass.
            recoveredBlock8PC := 69.
        ].
        recoveredBlock8Step = 69 ifTrue: [
            recoveredBlock8Stack3 := recoveredBlock8Local2.
            recoveredBlock8PC := 70.
        ].
        recoveredBlock8Step = 70 ifTrue: [
            recoveredBlock8Stack4 := recoveredBlock8Local4.
            recoveredBlock8PC := 71.
        ].
        recoveredBlock8Step = 71 ifTrue: [
            recoveredBlock8Stack5 := recoveredArg3.
            recoveredBlock8PC := 74.
        ].
        recoveredBlock8Step = 74 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) dbXmlDirectExport: (recoveredBlock8Stack3) to: (recoveredBlock8Stack4) with: (recoveredBlock8Stack5).
            recoveredBlock8PC := 77.
        ].
        recoveredBlock8Step = 77 ifTrue: [
            recoveredBlock8Stack3 := recoveredBlock8Stack2.
            recoveredBlock8PC := 78.
        ].
        recoveredBlock8Step = 78 ifTrue: [
            recoveredBlock8Local1 := recoveredBlock8Stack3.
            recoveredBlock8PC := 79.
        ].
        recoveredBlock8Step = 79 ifTrue: [
            recoveredBlock8Stack3 := 0.
            recoveredBlock8PC := 81.
        ].
        recoveredBlock8Step = 81 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) < (recoveredBlock8Stack3).
            recoveredBlock8PC := 82.
        ].
        recoveredBlock8Step = 82 ifTrue: [
            (recoveredBlock8Stack2) ifTrue: [recoveredBlock8PC := 86] ifFalse: [recoveredBlock8PC := 89].
        ].
        recoveredBlock8Step = 86 ifTrue: [
            recoveredBlock8PC := 87.
        ].
        recoveredBlock8Step = 87 ifTrue: [
            recoveredBlock8Stack1 := recoveredBlock8Local1.
            recoveredBlock8PC := 88.
        ].
        recoveredBlock8Step = 88 ifTrue: [
            ^recoveredBlock8Stack1
        ].
        recoveredBlock8Step = 89 ifTrue: [
            recoveredBlock8Result := recoveredBlock8Stack1.
            recoveredBlock8Done := true.
        ].
    ].
    recoveredBlock8Result
].
    (recoveredValue1) do: (recoveredValue2).
    ^0
! !

"ASDBase.ic method 0x2040910c; bytecode file offset 0xd05a10"
!DBXml methodsFor: 'recovered'!
delete: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) objectState.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := 'dbXmlObjState_disposed'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) etasDevHalt.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := 'dbXmlObjState_deleted'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) isOnDisk.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 37].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) deleteFromDisk.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) className.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := classes.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := (recoveredStack2) className.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack1) remove: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := Set.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack1) adjustReferences: (recoveredStack2).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := ASDAscetController.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSCMActive.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 91].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) rawGetObject.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 89] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := RBTopFolder.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) isKindOf: (recoveredStack2).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 89].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack1) scmPostDeletion.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack1) clear.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2042dad4; bytecode file offset 0xd2a3fc"
!DBXml methodsFor: 'recovered'!
saveWorkspace
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := SGMonitorStreamDummy.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 |
    recoveredBlock7Value0 := System.
    recoveredBlock7Value1 := [
    | recoveredBlock7Block16Local1 recoveredBlock7Block16Local2 recoveredBlock7Block16Local3 recoveredBlock7Block16Local4 recoveredBlock7Block16Stack0 recoveredBlock7Block16Stack1 recoveredBlock7Block16Stack2 recoveredBlock7Block16Stack3 recoveredBlock7Block16Stack4 recoveredBlock7Block16PC recoveredBlock7Block16Step recoveredBlock7Block16Done recoveredBlock7Block16Result |
    recoveredBlock7Block16Stack0 := self.
    recoveredBlock7Block16PC := 22.
    recoveredBlock7Block16Done := false.
    [recoveredBlock7Block16Done not] whileTrue: [
        recoveredBlock7Block16Step := recoveredBlock7Block16PC.
        recoveredBlock7Block16Step = 22 ifTrue: [
            recoveredBlock7Block16Stack0 := (recoveredBlock7Block16Stack0) dbXmlDesc.
            recoveredBlock7Block16PC := 23.
        ].
        recoveredBlock7Block16Step = 23 ifTrue: [
            recoveredBlock7Block16Local4 := recoveredBlock7Block16Stack0.
            recoveredBlock7Block16PC := 24.
        ].
        recoveredBlock7Block16Step = 24 ifTrue: [
            recoveredBlock7Block16Stack0 := recoveredBlock7Block16Local4.
            recoveredBlock7Block16PC := 25.
        ].
        recoveredBlock7Block16Step = 25 ifTrue: [
            recoveredBlock7Block16Stack1 := 'toolName'.
            recoveredBlock7Block16PC := 27.
        ].
        recoveredBlock7Block16Step = 27 ifTrue: [
            recoveredBlock7Block16Stack2 := 'ASCET'.
            recoveredBlock7Block16PC := 29.
        ].
        recoveredBlock7Block16Step = 29 ifTrue: [
            (recoveredBlock7Block16Stack0) setAttr: (recoveredBlock7Block16Stack1) value: (recoveredBlock7Block16Stack2).
            recoveredBlock7Block16PC := 31.
        ].
        recoveredBlock7Block16Step = 31 ifTrue: [
            recoveredBlock7Block16Stack0 := recoveredBlock7Block16Local4.
            recoveredBlock7Block16PC := 32.
        ].
        recoveredBlock7Block16Step = 32 ifTrue: [
            recoveredBlock7Block16Stack1 := 'toolVersion'.
            recoveredBlock7Block16PC := 34.
        ].
        recoveredBlock7Block16Step = 34 ifTrue: [
            recoveredBlock7Block16Stack2 := MainController.
            recoveredBlock7Block16PC := 36.
        ].
        recoveredBlock7Block16Step = 36 ifTrue: [
            recoveredBlock7Block16Stack2 := (recoveredBlock7Block16Stack2) currentProductVersionString.
            recoveredBlock7Block16PC := 38.
        ].
        recoveredBlock7Block16Step = 38 ifTrue: [
            (recoveredBlock7Block16Stack0) setAttr: (recoveredBlock7Block16Stack1) value: (recoveredBlock7Block16Stack2).
            recoveredBlock7Block16PC := 40.
        ].
        recoveredBlock7Block16Step = 40 ifTrue: [
            recoveredBlock7Block16Stack0 := recoveredBlock7Block16Local4.
            recoveredBlock7Block16PC := 41.
        ].
        recoveredBlock7Block16Step = 41 ifTrue: [
            recoveredBlock7Block16Stack1 := 'schemaVersion'.
            recoveredBlock7Block16PC := 43.
        ].
        recoveredBlock7Block16Step = 43 ifTrue: [
            recoveredBlock7Block16Stack2 := catalog.
            recoveredBlock7Block16PC := 45.
        ].
        recoveredBlock7Block16Step = 45 ifTrue: [
            recoveredBlock7Block16Stack3 := 'workspace.xsd'.
            recoveredBlock7Block16PC := 47.
        ].
        recoveredBlock7Block16Step = 47 ifTrue: [
            recoveredBlock7Block16Stack2 := (recoveredBlock7Block16Stack2) getSchema: (recoveredBlock7Block16Stack3).
            recoveredBlock7Block16PC := 49.
        ].
        recoveredBlock7Block16Step = 49 ifTrue: [
            recoveredBlock7Block16Stack3 := 2.
            recoveredBlock7Block16PC := 51.
        ].
        recoveredBlock7Block16Step = 51 ifTrue: [
            recoveredBlock7Block16Stack2 := (recoveredBlock7Block16Stack2) at: (recoveredBlock7Block16Stack3).
            recoveredBlock7Block16PC := 53.
        ].
        recoveredBlock7Block16Step = 53 ifTrue: [
            (recoveredBlock7Block16Stack0) setAttr: (recoveredBlock7Block16Stack1) value: (recoveredBlock7Block16Stack2).
            recoveredBlock7Block16PC := 55.
        ].
        recoveredBlock7Block16Step = 55 ifTrue: [
            recoveredBlock7Block16Stack0 := EtasXmlSupportDoc.
            recoveredBlock7Block16PC := 57.
        ].
        recoveredBlock7Block16Step = 57 ifTrue: [
            recoveredBlock7Block16Stack0 := (recoveredBlock7Block16Stack0) new.
            recoveredBlock7Block16PC := 59.
        ].
        recoveredBlock7Block16Step = 59 ifTrue: [
            recoveredBlock7Block16Stack1 := recoveredBlock7Block16Local4.
            recoveredBlock7Block16PC := 60.
        ].
        recoveredBlock7Block16Step = 60 ifTrue: [
            recoveredBlock7Block16Stack1 := (recoveredBlock7Block16Stack1) xmlNormalize.
            recoveredBlock7Block16PC := 62.
        ].
        recoveredBlock7Block16Step = 62 ifTrue: [
            recoveredBlock7Block16Stack0 := (recoveredBlock7Block16Stack0) initFromTree: (recoveredBlock7Block16Stack1).
            recoveredBlock7Block16PC := 64.
        ].
        recoveredBlock7Block16Step = 64 ifTrue: [
            recoveredBlock7Block16Local3 := recoveredBlock7Block16Stack0.
            recoveredBlock7Block16PC := 65.
        ].
        recoveredBlock7Block16Step = 65 ifTrue: [
            recoveredBlock7Block16Stack0 := self.
            recoveredBlock7Block16PC := 66.
        ].
        recoveredBlock7Block16Step = 66 ifTrue: [
            recoveredBlock7Block16Stack0 := (recoveredBlock7Block16Stack0) workspaceFilename.
            recoveredBlock7Block16PC := 68.
        ].
        recoveredBlock7Block16Step = 68 ifTrue: [
            recoveredBlock7Block16Local1 := recoveredBlock7Block16Stack0.
            recoveredBlock7Block16PC := 69.
        ].
        recoveredBlock7Block16Step = 69 ifTrue: [
            recoveredBlock7Block16Stack0 := recoveredBlock7Block16Local1.
            recoveredBlock7Block16PC := 70.
        ].
        recoveredBlock7Block16Step = 70 ifTrue: [
            recoveredBlock7Block16Stack0 := (recoveredBlock7Block16Stack0) pathName.
            recoveredBlock7Block16PC := 72.
        ].
        recoveredBlock7Block16Step = 72 ifTrue: [
            recoveredBlock7Block16Local2 := recoveredBlock7Block16Stack0.
            recoveredBlock7Block16PC := 73.
        ].
        recoveredBlock7Block16Step = 73 ifTrue: [
            recoveredBlock7Block16Stack0 := CfsStat.
            recoveredBlock7Block16PC := 75.
        ].
        recoveredBlock7Block16Step = 75 ifTrue: [
            recoveredBlock7Block16Stack1 := recoveredBlock7Block16Local2.
            recoveredBlock7Block16PC := 76.
        ].
        recoveredBlock7Block16Step = 76 ifTrue: [
            recoveredBlock7Block16Stack0 := (recoveredBlock7Block16Stack0) ensurePath: (recoveredBlock7Block16Stack1).
            recoveredBlock7Block16PC := 78.
        ].
        recoveredBlock7Block16Step = 78 ifTrue: [
            (recoveredBlock7Block16Stack0) ifTrue: [recoveredBlock7Block16PC := 82] ifFalse: [recoveredBlock7Block16PC := 86].
        ].
        recoveredBlock7Block16Step = 82 ifTrue: [
            recoveredBlock7Block16Stack0 := recoveredBlock7Block16Local3.
            recoveredBlock7Block16PC := 83.
        ].
        recoveredBlock7Block16Step = 83 ifTrue: [
            recoveredBlock7Block16Stack1 := recoveredBlock7Block16Local1.
            recoveredBlock7Block16PC := 84.
        ].
        recoveredBlock7Block16Step = 84 ifTrue: [
            (recoveredBlock7Block16Stack0) writeToFile: (recoveredBlock7Block16Stack1).
            recoveredBlock7Block16PC := 86.
        ].
        recoveredBlock7Block16Step = 86 ifTrue: [
            recoveredBlock7Block16Stack0 := recoveredBlock7Block16Local3.
            recoveredBlock7Block16PC := 87.
        ].
        recoveredBlock7Block16Step = 87 ifTrue: [
            recoveredBlock7Block16Stack0 := (recoveredBlock7Block16Stack0) dispose.
            recoveredBlock7Block16PC := 89.
        ].
        recoveredBlock7Block16Step = 89 ifTrue: [
            recoveredBlock7Block16Result := recoveredBlock7Block16Stack0.
            recoveredBlock7Block16Done := true.
        ].
    ].
    recoveredBlock7Block16Result
].
    recoveredBlock7Value2 := (recoveredBlock7Value0) showBusyCursorWhile: (recoveredBlock7Value1).
    recoveredBlock7Value2
].
    recoveredValue3 := (self) workspaceFilename.
    recoveredValue4 := (recoveredValue3) asString.
    recoveredValue5 := ('Saving workspace to %1') bindWith: (recoveredValue4).
    (recoveredValue1) measureTimeFor: (recoveredValue2) description: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x204314a4; bytecode file offset 0xd2dda0"
!DBXml methodsFor: 'recovered'!
garbageCollect: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SGMonitorStreamDummy.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 'Workspace Cache: Garbage Collection started.'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) addDebugText: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) objectsSortedByAccess.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 59.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredPC := 48.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) removeFirst.
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
            recoveredStack2 := 1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) dbXmlCleanOut: (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0 isInteger) ifTrue: [(recoveredStack0 > 0) ifTrue: [recoveredStack0 := recoveredStack0 - 1. recoveredPC := 30] ifFalse: [recoveredPC := 58]] ifFalse: [recoveredPC := 51].
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 71].
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack0) globalGarbageCollect.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := Util.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := ASDGeneralOptions.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionWorkspaceCacheLimit.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := 1024.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := 1024.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := (recoveredStack0) isLowMemory: (recoveredStack1).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 103].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := SGMonitorStreamDummy.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := 'Workspace Cache: Could not release enough objects. Please check and reduce Workspace Cache Limit.'.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack0) addDebugText: (recoveredStack1).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20444ed8; bytecode file offset 0xd417cc"
!DBXml methodsFor: 'recovered'!
makeProxyFromDom: recoveredArg1 importDesc: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 'OID'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) getString: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) globalIdServer.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) fromAlphaNumString: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) rawObjects.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock43Stack0 recoveredBlock43Stack1 recoveredBlock43Stack2 recoveredBlock43Stack3 recoveredBlock43PC recoveredBlock43Step recoveredBlock43Done recoveredBlock43Result |
    recoveredBlock43Stack0 := self.
    recoveredBlock43PC := 50.
    recoveredBlock43Done := false.
    [recoveredBlock43Done not] whileTrue: [
        recoveredBlock43Step := recoveredBlock43PC.
        recoveredBlock43Step = 50 ifTrue: [
            recoveredBlock43Stack1 := abuse.
            recoveredBlock43PC := 52.
        ].
        recoveredBlock43Step = 52 ifTrue: [
            (recoveredBlock43Stack1) ifTrue: [recoveredBlock43PC := 56] ifFalse: [recoveredBlock43PC := 59].
        ].
        recoveredBlock43Step = 56 ifTrue: [
            recoveredBlock43Stack1 := self.
            recoveredBlock43PC := 57.
        ].
        recoveredBlock43Step = 57 ifTrue: [
            (recoveredBlock43Stack1) etasDBXmlHalt.
            recoveredBlock43PC := 59.
        ].
        recoveredBlock43Step = 59 ifTrue: [
            recoveredBlock43Stack0 := (recoveredBlock43Stack0) rawObjects.
            recoveredBlock43PC := 61.
        ].
        recoveredBlock43Step = 61 ifTrue: [
            recoveredBlock43Stack1 := recoveredLocal1.
            recoveredBlock43PC := 64.
        ].
        recoveredBlock43Step = 64 ifTrue: [
            recoveredBlock43Stack2 := DBXmlObject.
            recoveredBlock43PC := 66.
        ].
        recoveredBlock43Step = 66 ifTrue: [
            recoveredBlock43Stack2 := (recoveredBlock43Stack2) new.
            recoveredBlock43PC := 68.
        ].
        recoveredBlock43Step = 68 ifTrue: [
            recoveredBlock43Stack0 := (recoveredBlock43Stack0) at: (recoveredBlock43Stack1) put: (recoveredBlock43Stack2).
            recoveredBlock43PC := 70.
        ].
        recoveredBlock43Step = 70 ifTrue: [
            recoveredBlock43Result := recoveredBlock43Stack0.
            recoveredBlock43Done := true.
        ].
    ].
    recoveredBlock43Result
].
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack3 := [:block280fea64Arg1 | 
    | block280fea64Value0 block280fea64Value1 |
    block280fea64Value0 := ('Kli') == ('BOSCH_CC_WORKSPACE').
    block280fea64Value1 := block280fea64Arg1.
    block280fea64Value1
].
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2) ifPresent: (recoveredStack3).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack0) initOn: (recoveredStack1) dom: (recoveredStack2) importDesc: (recoveredStack3) oid: (recoveredStack4).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204f23b8; bytecode file offset 0xdeed04"
!DBXml methodsFor: 'recovered'!
doReadWorkspace: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := SGMonitorStreamDummy.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 |
    recoveredBlock7Value0 := System.
    recoveredBlock7Value1 := [
    | recoveredBlock7Block16Local1 recoveredBlock7Block16Local2 recoveredBlock7Block16Local3 recoveredBlock7Block16Local4 recoveredBlock7Block16Stack0 recoveredBlock7Block16Stack1 recoveredBlock7Block16Stack2 recoveredBlock7Block16Stack3 recoveredBlock7Block16Stack4 recoveredBlock7Block16Stack5 recoveredBlock7Block16Stack6 recoveredBlock7Block16Stack7 recoveredBlock7Block16PC recoveredBlock7Block16Step recoveredBlock7Block16Done recoveredBlock7Block16Result |
    recoveredBlock7Block16Stack0 := self.
    recoveredBlock7Block16PC := 22.
    recoveredBlock7Block16Done := false.
    [recoveredBlock7Block16Done not] whileTrue: [
        recoveredBlock7Block16Step := recoveredBlock7Block16PC.
        recoveredBlock7Block16Step = 22 ifTrue: [
            recoveredBlock7Block16Stack1 := LookupTable.
            recoveredBlock7Block16PC := 24.
        ].
        recoveredBlock7Block16Step = 24 ifTrue: [
            recoveredBlock7Block16Stack1 := (recoveredBlock7Block16Stack1) new.
            recoveredBlock7Block16PC := 26.
        ].
        recoveredBlock7Block16Step = 26 ifTrue: [
            recoveredBlock7Block16Local3 := recoveredBlock7Block16Stack1.
            recoveredBlock7Block16PC := 27.
        ].
        recoveredBlock7Block16Step = 27 ifTrue: [
            recoveredBlock7Block16PC := 101.
        ].
        recoveredBlock7Block16Step = 30 ifTrue: [
            recoveredBlock7Block16Stack1 := RBUserQuestion.
            recoveredBlock7Block16PC := 32.
        ].
        recoveredBlock7Block16Step = 32 ifTrue: [
            recoveredBlock7Block16Stack2 := 'Your workspace file is version '.
            recoveredBlock7Block16PC := 34.
        ].
        recoveredBlock7Block16Step = 34 ifTrue: [
            recoveredBlock7Block16Stack3 := recoveredBlock7Block16Local4.
            recoveredBlock7Block16PC := 35.
        ].
        recoveredBlock7Block16Step = 35 ifTrue: [
            recoveredBlock7Block16Stack4 := 'schemaVersion'.
            recoveredBlock7Block16PC := 37.
        ].
        recoveredBlock7Block16Step = 37 ifTrue: [
            recoveredBlock7Block16Stack3 := (recoveredBlock7Block16Stack3) getString: (recoveredBlock7Block16Stack4).
            recoveredBlock7Block16PC := 39.
        ].
        recoveredBlock7Block16Step = 39 ifTrue: [
            recoveredBlock7Block16Stack2 := (recoveredBlock7Block16Stack2) , (recoveredBlock7Block16Stack3).
            recoveredBlock7Block16PC := 41.
        ].
        recoveredBlock7Block16Step = 41 ifTrue: [
            recoveredBlock7Block16Stack3 := ' and needs to be updated. Do this now?'.
            recoveredBlock7Block16PC := 43.
        ].
        recoveredBlock7Block16Step = 43 ifTrue: [
            recoveredBlock7Block16Stack2 := (recoveredBlock7Block16Stack2) , (recoveredBlock7Block16Stack3).
            recoveredBlock7Block16PC := 45.
        ].
        recoveredBlock7Block16Step = 45 ifTrue: [
            recoveredBlock7Block16Stack1 := (recoveredBlock7Block16Stack1) confirmWarning: (recoveredBlock7Block16Stack2).
            recoveredBlock7Block16PC := 47.
        ].
        recoveredBlock7Block16Step = 47 ifTrue: [
            recoveredBlock7Block16Stack1 := (recoveredBlock7Block16Stack1) prompt.
            recoveredBlock7Block16PC := 49.
        ].
        recoveredBlock7Block16Step = 49 ifTrue: [
            (recoveredBlock7Block16Stack1 ~~ nil) ifTrue: [recoveredBlock7Block16PC := 54] ifFalse: [recoveredBlock7Block16PC := 52].
        ].
        recoveredBlock7Block16Step = 52 ifTrue: [
            recoveredBlock7Block16Stack1 := nil.
            recoveredBlock7Block16PC := 53.
        ].
        recoveredBlock7Block16Step = 53 ifTrue: [
            ^recoveredBlock7Block16Stack1
        ].
        recoveredBlock7Block16Step = 54 ifTrue: [
            recoveredBlock7Block16Stack1 := Util.
            recoveredBlock7Block16PC := 56.
        ].
        recoveredBlock7Block16Step = 56 ifTrue: [
            recoveredBlock7Block16Stack2 := 'wscLog'.
            recoveredBlock7Block16PC := 58.
        ].
        recoveredBlock7Block16Step = 58 ifTrue: [
            recoveredBlock7Block16Stack1 := (recoveredBlock7Block16Stack1) getTmpFilename: (recoveredBlock7Block16Stack2).
            recoveredBlock7Block16PC := 60.
        ].
        recoveredBlock7Block16Step = 60 ifTrue: [
            recoveredBlock7Block16Local2 := recoveredBlock7Block16Stack1.
            recoveredBlock7Block16PC := 61.
        ].
        recoveredBlock7Block16Step = 61 ifTrue: [
            recoveredBlock7Block16Stack1 := Util.
            recoveredBlock7Block16PC := 63.
        ].
        recoveredBlock7Block16Step = 63 ifTrue: [
            recoveredBlock7Block16Stack2 := workspacePath.
            recoveredBlock7Block16PC := 65.
        ].
        recoveredBlock7Block16Step = 65 ifTrue: [
            recoveredBlock7Block16Stack3 := recoveredArg1.
            recoveredBlock7Block16PC := 68.
        ].
        recoveredBlock7Block16Step = 68 ifTrue: [
            recoveredBlock7Block16Stack4 := recoveredBlock7Block16Local2.
            recoveredBlock7Block16PC := 69.
        ].
        recoveredBlock7Block16Step = 69 ifTrue: [
            recoveredBlock7Block16Stack5 := workspacePath.
            recoveredBlock7Block16PC := 71.
        ].
        recoveredBlock7Block16Step = 71 ifTrue: [
            recoveredBlock7Block16Stack6 := nil.
            recoveredBlock7Block16PC := 72.
        ].
        recoveredBlock7Block16Step = 72 ifTrue: [
            recoveredBlock7Block16Stack1 := (recoveredBlock7Block16Stack1) runWSCreator: (recoveredBlock7Block16Stack2) aws: (recoveredBlock7Block16Stack3) log: (recoveredBlock7Block16Stack4) destDir: (recoveredBlock7Block16Stack5) amds: (recoveredBlock7Block16Stack6).
            recoveredBlock7Block16PC := 75.
        ].
        recoveredBlock7Block16Step = 75 ifTrue: [
            recoveredBlock7Block16Local1 := recoveredBlock7Block16Stack1.
            recoveredBlock7Block16PC := 76.
        ].
        recoveredBlock7Block16Step = 76 ifTrue: [
            recoveredBlock7Block16Stack1 := recoveredBlock7Block16Local1.
            recoveredBlock7Block16PC := 77.
        ].
        recoveredBlock7Block16Step = 77 ifTrue: [
            recoveredBlock7Block16Stack1 := (recoveredBlock7Block16Stack1) isError.
            recoveredBlock7Block16PC := 79.
        ].
        recoveredBlock7Block16Step = 79 ifTrue: [
            (recoveredBlock7Block16Stack1) ifTrue: [recoveredBlock7Block16PC := 82] ifFalse: [recoveredBlock7Block16PC := 97].
        ].
        recoveredBlock7Block16Step = 82 ifTrue: [
            recoveredBlock7Block16Stack1 := RBUserInfo.
            recoveredBlock7Block16PC := 84.
        ].
        recoveredBlock7Block16Step = 84 ifTrue: [
            recoveredBlock7Block16Stack2 := 'Workspace recreation failed. See '.
            recoveredBlock7Block16PC := 86.
        ].
        recoveredBlock7Block16Step = 86 ifTrue: [
            recoveredBlock7Block16Stack3 := recoveredBlock7Block16Local2.
            recoveredBlock7Block16PC := 87.
        ].
        recoveredBlock7Block16Step = 87 ifTrue: [
            recoveredBlock7Block16Stack2 := (recoveredBlock7Block16Stack2) , (recoveredBlock7Block16Stack3).
            recoveredBlock7Block16PC := 89.
        ].
        recoveredBlock7Block16Step = 89 ifTrue: [
            recoveredBlock7Block16Stack3 := ' for details.'.
            recoveredBlock7Block16PC := 91.
        ].
        recoveredBlock7Block16Step = 91 ifTrue: [
            recoveredBlock7Block16Stack2 := (recoveredBlock7Block16Stack2) , (recoveredBlock7Block16Stack3).
            recoveredBlock7Block16PC := 93.
        ].
        recoveredBlock7Block16Step = 93 ifTrue: [
            (recoveredBlock7Block16Stack1) errorMessage: (recoveredBlock7Block16Stack2).
            recoveredBlock7Block16PC := 95.
        ].
        recoveredBlock7Block16Step = 95 ifTrue: [
            recoveredBlock7Block16Stack1 := nil.
            recoveredBlock7Block16PC := 96.
        ].
        recoveredBlock7Block16Step = 96 ifTrue: [
            ^recoveredBlock7Block16Stack1
        ].
        recoveredBlock7Block16Step = 97 ifTrue: [
            recoveredBlock7Block16Stack1 := nil.
            recoveredBlock7Block16PC := 98.
        ].
        recoveredBlock7Block16Step = 98 ifTrue: [
            recoveredBlock7Block16Stack2 := recoveredBlock7Block16Stack1.
            recoveredBlock7Block16PC := 99.
        ].
        recoveredBlock7Block16Step = 99 ifTrue: [
            recoveredBlock7Block16Local2 := recoveredBlock7Block16Stack2.
            recoveredBlock7Block16PC := 100.
        ].
        recoveredBlock7Block16Step = 100 ifTrue: [
            recoveredBlock7Block16Local1 := recoveredBlock7Block16Stack1.
            recoveredBlock7Block16PC := 101.
        ].
        recoveredBlock7Block16Step = 101 ifTrue: [
            recoveredBlock7Block16Stack1 := Util.
            recoveredBlock7Block16PC := 103.
        ].
        recoveredBlock7Block16Step = 103 ifTrue: [
            recoveredBlock7Block16Stack2 := recoveredArg1.
            recoveredBlock7Block16PC := 106.
        ].
        recoveredBlock7Block16Step = 106 ifTrue: [
            recoveredBlock7Block16Stack3 := nil.
            recoveredBlock7Block16PC := 107.
        ].
        recoveredBlock7Block16Step = 107 ifTrue: [
            recoveredBlock7Block16Stack1 := (recoveredBlock7Block16Stack1) readDOMTree: (recoveredBlock7Block16Stack2) schema: (recoveredBlock7Block16Stack3).
            recoveredBlock7Block16PC := 109.
        ].
        recoveredBlock7Block16Step = 109 ifTrue: [
            recoveredBlock7Block16Local4 := recoveredBlock7Block16Stack1.
            recoveredBlock7Block16PC := 110.
        ].
        recoveredBlock7Block16Step = 110 ifTrue: [
            recoveredBlock7Block16Stack1 := recoveredBlock7Block16Local4.
            recoveredBlock7Block16PC := 111.
        ].
        recoveredBlock7Block16Step = 111 ifTrue: [
            recoveredBlock7Block16Stack2 := 'schemaVersion'.
            recoveredBlock7Block16PC := 113.
        ].
        recoveredBlock7Block16Step = 113 ifTrue: [
            recoveredBlock7Block16Stack1 := (recoveredBlock7Block16Stack1) getString: (recoveredBlock7Block16Stack2).
            recoveredBlock7Block16PC := 115.
        ].
        recoveredBlock7Block16Step = 115 ifTrue: [
            recoveredBlock7Block16Stack2 := '6.2'.
            recoveredBlock7Block16PC := 117.
        ].
        recoveredBlock7Block16Step = 117 ifTrue: [
            recoveredBlock7Block16Stack1 := (recoveredBlock7Block16Stack1) < (recoveredBlock7Block16Stack2).
            recoveredBlock7Block16PC := 118.
        ].
        recoveredBlock7Block16Step = 118 ifTrue: [
            (recoveredBlock7Block16Stack1) ifTrue: [recoveredBlock7Block16PC := 30] ifFalse: [recoveredBlock7Block16PC := 120].
        ].
        recoveredBlock7Block16Step = 120 ifTrue: [
            recoveredBlock7Block16Stack1 := recoveredBlock7Block16Local4.
            recoveredBlock7Block16PC := 121.
        ].
        recoveredBlock7Block16Step = 121 ifTrue: [
            recoveredBlock7Block16Stack2 := 'folder'.
            recoveredBlock7Block16PC := 123.
        ].
        recoveredBlock7Block16Step = 123 ifTrue: [
            recoveredBlock7Block16Stack3 := [:recoveredBlock7Block16Block123Arg1 | 
    | recoveredBlock7Block16Block123Value0 recoveredBlock7Block16Block123Value1 |
    recoveredBlock7Block16Block123Value0 := recoveredBlock7Block16Block123Arg1.
    recoveredBlock7Block16Block123Value1 := (self) readFolder: (recoveredBlock7Block16Block123Value0) parent: (nil) namespace: ('').
    recoveredBlock7Block16Block123Value1
].
            recoveredBlock7Block16PC := 138.
        ].
        recoveredBlock7Block16Step = 138 ifTrue: [
            (recoveredBlock7Block16Stack1) multiple: (recoveredBlock7Block16Stack2) do: (recoveredBlock7Block16Stack3).
            recoveredBlock7Block16PC := 140.
        ].
        recoveredBlock7Block16Step = 140 ifTrue: [
            recoveredBlock7Block16Stack0 := (recoveredBlock7Block16Stack0) objects.
            recoveredBlock7Block16PC := 142.
        ].
        recoveredBlock7Block16Step = 142 ifTrue: [
            recoveredBlock7Block16Stack1 := [:block28109954Arg1 | 
    | block28109954Value0 block28109954Value1 |
    block28109954Value0 := block28109954Arg1.
    block28109954Value1 := (block28109954Value0) workspaceRead.
    block28109954Value1
].
            recoveredBlock7Block16PC := 144.
        ].
        recoveredBlock7Block16Step = 144 ifTrue: [
            recoveredBlock7Block16PC := 152.
        ].
        recoveredBlock7Block16Step = 152 ifTrue: [
            recoveredBlock7Block16Stack0 := (recoveredBlock7Block16Stack0) do: (recoveredBlock7Block16Stack1).
            recoveredBlock7Block16PC := 154.
        ].
        recoveredBlock7Block16Step = 154 ifTrue: [
            recoveredBlock7Block16Result := recoveredBlock7Block16Stack0.
            recoveredBlock7Block16Done := true.
        ].
    ].
    recoveredBlock7Block16Result
].
    recoveredBlock7Value2 := (recoveredBlock7Value0) showBusyCursorWhile: (recoveredBlock7Value1).
    recoveredBlock7Value2
].
    recoveredValue3 := (self) workspaceFilename.
    recoveredValue4 := (recoveredValue3) asString.
    recoveredValue5 := ('Reading workspace from %1') bindWith: (recoveredValue4).
    (recoveredValue1) measureTimeFor: (recoveredValue2) description: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x205227b0; bytecode file offset 0xe1f104"
!DBXml methodsFor: 'recovered'!
lock
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OSCall.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) getHostName.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) lockFilename.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) exists: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 127].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := CfsReadFileStream.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) lockFilename.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) open: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 125] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) contents.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) close.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := ';'.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) asArrayOfSubstringsSeparatedBy: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 121].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := OSHandle.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := (recoveredStack2) asInteger.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) getProcessQueryInformationHandle: (recoveredStack2).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := ExDBXmlWorkspaceLocked.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := 'Workspace is in use on this machine.'.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack1) signalWith: (recoveredStack2).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredPC := 121.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := (recoveredStack1) equalsIgnoringCase: (recoveredStack2).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 92] ifFalse: [recoveredPC := 104].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := CfsFileDescriptor.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := (recoveredStack2) lockFilename.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := (recoveredStack1) remove: (recoveredStack2).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 104] ifFalse: [recoveredPC := 121].
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := ExDBXmlWorkspaceLocked.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack2 := 'Workspace is in use on machine '.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack4 := 2.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack3 := '.'.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack1) signalWith: (recoveredStack2).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := CfsFileDescriptor.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack2 := (recoveredStack2) lockFilename.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack3 := OCREAT.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack4 := OEXCL.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack3 := (recoveredStack3) | (recoveredStack4).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := (recoveredStack1) open: (recoveredStack2) oflag: (recoveredStack3).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := (recoveredStack1) isError.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 146] ifFalse: [recoveredPC := 156].
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := ExDBXmlWorkspaceLocked.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack2 := 'Unable to create lock file. Maybe the workspace is in use by another user.'.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            (recoveredStack1) signalWith: (recoveredStack2).
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredPC := 159.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            (recoveredStack1) close.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := CfsWriteFileStream.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack2 := (recoveredStack2) lockFilename.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack1 := (recoveredStack1) openEmpty: (recoveredStack2).
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack3 := OS.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack3 := (recoveredStack3) getCurrentProcessId.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack3 := (recoveredStack3) printString.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack3 := $;.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            (recoveredStack2) nextPut: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            (recoveredStack1) close.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20529100; bytecode file offset 0xe25a58"
!DBXml methodsFor: 'recovered'!
saveAllAs: recoveredArg1 progressOn: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) pathName.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) ensurePath: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := -2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := CfsDirectoryDescriptor.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) library.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) dataStoragePath.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := (recoveredStack3) pathName.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyTree: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) isError.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 47].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := CfsDirectoryDescriptor.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := (recoveredStack2) pathName.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1) deletePathRecursive: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := -3.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock47Value0 recoveredBlock47Value1 recoveredBlock47Value2 recoveredBlock47Value3 recoveredBlock47Value4 recoveredBlock47Value5 recoveredBlock47Value6 recoveredBlock47Value7 recoveredBlock47Value8 recoveredBlock47Value9 recoveredBlock47Value10 recoveredBlock47Value11 recoveredBlock47Value12 recoveredBlock47Value13 recoveredBlock47Value14 |
    recoveredBlock47Value0 := CfsDirectoryDescriptor.
    recoveredBlock47Value1 := MainController.
    recoveredBlock47Value2 := (recoveredBlock47Value1) workspaceExtension.
    recoveredBlock47Value3 := ('*') , (recoveredBlock47Value2).
    recoveredBlock47Value4 := recoveredArg1.
    recoveredBlock47Value5 := (recoveredBlock47Value4) pathName.
    (recoveredBlock47Value0) deleteFiles: (recoveredBlock47Value3) in: (recoveredBlock47Value5).
    recoveredBlock47Value6 := CfsDirectoryDescriptor.
    recoveredBlock47Value7 := recoveredArg1.
    recoveredBlock47Value8 := (recoveredBlock47Value7) pathName.
    (recoveredBlock47Value6) deleteFiles: ('.wslock') in: (recoveredBlock47Value8).
    recoveredBlock47Value9 := ('Kli') == ('Call_96007').
    (self) unlock.
    recoveredBlock47Value10 := recoveredArg1.
    recoveredBlock47Value11 := (recoveredBlock47Value10) pathName.
    workspacePath := recoveredBlock47Value11.
    recoveredBlock47Value12 := recoveredArg1.
    workspaceFile := recoveredBlock47Value12.
    (self) saveWorkspace.
    recoveredBlock47Value13 := ('Die') == ('Call_95150').
    recoveredBlock47Value14 := (self) lock.
    recoveredBlock47Value14
].
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack2 := ExError.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack3 := [:recoveredBlock114Arg1 | 
    | recoveredBlock114Local1 recoveredBlock114Stack0 recoveredBlock114Stack1 recoveredBlock114Stack2 recoveredBlock114Stack3 recoveredBlock114Stack4 recoveredBlock114PC recoveredBlock114Step recoveredBlock114Done recoveredBlock114Result |
    recoveredBlock114Stack0 := self.
    recoveredBlock114PC := 120.
    recoveredBlock114Done := false.
    [recoveredBlock114Done not] whileTrue: [
        recoveredBlock114Step := recoveredBlock114PC.
        recoveredBlock114Step = 120 ifTrue: [
            recoveredBlock114Stack1 := 'Die'.
            recoveredBlock114PC := 122.
        ].
        recoveredBlock114Step = 122 ifTrue: [
            recoveredBlock114Stack2 := 'Call_96598'.
            recoveredBlock114PC := 124.
        ].
        recoveredBlock114Step = 124 ifTrue: [
            recoveredBlock114Stack1 := (recoveredBlock114Stack1) == (recoveredBlock114Stack2).
            recoveredBlock114PC := 125.
        ].
        recoveredBlock114Step = 125 ifTrue: [
            recoveredBlock114PC := 126.
        ].
        recoveredBlock114Step = 126 ifTrue: [
            recoveredBlock114Stack1 := ExDBXmlWorkspaceLocked.
            recoveredBlock114PC := 128.
        ].
        recoveredBlock114Step = 128 ifTrue: [
            recoveredBlock114Stack2 := recoveredBlock114Arg1.
            recoveredBlock114PC := 129.
        ].
        recoveredBlock114Step = 129 ifTrue: [
            recoveredBlock114Stack2 := (recoveredBlock114Stack2) exception.
            recoveredBlock114PC := 131.
        ].
        recoveredBlock114Step = 131 ifTrue: [
            recoveredBlock114Stack1 := (recoveredBlock114Stack1) handles: (recoveredBlock114Stack2).
            recoveredBlock114PC := 133.
        ].
        recoveredBlock114Step = 133 ifTrue: [
            (recoveredBlock114Stack1) ifTrue: [recoveredBlock114PC := 141] ifFalse: [recoveredBlock114PC := 136].
        ].
        recoveredBlock114Step = 136 ifTrue: [
            recoveredBlock114Stack1 := Util.
            recoveredBlock114PC := 138.
        ].
        recoveredBlock114Step = 138 ifTrue: [
            recoveredBlock114Stack2 := recoveredBlock114Arg1.
            recoveredBlock114PC := 139.
        ].
        recoveredBlock114Step = 139 ifTrue: [
            (recoveredBlock114Stack1) writeStackTrace: (recoveredBlock114Stack2).
            recoveredBlock114PC := 141.
        ].
        recoveredBlock114Step = 141 ifTrue: [
            recoveredBlock114Stack1 := 'Cannot create file '.
            recoveredBlock114PC := 143.
        ].
        recoveredBlock114Step = 143 ifTrue: [
            recoveredBlock114Stack2 := recoveredArg1.
            recoveredBlock114PC := 146.
        ].
        recoveredBlock114Step = 146 ifTrue: [
            recoveredBlock114Stack1 := (recoveredBlock114Stack1) , (recoveredBlock114Stack2).
            recoveredBlock114PC := 148.
        ].
        recoveredBlock114Step = 148 ifTrue: [
            recoveredBlock114Stack2 := ' as workspace!!'.
            recoveredBlock114PC := 150.
        ].
        recoveredBlock114Step = 150 ifTrue: [
            recoveredBlock114Stack1 := (recoveredBlock114Stack1) , (recoveredBlock114Stack2).
            recoveredBlock114PC := 152.
        ].
        recoveredBlock114Step = 152 ifTrue: [
            recoveredBlock114Stack2 := EsString.
            recoveredBlock114PC := 154.
        ].
        recoveredBlock114Step = 154 ifTrue: [
            recoveredBlock114Stack2 := (recoveredBlock114Stack2) platformLineDelimiter.
            recoveredBlock114PC := 156.
        ].
        recoveredBlock114Step = 156 ifTrue: [
            recoveredBlock114Stack1 := (recoveredBlock114Stack1) , (recoveredBlock114Stack2).
            recoveredBlock114PC := 158.
        ].
        recoveredBlock114Step = 158 ifTrue: [
            recoveredBlock114Stack2 := Util.
            recoveredBlock114PC := 160.
        ].
        recoveredBlock114Step = 160 ifTrue: [
            recoveredBlock114Stack3 := recoveredBlock114Arg1.
            recoveredBlock114PC := 161.
        ].
        recoveredBlock114Step = 161 ifTrue: [
            recoveredBlock114Stack2 := (recoveredBlock114Stack2) exceptionString: (recoveredBlock114Stack3).
            recoveredBlock114PC := 163.
        ].
        recoveredBlock114Step = 163 ifTrue: [
            recoveredBlock114Stack1 := (recoveredBlock114Stack1) , (recoveredBlock114Stack2).
            recoveredBlock114PC := 165.
        ].
        recoveredBlock114Step = 165 ifTrue: [
            recoveredBlock114Local1 := recoveredBlock114Stack1.
            recoveredBlock114PC := 166.
        ].
        recoveredBlock114Step = 166 ifTrue: [
            recoveredBlock114Stack1 := 'Cannot create file '.
            recoveredBlock114PC := 168.
        ].
        recoveredBlock114Step = 168 ifTrue: [
            recoveredBlock114Stack2 := recoveredArg1.
            recoveredBlock114PC := 171.
        ].
        recoveredBlock114Step = 171 ifTrue: [
            recoveredBlock114Stack1 := (recoveredBlock114Stack1) , (recoveredBlock114Stack2).
            recoveredBlock114PC := 173.
        ].
        recoveredBlock114Step = 173 ifTrue: [
            recoveredBlock114Stack2 := ' as workspace!!'.
            recoveredBlock114PC := 175.
        ].
        recoveredBlock114Step = 175 ifTrue: [
            recoveredBlock114Stack1 := (recoveredBlock114Stack1) , (recoveredBlock114Stack2).
            recoveredBlock114PC := 177.
        ].
        recoveredBlock114Step = 177 ifTrue: [
            (recoveredBlock114Stack0) logError: (recoveredBlock114Stack1).
            recoveredBlock114PC := 179.
        ].
        recoveredBlock114Step = 179 ifTrue: [
            recoveredBlock114Stack0 := RBUserInfo.
            recoveredBlock114PC := 181.
        ].
        recoveredBlock114Step = 181 ifTrue: [
            recoveredBlock114Stack1 := recoveredBlock114Local1.
            recoveredBlock114PC := 182.
        ].
        recoveredBlock114Step = 182 ifTrue: [
            recoveredBlock114Stack0 := (recoveredBlock114Stack0) errorMessage: (recoveredBlock114Stack1).
            recoveredBlock114PC := 184.
        ].
        recoveredBlock114Step = 184 ifTrue: [
            (recoveredBlock114Stack0) prompt.
            recoveredBlock114PC := 186.
        ].
        recoveredBlock114Step = 186 ifTrue: [
            recoveredBlock114Stack0 := recoveredBlock114Arg1.
            recoveredBlock114PC := 187.
        ].
        recoveredBlock114Step = 187 ifTrue: [
            recoveredBlock114Stack1 := nil.
            recoveredBlock114PC := 188.
        ].
        recoveredBlock114Step = 188 ifTrue: [
            recoveredBlock114Stack0 := (recoveredBlock114Stack0) exitWith: (recoveredBlock114Stack1).
            recoveredBlock114PC := 190.
        ].
        recoveredBlock114Step = 190 ifTrue: [
            recoveredBlock114Result := recoveredBlock114Stack0.
            recoveredBlock114Done := true.
        ].
    ].
    recoveredBlock114Result
].
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            (recoveredStack1) when: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack0 := (recoveredStack0) saveAllProgressOn: (recoveredStack1).
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20588838; bytecode file offset 0xe85160"
!DBXml methodsFor: 'recovered'!
objectsSortedByAccess
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
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
            recoveredStack0 := (recoveredStack0) allItems.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Local1 recoveredBlock11Local2 recoveredBlock11Stack0 recoveredBlock11Stack1 recoveredBlock11Stack2 recoveredBlock11Stack3 recoveredBlock11Stack4 recoveredBlock11PC recoveredBlock11Step recoveredBlock11Done recoveredBlock11Result |
    recoveredBlock11Stack0 := self.
    recoveredBlock11PC := 18.
    recoveredBlock11Done := false.
    [recoveredBlock11Done not] whileTrue: [
        recoveredBlock11Step := recoveredBlock11PC.
        recoveredBlock11Step = 18 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Arg1.
            recoveredBlock11PC := 21.
        ].
        recoveredBlock11Step = 21 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) rawGetObject.
            recoveredBlock11PC := 22.
        ].
        recoveredBlock11Step = 22 ifTrue: [
            recoveredBlock11Local2 := recoveredBlock11Stack1.
            recoveredBlock11PC := 25.
        ].
        recoveredBlock11Step = 25 ifTrue: [
            recoveredBlock11Stack1 := nil.
            recoveredBlock11PC := 26.
        ].
        recoveredBlock11Step = 26 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Local2.
            recoveredBlock11PC := 29.
        ].
        recoveredBlock11Step = 29 ifTrue: [
            (recoveredBlock11Stack2 == nil) ifTrue: [recoveredBlock11PC := 242] ifFalse: [recoveredBlock11PC := 32].
        ].
        recoveredBlock11Step = 32 ifTrue: [
            recoveredBlock11PC := 33.
        ].
        recoveredBlock11Step = 33 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Local2.
            recoveredBlock11PC := 36.
        ].
        recoveredBlock11Step = 36 ifTrue: [
            recoveredBlock11Stack2 := Set.
            recoveredBlock11PC := 38.
        ].
        recoveredBlock11Step = 38 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) new.
            recoveredBlock11PC := 39.
        ].
        recoveredBlock11Step = 39 ifTrue: [
            recoveredBlock11Stack3 := false.
            recoveredBlock11PC := 40.
        ].
        recoveredBlock11Step = 40 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) xmlCollectDependent: (recoveredBlock11Stack2) withDefaultProject: (recoveredBlock11Stack3).
            recoveredBlock11PC := 42.
        ].
        recoveredBlock11Step = 42 ifTrue: [
            recoveredBlock11Local1 := recoveredBlock11Stack1.
            recoveredBlock11PC := 45.
        ].
        recoveredBlock11Step = 45 ifTrue: [
            recoveredBlock11Stack1 := DBXmlImportDesc.
            recoveredBlock11PC := 47.
        ].
        recoveredBlock11Step = 47 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) amdTypes.
            recoveredBlock11PC := 49.
        ].
        recoveredBlock11Step = 49 ifTrue: [
            recoveredBlock11Stack2 := [:recoveredBlock11Block49Arg1 | 
    | recoveredBlock11Block49Local1 recoveredBlock11Block49Local2 recoveredBlock11Block49Stack0 recoveredBlock11Block49Stack1 recoveredBlock11Block49Stack2 recoveredBlock11Block49Stack3 recoveredBlock11Block49Stack4 recoveredBlock11Block49Stack5 recoveredBlock11Block49Stack6 recoveredBlock11Block49PC recoveredBlock11Block49Step recoveredBlock11Block49Done recoveredBlock11Block49Result |
    recoveredBlock11Block49Stack0 := nil.
    recoveredBlock11Block49PC := 56.
    recoveredBlock11Block49Done := false.
    [recoveredBlock11Block49Done not] whileTrue: [
        recoveredBlock11Block49Step := recoveredBlock11Block49PC.
        recoveredBlock11Block49Step = 56 ifTrue: [
            recoveredBlock11Block49Stack1 := recoveredBlock11Local2.
            recoveredBlock11Block49PC := 59.
        ].
        recoveredBlock11Block49Step = 59 ifTrue: [
            recoveredBlock11Block49Stack2 := recoveredBlock11Block49Arg1.
            recoveredBlock11Block49PC := 62.
        ].
        recoveredBlock11Block49Step = 62 ifTrue: [
            recoveredBlock11Block49Stack3 := recoveredBlock11Local1.
            recoveredBlock11Block49PC := 65.
        ].
        recoveredBlock11Block49Step = 65 ifTrue: [
            recoveredBlock11Block49Stack1 := (recoveredBlock11Block49Stack1) xmlCollectDependentsOfType: (recoveredBlock11Block49Stack2) all: (recoveredBlock11Block49Stack3).
            recoveredBlock11Block49PC := 67.
        ].
        recoveredBlock11Block49Step = 67 ifTrue: [
            recoveredBlock11Block49Stack1 := (recoveredBlock11Block49Stack1) asArray.
            recoveredBlock11Block49PC := 69.
        ].
        recoveredBlock11Block49Step = 69 ifTrue: [
            recoveredBlock11Block49Local2 := recoveredBlock11Block49Stack1.
            recoveredBlock11Block49PC := 72.
        ].
        recoveredBlock11Block49Step = 72 ifTrue: [
            recoveredBlock11Block49Stack1 := nil.
            recoveredBlock11Block49PC := 73.
        ].
        recoveredBlock11Block49Step = 73 ifTrue: [
            recoveredBlock11Block49Stack2 := recoveredBlock11Block49Local2.
            recoveredBlock11Block49PC := 76.
        ].
        recoveredBlock11Block49Step = 76 ifTrue: [
            recoveredBlock11Block49Stack2 := (recoveredBlock11Block49Stack2) size.
            recoveredBlock11Block49PC := 78.
        ].
        recoveredBlock11Block49Step = 78 ifTrue: [
            recoveredBlock11Block49Stack3 := 0.
            recoveredBlock11Block49PC := 80.
        ].
        recoveredBlock11Block49Step = 80 ifTrue: [
            recoveredBlock11Block49Stack2 := (recoveredBlock11Block49Stack2) > (recoveredBlock11Block49Stack3).
            recoveredBlock11Block49PC := 81.
        ].
        recoveredBlock11Block49Step = 81 ifTrue: [
            (recoveredBlock11Block49Stack2) ifTrue: [recoveredBlock11Block49PC := 84] ifFalse: [recoveredBlock11Block49PC := 235].
        ].
        recoveredBlock11Block49Step = 84 ifTrue: [
            recoveredBlock11Block49PC := 85.
        ].
        recoveredBlock11Block49Step = 85 ifTrue: [
            recoveredBlock11Block49Stack1 := nil.
            recoveredBlock11Block49PC := 86.
        ].
        recoveredBlock11Block49Step = 86 ifTrue: [
            recoveredBlock11Block49Stack2 := recoveredBlock11Block49Local2.
            recoveredBlock11Block49PC := 89.
        ].
        recoveredBlock11Block49Step = 89 ifTrue: [
            recoveredBlock11Block49Stack3 := [:block28113b0cArg1 | 
    | block28113b0cValue0 block28113b0cValue1 block28113b0cValue2 |
    block28113b0cValue0 := block28113b0cArg1.
    block28113b0cValue1 := (block28113b0cValue0) isModified.
    block28113b0cValue2 := (block28113b0cValue1) not.
    block28113b0cValue2
].
            recoveredBlock11Block49PC := 91.
        ].
        recoveredBlock11Block49Step = 91 ifTrue: [
            recoveredBlock11Block49PC := 99.
        ].
        recoveredBlock11Block49Step = 99 ifTrue: [
            recoveredBlock11Block49Stack2 := (recoveredBlock11Block49Stack2) allSatisfy: (recoveredBlock11Block49Stack3).
            recoveredBlock11Block49PC := 101.
        ].
        recoveredBlock11Block49Step = 101 ifTrue: [
            (recoveredBlock11Block49Stack2) ifTrue: [recoveredBlock11Block49PC := 104] ifFalse: [recoveredBlock11Block49PC := 235].
        ].
        recoveredBlock11Block49Step = 104 ifTrue: [
            recoveredBlock11Block49PC := 105.
        ].
        recoveredBlock11Block49Step = 105 ifTrue: [
            recoveredBlock11Block49Stack1 := nil.
            recoveredBlock11Block49PC := 106.
        ].
        recoveredBlock11Block49Step = 106 ifTrue: [
            recoveredBlock11Block49Stack2 := recoveredBlock11Block49Local2.
            recoveredBlock11Block49PC := 109.
        ].
        recoveredBlock11Block49Step = 109 ifTrue: [
            recoveredBlock11Block49Stack3 := [:block28113b30Arg1 | 
    | block28113b30Value0 block28113b30Value1 block28113b30Value2 |
    block28113b30Value0 := block28113b30Arg1.
    block28113b30Value1 := (block28113b30Value0) rawGetObject.
    block28113b30Value2 := (block28113b30Value1) isNil.
    block28113b30Value2
].
            recoveredBlock11Block49PC := 111.
        ].
        recoveredBlock11Block49Step = 111 ifTrue: [
            recoveredBlock11Block49PC := 118.
        ].
        recoveredBlock11Block49Step = 118 ifTrue: [
            recoveredBlock11Block49Stack2 := (recoveredBlock11Block49Stack2) allSatisfy: (recoveredBlock11Block49Stack3).
            recoveredBlock11Block49PC := 120.
        ].
        recoveredBlock11Block49Step = 120 ifTrue: [
            (recoveredBlock11Block49Stack2) ifTrue: [recoveredBlock11Block49PC := 235] ifFalse: [recoveredBlock11Block49PC := 124].
        ].
        recoveredBlock11Block49Step = 124 ifTrue: [
            recoveredBlock11Block49PC := 125.
        ].
        recoveredBlock11Block49Step = 125 ifTrue: [
            recoveredBlock11Block49Stack1 := recoveredBlock11Block49Local2.
            recoveredBlock11Block49PC := 128.
        ].
        recoveredBlock11Block49Step = 128 ifTrue: [
            recoveredBlock11Block49Stack2 := 0.
            recoveredBlock11Block49PC := 130.
        ].
        recoveredBlock11Block49Step = 130 ifTrue: [
            recoveredBlock11Block49Stack3 := [:block28113b54Arg1 :block28113b54Arg2 | 
    | block28113b54Value0 block28113b54Value1 block28113b54Value2 block28113b54Value3 |
    block28113b54Value0 := block28113b54Arg1.
    block28113b54Value1 := block28113b54Arg2.
    block28113b54Value2 := (block28113b54Value1) lastAccess.
    block28113b54Value3 := (block28113b54Value0) max: (block28113b54Value2).
    block28113b54Value3
].
            recoveredBlock11Block49PC := 132.
        ].
        recoveredBlock11Block49Step = 132 ifTrue: [
            recoveredBlock11Block49PC := 143.
        ].
        recoveredBlock11Block49Step = 143 ifTrue: [
            recoveredBlock11Block49Stack1 := (recoveredBlock11Block49Stack1) inject: (recoveredBlock11Block49Stack2) into: (recoveredBlock11Block49Stack3).
            recoveredBlock11Block49PC := 145.
        ].
        recoveredBlock11Block49Step = 145 ifTrue: [
            recoveredBlock11Block49Local1 := recoveredBlock11Block49Stack1.
            recoveredBlock11Block49PC := 148.
        ].
        recoveredBlock11Block49Step = 148 ifTrue: [
            recoveredBlock11Block49Stack1 := nil.
            recoveredBlock11Block49PC := 149.
        ].
        recoveredBlock11Block49Step = 149 ifTrue: [
            recoveredBlock11Block49Stack2 := recoveredBlock11Block49Local1.
            recoveredBlock11Block49PC := 152.
        ].
        recoveredBlock11Block49Step = 152 ifTrue: [
            recoveredBlock11Block49Stack3 := 0.
            recoveredBlock11Block49PC := 154.
        ].
        recoveredBlock11Block49Step = 154 ifTrue: [
            recoveredBlock11Block49Stack2 := (recoveredBlock11Block49Stack2) > (recoveredBlock11Block49Stack3).
            recoveredBlock11Block49PC := 155.
        ].
        recoveredBlock11Block49Step = 155 ifTrue: [
            (recoveredBlock11Block49Stack2) ifTrue: [recoveredBlock11Block49PC := 158] ifFalse: [recoveredBlock11Block49PC := 231].
        ].
        recoveredBlock11Block49Step = 158 ifTrue: [
            recoveredBlock11Block49PC := 159.
        ].
        recoveredBlock11Block49Step = 159 ifTrue: [
            recoveredBlock11Block49Stack1 := recoveredLocal1.
            recoveredBlock11Block49PC := 162.
        ].
        recoveredBlock11Block49Step = 162 ifTrue: [
            recoveredBlock11Block49Stack2 := Array.
            recoveredBlock11Block49PC := 164.
        ].
        recoveredBlock11Block49Step = 164 ifTrue: [
            recoveredBlock11Block49Stack3 := recoveredBlock11Local2.
            recoveredBlock11Block49PC := 167.
        ].
        recoveredBlock11Block49Step = 167 ifTrue: [
            recoveredBlock11Block49Stack4 := recoveredBlock11Block49Arg1.
            recoveredBlock11Block49PC := 170.
        ].
        recoveredBlock11Block49Step = 170 ifTrue: [
            recoveredBlock11Block49Stack5 := recoveredBlock11Block49Local1.
            recoveredBlock11Block49PC := 173.
        ].
        recoveredBlock11Block49Step = 173 ifTrue: [
            recoveredBlock11Block49Stack2 := (recoveredBlock11Block49Stack2) with: (recoveredBlock11Block49Stack3) with: (recoveredBlock11Block49Stack4) with: (recoveredBlock11Block49Stack5).
            recoveredBlock11Block49PC := 176.
        ].
        recoveredBlock11Block49Step = 176 ifTrue: [
            (recoveredBlock11Block49Stack1) add: (recoveredBlock11Block49Stack2).
            recoveredBlock11Block49PC := 178.
        ].
        recoveredBlock11Block49Step = 178 ifTrue: [
            recoveredBlock11Block49Stack1 := recoveredBlock11Block49Local2.
            recoveredBlock11Block49PC := 181.
        ].
        recoveredBlock11Block49Step = 181 ifTrue: [
            recoveredBlock11Block49Stack2 := [:recoveredBlock11Block49Block181Arg1 | 
    | recoveredBlock11Block49Block181Stack0 recoveredBlock11Block49Block181Stack1 recoveredBlock11Block49Block181Stack2 recoveredBlock11Block49Block181Stack3 recoveredBlock11Block49Block181Stack4 recoveredBlock11Block49Block181Stack5 recoveredBlock11Block49Block181Stack6 recoveredBlock11Block49Block181PC recoveredBlock11Block49Block181Step recoveredBlock11Block49Block181Done recoveredBlock11Block49Block181Result |
    recoveredBlock11Block49Block181Stack0 := nil.
    recoveredBlock11Block49Block181PC := 188.
    recoveredBlock11Block49Block181Done := false.
    [recoveredBlock11Block49Block181Done not] whileTrue: [
        recoveredBlock11Block49Block181Step := recoveredBlock11Block49Block181PC.
        recoveredBlock11Block49Block181Step = 188 ifTrue: [
            recoveredBlock11Block49Block181Stack1 := nil.
            recoveredBlock11Block49Block181PC := 189.
        ].
        recoveredBlock11Block49Block181Step = 189 ifTrue: [
            recoveredBlock11Block49Block181Stack2 := recoveredBlock11Block49Block181Arg1.
            recoveredBlock11Block49Block181PC := 190.
        ].
        recoveredBlock11Block49Block181Step = 190 ifTrue: [
            recoveredBlock11Block49Block181Stack2 := (recoveredBlock11Block49Block181Stack2) lastAccess.
            recoveredBlock11Block49Block181PC := 192.
        ].
        recoveredBlock11Block49Block181Step = 192 ifTrue: [
            recoveredBlock11Block49Block181Stack3 := recoveredBlock11Block49Local1.
            recoveredBlock11Block49Block181PC := 195.
        ].
        recoveredBlock11Block49Block181Step = 195 ifTrue: [
            recoveredBlock11Block49Block181Stack2 := (recoveredBlock11Block49Block181Stack2) < (recoveredBlock11Block49Block181Stack3).
            recoveredBlock11Block49Block181PC := 196.
        ].
        recoveredBlock11Block49Block181Step = 196 ifTrue: [
            (recoveredBlock11Block49Block181Stack2) ifTrue: [recoveredBlock11Block49Block181PC := 200] ifFalse: [recoveredBlock11Block49Block181PC := 228].
        ].
        recoveredBlock11Block49Block181Step = 200 ifTrue: [
            recoveredBlock11Block49Block181Stack2 := recoveredBlock11Block49Block181Arg1.
            recoveredBlock11Block49Block181PC := 201.
        ].
        recoveredBlock11Block49Block181Step = 201 ifTrue: [
            recoveredBlock11Block49Block181Stack2 := (recoveredBlock11Block49Block181Stack2) rawGetObject.
            recoveredBlock11Block49Block181PC := 202.
        ].
        recoveredBlock11Block49Block181Step = 202 ifTrue: [
            recoveredBlock11Block49Block181Stack2 := (recoveredBlock11Block49Block181Stack2) class.
            recoveredBlock11Block49Block181PC := 204.
        ].
        recoveredBlock11Block49Block181Step = 204 ifTrue: [
            recoveredBlock11Block49Block181Stack3 := SGTextDocumentation.
            recoveredBlock11Block49Block181PC := 206.
        ].
        recoveredBlock11Block49Block181Step = 206 ifTrue: [
            (recoveredBlock11Block49Block181Stack2 ~~ recoveredBlock11Block49Block181Stack3) ifTrue: [recoveredBlock11Block49Block181PC := 228] ifFalse: [recoveredBlock11Block49Block181PC := 210].
        ].
        recoveredBlock11Block49Block181Step = 210 ifTrue: [
            recoveredBlock11Block49Block181PC := 211.
        ].
        recoveredBlock11Block49Block181Step = 211 ifTrue: [
            recoveredBlock11Block49Block181Stack1 := recoveredLocal1.
            recoveredBlock11Block49Block181PC := 214.
        ].
        recoveredBlock11Block49Block181Step = 214 ifTrue: [
            recoveredBlock11Block49Block181Stack2 := Array.
            recoveredBlock11Block49Block181PC := 216.
        ].
        recoveredBlock11Block49Block181Step = 216 ifTrue: [
            recoveredBlock11Block49Block181Stack3 := recoveredBlock11Block49Block181Arg1.
            recoveredBlock11Block49Block181PC := 217.
        ].
        recoveredBlock11Block49Block181Step = 217 ifTrue: [
            recoveredBlock11Block49Block181Stack3 := (recoveredBlock11Block49Block181Stack3) rawGetObject.
            recoveredBlock11Block49Block181PC := 218.
        ].
        recoveredBlock11Block49Block181Step = 218 ifTrue: [
            recoveredBlock11Block49Block181Stack4 := 'amdType_auto'.
            recoveredBlock11Block49Block181PC := 220.
        ].
        recoveredBlock11Block49Block181Step = 220 ifTrue: [
            recoveredBlock11Block49Block181Stack5 := recoveredBlock11Block49Block181Arg1.
            recoveredBlock11Block49Block181PC := 221.
        ].
        recoveredBlock11Block49Block181Step = 221 ifTrue: [
            recoveredBlock11Block49Block181Stack5 := (recoveredBlock11Block49Block181Stack5) lastAccess.
            recoveredBlock11Block49Block181PC := 223.
        ].
        recoveredBlock11Block49Block181Step = 223 ifTrue: [
            recoveredBlock11Block49Block181Stack2 := (recoveredBlock11Block49Block181Stack2) with: (recoveredBlock11Block49Block181Stack3) with: (recoveredBlock11Block49Block181Stack4) with: (recoveredBlock11Block49Block181Stack5).
            recoveredBlock11Block49Block181PC := 226.
        ].
        recoveredBlock11Block49Block181Step = 226 ifTrue: [
            recoveredBlock11Block49Block181Stack1 := (recoveredBlock11Block49Block181Stack1) add: (recoveredBlock11Block49Block181Stack2).
            recoveredBlock11Block49Block181PC := 228.
        ].
        recoveredBlock11Block49Block181Step = 228 ifTrue: [
            recoveredBlock11Block49Block181Result := recoveredBlock11Block49Block181Stack1.
            recoveredBlock11Block49Block181Done := true.
        ].
    ].
    recoveredBlock11Block49Block181Result
].
            recoveredBlock11Block49PC := 229.
        ].
        recoveredBlock11Block49Step = 229 ifTrue: [
            recoveredBlock11Block49Stack1 := (recoveredBlock11Block49Stack1) do: (recoveredBlock11Block49Stack2).
            recoveredBlock11Block49PC := 231.
        ].
        recoveredBlock11Block49Step = 231 ifTrue: [
            recoveredBlock11Block49Stack2 := nil.
            recoveredBlock11Block49PC := 232.
        ].
        recoveredBlock11Block49Step = 232 ifTrue: [
            recoveredBlock11Block49Local1 := recoveredBlock11Block49Stack2.
            recoveredBlock11Block49PC := 235.
        ].
        recoveredBlock11Block49Step = 235 ifTrue: [
            recoveredBlock11Block49Result := recoveredBlock11Block49Stack1.
            recoveredBlock11Block49Done := true.
        ].
    ].
    recoveredBlock11Block49Result
].
            recoveredBlock11PC := 236.
        ].
        recoveredBlock11Step = 236 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) do: (recoveredBlock11Stack2).
            recoveredBlock11PC := 238.
        ].
        recoveredBlock11Step = 238 ifTrue: [
            recoveredBlock11Stack2 := nil.
            recoveredBlock11PC := 239.
        ].
        recoveredBlock11Step = 239 ifTrue: [
            recoveredBlock11Local1 := recoveredBlock11Stack2.
            recoveredBlock11PC := 242.
        ].
        recoveredBlock11Step = 242 ifTrue: [
            recoveredBlock11Result := recoveredBlock11Stack1.
            recoveredBlock11Done := true.
        ].
    ].
    recoveredBlock11Result
].
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack1 := [:block28113b78Arg1 :block28113b78Arg2 | 
    | block28113b78Value0 block28113b78Value1 block28113b78Value2 block28113b78Value3 block28113b78Value4 |
    block28113b78Value0 := block28113b78Arg1.
    block28113b78Value1 := (block28113b78Value0) at: (3).
    block28113b78Value2 := block28113b78Arg2.
    block28113b78Value3 := (block28113b78Value2) at: (3).
    block28113b78Value4 := (block28113b78Value1) < (block28113b78Value3).
    block28113b78Value4
].
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack0 := (recoveredStack0) sort: (recoveredStack1).
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205abfdc; bytecode file offset 0xea8958"
!DBXml methodsFor: 'recovered'!
saveAllProgressOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGMonitorStreamDummy.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := [
    | recoveredBlock7Local1 recoveredBlock7Local2 recoveredBlock7Local3 recoveredBlock7Local4 recoveredBlock7Local5 recoveredBlock7Local6 recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7Stack3 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
    recoveredBlock7Stack0 := self.
    recoveredBlock7PC := 14.
    recoveredBlock7Done := false.
    [recoveredBlock7Done not] whileTrue: [
        recoveredBlock7Step := recoveredBlock7PC.
        recoveredBlock7Step = 14 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) noSave.
            recoveredBlock7PC := 15.
        ].
        recoveredBlock7Step = 15 ifTrue: [
            (recoveredBlock7Stack0) ifTrue: [recoveredBlock7PC := 18] ifFalse: [recoveredBlock7PC := 35].
        ].
        recoveredBlock7Step = 18 ifTrue: [
            recoveredBlock7Stack0 := self.
            recoveredBlock7PC := 19.
        ].
        recoveredBlock7Step = 19 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) getModifiedItemsWithoutDefaultProjects.
            recoveredBlock7PC := 20.
        ].
        recoveredBlock7Step = 20 ifTrue: [
            recoveredBlock7Stack1 := [:block281166a4Arg1 | 
    | block281166a4Value0 block281166a4Value1 |
    block281166a4Value0 := block281166a4Arg1.
    block281166a4Value1 := (block281166a4Value0) dbXmlClearModifyRecursive.
    block281166a4Value1
].
            recoveredBlock7PC := 22.
        ].
        recoveredBlock7Step = 22 ifTrue: [
            recoveredBlock7PC := 30.
        ].
        recoveredBlock7Step = 30 ifTrue: [
            (recoveredBlock7Stack0) do: (recoveredBlock7Stack1).
            recoveredBlock7PC := 32.
        ].
        recoveredBlock7Step = 32 ifTrue: [
            recoveredBlock7Stack0 := 0.
            recoveredBlock7PC := 34.
        ].
        recoveredBlock7Step = 34 ifTrue: [
            ^recoveredBlock7Stack0
        ].
        recoveredBlock7Step = 35 ifTrue: [
            recoveredBlock7Stack0 := 'Kli'.
            recoveredBlock7PC := 37.
        ].
        recoveredBlock7Step = 37 ifTrue: [
            recoveredBlock7Stack1 := 'Call_327488'.
            recoveredBlock7PC := 39.
        ].
        recoveredBlock7Step = 39 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) == (recoveredBlock7Stack1).
            recoveredBlock7PC := 40.
        ].
        recoveredBlock7Step = 40 ifTrue: [
            recoveredBlock7PC := 41.
        ].
        recoveredBlock7Step = 41 ifTrue: [
            recoveredBlock7Stack0 := self.
            recoveredBlock7PC := 42.
        ].
        recoveredBlock7Step = 42 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) getModifiedItemsWithoutDefaultProjects.
            recoveredBlock7PC := 43.
        ].
        recoveredBlock7Step = 43 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) notEmpty.
            recoveredBlock7PC := 45.
        ].
        recoveredBlock7Step = 45 ifTrue: [
            (recoveredBlock7Stack0) ifTrue: [recoveredBlock7PC := 48] ifFalse: [recoveredBlock7PC := 51].
        ].
        recoveredBlock7Step = 48 ifTrue: [
            recoveredBlock7Stack0 := self.
            recoveredBlock7PC := 49.
        ].
        recoveredBlock7Step = 49 ifTrue: [
            (recoveredBlock7Stack0) saveWorkspace.
            recoveredBlock7PC := 51.
        ].
        recoveredBlock7Step = 51 ifTrue: [
            recoveredBlock7Stack0 := 0.
            recoveredBlock7PC := 53.
        ].
        recoveredBlock7Step = 53 ifTrue: [
            recoveredBlock7Local1 := recoveredBlock7Stack0.
            recoveredBlock7PC := 56.
        ].
        recoveredBlock7Step = 56 ifTrue: [
            recoveredBlock7PC := 256.
        ].
        recoveredBlock7Step = 60 ifTrue: [
            recoveredBlock7Stack0 := recoveredBlock7Local1.
            recoveredBlock7PC := 63.
        ].
        recoveredBlock7Step = 63 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) + (1).
            recoveredBlock7PC := 64.
        ].
        recoveredBlock7Step = 64 ifTrue: [
            recoveredBlock7Local1 := recoveredBlock7Stack0.
            recoveredBlock7PC := 67.
        ].
        recoveredBlock7Step = 67 ifTrue: [
            recoveredBlock7Stack0 := SGMonitorStreamDummy.
            recoveredBlock7PC := 69.
        ].
        recoveredBlock7Step = 69 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) create.
            recoveredBlock7PC := 70.
        ].
        recoveredBlock7Step = 70 ifTrue: [
            recoveredBlock7Stack1 := [
    | recoveredBlock7Block70Value0 recoveredBlock7Block70Value1 recoveredBlock7Block70Value2 recoveredBlock7Block70Value3 recoveredBlock7Block70Value4 recoveredBlock7Block70Value5 |
    recoveredBlock7Block70Value0 := recoveredBlock7Local2.
    recoveredBlock7Block70Value1 := (recoveredBlock7Block70Value0) size.
    recoveredBlock7Block70Value2 := (recoveredBlock7Block70Value1) asString.
    recoveredBlock7Block70Value3 := recoveredBlock7Local1.
    recoveredBlock7Block70Value4 := (recoveredBlock7Block70Value3) printString.
    recoveredBlock7Block70Value5 := ('<Workspace> Try to commit %1 items. Attempt %2.') bindWith: (recoveredBlock7Block70Value2) with: (recoveredBlock7Block70Value4).
    recoveredBlock7Block70Value5
].
            recoveredBlock7PC := 93.
        ].
        recoveredBlock7Step = 93 ifTrue: [
            (recoveredBlock7Stack0) addDebugTextBlock: (recoveredBlock7Stack1).
            recoveredBlock7PC := 95.
        ].
        recoveredBlock7Step = 95 ifTrue: [
            recoveredBlock7Stack0 := recoveredBlock7Local2.
            recoveredBlock7PC := 98.
        ].
        recoveredBlock7Step = 98 ifTrue: [
            recoveredBlock7Stack1 := [:block281166c8Arg1 | 
    | block281166c8Value0 block281166c8Value1 block281166c8Value2 |
    block281166c8Value0 := block281166c8Arg1.
    block281166c8Value1 := (block281166c8Value0) object.
    block281166c8Value2 := (block281166c8Value1) dbXmlUpdateReferences.
    block281166c8Value2
].
            recoveredBlock7PC := 100.
        ].
        recoveredBlock7Step = 100 ifTrue: [
            recoveredBlock7PC := 110.
        ].
        recoveredBlock7Step = 110 ifTrue: [
            (recoveredBlock7Stack0) do: (recoveredBlock7Stack1).
            recoveredBlock7PC := 112.
        ].
        recoveredBlock7Step = 112 ifTrue: [
            recoveredBlock7Stack0 := DBXmlExportController.
            recoveredBlock7PC := 114.
        ].
        recoveredBlock7Step = 114 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) new.
            recoveredBlock7PC := 116.
        ].
        recoveredBlock7Step = 116 ifTrue: [
            recoveredBlock7Stack1 := wsManager.
            recoveredBlock7PC := 118.
        ].
        recoveredBlock7Step = 118 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) controller.
            recoveredBlock7PC := 120.
        ].
        recoveredBlock7Step = 120 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) initOn: (recoveredBlock7Stack1).
            recoveredBlock7PC := 122.
        ].
        recoveredBlock7Step = 122 ifTrue: [
            recoveredBlock7Local6 := recoveredBlock7Stack0.
            recoveredBlock7PC := 125.
        ].
        recoveredBlock7Step = 125 ifTrue: [
            recoveredBlock7Stack0 := recoveredArg1.
            recoveredBlock7PC := 128.
        ].
        recoveredBlock7Step = 128 ifTrue: [
            (recoveredBlock7Stack0 == nil) ifTrue: [recoveredBlock7PC := 139] ifFalse: [recoveredBlock7PC := 132].
        ].
        recoveredBlock7Step = 132 ifTrue: [
            recoveredBlock7Stack0 := recoveredArg1.
            recoveredBlock7PC := 135.
        ].
        recoveredBlock7Step = 135 ifTrue: [
            recoveredBlock7Stack1 := 0.
            recoveredBlock7PC := 137.
        ].
        recoveredBlock7Step = 137 ifTrue: [
            (recoveredBlock7Stack0) fractionComplete: (recoveredBlock7Stack1).
            recoveredBlock7PC := 139.
        ].
        recoveredBlock7Step = 139 ifTrue: [
            recoveredBlock7Stack0 := [
    | recoveredBlock7Block139Stack0 recoveredBlock7Block139Stack1 recoveredBlock7Block139Stack2 recoveredBlock7Block139Stack3 recoveredBlock7Block139PC recoveredBlock7Block139Step recoveredBlock7Block139Done recoveredBlock7Block139Result |
    recoveredBlock7Block139Stack0 := self.
    recoveredBlock7Block139PC := 146.
    recoveredBlock7Block139Done := false.
    [recoveredBlock7Block139Done not] whileTrue: [
        recoveredBlock7Block139Step := recoveredBlock7Block139PC.
        recoveredBlock7Block139Step = 146 ifTrue: [
            recoveredBlock7Block139Stack1 := recoveredBlock7Local2.
            recoveredBlock7Block139PC := 149.
        ].
        recoveredBlock7Block139Step = 149 ifTrue: [
            recoveredBlock7Block139Stack2 := [:recoveredBlock7Block139Block149Arg1 :recoveredBlock7Block139Block149Arg2 | 
    | recoveredBlock7Block139Block149Stack0 recoveredBlock7Block139Block149Stack1 recoveredBlock7Block139Block149Stack2 recoveredBlock7Block139Block149Stack3 recoveredBlock7Block139Block149Stack4 recoveredBlock7Block139Block149PC recoveredBlock7Block139Block149Step recoveredBlock7Block139Block149Done recoveredBlock7Block139Block149Result |
    recoveredBlock7Block139Block149Stack0 := nil.
    recoveredBlock7Block139Block149PC := 156.
    recoveredBlock7Block139Block149Done := false.
    [recoveredBlock7Block139Block149Done not] whileTrue: [
        recoveredBlock7Block139Block149Step := recoveredBlock7Block139Block149PC.
        recoveredBlock7Block139Block149Step = 156 ifTrue: [
            recoveredBlock7Block139Block149Stack1 := recoveredBlock7Block139Block149Arg1.
            recoveredBlock7Block139Block149PC := 157.
        ].
        recoveredBlock7Block139Block149Step = 157 ifTrue: [
            recoveredBlock7Block139Block149Stack1 := (recoveredBlock7Block139Block149Stack1) object.
            recoveredBlock7Block139Block149PC := 159.
        ].
        recoveredBlock7Block139Block149Step = 159 ifTrue: [
            recoveredBlock7Block139Block149Stack2 := recoveredBlock7Local6.
            recoveredBlock7Block139Block149PC := 162.
        ].
        recoveredBlock7Block139Block149Step = 162 ifTrue: [
            recoveredBlock7Block139Block149Stack3 := false.
            recoveredBlock7Block139Block149PC := 163.
        ].
        recoveredBlock7Block139Block149Step = 163 ifTrue: [
            (recoveredBlock7Block139Block149Stack1) saveWith: (recoveredBlock7Block139Block149Stack2) scm: (recoveredBlock7Block139Block149Stack3).
            recoveredBlock7Block139Block149PC := 165.
        ].
        recoveredBlock7Block139Block149Step = 165 ifTrue: [
            recoveredBlock7Block139Block149Stack1 := nil.
            recoveredBlock7Block139Block149PC := 166.
        ].
        recoveredBlock7Block139Block149Step = 166 ifTrue: [
            recoveredBlock7Block139Block149Stack2 := recoveredArg1.
            recoveredBlock7Block139Block149PC := 169.
        ].
        recoveredBlock7Block139Block149Step = 169 ifTrue: [
            (recoveredBlock7Block139Block149Stack2 == nil) ifTrue: [recoveredBlock7Block139Block149PC := 186] ifFalse: [recoveredBlock7Block139Block149PC := 172].
        ].
        recoveredBlock7Block139Block149Step = 172 ifTrue: [
            recoveredBlock7Block139Block149PC := 173.
        ].
        recoveredBlock7Block139Block149Step = 173 ifTrue: [
            recoveredBlock7Block139Block149Stack1 := recoveredArg1.
            recoveredBlock7Block139Block149PC := 176.
        ].
        recoveredBlock7Block139Block149Step = 176 ifTrue: [
            recoveredBlock7Block139Block149Stack2 := recoveredBlock7Block139Block149Arg2.
            recoveredBlock7Block139Block149PC := 177.
        ].
        recoveredBlock7Block139Block149Step = 177 ifTrue: [
            recoveredBlock7Block139Block149Stack3 := recoveredBlock7Local2.
            recoveredBlock7Block139Block149PC := 180.
        ].
        recoveredBlock7Block139Block149Step = 180 ifTrue: [
            recoveredBlock7Block139Block149Stack3 := (recoveredBlock7Block139Block149Stack3) size.
            recoveredBlock7Block139Block149PC := 182.
        ].
        recoveredBlock7Block139Block149Step = 182 ifTrue: [
            recoveredBlock7Block139Block149Stack2 := (recoveredBlock7Block139Block149Stack2) / (recoveredBlock7Block139Block149Stack3).
            recoveredBlock7Block139Block149PC := 184.
        ].
        recoveredBlock7Block139Block149Step = 184 ifTrue: [
            recoveredBlock7Block139Block149Stack1 := (recoveredBlock7Block139Block149Stack1) fractionComplete: (recoveredBlock7Block139Block149Stack2).
            recoveredBlock7Block139Block149PC := 186.
        ].
        recoveredBlock7Block139Block149Step = 186 ifTrue: [
            recoveredBlock7Block139Block149Result := recoveredBlock7Block139Block149Stack1.
            recoveredBlock7Block139Block149Done := true.
        ].
    ].
    recoveredBlock7Block139Block149Result
].
            recoveredBlock7Block139PC := 187.
        ].
        recoveredBlock7Block139Step = 187 ifTrue: [
            (recoveredBlock7Block139Stack1) doWithIndex: (recoveredBlock7Block139Stack2).
            recoveredBlock7Block139PC := 189.
        ].
        recoveredBlock7Block139Step = 189 ifTrue: [
            recoveredBlock7Block139Stack1 := nil.
            recoveredBlock7Block139PC := 190.
        ].
        recoveredBlock7Block139Step = 190 ifTrue: [
            recoveredBlock7Block139Stack2 := ASDAscetController.
            recoveredBlock7Block139PC := 192.
        ].
        recoveredBlock7Block139Step = 192 ifTrue: [
            recoveredBlock7Block139Stack2 := (recoveredBlock7Block139Stack2) isSCMActive.
            recoveredBlock7Block139PC := 194.
        ].
        recoveredBlock7Block139Step = 194 ifTrue: [
            (recoveredBlock7Block139Stack2) ifTrue: [recoveredBlock7Block139PC := 198] ifFalse: [recoveredBlock7Block139PC := 202].
        ].
        recoveredBlock7Block139Step = 198 ifTrue: [
            recoveredBlock7Block139PC := 199.
        ].
        recoveredBlock7Block139Step = 199 ifTrue: [
            recoveredBlock7Block139Stack1 := self.
            recoveredBlock7Block139PC := 200.
        ].
        recoveredBlock7Block139Step = 200 ifTrue: [
            recoveredBlock7Block139Stack1 := (recoveredBlock7Block139Stack1) scmStoreEverything.
            recoveredBlock7Block139PC := 202.
        ].
        recoveredBlock7Block139Step = 202 ifTrue: [
            recoveredBlock7Block139Result := recoveredBlock7Block139Stack1.
            recoveredBlock7Block139Done := true.
        ].
    ].
    recoveredBlock7Block139Result
].
            recoveredBlock7PC := 203.
        ].
        recoveredBlock7Step = 203 ifTrue: [
            recoveredBlock7Stack1 := ExError.
            recoveredBlock7PC := 205.
        ].
        recoveredBlock7Step = 205 ifTrue: [
            recoveredBlock7Stack2 := [:recoveredBlock7Block205Arg1 | 
    | recoveredBlock7Block205Value0 recoveredBlock7Block205Value1 recoveredBlock7Block205Value2 recoveredBlock7Block205Value3 recoveredBlock7Block205Value4 recoveredBlock7Block205Value5 recoveredBlock7Block205Value6 recoveredBlock7Block205Value7 recoveredBlock7Block205Value8 recoveredBlock7Block205Value9 recoveredBlock7Block205Value10 recoveredBlock7Block205Value11 recoveredBlock7Block205Value12 recoveredBlock7Block205Value13 recoveredBlock7Block205Value14 recoveredBlock7Block205Value15 |
    recoveredBlock7Block205Value0 := Util.
    recoveredBlock7Block205Value1 := recoveredBlock7Block205Arg1.
    (recoveredBlock7Block205Value0) writeStackTrace: (recoveredBlock7Block205Value1).
    recoveredBlock7Block205Value2 := Util.
    recoveredBlock7Block205Value3 := recoveredBlock7Block205Arg1.
    recoveredBlock7Block205Value4 := (recoveredBlock7Block205Value2) exceptionString: (recoveredBlock7Block205Value3).
    recoveredBlock7Block205Value5 := ('Storage failed: ') , (recoveredBlock7Block205Value4).
    (self) logError: (recoveredBlock7Block205Value5).
    recoveredBlock7Block205Value6 := RBUserInfo.
    recoveredBlock7Block205Value7 := ('Storage failed!!\ \Reported Reason:\') withCrs.
    recoveredBlock7Block205Value8 := recoveredBlock7Block205Arg1.
    recoveredBlock7Block205Value9 := (recoveredBlock7Block205Value8) arguments.
    recoveredBlock7Block205Value10 := (recoveredBlock7Block205Value9) printString.
    recoveredBlock7Block205Value11 := (recoveredBlock7Block205Value7) , (recoveredBlock7Block205Value10).
    recoveredBlock7Block205Value12 := (recoveredBlock7Block205Value6) errorMessage: (recoveredBlock7Block205Value11).
    recoveredBlock7Block205Value13 := recoveredBlock7Block205Value12.
    recoveredBlock7Block205Value14 := recoveredBlock7Block205Arg1.
    recoveredBlock7Block205Value15 := (recoveredBlock7Block205Value14) printString.
    (recoveredBlock7Block205Value13) context: (recoveredBlock7Block205Value15).
    (recoveredBlock7Block205Value12) prompt.
    ^-1
].
            recoveredBlock7PC := 254.
        ].
        recoveredBlock7Step = 254 ifTrue: [
            (recoveredBlock7Stack0) when: (recoveredBlock7Stack1) do: (recoveredBlock7Stack2).
            recoveredBlock7PC := 256.
        ].
        recoveredBlock7Step = 256 ifTrue: [
            recoveredBlock7Stack0 := self.
            recoveredBlock7PC := 257.
        ].
        recoveredBlock7Step = 257 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) getModifiedItemsWithoutDefaultProjects.
            recoveredBlock7PC := 258.
        ].
        recoveredBlock7Step = 258 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Stack0.
            recoveredBlock7PC := 259.
        ].
        recoveredBlock7Step = 259 ifTrue: [
            recoveredBlock7Local2 := recoveredBlock7Stack1.
            recoveredBlock7PC := 262.
        ].
        recoveredBlock7Step = 262 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) notEmpty.
            recoveredBlock7PC := 264.
        ].
        recoveredBlock7Step = 264 ifTrue: [
            (recoveredBlock7Stack0) ifTrue: [recoveredBlock7PC := 268] ifFalse: [recoveredBlock7PC := 278].
        ].
        recoveredBlock7Step = 268 ifTrue: [
            recoveredBlock7Stack0 := recoveredBlock7Local1.
            recoveredBlock7PC := 271.
        ].
        recoveredBlock7Step = 271 ifTrue: [
            recoveredBlock7Stack1 := 4.
            recoveredBlock7PC := 273.
        ].
        recoveredBlock7Step = 273 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) < (recoveredBlock7Stack1).
            recoveredBlock7PC := 274.
        ].
        recoveredBlock7Step = 274 ifTrue: [
            (recoveredBlock7Stack0) ifTrue: [recoveredBlock7PC := 60] ifFalse: [recoveredBlock7PC := 278].
        ].
        recoveredBlock7Step = 278 ifTrue: [
            recoveredBlock7Stack0 := self.
            recoveredBlock7PC := 279.
        ].
        recoveredBlock7Step = 279 ifTrue: [
            recoveredBlock7Stack1 := [
    | recoveredBlock7Block279Value0 recoveredBlock7Block279Value1 |
    recoveredBlock7Block279Value0 := recoveredBlock7Local1.
    recoveredBlock7Block279Value1 := (recoveredBlock7Block279Value0) < (4).
    recoveredBlock7Block279Value1
].
            recoveredBlock7PC := 293.
        ].
        recoveredBlock7Step = 293 ifTrue: [
            recoveredBlock7Stack2 := 'Save Workspace - possible loop detected'.
            recoveredBlock7PC := 295.
        ].
        recoveredBlock7Step = 295 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) runtimeAssert: (recoveredBlock7Stack1) additionalInfo: (recoveredBlock7Stack2).
            recoveredBlock7PC := 297.
        ].
        recoveredBlock7Step = 297 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack0.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
    (recoveredValue1) measureTimeFor: (recoveredValue2) description: ('Saving workspace ...').
    ^0
! !

"ASDBase.ic method 0x205da578; bytecode file offset 0xed6eec"
!DBXml methodsFor: 'recovered'!
readFolder: recoveredArg1 parent: recoveredArg2 namespace: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 'name'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) getNMToken: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := '/'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := 'BOSCH_CC_WORKSPACE'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := 'SGLibrary'.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) objectsForClass: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredPC := 51.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) childrenProxies.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := [:recoveredBlock57Arg1 | 
    | recoveredBlock57Stack0 recoveredBlock57Stack1 recoveredBlock57Stack2 recoveredBlock57Stack3 recoveredBlock57PC recoveredBlock57Step recoveredBlock57Done recoveredBlock57Result |
    recoveredBlock57Stack0 := self.
    recoveredBlock57PC := 64.
    recoveredBlock57Done := false.
    [recoveredBlock57Done not] whileTrue: [
        recoveredBlock57Step := recoveredBlock57PC.
        recoveredBlock57Step = 64 ifTrue: [
            recoveredBlock57Stack1 := false.
            recoveredBlock57PC := 65.
        ].
        recoveredBlock57Step = 65 ifTrue: [
            recoveredBlock57Stack2 := recoveredBlock57Arg1.
            recoveredBlock57PC := 66.
        ].
        recoveredBlock57Step = 66 ifTrue: [
            recoveredBlock57Stack2 := (recoveredBlock57Stack2) isFolder.
            recoveredBlock57PC := 68.
        ].
        recoveredBlock57Step = 68 ifTrue: [
            (recoveredBlock57Stack2) ifTrue: [recoveredBlock57PC := 72] ifFalse: [recoveredBlock57PC := 80].
        ].
        recoveredBlock57Step = 72 ifTrue: [
            recoveredBlock57PC := 73.
        ].
        recoveredBlock57Step = 73 ifTrue: [
            recoveredBlock57Stack1 := recoveredBlock57Arg1.
            recoveredBlock57PC := 74.
        ].
        recoveredBlock57Step = 74 ifTrue: [
            recoveredBlock57Stack1 := (recoveredBlock57Stack1) name.
            recoveredBlock57PC := 76.
        ].
        recoveredBlock57Step = 76 ifTrue: [
            recoveredBlock57Stack2 := recoveredLocal5.
            recoveredBlock57PC := 79.
        ].
        recoveredBlock57Step = 79 ifTrue: [
            recoveredBlock57Stack1 := (recoveredBlock57Stack1) = (recoveredBlock57Stack2).
            recoveredBlock57PC := 80.
        ].
        recoveredBlock57Step = 80 ifTrue: [
            recoveredBlock57Result := recoveredBlock57Stack1.
            recoveredBlock57Done := true.
        ].
    ].
    recoveredBlock57Result
].
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 114] ifFalse: [recoveredPC := 92].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := (recoveredStack1) getObject.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := (recoveredStack1) childrenProxies.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSet.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredPC := 155.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 130] ifFalse: [recoveredPC := 120].
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := SGLibrary.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := (recoveredStack1) create: (recoveredStack2).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredPC := 138.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := RBFolder.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := (recoveredStack1) create: (recoveredStack2) parent: (recoveredStack3).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := (recoveredStack1) dbObject.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            (recoveredStack1) adjustFolderAfterReadingWorkspace.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := 'Die'.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack2 := 'TFS_312352'.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack2 := 'comment'.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack3 := [:recoveredBlock166Arg1 | 
    | recoveredBlock166Value0 recoveredBlock166Value1 recoveredBlock166Value2 recoveredBlock166Value3 |
    recoveredBlock166Value0 := recoveredLocal6.
    recoveredBlock166Value1 := recoveredBlock166Arg1.
    recoveredBlock166Value2 := (recoveredBlock166Value1) cData.
    recoveredBlock166Value3 := (recoveredBlock166Value0) setComment: (recoveredBlock166Value2).
    recoveredBlock166Value3
].
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            (recoveredStack1) optional: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock186Value0 recoveredBlock186Value1 recoveredBlock186Value2 recoveredBlock186Value3 recoveredBlock186Value4 recoveredBlock186Value5 recoveredBlock186Value6 recoveredBlock186Value7 |
    recoveredBlock186Value0 := recoveredArg1.
    recoveredBlock186Value1 := [:recoveredBlock186Block197Arg1 | 
    | recoveredBlock186Block197Value0 recoveredBlock186Block197Value1 recoveredBlock186Block197Value2 recoveredBlock186Block197Value3 |
    recoveredBlock186Block197Value0 := recoveredBlock186Block197Arg1.
    recoveredBlock186Block197Value1 := recoveredLocal6.
    recoveredBlock186Block197Value2 := recoveredLocal3.
    recoveredBlock186Block197Value3 := (self) readFolder: (recoveredBlock186Block197Value0) parent: (recoveredBlock186Block197Value1) namespace: (recoveredBlock186Block197Value2).
    recoveredBlock186Block197Value3
].
    recoveredBlock186Value2 := [:recoveredBlock186Block217Arg1 | 
    | recoveredBlock186Block217Value0 recoveredBlock186Block217Value1 recoveredBlock186Block217Value2 recoveredBlock186Block217Value3 recoveredBlock186Block217Value4 recoveredBlock186Block217Value5 |
    recoveredBlock186Block217Value0 := DBXmlImportDescItem.
    recoveredBlock186Block217Value1 := (recoveredBlock186Block217Value0) new.
    recoveredBlock186Block217Value2 := recoveredBlock186Block217Arg1.
    recoveredBlock186Block217Value3 := recoveredLocal3.
    recoveredBlock186Block217Value4 := (recoveredBlock186Block217Value1) initOn: (recoveredBlock186Block217Value2) namespace: (recoveredBlock186Block217Value3) database: (self).
    recoveredBlock186Block217Value5 := (recoveredBlock186Block217Value4) proxy.
    recoveredBlock186Block217Value5
].
    recoveredBlock186Value3 := [:recoveredBlock186Block241Arg1 | 
    | recoveredBlock186Block241Value0 recoveredBlock186Block241Value1 recoveredBlock186Block241Value2 recoveredBlock186Block241Value3 recoveredBlock186Block241Value4 recoveredBlock186Block241Value5 |
    recoveredBlock186Block241Value0 := DBXmlImportDescItemWithSpec.
    recoveredBlock186Block241Value1 := (recoveredBlock186Block241Value0) new.
    recoveredBlock186Block241Value2 := recoveredBlock186Block241Arg1.
    recoveredBlock186Block241Value3 := recoveredLocal3.
    recoveredBlock186Block241Value4 := (recoveredBlock186Block241Value1) initOn: (recoveredBlock186Block241Value2) namespace: (recoveredBlock186Block241Value3) database: (self).
    recoveredBlock186Block241Value5 := (recoveredBlock186Block241Value4) proxy.
    recoveredBlock186Block241Value5
].
    recoveredBlock186Value4 := [:recoveredBlock186Block265Arg1 | 
    | recoveredBlock186Block265Value0 recoveredBlock186Block265Value1 recoveredBlock186Block265Value2 recoveredBlock186Block265Value3 recoveredBlock186Block265Value4 recoveredBlock186Block265Value5 |
    recoveredBlock186Block265Value0 := DBXmlImportDescGenericComponent.
    recoveredBlock186Block265Value1 := (recoveredBlock186Block265Value0) new.
    recoveredBlock186Block265Value2 := recoveredBlock186Block265Arg1.
    recoveredBlock186Block265Value3 := recoveredLocal3.
    recoveredBlock186Block265Value4 := (recoveredBlock186Block265Value1) initOn: (recoveredBlock186Block265Value2) namespace: (recoveredBlock186Block265Value3) database: (self).
    recoveredBlock186Block265Value5 := (recoveredBlock186Block265Value4) proxy.
    recoveredBlock186Block265Value5
].
    recoveredBlock186Value5 := [:recoveredBlock186Block289Arg1 | 
    | recoveredBlock186Block289Value0 recoveredBlock186Block289Value1 recoveredBlock186Block289Value2 recoveredBlock186Block289Value3 recoveredBlock186Block289Value4 recoveredBlock186Block289Value5 |
    recoveredBlock186Block289Value0 := DBXmlImportDescProject.
    recoveredBlock186Block289Value1 := (recoveredBlock186Block289Value0) new.
    recoveredBlock186Block289Value2 := recoveredBlock186Block289Arg1.
    recoveredBlock186Block289Value3 := recoveredLocal3.
    recoveredBlock186Block289Value4 := (recoveredBlock186Block289Value1) initOn: (recoveredBlock186Block289Value2) namespace: (recoveredBlock186Block289Value3) database: (self) parent: (nil).
    recoveredBlock186Block289Value5 := (recoveredBlock186Block289Value4) proxy.
    recoveredBlock186Block289Value5
].
    recoveredBlock186Value6 := [
    | recoveredBlock186Block312Value0 |
    recoveredBlock186Block312Value0 := recoveredArg1.
    recoveredBlock186Block312Value0
].
    recoveredBlock186Value7 := (recoveredBlock186Value0) choice: ('folder') do: (recoveredBlock186Value1) choice: ('item') do: (recoveredBlock186Value2) choice: ('itemWithSpec') do: (recoveredBlock186Value3) choice: ('genericComponent') do: (recoveredBlock186Value4) choice: ('project') do: (recoveredBlock186Value5) ifNot: (recoveredBlock186Value6).
    recoveredBlock186Value7
].
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            recoveredStack1 := (recoveredStack1) multipleDo: (recoveredStack2) result: (recoveredStack3).
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack2 := (recoveredStack2) asArray.
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            (recoveredStack1) setChildren: (recoveredStack2).
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            (recoveredStack1) xmlDBParent: (recoveredStack2).
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            recoveredStack1 := (recoveredStack1) dbObject.
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            (recoveredStack1) clearModify.
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 362.
        ].
        recoveredStep = 362 ifTrue: [
            recoveredStack1 := (recoveredStack1) dbObject.
            recoveredPC := 364.
        ].
        recoveredStep = 364 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

