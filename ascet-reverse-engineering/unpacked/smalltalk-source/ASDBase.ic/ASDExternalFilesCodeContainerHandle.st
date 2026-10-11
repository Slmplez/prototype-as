"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200166e8; bytecode file offset 0x92209c"
!ASDExternalFilesCodeContainerHandle methodsFor: 'recovered'!
includeRelPath
    ^'Include\'
! !

"ASDBase.ic method 0x2001973c; bytecode file offset 0x92209c"
!ASDExternalFilesCodeContainerHandle methodsFor: 'recovered'!
codeStorageLibraryPathKey
    ^'LibraryPath'
! !

"ASDBase.ic method 0x2001b08c; bytecode file offset 0x92209c"
!ASDExternalFilesCodeContainerHandle methodsFor: 'recovered'!
codeStorageIncludeCodePathKey
    ^'IncludeCodePath'
! !

"ASDBase.ic method 0x2001fd84; bytecode file offset 0x92209c"
!ASDExternalFilesCodeContainerHandle methodsFor: 'recovered'!
codeStorageSourceCodePathKey
    ^'SourceCodePath'
! !

"ASDBase.ic method 0x20020138; bytecode file offset 0x92209c"
!ASDExternalFilesCodeContainerHandle methodsFor: 'recovered'!
sourceRelPath
    ^'Source\'
! !

"ASDBase.ic method 0x20021a28; bytecode file offset 0x92209c"
!ASDExternalFilesCodeContainerHandle methodsFor: 'recovered'!
objectRelPath
    ^'Object\'
! !

"ASDBase.ic method 0x200257f8; bytecode file offset 0x923928"
!ASDExternalFilesCodeContainerHandle methodsFor: 'recovered'!
codeStorageObjectCodePathKey
    ^'ObjectCodePath'
! !

"ASDBase.ic method 0x20026f44; bytecode file offset 0x923928"
!ASDExternalFilesCodeContainerHandle methodsFor: 'recovered'!
codeStorageAdditionalFilesPathKey
    ^'AdditionalFilesPath'
! !

"ASDBase.ic method 0x200290c4; bytecode file offset 0x934580"
!ASDExternalFilesCodeContainerHandle methodsFor: 'recovered'!
hCodeFiles
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) additionalFiles.
    recoveredValue1 := (recoveredValue0) hCodeFiles.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002aef4; bytecode file offset 0x934580"
!ASDExternalFilesCodeContainerHandle methodsFor: 'recovered'!
cCodeFiles
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) additionalFiles.
    recoveredValue1 := (recoveredValue0) cCodeFiles.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002c034; bytecode file offset 0x934580"
!ASDExternalFilesCodeContainerHandle methodsFor: 'recovered'!
compileOptionsCRC
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) additionalFiles.
    recoveredValue1 := (recoveredValue0) compileOptionsCRC.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002ebf4; bytecode file offset 0x934580"
!ASDExternalFilesCodeContainerHandle methodsFor: 'recovered'!
objectCodeTimeStamp
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) additionalFiles.
    recoveredValue1 := (recoveredValue0) objectCodeTimeStamp.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002ee64; bytecode file offset 0x934580"
!ASDExternalFilesCodeContainerHandle methodsFor: 'recovered'!
hasCSource
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) cCodeFiles.
    recoveredValue1 := (recoveredValue0) notEmpty.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002fa64; bytecode file offset 0x934580"
!ASDExternalFilesCodeContainerHandle methodsFor: 'recovered'!
generateTimeStamp
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) additionalFiles.
    recoveredValue1 := (recoveredValue0) generateTimeStamp.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20032194; bytecode file offset 0x934580"
!ASDExternalFilesCodeContainerHandle methodsFor: 'recovered'!
libraryFiles
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) additionalFiles.
    recoveredValue1 := (recoveredValue0) libraryFiles.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200327a4; bytecode file offset 0x934580"
!ASDExternalFilesCodeContainerHandle methodsFor: 'recovered'!
hasHSource
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) hCodeFiles.
    recoveredValue1 := (recoveredValue0) notEmpty.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20034d64; bytecode file offset 0x934580"
!ASDExternalFilesCodeContainerHandle methodsFor: 'recovered'!
applicationTimeStamp
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) additionalFiles.
    recoveredValue1 := (recoveredValue0) applicationTimeStamp.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200351e4; bytecode file offset 0x934580"
!ASDExternalFilesCodeContainerHandle methodsFor: 'recovered'!
asmCodeFiles
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) additionalFiles.
    recoveredValue1 := (recoveredValue0) asmCodeFiles.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20035774; bytecode file offset 0x934580"
