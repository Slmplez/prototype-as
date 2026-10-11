"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x201e1824; bytecode file offset 0xade0f8"
!ASDSimAccessElementsApp class methodsFor: 'recovered'!
loaded
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := SGAccessElement.
    (recoveredValue0) initializeManagerCMethods.
    recoveredValue1 := SGAccessOperatingSystem.
    (recoveredValue1) initializeCMethods.
    recoveredValue2 := ASDAccessNVRamManager.
    (recoveredValue2) initializeCMethods.
    recoveredValue3 := SGAccessScalar.
    (recoveredValue3) initializeCMethods.
    recoveredValue4 := SGAccessVector.
    (recoveredValue4) initializeCMethods.
    recoveredValue5 := SGAccessMatrix.
    (recoveredValue5) initializeCMethods.
    ^self
! !

