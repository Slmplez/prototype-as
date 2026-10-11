"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000ceb4; bytecode file offset 0x909ab8"
!SGFileBasedCodeStorageManager methodsFor: 'recovered'!
initOSCodeStorageHandle: recoveredArg1
    ^nil
! !

"ASDBase.ic method 0x2000cedc; bytecode file offset 0x909ab8"
!SGFileBasedCodeStorageManager methodsFor: 'recovered'!
initInitCodeStorageHandle: recoveredArg1
    ^nil
! !

"ASDBase.ic method 0x2000d0fc; bytecode file offset 0x909ab8"
!SGFileBasedCodeStorageManager methodsFor: 'recovered'!
initPidCodeStorageHandle: recoveredArg1
    ^nil
! !

"ASDBase.ic method 0x2000d154; bytecode file offset 0x909ab8"
!SGFileBasedCodeStorageManager methodsFor: 'recovered'!
initModuleCodeStorageHandle: recoveredArg1
    ^nil
! !

"ASDBase.ic method 0x20012624; bytecode file offset 0x912098"
!SGFileBasedCodeStorageManager methodsFor: 'recovered'!
codeStorageHandleClass
    | recoveredValue0 |
    recoveredValue0 := ASDFileBasedCodeContainerHandle.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200241c4; bytecode file offset 0x92209c"
!SGFileBasedCodeStorageManager methodsFor: 'recovered'!
storageKindLabel
    ^'file based'
! !

"ASDBase.ic method 0x2005a1e8; bytecode file offset 0x956ac4"
!SGFileBasedCodeStorageManager methodsFor: 'recovered'!
getCompileResults: recoveredArg1 monitorManager: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) codeManager.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) basicGetCompileResults: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2010c1d0; bytecode file offset 0xa08aec"
!SGFileBasedCodeStorageManager methodsFor: 'recovered'!
setupCodeStorageVariantPath
    | recoveredValue0 recoveredValue1 |
    super setupCodeStorageVariantPath.
    recoveredValue0 := (self) hostAccess.
    recoveredValue1 := (self) codeStorageVariantPath.
    (recoveredValue0) createHostDirectory: (recoveredValue1).
    ^self
! !

