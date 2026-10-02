"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200068f0; bytecode file offset 0x908be4"
!EtasGeneralDllApi class methodsFor: 'recovered'!
isWindowsVistaOrHigher
    | recoveredValue0 |
    recoveredValue0 := (self) apiIsWindowsVistaOrHigher.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20007304; bytecode file offset 0x908be4"
!EtasGeneralDllApi class methodsFor: 'recovered'!
isWindows98
    | recoveredValue0 |
    recoveredValue0 := (self) apiIsWindows98.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20008348; bytecode file offset 0x908be4"
!EtasGeneralDllApi class methodsFor: 'recovered'!
isWindowsVista
    | recoveredValue0 |
    recoveredValue0 := (self) apiIsWindowsVista.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20009170; bytecode file offset 0x908be4"
!EtasGeneralDllApi class methodsFor: 'recovered'!
isWindows7
    | recoveredValue0 |
    recoveredValue0 := (self) apiIsWindows7.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20009bcc; bytecode file offset 0x908be4"
!EtasGeneralDllApi class methodsFor: 'recovered'!
isWindows95
    | recoveredValue0 |
    recoveredValue0 := (self) apiIsWindows95.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20009fe0; bytecode file offset 0x908be4"
!EtasGeneralDllApi class methodsFor: 'recovered'!
isAppSeparated
    | recoveredValue0 |
    recoveredValue0 := (self) apiIsAppSeparated.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000b150; bytecode file offset 0x908be4"
!EtasGeneralDllApi class methodsFor: 'recovered'!
isWindowsNT4
    | recoveredValue0 |
    recoveredValue0 := (self) apiIsWindowsNT4.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000b594; bytecode file offset 0x908be4"
!EtasGeneralDllApi class methodsFor: 'recovered'!
isWindowsXP
    | recoveredValue0 |
    recoveredValue0 := (self) apiIsWindowsXP.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000bb04; bytecode file offset 0x908be4"
!EtasGeneralDllApi class methodsFor: 'recovered'!
getMaxPath
    | recoveredValue0 |
    recoveredValue0 := (self) apiGetMaxPath.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000bcc0; bytecode file offset 0x908be4"
!EtasGeneralDllApi class methodsFor: 'recovered'!
checkInstallation
    | recoveredValue0 |
    recoveredValue0 := (self) apiCheckInstallation.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000bd08; bytecode file offset 0x908be4"
!EtasGeneralDllApi class methodsFor: 'recovered'!
isWindowsNT
    | recoveredValue0 |
    recoveredValue0 := (self) apiIsWindowsNT.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000bf90; bytecode file offset 0x908be4"
!EtasGeneralDllApi class methodsFor: 'recovered'!
isWindows7OrHigher
    | recoveredValue0 |
    recoveredValue0 := (self) apiIsWindows7OrHigher.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000e374; bytecode file offset 0x90ac38"
!EtasGeneralDllApi class methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
apiEtasFreeLibrary: recoveredArg1
    ^nil
! !

"ASDBase.ic method 0x2000e380; bytecode file offset 0x90ac38"
!EtasGeneralDllApi class methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
apiEtasLoadLibrary: recoveredArg1
    ^nil
! !

"ASDBase.ic method 0x200165e0; bytecode file offset 0x92209c"
!EtasGeneralDllApi class methodsFor: 'recovered'!
assertionDirectoryName
    ^'assertions'
! !

"ASDBase.ic method 0x20017174; bytecode file offset 0x92209c"
!EtasGeneralDllApi class methodsFor: 'recovered'!
walkbackDirectoryName
    ^'walkback'
! !

"ASDBase.ic method 0x20017660; bytecode file offset 0x92209c"
!EtasGeneralDllApi class methodsFor: 'recovered'!
processPathValueName
    ^'Process Path'
! !

"ASDBase.ic method 0x20017e58; bytecode file offset 0x92209c"
!EtasGeneralDllApi class methodsFor: 'recovered'!
applicationStateValueName
    ^'Application State'
! !

"ASDBase.ic method 0x2001c034; bytecode file offset 0x92209c"
!EtasGeneralDllApi class methodsFor: 'recovered'!
processNameStateValueName
    ^'Process Name'
! !

"ASDBase.ic method 0x2001efa4; bytecode file offset 0x92209c"
!EtasGeneralDllApi class methodsFor: 'recovered'!
fileName
    ^'etasGeneral100'
! !

"ASDBase.ic method 0x2003e608; bytecode file offset 0x93bf94"
!EtasGeneralDllApi class methodsFor: 'recovered'!
getETASTempFilePath
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := CfsDirectoryDescriptor.
    recoveredValue1 := (recoveredValue0) getTempPath.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003e698; bytecode file offset 0x93bf94"
!EtasGeneralDllApi class methodsFor: 'recovered'!
isServerMode
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := EtasMainDatabaseWindow.
    recoveredValue1 := (recoveredValue0) isServerMode.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003f4d8; bytecode file offset 0x93bf94"
!EtasGeneralDllApi class methodsFor: 'recovered'!
isServiceMode
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := EtasMainDatabaseWindow.
    recoveredValue1 := (recoveredValue0) isServiceMode.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200479ec; bytecode file offset 0x9451f8"
!EtasGeneralDllApi class methodsFor: 'recovered'!
getProductDisplayName
    | recoveredValue0 |
    recoveredValue0 := (self) getRegKey: ('ProductDisplayName').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20049f6c; bytecode file offset 0x947128"
!EtasGeneralDllApi class methodsFor: 'recovered'!
getWalkbackFiles
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) walkbackDirectoryPathName.
    recoveredValue1 := (self) getWalkbackFilesIn: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004a7bc; bytecode file offset 0x947128"
!EtasGeneralDllApi class methodsFor: 'recovered'!
getApplicationState
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) applicationStateValueName.
    recoveredValue1 := (self) getServerModeCompatibleUserRegKey: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20056bb0; bytecode file offset 0x9536dc"
!EtasGeneralDllApi class methodsFor: 'recovered'!
makeSureDirectoryPathExists: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) asPSZ.
    recoveredValue2 := (self) apiMakeSureDirectoryPathExists: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005d0ec; bytecode file offset 0x9599ac"
!EtasGeneralDllApi class methodsFor: 'recovered'!
createSystemInfoLog
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := (self) createSystemInfoLog: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20089414; bytecode file offset 0x985cfc"
!EtasGeneralDllApi class methodsFor: 'recovered'!
initializeClass
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    Cache := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x2009182c; bytecode file offset 0x98e344"
!EtasGeneralDllApi class methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
apiGetAppDataPath
    | recoveredValue0 |
    recoveredValue0 := EtasPrimitiveError.
    (recoveredValue0) primitiveFailed.
    ^false
! !

"ASDBase.ic method 0x20091840; bytecode file offset 0x98e344"
!EtasGeneralDllApi class methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
apiIsWindows95
    | recoveredValue0 |
    recoveredValue0 := EtasPrimitiveError.
    (recoveredValue0) primitiveFailed.
    ^false
! !

"ASDBase.ic method 0x20091854; bytecode file offset 0x98e344"
!EtasGeneralDllApi class methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
apiIsWindowsNT4
    | recoveredValue0 |
    recoveredValue0 := EtasPrimitiveError.
    (recoveredValue0) primitiveFailed.
    ^false
! !

"ASDBase.ic method 0x20091868; bytecode file offset 0x98e344"
!EtasGeneralDllApi class methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
apiCleanUpEtasLogFiles
    | recoveredValue0 |
    recoveredValue0 := EtasPrimitiveError.
    (recoveredValue0) primitiveFailed.
    ^false
! !

"ASDBase.ic method 0x2009187c; bytecode file offset 0x98e344"
!EtasGeneralDllApi class methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
apiGetETASTempFilePath
    | recoveredValue0 |
    recoveredValue0 := EtasPrimitiveError.
    (recoveredValue0) primitiveFailed.
    ^false
! !

"ASDBase.ic method 0x20091890; bytecode file offset 0x98e344"
!EtasGeneralDllApi class methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
apiGetETASGeneralRegKeyName
    | recoveredValue0 |
    recoveredValue0 := EtasPrimitiveError.
    (recoveredValue0) primitiveFailed.
    ^false
! !

"ASDBase.ic method 0x200918a4; bytecode file offset 0x98e344"
!EtasGeneralDllApi class methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
apiIsAppSeparated
    | recoveredValue0 |
    recoveredValue0 := EtasPrimitiveError.
    (recoveredValue0) primitiveFailed.
    ^false
! !

"ASDBase.ic method 0x200918b8; bytecode file offset 0x98e344"
!EtasGeneralDllApi class methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
apiIsWindowsVista
    | recoveredValue0 |
    recoveredValue0 := EtasPrimitiveError.
    (recoveredValue0) primitiveFailed.
    ^false
! !

"ASDBase.ic method 0x200918cc; bytecode file offset 0x98e344"
!EtasGeneralDllApi class methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
apiGetETASRegKeyName
    | recoveredValue0 |
    recoveredValue0 := EtasPrimitiveError.
    (recoveredValue0) primitiveFailed.
    ^false
! !

"ASDBase.ic method 0x200918e0; bytecode file offset 0x98e344"
!EtasGeneralDllApi class methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
apiIsWindowsNT
    | recoveredValue0 |
    recoveredValue0 := EtasPrimitiveError.
    (recoveredValue0) primitiveFailed.
    ^false
! !

"ASDBase.ic method 0x200918f4; bytecode file offset 0x98e344"
!EtasGeneralDllApi class methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
apiGetETASSharedFilePath
    | recoveredValue0 |
    recoveredValue0 := EtasPrimitiveError.
    (recoveredValue0) primitiveFailed.
    ^false
! !

