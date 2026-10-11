"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x201041dc; bytecode file offset 0xa00ab0"
!EtasHeadlessRunTimeErrorHandling methodsFor: 'recovered'!
specificRunTimeErrorHandling
    (self) outputWalkbackIntoSeperateFileIfNecessary.
    (self) emptyCacheAndCloseDatabase.
    (self) exitRunTime.
    ^self
! !