!ASDExternalFilesCodeContainerHandle methodsFor: 'recovered'!
objectCodeFiles
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) additionalFiles.
    recoveredValue1 := (recoveredValue0) objectCodeFiles.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20049c1c; bytecode file offset 0x947128"
!ASDExternalFilesCodeContainerHandle methodsFor: 'recovered'!
asHSource
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) hCodeFiles.
    recoveredValue1 := (self) readSource: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004a57c; bytecode file offset 0x947128"
!ASDExternalFilesCodeContainerHandle methodsFor: 'recovered'!
asCSource
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) cCodeFiles.
    recoveredValue1 := (self) readSource: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004aa70; bytecode file offset 0x94732c"
!ASDExternalFilesCodeContainerHandle methodsFor: 'recovered'!
modified
    hasBeenModified := true.
    ^self
! !

"ASDBase.ic method 0x2006d5f4; bytecode file offset 0x96a390"
!ASDExternalFilesCodeContainerHandle methodsFor: 'recovered'!
additionalFiles
    | recoveredValue0 |
    recoveredValue0 := additionalFiles.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006e008; bytecode file offset 0x96a9dc"
!ASDExternalFilesCodeContainerHandle methodsFor: 'recovered'!
paths
    | recoveredValue0 |
    recoveredValue0 := paths.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006e36c; bytecode file offset 0x96af48"
!ASDExternalFilesCodeContainerHandle methodsFor: 'recovered'!
hasBeenModified
    | recoveredValue0 |
    recoveredValue0 := hasBeenModified.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200990b0; bytecode file offset 0x995974"
!ASDExternalFilesCodeContainerHandle methodsFor: 'recovered'!
codeStoragePath: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) codeStorageManager.
    recoveredValue1 := (recoveredValue0) codeStorageVariantPath.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) , (recoveredValue2).
    recoveredValue4 := (recoveredValue3) asPathname.
    ^recoveredValue4
! !

"ASDBase.ic method 0x200b4578; bytecode file offset 0x9b0e38"
!ASDExternalFilesCodeContainerHandle methodsFor: 'recovered'!
initializeFilesManager
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) hostAccess.
    recoveredValue1 := (self) additionalFilesManagementFile.
    recoveredValue2 := (recoveredValue0) readBuildResultXmlFile: (recoveredValue1).
    additionalFiles := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b4598; bytecode file offset 0x9b0e8c"
!ASDExternalFilesCodeContainerHandle methodsFor: 'recovered'!
additionalFilesManagementFile
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) codeStorageAdditionalFilesPath.
    recoveredValue1 := (self) additionalFilesRelPath.
    recoveredValue2 := (recoveredValue0) , (recoveredValue1).
    recoveredValue3 := (recoveredValue2) , ('.files.xml').
    ^recoveredValue3
! !

"ASDBase.ic method 0x200c3fcc; bytecode file offset 0x9c0bf0"
!ASDExternalFilesCodeContainerHandle methodsFor: 'recovered'!
additionalFiles: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    additionalFiles := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200da718; bytecode file offset 0x9d7154"
!ASDExternalFilesCodeContainerHandle methodsFor: 'recovered'!
compileOptionsCRC: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) additionalFiles.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) compileOptionsCRC: (recoveredValue1).
    (self) modified.
    ^self
! !

"ASDBase.ic method 0x200e4a90; bytecode file offset 0x9e13e4"
!ASDExternalFilesCodeContainerHandle methodsFor: 'recovered'!
updateObjectCodeTimeStamp
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) additionalFiles.
    recoveredValue1 := (self) timeStampNow.
    (recoveredValue0) objectCodeTimeStamp: (recoveredValue1).
    (self) modified.
    ^self
! !

"ASDBase.ic method 0x200e4b08; bytecode file offset 0x9e13e4"
!ASDExternalFilesCodeContainerHandle methodsFor: 'recovered'!
updateGenerateTimeStamp
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) additionalFiles.
    recoveredValue1 := (self) timeStampNow.
    (recoveredValue0) generateTimeStamp: (recoveredValue1).
    (self) modified.
    ^self
! !

"ASDBase.ic method 0x200e5b40; bytecode file offset 0x9e24ac"
!ASDExternalFilesCodeContainerHandle methodsFor: 'recovered'!
includeCodeRelPath
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) codeStorageManager.
    recoveredValue1 := (recoveredValue0) currentBuildCache.
    recoveredValue2 := (recoveredValue1) templateCodeStorageIncludeRelPath.
    recoveredValue3 := (self) componentInfo.
    recoveredValue4 := (recoveredValue3) bannerInfos.
    recoveredValue5 := (recoveredValue2) bindWithGeneralArguments: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x200e5b80; bytecode file offset 0x9e24ac"
