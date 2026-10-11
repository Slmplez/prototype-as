"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20001084; bytecode file offset 0x626a4"
!SstSpaceConfiguration methodsFor: 'recovered'!
sstMetaInformalType
    ^'space configuration'
! !

"xxx_dyn.ic method 0x2000145c; bytecode file offset 0x626a4"
!SstSpaceConfiguration methodsFor: 'recovered'!
sstMetaInformation
    ^#(#('Raise exceptions on invocation errors' 'raiseExceptions' 'raiseExceptions:' 'dynamic' 'boolean') #('Supports finalization' 'supportFinalization' 'supportFinalization:' 'static' 'boolean') #('Initial import set size' 'importSize' 'importSize:' 'static' 'integer' 1) #('Initial export set size' 'exportSize' 'exportSize:' 'static' 'integer' 1) #('Starting export identifier' 'firstExportId' 'firstExportId:' 'static' 'integer' 0) #('Default class for object handle' 'handleClass' 'handleClass:' 'dynamic' 'class') #('Default class for remote references' 'remoteReferenceClass' 'remoteReferenceClass:' 'dynamic' 'class') #('Class for local spaces' 'spaceClass' 'spaceClass:' 'static' 'class') #('Class for remote spaces' 'remoteSpaceClass' 'remoteSpaceClass:' 'dynamic' 'class') #('The export selector' 'exportSelector' 'exportSelector:' 'dynamic' 'symbol'))
! !

"xxx_dyn.ic method 0x20003b94; bytecode file offset 0x64d78"
!SstSpaceConfiguration methodsFor: 'recovered'!
supportFinalization
    | recoveredValue0 |
    recoveredValue0 := supportFinalization.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20003d88; bytecode file offset 0x64ed4"
!SstSpaceConfiguration methodsFor: 'recovered'!
importSize
    | recoveredValue0 |
    recoveredValue0 := importSize.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20003f0c; bytecode file offset 0x64fe8"
!SstSpaceConfiguration methodsFor: 'recovered'!
exportSize
    | recoveredValue0 |
    recoveredValue0 := exportSize.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20003fd0; bytecode file offset 0x650c4"
!SstSpaceConfiguration methodsFor: 'recovered'!
firstExportId
    | recoveredValue0 |
    recoveredValue0 := firstExportId.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x2000405c; bytecode file offset 0x65178"
!SstSpaceConfiguration methodsFor: 'recovered'!
handleClass
    | recoveredValue0 |
    recoveredValue0 := handleClass.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20004180; bytecode file offset 0x65264"
!SstSpaceConfiguration methodsFor: 'recovered'!
remoteReferenceClass
    | recoveredValue0 |
    recoveredValue0 := remoteReferenceClass.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x200041fc; bytecode file offset 0x65328"
!SstSpaceConfiguration methodsFor: 'recovered'!
spaceClass
    | recoveredValue0 |
    recoveredValue0 := spaceClass.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20004298; bytecode file offset 0x65384"
!SstSpaceConfiguration methodsFor: 'recovered'!
remoteSpaceClass
    | recoveredValue0 |
    recoveredValue0 := remoteSpaceClass.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20004314; bytecode file offset 0x653d8"
!SstSpaceConfiguration methodsFor: 'recovered'!
raiseExceptions
    | recoveredValue0 |
    recoveredValue0 := raiseExceptions.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20004338; bytecode file offset 0x65414"
!SstSpaceConfiguration methodsFor: 'recovered'!
exportSelector
    | recoveredValue0 |
    recoveredValue0 := exportSelector.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20004374; bytecode file offset 0x65450"
!SstSpaceConfiguration methodsFor: 'recovered'!
restartMode
    | recoveredValue0 |
    recoveredValue0 := restartMode.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x200043b8; bytecode file offset 0x6547c"
!SstSpaceConfiguration methodsFor: 'recovered'!
allowGlobalReferences
    | recoveredValue0 |
    recoveredValue0 := allowGlobalReferences.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20005014; bytecode file offset 0x660e0"
!SstSpaceConfiguration methodsFor: 'recovered'!
asProxyConfiguration
    | recoveredValue0 |
    recoveredValue0 := SstRemoteReference.
    (self) remoteReferenceClass: (recoveredValue0).
    ^self
! !

"xxx_dyn.ic method 0x20007430; bytecode file offset 0x684fc"
!SstSpaceConfiguration methodsFor: 'recovered'!
asFinalizedProxyConfiguration
    (self) asProxyConfiguration.
    (self) supportFinalization: (true).
    ^self
! !

"xxx_dyn.ic method 0x200079e8; bytecode file offset 0x68ab4"
!SstSpaceConfiguration methodsFor: 'recovered'!
instantiateNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := spaceClass.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) copy.
    recoveredValue3 := (recoveredValue0) named: (recoveredValue1) using: (recoveredValue2).
    ^recoveredValue3
! !

"xxx_dyn.ic method 0x20008184; bytecode file offset 0x692b8"
!SstSpaceConfiguration methodsFor: 'recovered'!
supportFinalization: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    supportFinalization := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20008328; bytecode file offset 0x69404"
!SstSpaceConfiguration methodsFor: 'recovered'!
importSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    importSize := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x200083c4; bytecode file offset 0x69508"
!SstSpaceConfiguration methodsFor: 'recovered'!
exportSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    exportSize := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x200084b8; bytecode file offset 0x695c4"
!SstSpaceConfiguration methodsFor: 'recovered'!
firstExportId: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    firstExportId := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x200085bc; bytecode file offset 0x69688"
!SstSpaceConfiguration methodsFor: 'recovered'!
handleClass: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    handleClass := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20008610; bytecode file offset 0x6978c"
!SstSpaceConfiguration methodsFor: 'recovered'!
remoteReferenceClass: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    remoteReferenceClass := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x200086fc; bytecode file offset 0x69858"
!SstSpaceConfiguration methodsFor: 'recovered'!
spaceClass: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    spaceClass := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x200087f8; bytecode file offset 0x698bc"
!SstSpaceConfiguration methodsFor: 'recovered'!
remoteSpaceClass: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    remoteSpaceClass := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x2000882c; bytecode file offset 0x69910"
!SstSpaceConfiguration methodsFor: 'recovered'!
raiseExceptions: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    raiseExceptions := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20008878; bytecode file offset 0x6994c"
!SstSpaceConfiguration methodsFor: 'recovered'!
exportSelector: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    exportSelector := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x200088ac; bytecode file offset 0x69980"
!SstSpaceConfiguration methodsFor: 'recovered'!
restartMode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    restartMode := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x200088d8; bytecode file offset 0x699ac"
!SstSpaceConfiguration methodsFor: 'recovered'!
allowGlobalReferences: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    allowGlobalReferences := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x2001d434; bytecode file offset 0x7e514"
!SstSpaceConfiguration methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    super initialize.
    recoveredValue0 := SstLocalSpace.
    spaceClass := recoveredValue0.
    recoveredValue1 := SstRemoteSpace.
    remoteSpaceClass := recoveredValue1.
    recoveredValue2 := SstObjectHandle.
    handleClass := recoveredValue2.
    importSize := 300.
    exportSize := 300.
    firstExportId := 10.
    supportFinalization := false.
    raiseExceptions := true.
    recoveredValue3 := SstCleanUpMode.
    restartMode := recoveredValue3.
    exportSelector := 'sstExportObjectIn:'.
    allowGlobalReferences := false.
    ^self
! !