"ASDBase.ic method 0x20091908; bytecode file offset 0x98e344"
!EtasGeneralDllApi class methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
apiGetTSRegKeyName
    | recoveredValue0 |
    recoveredValue0 := EtasPrimitiveError.
    (recoveredValue0) primitiveFailed.
    ^false
! !

"ASDBase.ic method 0x2009191c; bytecode file offset 0x98e344"
!EtasGeneralDllApi class methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
createLicenseInfoLog
    | recoveredValue0 |
    recoveredValue0 := EtasPrimitiveError.
    (recoveredValue0) primitiveFailed.
    ^false
! !

"ASDBase.ic method 0x20091930; bytecode file offset 0x98e344"
!EtasGeneralDllApi class methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
apiCleanUpEtasTempFiles
    | recoveredValue0 |
    recoveredValue0 := EtasPrimitiveError.
    (recoveredValue0) primitiveFailed.
    ^false
! !

"ASDBase.ic method 0x20091944; bytecode file offset 0x98e344"
!EtasGeneralDllApi class methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
apiGetMaxPath
    | recoveredValue0 |
    recoveredValue0 := EtasPrimitiveError.
    (recoveredValue0) primitiveFailed.
    ^false
! !

"ASDBase.ic method 0x20091958; bytecode file offset 0x98e344"
!EtasGeneralDllApi class methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
apiGetAppOnlineHelpPath
    | recoveredValue0 |
    recoveredValue0 := EtasPrimitiveError.
    (recoveredValue0) primitiveFailed.
    ^false
! !

"ASDBase.ic method 0x2009196c; bytecode file offset 0x98e344"
!EtasGeneralDllApi class methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
apiIsWindows7OrHigher
    | recoveredValue0 |
    recoveredValue0 := EtasPrimitiveError.
    (recoveredValue0) primitiveFailed.
    ^false
! !

"ASDBase.ic method 0x20091980; bytecode file offset 0x98e344"
!EtasGeneralDllApi class methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
apiGetTSPath
    | recoveredValue0 |
    recoveredValue0 := EtasPrimitiveError.
    (recoveredValue0) primitiveFailed.
    ^false
! !

"ASDBase.ic method 0x20091994; bytecode file offset 0x98e344"
!EtasGeneralDllApi class methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
apiIsWindows7
    | recoveredValue0 |
    recoveredValue0 := EtasPrimitiveError.
    (recoveredValue0) primitiveFailed.
    ^false
! !

"ASDBase.ic method 0x200919a8; bytecode file offset 0x98e344"
!EtasGeneralDllApi class methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
apiIsWindows98
    | recoveredValue0 |
    recoveredValue0 := EtasPrimitiveError.
    (recoveredValue0) primitiveFailed.
    ^false
! !

"ASDBase.ic method 0x200919bc; bytecode file offset 0x98e344"
!EtasGeneralDllApi class methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
apiGetAppRegKeyName
    | recoveredValue0 |
    recoveredValue0 := EtasPrimitiveError.
    (recoveredValue0) primitiveFailed.
    ^false
! !

"ASDBase.ic method 0x200919d0; bytecode file offset 0x98e344"
!EtasGeneralDllApi class methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
createRegistryInfoLog
    | recoveredValue0 |
    recoveredValue0 := EtasPrimitiveError.
    (recoveredValue0) primitiveFailed.
    ^false
! !

"ASDBase.ic method 0x200919e4; bytecode file offset 0x98e344"
!EtasGeneralDllApi class methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
apiIsWindowsXP
    | recoveredValue0 |
    recoveredValue0 := EtasPrimitiveError.
    (recoveredValue0) primitiveFailed.
    ^false
! !

"ASDBase.ic method 0x200919f8; bytecode file offset 0x98e344"
!EtasGeneralDllApi class methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
apiGetETASSecurityFilePath
    | recoveredValue0 |
    recoveredValue0 := EtasPrimitiveError.
    (recoveredValue0) primitiveFailed.
    ^false
! !

"ASDBase.ic method 0x20091a0c; bytecode file offset 0x98e344"
!EtasGeneralDllApi class methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
apiGetAppVersion
    | recoveredValue0 |
    recoveredValue0 := EtasPrimitiveError.
    (recoveredValue0) primitiveFailed.
    ^false
! !

"ASDBase.ic method 0x20091a20; bytecode file offset 0x98e344"
!EtasGeneralDllApi class methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
apiIsWindowsVistaOrHigher
    | recoveredValue0 |
    recoveredValue0 := EtasPrimitiveError.
    (recoveredValue0) primitiveFailed.
    ^false
! !

"ASDBase.ic method 0x20091a34; bytecode file offset 0x98e344"
!EtasGeneralDllApi class methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
apiGetAppProgramPath
    | recoveredValue0 |
    recoveredValue0 := EtasPrimitiveError.
    (recoveredValue0) primitiveFailed.
    ^false
! !

"ASDBase.ic method 0x20091a48; bytecode file offset 0x98e344"
!EtasGeneralDllApi class methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
apiCheckInstallation
    | recoveredValue0 |
    recoveredValue0 := EtasPrimitiveError.
    (recoveredValue0) primitiveFailed.
    ^false
! !

"ASDBase.ic method 0x20091a5c; bytecode file offset 0x98e344"
!EtasGeneralDllApi class methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
apiGetAppRegKey
    | recoveredValue0 |
    recoveredValue0 := EtasPrimitiveError.
    (recoveredValue0) primitiveFailed.
    ^false
! !

"ASDBase.ic method 0x20091a70; bytecode file offset 0x98e344"
!EtasGeneralDllApi class methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
apiGetETASLogFilePath
    | recoveredValue0 |
    recoveredValue0 := EtasPrimitiveError.
    (recoveredValue0) primitiveFailed.
    ^false
! !

"ASDBase.ic method 0x20091a84; bytecode file offset 0x98e344"
!EtasGeneralDllApi class methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
apiGetETASManualFilePath
    | recoveredValue0 |
    recoveredValue0 := EtasPrimitiveError.
    (recoveredValue0) primitiveFailed.
    ^false
! !

"ASDBase.ic method 0x20096020; bytecode file offset 0x992bec"
!EtasGeneralDllApi class methodsFor: 'recovered'!
setLanguageForApp: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) asParameter.
    (self) apiSetLanguageForApp: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009912c; bytecode file offset 0x995a3c"
!EtasGeneralDllApi class methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
apiMakeSureDirectoryPathExists: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := EtasPrimitiveError.
    (recoveredValue0) primitiveFailed.
    ^false
! !

"ASDBase.ic method 0x20099140; bytecode file offset 0x995a3c"
!EtasGeneralDllApi class methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
apiSetLanguageForApp: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := EtasPrimitiveError.
    (recoveredValue0) primitiveFailed.
    ^false
! !

"ASDBase.ic method 0x20099154; bytecode file offset 0x995a3c"
!EtasGeneralDllApi class methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
apiCreatePerformanceInfoLog: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := EtasPrimitiveError.
    (recoveredValue0) primitiveFailed.
    ^false
! !

"ASDBase.ic method 0x20099168; bytecode file offset 0x995a3c"
!EtasGeneralDllApi class methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
apiGetSharedDllPathFromRegistry: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := EtasPrimitiveError.
    (recoveredValue0) primitiveFailed.
    ^false
! !

"ASDBase.ic method 0x2009917c; bytecode file offset 0x995a3c"
!EtasGeneralDllApi class methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
apiGetETASSharedRegKeyName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := EtasPrimitiveError.
    (recoveredValue0) primitiveFailed.
    ^false
! !

"ASDBase.ic method 0x2009a920; bytecode file offset 0x997280"
!EtasGeneralDllApi class methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
apiGetRegisteredNameForApp: recoveredArg1 bufferSize: recoveredArg2
    | recoveredValue0 |
    recoveredValue0 := EtasPrimitiveError.
    (recoveredValue0) primitiveFailed.
    ^false
! !

"ASDBase.ic method 0x2009a934; bytecode file offset 0x997280"
!EtasGeneralDllApi class methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
apiReregisterComponents: recoveredArg1 locationAliases: recoveredArg2
    | recoveredValue0 |
    recoveredValue0 := EtasPrimitiveError.
    (recoveredValue0) primitiveFailed.
    ^false
! !

"ASDBase.ic method 0x2009a95c; bytecode file offset 0x997280"
!EtasGeneralDllApi class methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
apiFullPath: recoveredArg1 relPath: recoveredArg2
    | recoveredValue0 |
    recoveredValue0 := EtasPrimitiveError.
    (recoveredValue0) primitiveFailed.
    ^false
! !

"ASDBase.ic method 0x2009a970; bytecode file offset 0x997280"
!EtasGeneralDllApi class methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
apiUnZipFilesPath: recoveredArg1 destPath: recoveredArg2
    | recoveredValue0 |
    recoveredValue0 := EtasPrimitiveError.
    (recoveredValue0) primitiveFailed.
    ^false
! !

"ASDBase.ic method 0x2009a984; bytecode file offset 0x997280"
!EtasGeneralDllApi class methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
zipGivenFiles: recoveredArg1 fileNameBuffer: recoveredArg2
    | recoveredValue0 |
    recoveredValue0 := EtasPrimitiveError.
    (recoveredValue0) primitiveFailed.
    ^false
! !

"ASDBase.ic method 0x2009a998; bytecode file offset 0x997280"
!EtasGeneralDllApi class methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
apiRegisterApp: recoveredArg1 appPath: recoveredArg2
    | recoveredValue0 |
    recoveredValue0 := EtasPrimitiveError.
    (recoveredValue0) primitiveFailed.
    ^false
! !

"ASDBase.ic method 0x2009a9ac; bytecode file offset 0x997280"
!EtasGeneralDllApi class methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
apiGetLanguageForApp: recoveredArg1 bufferSize: recoveredArg2
    | recoveredValue0 |
    recoveredValue0 := EtasPrimitiveError.
    (recoveredValue0) primitiveFailed.
    ^false
