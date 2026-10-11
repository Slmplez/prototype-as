"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001c148; bytecode file offset 0x92209c"
!WbKernel class methodsFor: 'recovered'!
packagerKnownSymbols
    ^#('aboutToCloseWidget' 'aboutToManageWidget' 'aboutToOpenWidget' 'closedWidget' 'openedWidget' 'wbUnaryCallbackHandler:selector:callData:' 'XmNuserData')
! !

"ASDBase.ic method 0x2005bdf4; bytecode file offset 0x958ab0"
!WbKernel class methodsFor: 'recovered'!
loaded
    | recoveredValue0 |
    recoveredValue0 := WbImageManager.
    (recoveredValue0) initializeImageCaches.
    ^self
! !

"ASDBase.ic method 0x2005be04; bytecode file offset 0x958ab0"
!WbKernel class methodsFor: 'recovered'!
preStartUp
    | recoveredValue0 |
    recoveredValue0 := WbImageManager.
    (recoveredValue0) preStartUp.
    ^self
! !

"ASDBase.ic method 0x2005bf44; bytecode file offset 0x958ab0"
!WbKernel class methodsFor: 'recovered'!
removing
    | recoveredValue0 |
    recoveredValue0 := WbImageManager.
    (recoveredValue0) initializeImageCaches.
    ^self
! !

"ASDBase.ic method 0x200baed0; bytecode file offset 0x9b7790"
!WbKernel class methodsFor: 'recovered'!
stsAddToIcMap: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) at: (#('WbKernel' 'ObsoleteOSObject' 'ObsoletePlatformFramework')) put: ('wbkrn').
    ^self
! !