!ASDExternalFilesCodeContainerHandle methodsFor: 'recovered'!
objectCodeRelPath
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) codeStorageManager.
    recoveredValue1 := (recoveredValue0) currentBuildCache.
    recoveredValue2 := (recoveredValue1) templateCodeStorageObjectCodeRelPath.
    recoveredValue3 := (self) componentInfo.
    recoveredValue4 := (recoveredValue3) bannerInfos.
    recoveredValue5 := (recoveredValue2) bindWithGeneralArguments: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x200e5ba0; bytecode file offset 0x9e24ac"
!ASDExternalFilesCodeContainerHandle methodsFor: 'recovered'!
additionalFilesRelPath
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) codeStorageManager.
    recoveredValue1 := (recoveredValue0) currentBuildCache.
    recoveredValue2 := (recoveredValue1) templateCodeStorageAdditionalFilesRelPath.
    recoveredValue3 := (self) componentInfo.
    recoveredValue4 := (recoveredValue3) bannerInfos.
    recoveredValue5 := (recoveredValue2) bindWithGeneralArguments: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x200e5bc0; bytecode file offset 0x9e24ac"
!ASDExternalFilesCodeContainerHandle methodsFor: 'recovered'!
sourceCodeRelPath
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) codeStorageManager.
    recoveredValue1 := (recoveredValue0) currentBuildCache.
    recoveredValue2 := (recoveredValue1) templateCodeStorageSourceCodeRelPath.
    recoveredValue3 := (self) componentInfo.
    recoveredValue4 := (recoveredValue3) bannerInfos.
    recoveredValue5 := (recoveredValue2) bindWithGeneralArguments: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x200e5be0; bytecode file offset 0x9e24ac"
!ASDExternalFilesCodeContainerHandle methodsFor: 'recovered'!
libraryRelPath
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) codeStorageManager.
    recoveredValue1 := (recoveredValue0) currentBuildCache.
    recoveredValue2 := (recoveredValue1) templateCodeStorageLibraryRelPath.
    recoveredValue3 := (self) componentInfo.
    recoveredValue4 := (recoveredValue3) bannerInfos.
    recoveredValue5 := (recoveredValue2) bindWithGeneralArguments: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x2012c2c4; bytecode file offset 0xa28b88"
!ASDExternalFilesCodeContainerHandle methodsFor: 'recovered'!
hasAdditionalFilesToBeLinked
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
            recoveredStack2 := (recoveredStack2) additionalFiles.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) objectCodeFiles.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) notEmpty.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) additionalFiles.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) libraryFiles.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2012f850; bytecode file offset 0xa2c114"
!ASDExternalFilesCodeContainerHandle methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    hasBeenModified := false.
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    paths := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x20147918; bytecode file offset 0xa441dc"
!ASDExternalFilesCodeContainerHandle methodsFor: 'recovered'!
fullSourceFileName: recoveredArg1 inPath: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) pathName.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := '\'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2014f128; bytecode file offset 0xa4b9e8"
!ASDExternalFilesCodeContainerHandle methodsFor: 'recovered'!
errorNameClashBlock
    | recoveredValue0 |
    recoveredValue0 := [:recoveredBlock4Arg1 :recoveredBlock4Arg2 | 
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 |
    recoveredBlock4Value0 := (self) hostAccess.
    recoveredBlock4Value1 := recoveredBlock4Arg1.
    recoveredBlock4Value2 := recoveredBlock4Arg2.
    recoveredBlock4Value3 := (recoveredBlock4Value0) fatalError: ('FileNameClash') with: (recoveredBlock4Value1) with: (recoveredBlock4Value2).
    recoveredBlock4Value3
].
    ^recoveredValue0
! !