! !

"ASDBase.ic method 0x2009a9c0; bytecode file offset 0x997280"
!EtasGeneralDllApi class methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
apiCheckDllVersion: recoveredArg1 requiredVersion: recoveredArg2
    | recoveredValue0 |
    recoveredValue0 := EtasPrimitiveError.
    (recoveredValue0) primitiveFailed.
    ^false
! !

"ASDBase.ic method 0x2009b1a4; bytecode file offset 0x997adc"
!EtasGeneralDllApi class methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
apiGetPackage: recoveredArg1 version: recoveredArg2 bufferSize: recoveredArg3
    | recoveredValue0 |
    recoveredValue0 := EtasPrimitiveError.
    (recoveredValue0) primitiveFailed.
    ^false
! !

"ASDBase.ic method 0x2009b1b8; bytecode file offset 0x997adc"
!EtasGeneralDllApi class methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
apiGetDefaultIconForFileType: recoveredArg1 iconPath: recoveredArg2 iconIdx: recoveredArg3
    | recoveredValue0 |
    recoveredValue0 := EtasPrimitiveError.
    (recoveredValue0) primitiveFailed.
    ^false
! !

"ASDBase.ic method 0x2009b1cc; bytecode file offset 0x997adc"
!EtasGeneralDllApi class methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
apiZipLogFilesEx: recoveredArg1 fileSpec: recoveredArg2 fileNameBuffer: recoveredArg3
    | recoveredValue0 |
    recoveredValue0 := EtasPrimitiveError.
    (recoveredValue0) primitiveFailed.
    ^false
! !

"ASDBase.ic method 0x2009b1e0; bytecode file offset 0x997adc"
!EtasGeneralDllApi class methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
apiCleanUpDirectory: recoveredArg1 iAfterDays: recoveredArg2 iNoRemovedFiles: recoveredArg3
    | recoveredValue0 |
    recoveredValue0 := EtasPrimitiveError.
    (recoveredValue0) primitiveFailed.
    ^false
! !

"ASDBase.ic method 0x2009b1f4; bytecode file offset 0x997adc"
!EtasGeneralDllApi class methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
apiCreateSystemInfoLog: recoveredArg1 keys: recoveredArg2 values: recoveredArg3
    | recoveredValue0 |
    recoveredValue0 := EtasPrimitiveError.
    (recoveredValue0) primitiveFailed.
    ^false
! !

"ASDBase.ic method 0x2009b208; bytecode file offset 0x997adc"
!EtasGeneralDllApi class methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
apiZipFilesPath: recoveredArg1 filesToZip: recoveredArg2 recursive: recoveredArg3
    | recoveredValue0 |
    recoveredValue0 := EtasPrimitiveError.
    (recoveredValue0) primitiveFailed.
    ^false
! !

"ASDBase.ic method 0x2009b21c; bytecode file offset 0x997adc"
!EtasGeneralDllApi class methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
apiBuildOrUpdateReference: recoveredArg1 path: recoveredArg2 logFile: recoveredArg3
    | recoveredValue0 |
    recoveredValue0 := EtasPrimitiveError.
    (recoveredValue0) primitiveFailed.
    ^false
! !

"ASDBase.ic method 0x2009b2b8; bytecode file offset 0x997ba0"
!EtasGeneralDllApi class methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
apiGetLicenseInfo: recoveredArg1 bufferSize: recoveredArg2 values: recoveredArg3 bufferSize: recoveredArg4
    | recoveredValue0 |
    recoveredValue0 := EtasPrimitiveError.
    (recoveredValue0) primitiveFailed.
    ^false
! !

"ASDBase.ic method 0x2009b2cc; bytecode file offset 0x997ba0"
!EtasGeneralDllApi class methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
apiGetDefaultIconForFileType: recoveredArg1 iconPath: recoveredArg2 maxLenIconPath: recoveredArg3 iconIdx: recoveredArg4
    | recoveredValue0 |
    recoveredValue0 := EtasPrimitiveError.
    (recoveredValue0) primitiveFailed.
    ^false
! !

"ASDBase.ic method 0x2009b2e0; bytecode file offset 0x997ba0"
!EtasGeneralDllApi class methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
apiBrowseForFolder: recoveredArg1 parent: recoveredArg2 title: recoveredArg3 allowCreateNewFolder: recoveredArg4
    | recoveredValue0 |
    recoveredValue0 := EtasPrimitiveError.
    (recoveredValue0) primitiveFailed.
    ^false
! !

"ASDBase.ic method 0x2009b318; bytecode file offset 0x997bd8"
!EtasGeneralDllApi class methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
apiSendMailTo: recoveredArg1 cc: recoveredArg2 subject: recoveredArg3 body: recoveredArg4 attachment: recoveredArg5 deleteAttachmentsAfterSend: recoveredArg6
    | recoveredValue0 |
    recoveredValue0 := EtasPrimitiveError.
    (recoveredValue0) primitiveFailed.
    ^false
! !

"ASDBase.ic method 0x2009b338; bytecode file offset 0x997bf8"
!EtasGeneralDllApi class methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
apiZipLogFiles: recoveredArg1 subject: recoveredArg2 errorDescription: recoveredArg3 eMailHotline: recoveredArg4 pSendByEmail: recoveredArg5 zipFilePath: recoveredArg6 maxNoOfBytes: recoveredArg7
    | recoveredValue0 |
    recoveredValue0 := EtasPrimitiveError.
    (recoveredValue0) primitiveFailed.
    ^false
! !

"ASDBase.ic method 0x2009c0dc; bytecode file offset 0x998d48"
!EtasGeneralDllApi class methodsFor: 'recovered'!
getProgramCommonFilesPath
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSCall.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := (recoveredValue1) getenv: ('CommonProgramFiles').
    ^recoveredValue2
! !

"ASDBase.ic method 0x2009c2d4; bytecode file offset 0x998d48"
!EtasGeneralDllApi class methodsFor: 'recovered'!
getProgramFilesPath
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSCall.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := (recoveredValue1) getenv: ('ProgramFiles').
    ^recoveredValue2
! !

"ASDBase.ic method 0x2009c40c; bytecode file offset 0x998d48"
!EtasGeneralDllApi class methodsFor: 'recovered'!
getApplicationDataPath
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSCall.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := (recoveredValue1) getenv: ('AppData').
    ^recoveredValue2
! !

"ASDBase.ic method 0x2009c608; bytecode file offset 0x998fec"
!EtasGeneralDllApi class methodsFor: 'recovered'!
assertionDirectoryPathName
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EtasGeneralDllApi.
    recoveredValue1 := (recoveredValue0) getETASLogFilePath.
    recoveredValue2 := (self) assertionDirectoryName.
    recoveredValue3 := (recoveredValue1) , (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2009c650; bytecode file offset 0x998fec"
!EtasGeneralDllApi class methodsFor: 'recovered'!
walkbackDirectoryPathName
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EtasGeneralDllApi.
    recoveredValue1 := (recoveredValue0) getETASLogFilePath.
    recoveredValue2 := (self) walkbackDirectoryName.
    recoveredValue3 := (recoveredValue1) , (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2009de4c; bytecode file offset 0x99a70c"
!EtasGeneralDllApi class methodsFor: 'recovered'!
createPerformanceIndexLog
    | recoveredValue0 |
    recoveredValue0 := ('/s') asPSZ.
    (self) apiCreatePerformanceInfoLog: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200b0254; bytecode file offset 0x9acb60"
!EtasGeneralDllApi class methodsFor: 'recovered'!
closeDLL
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := PlatformLibrary.
    recoveredValue1 := (self) fileName.
    recoveredValue2 := (recoveredValue0) logicalName: (recoveredValue1).
    (recoveredValue2) close.
    ^self
! !

"ASDBase.ic method 0x200ddb08; bytecode file offset 0x9da3c4"
!EtasGeneralDllApi class methodsFor: 'recovered'!
zipFiles: recoveredArg1 recursive: recoveredArg2 toArchiveFile: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := (recoveredValue0) asPSZ.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) asPSZ.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (self) apiZipFilesPath: (recoveredValue1) filesToZip: (recoveredValue3) recursive: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x200df018; bytecode file offset 0x9db9b4"
!EtasGeneralDllApi class methodsFor: 'recovered'!
getETASSecurityFilePath
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) apiGetETASSecurityFilePath.
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (recoveredValue3) asString.
    ^recoveredValue4
! !

"ASDBase.ic method 0x200df030; bytecode file offset 0x9db9b4"
!EtasGeneralDllApi class methodsFor: 'recovered'!
getTSPath
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) apiGetTSPath.
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (recoveredValue3) asString.
    ^recoveredValue4
! !

"ASDBase.ic method 0x200df048; bytecode file offset 0x9db9b4"
!EtasGeneralDllApi class methodsFor: 'recovered'!
getETASGeneralRegKeyName
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) apiGetETASGeneralRegKeyName.
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (recoveredValue3) asString.
    ^recoveredValue4
! !

"ASDBase.ic method 0x200df060; bytecode file offset 0x9db9b4"
!EtasGeneralDllApi class methodsFor: 'recovered'!
getETASRegKeyName
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) apiGetETASRegKeyName.
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (recoveredValue3) asString.
    ^recoveredValue4
! !

"ASDBase.ic method 0x200df078; bytecode file offset 0x9db9b4"
!EtasGeneralDllApi class methodsFor: 'recovered'!
getAppRegKey
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) apiGetAppRegKey.
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (recoveredValue3) asString.
    ^recoveredValue4
! !

"ASDBase.ic method 0x200df090; bytecode file offset 0x9db9b4"
!EtasGeneralDllApi class methodsFor: 'recovered'!
getTSRegKeyName
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) apiGetTSRegKeyName.
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (recoveredValue3) asString.
    ^recoveredValue4
