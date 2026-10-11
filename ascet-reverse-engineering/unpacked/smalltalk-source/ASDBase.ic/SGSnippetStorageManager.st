"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20015414; bytecode file offset 0x912098"
!SGSnippetStorageManager methodsFor: 'recovered'!
codeStorageHandleClass
    | recoveredValue0 |
    recoveredValue0 := ASDSnippetHandle.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20062334; bytecode file offset 0x95f8b0"
!SGSnippetStorageManager methodsFor: 'recovered'!
hasSnippetStorageFile
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) hostAccess.
    recoveredValue1 := (self) snippetStoreFileName.
    recoveredValue2 := (recoveredValue0) checkForExistency: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200627d0; bytecode file offset 0x95f8b0"
!SGSnippetStorageManager methodsFor: 'recovered'!
hasSnippetIndexFile
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) hostAccess.
    recoveredValue1 := (self) snippetIndexFileName.
    recoveredValue2 := (recoveredValue0) checkForExistency: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20086884; bytecode file offset 0x98313c"
!SGSnippetStorageManager methodsFor: 'recovered'!
storeHandle: recoveredArg1 withKey: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := storageHandle.
    recoveredValue2 := (recoveredValue0) store: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008ee24; bytecode file offset 0x98b700"
!SGSnippetStorageManager methodsFor: 'recovered'!
resetCodeStorage
    | recoveredValue0 |
    recoveredValue0 := (self) class.
    (recoveredValue0) storageProject: (nil).
    ^self
! !

"ASDBase.ic method 0x200e2354; bytecode file offset 0x9dec60"
!SGSnippetStorageManager methodsFor: 'recovered'!
hasNecessaryFiles
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
            recoveredStack2 := (recoveredStack2) hasSnippetIndexFile.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasSnippetStorageFile.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20117aa4; bytecode file offset 0xa14360"
!SGSnippetStorageManager methodsFor: 'recovered'!
isSameProjectAsBefore
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
            recoveredStack2 := StorageProject.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := StorageProject.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := projectKey.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20129cb4; bytecode file offset 0xa2656c"
!SGSnippetStorageManager methodsFor: 'recovered'!
closeStorageHandle
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := storageHandle.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := storageHandle.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) closeFile.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            storageHandle := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2016b160; bytecode file offset 0xa67a54"
!SGSnippetStorageManager methodsFor: 'recovered'!
snippetIndexFileName
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) codeStoragePath.
    recoveredValue1 := (self) projectID.
    recoveredValue2 := (recoveredValue1) asString.
    recoveredValue3 := (recoveredValue0) , (recoveredValue2).
    recoveredValue4 := (recoveredValue3) , ('.storage_index').
    recoveredValue5 := (recoveredValue4) asFilename.
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredLocal1.
    (self) isValidFileName: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    ^recoveredValue7
! !

"ASDBase.ic method 0x2016b184; bytecode file offset 0xa67a54"
!SGSnippetStorageManager methodsFor: 'recovered'!
snippetStoreFileName
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) codeStoragePath.
    recoveredValue1 := (self) projectID.
    recoveredValue2 := (recoveredValue1) asString.
    recoveredValue3 := (recoveredValue0) , (recoveredValue2).
    recoveredValue4 := (recoveredValue3) , ('.storage_data').
    recoveredValue5 := (recoveredValue4) asFilename.
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredLocal1.
    (self) isValidFileName: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    ^recoveredValue7
! !

