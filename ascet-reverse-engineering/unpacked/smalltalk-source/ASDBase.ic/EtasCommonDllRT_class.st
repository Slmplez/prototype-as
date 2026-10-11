"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2005be94; bytecode file offset 0x958ab0"
!EtasCommonDllRT class methodsFor: 'recovered'!
exiting
    | recoveredValue0 |
    recoveredValue0 := ETASWinDelay.
    (recoveredValue0) exiting.
    ^self
! !

"ASDBase.ic method 0x20114de8; bytecode file offset 0xa116ac"
!EtasCommonDllRT class methodsFor: 'recovered'!
loaded
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := VSVersion.
    (recoveredValue0) initializeClass.
    recoveredValue1 := VSFixedFileInfo.
    (recoveredValue1) initializeClass.
    recoveredValue2 := VSVersionInfo.
    (recoveredValue2) initializeClass.
    ^self
! !