! !

"ASDBase.ic method 0x200df0a8; bytecode file offset 0x9db9b4"
!EtasGeneralDllApi class methodsFor: 'recovered'!
getETASManualFilePath
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) apiGetETASManualFilePath.
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (recoveredValue3) asString.
    ^recoveredValue4
! !

"ASDBase.ic method 0x200df0c0; bytecode file offset 0x9db9b4"
!EtasGeneralDllApi class methodsFor: 'recovered'!
getETASSharedFilePath
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) apiGetETASSharedFilePath.
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (recoveredValue3) asString.
    ^recoveredValue4
! !

"ASDBase.ic method 0x200df0d8; bytecode file offset 0x9db9b4"
!EtasGeneralDllApi class methodsFor: 'recovered'!
getAppRegKeyName
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) apiGetAppRegKeyName.
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (recoveredValue3) asString.
    ^recoveredValue4
! !

"ASDBase.ic method 0x200df0f0; bytecode file offset 0x9db9b4"
!EtasGeneralDllApi class methodsFor: 'recovered'!
getAppOnlineHelpPath
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) apiGetAppOnlineHelpPath.
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (recoveredValue3) asString.
    ^recoveredValue4
! !

"ASDBase.ic method 0x200e834c; bytecode file offset 0x9e4c20"
!EtasGeneralDllApi class methodsFor: 'recovered'!
setApplicationState: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) applicationStateValueName.
    recoveredValue1 := recoveredArg1.
    (self) setServerModeCompatibleUserRegKey: (recoveredValue0) string: (recoveredValue1).
    (self) setProcessInformation.
    ^self
! !

"ASDBase.ic method 0x200f95b8; bytecode file offset 0x9f5ed4"
!EtasGeneralDllApi class methodsFor: 'recovered'!
getProductVersion
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) getProductMajorVersion.
    recoveredValue1 := (recoveredValue0) asString.
    recoveredValue2 := (recoveredValue1) , ('.').
    recoveredValue3 := (self) getProductMinorVersion.
    recoveredValue4 := (recoveredValue3) asString.
    recoveredValue5 := (recoveredValue2) , (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x201054c0; bytecode file offset 0xa01d88"
!EtasGeneralDllApi class methodsFor: 'recovered'!
walkbackFileName
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := EtasGeneralDllApi.
    recoveredValue1 := (recoveredValue0) walkbackDirectoryPathName.
    recoveredValue2 := (recoveredValue1) , ('\').
    recoveredValue3 := EtasGeneralDllApi.
    recoveredValue4 := (recoveredValue3) determineDefaultFileName.
    recoveredValue5 := (recoveredValue2) , (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x201055d8; bytecode file offset 0xa01ec4"
!EtasGeneralDllApi class methodsFor: 'recovered'!
getProductMinorVersion
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := EtasGeneralDllApi.
    recoveredValue1 := (recoveredValue0) getAppVersion.
    recoveredValue2 := (recoveredValue1) asEtasVersion.
    recoveredValue3 := (recoveredValue2) & (16711680).
    recoveredValue4 := (recoveredValue3) // (65536).
    ^recoveredValue4
! !

"ASDBase.ic method 0x201055f8; bytecode file offset 0xa01ec4"
!EtasGeneralDllApi class methodsFor: 'recovered'!
getProductMajorVersion
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := EtasGeneralDllApi.
    recoveredValue1 := (recoveredValue0) getAppVersion.
    recoveredValue2 := (recoveredValue1) asEtasVersion.
    recoveredValue3 := (recoveredValue2) & (4278190080).
    recoveredValue4 := (recoveredValue3) // (16777216).
    ^recoveredValue4
! !

"ASDBase.ic method 0x2011050c; bytecode file offset 0xa0cdd4"
!EtasGeneralDllApi class methodsFor: 'recovered'!
registerApp: recoveredArg1 appPath: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    Cache := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) asPSZ.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue4) asPSZ.
    recoveredValue6 := (self) apiRegisterApp: (recoveredValue3) appPath: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20112f04; bytecode file offset 0xa0f804"
!EtasGeneralDllApi class methodsFor: 'recovered'!
getETASSharedRegKeyName: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asPSZ.
    recoveredValue3 := (self) apiGetETASSharedRegKeyName: (recoveredValue2).
    recoveredValue4 := (recoveredValue0) address: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (recoveredValue5) asString.
    ^recoveredValue6
! !

"ASDBase.ic method 0x20112f20; bytecode file offset 0xa0f804"
!EtasGeneralDllApi class methodsFor: 'recovered'!
getSharedDllPath: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asPSZ.
    recoveredValue3 := (self) apiGetSharedDllPathFromRegistry: (recoveredValue2).
    recoveredValue4 := (recoveredValue0) address: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (recoveredValue5) asString.
    ^recoveredValue6
! !

"ASDBase.ic method 0x20112f3c; bytecode file offset 0xa0f804"
!EtasGeneralDllApi class methodsFor: 'recovered'!
getSharedDllPathFromRegistry: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asPSZ.
    recoveredValue3 := (self) apiGetSharedDllPathFromRegistry: (recoveredValue2).
    recoveredValue4 := (recoveredValue0) address: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (recoveredValue5) asString.
    ^recoveredValue6
! !

"ASDBase.ic method 0x20124ab4; bytecode file offset 0xa21374"
!EtasGeneralDllApi class methodsFor: 'recovered'!
getLicenseNumber
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'LicenseNo'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) getRegKey: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := ''.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20128218; bytecode file offset 0xa24adc"
!EtasGeneralDllApi class methodsFor: 'recovered'!
checkExistance
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) filePath.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) stat: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2012cd80; bytecode file offset 0xa29840"
!EtasGeneralDllApi class methodsFor: 'recovered'!
getCompanyName
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getLicenseInfo.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 'Company'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [
    ''
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2012cdd4; bytecode file offset 0xa29840"
!EtasGeneralDllApi class methodsFor: 'recovered'!
getLastName
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getLicenseInfo.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 'LastName'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [
    ''
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2019d07c; bytecode file offset 0xa99944"
!EtasGeneralDllApi class methodsFor: 'recovered'!
getRegisteredAppName
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredLocal1 := 100.
    recoveredValue0 := String.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := (recoveredValue0) new: (recoveredValue1).
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := recoveredLocal2.
    recoveredValue4 := (recoveredValue3) asParameter.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (recoveredValue5) asParameter.
    (self) apiGetRegisteredNameForApp: (recoveredValue4) bufferSize: (recoveredValue6).
    recoveredValue7 := recoveredLocal2.
    recoveredValue8 := (recoveredValue7) trimNull.
    ^recoveredValue8
! !

"ASDBase.ic method 0x201d4488; bytecode file offset 0xad0d48"
!EtasGeneralDllApi class methodsFor: 'recovered'!
sendMailTo: recoveredArg1 cc: recoveredArg2 subject: recoveredArg3 body: recoveredArg4 attachment: recoveredArg5 deleteAttachmentsAfterSend: recoveredArg6
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := recoveredArg5.
    recoveredValue1 := (self) doubleZeroStringFromCollection: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) asParameter.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue4) asParameter.
    recoveredValue6 := recoveredArg3.
    recoveredValue7 := (recoveredValue6) asParameter.
    recoveredValue8 := recoveredArg4.
    recoveredValue9 := (recoveredValue8) asParameter.
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := (recoveredValue10) asParameter.
    recoveredValue12 := recoveredArg6.
    recoveredValue13 := (recoveredValue12) asParameter.
    recoveredValue14 := (self) apiSendMailTo: (recoveredValue3) cc: (recoveredValue5) subject: (recoveredValue7) body: (recoveredValue9) attachment: (recoveredValue11) deleteAttachmentsAfterSend: (recoveredValue13).
    ^recoveredValue14
! !

"ASDBase.ic method 0x201e09a0; bytecode file offset 0xadd274"
!EtasGeneralDllApi class methodsFor: 'recovered'!
getServerModeCompatibleAppRegKeyName
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OSStringZ.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) apiGetAppRegKeyName.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) address: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) isServerMode.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := '\ASCET\'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := '\ASCETServer\'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) replaceString: (recoveredStack1) with: (recoveredStack2).
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
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201e0b60; bytecode file offset 0xadd430"
!EtasGeneralDllApi class methodsFor: 'recovered'!
getLanguageForApp
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredLocal1 := 100.
    recoveredValue0 := String.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := (recoveredValue0) new: (recoveredValue1).
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := recoveredLocal2.
    recoveredValue4 := (recoveredValue3) asParameter.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (recoveredValue5) asParameter.
    (self) apiGetLanguageForApp: (recoveredValue4) bufferSize: (recoveredValue6).
    recoveredValue7 := OSStringZ.
    recoveredValue8 := recoveredLocal2.
    recoveredValue9 := (recoveredValue7) copyFromOSMemory: (recoveredValue8).
    recoveredValue10 := (recoveredValue9) asString.
    ^recoveredValue10
! !