"ASDBase.ic method 0x2014fcbc; bytecode file offset 0xa4c588"
!ASDExternalFilesCodeContainerHandle methodsFor: 'recovered'!
makePersistent
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasBeenModified.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) hostAccess.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) additionalFiles.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlDocument.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) additionalFilesManagementFile.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) writeXmlDocument: (recoveredStack1) toFile: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20160ab8; bytecode file offset 0xa5d40c"
!ASDExternalFilesCodeContainerHandle methodsFor: 'recovered'!
codeStorageAdditionalFilesPath
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) paths.
    recoveredValue1 := (self) codeStorageAdditionalFilesPathKey.
    recoveredValue2 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 |
    recoveredBlock7Value0 := (self) additionalFilesRelPath.
    recoveredBlock7Value1 := (self) codeStoragePath: (recoveredBlock7Value0).
    recoveredBlock7Value1
].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsentPut: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20160ad4; bytecode file offset 0xa5d40c"
!ASDExternalFilesCodeContainerHandle methodsFor: 'recovered'!
codeStorageLibraryPath
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) paths.
    recoveredValue1 := (self) codeStorageLibraryPathKey.
    recoveredValue2 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 |
    recoveredBlock7Value0 := (self) libraryRelPath.
    recoveredBlock7Value1 := (self) codeStoragePath: (recoveredBlock7Value0).
    recoveredBlock7Value1
].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsentPut: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20160af0; bytecode file offset 0xa5d40c"
!ASDExternalFilesCodeContainerHandle methodsFor: 'recovered'!
codeStorageSourceCodePath
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) paths.
    recoveredValue1 := (self) codeStorageSourceCodePathKey.
    recoveredValue2 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 |
    recoveredBlock7Value0 := (self) sourceCodeRelPath.
    recoveredBlock7Value1 := (self) codeStoragePath: (recoveredBlock7Value0).
    recoveredBlock7Value1
].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsentPut: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20160b0c; bytecode file offset 0xa5d40c"
!ASDExternalFilesCodeContainerHandle methodsFor: 'recovered'!
codeStorageObjectCodePath
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) paths.
    recoveredValue1 := (self) codeStorageObjectCodePathKey.
    recoveredValue2 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 |
    recoveredBlock7Value0 := (self) objectCodeRelPath.
    recoveredBlock7Value1 := (self) codeStoragePath: (recoveredBlock7Value0).
    recoveredBlock7Value1
].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsentPut: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20160b28; bytecode file offset 0xa5d40c"
!ASDExternalFilesCodeContainerHandle methodsFor: 'recovered'!
codeStorageIncludeCodePath
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) paths.
    recoveredValue1 := (self) codeStorageIncludeCodePathKey.
    recoveredValue2 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 |
    recoveredBlock7Value0 := (self) includeCodeRelPath.
    recoveredBlock7Value1 := (self) codeStoragePath: (recoveredBlock7Value0).
    recoveredBlock7Value1
].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsentPut: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20174ba8; bytecode file offset 0xa7147c"
!ASDExternalFilesCodeContainerHandle methodsFor: 'recovered'!
needsToBeCompiled: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredStack2 := (recoveredStack2) generateTimeStamp.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := (recoveredStack3) objectCodeTimeStamp.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) > (recoveredStack3).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) compileOptionsCRC.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) compileOptionsCRC.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20183458; bytecode file offset 0xa7fd20"
!ASDExternalFilesCodeContainerHandle methodsFor: 'recovered'!
touch
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            super touch.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) additionalFiles.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := [:block280d0518Arg1 | 
    | block280d0518Value0 block280d0518Value1 |
    block280d0518Value0 := block280d0518Arg1.
    block280d0518Value1 := (block280d0518Value0) touch.
    block280d0518Value1
].
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
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

"ASDBase.ic method 0x20187aa8; bytecode file offset 0xa84378"
!ASDExternalFilesCodeContainerHandle methodsFor: 'recovered'!
storeObjectCode: recoveredArg1 buildEnvironment: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) hostAccess.
    recoveredValue2 := (recoveredValue1) getWorkingPath.
    (self) makeObjectPersistent: (recoveredValue0) from: (recoveredValue2).
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue3) compileOptionsCRC.
    (self) compileOptionsCRC: (recoveredValue4).
    (self) updateObjectCodeTimeStamp.
    (self) makePersistent.
    ^self
! !

"ASDBase.ic method 0x201e3204; bytecode file offset 0xadfacc"
!ASDExternalFilesCodeContainerHandle methodsFor: 'recovered'!
hasAdditionalFilesToBeCompiled
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
            recoveredStack2 := (recoveredStack2) additionalFiles.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) cCodeFiles.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) notEmpty.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) additionalFiles.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) hCodeFiles.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) notEmpty.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) additionalFiles.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) asmCodeFiles.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203292b8; bytecode file offset 0xc25ba0"
