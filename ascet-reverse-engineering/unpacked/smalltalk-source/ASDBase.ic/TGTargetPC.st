"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000701c; bytecode file offset 0x908be4"
!TGTargetPC methodsFor: 'recovered'!
onlineSimulation
    | recoveredValue0 |
    recoveredValue0 := (self) isOnlinePCTarget.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000b858; bytecode file offset 0x908be4"
!TGTargetPC methodsFor: 'recovered'!
supportsScoopixGeneration
    | recoveredValue0 |
    recoveredValue0 := (self) requiresScoopixGeneration.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20017c24; bytecode file offset 0x92209c"
!TGTargetPC methodsFor: 'recovered'!
iniSectionName
    ^'PC'
! !

"ASDBase.ic method 0x20071a8c; bytecode file offset 0x96e578"
!TGTargetPC methodsFor: 'recovered'!
targetTypeId
    ^0
! !

"ASDBase.ic method 0x20074e74; bytecode file offset 0x9757c8"
!TGTargetPC methodsFor: 'recovered'!
isOfflinePCTarget
    ^true
! !

"ASDBase.ic method 0x20075694; bytecode file offset 0x9757c8"
!TGTargetPC methodsFor: 'recovered'!
placePreLinkedDLL
    ^true
! !

"ASDBase.ic method 0x20077834; bytecode file offset 0x9757c8"
!TGTargetPC methodsFor: 'recovered'!
mustShareMemory
    ^true
! !

"ASDBase.ic method 0x2007ad54; bytecode file offset 0x97c330"
!TGTargetPC methodsFor: 'recovered'!
requiresCheckHardwareConnection
    ^false
! !

"ASDBase.ic method 0x2008cd6c; bytecode file offset 0x9896b8"
!TGTargetPC methodsFor: 'recovered'!
supportsPreemptiveScheduling
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) supportsPreemptiveSchedulingKey.
    recoveredValue1 := (self) boolFeatureAt: (recoveredValue0) default: (false).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2008cdac; bytecode file offset 0x9896b8"
!TGTargetPC methodsFor: 'recovered'!
supportsInterrupt
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) supportsInterruptTasksKey.
    recoveredValue1 := (self) boolFeatureAt: (recoveredValue0) default: (false).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200ddb4c; bytecode file offset 0x9da40c"
!TGTargetPC methodsFor: 'recovered'!
generateETargetHexCode: recoveredArg1 hexManager: recoveredArg2 monitorStream: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := HEX_PC_DLL.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) loadable.
    (recoveredValue0) addItem: (recoveredValue1) code: (recoveredValue3).
    recoveredValue4 := recoveredArg2.
    ^recoveredValue4
! !

"ASDBase.ic method 0x2010549c; bytecode file offset 0xa01d5c"
!TGTargetPC methodsFor: 'recovered'!
getMaxLoggingMemory
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OSMemorystatus.
    recoveredValue1 := (recoveredValue0) getFreeMemory.
    recoveredValue2 := (recoveredValue1) * (#[0 0 0 0 0 0 224 63]).
    recoveredValue3 := (recoveredValue2) // (1000).
    ^recoveredValue3
! !

"ASDBase.ic method 0x201075cc; bytecode file offset 0xa03eb0"
!TGTargetPC methodsFor: 'recovered'!
isOnlinePCTarget
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ('Rnz') == ('PCOnlineSimulation').
    recoveredValue1 := ASDGeneralOptions.
    recoveredValue2 := (recoveredValue1) instance.
    recoveredValue3 := (recoveredValue2) optionInternalActivatePCOnlineExperiment.
    ^recoveredValue3
! !

"ASDBase.ic method 0x2016eeb0; bytecode file offset 0xa6b784"
!TGTargetPC methodsFor: 'recovered'!
getTargetIncludePath
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := ASDPathOptions.
    recoveredValue1 := (recoveredValue0) instance.
    recoveredValue2 := (recoveredValue1) optionTargetRootPath.
    recoveredValue3 := (recoveredValue2) , ('legacy\').
    recoveredValue4 := (self) relativeTargetPath.
    recoveredValue5 := (recoveredValue3) , (recoveredValue4).
    recoveredValue6 := (recoveredValue5) asPathname.
    recoveredValue7 := (recoveredValue6) removeAllDoubleBackslashes.
    ^recoveredValue7
! !

"ASDBase.ic method 0x2018d65c; bytecode file offset 0xa89f30"
!TGTargetPC methodsFor: 'recovered'!
getGSLSolversFilePathName
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := ASDPathOptions.
    recoveredValue1 := (recoveredValue0) instance.
    recoveredValue2 := (recoveredValue1) optionTargetRootPath.
    recoveredValue3 := (recoveredValue2) , ('legacy\').
    recoveredValue4 := (self) relativeTargetPath.
    recoveredValue5 := (recoveredValue3) , (recoveredValue4).
    recoveredValue6 := (recoveredValue5) , ('lib\gsl\gslsolvers.dll').
    recoveredValue7 := (recoveredValue6) removeAllDoubleBackslashes.
    ^recoveredValue7
! !

"ASDBase.ic method 0x2048969c; bytecode file offset 0xd85fcc"
!TGTargetPC methodsFor: 'recovered'!
loadCodeSpecific: recoveredArg1 monitorStream: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) closeServerDll.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := 'MultiInstance'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := SGSimServer.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) dllPathName.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := SGMonitorStreamDummy.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := CfsStat.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) exists: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := 'Simulation DLL already existing. Will be removed now.'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) addImportantInfoText: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := CfsFileDescriptor.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) remove: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCfsError.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 51].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := 'Cannot remove existing simulation DLL'.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) addErrorText: (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredPC := 75.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := 'MultiInstance'.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := CfsStat.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) pathName.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) ensurePath: (recoveredStack1).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 75] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := 'Unable to create directory for simulation DLL'.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack0) addErrorText: (recoveredStack1).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := 'Create simulation DLL %1'.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0) addImportantInfoText: (recoveredStack1).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := (recoveredStack2) loadable.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack0) putCodeIntoFile: (recoveredStack1) code: (recoveredStack2).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := CfsStat.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) exists: (recoveredStack1).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 103] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := 'Simulation DLL not existing'.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack0) addErrorText: (recoveredStack1).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := (recoveredStack0) hostAccess.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := (recoveredStack1) getGSLSolversFilePathName.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkExistency: (recoveredStack1).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 114] ifFalse: [recoveredPC := 128].
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := (recoveredStack0) hostAccess.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := (recoveredStack1) getGSLSolversFilePathName.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack2 := TGTarget.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack2 := (recoveredStack2) dllDirectory.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack2 := (recoveredStack2) asPathname.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            (recoveredStack0) ensureFile: (recoveredStack1) inPath: (recoveredStack2).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