"ASDBase.ic method 0x20240f98; bytecode file offset 0xb3d864"
!EtasGeneralDllApi class methodsFor: 'recovered'!
checkDllVersion: recoveredArg1 requiredVersion: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 recoveredBlock4Value4 |
    recoveredBlock4Value0 := recoveredArg1.
    recoveredBlock4Value1 := (recoveredBlock4Value0) asPSZ.
    recoveredBlock4Value2 := recoveredArg2.
    recoveredBlock4Value3 := (recoveredBlock4Value2) asPSZ.
    recoveredBlock4Value4 := (self) apiCheckDllVersion: (recoveredBlock4Value1) requiredVersion: (recoveredBlock4Value3).
    recoveredBlock4Value4
].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := ExError.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := [:block280de204Arg1 | 
    | block280de204Value0 block280de204Value1 |
    block280de204Value0 := block280de204Arg1.
    block280de204Value1 := (block280de204Value0) exitWith: (true).
    block280de204Value1
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) when: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20243470; bytecode file offset 0xb3fd4c"
!EtasGeneralDllApi class methodsFor: 'recovered'!
fullPath: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := String.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := CfsStat.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) maxPath.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) asParameter.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) asParameter.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) apiFullPath: (recoveredStack1) relPath: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := OSStringZ.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyFromOSMemory: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) asString.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) asLowercase.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20247920; bytecode file offset 0xb441f4"
!EtasGeneralDllApi class methodsFor: 'recovered'!
setProcessInformation
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHmodule.
    recoveredValue1 := (recoveredValue0) driverFileName.
    recoveredValue2 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Local1 recoveredBlock7Local2 recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 recoveredBlock7Value5 recoveredBlock7Value6 recoveredBlock7Value7 recoveredBlock7Value8 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := (recoveredBlock7Value0) fileNameOnly.
    recoveredBlock7Local2 := recoveredBlock7Value1.
    recoveredBlock7Value2 := recoveredBlock7Arg1.
    recoveredBlock7Value3 := (recoveredBlock7Value2) getPathOnly.
    recoveredBlock7Local1 := recoveredBlock7Value3.
    recoveredBlock7Value4 := (self) processNameStateValueName.
    recoveredBlock7Value5 := recoveredBlock7Local2.
    (self) setServerModeCompatibleUserRegKey: (recoveredBlock7Value4) string: (recoveredBlock7Value5).
    recoveredBlock7Value6 := (self) processPathValueName.
    recoveredBlock7Value7 := recoveredBlock7Local1.
    recoveredBlock7Value8 := (self) setServerModeCompatibleUserRegKey: (recoveredBlock7Value6) string: (recoveredBlock7Value7).
    recoveredBlock7Value8
].
    (recoveredValue1) ifNotNil: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20259fc8; bytecode file offset 0xb5689c"
!EtasGeneralDllApi class methodsFor: 'recovered'!
getAppVersion
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := Cache.
    recoveredValue1 := [
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 recoveredBlock8Value4 recoveredBlock8Value5 recoveredBlock8Value6 |
    recoveredBlock8Value0 := OSStringZ.
    recoveredBlock8Value1 := (self) apiGetAppVersion.
    recoveredBlock8Value2 := (recoveredBlock8Value0) address: (recoveredBlock8Value1).
    recoveredLocal1 := recoveredBlock8Value2.
    recoveredBlock8Value3 := Cache.
    recoveredBlock8Value4 := recoveredLocal1.
    recoveredBlock8Value5 := (recoveredBlock8Value4) asString.
    recoveredBlock8Value6 := (recoveredBlock8Value3) at: ('AppVersion') put: (recoveredBlock8Value5).
    ^recoveredBlock8Value6
].
    recoveredValue2 := (recoveredValue0) at: ('AppVersion') ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20269900; bytecode file offset 0xb661d4"
!EtasGeneralDllApi class methodsFor: 'recovered'!
getEtasInternalKey
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := Cache.
    recoveredValue1 := [
    | recoveredBlock8Stack0 recoveredBlock8Stack1 recoveredBlock8Stack2 recoveredBlock8Stack3 recoveredBlock8PC recoveredBlock8Step recoveredBlock8Done recoveredBlock8Result |
    recoveredBlock8Stack0 := self.
    recoveredBlock8PC := 14.
    recoveredBlock8Done := false.
    [recoveredBlock8Done not] whileTrue: [
        recoveredBlock8Step := recoveredBlock8PC.
        recoveredBlock8Step = 14 ifTrue: [
            recoveredBlock8Stack1 := 'EtasInternal'.
            recoveredBlock8PC := 16.
        ].
        recoveredBlock8Step = 16 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) getRegKey: (recoveredBlock8Stack1).
            recoveredBlock8PC := 17.
        ].
        recoveredBlock8Step = 17 ifTrue: [
            recoveredBlock8Stack1 := [
    0
].
            recoveredBlock8PC := 19.
        ].
        recoveredBlock8Step = 19 ifTrue: [
            recoveredBlock8PC := 25.
        ].
        recoveredBlock8Step = 25 ifTrue: [
            recoveredBlock8Stack2 := [:block280e0088Arg1 | 
    | block280e0088Value0 block280e0088Value1 |
    block280e0088Value0 := block280e0088Arg1.
    block280e0088Value1 := (block280e0088Value0) asInteger.
    block280e0088Value1
].
            recoveredBlock8PC := 27.
        ].
        recoveredBlock8Step = 27 ifTrue: [
            recoveredBlock8PC := 34.
        ].
        recoveredBlock8Step = 34 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) ifNil: (recoveredBlock8Stack1) ifNotNil: (recoveredBlock8Stack2).
            recoveredBlock8PC := 36.
        ].
        recoveredBlock8Step = 36 ifTrue: [
            recoveredBlock8Result := recoveredBlock8Stack0.
            recoveredBlock8Done := true.
        ].
    ].
    recoveredBlock8Result
].
    recoveredValue2 := (recoveredValue0) at: ('EtasInternal') ifAbsentPut: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2027004c; bytecode file offset 0xb6c950"
!EtasGeneralDllApi class methodsFor: 'recovered'!
getAppProgramPath
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := Cache.
    recoveredValue1 := [
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 recoveredBlock8Value4 recoveredBlock8Value5 recoveredBlock8Value6 recoveredBlock8Value7 |
    recoveredBlock8Value0 := OSStringZ.
    recoveredBlock8Value1 := (self) apiGetAppProgramPath.
    recoveredBlock8Value2 := (recoveredBlock8Value0) address: (recoveredBlock8Value1).
    recoveredLocal1 := recoveredBlock8Value2.
    recoveredBlock8Value3 := Cache.
    recoveredBlock8Value4 := recoveredLocal1.
    recoveredBlock8Value5 := (recoveredBlock8Value4) asString.
    recoveredBlock8Value6 := (recoveredBlock8Value5) asPathname.
    recoveredBlock8Value7 := (recoveredBlock8Value3) at: ('AppProgramPath') put: (recoveredBlock8Value6).
    ^recoveredBlock8Value7
].
    recoveredValue2 := (recoveredValue0) at: ('AppProgramPath') ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20270078; bytecode file offset 0xb6c950"
!EtasGeneralDllApi class methodsFor: 'recovered'!
getAppDataPath
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := Cache.
    recoveredValue1 := [
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 recoveredBlock8Value4 recoveredBlock8Value5 recoveredBlock8Value6 recoveredBlock8Value7 |
    recoveredBlock8Value0 := OSStringZ.
    recoveredBlock8Value1 := (self) apiGetAppDataPath.
    recoveredBlock8Value2 := (recoveredBlock8Value0) address: (recoveredBlock8Value1).
    recoveredLocal1 := recoveredBlock8Value2.
    recoveredBlock8Value3 := Cache.
    recoveredBlock8Value4 := recoveredLocal1.
    recoveredBlock8Value5 := (recoveredBlock8Value4) asString.
    recoveredBlock8Value6 := (recoveredBlock8Value5) asPathname.
    recoveredBlock8Value7 := (recoveredBlock8Value3) at: ('AppDataPath') put: (recoveredBlock8Value6).
    ^recoveredBlock8Value7
].
    recoveredValue2 := (recoveredValue0) at: ('AppDataPath') ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x202718c4; bytecode file offset 0xb6e1c0"
!EtasGeneralDllApi class methodsFor: 'recovered'!
etasFreeLibrary: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) apiEtasFreeLibrary: (recoveredValue0).
    recoveredValue2 := recoveredValue1.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := [
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 recoveredBlock12Value4 recoveredBlock12Value5 |
    recoveredBlock12Value0 := RBUserInfo.
    recoveredBlock12Value1 := recoveredArg1.
    recoveredBlock12Value2 := ('Failed to unload the library: "') , (recoveredBlock12Value1).
    recoveredBlock12Value3 := (recoveredBlock12Value2) , ('"!!').
    recoveredBlock12Value4 := (recoveredBlock12Value0) errorMessage: (recoveredBlock12Value3).
    recoveredBlock12Value5 := (recoveredBlock12Value4) prompt.
    recoveredBlock12Value5
].
    (recoveredValue1) ifNil: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x202718ec; bytecode file offset 0xb6e1c0"
!EtasGeneralDllApi class methodsFor: 'recovered'!
etasLoadLibrary: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) apiEtasLoadLibrary: (recoveredValue0).
    recoveredValue2 := recoveredValue1.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := [
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 recoveredBlock12Value4 recoveredBlock12Value5 |
    recoveredBlock12Value0 := RBUserInfo.
    recoveredBlock12Value1 := recoveredArg1.
    recoveredBlock12Value2 := ('Failed to load the library: "') , (recoveredBlock12Value1).
    recoveredBlock12Value3 := (recoveredBlock12Value2) , ('"!!').
    recoveredBlock12Value4 := (recoveredBlock12Value0) errorMessage: (recoveredBlock12Value3).
    recoveredBlock12Value5 := (recoveredBlock12Value4) prompt.
    recoveredBlock12Value5
].
    (recoveredValue1) ifNil: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x2027468c; bytecode file offset 0xb70f5c"
!EtasGeneralDllApi class methodsFor: 'recovered'!
getPackageVersion: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 256.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := String.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) asParameter.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) asParameter.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := (recoveredStack3) asParameter.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) apiGetPackage: (recoveredStack1) version: (recoveredStack2) bufferSize: (recoveredStack3).
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
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := OSStringZ.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyFromOSMemory: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) asString.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20289e78; bytecode file offset 0xb86790"
!EtasGeneralDllApi class methodsFor: 'recovered'!
getServerModeCompatibleUserRegKey: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := HkeyCurrentUserHandle.
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
            recoveredStack1 := HkeyCurrentUserHandle.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := EtasGeneralDllApi.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) getServerModeCompatibleAppRegKeyName.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) regOpenKey: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) isError.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) regQueryValueEx: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) regCloseKey.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20289e9c; bytecode file offset 0xb86790"