!ASDExternalFilesCodeContainerHandle methodsFor: 'recovered'!
readSource: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := ReadWriteStream.
    recoveredValue1 := String.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := (recoveredValue0) on: (recoveredValue2).
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Value0 recoveredBlock16Value1 recoveredBlock16Value2 recoveredBlock16Value3 recoveredBlock16Value4 recoveredBlock16Value5 recoveredBlock16Value6 recoveredBlock16Value7 |
    recoveredBlock16Value0 := recoveredLocal2.
    recoveredBlock16Value1 := ETASOSHandle.
    recoveredBlock16Value2 := (self) codeStorageSourceCodePath.
    recoveredBlock16Value3 := (recoveredBlock16Value2) asPathname.
    recoveredBlock16Value4 := recoveredBlock16Arg1.
    recoveredBlock16Value5 := (recoveredBlock16Value3) , (recoveredBlock16Value4).
    recoveredBlock16Value6 := (recoveredBlock16Value1) readFile: (recoveredBlock16Value5).
    recoveredBlock16Value7 := (recoveredBlock16Value0) nextPutAll: (recoveredBlock16Value6).
    recoveredBlock16Value7
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := recoveredLocal2.
    recoveredValue7 := (recoveredValue6) contents.
    recoveredLocal1 := recoveredValue7.
    recoveredValue8 := recoveredLocal2.
    (recoveredValue8) close.
    recoveredValue9 := recoveredLocal1.
    ^recoveredValue9
! !

"ASDBase.ic method 0x2034db94; bytecode file offset 0xc4a494"
!ASDExternalFilesCodeContainerHandle methodsFor: 'recovered'!
storeAdditionalFiles: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 |
    recoveredValue0 := (self) hostAccess.
    recoveredValue1 := (self) additionalFilesManagementFile.
    (recoveredValue0) removeFileOnExistence: (recoveredValue1).
    recoveredValue2 := (self) additionalFiles.
    (recoveredValue2) resetXmlDocument.
    recoveredValue3 := (self) additionalFiles.
    (recoveredValue3) touch.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) destinationPath.
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) cCodeFiles.
    recoveredValue8 := recoveredLocal1.
    (self) makeCCodePersistent: (recoveredValue7) from: (recoveredValue8).
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := (recoveredValue9) hCodeFiles.
    recoveredValue11 := recoveredLocal1.
    (self) makeHCodePersistent: (recoveredValue10) from: (recoveredValue11).
    recoveredValue12 := recoveredArg1.
    recoveredValue13 := (recoveredValue12) asmCodeFiles.
    recoveredValue14 := recoveredLocal1.
    (self) makeASMCodePersistent: (recoveredValue13) from: (recoveredValue14).
    recoveredValue15 := recoveredArg1.
    recoveredValue16 := (recoveredValue15) objectCodeFiles.
    recoveredValue17 := recoveredLocal1.
    (self) makeObjectPersistent: (recoveredValue16) from: (recoveredValue17).
    recoveredValue18 := recoveredArg1.
    recoveredValue19 := (recoveredValue18) libraryFiles.
    recoveredValue20 := recoveredLocal1.
    (self) makeLibraryPersistent: (recoveredValue19) from: (recoveredValue20).
    (self) updateGenerateTimeStamp.
    (self) makePersistent.
    ^self
! !

"ASDBase.ic method 0x203d62c8; bytecode file offset 0xcd2c34"
!ASDExternalFilesCodeContainerHandle methodsFor: 'recovered'!
makeObjectPersistent: recoveredArg1 from: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) hostAccess.
    recoveredValue1 := (self) codeStorageObjectCodePath.
    (recoveredValue0) createHostDirectory: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Local1 recoveredBlock12Local2 recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 recoveredBlock12Value4 recoveredBlock12Value5 recoveredBlock12Value6 recoveredBlock12Value7 recoveredBlock12Value8 recoveredBlock12Value9 recoveredBlock12Value10 recoveredBlock12Value11 recoveredBlock12Value12 recoveredBlock12Value13 recoveredBlock12Value14 recoveredBlock12Value15 |
    recoveredBlock12Value0 := recoveredBlock12Arg1.
    recoveredBlock12Value1 := recoveredArg2.
    recoveredBlock12Value2 := (self) fullSourceFileName: (recoveredBlock12Value0) inPath: (recoveredBlock12Value1).
    recoveredBlock12Local2 := recoveredBlock12Value2.
    recoveredBlock12Value3 := (self) hostAccess.
    recoveredBlock12Value4 := (self) codeStorageObjectCodePath.
    recoveredBlock12Value5 := recoveredBlock12Local2.
    recoveredBlock12Value6 := (recoveredBlock12Value5) fileName.
    recoveredBlock12Value7 := recoveredBlock12Value6.
    recoveredBlock12Local1 := recoveredBlock12Value7.
    recoveredBlock12Value8 := (recoveredBlock12Value4) , (recoveredBlock12Value6).
    (recoveredBlock12Value3) removeFileOnExistence: (recoveredBlock12Value8).
    recoveredBlock12Value9 := (self) hostAccess.
    recoveredBlock12Value10 := recoveredBlock12Local2.
    recoveredBlock12Value11 := (self) codeStorageSourceCodePath.
    (recoveredBlock12Value9) ensureFile: (recoveredBlock12Value10) inPath: (recoveredBlock12Value11).
    recoveredBlock12Value12 := (self) additionalFiles.
    recoveredBlock12Value13 := recoveredBlock12Local1.
    recoveredBlock12Value14 := [
    | recoveredBlock12Block62Value0 recoveredBlock12Block62Value1 recoveredBlock12Block62Value2 recoveredBlock12Block62Value3 |
    recoveredBlock12Block62Value0 := (self) errorNameClashBlock.
    recoveredBlock12Block62Value1 := recoveredBlock12Local1.
    recoveredBlock12Block62Value2 := recoveredBlock12Local2.
    recoveredBlock12Block62Value3 := (recoveredBlock12Block62Value0) value: (recoveredBlock12Block62Value1) value: (recoveredBlock12Block62Value2).
    recoveredBlock12Block62Value3
].
    recoveredBlock12Value15 := (recoveredBlock12Value12) addObjectFile: (recoveredBlock12Value13) ifFail: (recoveredBlock12Value14).
    recoveredBlock12Value15
].
    (recoveredValue2) do: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x203d6308; bytecode file offset 0xcd2c34"
