"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20005e00; bytecode file offset 0x902744"
!SGNonPersistentCodeStorageManager methodsFor: 'recovered'!
getCompileResults: recoveredArg1 monitorManager: recoveredArg2
    ^self
! !

"ASDBase.ic method 0x2000dc50; bytecode file offset 0x90ab8c"
!SGNonPersistentCodeStorageManager methodsFor: 'recovered'!
initOSCodeStorageHandle: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) createNonPersistentHandle.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000e004; bytecode file offset 0x90ab8c"
!SGNonPersistentCodeStorageManager methodsFor: 'recovered'!
initPidCodeStorageHandle: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) createNonPersistentHandle.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000e0dc; bytecode file offset 0x90ab8c"
!SGNonPersistentCodeStorageManager methodsFor: 'recovered'!
initInitCodeStorageHandle: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) createNonPersistentHandle.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000e220; bytecode file offset 0x90ab8c"
!SGNonPersistentCodeStorageManager methodsFor: 'recovered'!
initModuleCodeStorageHandle: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) createNonPersistentHandle.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001fda8; bytecode file offset 0x92209c"
!SGNonPersistentCodeStorageManager methodsFor: 'recovered'!
storageKindLabel
    ^'non persistent'
! !

"ASDBase.ic method 0x2003eb68; bytecode file offset 0x93bf94"
!SGNonPersistentCodeStorageManager methodsFor: 'recovered'!
createNonPersistentHandle
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ASDNonPersistentCodeContainerHandle.
    recoveredValue1 := (recoveredValue0) new.
    ^recoveredValue1
! !