!EtasGeneralDllApi class methodsFor: 'recovered'!
getUserRegKey: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := HkeyCurrentUserHandle.
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
            recoveredStack1 := HkeyCurrentUserHandle.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := EtasGeneralDllApi.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) getAppRegKeyName.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) regOpenKey: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) isError.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) regQueryValueEx: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) regCloseKey.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20289ec0; bytecode file offset 0xb86790"
!EtasGeneralDllApi class methodsFor: 'recovered'!
getRegKey: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := HkeyLocalMachineHandle.
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
            recoveredStack1 := HkeyLocalMachineHandle.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := EtasGeneralDllApi.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) getAppRegKeyName.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) regOpenKey: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) isError.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) regQueryValueEx: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) regCloseKey.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2028a7b0; bytecode file offset 0xb87080"
!EtasGeneralDllApi class methodsFor: 'recovered'!
getRegClassesKey: recoveredArg1 value: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := HkeyLocalMachineHandle.
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
            recoveredStack1 := HkeyLocalMachineHandle.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := 'SOFTWARE\Classes\'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) regOpenKey: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) isError.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) regQueryValueEx: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) regCloseKey.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2028afa8; bytecode file offset 0xb87878"
!EtasGeneralDllApi class methodsFor: 'recovered'!
zipLogFilesEx: recoveredArg1 fileSpec: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := String.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) getMaxPath.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) doubleZeroStringFromCollection: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) asParameter.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) asParameter.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) apiZipLogFilesEx: (recoveredStack1) fileSpec: (recoveredStack2) fileNameBuffer: (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) trimNull.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredPC := 41.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2029db5c; bytecode file offset 0xb9a42c"
!EtasGeneralDllApi class methodsFor: 'recovered'!
systemPath
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OSCall.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := OSStringZ.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := 256.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := 256.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) getSystemDirectory: (recoveredStack2) cbSysPath: (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := String.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2029e6a4; bytecode file offset 0xb9af78"
!EtasGeneralDllApi class methodsFor: 'recovered'!
getSubRegKey: recoveredArg1 key: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := HkeyLocalMachineHandle.
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
            recoveredStack1 := HkeyLocalMachineHandle.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := EtasGeneralDllApi.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) getAppRegKeyName.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) regOpenKey: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) isError.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) regQueryValueEx: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) regCloseKey.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202d59cc; bytecode file offset 0xbd22a4"
!EtasGeneralDllApi class methodsFor: 'recovered'!
setRegKey: recoveredArg1 string: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'No Vista compliant method. Use #setUserRegKey: / #getUserRegKey instead.'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) error: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := HkeyLocalMachineHandle.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := HkeyLocalMachineHandle.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := EtasGeneralDllApi.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) getAppRegKeyName.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) regOpenKey: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
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
            recoveredStack2 := recoveredArg2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) regSetValue: (recoveredStack1) data: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) regCloseKey.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202e0064; bytecode file offset 0xbdc944"
!EtasGeneralDllApi class methodsFor: 'recovered'!
getSwepBasePath
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasGeneralDllApi.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) getETASRegKeyName.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 'SWEPFramework\SWEPLauncher'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := HkeyCurrentUserHandle.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := HkeyCurrentUserHandle.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) regOpenKey: (recoveredStack2).
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
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) isError.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 39].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := 'localPath'.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) regQueryValueEx: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) regCloseKey.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202f1f9c; bytecode file offset 0xbee898"
!EtasGeneralDllApi class methodsFor: 'recovered'!
browseForFolder: recoveredArg1 title: recoveredArg2 allowCreateNewFolder: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := String.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) getMaxPath.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack5 := 1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) replaceFrom: (recoveredStack2) to: (recoveredStack3) with: (recoveredStack4) startingAt: (recoveredStack5).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) asParameter.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := (recoveredStack3) asParameter.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack4 := (recoveredStack4) asParameter.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) apiBrowseForFolder: (recoveredStack1) parent: (recoveredStack2) title: (recoveredStack3) allowCreateNewFolder: (recoveredStack4).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) trimNull.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredPC := 51.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202f1fc4; bytecode file offset 0xbee898"
!EtasGeneralDllApi class methodsFor: 'recovered'!
etasGeneral80browseForFolder: recoveredArg1 title: recoveredArg2 allowCreateNewFolder: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := String.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) getMaxPath.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack5 := 1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) replaceFrom: (recoveredStack2) to: (recoveredStack3) with: (recoveredStack4) startingAt: (recoveredStack5).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) asParameter.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := (recoveredStack3) asParameter.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack4 := (recoveredStack4) asParameter.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) apiBrowseForFolder: (recoveredStack1) parent: (recoveredStack2) title: (recoveredStack3) allowCreateNewFolder: (recoveredStack4).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) trimNull.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredPC := 51.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203030c4; bytecode file offset 0xbff9ac"
!EtasGeneralDllApi class methodsFor: 'recovered'!
getWalkbackFilesIn: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) createWalkbackDirectoryIfAbsent.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := CfsDirectoryDescriptor.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := '*.wkb'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := FREG.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) opendir: (recoveredStack1) pattern: (recoveredStack2) mode: (recoveredStack3).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCfsError.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 35].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) message.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) error: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 35 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) readdir.
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
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 49].
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) closedir.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20303b08; bytecode file offset 0xc003d0"
!EtasGeneralDllApi class methodsFor: 'recovered'!
getLicenseInfo
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 2048.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := String.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 2048.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := String.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) asParameter.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := (recoveredStack2) asParameter.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := (recoveredStack3) asParameter.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack4 := (recoveredStack4) asParameter.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) apiGetLicenseInfo: (recoveredStack1) bufferSize: (recoveredStack2) values: (recoveredStack3) bufferSize: (recoveredStack4).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) dictionaryFromOSMultiString: (recoveredStack1) values: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredPC := 53.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20308690; bytecode file offset 0xc04f60"
!EtasGeneralDllApi class methodsFor: 'recovered'!
doubleZeroStringFromCollection: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := String.
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := String.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := [:recoveredBlock27Arg1 | 
    | recoveredBlock27Value0 recoveredBlock27Value1 recoveredBlock27Value2 recoveredBlock27Value3 recoveredBlock27Value4 |
    recoveredBlock27Value0 := recoveredLocal1.
    recoveredBlock27Value1 := recoveredBlock27Arg1.
    recoveredBlock27Value2 := (recoveredBlock27Value1) nullTerminated.
    recoveredBlock27Value3 := (recoveredBlock27Value0) , (recoveredBlock27Value2).
    recoveredBlock27Value4 := recoveredBlock27Value3.
    recoveredLocal1 := recoveredBlock27Value4.
    recoveredBlock27Value3
].
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) nullTerminated.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2032219c; bytecode file offset 0xc1ea80"
!EtasGeneralDllApi class methodsFor: 'recovered'!
getDefaultIconForFileType: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := String.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) getMaxPath.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := ByteArray.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := 4.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) asParameter.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) asParameter.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := (recoveredStack3) asParameter.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) apiGetDefaultIconForFileType: (recoveredStack1) iconPath: (recoveredStack2) iconIdx: (recoveredStack3).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := Association.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := OSStringZ.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFromOSMemory: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := (recoveredStack2) int32At: (recoveredStack3).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) key: (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredPC := 57.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20328560; bytecode file offset 0xc24e44"
!EtasGeneralDllApi class methodsFor: 'recovered'!
filePath
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OSCall.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := OSStringZ.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := 256.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := 256.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) getSystemDirectory: (recoveredStack2) cbSysPath: (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := String.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := CfsDirectoryDescriptor.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := (recoveredStack2) pathSeparatorString.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := (recoveredStack2) fileName.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := '.dll'.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203373e4; bytecode file offset 0xc33cbc"
!EtasGeneralDllApi class methodsFor: 'recovered'!
registerServerModeCompatibleApp: recoveredArg1 appPath: recoveredArg2
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
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) isServerMode.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := 'ascetserver'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) equalsIgnoringCase: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := 5.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyFrom: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) isServiceMode.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := 'ascetservice'.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) equalsIgnoringCase: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := 5.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyFrom: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) initializeClass.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) asPSZ.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := (recoveredStack2) asPSZ.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) apiRegisterApp: (recoveredStack1) appPath: (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2036f110; bytecode file offset 0xc6b9e0"
!EtasGeneralDllApi class methodsFor: 'recovered'!
collectionFromOSMultiString: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
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
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 58.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) uint8At: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 31].
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (-1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack4 := String.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack5 := recoveredLocal4.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack6 := recoveredLocal3.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack5 := (recoveredStack5) - (recoveredStack6).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack4 := (recoveredStack4) new: (recoveredStack5).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack5 := 0.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) memcpyFrom: (recoveredStack2) to: (recoveredStack3) into: (recoveredStack4) startingAt: (recoveredStack5).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) uint8At: (recoveredStack2).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203df438; bytecode file offset 0xcdbd14"
!EtasGeneralDllApi class methodsFor: 'recovered'!
zipLogFiles: recoveredArg1 subject: recoveredArg2 errorDescription: recoveredArg3 eMailHotline: recoveredArg4 sendByEmail: recoveredArg5
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := String.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 256.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := ByteArray.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := 4.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg5.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 29].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) uint32At: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) asPSZ.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := (recoveredStack2) asPSZ.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := (recoveredStack3) asPSZ.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack4 := (recoveredStack4) asPSZ.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack5 := recoveredLocal3.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack6 := recoveredLocal2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack7 := 256.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) apiZipLogFiles: (recoveredStack1) subject: (recoveredStack2) errorDescription: (recoveredStack3) eMailHotline: (recoveredStack4) pSendByEmail: (recoveredStack5) zipFilePath: (recoveredStack6) maxNoOfBytes: (recoveredStack7).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) uint32At: (recoveredStack1).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredPC := 78.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := EtasTSZipFileReturn.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) trimNull.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) create: (recoveredStack1) eMailSuccess: (recoveredStack2).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203f2a7c; bytecode file offset 0xcef374"
!EtasGeneralDllApi class methodsFor: 'recovered'!
getETASLogFilePath
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := Cache.
    recoveredValue1 := [
    | recoveredBlock8Local1 recoveredBlock8Local2 recoveredBlock8Stack0 recoveredBlock8Stack1 recoveredBlock8Stack2 recoveredBlock8Stack3 recoveredBlock8Stack4 recoveredBlock8PC recoveredBlock8Step recoveredBlock8Done recoveredBlock8Result |
    recoveredBlock8Stack0 := self.
    recoveredBlock8PC := 14.
    recoveredBlock8Done := false.
    [recoveredBlock8Done not] whileTrue: [
        recoveredBlock8Step := recoveredBlock8PC.
        recoveredBlock8Step = 14 ifTrue: [
            recoveredBlock8Stack1 := OSStringZ.
            recoveredBlock8PC := 16.
        ].
        recoveredBlock8Step = 16 ifTrue: [
            recoveredBlock8Stack2 := self.
            recoveredBlock8PC := 17.
        ].
        recoveredBlock8Step = 17 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) apiGetETASLogFilePath.
            recoveredBlock8PC := 18.
        ].
        recoveredBlock8Step = 18 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) address: (recoveredBlock8Stack2).
            recoveredBlock8PC := 20.
        ].
        recoveredBlock8Step = 20 ifTrue: [
            recoveredBlock8Local2 := recoveredBlock8Stack1.
            recoveredBlock8PC := 23.
        ].
        recoveredBlock8Step = 23 ifTrue: [
            recoveredBlock8Stack1 := recoveredBlock8Local2.
            recoveredBlock8PC := 26.
        ].
        recoveredBlock8Step = 26 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) asString.
            recoveredBlock8PC := 28.
        ].
        recoveredBlock8Step = 28 ifTrue: [
            recoveredBlock8Local1 := recoveredBlock8Stack1.
            recoveredBlock8PC := 31.
        ].
        recoveredBlock8Step = 31 ifTrue: [
            recoveredBlock8Stack1 := 'MultiInstance'.
            recoveredBlock8PC := 33.
        ].
        recoveredBlock8Step = 33 ifTrue: [
            recoveredBlock8Stack2 := 'Kk'.
            recoveredBlock8PC := 35.
        ].
        recoveredBlock8Step = 35 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) == (recoveredBlock8Stack2).
            recoveredBlock8PC := 36.
        ].
        recoveredBlock8Step = 36 ifTrue: [
            recoveredBlock8PC := 37.
        ].
        recoveredBlock8Step = 37 ifTrue: [
            recoveredBlock8Stack1 := CfsDirectoryDescriptor.
            recoveredBlock8PC := 39.
        ].
        recoveredBlock8Step = 39 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) pathSuffixForMultipleInstances.
            recoveredBlock8PC := 41.
        ].
        recoveredBlock8Step = 41 ifTrue: [
            recoveredBlock8Stack2 := [:recoveredBlock8Block41Arg1 | 
    | recoveredBlock8Block41Value0 recoveredBlock8Block41Value1 recoveredBlock8Block41Value2 recoveredBlock8Block41Value3 recoveredBlock8Block41Value4 recoveredBlock8Block41Value5 |
    recoveredBlock8Block41Value0 := recoveredBlock8Local1.
    recoveredBlock8Block41Value1 := recoveredBlock8Block41Arg1.
    recoveredBlock8Block41Value2 := (recoveredBlock8Block41Value0) , (recoveredBlock8Block41Value1).
    recoveredBlock8Local1 := recoveredBlock8Block41Value2.
    recoveredBlock8Block41Value3 := CfsStat.
    recoveredBlock8Block41Value4 := recoveredBlock8Local1.
    recoveredBlock8Block41Value5 := (recoveredBlock8Block41Value3) ensurePath: (recoveredBlock8Block41Value4).
    recoveredBlock8Block41Value5
].
            recoveredBlock8PC := 65.
        ].
        recoveredBlock8Step = 65 ifTrue: [
            (recoveredBlock8Stack1) ifNotNil: (recoveredBlock8Stack2).
            recoveredBlock8PC := 67.
        ].
        recoveredBlock8Step = 67 ifTrue: [
            recoveredBlock8Stack1 := recoveredBlock8Local1.
            recoveredBlock8PC := 70.
        ].
        recoveredBlock8Step = 70 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) notEmpty.
            recoveredBlock8PC := 72.
        ].
        recoveredBlock8Step = 72 ifTrue: [
            (recoveredBlock8Stack1) ifTrue: [recoveredBlock8PC := 76] ifFalse: [recoveredBlock8PC := 85].
        ].
        recoveredBlock8Step = 76 ifTrue: [
            recoveredBlock8Stack1 := Cache.
            recoveredBlock8PC := 78.
        ].
        recoveredBlock8Step = 78 ifTrue: [
            recoveredBlock8Stack2 := 'ETASLogFilePath'.
            recoveredBlock8PC := 80.
        ].
        recoveredBlock8Step = 80 ifTrue: [
            recoveredBlock8Stack3 := recoveredBlock8Local1.
            recoveredBlock8PC := 83.
        ].
        recoveredBlock8Step = 83 ifTrue: [
            (recoveredBlock8Stack1) at: (recoveredBlock8Stack2) put: (recoveredBlock8Stack3).
            recoveredBlock8PC := 85.
        ].
        recoveredBlock8Step = 85 ifTrue: [
            recoveredBlock8Stack1 := recoveredBlock8Local1.
            recoveredBlock8PC := 88.
        ].
        recoveredBlock8Step = 88 ifTrue: [
            ^recoveredBlock8Stack1
        ].
    ].
    recoveredBlock8Result
].
    recoveredValue2 := (recoveredValue0) at: ('ETASLogFilePath') ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x204056c4; bytecode file offset 0xd01fc8"