!ASDExternalFilesCodeContainerHandle methodsFor: 'recovered'!
makeLibraryPersistent: recoveredArg1 from: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) hostAccess.
    recoveredValue1 := (self) codeStorageLibraryPath.
    (recoveredValue0) createHostDirectory: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Local1 recoveredBlock12Local2 recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 recoveredBlock12Value4 recoveredBlock12Value5 recoveredBlock12Value6 recoveredBlock12Value7 recoveredBlock12Value8 recoveredBlock12Value9 recoveredBlock12Value10 recoveredBlock12Value11 recoveredBlock12Value12 recoveredBlock12Value13 recoveredBlock12Value14 recoveredBlock12Value15 |
    recoveredBlock12Value0 := recoveredBlock12Arg1.
    recoveredBlock12Value1 := recoveredArg2.
    recoveredBlock12Value2 := (self) fullSourceFileName: (recoveredBlock12Value0) inPath: (recoveredBlock12Value1).
    recoveredBlock12Local2 := recoveredBlock12Value2.
    recoveredBlock12Value3 := (self) hostAccess.
    recoveredBlock12Value4 := (self) codeStorageLibraryPath.
    recoveredBlock12Value5 := recoveredBlock12Local2.
    recoveredBlock12Value6 := (recoveredBlock12Value5) fileName.
    recoveredBlock12Value7 := recoveredBlock12Value6.
    recoveredBlock12Local1 := recoveredBlock12Value7.
    recoveredBlock12Value8 := (recoveredBlock12Value4) , (recoveredBlock12Value6).
    (recoveredBlock12Value3) removeFileOnExistence: (recoveredBlock12Value8).
    recoveredBlock12Value9 := (self) hostAccess.
    recoveredBlock12Value10 := recoveredBlock12Local2.
    recoveredBlock12Value11 := (self) codeStorageSourceCodePath.
    (recoveredBlock12Value9) ensureFile: (recoveredBlock12Value10) inPath: (recoveredBlock12Value11).
    recoveredBlock12Value12 := (self) additionalFiles.
    recoveredBlock12Value13 := recoveredBlock12Local1.
    recoveredBlock12Value14 := [
    | recoveredBlock12Block62Value0 recoveredBlock12Block62Value1 recoveredBlock12Block62Value2 recoveredBlock12Block62Value3 |
    recoveredBlock12Block62Value0 := (self) errorNameClashBlock.
    recoveredBlock12Block62Value1 := recoveredBlock12Local1.
    recoveredBlock12Block62Value2 := recoveredBlock12Local2.
    recoveredBlock12Block62Value3 := (recoveredBlock12Block62Value0) value: (recoveredBlock12Block62Value1) value: (recoveredBlock12Block62Value2).
    recoveredBlock12Block62Value3
].
    recoveredBlock12Value15 := (recoveredBlock12Value12) addLibraryFile: (recoveredBlock12Value13) ifFail: (recoveredBlock12Value14).
    recoveredBlock12Value15
].
    (recoveredValue2) do: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x203d6348; bytecode file offset 0xcd2c34"
