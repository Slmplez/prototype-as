"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20006c5c; bytecode file offset 0x908be4"
!SGRTESourceObject methodsFor: 'recovered'!
filename
    | recoveredValue0 |
    recoveredValue0 := (self) fileName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006db98; bytecode file offset 0x96a9dc"
!SGRTESourceObject methodsFor: 'recovered'!
rteSourceHandle
    | recoveredValue0 |
    recoveredValue0 := rteSourceHandle.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c48f8; bytecode file offset 0x9c11bc"
!SGRTESourceObject methodsFor: 'recovered'!
rteSourceHandle: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    rteSourceHandle := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x201249e8; bytecode file offset 0xa212b4"
!SGRTESourceObject methodsFor: 'recovered'!
completeRTESource
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := SGLmManager.
    recoveredValue1 := (recoveredValue0) createWriteStream.
    recoveredValue2 := (recoveredValue1) asXmlCodeStream.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := (self) rteSourceHandle.
    recoveredValue4 := recoveredLocal1.
    (recoveredValue3) arXmlPrintOn: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (recoveredValue5) contents.
    ^recoveredValue6
! !