!EtasGeneralDllApi class methodsFor: 'recovered'!
setServerModeCompatibleUserRegKey: recoveredArg1 string: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := HkeyCurrentUserHandle.
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
            recoveredStack1 := EtasGeneralDllApi.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) getServerModeCompatibleAppRegKeyName.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := HkeyCurrentUserHandle.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) regOpenKey: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) isError.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := HkeyCurrentUserHandle.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) regCreateKey: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) isError.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock62Value0 recoveredBlock62Value1 recoveredBlock62Value2 recoveredBlock62Value3 |
    recoveredBlock62Value0 := recoveredLocal3.
    recoveredBlock62Value1 := recoveredArg1.
    recoveredBlock62Value2 := recoveredArg2.
    recoveredBlock62Value3 := (recoveredBlock62Value0) regSetValue: (recoveredBlock62Value1) data: (recoveredBlock62Value2).
    recoveredBlock62Value3
].
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock80Value0 recoveredBlock80Value1 |
    recoveredBlock80Value0 := recoveredLocal3.
    recoveredBlock80Value1 := (recoveredBlock80Value0) regCloseKey.
    recoveredBlock80Value1
].
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := (recoveredStack1) ensure: (recoveredStack2).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x204056f0; bytecode file offset 0xd01fc8"
!EtasGeneralDllApi class methodsFor: 'recovered'!
setUserRegKey: recoveredArg1 string: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := HkeyCurrentUserHandle.
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
            recoveredStack1 := EtasGeneralDllApi.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) getAppRegKeyName.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := HkeyCurrentUserHandle.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) regOpenKey: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) isError.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := HkeyCurrentUserHandle.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) regCreateKey: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) isError.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock62Value0 recoveredBlock62Value1 recoveredBlock62Value2 recoveredBlock62Value3 |
    recoveredBlock62Value0 := recoveredLocal3.
    recoveredBlock62Value1 := recoveredArg1.
    recoveredBlock62Value2 := recoveredArg2.
    recoveredBlock62Value3 := (recoveredBlock62Value0) regSetValue: (recoveredBlock62Value1) data: (recoveredBlock62Value2).
    recoveredBlock62Value3
].
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock80Value0 recoveredBlock80Value1 |
    recoveredBlock80Value0 := recoveredLocal3.
    recoveredBlock80Value1 := (recoveredBlock80Value0) regCloseKey.
    recoveredBlock80Value1
].
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := (recoveredStack1) ensure: (recoveredStack2).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20436308; bytecode file offset 0xd32be8"
!EtasGeneralDllApi class methodsFor: 'recovered'!
createSystemInfoLog: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := String.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) getMaxPath.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := [:recoveredBlock32Arg1 :recoveredBlock32Arg2 | 
    | recoveredBlock32Value0 recoveredBlock32Value1 recoveredBlock32Value2 recoveredBlock32Value3 recoveredBlock32Value4 |
    recoveredBlock32Value0 := recoveredLocal5.
    recoveredBlock32Value1 := recoveredBlock32Arg1.
    (recoveredBlock32Value0) add: (recoveredBlock32Value1).
    recoveredBlock32Value2 := recoveredLocal4.
    recoveredBlock32Value3 := recoveredBlock32Arg2.
    recoveredBlock32Value4 := (recoveredBlock32Value2) add: (recoveredBlock32Value3).
    recoveredBlock32Value4
].
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) keysAndValuesDo: (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) doubleZeroStringFromCollection: (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) doubleZeroStringFromCollection: (recoveredStack1).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := (recoveredStack2) asParameter.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack3 := (recoveredStack3) asParameter.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) apiCreateSystemInfoLog: (recoveredStack1) keys: (recoveredStack2) values: (recoveredStack3).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 104].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := (recoveredStack0) trimNull.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredPC := 105.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2048a838; bytecode file offset 0xd87114"
!EtasGeneralDllApi class methodsFor: 'recovered'!
dictionaryFromOSMultiString: recoveredArg1 values: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) collectionFromOSMultiString: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) collectionFromOSMultiString: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := Dictionary.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) min: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredPC := 96.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock52Value0 recoveredBlock52Value1 recoveredBlock52Value2 |
    recoveredBlock52Value0 := recoveredLocal1.
    recoveredBlock52Value1 := (recoveredBlock52Value0) printString.
    recoveredBlock52Value2 := (recoveredBlock52Value1) , (' is not available').
    recoveredBlock52Value2
].
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4) ifAbsent: (recoveredStack5).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack6 := [
    | recoveredBlock76Value0 recoveredBlock76Value1 recoveredBlock76Value2 |
    recoveredBlock76Value0 := recoveredLocal1.
    recoveredBlock76Value1 := (recoveredBlock76Value0) printString.
    recoveredBlock76Value2 := (recoveredBlock76Value1) , (' is not available').
    recoveredBlock76Value2
].
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5) ifAbsent: (recoveredStack6).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredStack1 isInteger]) ifTrue: [(recoveredStack1 + 1 <= recoveredStack0) ifTrue: [recoveredStack1 := recoveredStack1 + 1. recoveredStack2 := recoveredStack1. recoveredPC := 40] ifFalse: [recoveredPC := 125]] ifFalse: [recoveredPC := 99].
        ].
        recoveredStep = 99 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 121] ifFalse: [recoveredPC := 116].
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredPC := 43.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204b399c; bytecode file offset 0xdb029c"
!EtasGeneralDllApi class methodsFor: 'recovered'!
createWalkbackDirectoryIfAbsent
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
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
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := CfsDirectoryDescriptor.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := EtasGeneralDllApi.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) getETASLogFilePath.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := '*'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack4 := FDIR.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) opendir: (recoveredStack2) pattern: (recoveredStack3) mode: (recoveredStack4).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 36 ifTrue: [
            recoveredPC := 48.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) readdir.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 59].
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack1) closedir.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) walkbackDirectoryName.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := [:recoveredBlock72Arg1 | 
    | recoveredBlock72Value0 recoveredBlock72Value1 recoveredBlock72Value2 recoveredBlock72Value3 |
    recoveredBlock72Value0 := recoveredBlock72Arg1.
    recoveredBlock72Value1 := (recoveredBlock72Value0) dName.
    recoveredBlock72Value2 := recoveredLocal1.
    recoveredBlock72Value3 := (recoveredBlock72Value1) = (recoveredBlock72Value2).
    recoveredBlock72Value3
].
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock86Value0 recoveredBlock86Value1 recoveredBlock86Value2 |
    recoveredBlock86Value0 := CfsDirectoryDescriptor.
    recoveredBlock86Value1 := (self) walkbackDirectoryPathName.
    recoveredBlock86Value2 := (recoveredBlock86Value0) mkdir: (recoveredBlock86Value1).
    recoveredBlock86Value2
].
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := (recoveredStack0) assertionDirectoryName.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := [:recoveredBlock111Arg1 | 
    | recoveredBlock111Value0 recoveredBlock111Value1 recoveredBlock111Value2 recoveredBlock111Value3 |
    recoveredBlock111Value0 := recoveredBlock111Arg1.
    recoveredBlock111Value1 := (recoveredBlock111Value0) dName.
    recoveredBlock111Value2 := recoveredLocal1.
    recoveredBlock111Value3 := (recoveredBlock111Value1) = (recoveredBlock111Value2).
    recoveredBlock111Value3
].
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock126Value0 recoveredBlock126Value1 recoveredBlock126Value2 |
    recoveredBlock126Value0 := CfsDirectoryDescriptor.
    recoveredBlock126Value1 := (self) assertionDirectoryPathName.
    recoveredBlock126Value2 := (recoveredBlock126Value0) mkdir: (recoveredBlock126Value1).
    recoveredBlock126Value2
].
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204f8478; bytecode file offset 0xdf4d70"
!EtasGeneralDllApi class methodsFor: 'recovered'!
determineDefaultFileName
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) getWalkbackFiles.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := [:block28109eacArg1 | 
    | block28109eacValue0 block28109eacValue1 block28109eacValue2 |
    block28109eacValue0 := block28109eacArg1.
    block28109eacValue1 := (block28109eacValue0) dName.
    block28109eacValue2 := (block28109eacValue1) copyFrom: (3) to: (8).
    block28109eacValue2
].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := [:block28109ed0Arg1 | 
    | block28109ed0Value0 block28109ed0Value1 block28109ed0Value2 |
    block28109ed0Value0 := block28109ed0Arg1.
    block28109ed0Value1 := (block28109ed0Value0) asInteger.
    block28109ed0Value2 := (block28109ed0Value1) ~= (0).
    block28109ed0Value2
].
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := [:block28109ef4Arg1 | 
    | block28109ef4Value0 block28109ef4Value1 |
    block28109ef4Value0 := block28109ef4Arg1.
    block28109ef4Value1 := (block28109ef4Value0) asInteger.
    block28109ef4Value1
].
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := [:recoveredBlock76Arg1 | 
    | recoveredBlock76Stack0 recoveredBlock76Stack1 recoveredBlock76Stack2 recoveredBlock76Stack3 recoveredBlock76Stack4 recoveredBlock76PC recoveredBlock76Step recoveredBlock76Done recoveredBlock76Result |
    recoveredBlock76Stack0 := self.
    recoveredBlock76PC := 82.
    recoveredBlock76Done := false.
    [recoveredBlock76Done not] whileTrue: [
        recoveredBlock76Step := recoveredBlock76PC.
        recoveredBlock76Step = 82 ifTrue: [
            recoveredBlock76Stack1 := nil.
            recoveredBlock76PC := 83.
        ].
        recoveredBlock76Step = 83 ifTrue: [
            recoveredBlock76Stack2 := recoveredBlock76Arg1.
            recoveredBlock76PC := 84.
        ].
        recoveredBlock76Step = 84 ifTrue: [
            recoveredBlock76Stack3 := recoveredLocal2.
            recoveredBlock76PC := 87.
        ].
        recoveredBlock76Step = 87 ifTrue: [
            recoveredBlock76Stack2 := (recoveredBlock76Stack2) >= (recoveredBlock76Stack3).
            recoveredBlock76PC := 88.
        ].
        recoveredBlock76Step = 88 ifTrue: [
            (recoveredBlock76Stack2) ifTrue: [recoveredBlock76PC := 92] ifFalse: [recoveredBlock76PC := 98].
        ].
        recoveredBlock76Step = 92 ifTrue: [
            recoveredBlock76PC := 93.
        ].
        recoveredBlock76Step = 93 ifTrue: [
            recoveredBlock76Stack1 := recoveredBlock76Arg1.
            recoveredBlock76PC := 94.
        ].
        recoveredBlock76Step = 94 ifTrue: [
            recoveredBlock76Stack2 := recoveredBlock76Stack1.
            recoveredBlock76PC := 95.
        ].
        recoveredBlock76Step = 95 ifTrue: [
            recoveredLocal2 := recoveredBlock76Stack2.
            recoveredBlock76PC := 98.
        ].
        recoveredBlock76Step = 98 ifTrue: [
            recoveredBlock76Result := recoveredBlock76Stack1.
            recoveredBlock76Done := true.
        ].
    ].
    recoveredBlock76Result
].
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := 999999.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := (recoveredStack0) <= (recoveredStack1).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 123] ifFalse: [recoveredPC := 118].
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := (recoveredStack0) asString.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredPC := 144.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := '0'.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := 6.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 134] ifFalse: [recoveredPC := 154].
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack0 := 'ur'.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack1 := '.wkb'.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205027e4; bytecode file offset 0xdff0d4"
!EtasGeneralDllApi class methodsFor: 'recovered'!
setLastUsedVersion
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := HkeyCurrentUserHandle.
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
            recoveredStack1 := EtasGeneralDllApi.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) getServerModeCompatibleAppRegKeyName.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal5 := recoveredStack2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := [:block2810a83cArg1 | 
    | block2810a83cValue0 block2810a83cValue1 |
    block2810a83cValue0 := block2810a83cArg1.
    block2810a83cValue1 := (block2810a83cValue0) = ($\).
    block2810a83cValue1
].
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) findLast: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (-1).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := HkeyCurrentUserHandle.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := (recoveredStack1) regOpenKey: (recoveredStack2).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := (recoveredStack1) isError.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 118] ifFalse: [recoveredPC := 128].
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := HkeyCurrentUserHandle.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := (recoveredStack1) regCreateKey: (recoveredStack2).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 142] ifFalse: [recoveredPC := 134].
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := (recoveredStack1) isError.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 142] ifFalse: [recoveredPC := 144].
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock144Value0 recoveredBlock144Value1 recoveredBlock144Value2 |
    recoveredBlock144Value0 := recoveredLocal6.
    recoveredBlock144Value1 := recoveredLocal2.
    recoveredBlock144Value2 := (recoveredBlock144Value0) regSetValue: ('LastUsedVersion') data: (recoveredBlock144Value1).
    recoveredBlock144Value2
].
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock161Value0 recoveredBlock161Value1 |
    recoveredBlock161Value0 := recoveredLocal6.
    recoveredBlock161Value1 := (recoveredBlock161Value0) regCloseKey.
    recoveredBlock161Value1
].
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack1 := (recoveredStack1) ensure: (recoveredStack2).
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