!ASDExternalFilesCodeContainerHandle methodsFor: 'recovered'!
makeHCodePersistent: recoveredArg1 from: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) hostAccess.
    recoveredValue1 := (self) codeStorageIncludeCodePath.
    (recoveredValue0) createHostDirectory: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Local1 recoveredBlock12Local2 recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 recoveredBlock12Value4 recoveredBlock12Value5 recoveredBlock12Value6 recoveredBlock12Value7 recoveredBlock12Value8 recoveredBlock12Value9 recoveredBlock12Value10 recoveredBlock12Value11 recoveredBlock12Value12 recoveredBlock12Value13 recoveredBlock12Value14 recoveredBlock12Value15 |
    recoveredBlock12Value0 := recoveredBlock12Arg1.
    recoveredBlock12Value1 := recoveredArg2.
    recoveredBlock12Value2 := (self) fullSourceFileName: (recoveredBlock12Value0) inPath: (recoveredBlock12Value1).
    recoveredBlock12Local2 := recoveredBlock12Value2.
    recoveredBlock12Value3 := (self) hostAccess.
    recoveredBlock12Value4 := (self) codeStorageIncludeCodePath.
    recoveredBlock12Value5 := recoveredBlock12Local2.
    recoveredBlock12Value6 := (recoveredBlock12Value5) fileName.
    recoveredBlock12Value7 := recoveredBlock12Value6.
    recoveredBlock12Local1 := recoveredBlock12Value7.
    recoveredBlock12Value8 := (recoveredBlock12Value4) , (recoveredBlock12Value6).
    (recoveredBlock12Value3) removeFileOnExistence: (recoveredBlock12Value8).
    recoveredBlock12Value9 := (self) hostAccess.
    recoveredBlock12Value10 := recoveredBlock12Local2.
    recoveredBlock12Value11 := (self) codeStorageSourceCodePath.
    (recoveredBlock12Value9) ensureFile: (recoveredBlock12Value10) inPath: (recoveredBlock12Value11).
    recoveredBlock12Value12 := (self) additionalFiles.
    recoveredBlock12Value13 := recoveredBlock12Local1.
    recoveredBlock12Value14 := [
    | recoveredBlock12Block62Value0 recoveredBlock12Block62Value1 recoveredBlock12Block62Value2 recoveredBlock12Block62Value3 |
    recoveredBlock12Block62Value0 := (self) errorNameClashBlock.
    recoveredBlock12Block62Value1 := recoveredBlock12Local1.
    recoveredBlock12Block62Value2 := recoveredBlock12Local2.
    recoveredBlock12Block62Value3 := (recoveredBlock12Block62Value0) value: (recoveredBlock12Block62Value1) value: (recoveredBlock12Block62Value2).
    recoveredBlock12Block62Value3
].
    recoveredBlock12Value15 := (recoveredBlock12Value12) addHCodeFile: (recoveredBlock12Value13) ifFail: (recoveredBlock12Value14).
    recoveredBlock12Value15
].
    (recoveredValue2) do: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x203d63e0; bytecode file offset 0xcd2d04"
!ASDExternalFilesCodeContainerHandle methodsFor: 'recovered'!
makeASMCodePersistent: recoveredArg1 from: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) hostAccess.
    recoveredValue1 := (self) codeStorageSourceCodePath.
    (recoveredValue0) createHostDirectory: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Local1 recoveredBlock12Local2 recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 recoveredBlock12Value4 recoveredBlock12Value5 recoveredBlock12Value6 recoveredBlock12Value7 recoveredBlock12Value8 recoveredBlock12Value9 recoveredBlock12Value10 recoveredBlock12Value11 recoveredBlock12Value12 recoveredBlock12Value13 recoveredBlock12Value14 recoveredBlock12Value15 |
    recoveredBlock12Value0 := recoveredBlock12Arg1.
    recoveredBlock12Value1 := recoveredArg2.
    recoveredBlock12Value2 := (self) fullSourceFileName: (recoveredBlock12Value0) inPath: (recoveredBlock12Value1).
    recoveredBlock12Local2 := recoveredBlock12Value2.
    recoveredBlock12Value3 := (self) hostAccess.
    recoveredBlock12Value4 := (self) codeStorageSourceCodePath.
    recoveredBlock12Value5 := recoveredBlock12Local2.
    recoveredBlock12Value6 := (recoveredBlock12Value5) fileName.
    recoveredBlock12Value7 := recoveredBlock12Value6.
    recoveredBlock12Local1 := recoveredBlock12Value7.
    recoveredBlock12Value8 := (recoveredBlock12Value4) , (recoveredBlock12Value6).
    (recoveredBlock12Value3) removeFileOnExistence: (recoveredBlock12Value8).
    recoveredBlock12Value9 := (self) hostAccess.
    recoveredBlock12Value10 := recoveredBlock12Local2.
    recoveredBlock12Value11 := (self) codeStorageSourceCodePath.
    (recoveredBlock12Value9) ensureFile: (recoveredBlock12Value10) inPath: (recoveredBlock12Value11).
    recoveredBlock12Value12 := (self) additionalFiles.
    recoveredBlock12Value13 := recoveredBlock12Local1.
    recoveredBlock12Value14 := [
    | recoveredBlock12Block61Value0 recoveredBlock12Block61Value1 recoveredBlock12Block61Value2 recoveredBlock12Block61Value3 |
    recoveredBlock12Block61Value0 := (self) errorNameClashBlock.
    recoveredBlock12Block61Value1 := recoveredBlock12Local1.
    recoveredBlock12Block61Value2 := recoveredBlock12Local2.
    recoveredBlock12Block61Value3 := (recoveredBlock12Block61Value0) value: (recoveredBlock12Block61Value1) value: (recoveredBlock12Block61Value2).
    recoveredBlock12Block61Value3
].
    recoveredBlock12Value15 := (recoveredBlock12Value12) addASMCodeFile: (recoveredBlock12Value13) ifFail: (recoveredBlock12Value14).
    recoveredBlock12Value15
].
    (recoveredValue2) do: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x203d641c; bytecode file offset 0xcd2d04"