"ASDBase.ic method 0x201b79a8; bytecode file offset 0xab4270"
!SGSnippetStorageManager methodsFor: 'recovered'!
openStorageHandle
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ETASOSHandle.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) snippetStoreFileName.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) openFile: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) isError.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) etasDevHalt.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            storageHandle := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201eb614; bytecode file offset 0xae7eec"
!SGSnippetStorageManager methodsFor: 'recovered'!
storeIndex
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := OSCall.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := (self) snippetIndexFileName.
    (recoveredValue1) deleteFile: (recoveredValue2).
    recoveredValue3 := ETASOSHandle.
    recoveredValue4 := (self) snippetIndexFileName.
    recoveredValue5 := (recoveredValue3) createFile: (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := recoveredValue6.
    recoveredValue8 := indexStream.
    recoveredValue9 := (recoveredValue8) contents.
    (recoveredValue7) writeBytes: (recoveredValue9).
    (recoveredValue6) closeFile.
    ^self
! !

"ASDBase.ic method 0x202173d0; bytecode file offset 0xb13ca8"
!SGSnippetStorageManager methodsFor: 'recovered'!
createIndexStream
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := WriteStream.
    recoveredValue1 := String.
    recoveredValue2 := (recoveredValue1) new: (1000).
    recoveredValue3 := (recoveredValue0) on: (recoveredValue2).
    indexStream := recoveredValue3.
    recoveredValue4 := indexStream.
    recoveredValue5 := recoveredValue4.
    (recoveredValue5) nextPutAll: ('1').
    recoveredValue6 := recoveredValue4.
    recoveredValue7 := Cr.
    (recoveredValue6) nextPut: (recoveredValue7).
    recoveredValue8 := Lf.
    (recoveredValue4) nextPut: (recoveredValue8).
    ^self
! !

"ASDBase.ic method 0x20224acc; bytecode file offset 0xb2139c"
!SGSnippetStorageManager methodsFor: 'recovered'!
storeEachHandleWithIndex
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    (self) createIndexStream.
    recoveredValue0 := ASDAbstractCodeContainerHandle.
    recoveredValue1 := (recoveredValue0) codeStorage.
    recoveredValue2 := [:recoveredBlock9Arg1 :recoveredBlock9Arg2 | 
    | recoveredBlock9Local1 recoveredBlock9Value0 recoveredBlock9Value1 recoveredBlock9Value2 recoveredBlock9Value3 recoveredBlock9Value4 recoveredBlock9Value5 |
    recoveredBlock9Value0 := recoveredBlock9Arg2.
    recoveredBlock9Value1 := recoveredBlock9Arg1.
    recoveredBlock9Value2 := (self) storeHandle: (recoveredBlock9Value0) withKey: (recoveredBlock9Value1).
    recoveredBlock9Local1 := recoveredBlock9Value2.
    recoveredBlock9Value3 := recoveredBlock9Arg1.
    recoveredBlock9Value4 := recoveredBlock9Local1.
    recoveredBlock9Value5 := (self) addHandleToIndex: (recoveredBlock9Value3) bytes: (recoveredBlock9Value4).
    recoveredBlock9Value5
].
    (recoveredValue1) keysAndValuesDo: (recoveredValue2).
    (self) storeIndex.
    ^self
! !

"ASDBase.ic method 0x2024055c; bytecode file offset 0xb3ce24"
!SGSnippetStorageManager methodsFor: 'recovered'!
addHandleToIndex: recoveredArg1 bytes: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := indexStream.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) nextPutAll: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := Cr.
    (recoveredValue3) nextPut: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := Lf.
    (recoveredValue5) nextPut: (recoveredValue6).
    recoveredValue7 := recoveredValue0.
    recoveredValue8 := recoveredArg2.
    recoveredValue9 := (recoveredValue8) asString.
    (recoveredValue7) nextPutAll: (recoveredValue9).
    recoveredValue10 := recoveredValue0.
    recoveredValue11 := Cr.
    (recoveredValue10) nextPut: (recoveredValue11).
    recoveredValue12 := Lf.
    (recoveredValue0) nextPut: (recoveredValue12).
    ^self
! !

"ASDBase.ic method 0x202a8c3c; bytecode file offset 0xba5514"
!SGSnippetStorageManager methodsFor: 'recovered'!
canLoadHandles
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSameProjectAsBefore.
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
            (recoveredStack0) resetCodeStorage.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) codeStorageHandleClass.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) resetCodeStorage.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasNecessaryFiles.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) codeManager.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorHandler.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasErrors.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 39].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) resetCodeStorage.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := ASDAbstractCodeContainerHandle.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) storageManager: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202d8658; bytecode file offset 0xbd4f40"
