"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2004b9c4; bytecode file offset 0x948384"
!ASAP2FlashCopyParameter methodsFor: 'recovered'!
copyRamToFlashMode
    | recoveredValue0 |
    recoveredValue0 := (self) at: (4).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004bbe8; bytecode file offset 0x94877c"
!ASAP2FlashCopyParameter methodsFor: 'recovered'!
noOfLocalRoutine
    | recoveredValue0 |
    recoveredValue0 := (self) at: (5).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004c160; bytecode file offset 0x948b80"
!ASAP2FlashCopyParameter methodsFor: 'recovered'!
copyFrame
    | recoveredValue0 |
    recoveredValue0 := (self) at: (6).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004c480; bytecode file offset 0x948e28"
!ASAP2FlashCopyParameter methodsFor: 'recovered'!
routineResult
    | recoveredValue0 |
    recoveredValue0 := (self) at: (7).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004c7f4; bytecode file offset 0x949118"
!ASAP2FlashCopyParameter methodsFor: 'recovered'!
rncResult
    | recoveredValue0 |
    recoveredValue0 := (self) at: (8).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004c970; bytecode file offset 0x9492dc"
!ASAP2FlashCopyParameter methodsFor: 'recovered'!
copyFlashToRamMode
    | recoveredValue0 |
    recoveredValue0 := (self) at: (9).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004cbb8; bytecode file offset 0x949494"
!ASAP2FlashCopyParameter methodsFor: 'recovered'!
copyParameter
    | recoveredValue0 |
    recoveredValue0 := (self) at: (10).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004cc50; bytecode file offset 0x9495f8"
!ASAP2FlashCopyParameter methodsFor: 'recovered'!
diagnosticRamToFlashMode
    | recoveredValue0 |
    recoveredValue0 := (self) at: (11).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200a6398; bytecode file offset 0x9a2f38"
!ASAP2FlashCopyParameter methodsFor: 'recovered'!
copyRamToFlashMode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (4) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a686c; bytecode file offset 0x9a32e0"
!ASAP2FlashCopyParameter methodsFor: 'recovered'!
noOfLocalRoutine: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (5) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a6a4c; bytecode file offset 0x9a3694"
!ASAP2FlashCopyParameter methodsFor: 'recovered'!
copyFrame: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (6) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a6e9c; bytecode file offset 0x9a391c"
!ASAP2FlashCopyParameter methodsFor: 'recovered'!
routineResult: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (7) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a7148; bytecode file offset 0x9a3b44"
!ASAP2FlashCopyParameter methodsFor: 'recovered'!
rncResult: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (8) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a734c; bytecode file offset 0x9a3d0c"
!ASAP2FlashCopyParameter methodsFor: 'recovered'!
copyFlashToRamMode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (9) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a74a8; bytecode file offset 0x9a3e74"
!ASAP2FlashCopyParameter methodsFor: 'recovered'!
copyParameter: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (10) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a76b8; bytecode file offset 0x9a3fd0"
!ASAP2FlashCopyParameter methodsFor: 'recovered'!
diagnosticRamToFlashMode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (11) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x201a3ae8; bytecode file offset 0xaa0458"
!ASAP2FlashCopyParameter methodsFor: 'recovered'!
putParameterIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    (self) putCopyRamToFlashModeIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) putNoOfLocalRoutineIn: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (self) putRoutineResultIn: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (self) putCopyFlashToRamModeIn: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    (self) putDiagnosticRamToFlashModeIn: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x2021a850; bytecode file offset 0xb17144"
!ASAP2FlashCopyParameter methodsFor: 'recovered'!
getFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    (self) getShortBegin: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) getCopyRamToFlashMode: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (self) getNoOfLocalRoutine: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (self) getRoutineResult: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    (self) getCopyFlashToRamMode: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    (self) getDiagnosticRamToFlashMode: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    (self) parse: (recoveredValue6).
    ^self
! !

