"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2004b898; bytecode file offset 0x948384"
!ASAP2CopyParameter methodsFor: 'recovered'!
copyFlashToRamMode
    | recoveredValue0 |
    recoveredValue0 := (self) at: (4).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004bb1c; bytecode file offset 0x94877c"
!ASAP2CopyParameter methodsFor: 'recovered'!
diagnosticRamToFlashMode
    | recoveredValue0 |
    recoveredValue0 := (self) at: (5).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004c0d0; bytecode file offset 0x948b80"
!ASAP2CopyParameter methodsFor: 'recovered'!
copyParameter
    | recoveredValue0 |
    recoveredValue0 := (self) at: (6).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200a62e4; bytecode file offset 0x9a2f38"
!ASAP2CopyParameter methodsFor: 'recovered'!
copyFlashToRamMode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (4) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a6908; bytecode file offset 0x9a32e0"
!ASAP2CopyParameter methodsFor: 'recovered'!
diagnosticRamToFlashMode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (5) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a6be4; bytecode file offset 0x9a3694"
!ASAP2CopyParameter methodsFor: 'recovered'!
copyParameter: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (6) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200d6c04; bytecode file offset 0x9d3600"
!ASAP2CopyParameter methodsFor: 'recovered'!
putParameterIn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) putCopyFlashToRamModeIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) putDiagnosticRamToFlashModeIn: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20163cd8; bytecode file offset 0xa605cc"
!ASAP2CopyParameter methodsFor: 'recovered'!
getFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    (self) getShortBegin: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) getCopyFlashToRamMode: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (self) getDiagnosticRamToFlashMode: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (self) parse: (recoveredValue3).
    ^self
! !