!SGSnippetStorageManager methodsFor: 'recovered'!
isValidFileName: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CfsPath.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isValidPathName: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := $%.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) codeManager.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorHandler.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := Array.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack4 := 'code storage'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack5 := (recoveredStack5) codeStoragePath.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack5 := (recoveredStack5) asFilename.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack4 := 'Cg'.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack5 := (recoveredStack5) codeManager.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack5 := (recoveredStack5) projectOptionSource.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) errorNo: (recoveredStack2) args: (recoveredStack3) category: (recoveredStack4) source: (recoveredStack5).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202f7c68; bytecode file offset 0xbf4548"
!SGSnippetStorageManager methodsFor: 'recovered'!
codeStoragePath
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) codeManager.
    recoveredValue1 := (recoveredValue0) currentBuildCache.
    recoveredValue2 := (recoveredValue1) codeStorageRootPath.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := (self) command.
    recoveredValue4 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 recoveredBlock12Value4 recoveredBlock12Value5 recoveredBlock12Value6 |
    recoveredBlock12Value0 := recoveredBlock12Arg1.
    recoveredBlock12Value1 := (recoveredBlock12Value0) project.
    recoveredBlock12Value2 := (recoveredBlock12Value1) specification.
    recoveredBlock12Value3 := (recoveredBlock12Value2) storageOptions.
    recoveredBlock12Value4 := [
    | recoveredBlock12Block27Value0 |
    recoveredBlock12Block27Value0 := recoveredLocal1.
    recoveredBlock12Block27Value0
].
    recoveredBlock12Value5 := (recoveredBlock12Value3) at: ('storagePath') ifAbsent: (recoveredBlock12Value4).
    recoveredBlock12Value6 := recoveredBlock12Value5.
    recoveredLocal1 := recoveredBlock12Value6.
    recoveredBlock12Value5
].
    (recoveredValue3) ifNotNil: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (recoveredValue5) asPathname.
    ^recoveredValue6
! !