!ASDExternalFilesCodeContainerHandle methodsFor: 'recovered'!
makeCCodePersistent: recoveredArg1 from: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) hostAccess.
    recoveredValue1 := (self) codeStorageSourceCodePath.
    (recoveredValue0) createHostDirectory: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Local1 recoveredBlock12Local2 recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 recoveredBlock12Value4 recoveredBlock12Value5 recoveredBlock12Value6 recoveredBlock12Value7 recoveredBlock12Value8 recoveredBlock12Value9 recoveredBlock12Value10 recoveredBlock12Value11 recoveredBlock12Value12 recoveredBlock12Value13 recoveredBlock12Value14 recoveredBlock12Value15 |
    recoveredBlock12Value0 := recoveredBlock12Arg1.
    recoveredBlock12Value1 := recoveredArg2.
    recoveredBlock12Value2 := (self) fullSourceFileName: (recoveredBlock12Value0) inPath: (recoveredBlock12Value1).
    recoveredBlock12Local2 := recoveredBlock12Value2.
    recoveredBlock12Value3 := (self) hostAccess.
    recoveredBlock12Value4 := (self) codeStorageSourceCodePath.
    recoveredBlock12Value5 := recoveredBlock12Local2.
    recoveredBlock12Value6 := (recoveredBlock12Value5) fileName.
    recoveredBlock12Value7 := recoveredBlock12Value6.
    recoveredBlock12Local1 := recoveredBlock12Value7.
    recoveredBlock12Value8 := (recoveredBlock12Value4) , (recoveredBlock12Value6).
    (recoveredBlock12Value3) removeFileOnExistence: (recoveredBlock12Value8).
    recoveredBlock12Value9 := (self) hostAccess.
    recoveredBlock12Value10 := recoveredBlock12Local2.
    recoveredBlock12Value11 := (self) codeStorageSourceCodePath.
    (recoveredBlock12Value9) ensureFile: (recoveredBlock12Value10) inPath: (recoveredBlock12Value11).
    recoveredBlock12Value12 := (self) additionalFiles.
    recoveredBlock12Value13 := recoveredBlock12Local1.
    recoveredBlock12Value14 := [
    | recoveredBlock12Block61Value0 recoveredBlock12Block61Value1 recoveredBlock12Block61Value2 recoveredBlock12Block61Value3 |
    recoveredBlock12Block61Value0 := (self) errorNameClashBlock.
    recoveredBlock12Block61Value1 := recoveredBlock12Local1.
    recoveredBlock12Block61Value2 := recoveredBlock12Local2.
    recoveredBlock12Block61Value3 := (recoveredBlock12Block61Value0) value: (recoveredBlock12Block61Value1) value: (recoveredBlock12Block61Value2).
    recoveredBlock12Block61Value3
].
    recoveredBlock12Value15 := (recoveredBlock12Value12) addCCodeFile: (recoveredBlock12Value13) ifFail: (recoveredBlock12Value14).
    recoveredBlock12Value15
].
    (recoveredValue2) do: (recoveredValue3).
    ^self
! !

