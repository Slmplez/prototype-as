"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2004b9dc; bytecode file offset 0x948384"
!ASAP2FrameIFData methodsFor: 'recovered'!
qpBlob
    | recoveredValue0 |
    recoveredValue0 := (self) at: (4).
    ^recoveredValue0
! !

"ASDBase.ic method 0x20084a44; bytecode file offset 0x981ca4"
!ASAP2FrameIFData methodsFor: 'recovered'!
putParameterIn: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) putNameIn: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x20087964; bytecode file offset 0x98421c"
!ASAP2FrameIFData methodsFor: 'recovered'!
getIFData: recoveredArg1 keyWords: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getFrom: (recoveredValue0).
    recoveredLocal2 := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x200a64c4; bytecode file offset 0x9a2f38"
!ASAP2FrameIFData methodsFor: 'recovered'!
qpBlob: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (4) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x2011d998; bytecode file offset 0xa1a2f8"
!ASAP2FrameIFData methodsFor: 'recovered'!
getFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) getShortBegin: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) getName: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (self) parse: (recoveredValue2).
    ^self
! !

