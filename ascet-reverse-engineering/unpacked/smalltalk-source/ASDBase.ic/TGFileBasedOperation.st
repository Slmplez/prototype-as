"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20018bd8; bytecode file offset 0x92209c"
!TGFileBasedOperation methodsFor: 'recovered'!
writingFilesTitle
    ^'Writing Files ...'
! !

"ASDBase.ic method 0x20053958; bytecode file offset 0x9505d0"
!TGFileBasedOperation methodsFor: 'recovered'!
writingFilesTitle: recoveredArg1
    (self) writingFilesTitle.
    ^self
! !

"ASDBase.ic method 0x200618d4; bytecode file offset 0x95e838"
!TGFileBasedOperation methodsFor: 'recovered'!
externalProcessResultFileName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) destinationPath.
    recoveredValue1 := (recoveredValue0) , ('_asd_result.xml').
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006d67c; bytecode file offset 0x96a390"
!TGFileBasedOperation methodsFor: 'recovered'!
destinationPath
    | recoveredValue0 |
    recoveredValue0 := destinationPath.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006e090; bytecode file offset 0x96a9dc"
!TGFileBasedOperation methodsFor: 'recovered'!
buildEnvironmentInfo
    | recoveredValue0 |
    recoveredValue0 := buildEnvironmentInfo.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20074068; bytecode file offset 0x970b34"
!TGFileBasedOperation methodsFor: 'recovered'!
processRteCommand
    ^nil
! !

"ASDBase.ic method 0x2007a98c; bytecode file offset 0x97c330"
!TGFileBasedOperation methodsFor: 'recovered'!
hasInternalGenericHeaderSource
    ^false
! !

"ASDBase.ic method 0x2007bfbc; bytecode file offset 0x97c330"
!TGFileBasedOperation methodsFor: 'recovered'!
supportsPrePostBuildOperation
    ^false
! !

"ASDBase.ic method 0x2007d1d4; bytecode file offset 0x97c330"
!TGFileBasedOperation methodsFor: 'recovered'!
linkROMCode
    ^false
! !

"ASDBase.ic method 0x2007f334; bytecode file offset 0x97c330"
!TGFileBasedOperation methodsFor: 'recovered'!
hasInlineGenericHeaderSource
    ^false
! !

"ASDBase.ic method 0x20085600; bytecode file offset 0x981eb8"
!TGFileBasedOperation methodsFor: 'recovered'!
destinationPath: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) asPathname.
    destinationPath := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x200c4450; bytecode file offset 0x9c11bc"
!TGFileBasedOperation methodsFor: 'recovered'!
buildEnvironmentInfo: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    buildEnvironmentInfo := recoveredValue0.
    ^self
! !