"ASDBase.ic method 0x2031a904; bytecode file offset 0xc171e8"
!SGSnippetStorageManager methodsFor: 'recovered'!
storeHandles
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) snippetStoreFileName.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) isValidFileName: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := OSCall.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) deleteFile: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := ETASOSHandle.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) snippetStoreFileName.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) createFile: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            storageHandle := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) storeEachHandleWithIndex.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) closeFile.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            storageHandle := recoveredStack0.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := projectKey.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) storageProject: (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2043e4f8; bytecode file offset 0xd3ade8"
!SGSnippetStorageManager methodsFor: 'recovered'!
loadHandles
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) canLoadHandles.
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
            recoveredStack0 := (recoveredStack0) openStorageHandle.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
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
            recoveredStack0 := (recoveredStack0) readIndex.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := [:recoveredBlock20Arg1 | 
    | recoveredBlock20Local1 recoveredBlock20Local2 recoveredBlock20Local3 recoveredBlock20Local4 recoveredBlock20Stack0 recoveredBlock20Stack1 recoveredBlock20Stack2 recoveredBlock20Stack3 recoveredBlock20Stack4 recoveredBlock20Stack5 recoveredBlock20Stack6 recoveredBlock20PC recoveredBlock20Step recoveredBlock20Done recoveredBlock20Result |
    recoveredBlock20Stack0 := self.
    recoveredBlock20PC := 26.
    recoveredBlock20Done := false.
    [recoveredBlock20Done not] whileTrue: [
        recoveredBlock20Step := recoveredBlock20PC.
        recoveredBlock20Step = 26 ifTrue: [
            recoveredBlock20Stack1 := recoveredBlock20Arg1.
            recoveredBlock20PC := 28.
        ].
        recoveredBlock20Step = 28 ifTrue: [
            recoveredBlock20Stack2 := 1.
            recoveredBlock20PC := 30.
        ].
        recoveredBlock20Step = 30 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) at: (recoveredBlock20Stack2).
            recoveredBlock20PC := 31.
        ].
        recoveredBlock20Step = 31 ifTrue: [
            recoveredBlock20Local4 := recoveredBlock20Stack1.
            recoveredBlock20PC := 32.
        ].
        recoveredBlock20Step = 32 ifTrue: [
            recoveredBlock20Stack1 := recoveredBlock20Arg1.
            recoveredBlock20PC := 34.
        ].
        recoveredBlock20Step = 34 ifTrue: [
            recoveredBlock20Stack2 := 2.
            recoveredBlock20PC := 36.
        ].
        recoveredBlock20Step = 36 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) at: (recoveredBlock20Stack2).
            recoveredBlock20PC := 37.
        ].
        recoveredBlock20Step = 37 ifTrue: [
            recoveredBlock20Local3 := recoveredBlock20Stack1.
            recoveredBlock20PC := 38.
        ].
        recoveredBlock20Step = 38 ifTrue: [
            recoveredBlock20Stack1 := recoveredBlock20Arg1.
            recoveredBlock20PC := 40.
        ].
        recoveredBlock20Step = 40 ifTrue: [
            recoveredBlock20Stack2 := 3.
            recoveredBlock20PC := 42.
        ].
        recoveredBlock20Step = 42 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) at: (recoveredBlock20Stack2).
            recoveredBlock20PC := 43.
        ].
        recoveredBlock20Step = 43 ifTrue: [
            recoveredBlock20Local2 := recoveredBlock20Stack1.
            recoveredBlock20PC := 44.
        ].
        recoveredBlock20Step = 44 ifTrue: [
            recoveredBlock20Stack1 := nil.
            recoveredBlock20PC := 45.
        ].
        recoveredBlock20Step = 45 ifTrue: [
            recoveredBlock20Stack2 := recoveredBlock20Local4.
            recoveredBlock20PC := 46.
        ].
        recoveredBlock20Step = 46 ifTrue: [
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) size.
            recoveredBlock20PC := 48.
        ].
        recoveredBlock20Step = 48 ifTrue: [
            recoveredBlock20Stack3 := 0.
            recoveredBlock20PC := 50.
        ].
        recoveredBlock20Step = 50 ifTrue: [
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) > (recoveredBlock20Stack3).
            recoveredBlock20PC := 51.
        ].
        recoveredBlock20Step = 51 ifTrue: [
            (recoveredBlock20Stack2) ifTrue: [recoveredBlock20PC := 54] ifFalse: [recoveredBlock20PC := 93].
        ].
        recoveredBlock20Step = 54 ifTrue: [
            recoveredBlock20Stack2 := recoveredBlock20Local3.
            recoveredBlock20PC := 55.
        ].
        recoveredBlock20Step = 55 ifTrue: [
            recoveredBlock20Stack3 := 0.
            recoveredBlock20PC := 57.
        ].
        recoveredBlock20Step = 57 ifTrue: [
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) > (recoveredBlock20Stack3).
            recoveredBlock20PC := 58.
        ].
        recoveredBlock20Step = 58 ifTrue: [
            (recoveredBlock20Stack2) ifTrue: [recoveredBlock20PC := 62] ifFalse: [recoveredBlock20PC := 93].
        ].
        recoveredBlock20Step = 62 ifTrue: [
            recoveredBlock20PC := 63.
        ].
        recoveredBlock20Step = 63 ifTrue: [
            recoveredBlock20Stack1 := self.
            recoveredBlock20PC := 64.
        ].
        recoveredBlock20Step = 64 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) codeStorageHandleClass.
            recoveredBlock20PC := 66.
        ].
        recoveredBlock20Step = 66 ifTrue: [
            recoveredBlock20Stack2 := storageHandle.
            recoveredBlock20PC := 68.
        ].
        recoveredBlock20Step = 68 ifTrue: [
            recoveredBlock20Stack3 := recoveredBlock20Local2.
            recoveredBlock20PC := 69.
        ].
        recoveredBlock20Step = 69 ifTrue: [
            recoveredBlock20Stack4 := recoveredBlock20Local3.
            recoveredBlock20PC := 70.
        ].
        recoveredBlock20Step = 70 ifTrue: [
            recoveredBlock20Stack5 := recoveredBlock20Local4.
            recoveredBlock20PC := 71.
        ].
        recoveredBlock20Step = 71 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) load: (recoveredBlock20Stack2) offset: (recoveredBlock20Stack3) bytes: (recoveredBlock20Stack4) key: (recoveredBlock20Stack5).
            recoveredBlock20PC := 74.
        ].
        recoveredBlock20Step = 74 ifTrue: [
            recoveredBlock20Local1 := recoveredBlock20Stack1.
            recoveredBlock20PC := 75.
        ].
        recoveredBlock20Step = 75 ifTrue: [
            recoveredBlock20Stack1 := nil.
            recoveredBlock20PC := 76.
        ].
        recoveredBlock20Step = 76 ifTrue: [
            recoveredBlock20Stack2 := recoveredBlock20Local1.
            recoveredBlock20PC := 77.
        ].
        recoveredBlock20Step = 77 ifTrue: [
            (recoveredBlock20Stack2 == nil) ifTrue: [recoveredBlock20PC := 93] ifFalse: [recoveredBlock20PC := 80].
        ].
        recoveredBlock20Step = 80 ifTrue: [
            recoveredBlock20Stack2 := recoveredBlock20Local1.
            recoveredBlock20PC := 81.
        ].
        recoveredBlock20Step = 81 ifTrue: [
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) isError.
            recoveredBlock20PC := 83.
        ].
        recoveredBlock20Step = 83 ifTrue: [
            (recoveredBlock20Stack2) ifTrue: [recoveredBlock20PC := 93] ifFalse: [recoveredBlock20PC := 86].
        ].
        recoveredBlock20Step = 86 ifTrue: [
            recoveredBlock20PC := 87.
        ].
        recoveredBlock20Step = 87 ifTrue: [
            recoveredBlock20Stack1 := ASDAbstractCodeContainerHandle.
            recoveredBlock20PC := 89.
        ].
        recoveredBlock20Step = 89 ifTrue: [
            recoveredBlock20Stack2 := recoveredBlock20Local4.
            recoveredBlock20PC := 90.
        ].
        recoveredBlock20Step = 90 ifTrue: [
            recoveredBlock20Stack3 := recoveredBlock20Local1.
            recoveredBlock20PC := 91.
        ].
        recoveredBlock20Step = 91 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) codeStorageAt: (recoveredBlock20Stack2) put: (recoveredBlock20Stack3).
            recoveredBlock20PC := 93.
        ].
        recoveredBlock20Step = 93 ifTrue: [
            recoveredBlock20Result := recoveredBlock20Stack1.
            recoveredBlock20Done := true.
        ].
    ].
    recoveredBlock20Result
].
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack0) closeStorageHandle.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := (recoveredStack1) projectKey.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack0) storageProject: (recoveredStack1).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20518b6c; bytecode file offset 0xe15474"
!SGSnippetStorageManager methodsFor: 'recovered'!
readIndex
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ETASOSHandle.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) snippetIndexFileName.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) readFile: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) isError.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) trimBlanks.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := Cr.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := Lf.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) asArrayOfSubstringsSeparatedBy: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) trimBlanks.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) asInteger.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 85].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (-1).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack4 := [:recoveredBlock108Arg1 | 
    | recoveredBlock108Local1 recoveredBlock108Local2 recoveredBlock108Local3 recoveredBlock108Stack0 recoveredBlock108Stack1 recoveredBlock108Stack2 recoveredBlock108Stack3 recoveredBlock108Stack4 recoveredBlock108Stack5 recoveredBlock108PC recoveredBlock108Step recoveredBlock108Done recoveredBlock108Result |
    recoveredBlock108Stack0 := self.
    recoveredBlock108PC := 114.
    recoveredBlock108Done := false.
    [recoveredBlock108Done not] whileTrue: [
        recoveredBlock108Step := recoveredBlock108PC.
        recoveredBlock108Step = 114 ifTrue: [
            recoveredBlock108Stack1 := recoveredLocal5.
            recoveredBlock108PC := 117.
        ].
        recoveredBlock108Step = 117 ifTrue: [
            recoveredBlock108Stack2 := recoveredBlock108Arg1.
            recoveredBlock108PC := 118.
        ].
        recoveredBlock108Step = 118 ifTrue: [
            recoveredBlock108Stack1 := (recoveredBlock108Stack1) at: (recoveredBlock108Stack2).
            recoveredBlock108PC := 120.
        ].
        recoveredBlock108Step = 120 ifTrue: [
            recoveredBlock108Local3 := recoveredBlock108Stack1.
            recoveredBlock108PC := 121.
        ].
        recoveredBlock108Step = 121 ifTrue: [
            recoveredBlock108Stack1 := recoveredLocal5.
            recoveredBlock108PC := 124.
        ].
        recoveredBlock108Step = 124 ifTrue: [
            recoveredBlock108Stack2 := recoveredBlock108Arg1.
            recoveredBlock108PC := 125.
        ].
        recoveredBlock108Step = 125 ifTrue: [
            recoveredBlock108Stack2 := (recoveredBlock108Stack2) + (1).
            recoveredBlock108PC := 126.
        ].
        recoveredBlock108Step = 126 ifTrue: [
            recoveredBlock108Stack1 := (recoveredBlock108Stack1) at: (recoveredBlock108Stack2).
            recoveredBlock108PC := 128.
        ].
        recoveredBlock108Step = 128 ifTrue: [
            recoveredBlock108Local2 := recoveredBlock108Stack1.
            recoveredBlock108PC := 129.
        ].
        recoveredBlock108Step = 129 ifTrue: [
            recoveredBlock108Stack1 := nil.
            recoveredBlock108PC := 130.
        ].
        recoveredBlock108Step = 130 ifTrue: [
            recoveredBlock108Stack2 := recoveredBlock108Local3.
            recoveredBlock108PC := 131.
        ].
        recoveredBlock108Step = 131 ifTrue: [
            recoveredBlock108Stack2 := (recoveredBlock108Stack2) size.
            recoveredBlock108PC := 133.
        ].
        recoveredBlock108Step = 133 ifTrue: [
            recoveredBlock108Stack3 := 0.
            recoveredBlock108PC := 135.
        ].
        recoveredBlock108Step = 135 ifTrue: [
            recoveredBlock108Stack2 := (recoveredBlock108Stack2) > (recoveredBlock108Stack3).
            recoveredBlock108PC := 136.
        ].
        recoveredBlock108Step = 136 ifTrue: [
            (recoveredBlock108Stack2) ifTrue: [recoveredBlock108PC := 140] ifFalse: [recoveredBlock108PC := 181].
        ].
        recoveredBlock108Step = 140 ifTrue: [
            recoveredBlock108Stack2 := recoveredBlock108Local2.
            recoveredBlock108PC := 141.
        ].
        recoveredBlock108Step = 141 ifTrue: [
            recoveredBlock108Stack2 := (recoveredBlock108Stack2) size.
            recoveredBlock108PC := 143.
        ].
        recoveredBlock108Step = 143 ifTrue: [
            recoveredBlock108Stack3 := 0.
            recoveredBlock108PC := 145.
        ].
        recoveredBlock108Step = 145 ifTrue: [
            recoveredBlock108Stack2 := (recoveredBlock108Stack2) > (recoveredBlock108Stack3).
            recoveredBlock108PC := 146.
        ].
        recoveredBlock108Step = 146 ifTrue: [
            (recoveredBlock108Stack2) ifTrue: [recoveredBlock108PC := 150] ifFalse: [recoveredBlock108PC := 181].
        ].
        recoveredBlock108Step = 150 ifTrue: [
            recoveredBlock108PC := 151.
        ].
        recoveredBlock108Step = 151 ifTrue: [
            recoveredBlock108Stack1 := recoveredBlock108Local2.
            recoveredBlock108PC := 152.
        ].
        recoveredBlock108Step = 152 ifTrue: [
            recoveredBlock108Stack1 := (recoveredBlock108Stack1) asInteger.
            recoveredBlock108PC := 154.
        ].
        recoveredBlock108Step = 154 ifTrue: [
            recoveredBlock108Local2 := recoveredBlock108Stack1.
            recoveredBlock108PC := 155.
        ].
        recoveredBlock108Step = 155 ifTrue: [
            recoveredBlock108Stack1 := Array.
            recoveredBlock108PC := 157.
        ].
        recoveredBlock108Step = 157 ifTrue: [
            recoveredBlock108Stack2 := recoveredBlock108Local3.
            recoveredBlock108PC := 158.
        ].
        recoveredBlock108Step = 158 ifTrue: [
            recoveredBlock108Stack3 := recoveredBlock108Local2.
            recoveredBlock108PC := 159.
        ].
        recoveredBlock108Step = 159 ifTrue: [
            recoveredBlock108Stack4 := recoveredLocal1.
            recoveredBlock108PC := 162.
        ].
        recoveredBlock108Step = 162 ifTrue: [
            recoveredBlock108Stack1 := (recoveredBlock108Stack1) with: (recoveredBlock108Stack2) with: (recoveredBlock108Stack3) with: (recoveredBlock108Stack4).
            recoveredBlock108PC := 165.
        ].
        recoveredBlock108Step = 165 ifTrue: [
            recoveredBlock108Local1 := recoveredBlock108Stack1.
            recoveredBlock108PC := 166.
        ].
        recoveredBlock108Step = 166 ifTrue: [
            recoveredBlock108Stack1 := recoveredLocal2.
            recoveredBlock108PC := 169.
        ].
        recoveredBlock108Step = 169 ifTrue: [
            recoveredBlock108Stack2 := recoveredBlock108Local1.
            recoveredBlock108PC := 170.
        ].
        recoveredBlock108Step = 170 ifTrue: [
            (recoveredBlock108Stack1) add: (recoveredBlock108Stack2).
            recoveredBlock108PC := 172.
        ].
        recoveredBlock108Step = 172 ifTrue: [
            recoveredBlock108Stack1 := recoveredLocal1.
            recoveredBlock108PC := 175.
        ].
        recoveredBlock108Step = 175 ifTrue: [
            recoveredBlock108Stack2 := recoveredBlock108Local2.
            recoveredBlock108PC := 176.
        ].
        recoveredBlock108Step = 176 ifTrue: [
            recoveredBlock108Stack1 := (recoveredBlock108Stack1) + (recoveredBlock108Stack2).
            recoveredBlock108PC := 177.
        ].
        recoveredBlock108Step = 177 ifTrue: [
            recoveredBlock108Stack2 := recoveredBlock108Stack1.
            recoveredBlock108PC := 178.
        ].
        recoveredBlock108Step = 178 ifTrue: [
            recoveredLocal1 := recoveredBlock108Stack2.
            recoveredBlock108PC := 181.
        ].
        recoveredBlock108Step = 181 ifTrue: [
            recoveredBlock108Result := recoveredBlock108Stack1.
            recoveredBlock108Done := true.
        ].
    ].
    recoveredBlock108Result
].
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            (recoveredStack1) to: (recoveredStack2) by: (recoveredStack3) do: (recoveredStack4).
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

